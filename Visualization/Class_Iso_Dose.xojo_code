#tag Class
Protected Class Class_Iso_Dose
	#tag Method, Flags = &h0
		Sub Calculate_Values()
		  //---------------------------------------
		  //  Update the normalization value for isodose lines
		  //
		  //---------------------------------------
		  Dim iso_x,iso_y,iso_z as Single
		  Dim i as Integer
		  Dim gg as Class_Iso_Dose_Settings
		  //---------------------------------------
		  
		  
		  
		  if Show_Type=1 Then
		    normalization_value=100
		    gg=abs
		    
		  else
		    if Show_Type=2 Then // Max dose value
		      if UBound(gRTOG.Plan)>= Plan_Index  and Plan_Index>-1 Then
		        if UBound(gRTOG.Plan(Plan_Index).Dose)>= Window_Treatment.dose_index and Window_Treatment.dose_index>-1 Then
		          normalization_value=gRTOG.Plan(Plan_Index).Dose(Window_Treatment.dose_index).dmax
		        end
		      end
		      
		    elseif Show_Type=3 Then // Isodose value
		      // If there is a plan and plan is selected
		      if UBound(gRTOG.Plan)>= Plan_Index  and Plan_Index>-1 Then
		        // If there is a beam within plan
		        if UBound(gRTOG.Plan(Plan_Index).Beam)>-1 Then
		          // 
		          if UBound(gRTOG.Plan(Plan_Index).Beam)>-1 Then
		            iso_x=gRTOG.Plan(Plan_Index).Beam(0).Collimator.Fields(0).isocenter.x
		            iso_y=gRTOG.Plan(Plan_Index).Beam(0).Collimator.Fields(0).isocenter.y
		            iso_z=gRTOG.Plan(Plan_Index).Beam(0).Collimator.Fields(0).isocenter.z
		          else
		            iso_x=0
		            iso_y=0
		            iso_z=0
		          end
		          
		          // If dose distribution is selected
		          if UBound(gRTOG.Plan(Plan_Index).Dose)>= Window_Treatment.dose_index and Window_Treatment.dose_index>-1 Then
		            normalization_value=RTOG_Dose_Interpolate(iso_x,iso_y,iso_z,gRTOG.Plan(Plan_Index).Dose(Window_Treatment.dose_index))
		          end
		        end
		      end
		    else // User value
		      
		    end
		    gg=Relative
		  end
		  
		  if Values=nil Then
		    Return
		  end
		  
		  redim Values.values(UBound(gg.values))
		  redim Values.colours(UBound(gg.values))
		  redim Values.each_show(UBound(gg.values))
		  redim Values.Lines(UBound(gg.values))
		  
		  
		  for i=0 to UBound(gg.values)
		    Values.values(i)=normalization_value*gg.values(i)/100
		    Values.colours(i)=gg.colours(i)
		    Values.each_show(i)=gg.each_show(i)
		    Values.Lines(i)=new Class_IsoDose_Lines
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_Default_IsoDoseSettins()
		  //----------------------------------------------
		  // Loadin Default IsoDose line settings
		  //
		  //
		  //----------------------------------------------
		  Dim i as Integer
		  Dim f,pp as FolderItem
		  Dim bb as Boolean
		  //----------------------------------------------
		  
		  Abs=new Class_Iso_Dose_Settings
		  Relative=new Class_Iso_Dose_Settings
		  Values=new Class_Iso_Dose_Settings
		  
		  
		  bb=False
		  
		  f=gPref.Settings_fi
		  if f<>nil Then
		    f=f.Child("IsoDoseLine.txt")
		    if f.Exists Then
		      bb=True
		    end
		  end
		  
		  
		  if bb Then // Now look for Patient IsoDose File
		    pp=gRTOG.path
		    
		    pp=pp.Child("IsoDoseLine.txt")
		    if pp.Exists then
		      Read_IsoDoseSettins_file(pp) // Readin the patient settings file
		      
		    else// Readin System Default Isodose Settings
		      Read_IsoDoseSettins_file(f)
		      
		    end
		    
		  else // Else set default isodose lines.
		    
		    redim Abs.colours(9)
		    redim Abs.each_show(9)
		    redim Abs.values(9)
		    
		    redim Relative.colours(9)
		    redim Relative.each_show(9)
		    redim Relative.values(9)
		    
		    for i=0 to 9
		      Relative.each_show(i)=True
		      Relative.values(i)=10 +10*i
		      Abs.each_show(i)=True
		      Abs.values(i)=10 +10*i
		    next
		    Abs.colours(0)=rgb(23,46,255)
		    Abs.colours(1)=rgb(135,215,255)
		    Abs.colours(2)=rgb(0,255,163)
		    Abs.colours(3)=rgb(0,255,0)
		    Abs.colours(4)=rgb(226,255,112)
		    Abs.colours(5)=rgb(255,217,0)
		    Abs.colours(6)=rgb(255,158,158)
		    Abs.colours(7)=rgb(255,117,241)
		    Abs.colours(8)=rgb(255,96,96)
		    Abs.colours(9)=rgb(255,0,0)
		    
		    Relative.colours(0)=rgb(23,46,255)
		    Relative.colours(1)=rgb(135,215,255)
		    Relative.colours(2)=rgb(0,255,163)
		    Relative.colours(3)=rgb(0,255,0)
		    Relative.colours(4)=rgb(226,255,112)
		    Relative.colours(5)=rgb(255,217,0)
		    Relative.colours(6)=rgb(255,158,158)
		    Relative.colours(7)=rgb(255,117,241)
		    Relative.colours(8)=rgb(255,96,96)
		    Relative.colours(9)=rgb(255,0,0)
		    
		    thickness=2
		    Show_Type=1
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_IsoDoseSettins_file(f as FolderItem)
		  //--------------------------------
		  // Read defult Isodose settings
		  //
		  //--------------------------------
		  Dim i as Integer
		  Dim ts as TextInputStream
		  Dim file,temp,temp2,s as String
		  Dim c as Color
		  dim v As Variant
		  //--------------------------------
		  
		  
		  ts=TextInputStream.Open(f)
		  if ts=nil Then 
		    Return
		  end
		  
		  //ts.Delimiter=local_endline
		  
		  // Write Header
		  FONT=ts.ReadLine
		  FONT_Size=val(ts.ReadLine)
		  thickness=val(ts.readline)
		  thicknessSave=val(ts.readline)
		  normalization_value=val(ts.ReadLine)
		  Show_Type=val(ts.readline)
		  SaveType=val(ts.readline)
		  
		  i=val(ts.readline)-1
		  redim Abs.colours(i)
		  redim Abs.each_show(i)
		  redim Abs.values(i)
		  ReDim Abs.Lines(i)
		  
		  for i=0 to UBound(Abs.colours)
		    temp=ts.ReadLine
		    if NthField(temp,",",1)="1" Then
		      Abs.each_show(i) =True
		    else
		      Abs.each_show(i) =False
		    end
		    v=NthField(temp,",",2)
		    abs.colours(i)=v.ColorValue
		    Abs.values(i)=val(NthField(temp,",",3))
		    Abs.Lines(i)=new Class_IsoDose_Lines
		    
		  next
		  
		  
		  
		  i=val(ts.readline)-1
		  redim Relative.colours(i)
		  redim Relative.each_show(i)
		  redim Relative.values(i)
		  ReDim Relative.Lines(i)
		  for i=0 to UBound(Relative.colours)
		    temp=ts.ReadLine
		    if NthField(temp,",",1)="1" Then
		      Relative.each_show(i) =True
		    else
		      Relative.each_show(i) =False
		    end
		    v=NthField(temp,",",2)
		    Relative.colours(i)=v.ColorValue
		    Relative.values(i)=val(NthField(temp,",",3))
		    Relative.Lines(i)=new Class_IsoDose_Lines
		  next
		  
		  
		  
		  
		  
		  ts.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_Default_IsoDoseSettins(type as integer)
		  //--------------------------------
		  // Write defult Isodose settings
		  //
		  //--------------------------------
		  Dim i as Integer
		  Dim f as FolderItem
		  Dim ts as TextOutputStream
		  Dim file,temp,temp2,s as String
		  Dim c as Color
		  //--------------------------------
		  
		  
		  if Type=0 then // Write the System settings
		    f=gPref.Settings_fi
		    if f=nil Then
		      Return
		    end
		    f=f.Child("IsoDoseLine.txt")
		    if f.Exists Then
		      f.Delete
		    end
		  else // write the patient Settings
		    f=gRTOG.path
		    if f=nil Then
		      Return
		    end
		    f=f.Child("IsoDoseLine.txt")
		    if f.Exists Then
		      f.Delete
		    end
		  end
		  
		  ts=TextOutputStream.Create(f)
		  ts.Delimiter=local_endline
		  
		  // Write Header
		  ts.WriteLine FONT
		  ts.WriteLine str(FONT_Size)
		  ts.WriteLine Format(thickness,"#.###")
		  ts.WriteLine Format(thicknessSave,"#.###")
		  ts.WriteLine Format(normalization_value,"-#.#####e")
		  ts.WriteLine str(Show_Type)
		  ts.WriteLine str(SaveType)
		  
		  
		  ts.WriteLine str(UBound(Abs.colours)+1)
		  for i=0 to UBound(Abs.colours)
		    if Abs.each_show(i) Then
		      temp="1"
		    else
		      temp="0"
		    end
		    
		    s=str(Abs.colours(i))
		    //dim v As Variant = s
		    //dim col As Color = v.ColorValue
		    ts.WriteLine temp+","+s+","+Format(Abs.values(i),"#.####e")
		  next
		  
		  
		  
		  ts.WriteLine str(UBound(Relative.colours)+1)
		  for i=0 to UBound(Relative.colours)
		    if Relative.each_show(i) Then
		      temp="1"
		    else
		      temp="0"
		    end
		    
		    s=str(Relative.colours(i))
		    //dim v As Variant = s
		    //dim col As Color = v.ColorValue
		    ts.WriteLine temp+","+s+","+Format(Relative.values(i),"#.####e")
		  next
		  
		  ts.Close
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Abs As Class_Iso_Dose_Settings
	#tag EndProperty

	#tag Property, Flags = &h0
		FONT As String = "System"
	#tag EndProperty

	#tag Property, Flags = &h0
		FONT_Size As Integer = 12
	#tag EndProperty

	#tag Property, Flags = &h0
		normalization_value As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Relative As Class_Iso_Dose_Settings
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			// 0 = Dashed
			// 1 = Solid Lines
		#tag EndNote
		SaveType As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			//
			
			1 = Absolute
			2 = Relative max dose
			3 = Isodose
		#tag EndNote
		Show_Type As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		thickness As single
	#tag EndProperty

	#tag Property, Flags = &h0
		thicknessSave As single = 2
	#tag EndProperty

	#tag Property, Flags = &h0
		Values As Class_Iso_Dose_Settings
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="FONT"
			Visible=false
			Group="Behavior"
			InitialValue="System"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FONT_Size"
			Visible=false
			Group="Behavior"
			InitialValue="12"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="normalization_value"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SaveType"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Show_Type"
			Visible=false
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="thickness"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="thicknessSave"
			Visible=false
			Group="Behavior"
			InitialValue="2"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
