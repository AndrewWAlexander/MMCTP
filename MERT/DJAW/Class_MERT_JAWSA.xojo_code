#tag Class
Protected Class Class_MERT_JAWSA
	#tag Method, Flags = &h0
		Sub AutoRun()
		  if Running=False Then
		    if Score<Inital_Score Then
		      Window_EMET_Run.RadioButton_Jaw_W_Jaws.value =True
		      Run
		    elseif Score>gopt.Grad.Score and gopt.Grad.Running=False Then
		      Window_EMET_Run.RadioButton_Jaw_W_Grad.value =True
		      Run
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Delete_JAWDVH_files()
		  Dim f,g as FolderItem
		  Dim i as Integer
		  
		  
		  // Remove old files
		  g=gRTOG.Plan(Plan_Index).Path
		  
		  f=g.Child("JAW-Acceptance.dat")
		  if f.Exists Then
		    f.Delete
		  end
		  
		  f=g.Child("AnnealingScheme-JAW.dat")
		  if f.Exists Then
		    f.Delete
		  end
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  
		  
		  g=f.Child("Fluence-JAW.dat")
		  if g.Exists Then
		    g.Delete
		  end
		  
		  
		  
		  g=f.Child("JAW-Output.dat")
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
		Sub KillRun()
		  Run_Thread.Shell.Close
		  Running=False
		  Window_EMET_Run.ProgressWheel_JAW.Visible=False
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Open()
		  'Dim i as Integer
		  '
		  '
		  'S=new Class_Optimization_ORGANARRAY
		  'redim S.Organ(UBound(grtog.Structures.Structures))
		  'for i=0 to UBound(grtog.Structures.Structures)
		  'S.Organ(i)=new Class_Optimization_ORGANDOSE
		  'S.organ(i).OrganID=i
		  'S.Organ(i).Organ_Name=grtog.Structures.Structures(i).Structure_Name
		  'S.organ(i).DVH = new Class_DVH_One
		  'S.organ(i).DVH.stru_color=grtog.Structures.Structures(i).scolor
		  'S.organ(i).DVH.struc_names=grtog.Structures.Structures(i).Structure_Name
		  'S.organ(i).DVH.dvh_bins=100
		  'S.organ(i).Voxel_REs=128
		  'redim S.organ(i).DVH.dVH(100)
		  'next
		  '
		  '
		  '
		  '
		  'Read_Fluence_JAW
		  'Read_sajawDVH_Input
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_Fluence_JAW()
		  //--------------------------------------------
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  Dim ss,count,name as String
		  Dim i as Integer
		  Dim tt as Thread_Optimization
		  //--------------------------------------------
		  
		  tt=gOpt
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child("Fluence-JAW.dat")
		  
		  if f.Exists = False Then
		    Return
		  end
		  
		  // Open for record
		  ts=f.OpenAsTextFile
		  While ts=nil
		    ts=f.OpenAsTextFile
		  Wend
		  Fluence_File=ts.ReadAll
		  ts.Close
		  
		  // Open to read
		  ts=f.OpenAsTextFile
		  While ts=nil
		    ts=f.OpenAsTextFile
		  Wend
		  
		  
		  ss=ts.ReadLine
		  count=NthField(ss,":",2)
		  score=val(Count)
		  
		  
		  if score<=gopt.Grad.Score and score<=gopt.SA.Score Then
		    Window_EMET_Run.EditField_Jaw_Score.TextColor=RGB(0,255,0)
		  else
		    Window_EMET_Run.EditField_Jaw_Score.TextColor=RGB(255,0,0)
		  end
		  Window_EMET_Run.EditField_Jaw_Score.Text=Format(score,"-#.#######e")
		  
		  
		  ss=ts.ReadLine
		  ss=ts.ReadLine
		  ss=ts.ReadLine
		  ss=ts.ReadLine
		  
		  
		  While ts.EOF=False
		    ss=ts.ReadLine
		    name=Trim(NthField(ss," ",2))
		    for i=0 to UBound(tt.IPbeams)
		      if tt.IPbeams(i).FIdID_Name=name Then
		        tt.IPbeams(i).Weight_JAW=val(NthField(ss," ",3))
		        // Update Number of MUs
		        if tt.IPbeams(i).RTOG_Plan<= UBound(gRTOG.Plan) and  tt.IPbeams(i).RTOG_Plan>-1  Then
		          if tt.IPbeams(i).RTOG_Beam>-1 and tt.IPbeams(i).RTOG_Beam <= UBound(gRTOG.Plan(tt.IPbeams(i).RTOG_Plan).Beam) Then
		            tt.IPbeams(i).MUs_Jaw=gRTOG.Plan(tt.IPbeams(i).RTOG_Plan).Beam(tt.IPbeams(i).RTOG_Beam).MU*tt.IPbeams(i).Weight_JAW
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
		Sub Read_JAWDVH_Out()
		  //-----------------------------
		  //
		  //
		  //-----------------------------
		  Dim i as Integer
		  Dim all,oneline,whole as String
		  Dim times as Single
		  Dim mm_now as Double
		  //-----------------------------
		  
		  Window_EMET_Run.ProgressWheel_JAW.Visible=Running
		  
		  
		  IF Running Then
		    //Read_Fluence_jaw
		    mm_now=Microseconds
		    times=(mm_now-Start_Sec)/1000000/60
		    if times>100 Then
		      Time=Format(times/60,"#.#")+" hours"
		    else
		      Time=Format(times,"#")+" minutes"
		    end
		    Window_EMET_Run.StaticText_JAW_RunTime.Text=Time
		    if Waiting and gOpt.JAW.Run_Thread.Shell.IsRunning Then
		      i=IBeam_index
		      
		      // For VMC simulations
		      if Caluclation_Type=0 or Caluclation_Type=1 Then
		        if dmx_index<= UBound(gVMC.VMC) and dmx_index>-1 Then
		          if  beam_index<= UBound(gVMC.VMC(dmx_index).BEAMS) Then
		            if gVMC.VMC(dmx_index).BEAMS(beam_index).downloaded_hed=true and gVMC.VMC(dmx_index).BEAMS(beam_index).downloaded_d3d=true Then
		              if i<=UBound(gopt.ipbeams) Then
		                whole=gopt.IPbeams(i).FIdID_Name+" "+ Format(gopt.IPbeams(i).FldID,"#")+" "+Format(gopt.IPbeams(i).Norm_Value,"#.####e")+" "+ Format(gopt.IPbeams(i).d3d_x_off,"-#.####e")+" "+ Format(gopt.IPbeams(i).d3d_y_off,"-#.####e")+" "+ Format(gopt.IPbeams(i).d3d_z_off,"-#.####e")
		                Run_Thread.Shell.writeline whole
		                Waiting=False
		                gopt.IPbeams(UBound(gOpt.IPbeams)).Use=True
		                gopt.Num_Fields=gopt.IPbeams(UBound(gOpt.IPbeams)).PB_Index
		                Window_EMET_Run.Update_PB_Use
		              end
		            end
		          end
		        end
		        
		        
		        // For DOSXYZnrc simulations
		      elseif Caluclation_Type=2 or Caluclation_Type=3 or Caluclation_Type=4 Then
		        
		        if UBound(gDOSXYZ.DOSXYZ)>=egsphant_index Then
		          if UBound(gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input)>=beam_index Then
		            if gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam_index).dos_3ddose_downloaded=true Then
		              whole=gopt.IPbeams(i).FIdID_Name+" "+ Format(gopt.IPbeams(i).FldID,"#")+" "+Format(gopt.IPbeams(i).Norm_Value,"#.####e")+" "+ Format(gopt.IPbeams(i).d3d_x_off,"-#.####e")+" "+ Format(gopt.IPbeams(i).d3d_y_off,"-#.####e")+" "+ Format(gopt.IPbeams(i).d3d_z_off,"-#.####e")
		              Run_Thread.Shell.writeline whole
		              Waiting=False
		              gopt.IPbeams(UBound(gOpt.IPbeams)).Use=True
		              gopt.Num_Fields=gopt.IPbeams(UBound(gOpt.IPbeams)).PB_Index
		              Window_EMET_Run.Update_PB_Use
		              
		            end
		          end
		        end
		        
		        
		      end
		    end
		  END
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_sajawDVH_Input()
		  //----------------------------------
		  //
		  //----------------------------------
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  Dim w as Single
		  Dim temp as String
		  //----------------------------------
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child("sajawDVH_Input")
		  
		  if f.Exists Then
		    ts=f.OpenAsTextFile
		    if ts<> nil Then
		      w=val(ts.ReadLine)
		      Window_EMET_Run.EditField_Jaws_Iterations.Text=Format(w,"#")
		      
		      w=val(ts.ReadLine)
		      //Window_EMET_Run.EditField_Jaw_DVHBin.Text=str(w)
		      
		      temp=ts.ReadLine
		      if InStr(temp,"yes")>0 Then
		        Window_EMET_Run.CheckBox_WriteDoseJaw.Value=True
		      else
		        Window_EMET_Run.CheckBox_WriteDoseJaw.Value=False
		      end
		      temp=ts.ReadLine
		      Window_EMET_Run.EditField_Jaw_Dname.Text=temp
		      temp=ts.ReadLine
		      Weight_Range=val(NthField(temp,",",1))
		      Jaw_Range=val(NthField(temp,",",2))
		      RateGD=val(NthField(temp,",",3))
		      RatePD=val(NthField(temp,",",4))
		      Window_EMET_Run.EditField_Jaw_RangeW.Text=Format(Weight_Range,"-0.0#######")
		      Window_EMET_Run.EditField_Jaw_RangeO.Text=Format(Jaw_Range,"-0.0#######")
		      Window_EMET_Run.EditField_Jaw_RateGD.Text=Format(RateGD,"-0.0#######")
		      Window_EMET_Run.EditField_Jaw_RatePD.Text=Format(RatePD,"-0.0#######")
		      
		      temp=ts.ReadLine
		      w=val(Temp)
		      Window_EMET_Run.EditField_Jaw_MinWeight.Text=str(w)
		      
		      temp=ts.ReadLine
		      w=val(Temp)
		      Window_EMET_Run.EditField_jaw_MaxWeight.Text=str(w)
		      
		      temp=ts.ReadLine
		      w=val(Temp)
		      if w=1 Then
		        Window_EMET_Run.CheckBox_NormDDJaw.Value=True
		      else
		        Window_EMET_Run.CheckBox_NormDDJaw.Value=False
		      end
		      
		      temp=ts.ReadLine
		      w=val(Temp)
		      Window_EMET_Run.EditField_Jaw_StochasticP.Text=str(w)
		      
		      temp=ts.ReadLine
		      w=val(Temp)
		      if w=1 Then
		        Window_EMET_Run.RadioButton_Jaw_W_Grad.Value=True
		      elseif w=2 Then
		        Window_EMET_Run.RadioButton_Jaw_W_SA.Value=True
		      elseif w=3 Then
		        Window_EMET_Run.RadioButton_Jaw_W_Jaws.Value=True
		      elseif w=4 Then
		        Window_EMET_Run.RadioButton_Jaw_W_NLO.Value=True
		      elseif w=5 Then
		        Window_EMET_Run.RadioButton_Jaw_W_Auto.Value=True
		      elseif w=0 Then
		        Window_EMET_Run.RadioButton_Jaw_W_None.Value=True
		      end
		      
		      temp=ts.ReadLine
		      Window_EMET_Run.EditField_Jaw_Opt_IterationsJaw.Text=Trim(temp)
		      MoveBeamInt=val(temp)
		      
		      
		      temp=ts.ReadLine
		      Window_EMET_Run.EditField_Jaw_MinFieldRange.Text=Trim(temp)
		      MinFieldRange=val(temp)
		      
		      
		      temp=ts.ReadLine
		      Window_EMET_Run.EditField_Jaw_MinFieldSize.Text=Trim(temp)
		      MinFieldSize=val(temp)
		      
		      
		      temp=ts.ReadLine
		      Window_EMET_Run.EditField_Jaw_MinFieldMove.Text=Trim(temp)
		      MinFieldMove=val(temp)
		      
		      temp=ts.ReadLine
		      Caluclation_Type=val(Temp)
		      if Caluclation_Type=0 Then
		        Window_EMET_Run.RadioButton_JAW_VMC1.Value=True
		      elseif Caluclation_Type=1 Then
		        Window_EMET_Run.RadioButton_JAW_VMC2.Value=True
		      elseif Caluclation_Type=2 Then
		        Window_EMET_Run.RadioButton_JAW_DOS1.Value=True
		      elseif Caluclation_Type=3 Then
		        Window_EMET_Run.RadioButton_JAW_DOS2.Value=True
		      elseif Caluclation_Type=4 Then
		        Window_EMET_Run.RadioButton_JAW_DOS3.Value=True
		      end
		      
		      temp=ts.ReadLine
		      NewWeights=val(Temp)
		      if NewWeights=1 Then
		        Window_EMET_Run.RadioButton_Jaw_Polar.Value=True
		      elseif NewWeights=2 Then
		        Window_EMET_Run.RadioButton_Jaw_Polar_One.Value=True
		      elseif NewWeights=3 Then
		        Window_EMET_Run.RadioButton_Jaw_Gaussian.Value=True
		      elseif NewWeights=4 Then
		        Window_EMET_Run.RadioButton_JAW_Uniform.Value=True
		      end
		      
		      temp=ts.ReadLine
		      FLEC_Size=val(Temp)
		      Window_EMET_Run.EditField_Jaw_FLECLimit.Text=Trim(temp)
		      ts.Close
		    end
		  end
		  Window_EMET_Run.CheckBox_Jaws_AutoRun.Value=Auto_Run
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Run()
		  Delete_JAwDVH_files
		  
		  
		  gRTOG.Plan(Plan_Index).Write_McGill_Beam
		  PW_Show=false
		  Run_Thread=new Class_MERT_JAWSA_Run
		  Running=True
		  gopt.Write_Fields
		  Write_sajawDVH_Input
		  Window_EMET_Run.EditField_Jaw_Score.Text=""
		  Inital_Score=Score
		  Window_EMET_Run.EditField_Jaw_Inital_Score.Text=Format(Inital_Score,"0.000000e")
		  Run_Thread.Run
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_sajawDVH_Input()
		  //----------------------------------
		  //
		  //----------------------------------
		  Dim f as FolderItem
		  Dim ts as TextOutputStream
		  Dim tss as TextInputStream
		  Dim w as Single
		  Dim temp as Int64
		  //----------------------------------
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child("sajawDVH_Input")
		  
		  if f.Exists Then
		    f.Delete
		  end
		  
		  ts=f.CreateTextFile
		  if ts=nil Then
		    Return
		  end
		  
		  ts.Delimiter=EndOfLine.UNIX
		  
		  temp=val(Window_EMET_Run.EditField_Jaws_Iterations.Text)
		  ts.WriteLine Format(temp,"#")
		  
		  ts.WriteLine Format(gOpt.dvh_bin,"#")
		  
		  if Window_EMET_Run.CheckBox_WriteDoseJaw.Value Then
		    ts.WriteLine "yes"
		  else
		    ts.WriteLine "no"
		  end
		  ts.WriteLine Trim(Window_EMET_Run.EditField_jaw_Dname.Text)
		  
		  
		  ts.WriteLine Format(Weight_Range,"#.####e")+", "+ Format(Jaw_Range,"#.####e")+", "+ Format(RateGD,"#.####e")+", "+ Format(RatePD,"#.####e")
		  
		  w=val(Window_EMET_Run.EditField_jaw_MinWeight.Text)
		  ts.WriteLine Format(w,"#.####e")
		  
		  w=val(Window_EMET_Run.EditField_jaw_MaxWeight.Text)
		  ts.WriteLine Format(w,"#.####e")
		  
		  
		  if Window_EMET_Run.CheckBox_NormDDJaw.Value Then
		    ts.WriteLine "1"
		  else
		    ts.WriteLine "0"
		  end
		  
		  StochasticP=val(Window_EMET_Run.EditField_jaw_StochasticP.Text)
		  ts.WriteLine Format(StochasticP,"#.####e")
		  
		  if Window_EMET_Run.RadioButton_Jaw_W_Grad.Value Then
		    ts.WriteLine "1"
		  elseif Window_EMET_Run.RadioButton_Jaw_W_SA.Value Then
		    ts.WriteLine "2"
		  elseif Window_EMET_Run.RadioButton_Jaw_W_Jaws.value Then
		    ts.WriteLine "3"
		  elseif Window_EMET_Run.RadioButton_Jaw_W_NLO.value Then
		    ts.WriteLine "4"
		  elseif Window_EMET_Run.RadioButton_Jaw_W_Auto.value Then
		    ts.WriteLine "5"
		  elseif Window_EMET_Run.RadioButton_Jaw_W_None.Value Then
		    ts.WriteLine "0"
		  end
		  
		  ts.WriteLine Format(MoveBeamInt,"#")
		  ts.WriteLine Trim(Window_EMET_Run.EditField_Jaw_MinFieldRange.Text)
		  ts.WriteLine Trim(Window_EMET_Run.EditField_Jaw_MinFieldSize.Text)
		  ts.WriteLine Trim(Window_EMET_Run.EditField_Jaw_MinFieldMove.Text)
		  ts.WriteLine Format(Caluclation_Type,"#")
		  
		  
		  
		  if Window_EMET_Run.RadioButton_Jaw_Polar.Value Then
		    ts.WriteLine "1"
		  elseif Window_EMET_Run.RadioButton_Jaw_Polar_One.Value Then
		    ts.WriteLine "2"
		  elseif Window_EMET_Run.RadioButton_Jaw_Gaussian.value Then
		    ts.WriteLine "3"
		  elseif Window_EMET_Run.RadioButton_JAW_Uniform.Value Then
		    ts.WriteLine "4"
		  end
		  
		  ts.WriteLine Format(FLEC_Size,"#.###")
		  
		  ts.Close
		  
		  //Open and read file
		  tss=tss.Open(f)
		  
		  if tss<> nil Then
		    Input_String=tss.ReadAll
		  end
		  tss.Close
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Alpha As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Auto_Run As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		beam_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			// 0 VMC
			1 VMC-pshp
			2 DOS -mono
			3 DOS - pshp
		#tag EndNote
		Caluclation_Type As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		dmx_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		egsphant_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		FLEC_Size As Single = 8
	#tag EndProperty

	#tag Property, Flags = &h0
		Fluence_File As String
	#tag EndProperty

	#tag Property, Flags = &h0
		IBeam_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Inital_Score As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Input_String As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Jaw_Range As Single = 5
	#tag EndProperty

	#tag Property, Flags = &h0
		Max_W As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		MinFieldMove As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		MinFieldRange As Single = 0.1
	#tag EndProperty

	#tag Property, Flags = &h0
		MinFieldSize As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Min_Range As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Min_W As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		MoveBeamInt As Integer = 100
	#tag EndProperty

	#tag Property, Flags = &h0
		NewWeights As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		OutputName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RateGD As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		RatePD As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Running As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Run_Thread As Class_MERT_JAWSA_Run
	#tag EndProperty

	#tag Property, Flags = &h0
		S As Class_Optimization_ORGANARRAY
	#tag EndProperty

	#tag Property, Flags = &h0
		Score As Double = 10000
	#tag EndProperty

	#tag Property, Flags = &h0
		Start_Sec As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		StochasticP As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Time As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Waiting As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Weight_Range As Single
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
			Name="Auto_Run"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="beam_index"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Caluclation_Type"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dmx_index"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="egsphant_index"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FLEC_Size"
			Visible=false
			Group="Behavior"
			InitialValue="8"
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
			Name="IBeam_index"
			Visible=false
			Group="Behavior"
			InitialValue="0"
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
			Name="Inital_Score"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Input_String"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Jaw_Range"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
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
			Name="MinFieldMove"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinFieldRange"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinFieldSize"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Min_Range"
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
			Name="MoveBeamInt"
			Visible=false
			Group="Behavior"
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
			Name="NewWeights"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
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
			Name="RateGD"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RatePD"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
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
			Name="Score"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Start_Sec"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StochasticP"
			Visible=false
			Group="Behavior"
			InitialValue="0"
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
			Name="Waiting"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Weight_Range"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
