#tag Class
Protected Class Class_MMCTP_Timer_Download
Inherits Timer
	#tag Event
		Sub Action()
		  //----------------------------------------
		  // Timer to check up on download tasks 
		  // 
		  //
		  //----------------------------------------
		  Dim min,seconds as Single
		  Dim minutes as Integer
		  Dim time as String
		  //----------------------------------------
		  
		  time=time
		  
		  if UBound(MMCTP_Download.All)>=0 Then
		    me.Period=100
		    me.Reset
		    
		    if MMCTP_Download.All(0).Microseconds_Start>0 Then
		      min=((Microseconds-MMCTP_Download.All(0).Microseconds_Start)/1000000)/60
		      minutes=Floor(Min)
		      seconds=min-minutes
		      seconds=60*seconds
		      time=Format(minutes,"0\:")
		      time=time+Format(seconds,"00.00")
		      
		      if app.which_window_shell Then
		        Window_Configurations_Shell.StaticText_Timer_FTP.Text=Time
		        Window_Configurations_Shell.StaticText_ShellDownLoadNum.Text="Number of files to transfer: "+str(UBound(MMCTP_Download.All)+1)
		      end
		      
		      // If current FTP download has exceeded time limit
		      if  Min>MMCTP_Download.Max_TimeStamp_FTP Then
		        if app.which_window_shell Then
		          Window_Configurations_Shell.StaticText_Timer_FTP.Text="Max timeout exceeded ! "+Time
		        end
		        MMCTP_Download.All(0).started=False
		        MMCTP_Download.Restart_Job
		      end
		    end
		    
		    // Start new download
		    if UBound(MMCTP_Download.all)>=0 Then
		      if MMCTP_Download.all(0).started=False Then
		        MMCTP_Download.call_Shell
		      end
		    end
		  end
		  
		  
		  
		  
		  
		  if UBound(MMCTP_Download.All)=-1 Then
		    // Reset number of transfers
		    if app.which_window_shell Then
		      Window_Configurations_Shell.StaticText_ShellDownLoadNum.Text="Number of files to transfer: "+str(UBound(MMCTP_Download.All)+1)
		      Window_Configurations_Shell.StaticText_FTP.Text=""
		      Window_Configurations_Shell.StaticText_FTP_Info.Text=""
		      
		    end
		    
		    gTimer_Download.Period=gTimer_Download.Check_Period
		    gTimer_Download.Reset
		  end
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		Check_Period As int64 = 60000
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Check_Period"
			Group="Behavior"
			InitialValue="60000"
			Type="int64"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Mode"
			Visible=true
			Group="Behavior"
			InitialValue="2"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Off"
				"1 - Single"
				"2 - Multiple"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Period"
			Visible=true
			Group="Behavior"
			InitialValue="1000"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
