#tag Class
Protected Class Class_MMCTP_Timer_Refresh
Inherits Timer
	#tag Event
		Sub Action()
		  //----------------------------------------
		  // Timer to check up on running tasks and
		  // submit new ones
		  //
		  //----------------------------------------
		  Dim min,seconds as Single
		  Dim minutes as Integer
		  Dim time as String
		  //----------------------------------------
		  
		  
		  
		  //----------------------------------------
		  // If shell is running somthing
		  //----------------------------------------
		  if UBound(MMCTP_Shell_Refresh.All)>=0 Then
		    me.Period=100
		    me.Reset
		    
		    //----------------------------------------
		    // Calculate time of current task
		    if MMCTP_Shell_Refresh.All(0).Microseconds_Start>0 Then
		      min=((Microseconds-MMCTP_Shell_Refresh.All(0).Microseconds_Start)/1000000)/60
		      minutes=Floor(Min)
		      seconds=min-minutes
		      seconds=60*seconds
		      time=Format(minutes,"0\:")
		      time=time+Format(seconds,"00.00")
		      
		      
		      if app.which_window_shell Then
		        Window_Configurations_Shell.StaticText_Timer_refresh.value = Time
		      end
		      
		      // If current task has exceeded time limit
		      if MMCTP_Shell_Refresh.All(0).egs_exbeam=False and  MMCTP_Shell_Refresh.All(0).dos_dosxyznrc_test=False Then
		        if (MMCTP_Shell_Refresh.All(0).FTP_Now and Min>MMCTP_Shell_Refresh.Max_TimeStamp_FTP) or _
		          (MMCTP_Shell_Refresh.All(0).FTP_Now=False and Min>MMCTP_Shell_Refresh.Max_TimeStamp_SSH) Then
		          if app.which_window_shell Then
		            Window_Configurations_Shell.StaticText_Timer_refresh.value = "Max timeout exceeded ! "+Time
		          end
		          MMCTP_Shell_Refresh.All(0).started=False
		          MMCTP_Shell_Refresh.Restart_Job
		        end
		      end
		      
		      
		      // If current task was to submit one job locally and the shell cann't exit properly
		      if UBound(MMCTP_Shell_Refresh.all)>=0 Then
		        if MMCTP_Shell_Refresh.All(0).exit_done=True and seconds>55 then
		          MMCTP_Shell_Refresh.OneShell_Completed
		          Return
		        end
		      end
		      
		    end
		    
		    
		    // Start new task
		    if UBound(MMCTP_Shell_Refresh.all)>=0 Then
		      if MMCTP_Shell_Refresh.all(0).started=False Then
		        MMCTP_Shell_Refresh.call_Shell
		      end
		    end
		    
		    
		    
		    
		    
		    
		    //----------------------------------------
		    //Shell is not running, we can do new things!
		    //----------------------------------------
		  elseif app.which_window_BEAM_Phsp=False and _
		    app.which_window_BEAM_Options=False and _
		    app.which_window_DOSYXZ_Options=False  and _
		    app.which_window_Open=False and _
		    app.which_window_TreatmentPlanning then
		    
		    
		    //----------------------------------------
		    // Check for simulation progress
		    //----------------------------------------
		    if MC_Auto_Check Then
		      if Plan_Index>=0 Then
		        if gBEAM.State<>0 and gBEAM.egs_auto_refresh Then
		          gBEAM.egs_status=True
		          gBEAM.Run
		        end
		        if gDOSXYZ.State<>0 and gDOSXYZ.dosxyz_auto_refresh Then
		          gDOSXYZ.dosxyz_refresh=True
		          gDOSXYZ.Run
		        end
		        if gVMC.State<>0 and gVMC.auto_refresh Then
		          gvmc.vmc_status=True
		          gvmc.Run
		        end
		        if gCutout.State<>0  Then
		          gCutout.refresh_status=True
		          gCutout.Run
		        end
		      end
		    end
		  end
		  
		  
		  
		  if UBound(MMCTP_Shell_Refresh.all)=-1 Then
		    gTimer_Refresh.Period=gTimer_Refresh.Check_Period
		    gTimer_Refresh.Reset
		  end
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		Check_Period As int64 = 60000
	#tag EndProperty


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
			Name="Check_Period"
			Visible=false
			Group="Behavior"
			InitialValue="60000"
			Type="int64"
			EditorType=""
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
