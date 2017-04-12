#tag Class
Protected Class Shell_MMCTP_Download
Inherits Shell
	#tag Event
		Sub Completed()
		  FTP_Return
		End Sub
	#tag EndEvent

	#tag Event
		Sub DataAvailable()
		  //---------------------------------------
		  // Intermediate shell commands, 
		  // commands are processed individually, 
		  // after each shell prompt 
		  //
		  //---------------------------------------
		  Dim s as String
		  Dim gg as Class_MMCTP_Commands
		  //---------------------------------------
		  
		  
		  all(0).Microseconds_Start=Microseconds
		  
		  // Error Check
		  if ErrorCode=255 Then
		    MsgBox "Shell Error code : "+s
		    ReDim All(-1)
		    Return
		  end
		  
		  gg= All(0)
		  s=me.Readall
		  Total_Output=Total_Output+s+chr(13)
		  
		  if app.which_window_shell Then
		    Window_Configurations_Shell.EditField_ShellFTP.AppendText s
		  end
		  
		  if gg.command_done Then
		    gg.OutPut=gg.OutPut+s+chr(13)
		  end
		  
		  
		  
		  
		  
		  if InStr(s,"(yes/no)")>0 or InStr(s,"host key")>0 or  InStr(s,"(y/n)")>0  then
		    WriteLine "yes"
		    
		  elseif InStr(s,"Operation timed out")>0 then
		    WriteLine "exit"
		    
		    
		  elseif InStr(s,"Password:")>0 Then // WRITE PASSWORD
		    WriteLine gg.shell.password
		    
		    
		  elseif InStr(s,gg.Shell.ftplinefeed)>0 and gg.shell.File_Transfer_Index=0 Then // For FTP 
		    
		    // If the diretory needs to be changed
		    if gg.change_dir_done=False and len(gg.dir)>1 Then
		      gg.change_dir_done=True
		      WriteLine "cd "+gg.dir
		      
		    elseif gg.change_FTP_lcd=False and len(gg.FTP_lcd)>1 Then
		      gg.change_FTP_lcd=True
		      WriteLine gg.FTP_lcd
		      
		    elseif gg.command_done=False Then
		      gg.command_done=True
		      WriteLine gg.command
		      
		    elseif gg.exit_done=False Then
		      gg.exit_done=True
		      WriteLine "exit"
		    end
		    
		    
		  elseif gg.shell.File_Transfer_Index=1 Then // For SCP commands
		    if gg.command_done=False Then
		      gg.command_done=True
		      gg.OutPut=gg.OutPut+s+chr(13)
		    end
		    
		  end
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub call_Shell()
		  //-------------------------------------------------
		  // Attempts to run ssh or FTP commands
		  //
		  //-------------------------------------------------
		  dim tmpstr,plink,pscp as string
		  dim f as FolderItem
		  //-------------------------------------------------
		  
		  if UBound(All)<=-1 Then
		    Return
		  end
		  
		  all(0).started=True
		  all(0).Microseconds_Start=Microseconds
		  Data_TimeStamp=Microseconds
		  
		  
		  if UBound(all)=-1 Then
		    Return
		  end
		  
		  me.Mode=2
		  
		  
		  if app.which_window_shell Then
		    Window_Configurations_Shell.StaticText_FTP.Text=All(0).command
		    Window_Configurations_Shell.StaticText_Timer_FTP.Text=""
		    Window_Configurations_Shell.StaticText_FTP_Info.Text="Get file "+all(0).FTP_Files.name+" from "+ All(0).shell.machine+chr(13)+_
		    "Remote Directory " +all(0).FTP_Remote_Path+chr(13)+"Local Directory "+all(0).FTP_Local_Path
		    
		    
		  end
		  
		  
		  
		  
		  if All(0).vmc_download_d3d Then
		    Window_Treatment.StaticText_VMC_Status.Text="About to download "+all(0).inpfilename
		    
		  elseif all(0).dos_download_3ddose Then
		    gdosxyz.egs_msg.append "About to download "+all(0).inpfilename
		    
		  elseif all(0).vmc_download_d3d Then
		    Window_Treatment.StaticText_vmc_Status.Text="About to download "+all(0).inpfilename
		    
		  elseif all(0).egs_download_egslst Then
		    Window_Treatment.StaticText_VMC_Status.Text="About to download "+all(0).inpfilename
		  end
		  
		  
		  // Fix for FTP paths with spaces
		  if InStr(all(0).FTP_Local_Path," ")>0 and InStr(all(0).FTP_Local_Path,"\ ")=0 Then
		    all(0).FTP_Local_Path=""""+all(0).FTP_Local_Path+""""
		  end
		  
		  
		  
		  if TargetWindows Then
		    ''--------------WINDOWS SHELL----------------------------
		    
		    if  all(0).shell.File_Transfer_Index=0 Then //Download with FTP
		      call_Window_Shells_FTP
		      Return
		      
		    else // Use SCP protocol
		      
		      TimeOut=-1
		      
		      pscp=gShells.pscp+"\pscp.exe"
		      f=new FolderItem (pscp)
		      if f.Exists=False Then
		        MsgBox "pscp not found at : "+pscp
		        close
		        Kill_All
		        Return
		      end
		      
		      tmpstr=NthField(pscp,".exe",1)+" -pw "+all(0).shell.password+" "+all(0).shell.Login+"@"+all(0).shell.machine+":"+all(0).FTP_Remote_Path +" "+all(0).FTP_Local_Path
		      
		    end''-------------END WINDOWS SHELL----------------------------
		    
		  else ''----------------MAC OS SHELL----------------------------------
		    if all(0).shell.File_Transfer_Index=0 Then
		      // Use FTP protocol
		      tmpstr= "ftp -i "+all(0).shell.Login+"@"+all(0).shell.machine
		    elseif all(0).shell.File_Transfer_Index=1 Then
		      // SCP protocol
		      if all(0).FTP_Get_File Then
		        tmpstr= "scp "+all(0).shell.Login+"@"+all(0).shell.machine+":"+all(0).FTP_Remote_Path +" "+all(0).FTP_Local_Path
		      elseif all(0).FTP_Put_file Then
		        tmpstr= "scp "+all(0).FTP_Local_Path+" "+all(0).shell.Login+"@"+all(0).shell.machine+":"+all(0).FTP_Remote_Path
		      end
		    end
		  end
		  Execute tmpstr
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub call_Window_Shells_FTP()
		  //----------------------------------------
		  // Calls the Windows FTP functions
		  //
		  //----------------------------------------
		  Dim FTP as FTPSession
		  Dim cluster_dir, path,returns as String
		  //----------------------------------------
		  
		  if UBound(All)<=-1 Then
		    Return
		  end
		  
		  FTP = new FTPSession
		  FTP.Connect(all(0).shell.machine,all(0).shell.login,all(0).shell.password)
		  
		  if InStr(all(0).command,"put")>0 then
		    cluster_dir=trim(NthField(all(0).command,all(0).FTP_Files.Name,2))+all(0).FTP_Files.Name
		    returns=FTP.PutFile(all(0).FTP_Files,cluster_dir)
		    
		  else
		    cluster_dir=trim(NthField(all(0).command," ",2))
		    returns=FTP.GetFile(cluster_dir,all(0).FTP_Files)
		  end
		  
		  
		  all(0).OutPut=returns
		  FTP_Return
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FTP_Return()
		  //-----------------------------------------------
		  // Updates status of a FTP attempt 
		  //
		  //-----------------------------------------------
		  Dim gg as Class_MMCTP_Commands
		  Dim tmpstr as String
		  Dim f as FolderItem
		  Dim i as Integer
		  Dim bb,alldone as Boolean
		  //-----------------------------------------------
		  
		  if UBound(All)<=-1 Then
		    Return
		  end
		  
		  gg=all(0)
		  tmpstr=gg.OutPut+me.ReadAll
		  
		  
		  if app.which_window_shell Then
		    Window_Configurations_Shell.StaticText_FTP.Text=""
		    Window_Configurations_Shell.StaticText_Timer_FTP.Text=""
		  end
		  
		  
		  if gg.shell.File_Transfer_Index=0 Then //FTP
		    if InStr(tmpstr,"Transfer complete")>0 or InStr(tmpstr,"File receive OK")>0 _
		      or InStr(tmpstr,"File send OK")>0 or InStr(tmpstr,"File transfered")>0 _
		      or InStr(tmpstr,"File successfully transferred")>0 Then
		      bb=True
		    else
		      bb=False
		    end if
		    
		  else // SCP
		    if InStr(tmpstr,"100%")>0 Then //This condition does not work properly, Error messages are returned even after successful downloads (logged by William Davis)
		      bb=True                                    //Possible fix: change "InStr(tmpstr,"100%")" to "tmpstr.InStr("100%")", if this is a fix, probably means that the FTP section has
		    else                                                //the same problem
		      bb=False
		    end if
		    
		  end
		  
		  
		  //----------------------------------------------------------
		  // BEAMnrc download egslst file
		  //----------------------------------------------------------
		  if gg.egs_download_egslst Then
		    
		    if bb Then
		      gBEAM.egs_msg.append gg.inpfilename+" file downloaded"
		      gBEAM.egs_Read_egslst(gg.beam_num)
		    else
		      gBEAM.egs_msg.append "Error! "+gg.inpfilename+" file not downloaded"
		    end
		    
		    
		    //----------------------------------------------------------
		    // DOSXYZnrc download 3ddose file
		    //----------------------------------------------------------
		  elseIf gg.dos_download_3ddose  Then
		    
		    
		    if bb Then //if 3ddose file downloaded
		      gdosxyz.egs_msg.append gg.inpfilename+" dose file downloaded"
		      gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_3ddose_downloaded=True
		      gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).Write_DOSXYZ
		      Window_Treatment.MC_dosxyz_beam_progress
		      if gDOSXYZ.ImportDose Then
		        gDOSXYZ.dosxyz_adddoseList.Append str(gg.dos_egsphant_index)+","+str(gg.beam_num)+Chr(10)
		        gDOSXYZ.dosxyz_AddDose=True
		        if gDOSXYZ.State=4 Then
		          gDOSXYZ.Run
		        end
		      end
		      
		      if gDOSXYZ.ImportPlanDose Then
		        if UBound(gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input)>0 Then
		          gDOSXYZ.Dosxyz_add_Plan_Dose_List(gg.dos_egsphant_index)
		        end
		      end
		      
		    else //3ddose file not downloaded
		      tmpstr=tmpstr
		      gdosxyz.egs_msg.append "Error : "+gg.inpfilename+" file not downloaded"
		    end
		    
		    
		    //----------------------------------------------------------
		    // DOSXYZnrc download log file
		    //----------------------------------------------------------
		  elseIf gg.dos_download_log  Then
		    
		    
		    // Downloaded egslst file or egslog
		    if bb Then
		      gdosxyz.egs_msg.append gg.inpfilename+" file downloaded"
		      gDOSXYZ.dosxyz_read_egslst(gg.FTP_Files,gg.dos_egsphant_index,gg.beam_num)
		    else
		      gdosxyz.egs_msg.append "Error : "+gg.inpfilename+" file not downloaded"
		    end
		    
		    
		    
		    //----------------------------------------------------------
		    //  VMC download log file
		    //----------------------------------------------------------
		  elseif gg.vmc_download_log Then
		    if bb Then
		      gVMC.vmc_Read_vmclog(gg.vmc_dmx_index,gg.beam_num)
		    end
		    
		    
		    //----------------------------------------------------------
		    // VMC download d3d file
		    //----------------------------------------------------------
		  elseif gg.vmc_download_d3d Then
		    
		    if bb Then
		      Window_Treatment.StaticText_VMC_Status.Text=gg.inpfilename+" dose file downloaded"
		      gVMC.VMC(gg.vmc_dmx_index).Write_VMC_Settings
		      Window_Treatment.MC_vmc_beam_progress
		      gVMC.VMC(gg.vmc_dmx_index).beams(gg.beam_num).downloaded_d3d=true
		    else
		      gVMC.VMC(gg.vmc_dmx_index).beams(gg.beam_num).downloaded_d3d=False
		      Window_Treatment.StaticText_VMC_Status.Text="Error : "+gg.inpfilename+" file not downloaded"
		    end
		    
		    
		    //----------------------------------------------------------
		    // VMC download d3d header file
		    //----------------------------------------------------------
		  elseif gg.vmc_download_hed Then
		    
		    if bb Then
		      Window_Treatment.StaticText_VMC_Status.Text=gg.inpfilename+" file downloaded"
		      if gVMC.auto_importD Then
		        gVMC.AddDoseList.Append str(gg.vmc_dmx_index)+","+str(gg.beam_num)+Chr(10)
		        gVMC.vmc_adddose=True
		        if gVMC.State=4 Then
		          gVMC.Run
		        end
		      end
		      if UBound(gVMC.VMC)>=gg.vmc_dmx_index Then
		        if UBound(gVMC.VMC(gg.vmc_dmx_index).BEAMS)>=gg.beam_num Then
		          gVMC.VMC(gg.vmc_dmx_index).beams(gg.beam_num).downloaded_hed=true
		        end
		      end
		      
		    else
		      if UBound(gVMC.VMC)>=gg.vmc_dmx_index Then
		        if UBound(gVMC.VMC(gg.vmc_dmx_index).BEAMS)>=gg.beam_num Then
		          gVMC.VMC(gg.vmc_dmx_index).beams(gg.beam_num).downloaded_hed=False
		          Window_Treatment.StaticText_VMC_Status.Text="Error : "+gg.inpfilename+" file not downloaded"
		        end
		      end
		    end
		  end
		  
		  me.Close
		  
		  if UBound(All)>-1 Then
		    all.Remove 0
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Kill_All()
		  Close
		  ReDim All(-1)
		  gTimer_Download.Period=gTimer_Download.Check_Period
		  gTimer_Download.Reset
		  
		  
		  if app.which_window_shell Then
		    Window_Configurations_Shell.StaticText_FTP.Text=""
		    Window_Configurations_Shell.StaticText_Timer_FTP.Text=""
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Kill_Job()
		  
		  
		  if UBound(All)>-1 Then
		    all.Remove 0
		  end
		  
		  Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Restart_Job()
		  //---------------------
		  // Error with this method, July 2010, caues hanging
		  //
		  //---------------------
		  Poll
		  
		  if IsRunning Then
		    Close
		  end
		  
		  if UBound(All)>-1 Then
		    all(0).started=False
		    call_Shell
		  end
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		All(-1) As Class_MMCTP_Commands
	#tag EndProperty

	#tag Property, Flags = &h0
		Data_TimeStamp As double
	#tag EndProperty

	#tag Property, Flags = &h0
		Max_TimeStamp_FTP As single = 6
	#tag EndProperty

	#tag Property, Flags = &h0
		Max_TimeStamp_SSH As single = 2
	#tag EndProperty

	#tag Property, Flags = &h0
		Total_Output As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Arguments"
			Visible=true
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backend"
			Visible=true
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Canonical"
			Visible=true
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Data_TimeStamp"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Max_TimeStamp_FTP"
			Group="Behavior"
			InitialValue="6"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Max_TimeStamp_SSH"
			Group="Behavior"
			InitialValue="2"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Mode"
			Visible=true
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimeOut"
			Visible=true
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Total_Output"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
