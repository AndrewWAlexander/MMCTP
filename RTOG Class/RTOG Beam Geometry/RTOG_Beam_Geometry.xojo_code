#tag Class
Protected Class RTOG_Beam_Geometry
	#tag Method, Flags = &h0
		Sub Add_MLC_Field()
		  Dim ff as Class_MLC_Positions
		  Dim i  as Integer
		  Dim bb as Boolean
		  //==========================
		  
		  
		  i=UBound(MLC.Fields)
		  ff=new Class_MLC_Positions
		  MLC.Fields.Append ff
		  
		  
		  ReDim MLC.Fields(i+1).Leaf_A(mlc.NumberofLeafPairs-1)
		  ReDim MLC.Fields(i+1).Leaf_b(mlc.NumberofLeafPairs-1)
		  
		  for i=0 to UBound(ff.Leaf_A)
		    ff.Leaf_A(i)=24
		    ff.Leaf_B(i)=24
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Calculate_DynamicJawPositions()
		  //----------------------------------------
		  // Calculate New Jaw positions from STT table
		  //
		  //----------------------------------------
		  Dim f,outfile as FolderItem
		  Dim ts as TextInputStream
		  Dim file,WedgeAngle,oneline,STT, tempo as String
		  Dim jawmode,numJaw,NPjaw ,i ,CAXindex,maxi,j, ii as Integer
		  Dim Jawpos(-1),fraction(-1),NewFraction(-1),tempFraction(-1),NewJawpos(-1),w0deg,w60deg,StartPos,EndPos, _
		  max, zybot, zytop, zxbot, zxtop, top, bot,YY1,YY2,total as Single
		  Dim found as Boolean
		  Dim cc as Class_Collimator
		  dim x1,x2,y1,y2,diff, sumdiff, index as double
		  //----------------------------------------
		  
		  Const NUMSEGMENTS=20
		  Const PI=3.14159265358979323846264338327950
		  //----------------------------------------
		  
		  cc=Collimator
		  
		  if Wedge_Type<>"Dynamic" Then
		    Return
		  end
		  
		  
		  if linac_index<0 or linac_index>UBound(gLinacs.All_Linacs) Then
		    Return
		  end
		  
		  cc.Type="Dynamic Jaws"
		  
		  // Open correct STT table
		  f=gPref.Settings_fi
		  f=f.Child(gLinacs.All_Linacs(linac_index).STT_Table)
		  if f.Exists=False Then
		    Return
		  end
		  ts=f.OpenAsTextFile
		  if ts=nil Then
		    Return
		  end
		  
		  oneline=ts.ReadLine
		  oneline=ts.ReadLine
		  numJaw=val(NthField(oneline,",",1))
		  Jawmode=val(NthField(oneline,",",2))
		  NPjaw=NUMSEGMENTS+1
		  
		  
		  Do
		    oneline=ts.ReadLine
		    Jawpos.Append val(NthField(oneline,",",1))
		    fraction.Append val(NthField(oneline,",",2))
		  Loop Until ts.EOF
		  maxi=UBound(fraction)
		  
		  WedgeAngle=Wedge_Angle
		  
		  if InStr(Wedge_Rotation,"IN")>0 Then
		    YY1 = -cc.fields(0).Y1
		    YY2 = cc.fields(0).Y2
		  else
		    YY1 = -cc.fields(0).Y2
		    YY2 = cc.fields(0).Y1
		  end
		  
		  
		  'Recalculating the STT table for an arbitrary wedge angle*/
		  w0deg=(tan(60.*PI/180.)-tan(val(WedgeAngle)*PI/180.))/tan(60.*PI/180.)
		  w60deg=1.0-w0deg
		  
		  
		  found=FALSE
		  for i=0 to UBound(fraction)
		    if Jawpos(i)=0.0 Then
		      found=TRUE
		      CAXindex=i
		    end
		  next
		  
		  
		  
		  for i=0 to UBound(fraction)
		    NewFraction.append (w0deg*Fraction(CAXindex)+w60deg*Fraction(i))
		    tempFraction.append NewFraction(i)
		  next
		  
		  
		  ReDim NewJawpos(UBound(NewFraction))
		  
		  '/*Adjusting STT table to actual field size, using 20 segments*/
		  
		  StartPos=YY1
		  EndPos=YY2
		  
		  
		  if ((StartPos<-20) or (StartPos>10) or (EndPos<-20) or (EndPos>10)) Then
		    MsgBox("Try again, Jaw Positions exceed limits (-20;10)")
		    Return
		  end
		  
		  
		  // Here we take into account that the CM DJAWS samples ahead
		  // of the jaw position. We therefore stop 1 segment earlier
		  
		  // Assumes moves from NEG to POS side
		  
		  NewJawpos(0)=StartPos   //-0.0001
		  NewJawpos(1)=StartPos
		  
		  for i=1 to NUMSEGMENTS
		    NewJawpos(i+1)=NewJawpos(1)+(i)*(EndPos-StartPos)/NUMSEGMENTS
		  Next
		  
		  
		  // New Jaw positions One extra position, for reading ahead*/
		  NewJawpos(NUMSEGMENTS+1)=NewJawpos(NUMSEGMENTS)+(EndPos-StartPos)/NUMSEGMENTS
		  
		  
		  
		  // Calculate New Fraction indexes
		  
		  // Special case for 1st entry, open parked field*/
		  j=maxi
		  while(Jawpos(j)>NewJawpos(0))
		    j=j-1
		  wend
		  
		  if NewJawpos(0)=Jawpos(maxi) Then
		    NewFraction(0)=tempFraction(maxi)
		    
		  else
		    NewFraction(0)=(tempFraction(j+1)-tempFraction(j))/(Jawpos(j+1)-Jawpos(j))
		    NewFraction(0)=NewFraction(0)*(NewJawpos(0)-Jawpos(j))
		    NewFraction(0)=NewFraction(0)+tempFraction(j)
		  end
		  
		  
		  // For all other field indexes
		  for i=2 to (NUMSEGMENTS+1)
		    j=maxi
		    while Jawpos(j) > NewJawpos(i)
		      j=j-1
		    wend
		    if NewJawpos(i)=Jawpos(maxi) Then
		      NewFraction(i-1)=tempFraction(maxi)
		      
		    else
		      NewFraction(i-1)=(tempFraction(j+1)-tempFraction(j))/(Jawpos(j+1)-Jawpos(j))
		      NewFraction(i-1)=NewFraction(i-1)*(NewJawpos(i)-Jawpos(j))
		      NewFraction(i-1)=NewFraction(i-1)+tempFraction(j)
		    end
		  next
		  
		  ReDim cc.Fields(NUMSEGMENTS)
		  cc.NumFields=NUMSEGMENTS
		  
		  if InStr(Wedge_Rotation,"IN")>0 Then
		    for i=0 to NUMSEGMENTS
		      if cc.Fields(i)=nil Then
		        cc.Fields(i)=new Class_Collimator_Fields
		        cc.Fields(i).isocenter=new Class_isocenter
		      end
		      cc.Fields(i).Index=NewFraction(i)
		      cc.Fields(i).X1=cc.Fields(0).x1
		      cc.Fields(i).X2=cc.Fields(0).x2
		      cc.Fields(i).Y1=-NewJawpos(i)
		      cc.Fields(i).Y2=cc.Fields(0).y2
		    next
		  else
		    for i=0 to NUMSEGMENTS
		      if cc.Fields(i)=nil Then
		        cc.Fields(i)=new Class_Collimator_Fields
		        cc.Fields(i).isocenter=new Class_isocenter
		      end
		      cc.Fields(i).Index=NewFraction(i)
		      cc.Fields(i).X1=cc.Fields(0).x1
		      cc.Fields(i).X2=cc.Fields(0).x2
		      cc.Fields(i).Y1=cc.Fields(0).y1
		      cc.Fields(i).Y2=-NewJawpos(i)
		    next
		  end
		  
		  
		  
		  //Normalize segments
		  total=cc.Fields(UBound(cc.Fields)).Index
		  for i=0 to NUMSEGMENTS
		    cc.Fields(i).Index=cc.Fields(i).Index/total
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Calculate_MU_BS()
		  //----------------------------------------
		  // BS calculation from Helen Liu, 2000
		  // Helen Liu developed imperical formulas for the
		  // Varian BS into the MU chamber. 
		  // The formulas are for a 10 MV Photon beam
		  //
		  //
		  //----------------------------------------
		  Dim i as Integer
		  Dim Ry1, Ry2,Rx1, Rx2, Py1,py2,y1,y2,x1,x2,Ry,Rx,Py,y,norm,BS_x,BS_y as Single
		  Dim cc as Class_Collimator
		  //----------------------------------------
		  
		  cc=Collimator
		  cc.BackScatter=0
		  
		  //Calculate_DynamicJawPositions
		  
		  
		  norm=1
		  if UBound(cc.Fields)>0 Then
		    norm=0
		    for i=0 to UBound(cc.Fields)
		      norm=norm+cc.Fields(i).Index
		    next
		  end
		  
		  for i=0 to UBound(cc.Fields)
		    y1=Collimator.fields(i).Y1
		    y2=Collimator.fields(i).Y2
		    
		    x1=Collimator.fields(i).X1
		    x2=Collimator.fields(i).X2
		    
		    
		    
		    Ry1=Calculate_MU_BS_Ry(y1)
		    Ry2=Calculate_MU_BS_Ry(y2)
		    
		    
		    Rx1=Calculate_MU_BS_Rx(x1)
		    Rx2=Calculate_MU_BS_Rx(x2)
		    
		    Py1=Calculate_MU_BS_Py(y1)
		    Py2=Calculate_MU_BS_Py(y2)
		    
		    
		    BS_y=Ry1+Ry2
		    BS_x=(Rx1+Rx2)*(Py1+Py2)
		    
		    cc.BackScatter=cc.BackScatter+(BS_x+BS_y)/norm
		  next
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Calculate_MU_BS_Py(y as single) As Single
		  //----------------------------------------
		  // BS calculation from Liu, 2004
		  //
		  //
		  //
		  //----------------------------------------
		  Dim x as Single
		  //----------------------------------------
		  
		  
		  x=(3.95e-2)*y-(3.55e-5)*y*y*y
		  
		  Return x
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Calculate_MU_BS_Rx(x as single) As Single
		  //----------------------------------------
		  // BS calculation from Liu, 2004
		  //
		  //
		  //
		  //----------------------------------------
		  Dim xx as Single
		  //----------------------------------------
		  
		  
		  xx=0.4-0.0187*x
		  
		  Return xx
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Calculate_MU_BS_Ry(y as single) As Single
		  //----------------------------------------
		  // BS calculation from Liu, 2004
		  //
		  //
		  //
		  //----------------------------------------
		  Dim x as Single
		  //----------------------------------------
		  
		  
		  x=1.54-0.0845*y+(4.47e-5)*y*y*y
		  
		  Return x
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Make_New()
		  Collimator=new Class_Collimator
		  ReDim Collimator.Fields(0)
		  Collimator.Fields(0)=new Class_Collimator_Fields
		  MLC= new Class_MLC
		  FLEC=new Class_FLEC
		  Collimator.Fields(0).isocenter=new Class_isocenter
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Read_MLC_Model() As boolean
		  //------------------------------------------------
		  // Update the current MLC Model from MMCTP MLC properties
		  //
		  // Return true if model found
		  //------------------------------------------------
		  Dim Model as String
		  Dim i,k as Integer
		  Dim mfound as Boolean
		  '=======================
		  
		  MLC.Model=""
		  
		  // Find MLC model for this linac
		  for i=0 to UBound(gLinacs.All_Linacs)
		    if Beam_Mode=gLinacs.All_Linacs(i).Mode and Beam_Energy=gLinacs.All_Linacs(i).Energy and RT_name=gLinacs.All_Linacs(i).RT_name then
		      if gLinacs.All_Linacs(i).MLC.MLC_Use=1 Then
		        model=gLinacs.All_Linacs(i).MLC.MLC_Name
		        MLC.Model=Model
		        MLC.Model_Type=gLinacs.All_Linacs(i).MLC.type
		      end
		    end
		  next
		  
		  
		  
		  // Update Leaf Boundaries and other variables for this model
		  mfound=False
		  for i=0 to UBound(gLinacs.All_MLCs)
		    if Model=gLinacs.All_MLCs(i).MLC_Name Then
		      mlc.NumberofLeafPairs=gLinacs.All_MLCs(i).NumberofLeafPairs
		      mfound=True
		      MLC.Abutting_Gap=gLinacs.All_MLCs(i).AbuttingGap
		      MLC.MLC_Direction=gLinacs.All_MLCs(i).LeafDirection
		      MLC.Model_Type=gLinacs.All_MLCs(i).Type
		      MLC.Source_to_MLC=gLinacs.All_MLCs(i).Source_to_Device_Distance
		      
		      ReDim mlc.LeafBoundaries(gLinacs.All_MLCs(i).NumberofLeafPairs)
		      for k=0 to gLinacs.All_MLCs(i).NumberofLeafPairs
		        mlc.LeafBoundaries(k)=gLinacs.All_MLCs(i).Boundaries(k)
		      next
		    end
		  next
		  
		  
		  ReDim MLC.Fields(-1)
		  if mfound Then
		    Add_MLC_Field
		  end
		  
		  MLC.NumberofFields=(UBound(MLC.Fields)+1)
		  
		  if mfound=False Then
		    ReDim mlc.Fields(-1)
		    ReDim MLC.LeafBoundaries(-1)
		    MLC.NumberofFields=0
		  end
		  
		  Return mfound
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Aperture_ID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Aperture_T As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Aperture_Type As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Beam_Description As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Beam_DoseRate As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Beam_Energy As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Beam_Mode As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Beam_Num As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Beam_Type As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Beam_Weight As single = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		Beam_Weight_Point As String = "1"
	#tag EndProperty

	#tag Property, Flags = &h0
		Block_Contours(-1) As Class_Block
	#tag EndProperty

	#tag Property, Flags = &h0
		Collimator As Class_Collimator
	#tag EndProperty

	#tag Property, Flags = &h0
		File_Num As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		FLEC As Class_FLEC
	#tag EndProperty

	#tag Property, Flags = &h0
		Fraction_Group_ID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Fraction_I As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Gantry_A As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Linac_Index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		MLC As Class_MLC
	#tag EndProperty

	#tag Property, Flags = &h0
		MU As single = 100
	#tag EndProperty

	#tag Property, Flags = &h0
		MU_Backscatter_X As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		MU_Backscatter_Y As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Nominal_Isocenter As single = 100
	#tag EndProperty

	#tag Property, Flags = &h0
		Number_of_Tx As integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		Number_R As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Number_Representation As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Number_T As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Plan_I As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Plan_ID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		RT_name As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Rx_D As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Rx_Dose As double
	#tag EndProperty

	#tag Property, Flags = &h0
		SSD As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Wedge_Angle As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Wedge_ID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Wedge_Rotation As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Wedge_Type As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Aperture_ID"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Aperture_T"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Aperture_Type"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Beam_Description"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Beam_DoseRate"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Beam_Energy"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Beam_Mode"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Beam_Num"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Beam_Type"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Beam_Weight"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Beam_Weight_Point"
			Group="Behavior"
			InitialValue="1"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="File_Num"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Fraction_Group_ID"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Fraction_I"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Gantry_A"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Linac_Index"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MU"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MU_Backscatter_X"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MU_Backscatter_Y"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Nominal_Isocenter"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Number_of_Tx"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Number_R"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Number_Representation"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Number_T"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Plan_I"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Plan_ID"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RT_name"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Rx_D"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Rx_Dose"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SSD"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Wedge_Angle"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Wedge_ID"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Wedge_Rotation"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Wedge_Type"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
