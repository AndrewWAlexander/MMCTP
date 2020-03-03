#tag Class
Protected Class Class_MERT_SADVH
	#tag Method, Flags = &h0
		Sub Delete_SaDVH_files()
		  Dim f,g as FolderItem
		  Dim i as Integer
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  
		  
		  g=f.Child("Fluence-SA.dat")
		  if g.Exists Then
		    g.Delete
		  end
		  
		  g=f.Child("Acceptance.dat")
		  if g.Exists Then
		    g.Delete
		  end
		  
		  g=f.Child("AnnealingScheme.dat")
		  if g.Exists Then
		    g.Delete
		  end
		  
		  
		  g=f.Child("SA-Output.dat")
		  if g.Exists Then
		    g.Delete
		  end
		  
		  g=f.Child("Sa-Out.dat")
		  if g.Exists Then
		    g.Delete
		  end
		  
		  g=f.Child("Target1DVH1.dat")
		  if g.Exists Then
		    g.Delete
		  end
		  
		  
		  for i=0 to UBound(grtog.Structures.Structures)
		    g=f.Child("Organ"+str(i+1)+"DVH1.dat")
		    if g.Exists Then
		      g.Delete
		    end
		    g=f.Child("Organ"+str(i+1)+"DVH1")
		    if g.Exists Then
		      g.Delete
		    end
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Open()
		  'Dim i as Integer
		  '
		  '
		  'SAOarray=new Class_Optimization_ORGANARRAY
		  'redim SAOarray.Organ(UBound(grtog.Structures.Structures))
		  'for i=0 to UBound(grtog.Structures.Structures)
		  'SAOarray.Organ(i)=new Class_Optimization_ORGANDOSE
		  'SAOarray.organ(i).OrganID=i
		  'SAOarray.Organ(i).Organ_Name=grtog.Structures.Structures(i).Structure_Name
		  'SAOarray.organ(i).DVH = new Class_DVH_One
		  'SAOarray.organ(i).DVH.stru_color=grtog.Structures.Structures(i).scolor
		  'SAOarray.organ(i).DVH.struc_names=grtog.Structures.Structures(i).Structure_Name
		  'SAOarray.organ(i).DVH.dvh_bins=100
		  'SAOarray.organ(i).Voxel_REs=128
		  'redim SAOarray.organ(i).DVH.dVH(100)
		  'next
		  '
		  'Read_saDVH_Input
		  'Read_Fluence_SA
		  '
		  '
		  'Read_SADVH_Out
		  'Run_Status
		  'if Len(Time)>0 Then
		  'if Time="0:00.00" Then
		  'Running=False
		  'else
		  'Running=True
		  'end
		  'end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_Fluence_SA()
		  //--------------------------------------------
		  //
		  //
		  //--------------------------------------------
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  Dim ss,count,name as String
		  Dim i as Integer
		  Dim tt as Thread_Optimization
		  //--------------------------------------------
		  
		  tt=gOpt
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child("Fluence-SA.dat")
		  
		  if f.Exists = False Then
		    Return
		  end
		  
		  ts=f.OpenAsTextFile
		  if ts=nil Then
		    ts=f.OpenAsTextFile
		  end
		  
		  if ts=nil Then
		    Return
		  end
		  
		  Fluence_File=ts.ReadAll // save flucence file
		  ts.PositionB=0
		  
		  ss=ts.ReadLine
		  count=NthField(ss,":",2)
		  score=val(Count)
		  
		  if score<=gOpt.Grad.Score and score<=gOpt.JAW.Score  and score<=gOpt.NLO.Score Then
		    Window_EMET_Run.EditField_Sa_Score.TextColor=RGB(0,255,0)
		  else
		    Window_EMET_Run.EditField_Sa_Score.TextColor=RGB(255,0,0)
		  end
		  
		  Window_EMET_Run.EditField_Sa_Score.Text=Format(score,"-0.0000##e")
		  
		  ss=ts.ReadLine
		  ss=ts.ReadLine
		  ss=ts.ReadLine
		  ss=ts.ReadLine
		  
		  While ts.EOF=False
		    ss=ts.ReadLine
		    name=Trim(NthField(ss," ",2))
		    for i=0 to UBound(tt.IPbeams)
		      if tt.IPbeams(i).FIdID_Name=name Then
		        tt.IPbeams(i).Weight_SA=val(NthField(ss," ",3))
		        // Update Number of MUs
		        if tt.IPbeams(i).RTOG_Plan>-1 and tt.IPbeams(i).RTOG_Plan<= UBound(gRTOG.Plan) Then
		          if tt.IPbeams(i).RTOG_Beam >-1 and tt.IPbeams(i).RTOG_Beam <= UBound(gRTOG.Plan(tt.IPbeams(i).RTOG_Plan).Beam) Then
		            tt.IPbeams(i).MUs_SA=gRTOG.Plan(tt.IPbeams(i).RTOG_Plan).Beam(tt.IPbeams(i).RTOG_Beam).MU*tt.IPbeams(i).Weight_SA
		          end
		        end
		      end
		    next
		  Wend
		  ts.Close
		  Window_EMET_Run.Update_Listbox_BEAMS
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_saDVH_Input()
		  '//----------------------------------
		  '//
		  '//----------------------------------
		  'Dim f as FolderItem
		  'Dim ts as TextInputStream
		  'Dim w as Single
		  'Dim temp as String
		  '//----------------------------------
		  '
		  'f=gRTOG.Plan(Plan_Index).Path
		  'f=f.Child("SaDVH_Input")
		  '
		  '
		  'if f.Exists Then
		  'ts=f.OpenAsTextFile
		  '
		  'if ts<> nil Then
		  '
		  'Input_File=ts.ReadAll  // Read input file
		  'ts.PositionB=0
		  '
		  'w=val(ts.ReadLine)
		  'Window_EMET_Run.EditField_SA_Iterations.Text=Format(w,"#")
		  '
		  'w=val(ts.ReadLine)
		  ' //Window_EMET_Run.EditField_DVHBinSA.Text=str(w)
		  '
		  'w=val(ts.ReadLine)
		  '
		  'w=val(ts.ReadLine)
		  'Window_EMET_Run.EditField_Conf_Dose.Text=str(w)
		  '
		  'temp=ts.ReadLine
		  '
		  'if InStr(temp,"yes")>0 Then
		  'Window_EMET_Run.CheckBox_SA_WriteDose.Value=True
		  'else
		  'Window_EMET_Run.CheckBox_SA_WriteDose.Value=False
		  '
		  'end
		  'temp=ts.ReadLine
		  'Window_EMET_Run.EditField_SA_Dname.Text=trim(temp)
		  '
		  'temp=ts.ReadLine
		  'To_value=val(temp)
		  'Window_EMET_Run.EditField_ToSA.Text=Format(To_value,"-0.00###e")
		  'temp=ts.ReadLine
		  'Range=val(temp)
		  'Window_EMET_Run.EditField_RangeSA.Text=Format(Range,"-0.00###e")
		  'temp=ts.ReadLine
		  'Alpha=val(temp)
		  'Window_EMET_Run.EditField_SA_Alpha.Text=Format(Alpha,"-0.00###e")
		  '
		  'temp=ts.ReadLine
		  'Weight_Type=val(temp)
		  'Init_w=val(NthField(temp," ",2))
		  'Window_EMET_Run.EditField_SA_InitW.Text=str(Init_w)
		  'if val(temp)=0 Then
		  'Window_EMET_Run.RadioButton_W_SA_UseValue.Value=True
		  'elseif val(temp)=1 Then
		  'Window_EMET_Run.RadioButton_W_SA_Grad.Value=True
		  'elseif val(temp)=2 Then
		  'Window_EMET_Run.RadioButton_W_SA_SA.Value=True
		  'elseif val(temp)=3 Then
		  'Window_EMET_Run.RadioButton_W_SA_JAW.Value=True
		  'elseif val(temp)=4 Then
		  'Window_EMET_Run.RadioButton_W_SA_NLO.Value=True
		  'elseif val(temp)=5 Then
		  'Window_EMET_Run.RadioButton_W_SA_AutoDetermine.Value=True
		  'end
		  '
		  'temp=ts.ReadLine
		  'w=val(Temp)
		  'Window_EMET_Run.EditField_MinWeightSA.Text=str(w)
		  '
		  'temp=ts.ReadLine
		  'w=val(Temp)
		  'Window_EMET_Run.EditField_MaxWeightSA.Text=str(w)
		  '
		  'temp=ts.ReadLine
		  'w=val(Temp)
		  'if w=1 Then
		  'Window_EMET_Run.CheckBox_NormDDSA.Value=True
		  'else
		  'Window_EMET_Run.CheckBox_NormDDSA.Value=False
		  'end
		  '
		  '
		  'temp=ts.ReadLine
		  'w=val(Temp)
		  'if w=1 Then
		  'Window_EMET_Run.RadioButton_SA_Gaussian.Value=True
		  'elseif w=2 Then
		  'Window_EMET_Run.RadioButton_SA_Polar.Value=True
		  'elseif w=3 Then
		  'Window_EMET_Run.RadioButton_SA_Polar_One.Value=True
		  'elseif w=4 Then
		  'Window_EMET_Run.RadioButton_SA_Gaussian_One.Value=True
		  'elseif w=5 Then
		  'Window_EMET_Run.RadioButton_SA_Uniform.Value=True
		  'elseif w=6 Then
		  'Window_EMET_Run.RadioButton_SA_Uniform_One.Value=True
		  'end
		  'ts.Close
		  'end
		  'end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_SADVH_Out()
		  //-----------------------------
		  // Read the SA simulation output
		  //
		  //-----------------------------
		  Dim ts as TextInputStream
		  Dim i as Integer
		  Dim f as FolderItem
		  Dim all,oneline,whole as String
		  Dim sa_score as Single
		  //-----------------------------
		  
		  if Running Then
		    Read_Fluence_SA
		  end
		  
		  if Running Then
		    Run_Status
		  end
		  
		  Window_EMET_Run.StaticText_SA_RunTime.Text="Run Time : "+Time
		  Window_EMET_Run.ProgressWheel_SA.Visible=Running
		  
		  
		  if Running Then
		    f=gRTOG.Plan(Plan_Index).Path
		    f=f.Child("Sa-Out.dat")
		    if f=nil Then
		      Return
		    end
		    if f.Exists=False Then
		      Return
		    end
		    ts=f.OpenAsTextFile
		    if ts=nil Then
		      Return
		    end
		    
		    whole=""
		    whole=ts.ReadAll
		    if whole<>Window_EMET_Run.EditField_ShelloutSA.Text Then
		      Window_EMET_Run.EditField_ShelloutSA.Text=whole
		    end
		    ts.Close
		  end
		  
		  
		  if Read_Output=False or Running=False Then
		    f=gRTOG.Plan(Plan_Index).Path
		    f=f.Child("SaDVH_Out")
		    if f=nil Then
		      Return
		    end
		    if f.Exists=False Then
		      Return
		    end
		    ts=f.OpenAsTextFile
		    if ts=nil Then
		      Return
		    end
		    
		    whole=""
		    whole=ts.ReadAll
		    Outputfile=whole
		    ts.Close
		    if InStr(whole,"SA-DVH finished !" )>0then
		      Running=False
		      Read_Output=True
		      if whole<> Window_EMET_Run.EditField_ShelloutSA.Text Then
		        Window_EMET_Run.EditField_ShelloutSA.Text=whole
		      end
		      Runtime=val(NthField(whole,"Execution time (min) :",2))
		      Window_EMET_Run.EditField_Sa_Time.Text=Format(Runtime,"#.##")
		      
		      Score_Initial=val(NthField(whole,"Initial Objective:",2))
		      Window_EMET_Run.EditField_Sa_Score_Intitial.Text=Format(Score_Initial,"#.#####e")
		      
		      SAOArray.Read_Results(whole)
		      
		    elseif Window_EMET_Run.EditField_ShelloutSA.Text="" Then
		      Window_EMET_Run.EditField_ShelloutSA.Text=whole
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_saDVH_Temp_OutPut()
		  //----------------------------------
		  //
		  //----------------------------------
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  Dim w as Single
		  Dim temp as String
		  //----------------------------------
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child("SA-Output.dat")
		  
		  if f.Exists Then
		    ts=f.OpenAsTextFile
		    if ts<> nil Then
		      While ts.EOF=False
		        Temp=ts.ReadLine
		        if len(temp)>10 Then
		          w=val(NthField(temp," ",5))
		          Window_EMET_Run.EditField_Sa_Score.Text=Format(w,"0.0000##e")
		        end
		      Wend
		      ts.Close
		    end
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Run()
		  dim tmpstr,tt(-1) as string
		  Dim g as FolderItem
		  Dim out,all as String
		  dim i,id as Integer
		  Dim ts as TextOutputStream
		  //------------------------------------
		  
		  
		  Delete_SaDVH_files
		  Write_saDVH_Input
		  gOpt.Write_Fields
		  Window_EMET_Run.EditField_Sa_Score.Text=""
		  Read_Output=False
		  
		  g=gRTOG.Plan(Plan_Index).Path
		  
		  g=g.Child("SaRun")
		  ts=g.CreateTextFile
		  ts.Write gOpt.path+"/bin/saDVH < saDVH_input > saDVH_Out"+chr(10)
		  ts.Close
		  g.Permissions=777
		  
		  
		  SAShell = new Shell_MERT_SADVH
		  SAShell.Mode=2
		  SAShell.Execute "bash"
		  
		  Running=True
		  
		  Window_EMET_Run.ProgressWheel_SA.Visible=Running
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Run_Status()
		  //--------------------------------------
		  //
		  //
		  //--------------------------------------
		  Dim f as FolderItem
		  Dim ss as Shell
		  Dim i as Integer
		  Dim ti,output,lin(-1),tt(-1) as String
		  //--------------------------------------
		  
		  
		  ss= new Shell
		  ss.Mode=0
		  ss.Execute "ps -U andrew | grep saDVH"
		  ss.Poll
		  ss.Close
		  output=ss.ReadAll
		  lin=Split(output,Chr(10))
		  
		  if UBound(lin)>-1 Then
		    output=lin(0)
		    tt=Split(output," ")
		    
		    for i=UBound(tt) DownTo 0
		      if Len(tt(i))=0 Then
		        tt.Remove i
		      end
		    next
		    
		    
		    if UBound(tt)>=3 Then
		      ti=tt(3)
		      Time=ti
		    end
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_saDVH_Input()
		  '//----------------------------------
		  '//
		  '//----------------------------------
		  'Dim f as FolderItem
		  'Dim ts as TextOutputStream
		  'Dim w as Single
		  'Dim temp as Int64
		  '//----------------------------------
		  '
		  'f=gRTOG.Plan(Plan_Index).Path
		  'f=f.Child("SaDVH_Input")
		  'if f.Exists Then
		  'f.Delete
		  'end
		  '
		  'ts=f.CreateTextFile
		  '
		  'if ts=nil Then
		  'Return
		  'end
		  '
		  '
		  'ts.Delimiter=EndOfLine.UNIX
		  '
		  'temp=val(Window_EMET_Run.EditField_SA_Iterations.Text)
		  '// Write the number of iterations
		  'ts.WriteLine Format(temp,"#")
		  '
		  '// Write the DVH bin number for this run
		  'ts.WriteLine Format(gOpt.dvh_bin,"#")
		  '
		  '// Write number of strucutres
		  'ts.WriteLine Format(UBound(grtog.Structures.Structures)+1,"#")
		  'ts.WriteLine Trim(Window_EMET_Run.EditField_Conf_Dose.Text)
		  '
		  'if Window_EMET_Run.CheckBox_SA_WriteDose.Value Then
		  'ts.WriteLine "yes"
		  'else
		  'ts.WriteLine "no"
		  'end
		  'ts.WriteLine Trim(Window_EMET_Run.EditField_SA_Dname.Text)
		  '
		  'ts.WriteLine Format(To_value,"#.####e")
		  'ts.WriteLine Format(Range,"#.####e")
		  'ts.WriteLine Format(Alpha,"#.####e")
		  'ts.WriteLine Format(Weight_Type,"#")+" "+Format(Init_w,"#.##e")
		  '
		  '
		  'w=val(Window_EMET_Run.EditField_MinWeightSA.Text)
		  'w=w
		  'ts.WriteLine Format(w,"#.####e")
		  '
		  'w=val(Window_EMET_Run.EditField_MaxWeightSA.Text)
		  'w=w
		  'ts.WriteLine Format(w,"#.####e")
		  '
		  '
		  'if Window_EMET_Run.CheckBox_NormDDSA.Value Then
		  'ts.WriteLine "1"
		  'else
		  'ts.WriteLine "0"
		  'end
		  '
		  '
		  '
		  'if Window_EMET_Run.RadioButton_SA_Gaussian.Value Then
		  'ts.WriteLine "1"
		  'elseif Window_EMET_Run.RadioButton_SA_Polar.Value Then
		  'ts.WriteLine "2"
		  'elseif Window_EMET_Run.RadioButton_SA_Polar_One.Value Then
		  'ts.WriteLine "3"
		  'elseif Window_EMET_Run.RadioButton_SA_Gaussian_One.Value Then
		  'ts.WriteLine "4"
		  'elseif Window_EMET_Run.RadioButton_SA_Uniform.Value Then
		  'ts.WriteLine "5"
		  'elseif Window_EMET_Run.RadioButton_SA_Uniform_One.Value Then
		  'ts.WriteLine "6"
		  'end
		  'ts.Close
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Alpha As Single = .85
	#tag EndProperty

	#tag Property, Flags = &h0
		Fluence_File As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Init_w As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Input_File As String
	#tag EndProperty

	#tag Property, Flags = &h0
		job_id As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Max_W As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Min_W As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Outputfile As String
	#tag EndProperty

	#tag Property, Flags = &h0
		OutputName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Range As Single = 5
	#tag EndProperty

	#tag Property, Flags = &h0
		Read_Output As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Running As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		RunTime As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		SAOArray As Class_Optimization_ORGANARRAY
	#tag EndProperty

	#tag Property, Flags = &h0
		SAShell As Shell_MERT_SADVH
	#tag EndProperty

	#tag Property, Flags = &h0
		Score As Single = 10000
	#tag EndProperty

	#tag Property, Flags = &h0
		Score_Initial As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Time As String
	#tag EndProperty

	#tag Property, Flags = &h0
		To_value As Single = .1
	#tag EndProperty

	#tag Property, Flags = &h0
		Weight_Type As Integer = 0
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Fluence_File"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="Init_w"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Input_File"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="job_id"
			Visible=false
			Group="Behavior"
			InitialValue="0"
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
			Name="Max_W"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Min_W"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
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
			Name="Outputfile"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OutputName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Range"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Read_Output"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Running"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RunTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Score"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Score_Initial"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
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
			Name="Time"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="To_value"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Weight_Type"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
