#tag Class
Protected Class Class_BEAM_CM_SYNCMLCE
	#tag Method, Flags = &h0
		Sub Read(Text() as String, idname as String)
		  //-----------------------------------------------
		  // READIN SYNCMLCE CM into variables
		  //
		  //-----------------------------------------------
		  Dim i,k as integer
		  Dim temp as String
		  Dim bottom as Single
		  Dim bb as Class_BEAM_CM_DYNVMLC_Leaf_Opening
		  //-----------------------------------------------
		  
		  RMAX_CM=val(NthField((text(0)),",",1))
		  text.Remove 0
		  Title_CM=text(0)
		  text.Remove 0
		  
		  Orient=val(NthField((text(0)),",",1))
		  MODE_SYNCMLCE=val(NthField((text(0)),",",2))
		  text.Remove 0
		  
		  Num_leaf=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  
		  Zmin=val(NthField((text(0)),",",1))
		  Zmax=val(NthField((text(0)),",",2))
		  text.Remove 0
		  
		  zstepl=val(NthField((text(0)),",",1))
		  zstepr=val(NthField((text(0)),",",2))
		  text.Remove 0
		  
		  tgw=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  x3=val(NthField((text(0)),",",1))
		  x4=val(NthField((text(0)),",",2))
		  text.Remove 0
		  
		  space=val(NthField((text(0)),",",1))
		  ssd=val(NthField((text(0)),",",2))
		  text.Remove 0
		  
		  lbrot=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  endtype=val(NthField((text(0)),",",1))
		  text.Remove 0
		  if endtype=0 Then
		    leafradius=val(NthField((text(0)),",",1))
		    cil=val(NthField((text(0)),",",2))
		  else
		    zfocus=val(NthField((text(0)),",",1))
		  end
		  text.Remove 0
		  
		  
		  if UBound(Text)<0 Then
		    Return
		  end
		  
		  if MODE_SYNCMLCE=0 Then
		    ReDim Fields(0)
		    Fields(0)=new Class_BEAM_CM_DYNVMLC_Fields
		    
		    for k=1 to nfield //JB modified CM
		      
		      i=0
		      While i<Num_leaf
		        bb=new Class_BEAM_CM_DYNVMLC_Leaf_Opening
		        bb.Neg=val(NthField((text(0)),",",1))
		        bb.Pos=val(NthField((text(0)),",",2))
		        bb.Num=val(NthField((text(0)),",",3))
		        i=i+bb.Num
		        text.Remove 0
		        if UBound(Text)<0 Then
		          Return
		        end
		        Fields(0).Leaves.Append bb
		      Wend
		    Next
		    
		  elseif MODE_SYNCMLCE=1 or MODE_SYNCMLCE=2 Then
		    mlc_file=Trim(text(0))
		    text.Remove 0
		    
		  end
		  
		  temp=text(0)
		  Ecut_air=val(NthField(temp,",",1))
		  Pcut_air=val(NthField(temp,",",2))
		  Dose_Zone_air=val(NthField(temp,",",3))
		  IRegion_to_bit_air=val(NthField(temp,",",4))
		  text.Remove 0
		  temp=text(0)
		  Med_air=Trim(NthField(temp,",",1))
		  text.Remove 0
		  
		  temp=text(0)
		  Ecut_leaves=val(NthField(temp,",",1))
		  Pcut_leaves=val(NthField(temp,",",2))
		  Dose_Zone_Leaves=val(NthField(temp,",",3))
		  IRegion_to_bit_Leaves=val(NthField(temp,",",4))
		  text.Remove 0
		  temp=text(0)
		  Med_leaves=Trim(NthField(temp,",",1))
		  text.Remove 0
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_String(cm as Class_BEAM_Inputfile_CMs, beam as integer)
		  //-------------------------------------------------------------------------------------------------
		  // Write CM SYNCMLCE
		  //
		  // Updated 
		  // Dec 2015, Error with MODE_SYNCMLCE=0 type CMs, 
		  // November 2015 to include MLC file output
		  //-------------------------------------------------------------------------------------------------
		  Dim whole,mlc_string  as String
		  Dim i,k,hh,p,j as Integer
		  Dim textfile as FolderItem
		  Dim ts as TextOutputStream
		  //-------------------------------------------------------------------------------------------------
		  
		  
		  // Write MLC file
		  textfile=gRTOG.Plan(Plan_Index).Path
		  textfile=textfile.Child(MC_file_name+str(beam+1)+".mlc")
		  if textfile.Exists Then
		    textfile.Delete
		  end
		  
		  // Create MLC file for multi-MLC
		  if MODE_SYNCMLCE=1 or MODE_SYNCMLCE=2  Then
		    ts=textfile.CreateTextFile
		    if ts<> nil Then
		      if MODE_SYNCMLCE=2 Then
		        whole="Step and Shoot MLC"+EndOfLine.UNIX
		      Else
		        whole="Dynamic MLC"+EndOfLine.UNIX
		      end
		      whole=whole+Format(UBound(Fields)+1,"#")+EndOfLine.UNIX
		      
		      ts.Write whole
		      
		      for i =0 to UBound(Fields)
		        // Write Index of field
		        whole=Format(Fields(i).Index,"#.######")+EndOfLine.UNIX
		        mlc_string=""
		        for j=0 to UBound(Fields(i).leaves)
		          mlc_string=mlc_string+Format(Fields(i).leaves(j).neg,"-#.####")+", "+Format(Fields(i).leaves(j).pos,"-#.####")+", 1"+EndOfLine.UNIX
		        next
		        whole=whole+mlc_string
		        ts.Write whole
		      next
		      ts.Close
		    else
		      gBEAM.egs_msg.append "Error ! could not creat SYNCMLCE file : "+textfile.Name
		      
		    end
		  end
		  
		  
		  
		  // Write CM text file
		  ReDim cm.text(-1)
		  
		  cm.text.Append Format(RMAX_CM,"-0.0###")+", RMAX"
		  cm.text.Append Title_CM
		  
		  CM.text.Append Format(Orient,"#")+", "+Format(MODE_SYNCMLCE,"#")+", ORIENT, MODE"
		  CM.text.Append Format(Num_leaf,"#")+", NUM_LEAF"
		  
		  CM.text.Append Format(ZMIN,"-0.0###")+", "+Format(Zmax,"-0.0###")+", ZMIN, ZMAX"
		  CM.text.Append Format(zstepl,"-0.0###")+", "+Format(zstepr,"-0.0###")+", ZSTEPL, ZSTEPR"
		  CM.text.Append Format(tgw,"-0.0####")+", TGW"
		  CM.text.Append Format(x3,"-0.0####")+", "+Format(x4,"-0.0####")+", X3, X4"
		  CM.text.Append Format(space,"-0.0####")+", "+Format(ssd,"-0.0####")+", SPACE, SSD"
		  CM.text.Append Format(lbrot,"-0")+", LBROT" // 2015 Changed to right interger from double
		  CM.text.Append Format(endtype,"#")+", ENDTYPE"
		  
		  if endtype=0 Then
		    CM.text.Append Format(leafradius,"-0.0###")+", "+Format(cil,"-0.0###")+", LEAFRADIUS, CIL"
		  else
		    CM.text.Append Format(zfocus,"-0.0###")+", Z position from which radius defined"
		  end
		  
		  // Updated Dec 2015 by AA
		  if MODE_SYNCMLCE=0 Then
		    p=0
		    hh=0
		    While hh<Num_leaf
		      if p>UBound(Fields(0).Leaves) Then
		        gBEAM.egs_msg.append "Error ! could not write SYNCMLCE CM section of input file"
		        Exit
		      end
		      hh=Fields(0).Leaves(p).Num+hh
		      cm.text.Append Format(Fields(0).Leaves(p).Neg,"-0.0###")+", "+Format(Fields(0).Leaves(p).Pos,"-0.0###")+", "+Format(Fields(0).Leaves(p).Num,"#")
		      p=p+1
		    Wend
		  else
		    cm.text.Append mlc_file
		  end
		  
		  
		  // Append ECUT, PCUT and Materials
		  cm.text.Append Format(Ecut_air,"#.###")+", "+Format(Pcut_air,"#.###")+", "+Format(Dose_Zone_air,"-#")+", "+Format(IRegion_to_bit_air,"#")
		  cm.text.Append Med_air
		  
		  cm.text.Append Format(Ecut_leaves,"#.###")+", "+Format(Pcut_leaves,"#.###")+", "+Format(Dose_Zone_Leaves,"-#")+", "+Format(IRegion_to_bit_Leaves,"#")
		  cm.text.Append Med_leaves
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		cil As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Zone_air As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Zone_Leaves As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Ecut_air As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Ecut_leaves As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		endtype As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Fields(-1) As Class_BEAM_CM_DYNVMLC_Fields
	#tag EndProperty

	#tag Property, Flags = &h0
		filter As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IDMLFC_MLC As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_to_bit_air As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_to_bit_Leaves As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		lbrot As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		leafradius As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Med_air As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Med_leaves As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mlc_file As string
	#tag EndProperty

	#tag Property, Flags = &h0
		MODE_SYNCMLCE As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		nfield As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_leaf As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Orient As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Pcut_air As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Pcut_leaves As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		RMAX_CM As single
	#tag EndProperty

	#tag Property, Flags = &h0
		space As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ssd As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		tgw As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Title_CM As string
	#tag EndProperty

	#tag Property, Flags = &h0
		TWIDTH_MLC As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		x3 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		x4 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		zfocus As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Zmax As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ZMIN As single
	#tag EndProperty

	#tag Property, Flags = &h0
		zstepl As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		zstepr As Single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="cil"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Zone_air"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Zone_Leaves"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Ecut_air"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Ecut_leaves"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="endtype"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="filter"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IDMLFC_MLC"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRegion_to_bit_air"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRegion_to_bit_Leaves"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="lbrot"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="leafradius"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Med_air"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Med_leaves"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mlc_file"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MODE_SYNCMLCE"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="nfield"
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Num_leaf"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Orient"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pcut_air"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pcut_leaves"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RMAX_CM"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="space"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ssd"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="tgw"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title_CM"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TWIDTH_MLC"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="x3"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="x4"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="zfocus"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Zmax"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZMIN"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="zstepl"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="zstepr"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
