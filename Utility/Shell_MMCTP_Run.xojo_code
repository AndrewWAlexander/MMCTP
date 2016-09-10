#tag Class
Protected Class Shell_MMCTP_Run
Inherits Shell
	#tag Event
		Sub Completed()
		  OneShell_Completed
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
		  Dim i,k as Integer
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
		  
		  if Len(s)<2 Then
		    //for i=0 to 1000000000
		    //k=i
		    //Next
		    //s=me.Readall
		    //me.Poll
		    //WriteLine gg.command
		    
		  end
		  
		  
		  Total_Output=Total_Output+s+chr(13)
		  
		  
		  if app.which_window_shell Then
		    Window_Configurations_Shell.EditField_ShellRun.AppendText s
		  end
		  
		  
		  if gg.command_done Then
		    gg.OutPut=gg.OutPut+s+chr(13)
		  end
		  
		  
		  if gg.OutPutWindow =1 and app.which_window_BEAM_Options Then
		    if Window_BEAM_Options.beam_num=gg.beam_num Then
		      Window_BEAM_Options.EditField_ShellOutput.AppendText s
		    end
		  elseif gg.OutPutWindow=2 and app.which_window_DOSYXZ_Options Then
		    if Window_DOSXYZ_Properties.beam=gg.beam_num Then
		      Window_DOSXYZ_Properties.EditField_dosxyz_out.AppendText s
		    end
		  end
		  
		  
		  if gg.shell.OS=3 Then
		    WriteLine "cd "+gg.dir
		    WriteLine gg.command
		    WriteLine "exit"
		    gg.change_dir_done=True
		    gg.command_done=True
		    gg.exit_done=True
		    
		    
		    
		    
		  elseif InStr(s,"(yes/no)")>0 or InStr(s,"host key")>0 or  InStr(s,"(y/n)")>0  then
		    WriteLine "yes"
		    
		  elseif InStr(s,"Operation timed out")>0 then
		    WriteLine "exit"
		    
		  elseif InStr(s,"Password:")>0 Then ''WRITE PASSWORD
		    WriteLine gg.shell.password +chr(13)
		    
		    //elseif  len(s)=1 then// if InStr(s," ")>0 and len(s)=1 Then ''WRITE PASSWORD
		    //WriteLine gg.shell.password
		    //---------- Initialize the bash enviroment for SSH connections-------------------
		  elseif (InStr(s,gg.shell.linefeed)>0 and gg.FTP_Now=False) Then
		    if gg.Bash=False and len(gg.shell.bash)>0 Then
		      gg.Bash=True
		      WriteLine gg.shell.bash
		      
		    elseif gg.change_dir_done=False Then
		      gg.change_dir_done=True
		      WriteLine "cd "+gg.dir
		      
		    elseif gg.command_done=False Then
		      gg.command_done=True
		      WriteLine gg.command
		      
		    elseif gg.exit_done =False Then
		      gg.exit_done=True
		      WriteLine "exit"
		      
		    elseif gg.exit_done =True and len(gg.shell.bash)>0  Then
		      WriteLine "exit"
		      
		    end
		    
		    
		    
		    // For File transfer connections commands
		  elseif gg.FTP_Now  Then
		    
		    if gg.shell.File_Transfer_Index= 0 Then
		      // For FTP connections
		      
		      if InStr(s,"Connection refused")>0 Then
		        WriteLine "exit"
		        
		      elseif InStr(s,gg.Shell.ftplinefeed)>0 Then
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
		      end
		      
		    else // for SCP connections
		      gg.command_done=True
		      gg.OutPut=gg.OutPut+s+chr(13)
		      
		    end
		  end
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub call_Shell()
		  //-------------------------------------------------
		  // Attempts to run MMCTP RUN commands
		  //
		  //-------------------------------------------------
		  dim tmpstr,plink,pscp as string
		  dim f as FolderItem
		  dim cfd as Class_MMCTP_Commands
		  dim copylocation,s as String
		  dim source as FolderItem
		  dim dest as FolderItem
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
		  
		  if all(0).shell=Nil Then
		    Return
		  end
		  
		  if all(0).shell.online=False Then
		    all.Remove 0 
		    Return
		  end
		  
		  // Mode  2 is Interactive
		  // The script can display a prompt and the user can interact with the shell script while it is running. 
		  // Data can be sent to a running shell session with the Write method and data is returned via the DataAvailable event. 
		  // See the example interactive shell in the Examples section.
		  me.Mode=2
		  
		  
		  if app.which_window_shell Then
		    Window_Configurations_Shell.StaticText_ShellRunNum.Text="Number of tasks to run: "+str(UBound(All)+1)
		    Window_Configurations_Shell.StaticText_Task_Run.Text=All(0).command
		    Window_Configurations_Shell.StaticText_Timer_Run.Text=""
		  end
		  
		  
		  if all(0).shell.OS=3 Then
		    if all(0).FTP_Now Then
		      s=all(0).FTP_Local_Path
		      copylocation=all(0).FTP_Remote_Path
		      source=GetFolderItem(s)
		      dest=GetFolderItem(copylocation)
		      if dest=nil Then
		        all(0).OutPut="MMCTP error, nil object for file "+copylocation
		        Return 
		      end
		      
		      if dest.Exists Then
		        dest.Delete
		      end
		      source.CopyFileTo(dest)
		      if dest<>Nil Then
		        if dest.Exists Then
		          all(0).OutPut="Transfer complete"
		        else
		          all(0).OutPut="failed"
		        end
		      else
		        all(0).OutPut="failed"
		      end
		      FTP_Return
		      Return
		    end
		  end
		  
		  
		  
		  if TargetWin32 Then
		    
		    if all(0).shell.OS=1 or all(0).shell.OS=2 Then
		      ''--------------WINDOWS SHELL Connections to Linux or Mac OS----------------------------
		      
		      if all(0).FTP_Now =True and all(0).shell.File_Transfer_Index=0 Then
		        // Use FTP windows function
		        call_Window_Shells_FTP
		        Return
		      else
		        TimeOut=-1 
		        plink=gShells.plink+"\plink.exe"
		        f=new FolderItem
		        f=GetFolderItem(plink, FolderItem.PathTypeAbsolute)
		        
		        if f=nil Then
		          Errors.Append "plink not found at : "+plink
		          close
		          Kill_All
		          Return
		        end
		        if f.Exists=False Then
		          Errors.Append "plink not found at : "+plink
		          close
		          Kill_All
		          Return
		        end
		        
		        
		        f=new FolderItem
		        pscp=gShells.pscp+"\pscp.exe"
		        f=GetFolderItem(pscp, FolderItem.PathTypeAbsolute)
		        
		        While InStr(plink,"\\")>0 
		          plink=Replace(plink,"\\","\")
		        Wend
		        
		        While InStr(pscp,"\\")>0
		          pscp=Replace(pscp,"\\","\")
		        Wend
		        
		        
		        if f=nil Then
		          Errors.Append "pscp not found at : "+pscp
		          close
		          Kill_All
		          Return
		        end
		        
		        if f.Exists=False Then
		          Errors.Append "pscp not found at : "+pscp
		          close
		          Kill_All
		          Return
		        end
		        
		        
		        
		        if all(0).FTP_Now =True Then
		          // Use SCP protocol
		          tmpstr=NthField(pscp,".exe",1)+" -pw "+ all(0).shell.password+" "+all(0).FTP_Local_Path+" "+all(0).shell.Login+"@"+all(0).shell.machine+":"+all(0).FTP_Remote_Path
		          
		          
		        else // Use SSH protocol
		          tmpstr= NthField(plink,".exe",1)+" "+all(0).shell.machine +" -ssh -l "+all(0).Shell.Login+" -pw "+ all(0).shell.password
		        end
		      end
		      
		    else // For connections to windows machines locally
		      tmpstr="E:"
		    end
		    ''-------------END WINDOWS SHELL----------------------------
		    
		  else ''----------------MAC OS SHELL or Linux ----------------------------------
		    if all(0).FTP_Now =True Then
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
		    else // Use SSH protocol
		      tmpstr= "ssh "+all(0).shell.machine +" -l "+all(0).shell.Login
		    end
		  end
		  
		  Backend = "cshrc"
		  Backend = "bash"
		  
		  Execute tmpstr
		  
		  if all(0).shell.OS=3 Then
		    WriteLine "cd "+all(0).dir
		    WriteLine all(0).command
		    WriteLine "exit"
		    all(0).change_dir_done=True
		    all(0).command_done=True
		    all(0).exit_done=True
		  end
		  
		  
		  
		  
		  
		  Exception err as TypeMismatchException
		    Errors.Append "Error within MMCTP Shell: Tried to retype an object!"
		  Exception err as NilObjectException
		    Errors.Append "Error within MMCTP Shell: Tried to access a Nil object!"
		  Exception err as RuntimeException  // NOT RECOMMENDED
		    Errors.Append "Error within MMCTP Shell: Another exception"
		    
		    
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
		  
		  if all(0).FTP_Put_file  then
		    cluster_dir=all(0).FTP_Remote_Path
		    
		    returns=FTP.PutFile(all(0).FTP_Files,cluster_dir)
		    
		  elseif all(0).FTP_Get_File then
		    
		    cluster_dir=all(0).FTP_Remote_Path
		    returns=FTP.GetFile(cluster_dir,all(0).FTP_Files)
		  end
		  
		  
		  all(0).OutPut=returns
		  FTP_Return
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FTP_Return()
		  //-----------------------------------------------
		  // Updates status of an FTP attempt 
		  //
		  //-----------------------------------------------
		  Dim gg as Class_MMCTP_Commands
		  Dim tmpstr,line as String
		  Dim f as FolderItem
		  Dim transferyesno as Boolean
		  //-----------------------------------------------
		  
		  if UBound(All)<=-1 Then
		    Return
		  end
		  
		  gg=all(0)
		  tmpstr=gg.OutPut
		  
		  if gg.shell.File_Transfer_Index=0 Then 
		    // FTP transfer
		    if InStr(tmpstr,"Transfer complete")>0 or InStr(tmpstr,"File receive OK")>0 _
		      or InStr(tmpstr,"File send OK")>0 or InStr(tmpstr,"File transfered")>0 _
		      or InStr(tmpstr,"File successfully transferred")>0 Then
		      transferyesno=True
		    else
		      transferyesno=False
		    end
		    
		  else //SCP transfer
		    if InStr(tmpstr,"100%")>0 Then
		      transferyesno=True
		    else
		      transferyesno=False
		    end
		  end
		  
		  
		  
		  
		  if gg.Shell_Test_FTP Then
		    
		    if transferyesno Then
		      Window_Configurations_Shell.StaticText_ConnectionTest_FTP.Text="ok"
		    else
		      Window_Configurations_Shell.StaticText_ConnectionTest_FTP.Text="failed"
		    end
		    f=new FolderItem
		    f=f.Child("MMCTP-FTP-Test")
		    if f.Exists Then
		      f.Delete
		    end
		    
		  elseif gg.vmc_uploadScript Then // Remove VMC Run script
		    f=gRTOG.Plan(Plan_Index).Path
		    line="j"+MC_file_name+str(gg.beam_num+1)+"_run"
		    f=f.Child(line)
		    if f.Exists Then
		      f.Delete
		    end
		    
		    
		    
		  ElseIf gg.egs_uploade_inp Then // BEAMnrc upload input fiels
		    if transferyesno Then
		      gBEAM.egs_msg.append "Input file ("+gg.inpfilename+") uploaded to "+gg.shell.machine
		    else
		      gBEAM.Beams(gg.beam_num).Beamnrc_error=True
		      gBEAM.egs_msg.append "Error !   Input file ("+gg.inpfilename+") not uploaded to "+gg.shell.machine
		    end
		    
		    
		    
		  ElseIf gg.vmc_dmx_upload Then // VMC Upload DMX file
		    if transferyesno Then
		      gVMC.VMC(gg.vmc_dmx_index).DMX.shell_name.append gg.shell.title
		      gVMC.VMC(gg.vmc_dmx_index).Write_DMX_Settings
		    end
		    
		    
		  ElseIf gg.dos_egsphant_Upload Then // DOSXYZ EGSPhant upload
		    if transferyesno Then
		      gdosxyz.egs_msg.append "EGSPhant file ("+gg.inpfilename+") uploaded to "+gg.shell.machine
		      gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).EGSPhantSettings.shells.append gg.shell.title
		      gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).Write_EGSPhant_Settings
		    end
		    
		    
		  ElseIf gg.dos_inputfile Then // DOSXYZ input file upload
		    if transferyesno Then
		      gdosxyz.egs_msg.append "DOSXYZnrc input file ("+gg.inpfilename+") uploaded to "+gg.shell.machine
		    end
		    
		    
		    
		    
		    
		  ElseIf gg.egs_run_script Then
		    // Remove beamnrc run script
		    if transferyesno Then
		      Window_Treatment.StaticText_VMC_Status.Text="Input script file ("+gg.inpfilename+") uploaded to "+gg.shell.machine
		      f=gRTOG.Plan(Plan_Index).Path
		      f=f.Child("j"+MC_file_name+str(gg.beam_num+1)+"_run")
		      if f.Exists Then
		        f.Delete
		      end
		    else
		      gBEAM.Beams(gg.beam_num).Beamnrc_error=True
		      gBEAM.egs_msg.append "Error !   Input script file ("+gg.inpfilename+") not uploaded to "+gg.shell.machine
		      ReDim all(0)
		    end
		    
		  end
		  
		  
		  if UBound(All)>-1 Then
		    all.Remove 0
		  end
		  
		  me.Close
		  
		  if UBound(all)=-1 Then
		    gTimer_Run.Period=gTimer_Run.Check_Period
		    gTimer_Run.Reset
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Kill_All()
		  Close
		  ReDim All(-1)
		  gTimer_Refresh.Period=gTimer_Refresh.Check_Period
		  gTimer_Refresh.Reset
		  
		  
		  if app.which_window_shell Then
		    Window_Configurations_Shell.StaticText_Task_Run.Text=""
		    Window_Configurations_Shell.StaticText_Timer_Run.Text=""
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Kill_Job()
		  if UBound(All)>-1 Then
		    all.Remove 0
		  end
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OneShell_Completed()
		  //----------------------------------------------
		  // Processes all terminal output once task is complete
		  //
		  //
		  //----------------------------------------------
		  Dim temp,tmpstr,one_line(-1),s,ls(-1),w(-1) as String
		  Dim i,k,num_batch,vmc_batch_done,vmc_pro as Integer
		  Dim Nohist,StartNohist as int64
		  Dim egs_pro,jarea as Single
		  Dim math as Double
		  Dim gg as Class_MMCTP_Commands
		  Dim addphsp,gotsize as Boolean
		  Dim f as FolderItem
		  Dim ts as TextOutputStream
		  Dim sysdate as Date
		  //----------------------------------------------
		  
		  sysdate= New Date
		  
		  
		  s=me.ReadAll
		  Total_Output=Total_Output+s+chr(13)
		  
		  if UBound(All)<=-1 Then
		    Return
		  end
		  
		  all(0).OutPut=all(0).OutPut+s
		  
		  // Write Output to file
		  if LenB(Total_Output) > 5242880 Then
		    f=gPref.Settings_fi.Child("Shell_Output.txt")
		    if f.Exists Then
		      f.Delete
		    end
		    ts=f.CreateTextFile
		    if ts<>nil Then
		      ts.Write Total_Output
		      ts.Close
		    end
		    Total_Output=""
		  end
		  
		  
		  if app.which_window_shell Then
		    Window_Configurations_Shell.EditField_ShellRun.AppendText s
		    Window_Configurations_Shell.StaticText_Task_Run.Text=""
		    Window_Configurations_Shell.StaticText_Timer_Run.Text=""
		  end
		  
		  
		  // Error Check
		  if ErrorCode=255 Then
		    // Time-out error code
		    //MsgBox "Shell Error code : "+s
		    for i=0 to UBound(gShells.Shells)
		      if gShells.Shells(i).title=all(0).shell.title and all(0).shell.title<>"8CORE" Then
		        gShells.Shells(i).online=False
		      end
		    next
		    
		    
		  else
		    gg=all(0)
		    if gg.FTP_Now Then
		      FTP_Return
		      Return
		    end
		    
		    //----------------------------------------
		    // Shell Test run complete
		    //----------------------------------------
		    if gg.shell_Test Then
		      if gg.command_done Then
		        Window_Configurations_Shell.StaticText_ConnectionTest.Text="Connection ok"
		      else
		        Window_Configurations_Shell.StaticText_ConnectionTest.Text="Connection NOT ok"
		      end
		      
		      
		      //----------------------------------------
		      //BEAMnrc Test run complete
		      //----------------------------------------
		    elseif gg.egs_exbeam Then
		      gBEAM.egs_msg.append "Test run complete for beam "+all(0).inpfilename
		      tmpstr=all(0).OutPut
		      One_Line=Split(tmpstr,chr(13))
		      if UBound(One_Line)>1 and InStr(tmpstr,"Error:")=0 and InStr(tmpstr,"Finished")>0 and InStr(tmpstr,"segmentation fault")=0  Then
		        for i =0 to UBound(One_Line)
		          if InStr(One_Line(i),"# of particles in ph-sp file")>0 and InStr(One_Line(i),"# of histories run:")>0 Then
		            tmpstr=Trim(One_Line(i))
		            
		            s=NthField(tmpstr,"# of particles in ph-sp file:",2)
		            gBEAM.beams(all(0).beam_num).egs_phsp_num_particles=val(s)
		            
		            s=NthField(tmpstr,"# of histories run:",2)
		            StartNohist=val(s)
		          end
		          
		          if InStr(One_Line(i),  "CPUTIME per history")>0 Then
		            s=Trim(One_Line(i))
		            s=(NthField(s,"CPUTIME per history",2))
		            s=(NthField(s,"=",2))
		            gBEAM.beams(all(0).beam_num).egs_CPU_time_per_hist=val(s)
		          end
		        next
		        
		        jarea=gBEAM.egs_Calculate_Area(gg.beam_num)
		        math=gBEAM.beams(gg.beam_num).egs_phsp_num_particles/StartNohist
		        Nohist=gBEAM.Beams(gg.beam_num).egs_desired_phsp_particle_density*jarea
		        if math>0 Then
		          Nohist=Nohist/math
		          gBEAM.beams(gg.beam_num).egs_num_histories=Nohist
		          gBEAM.beams(gg.beam_num).egs_particle_per_history=math
		          gBEAM.beams(gg.beam_num).Beamnrc_error=False
		        else
		          gBEAM.beams(gg.beam_num).egs_particle_per_history=0
		          gBEAM.beams(gg.beam_num).Beamnrc_error=True
		        end
		        
		        
		        if gBEAM.egs_automaxjob Then // maximize job number
		          math=gBEAM.Beams(gg.beam_num).egs_CPU_time_per_hist*gBEAM.beams(gg.beam_num).egs_num_histories/gBEAM.egs_automaxjobtime
		          gBEAM.Beams(gg.beam_num).egs_jobs=Round(math)
		        end
		        
		      elseif InStr(tmpstr,"Error:")>0 Then
		        gBEAM.beams(gg.beam_num).Beamnrc_error=True
		        
		      end
		      
		      
		      if app.which_window_BEAM_Options Then
		        //Window_BEAM_Options.Refresh_window
		        Window_BEAM_Options.UpdateWindow=True
		      end
		      gBEAM.egs_Write
		      
		      
		      
		      
		      //-------------------------------------------------------------------
		      // BEAMnrc submit one run
		      //--------------------------------------------------------------------
		    elseif gg.egs_run Then
		      tmpstr=gg.OutPut
		      if InStr(tmpstr,"error")=0 Then
		        gBEAM.egs_msg.append gg.inpfilename+ " job submitted"
		        gBEAM.Beams(gg.beam_num).egs_BEAMnrc_started=True
		        gBEAM.Beams(gg.beam_num).egs_BEAMnrc_active_jobs=gBEAM.Beams(gg.beam_num).egs_jobs
		        gBEAM.Beams(gg.beam_num).egs_Start_Time=sysdate.AbbreviatedDate+" "+sysdate.LongTime
		        //gBEAM.Beams(gg.beam_num).egs_Start_=sysdate.TotalSeconds
		        
		        
		      else
		        Window_Treatment.StaticText_VMC_Status.Text="Error, "+gg.inpfilename+" job not submitted"
		        gBEAM.Beams(gg.beam_num).egs_BEAMnrc_started=False
		        gBEAM.Beams(gg.beam_num).egs_BEAMnrc_active_jobs=0
		      end
		      gBEAM.egs_Write
		      MC_Count_Number_Jobs
		      
		      
		      
		      
		      
		      
		      
		      
		      //----------------------------------------------------------
		      // BEAMnrc run addPhsp
		      //----------------------------------------------------------
		    elseif gg.egs_addphsp1 Then
		      gBEAM.egs_msg.append "Running addphsp for "+gg.inpfilename+" wait for job to finish"
		      gBEAM.Beams(gg.beam_num).egs_BEAMnrc_active_jobs=0
		      gBEAM.egs_Write
		      
		      
		      
		      
		      
		      //----------------------------------------------------------
		      // DOSXYZnrc test run
		      //----------------------------------------------------------
		    ElseIf gg.dos_dosxyznrc_test  Then
		      gdosxyz.egs_msg.append "Test run complete for beam "+all(0).inpfilename
		      tmpstr=gg.OutPut
		      
		      // If run did not start the
		      if InStr(tmpstr,"PHASE SPACE FILE CANNOT BE FOUND")>0  or  InStr(tmpstr,"PHASE SPACE FILE CANNOT")>0 Then
		        // Look for Phase space file
		        gBEAM.egs_Read_Phsp_Properties(gg.beam_num)
		        
		      elseif  InStr(tmpstr,"You have to load and initialize the library first")>0 Then
		        gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_simulation_error=True
		        
		      elseif  InStr(tmpstr,"segmentation fault")>0 Then
		        gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_simulation_error=True
		        
		        
		      else // Run completed
		        
		        if gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).IRESTART=0 Then // For new runs, update run parameters
		          
		          gDOSXYZ.dosxyz_Update_Run_Stats(gg.dos_egsphant_index,gg.beam_num, tmpstr)
		          
		          While InStr(tmpstr,chr(10))>0
		            tmpstr=Replace(tmpstr,Chr(10),Chr(13))
		          Wend
		          gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_simulation_error=False
		          
		          
		          One_Line=Split(tmpstr,chr(13))
		          if UBound(One_Line)>1 Then
		            for i =0 to UBound(One_Line)
		              Temp=One_Line(i)
		              if InStr(One_Line(i),  "Total CPU time for run")>0 Then
		                s=(NthField(One_Line(i),"=",2))
		                gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_CPU_time=val(s)/_
		                gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_test_histories
		                gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).TotalTime=val(s)
		              elseif InStr(One_Line(i),  "average % error of doses >  0.500 of max dose =")>0 Then
		                s=(NthField(One_Line(i),"=",2))
		                gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_average_error=val(s)
		                gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_error_math_error=val(s)
		                egs_pro=gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_error_math_error / _
		                gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_desired_average_error
		                StartNohist=gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_test_histories
		                StartNohist=Round(egs_pro*egs_pro*StartNohist)
		                gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_num_histories =StartNohist
		                
		                if gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_average_error=0 Then
		                  gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_simulation_error=True
		                end
		              end
		            next
		          end
		          
		          
		          //if auto run timer is on update number of jobs
		          if gDOSXYZ.dosxyz_autojobtimer Then
		            math=StartNohist*gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_CPU_time/gDOSXYZ.dosxyz_autojobtimer_sec
		            gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_jobs=Round(math)
		          end
		          
		          
		          gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).Write_DOSXYZ
		          if app.which_window_DOSYXZ_Options  Then
		            if Window_DOSXYZ_Properties.beam= gg.beam_num and Window_DOSXYZ_Properties.egsphant= gg.dos_egsphant_index Then
		              Window_DOSXYZ_Properties.Refresh_List
		            end
		          end
		        end
		      end
		      
		      
		      
		      
		      gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_test_run_now=false
		      
		      //----------------------------------------------------------
		      // DOSXYZnrc run
		      //----------------------------------------------------------
		    ElseIf gg.dos_run  Then
		      tmpstr=gg.OutPut
		      if InStr(tmpstr,"error")=0 Then
		        gdosxyz.egs_msg.append gg.inpfilename+ " job submitted"
		        gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_full_run=false
		        gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).run_started=True
		        gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_num_active_jobs=gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_jobs
		        gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_start_Date=sysdate.AbbreviatedDate+" "+sysdate.LongTime
		        gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).Write_DOSXYZ
		      else
		        gdosxyz.egs_msg.append  "Error, "+gg.inpfilename+" job not submitted"
		      end
		      
		      MC_Count_Number_Jobs
		      
		      
		      
		      
		      
		      //----------------------------------------------------------
		      // VMC Run
		      //----------------------------------------------------------
		    ElseIf gg.vmc_run  Then
		      
		      tmpstr=gg.OutPut
		      if InStr(tmpstr,"error")=0 and InStr(tmpstr,"No such file or directory")=0 Then
		        Window_Treatment.StaticText_VMC_Status.Text=gg.inpfilename+ " job submitted"
		        gVMC.VMC(gg.vmc_dmx_index).BEAMS(gg.beam_num).vmc_started=True
		        gVMC.VMC(gg.vmc_dmx_index).BEAMS(gg.beam_num).start_Time=sysdate.AbbreviatedDate+" "+sysdate.LongTime
		        gVMC.VMC(gg.vmc_dmx_index).BEAMS(gg.beam_num).start_Time_Seconds=sysdate.TotalSeconds
		        
		        
		      else
		        Window_Treatment.StaticText_VMC_Status.Text= "Error, "+gg.inpfilename+" job not submitted"
		        gVMC.VMC(gg.vmc_dmx_index).BEAMS(gg.beam_num).vmc_started=False
		      end
		      gVMC.VMC(gg.vmc_dmx_index).Write_VMC_Settings
		      
		      MC_Count_Number_Jobs
		      
		      
		      
		      //-------------------------------------------------------------------
		      // Cutout submit one run
		      //--------------------------------------------------------------------
		    elseif gg.cutout_run Then
		      tmpstr=gg.OutPut
		      if InStr(tmpstr,"error")=0 Then
		        Window_Treatment.StaticText_Cutout_Status.Text=gg.inpfilename+ " job submitted"
		        gCutout.Beams(gg.beam_num).Started=True
		        //gBEAM.Beams(gg.beam_num).egs_BEAMnrc_active_jobs=gBEAM.Beams(gg.beam_num).egs_jobs
		        gCutout.Beams(gg.beam_num).startdate=sysdate.AbbreviatedDate+" "+sysdate.LongTime
		      else
		        Window_Treatment.StaticText_Cutout_Status.Text= "Error, "+gg.inpfilename+" job not submitted"
		        gCutout.Beams(gg.beam_num).Started=False
		        //gBEAM.Beams(gg.beam_num).egs_BEAMnrc_active_jobs=0
		      end
		      gCutout.Writesettings
		      MC_Count_Number_Jobs
		      
		      
		    end
		    
		  end
		  //----------------------------------------
		  // Finished all cases move on to next command
		  //----------------------------------------
		  
		  
		  if UBound(All)>-1 Then
		    all.Remove 0
		  end
		  me.Close
		  
		  
		  if UBound(all)=-1 Then
		    gTimer_Run.Period=gTimer_Run.Check_Period
		    gTimer_Run.Reset
		    
		    if app.which_window_BEAM_Phsp Then
		      Window_BEAM_Phsp_Information.ProgressWheel_phsp.Visible=False
		    elseif app.which_window_BEAM_Options Then
		    end
		  end
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
