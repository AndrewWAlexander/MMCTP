#tag Class
Protected Class Class_MERT_JAWSA_Run
Inherits Thread
	#tag Event
		Sub Run()
		  Dim tmpstr as string
		  Dim f,g as FolderItem
		  
		  
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  tmpstr="cd "+f.ShellPath
		  
		  Shell = new Shell_JASADVH
		  
		  Shell.Mode=2
		  Shell.Execute "bash"
		  Shell.WriteLine tmpstr
		  Shell.WriteLine "sajawDVH"
		  
		  gOpt.JAW.Start_Sec=Microseconds
		  Window_EMET_Run.ProgressWheel_JAW.Visible=True
		  
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		Shell As Shell_JASADVH
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
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
			Name="Priority"
			Visible=true
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StackSize"
			Visible=true
			Group="Behavior"
			InitialValue="0"
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
	#tag EndViewBehavior
End Class
#tag EndClass
