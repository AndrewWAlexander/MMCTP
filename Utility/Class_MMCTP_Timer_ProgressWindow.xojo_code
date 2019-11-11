#tag Class
Protected Class Class_MMCTP_Timer_ProgressWindow
Inherits Timer
	#tag Event
		Sub Action()
		  
		  me.Period=50
		  me.Reset
		  
		  
		  if PW_Show and app.which_window_progress=False Then
		    Window_Progress.Show
		    Window_Progress.Title=PW_Title
		    Window_Progress.Refresh(False)
		    
		  elseif PW_Show=False and app.which_window_progress=True  Then
		    PW_Title=""
		    PW_StaticText=""
		    PW_Progress_Max=-1
		    PW_Progress=-1
		    Window_Progress.Close
		    
		  ElseIf app.which_window_progress Then
		    Window_Progress.StaticText.Text=PW_StaticText
		    Window_Progress.ProgressBar.Maximum=PW_Progress_Max
		    Window_Progress.ProgressBar.Value=PW_Progress
		    Window_Progress.ProgressBar.Refresh(False)
		  end
		End Sub
	#tag EndEvent


	#tag ViewBehavior
		#tag ViewProperty
			Name="RunMode"
			Visible=true
			Group="Behavior"
			InitialValue="2"
			Type="RunModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Off"
				"1 - Single"
				"2 - Multiple"
			#tag EndEnumValues
		#tag EndViewProperty
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
			Name="Period"
			Visible=true
			Group="Behavior"
			InitialValue="1000"
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
