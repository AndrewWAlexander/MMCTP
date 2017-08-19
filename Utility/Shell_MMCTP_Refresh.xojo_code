#tag Class
Protected Class Shell_MMCTP_Refresh
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
		    Window_Configurations_Shell.EditField_ShellRefresh.AppendText s
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
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  ''--------------WRITE PASSWORD----------------------
		  
		  if InStr(s,"(yes/no)")>0 or InStr(s,"host key")>0 or  InStr(s,"(y/n)")>0  then
		    WriteLine "yes"
		    
		  elseif InStr(s,"Operation timed out")>0 then
		    WriteLine "exit"
		    
		    
		    
		    
		  elseif InStr(s,"Password:")>0 Then
		    WriteLine gg.shell.password
		    
		    
		    
		    //---------- Initialize the bash enviroment for SSH connections-------------------
		  elseif InStr(s,gg.shell.linefeed)>0 and gg.FTP_Now=False Then
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
		      if InStr(s,gg.Shell.ftplinefeed)>0 Then
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
		      
		    else
		      gg.command_done=True
		      gg.OutPut=gg.OutPut+s+chr(13)
		      
		    end
		  end
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub call_Shell()
		  //-------------------------------------------------
		  // Attempts to run Refresh  Shell
		  //
		  //-------------------------------------------------
		  dim tmpstr,plink,pscp as string
		  dim f as FolderItem
		  dim cfd as Class_MMCTP_Commands
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
		  
		  if all(0).shell.online=False Then
		    all.Remove 0 
		    Return
		  end
		  
		  me.Mode=2
		  
		  if app.which_window_shell Then
		    Window_Configurations_Shell.StaticText_Task_Refresh.Text=All(0).command
		    Window_Configurations_Shell.StaticText_Timer_refresh.Text=""
		  end
		  
		  
		  if All(0).egs_refresh Then
		    gBEAM.egs_msg.append "Reading "+all(0).inpfilename //Formerly in VMC, William Davis
		    
		  elseif all(0).egs_refresh_log Then
		    gBEAM.egs_msg.append "Reading "+all(0).inpfilename //Likewise
		  elseif all(0).dos_refresh Then
		    gdosxyz.egs_msg.append "Reading "+all(0).inpfilename
		  elseif all(0).dos_refresh_3ddose Then
		    gdosxyz.egs_msg.append "Reading "+all(0).inpfilename
		    
		  elseif all(0).dos_download_3ddose Then
		    gdosxyz.egs_msg.append "About to download "+all(0).inpfilename
		    
		  elseif all(0).vmc_refresh_d3d or all(0).vmc_refresh_pro Then
		    Window_Treatment.StaticText_vmc_Status.Text="Looking for "+all(0).inpfilename
		    
		  elseif all(0).vmc_download_d3d Then
		    Window_Treatment.StaticText_vmc_Status.Text="About to download "+all(0).inpfilename
		  end
		  
		  
		  
		  
		  if TargetWindows Then
		    ''--------------WINDOWS SHELL----------------------------
		    
		    if all(0).FTP_Now =True and all(0).shell.File_Transfer_Index=0 Then
		      // Use FTP windows function
		      call_Window_Shells_FTP
		      Return
		    else
		      TimeOut=-1 
		      plink=gShells.plink+"\plink.exe"
		      f=new FolderItem (plink)
		      if f.Exists=False Then
		        MsgBox "plink not found at : "+plink
		        close
		        Kill_All
		        Return
		      end
		      
		      pscp=gShells.pscp+"\pscp.exe"
		      f=new FolderItem (pscp)
		      if f.Exists=False Then
		        MsgBox "pscp not found at : "+pscp
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
		    ''-------------END WINDOWS SHELL----------------------------
		  else ''----------------MAC OS SHELL----------------------------------
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
		  Dim tmpstr as String
		  Dim f as FolderItem
		  //-----------------------------------------------
		  
		  if UBound(All)<=-1 Then
		    Return
		  end
		  
		  gg=all(0)
		  tmpstr=gg.OutPut
		  
		  
		  If gg.egs_addphsp1 Then
		    // Remove addphsp script
		    f=gRTOG.Plan(Plan_Index).Path
		    f=f.Child("j"+MC_file_name+str(gg.beam_num+1)+".addphsp")
		    if f.Exists Then
		      f.Delete
		    end
		    
		  ElseIf gg.egs_beamdp Then
		    // Remove beamdp script
		    f=gRTOG.Plan(Plan_Index).Path
		    f=f.Child("beamdp_"+MC_file_name+str(gg.beam_num+1))
		    if f.Exists Then
		      f.Delete
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
		    Window_Configurations_Shell.StaticText_Task_Refresh.Text=""
		    Window_Configurations_Shell.StaticText_Timer_refresh.Text=""
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
		  Dim egs_pro,jarea , starth,startm, nowh,nowm, diffh,diffm as Single
		  Dim math, secnow as Double
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
		    Window_Configurations_Shell.EditField_ShellRefresh.AppendText s
		    Window_Configurations_Shell.StaticText_Task_Refresh.Text=""
		    Window_Configurations_Shell.StaticText_Timer_refresh.Text=""
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
		      Window_Configurations_Shell.StaticText_ConnectionTest.Text="Connection ok"
		      
		      //----------------------------------------------------------
		      // BEAMnrc Read the phase space file size
		      //---------------------------------------------------------
		    elseif gg.egs_Read_Phsp_Properties  Then
		      s=gg.OutPut
		      While InStr(s,chr(10))>0
		        s=Replace(s,chr(10),chr(13))
		      Wend
		      ls=Split(s,chr(13))
		      
		      
		      if InStr(s,"No such file or directory")=0 then
		        gBEAM.Beams(gg.beam_num).egs_progress=100
		        gBEAM.Beams(gg.beam_num).egs_Phsp_Size=0
		        for i=UBound(ls) DownTo 0
		          temp=Trim(ls(i))
		          While InStr(Temp,"  ")>0
		            temp=Replace(Temp,"  "," ")
		          Wend
		          ls(i)=Temp
		          One_Line=Split(temp," ")
		          if UBound(One_Line)<>(gg.shell.listfiles_name-1) Then
		            ls.Remove i
		          elseif len(ls(i))=0 Then
		            ls.Remove i
		          end
		        Next
		        if UBound(ls)=0 Then
		          One_Line=Split(ls(0)," ")
		          if UBound(One_Line)=gg.shell.listfiles_name-1 Then
		            if gg.inpfilename=trim(One_Line(gg.shell.listfiles_name-1)) then
		              temp=(One_Line(gg.shell.listfiles_column_num-1))
		              gBEAM.beams(gg.beam_num).egs_phsp_size=val(temp)
		              gBEAM.beams(gg.beam_num).egs_AddPhsp_Finished=True
		              gBEAM.beams(gg.beam_num).egs_BEAMnrc_active_jobs=0
		              gotsize=True
		              //Update the PhaseSpace database if this is a new phasespace file
		              if gBEAM.Beams(gg.beam_num).egs_Phsp_link=False Then
		                gBEAM.egs_Update_PhaseSpace_Record(gg.beam_num)
		              end
		            else
		              gotsize=False
		            end
		          else
		            gotsize=False
		          end
		        else
		          gotsize=False
		        end
		      else
		        gotsize=False
		      end
		      
		      if gotsize =False Then
		        // could not find inpfile
		        gBEAM.beams(gg.beam_num).egs_phsp_size=0
		        gBEAM.beams(gg.beam_num).egs_phsp_num_particles=0
		        gBEAM.beams(gg.beam_num).egs_phsp_link=False
		        gBEAM.beams(gg.beam_num).egs_phsp_num_photons=0
		        gBEAM.beams(gg.beam_num).egs_progress=0
		        gBEAM.beams(gg.beam_num).egs_BEAMnrc_active_jobs=0
		        //gBEAM.beams(gg.beam_num).egs_Start_Time=""
		        //gBEAM.beams(gg.beam_num).egs_BEAMnrc_started=False
		        gBEAM.beams(gg.beam_num).egs_AddPhsp_Finished=False
		        
		      end
		      if app.which_window_BEAM_Phsp Then
		        Window_BEAM_Phsp_Information.pop_beam
		      end
		      gBEAM.egs_Write
		      
		      
		      
		      
		      //-------------------------------------------------------------------
		      // Readin the BEAMDP information
		      //------------------------------------------------------------------
		    elseif gg.egs_beamdp Then
		      tmpstr=gg.OutPut
		      One_Line=Split(tmpstr,chr(13))
		      s="Could not read output"
		      if UBound(One_Line)>1 Then
		        for i =0 to UBound(One_Line)
		          if InStr(One_Line(i),  "TOTAL NUMBER OF PARTICLES IN FILE")>0 Then
		            s=(NthField(One_Line(i),"TOTAL NUMBER OF PARTICLES IN FILE:",2))
		            gBEAM.beams(gg.beam_num).egs_phsp_num_particles=val(s)
		          end
		          if InStr(One_Line(i),  "TOTAL NUMBER OF PHOTONS")>0 Then
		            s=(NthField(One_Line(i),"TOTAL NUMBER OF PHOTONS:",2))
		            gBEAM.beams(gg.beam_num).egs_phsp_num_photons=val(s)
		          end
		        next
		      end
		      gBEAM.beams(gg.beam_num).egs_Phsp_Lookup=True
		      gBEAM.egs_Write
		      
		      
		      //----------------------------------------------------------
		      // BEAMnrc List all phase space files
		      //------------------------------------------------------------------
		    elseif gg.egs_phsp_list Then
		      tmpstr=gg.OutPut
		      if app.which_window_BEAM_Phsp Then
		        Window_BEAM_Phsp_Information.ls_list=tmpstr
		        Window_BEAM_Phsp_Information.pop_listbox
		      end
		      
		      
		      //----------------------------------------------------------
		      // BEAMnrc status refresh
		      //----------------------------------------------------------
		    ElseIf gg.egs_refresh Then
		      s=gg.OutPut
		      While InStr(s,"  ")>0
		        s=Replace(s,"  "," ")
		      Wend
		      
		      if InStr(s,"no such")=0 Then
		        // If lock file is found then read lock file
		        gBEAM.Beams(gg.beam_num).lockfile_seen=True
		        ls=Split(s,chr(13))
		        if UBound(ls)>0 Then
		          for i=0 to UBound(ls)
		            One_Line=Split(ls(i)," ")
		            if UBound(One_Line)>10 Then
		              Nohist=val(One_Line(2))
		              if Nohist>=0 Then
		                egs_pro=100*(Nohist/gBEAM.Beams(gg.beam_num).egs_num_histories)
		                gBEAM.beams(gg.beam_num).egs_progress=abs(egs_pro)
		                gBEAM.Beams(gg.beam_num).egs_BEAMnrc_active_jobs=val(one_line(3))
		              end
		            end
		          next
		        end
		        Window_Treatment.MC_egs_beam_progress_update=True
		        gBEAM.egs_Write
		      else
		        //Else look at the egslog files to see if simulation is complete
		        if gBEAM.Beams(gg.beam_num).lockfile_seen=False Then
		          gBEAM.egs_Refresh_Logfiles(gg.beam_num)
		        else // simulation must have finished, lock file disappeared check for egsrun directories run addphsp
		          gBEAM.egs_Refresh_RunDirectories(gg.beam_num)
		        end
		      end
		      
		      
		      //----------------------------------------------------------
		      //look for egsrun directories to see if simulation has successfully completed
		      //----------------------------------------------------------
		    elseif gg.egs_refresh_egsrun Then
		      s=gg.OutPut
		      
		      if InStr(s,"No such file or directory")>0 Then // we can assume the simulation has finished
		        gBEAM.egs_AddPhsp(gg.beam_num) // <-- Calls egs_AddPhSp
		        gBEAM.beams(gg.beam_num).egs_progress=100
		        gBEAM.Beams(gg.beam_num).egs_BEAMnrc_active_jobs=0
		        Window_Treatment.MC_egs_beam_progress_update=True
		        gBEAM.egs_Write
		      else // look for log files 
		        gBEAM.egs_Refresh_Logfiles(gg.beam_num)
		      end
		      
		      //----------------------------------------------------------
		      //look at the BEAMnrc egslog files to see if simulation is complete
		      //----------------------------------------------------------
		    elseif gg.egs_refresh_log Then
		      s=gg.OutPut
		      if InStr(s,"Finished simulation")>0 Then
		        // If there are paralle jobs or one
		        if gBEAM.beams(gg.beam_num).egs_jobs<>1 Then
		          gBEAM.Beams(gg.beam_num).w_files(gg.egs_w_index)=True
		        elseif gBEAM.beams(gg.beam_num).egs_jobs=1 Then
		          gBEAM.Beams(gg.beam_num).egs_AddPhsp_Finished=True
		          gBEAM.Beams(gg.beam_num).egs_BEAMnrc_active_jobs=0
		          gBEAM.beams(gg.beam_num).egs_progress=100
		          gBEAM.egs_download_egslst(gg.beam_num)
		          gBEAM.egs_Write
		        end
		      end
		      
		      addphsp=True
		      for i=0 to gBEAM.beams(gg.beam_num).egs_jobs-1
		        if gBEAM.Beams(gg.beam_num).w_files(i)=False then
		          addphsp=False
		          Exit
		        end
		      next
		      // If all logs files are there then simulation is complete
		      if addphsp and gBEAM.beams(gg.beam_num).egs_jobs>1 Then
		        gBEAM.egs_AddPhsp(gg.beam_num) // <-- Calls egs_AddPhSp
		        gBEAM.beams(gg.beam_num).egs_progress=100
		        gBEAM.Beams(gg.beam_num).egs_BEAMnrc_active_jobs=0
		        Window_Treatment.MC_egs_beam_progress_update=True
		        gBEAM.egs_Write
		      end
		      
		      // This only runs after last log file check
		      // Status after last w file lookup, where w_index = the number of job slipts 
		      if gg.egs_w_index= (gBEAM.Beams(gg.beam_num).egs_jobs-1) Then
		        // Remove *_w phsp files switched crashed while Progress is above 95%
		        if gBEAM.egs_force_addphsp Then
		          if gBEAM.Beams(gg.beam_num).egs_progress>gBEAM.egs_force_addphsp_value and _
		            gBEAM.beams(gg.beam_num).egs_jobs<>1 and gBEAM.Beams(gg.beam_num).egs_progress<100 Then
		            gBEAM.egs_Delete_bad_egsphsp_files(gg.beam_num)
		            gBEAM.egs_AddPhsp(gg.beam_num) // <-- Calls egs_AddPhSp
		            gBEAM.beams(gg.beam_num).egs_progress=100
		            gBEAM.Beams(gg.beam_num).egs_BEAMnrc_active_jobs=0
		            Window_Treatment.MC_egs_beam_progress_update=True
		            gBEAM.egs_Write
		          end
		        end
		      end
		      
		      
		      
		      // Update Progress of 1 job simulations
		      if gBEAM.beams(gg.beam_num).egs_jobs=1 Then
		        if InStr(s," BATCH #  TIME-ELAPSED  TOTAL CPUTIME  RATIO")>0 or InStr(s,"# of histories run:")>0 Then
		          one_line=Split(s,Chr(13))
		          for i=0 to UBound(one_line)
		            one_line(i)=Trim(one_line(i))
		          next
		          for i=UBound(one_line) DownTo 0
		            if one_line(i)="" or CountFields(one_line(i)," ")<5 Then
		              one_line.Remove i
		            end
		          next
		          if UBound(one_line)>-1 Then
		            jarea=(val(one_line(UBound(one_line)))-1)*10
		            jarea=Abs(jarea)
		            gBEAM.beams(gg.beam_num).egs_progress=jarea
		            gBEAM.egs_Write
		            Window_Treatment.MC_egs_beam_progress_update=True
		          end
		        end
		      end
		      MC_Count_Number_Jobs
		      
		      
		      //----------------------------------------------------------
		      // BEAMnrc AddPhsp text file to see if simulation is complete
		      //----------------------------------------------------------
		    elseif gg.egs_addphsp_check Then
		      s=gg.OutPut
		      if InStr(s,"Done")>0 Then
		        gBEAM.Beams(gg.beam_num).egs_AddPhsp_Finished=True
		        gBEAM.egs_download_egslst(gg.beam_num)
		        if gBEAM.Remove_w_files Then
		          gBEAM.egs_Remove_w_files(gg.beam_num)
		        End
		        gBEAM.egs_Update_PhaseSpace_Record(gg.beam_num)
		      else
		        gBEAM.Beams(gg.beam_num).egs_AddPhsp_Finished=False
		      end
		      gBEAM.egs_Write
		      
		      
		      //----------------------------------------------------------
		      // BEAMnrc run addPhsp
		      //----------------------------------------------------------
		    elseif gg.egs_addphsp1 Then
		      gBEAM.egs_msg.append "Running addphsp for "+gg.inpfilename+" wait for job to finish"
		      gBEAM.Beams(gg.beam_num).egs_BEAMnrc_active_jobs=0
		      gBEAM.egs_Write
		      
		      
		      //----------------------------------------------------------
		      // DOSXYZnrc status refresh
		      //----------------------------------------------------------
		    ElseIf gg.dos_refresh Then // Refresh lock file
		      gdosxyz.egs_msg.append ""
		      s=gg.OutPut
		      While InStr(s,"  ")>0
		        s=Replace(s,"  "," ")
		      Wend
		      if InStr(s,"no such")=0 Then // If there is a lock file
		        ls=Split(s,chr(13))
		        if UBound(ls)>0 Then
		          for i=0 to UBound(ls)
		            One_Line=Split(ls(i)," ")
		            if UBound(One_Line)>5 Then
		              Nohist=val(One_Line(2))
		              if Nohist>0 Then
		                StartNohist=gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_num_histories
		                math=100*Nohist/StartNohist
		                gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_progress=math
		              end
		              Nohist=val(One_Line(3))
		              if Nohist>=0 Then
		                gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_num_active_jobs=Nohist
		              end
		              gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).Write_DOSXYZ
		            end
		          next
		        end
		      else //Else look for the 3ddose file to see if simulation is complete
		        gDOSXYZ.dosxyz_Refresh_3ddose(gg.dos_egsphant_index,gg.beam_num)
		      end
		      Window_Treatment.MC_dosxyz_beam_progress
		      
		      //----------------------------------------------------------
		      // DOSXYZnrc status refresh One Job lst file
		      //----------------------------------------------------------
		    ElseIf gg.dos_refresh_One Then // Refresh status of one dosxyznrc file
		      gdosxyz.egs_msg.append "" 
		      s=gg.OutPut
		      While InStr(s,"  ")>0
		        s=Replace(s,"  "," ")
		      Wend
		      if InStr(s,"no such")=0  and InStr(s,"no match")=0 Then // If there is a egslst file
		        ls=Split(s,chr(10))
		        if UBound(ls)>0 Then
		          for i=0 to UBound(ls)
		            One_Line=Split(ls(i)," ")
		            if UBound(One_Line)>11 Then
		              Nohist=val(One_Line(1))*10
		              gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_progress=Nohist
		            end
		          next
		        end
		        gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).Write_DOSXYZ
		      else //Else look for the 3ddose file to see if simulation is complete
		        gDOSXYZ.dosxyz_Refresh_3ddose(gg.dos_egsphant_index,gg.beam_num)
		      end
		      Window_Treatment.MC_dosxyz_beam_progress
		      
		      
		      
		      //------------------------------------------------------------------------
		      // DOSXYZnrc status refresh 3ddose
		      //-------------------------------------------------------------------------
		    ElseIf gg.dos_refresh_3ddose Then
		      gdosxyz.egs_msg.append ""
		      
		      if InStr(gg.OutPut,"no such")=0 Then // 3ddose file exists, simulation finished!
		        gDOSXYZ.dosxyz_Download_3ddose(gg.dos_egsphant_index,gg.beam_num)
		        gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_num_active_jobs=0
		        gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_progress=100
		        gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_3ddose_detected=True
		        // Update running job number
		        MC_Count_Number_Jobs
		        
		        if gDOSXYZ.dosxyz_remove_w_files Then
		          gDOSXYZ.dosxyz_Remove_wfiles(gg.dos_egsphant_index,gg.beam_num)
		        end
		        
		        s=gg.OutPut
		        
		        While InStr(s,chr(10))>0 or InStr(s,"  ")>0
		          s=Replace(s,chr(10),chr(13))
		          s=Replace(s,"  "," ")
		        Wend
		        ls=Split(s,chr(13))
		        
		        for i=UBound(ls) DownTo 0
		          One_Line=Split(ls(i)," ")
		          if UBound(One_Line)<>(gg.shell.listfiles_name-1) Then
		            ls.Remove i
		          elseif len(ls(i))=0 Then
		            ls.Remove i
		          end
		          
		          //Determine the date and time when 3ddose file was writen
		          if UBound(ls)=0 Then
		            One_Line=Split(ls(0)," ")
		            if UBound(One_Line)=(gg.shell.listfiles_name-1) Then
		              if gg.inpfilename=trim(One_Line(gg.shell.listfiles_name-1)) then
		                // 
		                if (gg.shell.listfiles_dateA-1)>-1 and (gg.shell.listfiles_dateA-1)<=UBound(one_line) Then
		                  temp=One_Line(gg.shell.listfiles_dateA-1)
		                end
		                if (gg.shell.listfiles_dateB-1)>-1 and (gg.shell.listfiles_dateB-1)<=UBound(one_line) Then
		                  temp=temp+" "+One_Line(gg.shell.listfiles_dateB-1)
		                end
		                temp=temp+ " at "+One_Line(gg.shell.listfiles_time-1)
		                gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_3ddose_finish_Time=temp
		                gotsize=True
		              else
		                gotsize=False
		              end
		            else
		              gotsize=False
		            end
		          else
		            gotsize=False
		          end
		          
		          
		        Next
		        
		        
		      else // 3ddose file does not exist
		        gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_3ddose_detected=False
		        gDOSXYZ.DOSXYZ(gg.dos_egsphant_index).DOSXYZ_Input(gg.beam_num).dos_3ddose_finish_Time=""
		        
		      end
		      
		      
		      
		      
		      //----------------------------------------------------------
		      // VMC refresh d3d file
		      //----------------------------------------------------------
		    ElseIf gg.vmc_refresh_d3d  Then
		      Window_Treatment.StaticText_vmc_Status.Text=""
		      tmpstr=gg.OutPut
		      //look for d3d file first
		      if InStr(tmpstr,"No such file ")=0 Then
		        gVMC.vmc_Download_one_dose(gg.vmc_dmx_index,gg.beam_num)
		        gVMC.vmc_Download_one_dose_hed(gg.vmc_dmx_index,gg.beam_num)
		        
		        gVMC.VMC(gg.vmc_dmx_index).beams(gg.beam_num).progress=100
		      else//=== Now look for progress file
		        gVMC.vmc_Refresh_pro(gg.vmc_dmx_index,gg.beam_num)
		      end
		      
		      
		      //----------------------------------------------------------
		      // VMC refresh progress file
		      //----------------------------------------------------------
		    ElseIf gg.vmc_refresh_pro  Then
		      Window_Treatment.StaticText_vmc_Status.Text=""
		      
		      tmpstr=gg.OutPut
		      if InStr(tmpstr,"No such file ")=0 Then
		        One_Line=Split(tmpstr,chr(10))
		        
		        for i=0 to UBound(one_line)
		          temp=Trim(One_Line(i))
		          
		          While InStr(temp,"  ")>0
		            temp=Replace(temp,"  "," ")
		          Wend
		          
		          temp=Trim(temp)
		          k=CountFields(temp," ")
		          
		          if InStr(One_Line(i),"end of batch")>0 or CountFields(temp," ")=6 then
		            
		            if InStr(One_Line(i),"end of batch")>0 Then
		              tmpstr=NthField(One_Line(i),"end of batch",2)
		              vmc_batch_done=val(tmpstr)
		            else
		              vmc_batch_done=val(temp)
		            end
		            
		            
		            
		            
		            if vmc_batch_done>0 Then
		              num_batch=gVMC.VMC(gg.vmc_dmx_index).BEAMS(gg.beam_num).num_batches
		              vmc_pro=vmc_batch_done*100/num_batch
		              if vmc_pro =100 Then
		                gVMC.vmc_Download_one_dose(gg.vmc_dmx_index,gg.beam_num)
		                gVMC.vmc_Download_one_dose_hed(gg.vmc_dmx_index,gg.beam_num)
		                
		              else
		                gVMC.VMC(gg.vmc_dmx_index).beams(gg.beam_num).progress=vmc_pro
		                gVMC.VMC(gg.vmc_dmx_index).Write_VMC_Settings
		                Window_Treatment.mc_vmc_beam_progress
		              end
		            end
		            Exit for i
		            
		          end
		        next
		        
		        // Try and determine if job has crashed
		      else
		        // if queue is at then determine a time difference
		        sysdate=new Date
		        secnow=sysdate.TotalSeconds-gVMC.VMC(gg.vmc_dmx_index).beams(gg.beam_num).Start_Time_Seconds
		        if all(0).shell.batch="at" Then
		          if secnow>300 Then
		            gVMC.VMC(gg.vmc_dmx_index).beams(gg.beam_num).vmc_started=False
		            
		          end
		        end
		      end
		      
		      
		      
		      //----------------------------------------------------------
		      // VMC Run
		      //----------------------------------------------------------
		    ElseIf gg.vmc_run  Then
		      
		      tmpstr=gg.OutPut
		      if InStr(tmpstr,"error")=0 Then
		        Window_Treatment.StaticText_VMC_Status.Text=gg.inpfilename+ " job submitted"
		        gVMC.VMC(gg.vmc_dmx_index).BEAMS(gg.beam_num).vmc_started=True
		      else
		        Window_Treatment.StaticText_VMC_Status.Text= "Error, "+gg.inpfilename+" job not submitted"
		        gVMC.VMC(gg.vmc_dmx_index).BEAMS(gg.beam_num).vmc_started=False
		      end
		      gVMC.VMC(gg.vmc_dmx_index).Write_VMC_Settings
		      
		      
		      //----------------------------------------------------------
		      // Cutout status refresh
		      //----------------------------------------------------------
		    ElseIf gg.cutout_refresh Then
		      Window_Treatment.StaticText_Cutout_Status.Text=""
		      s=gg.OutPut
		      While InStr(s,"  ")>0
		        s=Replace(s,"  "," ")
		      Wend
		      if InStr(s,"no such")=0 Then
		        if InStr(s,"Finished simulation")>0 Then
		          gCutout.Beams(gg.beam_num).progress=100
		          gCutout.Beams(gg.beam_num).Finished=True
		        else
		          ls=Split(s,chr(13))
		          if UBound(ls)>0 Then
		            for i=0 to UBound(ls)
		              One_Line=Split(ls(i)," ")
		              if UBound(One_Line)=10 Then
		                if One_Line(0)="CUTOUTMP--Batch" Then
		                  gCutout.beams(gg.beam_num).progress=abs(val(One_Line(1)))
		                end
		              end
		            next
		          end
		        end
		        Window_Treatment.MC_Cutout_progress
		        gCutout.Writesettings
		      end
		    end
		    
		  end//----------------------------------------
		  // Finished all cases move on to next command
		  //----------------------------------------
		  
		  
		  if UBound(All)>-1 Then
		    all.Remove 0
		  end
		  me.Close
		  
		  
		  if UBound(all)=-1 Then
		    gTimer_Refresh.Period=gTimer_Refresh.Check_Period
		    gTimer_Refresh.Reset
		    
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
		    me.Close
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
