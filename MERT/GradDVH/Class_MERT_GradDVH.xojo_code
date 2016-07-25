#tag Class
Protected Class Class_MERT_GradDVH
	#tag Method, Flags = &h0
		Sub Auto_Run()
		  if Running=False Then
		    
		    if Score<Score_Inti Then
		      Window_EMET_Run.RadioButton_W_Grad_Grad.Value =True
		      Run
		      
		    elseif gOpt.JAW.Running=False and Score>gOpt.JAW.Score Then
		      Window_EMET_Run.RadioButton_W_Grad_Jaw.Value =True
		      Run
		      
		      
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Delete_GradDVH_files()
		  //----------------------------------
		  //----------------------------------
		  Dim f,g as FolderItem
		  Dim i as Integer
		  //----------------------------------
		  
		  f=gRTOG.Plan(Window_EMET_Run.Open_Plan_Index).Path
		  g=f.Child("Fluence-GradDVH.dat")
		  if g.Exists Then
		    g.Delete
		  end
		  g=f.Child("Grad-Out.dat")
		  if g.Exists Then
		    g.Delete
		  end
		  g=f.Child("GradDVH_Out")
		  if g.Exists Then
		    g.Delete
		  end
		  g=f.Child("Target1DVH1.dat")
		  if g.Exists Then
		    g.Delete
		  end
		  
		  for i=0 to UBound(gRTOG.Structures)
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
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Open()
		  '//------------------------------------------
		  '//
		  '// Initialize GradDVH window and parameters
		  '//
		  '//------------------------------------------
		  'Dim i as Integer
		  '
		  'GradOarray=new Class_Optimization_ORGANARRAY
		  'redim GradOarray.Organ(UBound(gRTOG.Structures))
		  'for i=0 to UBound(gRTOG.Structures)
		  'GradOarray.Organ(i)=new Class_Optimization_ORGANDOSE
		  'GradOarray.organ(i).OrganID=i
		  'GradOarray.Organ(i).Organ_Name=gRTOG.Structures(i).Structure_Name
		  'GradOarray.organ(i).DVH = new Class_DVH_One
		  'GradOarray.organ(i).DVH.stru_color=gRTOG.Structures(i).scolor
		  'GradOarray.organ(i).DVH.struc_names=gRTOG.Structures(i).Structure_Name
		  'GradOarray.organ(i).DVH.dvh_bins=100
		  'GradOarray.organ(i).Voxel_REs=128
		  'redim GradOarray.organ(i).DVH.dVH(100)
		  'next
		  '
		  'Read_GradDVH_Input
		  'Read_Fluence_Grad
		  'Read_GradDVH_Out
		  '
		  '// If we are still Running but time is zero, then we know it's not running
		  'if Running and Time="0:00.00"  Then
		  'Running=False
		  'end
		  '
		  'Window_EMET_Run.Update_GradDVH_Status
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_Fluence_Grad()
		  //--------------------------------------------
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  Dim ss,name as String
		  Dim i as Integer
		  Dim tt as Thread_Optimization
		  //--------------------------------------------
		  
		  tt=gOpt
		  f=gRTOG.Plan(Window_EMET_Run.Open_Plan_Index).Path
		  f=f.Child("Fluence-GradDVH.dat")
		  if f.Exists = False Then
		    Return
		  end
		  ts=f.OpenAsTextFile
		  if ts=nil Then
		    Return
		  end
		  
		  // Write Fluence file, then open again for reading 
		  GradFluence_File=ts.ReadAll
		  ts.Close
		  ts=f.OpenAsTextFile
		  if ts=nil Then
		    Return
		  end
		  
		  ss=ts.ReadLine
		  score=val(NthField(ss,":",2))
		  
		  if score<=gOpt.sa.Score and score<=gOpt.JAW.Score and score<=gOpt.NLO.Score Then
		    //Window_EMET_Run.Listbox_GradDVH_Status.CellBackgrountPait
		    
		    //EditField_Grad_Score.TextColor=RGB(0,255,0)
		  else
		    //Window_EMET_Run.EditField_Grad_Score.TextColor=RGB(255,0,0)
		  end
		  
		  
		  ss=ts.ReadLine
		  ss=ts.ReadLine
		  ss=ts.ReadLine
		  ss=ts.ReadLine
		  
		  While ts.EOF=False
		    ss=ts.ReadLine
		    name=Trim(NthField(ss," ",2))
		    for i=0 to UBound(tt.IPbeams)
		      if tt.IPbeams(i).FIdID_Name=name Then
		        tt.IPbeams(i).Weight_Grad=val(NthField(ss," ",3))
		        // Update Number of MUs
		        if tt.IPbeams(i).RTOG_Plan<= UBound(gRTOG.Plan) and tt.IPbeams(i).RTOG_Plan>-1Then
		          if tt.IPbeams(i).RTOG_Beam>-1 and tt.IPbeams(i).RTOG_Beam <= UBound(gRTOG.Plan(tt.IPbeams(i).RTOG_Plan).Beam) Then
		            tt.IPbeams(i).MUs_Grad=gRTOG.Plan(tt.IPbeams(i).RTOG_Plan).Beam(tt.IPbeams(i).RTOG_Beam).MU*tt.IPbeams(i).Weight_Grad
		          end
		        end
		      end
		    next
		  Wend
		  ts.Close
		  Window_EMET_Run.Update_Listbox_BEAMS
		  Window_EMET_Run.Update_GradDVH_Status
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_GradDVH_Input()
		  //----------------------------------
		  //
		  //----------------------------------
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  Dim w as Single
		  Dim temp as String
		  //----------------------------------
		  
		  f=gRTOG.Plan(Window_EMET_Run.Open_Plan_Index).Path
		  f=f.Child("GradDVH_Input")
		  if f.Exists Then
		    
		    ts=f.OpenAsTextFile
		    if ts<> nil Then
		      GradDVH_InputStr=ts.ReadAll
		      ts.Close
		    else
		      Return
		    end
		    
		    ts=f.OpenAsTextFile
		    if ts<> nil Then
		      Iterations=val(ts.ReadLine)
		      dvh_bin=val(ts.ReadLine)
		      
		      //Num Structures
		      w=val(ts.ReadLine)
		      
		      //Conf dose
		      w=val(ts.ReadLine)
		      
		      temp=ts.ReadLine
		      if InStr(temp,"yes")>0 Then
		        WriteDose=True
		      else
		        WriteDose=False
		      end
		      
		      temp=ts.ReadLine
		      DoseOutputName=Trim(temp)
		      
		      temp=ts.ReadLine
		      WeightType=val(temp)
		      
		      temp=ts.ReadLine
		      Min_W=val(Temp)
		      
		      temp=ts.ReadLine
		      Max_W=val(Temp)
		      
		      temp=ts.ReadLine
		      Init_Weight=val(Temp)
		      
		      temp=ts.ReadLine
		      w=val(Temp)
		      if w=1 Then
		        NormDD=True
		      else
		        normDD=False
		      end
		      
		      temp=ts.ReadLine
		      Grow=val(temp)
		      
		      temp=ts.ReadLine
		      Shrink=val(temp)
		      
		      temp=ts.ReadLine
		      stepsize=val(Temp)
		      
		      ts.Close
		    end
		  end
		  Update_GradDVH_Input_Window_Run
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_GradDVH_Out()
		  //--------------------------------
		  // Read the GradDVH_Out file
		  //
		  //--------------------------------
		  Dim hours as Integer
		  Dim ts as TextInputStream
		  Dim f as FolderItem
		  Dim oneline as String
		  Dim minsR as Single
		  //--------------------------------
		  
		  if Running Then
		    Read_Fluence_Grad
		  end
		  
		  if Running Then
		    Read_Grad_Out
		  end
		  
		  
		  if Read_Output=False or Running=False Then
		    f=gRTOG.Plan(Window_EMET_Run.Open_Plan_Index).Path
		    f=f.Child("GradDVH_Out")
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
		    oneline=ts.ReadAll
		    Grad_OutFile=oneline
		    ts.Close
		    if InStr(oneline,"GradDVH finished")>0 Then
		      if oneline<>Window_EMET_Run.EditField_Grad_Output.Text Then
		        Window_EMET_Run.EditField_Grad_Output.Text=oneline
		      end
		      Runtime=(val(NthField(oneline,"Execution time (min) :",2)))
		      hours=Floor(Runtime/60)
		      minsR=Runtime mod 60
		      Time=Format(hours,"00")+":"+Format(minsR,"00")
		      
		      Score_Inti=(val(NthField(oneline,"Initial Best Obj :",2)))
		      Running=False
		      Read_Output=True
		      
		      if GradOArray<> nil Then
		        GradOArray.Read_Results(oneline)
		      end
		      
		    elseif Window_EMET_Run.EditField_Grad_Output.Text ="" Then
		      Window_EMET_Run.EditField_Grad_Output.Text=oneline
		    end
		  end
		  
		  if Running Then
		    Run_Status
		  end
		  
		  
		  Window_EMET_Run.Update_GradDVH_Status
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_Grad_Out()
		  //--------------------------------
		  // Read the Grad-Out.dat file
		  //
		  //--------------------------------
		  Dim ts as TextInputStream
		  Dim f as FolderItem
		  Dim oneline as String
		  //--------------------------------
		  
		  f=gRTOG.Plan(Window_EMET_Run.Open_Plan_Index).Path
		  f=f.Child("Grad-Out.dat")
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
		  oneline=ts.ReadAll
		  ts.Close
		  if oneline<>Window_EMET_Run.EditField_Grad_Output.Text Then
		    Window_EMET_Run.EditField_Grad_Output.Text=oneline
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Run()
		  //------------------------------------
		  //
		  //
		  //
		  //------------------------------------
		  Dim f,g as FolderItem
		  Dim ts as TextOutputStream
		  Dim bb as Boolean
		  //------------------------------------
		  Delete_GradDVH_files
		  
		  dvh_bin=gOpt.dvh_bin
		  bb=Write_GradDVH_Input
		  if bb=False Then
		    MsgBox "Could not Write input file"
		    Return
		  end
		  
		  gOpt.Write_Fields
		  
		  Window_EMET_Run.EditField_Grad_Output.Text=""
		  app.TodayDate=new Date
		  Submit_Date=app.TodayDate.AbbreviatedDate +" "+App.TodayDate.ShortTime
		  
		  
		  
		  Read_Output=False
		  
		  f=gRTOG.Plan(Window_EMET_Run.Open_Plan_Index).Path
		  g=gRTOG.Plan(Window_EMET_Run.Open_Plan_Index).Path
		  
		  g=g.Child("GradRun")
		  ts=g.CreateTextFile
		  if ts=nil Then
		    MsgBox "Could not Write GradRun file"
		    
		    Return
		  end
		  
		  ts.Write gOpt.path+"/bin/gradDVH < gradDVH_input > GradDVH_Out"+chr(10)
		  ts.Close
		  g.Permissions=777
		  
		  
		  GradShell = new Shell_GradDVH
		  GradShell.Mode=2
		  GradShell.Execute "bash"
		  
		  
		  Running=True
		  Score_Previous=Score
		  Score_Inti=0
		  Score=0
		  
		  
		  // Update the status sheet 
		  Window_EMET_Run.Update_GradDVH_Status
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Run_Status()
		  //--------------------------------------
		  // Check on the status of gradDVH on system
		  //
		  //--------------------------------------
		  Dim f as FolderItem
		  Dim ss as Shell
		  Dim i as Integer
		  Dim ti,output,lin(-1),tt(-1) as String
		  //--------------------------------------
		  
		  
		  ss= new Shell
		  ss.Mode=0
		  ss.Execute "ps -U andrew | grep gradDVH"
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
		Sub Update_GradDVH_Input_Window_Run()
		  //----------------------------------
		  //
		  //----------------------------------
		  
		  
		  
		  if WeightType=1 Then
		    Window_EMET_Run.RadioButton_W_Grad_Grad.Value =True
		  elseif WeightType=2 Then
		    Window_EMET_Run.RadioButton_W_Grad_SA.value  =True
		  elseif WeightType=3 Then
		    Window_EMET_Run.RadioButton_W_Grad_Jaw.value  =True
		  elseif WeightType=4 Then
		    Window_EMET_Run.RadioButton_W_Grad_NLO.value  =True
		  elseif WeightType=5 Then
		    Window_EMET_Run.RadioButton_W_Grad_Auto.value  =True
		  elseif WeightType=0 Then
		    Window_EMET_Run.RadioButton_W_Grad_Value.value  =True
		  end
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Write_GradDVH_Input() As Boolean
		  '//----------------------------------
		  '// Make Grad Input text file
		  '//----------------------------------
		  'Dim f as FolderItem
		  'Dim ts as TextOutputStream
		  'Dim tin as TextInputStream
		  'Dim filestr as String
		  '//----------------------------------
		  '
		  'f=gRTOG.Plan(Window_EMET_Run.Open_Plan_Index).Path
		  'f=f.Child("GradDVH_Input")
		  'if f.Exists Then
		  'f.Delete
		  'end
		  '
		  'ts=f.CreateTextFile
		  'if ts=nil Then
		  'Return False
		  'end
		  'ts.Delimiter=EndOfLine.UNIX
		  '
		  'ts.WriteLine Format(Iterations,"#")
		  'ts.WriteLine str(dvh_bin)
		  'ts.WriteLine str(UBound(gRTOG.Structures)+1)
		  'ts.WriteLine Trim(Window_EMET_Run.EditField_Conf_Dose.Text)
		  'if WriteDose Then
		  'ts.WriteLine "yes"
		  'else
		  'ts.WriteLine "no"
		  'end
		  '
		  'if len(DoseOutputName)=0 Then
		  'DoseOutputName="MERT"
		  'end
		  '
		  'ts.WriteLine Trim(DoseOutputName)
		  'ts.WriteLine Format(WeightType,"#")
		  '
		  'ts.WriteLine Format(Min_W,"#.####e")
		  'ts.WriteLine Format(Max_W,"#.####e")
		  'ts.WriteLine Format(Init_Weight,"#.####e")
		  '
		  'if NormDD Then
		  'ts.WriteLine "1"
		  'else
		  'ts.WriteLine "0"
		  'end
		  '
		  'ts.WriteLine Format(Grow,"#.####e")
		  'ts.WriteLine Format(Shrink,"#.####e")
		  '
		  '// If we are importing grad weights from previous runs
		  'ts.WriteLine Format(stepsize,"#.######e")
		  'ts.Close
		  '
		  '
		  '//------------------ Copy file to DB
		  'tin=f.OpenAsTextFile
		  'GradDVH_InputStr=tin.ReadAll
		  'tin.Close
		  '
		  'Return True
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Alpha As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Auto_Run As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		DoseOutputName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		dvh_bin As Integer = 50
	#tag EndProperty

	#tag Property, Flags = &h0
		Finished As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		GradDVH_InputStr As String
	#tag EndProperty

	#tag Property, Flags = &h0
		GradFluence_File As String
	#tag EndProperty

	#tag Property, Flags = &h0
		GradOArray As Class_Optimization_ORGANARRAY
	#tag EndProperty

	#tag Property, Flags = &h0
		GradShell As Shell_GradDVH
	#tag EndProperty

	#tag Property, Flags = &h0
		Grad_OutFile As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Grow As Single = 5
	#tag EndProperty

	#tag Property, Flags = &h0
		Init_Weight As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Iterations As Int64 = 10000
	#tag EndProperty

	#tag Property, Flags = &h0
		Max_W As Single = 500
	#tag EndProperty

	#tag Property, Flags = &h0
		Min_W As Single = 0.001
	#tag EndProperty

	#tag Property, Flags = &h0
		NormDD As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		Range As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Read_Output As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Running As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h0
		Runtime As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Score As Single = 10000
	#tag EndProperty

	#tag Property, Flags = &h0
		Score_Inti As Double = 5
	#tag EndProperty

	#tag Property, Flags = &h0
		Score_Previous As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Shrink As Single = .95
	#tag EndProperty

	#tag Property, Flags = &h0
		stepsize As Single = 5
	#tag EndProperty

	#tag Property, Flags = &h0
		Submit_Date As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Time As String
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			0
			Value
			
			1 
			Grad
			
			2 
			SA.  
			
			3 
			Jaw
			
			4
			NLO
			
			5
			Auto
			
			
		#tag EndNote
		WeightType As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		WriteDose As Boolean = false
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Auto_Run"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoseOutputName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dvh_bin"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Finished"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GradDVH_InputStr"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GradFluence_File"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Grad_OutFile"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Grow"
			Group="Behavior"
			InitialValue="5"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Init_Weight"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Iterations"
			Group="Behavior"
			InitialValue="10000"
			Type="Int64"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Max_W"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Min_W"
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
			Name="NormDD"
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Range"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Read_Output"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Running"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Runtime"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Score"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Score_Inti"
			Group="Behavior"
			InitialValue="5"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Score_Previous"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Shrink"
			Group="Behavior"
			InitialValue=".95"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="stepsize"
			Group="Behavior"
			InitialValue="5"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Submit_Date"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Time"
			Group="Behavior"
			Type="String"
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
			Name="WeightType"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WriteDose"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
