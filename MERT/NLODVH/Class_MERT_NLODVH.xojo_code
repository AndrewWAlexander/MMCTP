#tag Class
Protected Class Class_MERT_NLODVH
	#tag Method, Flags = &h0
		Sub Auto_Run()
		  'if Running=False Then
		  '
		  'if Score<Score_Initial Then
		  'Window_EMET_Run.RadioButton_W_Grad_Grad.Value =True
		  'Run
		  '
		  'elseif gOpt.JAW.Running=False and Score>gOpt.JAW.Score Then
		  'Window_EMET_Run.RadioButton_W_Grad_Jaw.Value =True
		  'Run
		  '
		  '
		  'end
		  'end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Delete_NLO_files()
		  'Dim f,g as FolderItem
		  'Dim i as Integer
		  '
		  '
		  'f=gRTOG.Plan(Window_EMET_Run.Open_Plan_Index).Path
		  'g=f.Child("Fluence-NLO.dat")
		  'if g.Exists Then
		  'g.Delete
		  'end
		  'g=f.Child("NLO-Out.dat")
		  'if g.Exists Then
		  'g.Delete
		  'end
		  'g=f.Child("NLO_Out")
		  'if g.Exists Then
		  'g.Delete
		  'end
		  'g=f.Child("Target1DVH1.dat")
		  'if g.Exists Then
		  'g.Delete
		  'end
		  '
		  'for i=0 to UBound(gRTOG.Structures)
		  'g=f.Child("Organ"+str(i+1)+"DVH1.dat")
		  'if g.Exists Then
		  'g.Delete
		  'end
		  'g=f.Child("Organ"+str(i+1)+"DVH1")
		  'if g.Exists Then
		  'g.Delete
		  'end
		  'next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Open()
		  'Dim i as Integer
		  '
		  '
		  'S=new Class_Optimization_ORGANARRAY
		  'redim S.Organ(UBound(gRTOG.Structures))
		  'for i=0 to UBound(gRTOG.Structures)
		  'S.Organ(i)=new Class_Optimization_ORGANDOSE
		  'S.organ(i).OrganID=i
		  'S.Organ(i).Organ_Name=gRTOG.Structures(i).Structure_Name
		  'S.organ(i).DVH = new Class_DVH_One
		  'S.organ(i).DVH.stru_color=gRTOG.Structures(i).scolor
		  'S.organ(i).DVH.struc_names=gRTOG.Structures(i).Structure_Name
		  'S.organ(i).DVH.dvh_bins=100
		  'S.organ(i).Voxel_REs=128
		  'redim S.organ(i).DVH.dVH(100)
		  'next
		  '
		  '
		  '
		  '
		  'Read_Output=False
		  'Read_NLO_Out
		  'Read_NLO_Input
		  'Read_Fluence_NLO
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_Fluence_NLO()
		  '//--------------------------------------------
		  'Dim f as FolderItem
		  'Dim ts as TextInputStream
		  'Dim ss,name as String
		  'Dim i as Integer
		  'Dim tt as Thread_Optimization
		  '//--------------------------------------------
		  '
		  'tt=gOpt
		  'f=gRTOG.Plan(Window_EMET_Run.Open_Plan_Index).Path
		  'f=f.Child("Fluence-NLO.dat")
		  'if f.Exists = False Then
		  'Return
		  'end
		  'ts=f.OpenAsTextFile
		  'if ts=nil Then
		  'Return
		  'end
		  '
		  '// Write Fluence file, then open again for reading 
		  'NLOFluence_File=ts.ReadAll
		  'ts.Close
		  'ts=f.OpenAsTextFile
		  'if ts=nil Then
		  'Return
		  'end
		  '
		  '
		  '
		  'ss=ts.ReadLine
		  'score=val(NthField(ss,":",2))
		  '
		  '
		  'if score<=gOpt.sa.Score and score<=gOpt.JAW.Score and score<=gOpt.Grad.Score Then
		  '//Window_EMET_Run.EditField_NLO_Score.TextColor=RGB(0,255,0)
		  'else
		  '//Window_EMET_Run.EditField_NLO_Score.TextColor=RGB(255,0,0)
		  'end
		  '
		  '
		  'ss=ts.ReadLine
		  'ss=ts.ReadLine
		  'ss=ts.ReadLine
		  'ss=ts.ReadLine
		  '
		  'While ts.EOF=False
		  'ss=ts.ReadLine
		  'name=Trim(NthField(ss," ",2))
		  'for i=0 to UBound(tt.IPbeams)
		  'if tt.IPbeams(i).FIdID_Name=name Then
		  'tt.IPbeams(i).Weight_NLO=val(NthField(ss," ",3))
		  '
		  ''// Update Number of MUs
		  ''if tt.IPbeams(i).RTOG_Plan<= UBound(gRTOG.Plan) and tt.IPbeams(i).RTOG_Plan>-1Then
		  ''if tt.IPbeams(i).RTOG_Beam>-1 and tt.IPbeams(i).RTOG_Beam <= UBound(gRTOG.Plan(tt.IPbeams(i).RTOG_Plan).Beam) Then
		  ''tt.IPbeams(i).MUs_Grad=gRTOG.Plan(tt.IPbeams(i).RTOG_Plan).Beam(tt.IPbeams(i).RTOG_Beam).MU*tt.IPbeams(i).Weight_Grad
		  ''end'end
		  '
		  '
		  'end
		  'next
		  'Wend
		  'ts.Close
		  'Window_EMET_Run.Update_Listbox_BEAMS
		  'Window_EMET_Run.Update_NLO_Status
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_NLO_Input()
		  '//----------------------------------
		  '//
		  '//----------------------------------
		  'Dim f as FolderItem
		  'Dim ts as TextInputStream
		  'Dim w as Single
		  'Dim temp as String
		  '//----------------------------------
		  '
		  'f=gRTOG.Plan(Window_EMET_Run.Open_Plan_Index).Path
		  'f=f.Child("NLO_Input")
		  'if f.Exists Then
		  '
		  'ts=f.OpenAsTextFile
		  'if ts<> nil Then
		  'NLO_InputStr=ts.ReadAll
		  'ts.Close
		  'else
		  'Return
		  'end
		  '
		  'ts=f.OpenAsTextFile
		  'if ts<> nil Then
		  'Iterations=val(ts.ReadLine)
		  'dvh_bin=val(ts.ReadLine)
		  '
		  '//Num Structures
		  'w=val(ts.ReadLine)
		  '
		  '//Conf dose
		  'w=val(ts.ReadLine)
		  '
		  'temp=ts.ReadLine
		  'if InStr(temp,"yes")>0 Then
		  'WriteDose=True
		  'else
		  'WriteDose=False
		  'end
		  '
		  'temp=ts.ReadLine
		  'OutputName=Trim(temp)
		  '
		  'temp=ts.ReadLine
		  'Min_W=val(Temp)
		  '
		  'temp=ts.ReadLine
		  'Max_W=val(Temp)
		  '
		  'temp=ts.ReadLine
		  'Init_Weight=val(Temp)
		  '
		  'temp=ts.ReadLine
		  'w=val(Temp)
		  'if w=1 Then
		  'NormDD=True
		  'else
		  'normDD=False
		  'end
		  '
		  'temp=ts.ReadLine
		  'Algorithm=val(temp)
		  '
		  'temp=ts.ReadLine
		  'Previous_WeightType=val(Temp)
		  '
		  'ts.Close
		  'end
		  'end
		  'Update_NLO_Input_Window_Run
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_NLO_Out()
		  '//--------------------------------
		  '//Method to read the output from NLO program
		  '//
		  '//
		  '//--------------------------------
		  'Dim i as Integer
		  'Dim ts as TextInputStream
		  'Dim f as FolderItem
		  'Dim oneline as String
		  '//--------------------------------
		  '
		  'if Running Then
		  'Read_Fluence_NLO
		  'end
		  '
		  'if Running Then
		  'Run_Status
		  'end
		  '
		  '
		  '//Window_EMET_Run.StaticText_Grad_RunTime.Text="Time : "+Time
		  '//Window_EMET_Run.ProgressWheel_Grad.Visible=Running
		  '
		  'if Running  Then
		  'f=gRTOG.Plan(Window_EMET_Run.Open_Plan_Index).Path
		  'f=f.Child("NLO-Out.dat")
		  'if f=nil Then
		  'Return
		  'end
		  'if f.Exists=False Then
		  'Return
		  'end
		  'ts=f.OpenAsTextFile
		  'if ts=nil Then
		  'Return
		  'end
		  'oneline=ts.ReadAll
		  'ts.Close
		  'if oneline<>Window_EMET_Run.EditField_NLO_Output.Text Then
		  'Window_EMET_Run.EditField_NLO_Output.Text=oneline
		  'end
		  'end
		  '
		  '
		  'if Read_Output=False or Running=False Then
		  'f=gRTOG.Plan(Window_EMET_Run.Open_Plan_Index).Path
		  'f=f.Child("NLO_Out")
		  'if f=nil Then
		  'Return
		  'end
		  'if f.Exists=False Then
		  'Return
		  'end
		  'ts=f.OpenAsTextFile
		  'if ts=nil Then
		  'Return
		  'end
		  'oneline=ts.ReadAll
		  'NLO_OutFile=oneline
		  'ts.Close
		  'if InStr(oneline,"NLO finished")>0 Then
		  'if oneline<>Window_EMET_Run.EditField_NLO_Output.Text Then
		  'Window_EMET_Run.EditField_NLO_Output.Text=oneline
		  'end
		  'Runtime=val(NthField(oneline,"Execution time (min) :",2))
		  'Score_Initial=val(NthField(oneline,"Initial Best Obj :",2))
		  '
		  'Running=False
		  'Read_Output=True
		  'S.Read_Results(oneline)
		  'elseif Window_EMET_Run.EditField_NLO_Output.Text ="" Then
		  'Window_EMET_Run.EditField_NLO_Output.Text=oneline
		  'end
		  '
		  '
		  '
		  'end
		  'Window_EMET_Run.Update_NLO_Status
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Run()
		  '//------------------------------------
		  '// Run NLO code 
		  '//
		  '//
		  '//------------------------------------
		  'Dim f,g as FolderItem
		  'Dim ts as TextOutputStream
		  'Dim bb as Boolean
		  '//------------------------------------
		  'Delete_NLO_files
		  'bb=Write_NLO_Input
		  'if bb=False Then
		  'MsgBox "Could not write NLO input file!"
		  'Return
		  'end
		  '
		  'gOpt.Write_Fields
		  '
		  '
		  '//Set inital values
		  'Running=True
		  'Score_Previous=Score
		  'Window_EMET_Run.EditField_NLO_Output.Text=""
		  'Score_Initial=-1
		  'Time=""
		  'Score=-1
		  '
		  '
		  'Read_Output=False
		  'f=gRTOG.Plan(Window_EMET_Run.Open_Plan_Index).Path
		  'g=gRTOG.Plan(Window_EMET_Run.Open_Plan_Index).Path
		  '
		  'g=g.Child("NLORun")
		  'ts=g.CreateTextFile
		  'if ts=nil Then
		  'MsgBox "Could not write NLORun file"
		  'Return
		  'end
		  '
		  'ts.Write gOpt.path+"/bin/NLO < NLO_input > NLO_Out"+chr(10)
		  'ts.Close
		  'g.Permissions=777
		  '
		  '
		  'NLOShell = new Shell_NLODVH
		  'NLOShell.Mode=2
		  'NLOShell.Execute "bash"
		  '
		  '
		  'Window_EMET_Run.Update_NLO_Status
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Run_Status()
		  '//--------------------------------------
		  '//
		  '//
		  '//--------------------------------------
		  'Dim f as FolderItem
		  'Dim ss as Shell
		  'Dim i as Integer
		  'Dim ti,output,lin(-1),tt(-1) as String
		  '//--------------------------------------
		  '
		  '
		  'ss= new Shell
		  'ss.Mode=0
		  'ss.Execute "ps -U andrew | grep NLO"
		  'ss.Poll
		  'ss.Close
		  'output=ss.ReadAll
		  'lin=Split(output,Chr(10))
		  '
		  'if UBound(lin)>-1 Then
		  'output=lin(0)
		  'tt=Split(output," ")
		  '
		  'for i=UBound(tt) DownTo 0
		  'if Len(tt(i))=0 Then
		  'tt.Remove i
		  'end
		  'next
		  '
		  '
		  'if UBound(tt)>=3 Then
		  'ti=tt(3)
		  'Time=ti
		  'end
		  'end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_NLO_Input_Window_Run()
		  '//----------------------------------
		  '//
		  '//----------------------------------
		  '
		  'Window_EMET_Run.Update_NLO_Status
		  '
		  'if Previous_WeightType=0 Then
		  'Window_EMET_Run.RadioButton_NLO_W_UseValue.Value=True
		  '
		  'elseif Previous_WeightType=1 Then
		  'Window_EMET_Run.RadioButton_NLO_W_Grad.Value=True
		  '
		  'elseif Previous_WeightType=2 Then
		  'Window_EMET_Run.RadioButton_NLO_W_SA.Value=True
		  '
		  'elseif Previous_WeightType=3 Then
		  'Window_EMET_Run.RadioButton_NLO_W_JAW.Value=True
		  '
		  'elseif Previous_WeightType=4 Then
		  'Window_EMET_Run.RadioButton_NLO_W_NLO.Value=True
		  '
		  'elseif Previous_WeightType=5 Then
		  'Window_EMET_Run.RadioButton_NLO_W_AutoDetermine.Value=True
		  'end
		  '
		  '
		  '
		  'if Previous_WeightType=1 Then
		  'Window_EMET_Run.RadioButton_NLO_W_Grad.Value =True
		  'elseif Previous_WeightType=2 Then
		  'Window_EMET_Run.RadioButton_NLO_W_SA.value  =True
		  'elseif Previous_WeightType=3 Then
		  'Window_EMET_Run.RadioButton_NLO_W_Jaw.value  =True
		  'elseif Previous_WeightType=4 Then
		  'Window_EMET_Run.RadioButton_NLO_W_NLO.value  =True
		  'end
		  '
		  '
		  '
		  'if Algorithm=1 Then
		  'Window_EMET_Run.RadioButton_NLO_COBYLA.Value =True
		  'elseif Algorithm=2 Then
		  'Window_EMET_Run.RadioButton_NLO_BOBYQA.value  =True
		  'elseif Algorithm=3 Then
		  'Window_EMET_Run.RadioButton_NLO_PRAXIS.value  =True
		  'elseif Algorithm=4 Then
		  'Window_EMET_Run.RadioButton_NLO_Nelder_Mead_Simplex.value  =True
		  'elseif Algorithm=5 Then
		  'Window_EMET_Run.RadioButton_NLO_Sbplx.value  =True
		  'elseif Algorithm=6 Then
		  'Window_EMET_Run.RadioButton_NLO_MMA.value  =True
		  'elseif Algorithm=7 Then
		  'Window_EMET_Run.RadioButton_NLO_SLSQB.value  =True
		  'elseif Algorithm=8 Then
		  'Window_EMET_Run.RadioButton_NLO_NL_BFGS.value  =True
		  'elseif Algorithm=9 Then
		  'Window_EMET_Run.RadioButton_NLO_NL_TRUNC_NEWTON.value  =True
		  'elseif Algorithm=10 Then
		  'Window_EMET_Run.RadioButton_NLO_NL_SLMVM.value  =True
		  'end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Write_NLO_Input() As Boolean
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
		  'f=f.Child("NLO_Input")
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
		  'if len(OutputName)=0 Then
		  'OutputName="MERT"
		  'end
		  'ts.WriteLine Trim(OutputName)
		  '
		  '
		  'ts.WriteLine Format(Min_W,"#.####e")
		  'ts.WriteLine Format(Max_W,"#.####e")
		  'ts.WriteLine Format(Init_Weight,"#.####e")
		  '
		  '
		  'if NormDD Then
		  'ts.WriteLine "1"
		  'else
		  'ts.WriteLine "0"
		  'end
		  '
		  '
		  'ts.WriteLine Format(Algorithm,"#")
		  '
		  '// If we are importing grad weights from previous runs
		  'ts.WriteLine Str(Previous_WeightType)
		  'ts.Close
		  '
		  '
		  '//------------------ Copy file to DB
		  'tin=f.OpenAsTextFile
		  'NLO_InputStr=tin.ReadAll
		  'tin.Close
		  '
		  'Return True
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Algorithm As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		dvh_bin As Integer = 100
	#tag EndProperty

	#tag Property, Flags = &h0
		Finished As Boolean = false
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
		NLOFluence_File As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NLOShell As Shell_NLODVH
	#tag EndProperty

	#tag Property, Flags = &h0
		NLO_InputStr As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NLO_OutFile As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NLO_weights As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		NormDD As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		OutputName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			1
			Grad
			
			2
			SA.
			
			3
			Jaw
			
			4
			NLO
		#tag EndNote
		Previous_WeightType As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Read_Output As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Running As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Runtime As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		S As Class_Optimization_ORGANARRAY
	#tag EndProperty

	#tag Property, Flags = &h0
		Score As Single = 10000
	#tag EndProperty

	#tag Property, Flags = &h0
		Score_Initial As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Score_Previous As Double = 5
	#tag EndProperty

	#tag Property, Flags = &h0
		Submit_Date As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Time As String
	#tag EndProperty

	#tag Property, Flags = &h0
		WriteDose As Boolean = false
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Algorithm"
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
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
			Name="NLOFluence_File"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NLO_InputStr"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NLO_OutFile"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NLO_weights"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NormDD"
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OutputName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Previous_WeightType"
			Group="Behavior"
			Type="Integer"
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
			Name="Score_Initial"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Score_Previous"
			Group="Behavior"
			InitialValue="5"
			Type="Double"
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
			Name="WriteDose"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
