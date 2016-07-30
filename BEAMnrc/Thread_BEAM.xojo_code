#tag Class
Protected Class Thread_BEAM
Inherits Thread
	#tag Event
		Sub Run()
		  //--------------------------------------
		  // 
		  //
		  //--------------------------------------
		  Dim beam as integer
		  //--------------------------------------
		  
		  
		  if egs_run1 then
		    egs_Run1 =False
		    for beam=0 to UBound(gRTOG.Plan(Plan_Index).beam)
		      if Window_Treatment.ListBox_MC_Beam.Cellcheck(beam,0) then
		        egs_Run(beam,True)
		        exit
		      end
		    next
		    Window_Treatment.mc_egs_Beam_Progress_update=True
		    
		    
		    
		  elseif egs_status then
		    egs_status=False
		    for beam=0 to UBound(gRTOG.Plan(Plan_Index).beam)
		      if egs_Refresh(beam) =False Then
		        Exit
		      end
		    next
		    
		    for beam=0 to UBound(gRTOG.Plan(Plan_Index).beam)
		      if egs_Refresh_PhaseSpace(beam)=False Then
		        Exit
		      end
		    next
		    
		    
		  elseif egs_phsp_list then
		    egs_phsp_list=False
		    egs_Read_Phsp_Properties(Window_BEAM_Phsp_Information.beam_index)
		    egs_Run_beamdp(Window_BEAM_Phsp_Information.beam_index)
		    egs_Read_all_phsp_files
		    
		    
		  elseif egs_build Then
		    egs_build=False
		    egs_Make_Module(Window_BEAM_Options.beam_num)
		    
		    
		    
		  elseif egs_exbeam Then // Run a text simulation
		    egs_exbeam=False
		    egs_Run_Test(Window_BEAM_Options.beam_num)
		    
		    
		  elseif egs_addphsp Then
		    egs_addphsp=False
		    beam=Window_BEAM_Options.beam_num
		    egs_AddPhSp(beam)
		    beams(beam).egs_progress=100
		    egs_Write
		    Window_Treatment.MC_egs_beam_progress_update=True
		  end
		  
		  gTimer_Refresh.Period=1000
		  gTimer_Refresh.Reset
		  
		  gTimer_run.Period=1000
		  gTimer_Run.Reset
		  
		  
		  
		  Exception err as TypeMismatchException
		    Errors.Append "Error within BEAM thread: Tried to retype an object!"
		  Exception err as NilObjectException
		    Errors.Append "Error within BEAM thread: Tried to access a Nil object!"
		  Exception err as RuntimeException  // NOT RECOMMENDED
		    Errors.Append "Error within BEAM thread: Another exception"
		    
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub egs_Addbeam()
		  Dim temp as Class_Beam
		  
		  temp = new Class_Beam
		  temp.egs_auto_shell=egs_auto_shell
		  
		  TEMP.Inputfile=NEW Class_BEAM_Inputfile
		  Temp.Inputfile.EGSnrc=new Class_EGSnrc_Inputs
		  
		  
		  gBEAM.Beams.Append temp
		  temp.beam_number=UBound(gBEAM.Beams)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_AddPhSp(beam as integer)
		  //---------------------------
		  // Called by egs_Refresh to
		  // add phase space files
		  //
		  //---------------------------
		  Dim f as FolderItem
		  Dim location(-1),path,command,line,temp,egs_jobq as String
		  Dim ts as TextOutputStream
		  Dim i as integer
		  Dim good as Boolean
		  //----------------------------
		  
		  good=egs_get_directory(Beam)
		  temp=str(beam+1)
		  temp=MC_file_name+temp
		  
		  // Use full path for addphsp
		  if egs_Addphsp_fullpath Then
		    temp=cc.dir+"/"+temp
		  end
		  
		  if gBEAM.beams(beam).egs_jobs<=1 Then
		    // do not need to addphsp for single runs
		    Return
		  end
		  
		  // Assume there are no longer any jobs running
		  gBEAM.Beams(beam).egs_BEAMnrc_active_jobs=0
		  
		  //remove any old phsp files, addphsp and delete w files and addphsp log
		  line= "rm -f "+temp+".egsphsp1"+transfer_endline+_
		  "addphsp "+temp+ " "+temp+" "+Format(gBEAM.beams(beam).egs_jobs,"#")+ " 1 1 > "+temp+".addphsptxt"
		  
		  //Looks to me like this is the section that runs Addphsp.  In Shell Refresh, there's no evidence that this section ever happens.
		  //Is this actually being sent to the command line?  Well, obviously it's not, but is the command to make it do so here?
		  //Alternatively, could it just run the executable?
		  //Observations by William Davis
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child("j"+MC_file_name+str(Beam+1)+".addphsp")
		  ts=f.CreateTextFile
		  if ts=nil Then
		    Return
		  end
		  ts.Write line
		  ts.Close
		  
		  path=f.ShellPath
		  // FTP addphsp line to cluster
		  good=egs_get_directory(Beam)
		  cc.command="put "+path+" "+cc.dir+"/"+f.Name
		  cc.FTP_Now=True
		  cc.egs_addphsp1=True
		  cc.FTP_Files=f
		  cc.beam_num=Beam
		  cc.FTP_Put_file=True
		  cc.FTP_Local_Path=path
		  cc.FTP_Remote_Path=cc.dir+"/"+f.Name
		  MMCTP_Shell_Refresh.All.Append cc
		  
		  // Change mode to exe and execute
		  good=egs_get_directory(Beam)
		  cc.command="chmod u+x " +f.Name
		  MMCTP_Shell_Refresh.All.Append cc
		  
		  // determine how to submit job to batch
		  good=egs_get_directory(Beam)
		  egs_jobq=MC_Autoqueue(10, cc.shell)
		  command=cc.shell.Queue_Submit(egs_jobq, f.Name)
		  cc.command=command
		  cc.egs_addphsp1=True
		  cc.inpfilename=MC_file_name+str(Beam+1)
		  MMCTP_Shell_Refresh.All.Append cc
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function egs_Calculate_Area(beam_i as Integer) As Single
		  //-----------------------------------------------------
		  // Determine aperture size
		  //
		  // Andrew Alexander
		  // Update for Tomo MLC March 2011
		  //-----------------------------------------------------
		  Dim ss,ar,jarea,opening,size,w,w_total,mlc_area as Single
		  Dim i,k as Integer
		  Dim mm as Class_MLC
		  //-----------------------------------------------------
		  jarea=(gRTOG.Plan(Plan_Index).Beam(beam_i).Collimator.fields(0).X1+gRTOG.Plan(Plan_Index).Beam(beam_i).Collimator.fields(0).X2)*_
		  (gRTOG.Plan(Plan_Index).Beam(beam_i).Collimator.fields(0).Y1+gRTOG.Plan(Plan_Index).Beam(beam_i).Collimator.fields(0).Y2)
		  
		  
		  mm=gRTOG.Plan(Plan_Index).Beam(beam_i).MLC
		  if mm.NumberofFields>0 Then
		    ss=0
		    w_total=0
		    for i=0 to UBound(mm.Fields)
		      w_total=mm.Fields(i).Indexnum+w_total
		    next
		    for i=0 to UBound(mm.Fields)
		      w=mm.Fields(i).Indexnum/w_total
		      if mm.Model_Type=0 Then // Normal MLC
		        for k=0 to UBound(mm.Fields(i).Leaf_A)
		          opening=mm.Fields(i).Leaf_A(k)+mm.Fields(i).Leaf_b(k)
		          if (k+1)<=UBound(mm.LeafBoundaries) Then
		            size=abs(mm.LeafBoundaries(k)-mm.LeafBoundaries(k+1))
		            ss=opening*size*w+ss
		          end
		        next
		      else  // Binary MLC
		        for k=0 to UBound(mm.Fields(i).Leaf_A)
		          opening=mm.Fields(i).Leaf_A(k)*(gRTOG.Plan(Plan_Index).Beam(beam_i).Collimator.fields(0).Y1+gRTOG.Plan(Plan_Index).Beam(beam_i).Collimator.fields(0).Y2)
		          ss=opening*w+ss
		        next
		      end
		    next
		    mlc_area=ss
		  end
		  
		  
		  if mlc_area<jarea and mm.NumberofFields>0 Then
		    Return mlc_area
		  else
		    Return jarea
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Clear_beam(beam as integer)
		  //--------------------------------------
		  //Removing previous egsrun beams
		  //
		  //--------------------------------------
		  Dim temp ,sql as String
		  Dim hh,record_found as Boolean
		  Dim bb as RTOG_Beam_Geometry
		  Dim db as SQLiteDatabase //Changed to "SQLiteDatabase by William Davis after REAQLSQPDatabase was found to have  been deprecated
		  Dim f,g,h as FolderItem
		  Dim rs as RecordSet
		  //--------------------------------------
		  
		  
		  if Beams(beam).Inputfile.IRESTART=0 then
		    // New run
		    temp=str(beam+1)
		    // Remove from local folder
		    f=gRTOG.Plan(Plan_Index).Path
		    if f<>nil Then
		      if f.Exists Then
		        g=f.Child(MC_file_name+temp+".egsinp")
		        if g<> nil Then
		          if g.Exists Then
		            g.Delete
		          end
		        end
		        g=f.Child(MC_file_name+temp+".djaws")
		        if g<> nil Then
		          if g.Exists Then
		            g.Delete
		          end
		        end
		        g=f.Child(MC_file_name+temp+".mlc")
		        if g<> nil Then
		          if g.Exists Then
		            g.Delete
		          end
		        end
		      end
		    end
		    
		    h=gRTOG.Plan(Plan_Index).Path
		    beams(beam).egs_BEAMnrc_active_jobs=0
		    beams(beam).egs_BEAMnrc_started=False
		    beams(beam).egs_progress=0
		    beams(beam).egs_phsp_link=False
		    beams(beam).egs_AddPhsp_Finished=False
		    beams(beam).egs_Phsp_Lookup=False
		    beams(beam).egs_phsp_size=0
		    Beams(beam).egs_phsp_num_particles=0
		    Beams(beam).egs_phsp_num_photons=0
		    beams(beam).egs_phsp_name=MC_file_name+str(beam+1)+".egsphsp1"
		    Beams(beam).egs_Start_Time=""
		    Beams(beam).egs_Sim_Time=0
		    
		    
		    hh=egs_Get_Directory(Beam)
		    temp=str(beam+1)
		    temp="*_"+MC_file_name+temp+"_*"
		    cc.command= "rm -f -r  "+temp
		    MMCTP_Shell_Run.All.Append cc
		    
		    
		    hh=egs_Get_Directory(Beam)
		    temp=str(beam+1)
		    temp=MC_file_name+temp+"_* "+MC_file_name+temp+".* "+MC_file_name+temp+"*djaws "
		    cc.command= "rm -f "+temp
		    MMCTP_Shell_Run.All.Append cc
		    
		    // Remove beam from database
		    bb=gRTOG.Plan(Plan_Index).Beam(Beam)
		    
		    db=PhaseSpace
		    if bb.FLEC<>nil Then
		      temp=Format(bb.FLEC.x1,"-#.##")+","+Format(bb.FLEC.x2,"-#.##")+","+Format(bb.FLEC.y1,"-#.##")+","+Format(bb.FLEC.y2,"-#.##")
		    end
		    
		    if db.Connect Then
		      sql="select BeamMode,FileName,BeamEnergy,FLECOpening,LinacName,Shell from PhaseSpaces"
		      rs=db.SQLSelect(sql)
		      if rs=nil Then
		        Return
		      end
		      record_found=False
		      While not rs.EOF
		        if rs.Field("LinacName").StringValue=bb.RT_name and _
		          rs.Field("FileName").StringValue=MC_file_name+str(beam+1) and _
		          rs.Field("Shell").StringValue=cc.shell.title Then
		          record_found=True
		          rs.DeleteRecord
		          db.Commit
		          exit
		        end
		        rs.MoveNext
		      Wend
		      rs.Close
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Copy_Phsp_Old(beam as integer, file_name as string)
		  //--------------------------------------
		  // Creates soft link between two phsp files
		  //
		  //--------------------------------------
		  
		  egs_Clear_beam(Beam)
		  if not egs_Get_Directory(beam) Then
		    Return
		  end
		  cc.command ="ln -s "+file_name +" "+MC_file_name+str(beam+1)+".egsphsp1"
		  MMCTP_Shell_Run.All.Append cc
		  gBEAM.beams(beam).egs_progress=100
		  gBEAM.beams(beam).egs_phsp_link=True
		  gBEAM.beams(beam).egs_phsp_name=file_name
		  gBEAM.egs_Write
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Deletebeam(num as integer)
		  gBEAM.Beams.Remove num
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Delete_bad_egsphsp_files(bindex as Integer)
		  Dim i as Integer
		  Dim hh as Boolean
		  Dim temp as String
		  
		  
		  for i=0 to UBound(Beams(bindex).w_files)
		    
		    if Beams(bindex).w_files(i)=False Then
		      hh=egs_Get_Directory(bindex)
		      temp=str(bindex+1)
		      temp=MC_file_name+temp+"_w"+str(i+1)+".egsphsp1"
		      cc.command= "rm -f -r  "+temp
		      MMCTP_Shell_Refresh.All.Append cc
		    end
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Delete_PhaseSpace_Record(sql as string)
		  //----------------------------------
		  // Update database
		  //----------------------------------
		  dim dr as  DatabaseRecord
		  dim f as FolderItem
		  dim rs as RecordSet
		  dim i as Integer
		  //----------------------------------
		  
		  
		  
		  
		  if PhaseSpace.Connect Then
		    
		    
		    rs = PhaseSpace.SQLSelect(sql)
		    
		    i=PhaseSpace.ErrorCode
		    
		    
		    if rs<> nil Then
		      rs.DeleteRecord
		      
		      
		      if PhaseSpace.Error=False Then
		        PhaseSpace.Commit
		      end
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_download_egslst(num as Integer)
		  //-----------------------------------
		  // Download the egslst file from the BEAMnrc simulation
		  //
		  //-----------------------------------
		  Dim f as FolderItem
		  Dim file_name,temp_Name,path as String
		  Dim good as Boolean
		  Dim i as Integer
		  //-----------------------------------
		  
		  temp_Name=str(num+1)
		  file_name=MC_file_name+temp_Name+".egslst"
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child(file_name)
		  path=f.ShellPath
		  good=egs_Get_Directory(num)
		  
		  // download 3ddose
		  cc.FTP_Files=f
		  cc.FTP_Now=True
		  cc.command="get "+cc.dir+"/"+f.name+" "+path
		  cc.FTP_Get_File=True
		  cc.FTP_Local_Path=path
		  cc.FTP_Remote_Path=cc.dir+"/"+f.name
		  cc.egs_download_egslst=True
		  cc.inpfilename=f.Name
		  cc.beam_num=num
		  
		  good=True
		  for i=UBound(MMCTP_Download.All) DownTo 0
		    if MMCTP_Download.All(i).command=cc.command Then
		      good=False
		      Exit
		    end
		  next
		  
		  if good Then
		    MMCTP_Download.All.Append cc
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function egs_Get_Directory(beam as integer) As boolean
		  //-------------------------------------------------
		  // to update all beam variables
		  // link between beam variables and linac settings
		  // link between beam variables and BEAMnrc settings
		  // link between beam variables and DOS,VMC settings
		  //-------------------------------------------------
		  dim i,x as integer
		  dim name,energy,mode,temp as String
		  //-------------------------------------------------
		  
		  if Plan_Index<0 or Plan_Index>UBound(gRTOG.Plan) Then
		    Return False
		  end
		  
		  if beam<0 or beam>UBound(gRTOG.Plan(Plan_Index).Beam) Then
		    Return False
		  end
		  
		  if Beams(beam).Beamnrc_error Then
		    Return False
		  end
		  
		  name=gRTOG.Plan(Plan_Index).beam(beam).rt_name
		  energy=gRTOG.Plan(Plan_Index).Beam(beam).beam_energy
		  mode=gRTOG.Plan(Plan_Index).Beam(beam).beam_mode
		  
		  if beam> UBound(Beams) or beam< 0 Then
		    Return False
		  end
		  
		  Beams(beam).egs_linac_index=-1
		  
		  // Update the Linac link
		  for i=0 to UBound(gLinacs.All_Linacs)
		    if mode= gLinacs.All_Linacs(i).Mode and _
		      gLinacs.All_Linacs(i).RT_name =name and _
		      gLinacs.All_Linacs(i).Energy = energy then
		      Beams(beam).egs_linac_index=i
		      exit for i
		    end
		  next
		  
		  if Beams(beam).egs_linac_index=-1 Then
		    Errors.append "Error : beam "+str(beam+1)+" is not defined within the list of linacs" //Changed to "Errors.append" by William Davis to avert crashing due to exception
		    Beams(beam).Beamnrc_error=True
		    Return False
		  end
		  
		  if Beams(beam).egs_Shell_Index>-1 and Beams(beam).egs_Shell_Index<=UBound(gShells.Shells) Then
		    cc = new Class_MMCTP_Commands
		    cc.shell=gShells.Shells(Beams(beam).egs_Shell_Index)
		    
		    // Update the BEAMnrc directory
		    Beams(beam).egs_BEAMnrc_dir=""
		    Beams(beam).egs_BEAMnrc_dir=gLinacs.All_Linacs(Beams(beam).egs_linac_index).MC_BEAMnrc_path(Beams(beam).egs_Shell_Index)
		    
		    if Beams(beam).egs_BEAMnrc_dir="" Then
		      Errors.append "Error : beam "+str(beam+1)+" is not configured on shell "+gShells.Shells(Beams(Beam).egs_Shell_Index).title //Changed to "Errors.append" by William Davis to prevent crash due to exception
		      Beams(beam).Beamnrc_error=True
		      Return False
		    end
		    
		    cc.egsnrc_folder_path=gShells.Shells(Beams(beam).egs_Shell_Index).egsnrc_folder_path
		    
		    if cc.shell.OS=3 Then
		      cc.dir=gShells.Shells(Beams(beam).egs_Shell_Index).egsnrc_folder_path+"\"+Beams(beam).egs_BEAMnrc_dir+"\"
		    else
		      cc.dir=gShells.Shells(Beams(beam).egs_Shell_Index).egsnrc_folder_path+"/"+Beams(beam).egs_BEAMnrc_dir+"/"
		    end
		    
		    While InStr(cc.dir,"//")>0
		      cc.dir=Replace(cc.dir,"//","/")
		    Wend
		    
		    gVMC.cc = new Class_MMCTP_Commands //Changed from BEAM to VMC to match mod c by William Davis
		    gBEAM.cc.shell= new Class_Shell_One
		    gBEAM.cc.shell=gShells.Shells(Beams(beam).egs_Shell_Index)
		    
		    for x=0 to UBound(gDOSXYZ.DOSXYZ)
		      if UBound(gDOSXYZ.DOSXYZ(x).DOSXYZ_Input)>=beam Then
		        if gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam).isource=2 Then
		          temp=cc.shell.title
		          gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam).dos_shell=cc.shell.title
		          gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam).dos_shell_index=Beams(beam).egs_Shell_Index
		          
		        end
		      end
		    next
		    
		    Return True
		  else
		    Errors.append "Error : beam "+str(beam+1)+" is not defined within the list of shells" //Changed to "Errors.append" by William Davis to prevent crash due to exception
		    Beams(beam).Beamnrc_error=True
		    Return False
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Initialize()
		  //----------------------------------
		  //
		  //
		  //----------------------------------
		  Dim i as integer
		  Dim f as FolderItem
		  Dim bb as Boolean
		  Dim rs as RecordSet
		  //----------------------------------
		  
		  i=UBound(gRTOG.Plan(Plan_Index).Beam)
		  ReDim Beams(i)
		  
		  for i =0 to UBound(gRTOG.Plan(Plan_Index).Beam)
		    egs_Initialize_One(i)
		  next
		  
		  
		  f=gPref.BEAMnrc_fi
		  f=f.Child("PhaseSpace.rsd")
		  PhaseSpace=new SQLiteDatabase //Changed to "SQLiteDatabase by William Davis after REAQLSQPDatabase was found to have  been deprecated
		  PhaseSpace.DatabaseFile=f
		  if f.Exists Then
		    bb=PhaseSpace.connect
		  else
		    bb=PhaseSpace.CreateDatabaseFile
		    bb=PhaseSpace.connect
		  end
		  
		  //PhaseSpace.
		  
		  //sql="select BeamMode,FileName,BeamEnergy,FLECOpening,LinacName,Shell,JawOpening,MLCOpening from PhaseSpaces"
		  
		  rs=PhaseSpace.SQLSelect("Select * from PhaseSpaces")
		  if rs=nil Then
		    PhaseSpace.SQLExecute "CREATE TABLE PhaseSpaces (BeamMode String, FileName String, BeamEnergy String, FLECOpening String,LinacName String,Shell String,  JawOpening String, MLCOpening String, WEDGE String,APP String)"
		  end
		  
		  
		  rs=PhaseSpace.SQLSelect("Select BeamMode from PhaseSpaces")
		  if rs=nil Then
		    PhaseSpace.SQLExecute "ALTER TABLE PhaseSpaces ADD BeamMode String"
		  end
		  
		  rs=PhaseSpace.SQLSelect("Select FileName from PhaseSpaces")
		  if rs=nil Then
		    PhaseSpace.SQLExecute "ALTER TABLE PhaseSpaces ADD FileName String"
		  end
		  
		  
		  rs=PhaseSpace.SQLSelect("Select BeamEnergy from PhaseSpaces")
		  if rs=nil Then
		    PhaseSpace.SQLExecute "ALTER TABLE PhaseSpaces ADD BeamEnergy String"
		  end
		  
		  rs=PhaseSpace.SQLSelect("Select FLECOpening from PhaseSpaces")
		  if rs=nil Then
		    PhaseSpace.SQLExecute "ALTER TABLE PhaseSpaces ADD FLECOpening String"
		  end
		  
		  rs=PhaseSpace.SQLSelect("Select LinacName from PhaseSpaces")
		  if rs=nil Then
		    PhaseSpace.SQLExecute "ALTER TABLE PhaseSpaces ADD LinacName String"
		  end
		  
		  rs=PhaseSpace.SQLSelect("Select Shell from PhaseSpaces")
		  if rs=nil Then
		    PhaseSpace.SQLExecute "ALTER TABLE PhaseSpaces ADD Shell String"
		  end
		  
		  rs=PhaseSpace.SQLSelect("Select JawOpening from PhaseSpaces")
		  if rs=nil Then
		    PhaseSpace.SQLExecute "ALTER TABLE PhaseSpaces ADD JawOpening String"
		  end
		  
		  rs=PhaseSpace.SQLSelect("Select MLCOpening from PhaseSpaces")
		  if rs=nil Then
		    PhaseSpace.SQLExecute "ALTER TABLE PhaseSpaces ADD MLCOpening String"
		  end
		  
		  rs=PhaseSpace.SQLSelect("Select WEDGE from PhaseSpaces")
		  if rs=nil Then
		    PhaseSpace.SQLExecute "ALTER TABLE PhaseSpaces ADD WEDGE String"
		  end
		  
		  rs=PhaseSpace.SQLSelect("Select APP from PhaseSpaces")
		  if rs=nil Then
		    PhaseSpace.SQLExecute "ALTER TABLE PhaseSpaces ADD APP String"
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Initialize_One(num as Integer)
		  Beams(num)=new Class_Beam
		  Beams(num).Inputfile=new Class_Beam_Inputfile
		  Beams(num).Inputfile.EGSnrc=new Class_EGSnrc_Inputs
		  Beams(num).egs_phsp_name=MC_file_name+str(num+1)+".egsphsp1"
		  Beams(num).beam_number=num
		  Beams(num).egs_auto_shell=egs_auto_shell
		  Beams(num).egs_Phsp_Search=egs_auto_phsp
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Make_Module(beam as integer)
		  //--------------------------------------
		  // Make BEAMnrc Module Script,
		  // 
		  //
		  //--------------------------------------
		  Dim f as FolderItem
		  Dim foldername, tmpstr,tmpstr2,location(-1),path,inputfileN,fname,rrpath as String
		  Dim ts as TextOutputStream
		  Dim i as Integer
		  Dim tt as Boolean
		  //---------------------------------------
		  
		  
		  
		  // Create module file, using template input file name
		  tmpstr="CM names:  "
		  tmpstr2="Identifiers:  "
		  for i=0 to UBound(Beams(beam).Inputfile.CMs)
		    tmpstr=tmpstr+Beams(beam).Inputfile.CMs(i).CM_Names+"  "
		    tmpstr2=tmpstr2+Beams(beam).Inputfile.CMs(i).CM_Identifier+"  "
		  Next
		  tmpstr=tmpstr+EndOfLine.UNIX+tmpstr2
		  tt=egs_Get_Directory(beam)
		  
		  if InStr(gBEAM.Beams(beam).egs_BEAMnrc_dir,"BEAM_")>0 Then
		    inputfileN=NthField(gBEAM.Beams(beam).egs_BEAMnrc_dir,"BEAM_",2)
		  else
		    gBEAM.egs_msg.Append "Error within Make Module Script, BEAMnrc directory name"
		  end
		  
		  fname= inputfileN+".module"
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child(fname)
		  ts=f.CreateTextFile
		  ts.Write tmpstr
		  ts.Close
		  //---------------------
		  
		  
		  // Local path of script
		  path=f.ShellPath
		  tt=egs_Get_Directory(beam)
		  
		  // Upload Scripts
		  cc.FTP_Files=f
		  cc.FTP_Now=True
		  rrpath=cc.egsnrc_folder_path+"/beamnrc/spec_modules/"+f.Name
		  cc.command="put "+path+" "+rrpath
		  cc.inpfilename=f.Name
		  cc.egs_run_script=True
		  cc.beam_num=Beam
		  cc.FTP_Put_file=True
		  cc.FTP_Local_Path=path
		  cc.FTP_Remote_Path=rrpath
		  MMCTP_Shell_Run.All.Append cc
		  
		  
		  //Build the lianc dir
		  tt=egs_Get_Directory(beam)
		  cc.command="beam_build.exe " +inputfileN
		  MMCTP_Shell_Run.All.Append cc
		  
		  
		  //Run make on linac
		  tt=egs_Get_Directory(beam)
		  cc.command="make "
		  MMCTP_Shell_Run.All.Append cc
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Make_Script(beam as integer, name as string)
		  //--------------------------------------
		  // Make BEAMnrc Script,
		  // 
		  //
		  //--------------------------------------
		  Dim f as FolderItem
		  Dim tmpstr,location(-1),path as String
		  Dim ts as TextOutputStream
		  Dim i as Integer
		  Dim tt as Boolean
		  //---------------------------------------
		  
		  tt=egs_Get_Directory(beam)
		  
		  
		  name= name+" -i "+MC_file_name+str(beam+1)+ " -p "+Beams(beam).egs_pegs_file+" > "+cc.dir+"/"+MC_file_name+str(beam+1)+".egslog"
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child("j"+MC_file_name+str(beam+1)+"_run")
		  ts=f.CreateTextFile
		  ts.Write name
		  ts.Close
		  
		  // Local path of script
		  path=f.ShellPath
		  
		  tt=egs_Get_Directory(beam)
		  // Upload Scripts
		  cc.FTP_Files=f
		  cc.FTP_Now=True
		  cc.command="put "+path+" "+cc.dir+"/"+f.Name
		  cc.inpfilename=f.Name
		  cc.egs_run_script=True
		  cc.beam_num=Beam
		  cc.FTP_Put_file=True
		  cc.FTP_Local_Path=path
		  cc.FTP_Remote_Path=cc.dir+"/"+f.Name
		  MMCTP_Shell_Run.All.Append cc
		  
		  //Change mode to exe
		  tt=egs_Get_Directory(beam)
		  cc.command="chmod u+x " +f.Name
		  MMCTP_Shell_Run.All.Append cc
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Read()
		  //--------------------------------------------
		  // Open and read the BEAM_pref.txt file
		  //
		  //--------------------------------------------
		  Dim a,i as Integer
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  Dim temp as string
		  DIm good as Boolean
		  //--------------------------------------------
		  
		  egs_Initialize
		  
		  
		  for a=0 to UBound(gRTOG.Plan(Plan_Index).Beam)
		    
		    IF Beams=nil THEN
		      Raise new RuntimeException
		    END
		    
		    IF a>UBound(Beams) THEN
		      Raise new RuntimeException
		    END
		    
		    good=Beams(a).Get_Plan_Inputfile
		    good=Beams(a).Get_Template_pegs_file
		  Next
		  
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  if f=nil Then
		    Return
		  end
		  
		  f=f.Child("BEAM.txt")
		  if f.Exists=False then
		    Return
		  end
		  
		  ts=f.OpenAsTextFile
		  While ts.EOF=False
		    
		    Temp=ts.ReadLine
		    a=val(NthField(Temp," ",2))-1
		    
		    if a<=UBound(Beams) and a>-1 Then
		      if InStr(Temp,"Number of jobs")>0 Then
		        Beams(a).egs_jobs=Val(NthField(Temp,"=",2))
		        
		      elseif InStr(Temp,"Number of histories")>0 Then
		        Beams(a).egs_num_histories=Val(NthField(Temp,"=",2))
		        
		      elseif InStr(Temp,"Particles per history")>0 Then
		        Beams(a).egs_particle_per_history=Val(NthField(Temp,"=",2))
		        
		      elseif InStr(Temp,"CPU time")>0 Then
		        Beams(a).egs_CPU_time_per_hist=Val(NthField(Temp,"=",2))
		        
		      elseif InStr(Temp,"Progress")>0 Then
		        Beams(a).egs_progress=Val(NthField(Temp,"=",2))
		        
		      elseif InStr(Temp,"PEGS file")>0 Then
		        Beams(a).egs_pegs_file=Trim(NthField(Temp,"=",2))
		        
		      elseif InStr(Temp,"Desired Phsp particle density")>0 Then
		        Beams(a).egs_desired_phsp_particle_density=Val(NthField(Temp,"=",2))
		        
		      elseif InStr(Temp,"Queue")>0 and  InStr(Temp,"auto")<0  Then
		        Beams(a).egs_queue=Trim(NthField(Temp,"=",2))
		        
		      elseif InStr(Temp,"Phsp Size")>0 Then
		        Beams(a).egs_phsp_size=val(NthField(Temp,"=",2))
		        
		      elseif InStr(Temp,"Linac Index")>0 Then
		        Beams(a).egs_linac_index=val(NthField(Temp,"=",2))
		        
		      elseif InStr(Temp,"Phsp # Particles")>0 Then
		        Beams(a).egs_phsp_num_particles=val(NthField(Temp,"=",2))
		        
		      elseif InStr(Temp,"Phsp # Photons")>0 Then
		        Beams(a).egs_phsp_num_photons=val(NthField(Temp,"=",2))
		        
		        
		      elseif InStr(Temp,"Phsp link")>0 Then
		        temp=NthField(Temp,"=",2)
		        if InStr(Temp,"True")>0 Then
		          Beams(a).egs_phsp_link=True
		        else
		          Beams(a).egs_phsp_link=False
		        end
		        
		      elseif InStr(Temp,"Phsp Name")>0 Then
		        Beams(a).egs_phsp_name=Trim(NthField(Temp,"=",2))
		        
		        
		      elseif InStr(Temp,"SimTime")>0 Then
		        Beams(a).egs_Sim_Time=val(NthField(Temp,"=",2))
		        
		      elseif InStr(Temp,"BEAMnrc run started")>0 Then
		        temp=NthField(Temp,"=",2)
		        if InStr(Temp,"True")>0 Then
		          Beams(a).egs_BEAMnrc_started=True
		        else
		          Beams(a).egs_BEAMnrc_started=False
		        end
		        
		      elseif InStr(Temp,"Number of BEAMnrc jobs running")>0 Then
		        Beams(a).egs_BEAMnrc_active_jobs=Val(NthField(Temp,"=",2))
		        
		      elseif InStr(Temp,"AddPhsp Finished")>0 Then
		        temp=NthField(Temp,"=",2)
		        if InStr(Temp,"True")>0 Then
		          Beams(a).egs_AddPhsp_Finished=True
		        else
		          Beams(a).egs_AddPhsp_Finished=False
		        end
		        
		        
		      elseif InStr(Temp,"Phsp Lookup Finished")>0 Then
		        temp=NthField(Temp,"=",2)
		        if InStr(Temp,"True")>0 Then
		          Beams(a).egs_Phsp_Lookup=True
		        else
		          Beams(a).egs_Phsp_Lookup=False
		        end
		        
		      elseif InStr(Temp,"BEAMnrc start time")>0 Then
		        Beams(a).egs_Start_Time=Trim(NthField(Temp,"=",2))
		        
		      elseif InStr(Temp,"BEAMnrc shell")>0 Then
		        Beams(a).egs_Shell=Trim(NthField(Temp,"=",2))
		        for i=0 to UBound(gShells.Shells)
		          if gShells.Shells(i).title=Beams(a).egs_Shell Then
		            Beams(a).egs_Shell_Index=i
		          end
		        next
		        
		        
		        
		        
		      elseif InStr(Temp,"auto shell")>0 Then
		        temp=NthField(Temp,"=",2)
		        if InStr(Temp,"True")>0 Then
		          Beams(a).egs_auto_shell=True
		        else
		          Beams(a).egs_auto_shell=False
		        end
		        
		        
		      elseif InStr(Temp,"calculate")>0 Then
		        temp=NthField(Temp,"=",2)
		        if InStr(Temp,"True")>0 Then
		          Beams(a).calculate=True
		        else
		          Beams(a).calculate=False
		        end
		        
		      elseif InStr(Temp,"auto queue")>0 Then
		        temp=NthField(Temp,"=",2)
		        if InStr(Temp,"True")>0 Then
		          Beams(a).auto_queue=True
		        else
		          Beams(a).auto_queue=False
		        end
		      end
		      
		      if Beams(a).egs_progress=100 Then
		        Beams(a).egs_BEAMnrc_active_jobs=0
		      end
		    end
		  Wend
		  ts.Close
		  
		  
		  Exception exc as RuntimeException
		    MsgBox "oops - there's something wrong"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Read_AddPhSp(beam as integer)
		  //---------------------------
		  // Called by Logic to
		  // determine if addphsp has finished
		  //
		  //---------------------------
		  Dim temp as String
		  Dim good as Boolean
		  //----------------------------
		  
		  
		  good=egs_get_directory(Beam)
		  temp=str(beam+1)
		  temp=MC_file_name+temp+".addphsptxt" //Changed to include the "j" by William Davis; "j" subsequently removed, since it belongs in egs_AddPhSp
		  cc.command= "tail " + temp
		  cc.beam_num=beam
		  cc.egs_addphsp_check=True
		  cc.inpfilename=MC_file_name+str(Beam+1)
		  MMCTP_Shell_Refresh.All.Append cc
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Read_All_phsp_files()
		  '========================================
		  if not egs_Get_Directory(Window_BEAM_Phsp_Information.beam_index) Then
		    Return
		  end
		  cc.beam_num=Window_BEAM_Phsp_Information.beam_index
		  cc.command=cc.shell.listfiles +" *.egsphsp*"
		  cc.egs_phsp_list=True
		  MMCTP_Shell_Refresh.All.Append cc
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Read_Default()
		  //------------------------------------
		  //
		  //
		  //------------------------------------
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  Dim ss,oneline as String
		  Dim i as Integer
		  //------------------------------------
		  
		  
		  f=gPref.BEAMnrc_fi
		  f=f.Child("BEAM-Settings.txt")
		  
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
		  
		  
		  While ts.EOF=False
		    oneline=ts.ReadLine
		    
		    if InStr(oneline,"Auto Run")>0 Then
		      
		      if InStr(oneline,"yes")>0Then
		        egs_auto_run=True
		      else
		        egs_auto_run=False
		      end
		      
		    elseif  InStr(oneline,"Num Jobs")>0 Then
		      egs_Num_Jobs=val(NthField(oneline,"=",2))
		      
		    elseif  InStr(oneline,"MinNumJobs")>0 Then
		      egs_Min_Num_Jobs=val(NthField(oneline,"=",2))
		      
		    elseif  InStr(oneline,"IDAT")>0 Then
		      egs_IDAT=val(NthField(oneline,"=",2))
		      
		    elseif  InStr(oneline,"IZLAST")>0 Then
		      egs_IZLAST=val(NthField(oneline,"=",2))
		      
		      
		      
		    elseif InStr(oneline,"Auto Refresh")>0 Then
		      if InStr(oneline,"yes")>0Then
		        egs_auto_refresh=True
		      else
		        egs_auto_refresh=False
		      end
		      
		      
		    elseif InStr(oneline,"Remove")>0 Then
		      if InStr(oneline,"yes")>0Then
		        Remove_w_files=True
		      else
		        Remove_w_files=False
		      end
		      
		    elseif InStr(oneline,"Auto Shell")>0 Then
		      if InStr(oneline,"yes")>0Then
		        egs_auto_shell=True
		      else
		        egs_auto_shell=False
		      end
		      
		      
		    elseif InStr(oneline,"AutoPhsp")>0 Then
		      if InStr(oneline,"no")>0Then
		        egs_auto_phsp=True
		      else
		        egs_auto_phsp=False
		      end
		      
		    elseif InStr(oneline,"AutoMaxJob")>0 Then
		      if InStr(oneline,"no")>0Then
		        egs_automaxjob=True
		      else
		        egs_automaxjob=False
		      end
		      
		    elseif InStr(oneline,"Addphspfullpath")>0 Then
		      if InStr(oneline,"yes")>0Then
		        egs_Addphsp_fullpath=True
		      else
		        egs_Addphsp_fullpath=False
		      end
		      
		    elseif InStr(oneline,"ForceAddphsp")>0 Then
		      if InStr(oneline,"yes")>0Then
		        egs_force_addphsp=True
		      else
		        egs_force_addphsp=False
		      end
		      ss=NthField(oneline," ",2)
		      egs_force_addphsp_value=val(ss)
		      
		      
		    end
		  Wend
		  ts.Close
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Read_egslst(beam as Integer)
		  //--------------------------------------
		  // Readin egslst file
		  // Read total simulation time 
		  //--------------------------------------
		  Dim name,line as String
		  Dim hh as Boolean
		  Dim tx as TextInputStream
		  Dim f as FolderItem
		  Dim time as Single
		  //--------------------------------------
		  
		  
		  name=MC_file_name+str(beam+1)+".egslst"
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child(Name)
		  if f.Exists Then
		    tx=f.OpenAsTextFile
		    name=tx.ReadAll
		    tx.Close
		    line=NthField(name,"TOTAL CPUTIME =",2)
		    Time=Val(line)
		    if time>0 Then
		      Beams(Beam).egs_Sim_Time=time
		      egs_Write
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Read_Phsp_Properties(beam as integer)
		  //------------------------------------------------------
		  // Looks for a specific phsp file and returns the size
		  // else
		  // returns that the phsp file dose not exist
		  //------------------------------------------------------
		  dim beam_num,inpfilename as string
		  dim good as Boolean
		  '========================================
		  
		  
		  beam_num=Str(Beam+1)
		  good=egs_Get_Directory(beam)
		  if good=False Then
		    Return
		  end
		  if gBEAM.beams(beam).egs_phsp_link=False Then
		    inpfilename=MC_file_name+beam_num+".egsphsp1"
		  else
		    inpfilename=gBEAM.beams(beam).egs_phsp_name
		  end
		  cc.command=cc.shell.listfiles+" "+inpfilename
		  cc.egs_Read_Phsp_Properties=True
		  cc.beam_num=beam
		  cc.inpfilename=inpfilename
		  MMCTP_Shell_Refresh.All.Append cc
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function egs_Refresh(beam as integer) As Boolean
		  //-----------------------------------
		  // UpDating BEAMnrc progress by looking at
		  // *.lock file
		  //
		  //------------------------------------
		  dim inpfilename as string
		  '============================
		  
		  
		  if not egs_Get_Directory(beam) or Beams(beam).egs_BEAMnrc_started=False then
		    // Next Beam
		    Return True
		  end
		  
		  if cc.shell.online=False Then
		    // Next Beam
		    Return True
		  end
		  
		  if beams(beam).egs_progress=100  Then
		    if beams(beam).egs_AddPhsp_Finished=False and gBEAM.cc.shell.online Then //Look at PhaseSpace
		      gBEAM.egs_Read_AddPhSp(beam)
		    end
		    
		  elseif beams(beam).egs_BEAMnrc_started Then
		    // if we are running one job
		    if Beams(Beam).egs_jobs=1 Then
		      egs_Refresh_Logfiles(Beam)
		    Else
		      //Read the lock file
		      inpfilename=MC_file_name+str(beam+1)+".lock"
		      cc.command= "tail "+inpfilename
		      cc.egs_refresh=True
		      cc.beam_num=beam
		      cc.inpfilename=inpfilename
		      MMCTP_Shell_Refresh.All.Append cc
		      
		    end
		  end
		  
		  // Next Beam
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Refresh_Logfiles(beam as integer)
		  //--------------------------------------
		  // Look at w log files and check if they are finished
		  //
		  //--------------------------------------
		  dim i as Integer
		  dim good as Boolean
		  //--------------------------------------
		  
		  
		  
		  if beams(beam).egs_progress=100 then
		    Return
		  end
		  
		  ReDim Beams(beam).w_files(Beams(beam).egs_jobs-1)
		  
		  if Beams(beam).egs_jobs>1 Then
		    for i=0 to gBEAM.beams(beam).egs_jobs-1
		      good=egs_get_directory(Beam)
		      Beams(beam).w_files(i)=False
		      cc.egs_w_index=i
		      cc.inpfilename=MC_file_name+str(beam+1)+"_w"+str(i+1)+".egslog"
		      cc.command= "tail " + cc.inpfilename
		      cc.egs_refresh_log=True
		      cc.beam_num=beam
		      MMCTP_Shell_Refresh.All.Append cc
		    next
		  else
		    // For one running job
		    good=egs_get_directory(Beam)
		    Beams(beam).w_files(i)=False
		    cc.egs_w_index=i
		    cc.inpfilename=MC_file_name+str(beam+1)+".egslog"
		    cc.command= "tail " + cc.inpfilename
		    cc.egs_refresh_log=True
		    cc.beam_num=beam
		    MMCTP_Shell_Refresh.All.Append cc
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function egs_Refresh_PhaseSpace(beam as integer) As Boolean
		  //-----------------------------------
		  // UpDating BEAMnrc progress by looking at
		  // *.lock file
		  //
		  //------------------------------------
		  dim inpfilename as string
		  '============================
		  
		  
		  if not egs_Get_Directory(beam) or Beams(beam).egs_BEAMnrc_started=False then
		    Return True
		  end
		  
		  if cc.shell.online=False Then
		    Return True
		  end
		  
		  if beams(beam).egs_progress=100  Then
		    if gBEAM.Beams(beam).egs_AddPhsp_Finished=True and gBEAM.Beams(beam).egs_Phsp_Lookup=false  and gBEAM.cc.shell.online  Then //BEAMDP run
		      gBEAM.egs_Read_Phsp_Properties(beam)
		      gBEAM.egs_Run_beamdp(beam)
		      Return False
		    end
		  end
		  
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Refresh_RunDirectories(beam as integer)
		  //--------------------------------------
		  // Look for egs run directories 
		  //
		  //--------------------------------------
		  dim i as Integer
		  dim good as Boolean
		  //--------------------------------------
		  
		  
		  
		  if Beams(beam).egs_jobs>1 Then
		    good=egs_get_directory(Beam)
		    cc.inpfilename=MC_file_name+str(beam+1)
		    cc.command=cc.shell.listfiles +" egsrun*"+cc.inpfilename+"*"
		    cc.egs_refresh_egsrun=True
		    cc.beam_num=beam
		    MMCTP_Shell_Refresh.All.Append cc
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Remove_w_files(beam as Integer)
		  //--------------------------------------
		  // Remove all _w* files previous egsrun beams
		  //
		  //--------------------------------------
		  Dim name as String
		  Dim hh as Boolean
		  //--------------------------------------
		  
		  
		  name=MC_file_name+str(beam+1)+"_w*"
		  hh=egs_Get_Directory(Beam)
		  cc.command= "rm -f "+name
		  MMCTP_Shell_Refresh.All.Append cc
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Run(beam as integer, manual as Boolean)
		  //--------------------------------------------------
		  // Method to generate new BEAMnrc input file and submit
		  // to the queueing system
		  //
		  //--------------------------------------------------
		  dim temp(-1),input_file,tmstr,line,egs_jobq,exe_name,bversion as string
		  dim maxjob as Integer
		  dim good as Boolean
		  dim t as Single
		  '===================================
		  
		  if beams(beam).Beamnrc_error=True Then
		    Return
		  end
		  
		  
		  if Beams(BEAM).egs_auto_shell Then
		    good=MC_Determine_Which_Shell_BEAMnrc(BEAM,0)
		  else
		    good=egs_Get_Directory(Beam)
		  end
		  
		  // If there was a problem with the shell or with the properties of the Linac beam
		  if good=False Then
		    Return
		  end
		  
		  //Remove old files
		  egs_clear_beam(beam)
		  
		  good=egs_Get_Directory(beam)
		  exe_name=Beams(beam).egs_BEAMnrc_dir
		  input_file=MC_file_name+str(beam+1)
		  
		  // Update Progress bars
		  Window_Treatment.MC_egs_beam_progress_update=True
		  
		  
		  // Determine Max number of jobs, for auto run
		  if manual=False Then
		    MC_Count_Number_Jobs
		    good=egs_Get_Directory(beam)
		    maxjob=gBEAM.cc.shell.MaxJobs-gBEAM.cc.shell.ActiveJobs
		    if maxjob<gBEAM.egs_Min_Num_Jobs Then
		      Return
		    elseif maxjob<gBEAM.Beams(beam).egs_jobs then
		      Beams(beam).egs_jobs=maxjob
		    end
		  end
		  
		  bversion=gShells.Shells(gBEAM.Beams(beam).egs_Shell_Index).Beamnrc_v
		  
		  // Generate new input file
		  good=Beams(beam).Write_Inputfile(bversion)
		  if good=False Then
		    gBEAM.egs_msg.append "Error, input file could not be generated, exiting egs_Run method"
		    Return
		  end
		  
		  // FTP files to cluster IP
		  good=egs_Get_Directory(beam)
		  egs_Uploadfiles(beam)
		  
		  // Determine job queue
		  good=egs_Get_Directory(beam)
		  if Beams(Beam).auto_queue Then
		    t=Beams(beam).egs_num_histories/Beams(beam).egs_jobs*gBEAM.Beams(beam).egs_CPU_time_per_hist/60
		    egs_jobq=MC_Autoqueue(t, cc.shell)
		    Beams(beam).egs_queue=egs_jobq
		  else
		    egs_jobq=Beams(beam).egs_queue
		  end
		  egs_Write
		  
		  // Update the pegs file in the event that it is blank
		  if beams(beam).egs_pegs_file="" Then
		    MC_Get_Linac_Properties_BEAMnrc_Pegsfile(Beam)
		  end
		  
		  if beams(beam).egs_jobs>1 Then // determine how to submit job to batch
		    line= egs_sub+" "+exe_name +" "+input_file+ " "+beams(beam).egs_pegs_file+" "+ egs_jobq +" "+_
		    "batch="+cc.shell.batch+" p="+  str(beams(beam).egs_jobs)
		  else  // If submitting one job
		    egs_Make_Script(Beam,exe_name)
		    Line=cc.Shell.Queue_Submit(egs_jobq,"j"+MC_file_name+str(beam+1)+"_run")
		    good=egs_get_directory(Beam)
		  end
		  
		  Line=Replace(line,"  "," ")
		  cc.beam_num=Beam
		  cc.command =line
		  cc.egs_run=True
		  cc.inpfilename=input_file
		  MMCTP_Shell_Run.All.Append cc
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Run_Beamdp(beam as integer)
		  //-----------------------------------------------------------------------
		  // Run BEAMDP to determine Phase Space properties
		  //
		  //
		  //====================================================
		  dim tmpstr,inpfilename,path,temp,location(-1)  as string
		  dim good as Boolean
		  Dim f as FolderItem
		  Dim ts as TextOutputStream
		  '======================
		  
		  good=egs_Get_Directory(beam)
		  
		  if gBEAM.beams(beam).egs_phsp_link=False Then
		    inpfilename=MC_file_name+str(beam+1)+".egsphsp1"
		  else
		    inpfilename=gBEAM.beams(beam).egs_phsp_name
		  end
		  
		  
		  tmpstr="beamdp  >> beamdp_temp <<!"+chr(10)+_
		  "Y"+ chr(10)+_
		  "11"+ chr(10)+_
		  "1,2"+ chr(10)+_
		  inpfilename+chr(10)+"!"
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child("beamdp_"+MC_file_name+str(Beam+1))
		  ts=f.CreateTextFile
		  if ts=nil Then
		    Return
		  end
		  ts.Write tmpstr
		  ts.Close
		  
		  path=f.ShellPath
		  cc.command="put "+path+" "+cc.dir+"/"+f.Name
		  cc.FTP_Now=True
		  cc.FTP_Files=f
		  cc.FTP_Put_file=True
		  cc.FTP_Local_Path=path
		  cc.FTP_Remote_Path=cc.dir+"/"+f.Name
		  cc.beam_num=Beam
		  cc.egs_beamdp=True
		  MMCTP_Shell_Refresh.All.Append cc
		  
		  
		  // Change mode to exe 
		  good=egs_Get_Directory(beam)
		  cc.command="chmod u+x " +f.Name
		  MMCTP_Shell_Refresh.All.Append cc
		  
		  
		  //and execute
		  good=egs_Get_Directory(beam)
		  cc.command="./"+f.Name
		  MMCTP_Shell_Refresh.All.Append cc
		  
		  
		  // Read beam dp file
		  good=egs_Get_Directory(beam)
		  cc.command="tail -25  beamdp_temp"
		  cc.egs_beamdp=True
		  cc.beam_num=beam
		  MMCTP_Shell_Refresh.All.Append cc
		  
		  // Remove beamdp file
		  good=egs_Get_Directory(beam)
		  cc.command="rm -f beamdp_*"
		  MMCTP_Shell_Refresh.All.Append cc
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub egs_Run_Test(beam as integer)
		  //===============================================
		  // Run a small number of histories to determine a few 
		  // properties of the simulation
		  //
		  //
		  //===============================================
		  dim temp,line,exe_name,temp1(-1), tmpstr,inpfilename,bversion as string
		  dim good as Boolean
		  dim test_history,tempdat as Integer
		  dim num_part as Int64
		  //===============================================
		  
		  // Input file name
		  inpfilename=MC_file_name+str(beam+1)
		  
		  
		  // Determine which shell to use
		  if Beams(BEAM).egs_auto_shell Then
		    good=MC_Determine_Which_Shell_BEAMnrc(BEAM,1)
		  else
		    good=egs_Get_Directory(Beam)
		  end
		  
		  if good=False Then
		    Return
		  end
		  
		  // Remove old runs
		  egs_Clear_beam(Beam)
		  
		  bversion=gShells.Shells(gBEAM.Beams(beam).egs_Shell_Index).Beamnrc_v
		  
		  
		  gBEAM.Beams(beam).egs_particle_per_history=0
		  gBEAM.Beams(beam).egs_CPU_time_per_hist=0
		  
		  test_history=gBEAM.Beams(beam).Num_test_hist
		  
		  if app.which_window_BEAM_Options Then
		    Window_BEAM_Options.UpdateWindow=True
		  end
		  
		  // Switch the number of histories to 10000, make input file, also set IDAT=0
		  num_part=beams(beam).egs_num_histories
		  beams(beam).egs_num_histories=test_history
		  tempdat=beams(beam).Inputfile.idat
		  beams(beam).Inputfile.idat=0
		  good=Beams(beam).Write_Inputfile(bversion)
		  if good=False Then
		    Return
		  end
		  beams(beam).egs_num_histories=num_part
		  beams(beam).Inputfile.idat=tempdat
		  
		  
		  
		  //upload input file
		  egs_Uploadfiles(beam)
		  
		  
		  
		  // Run BEAMnrc interactively
		  exe_name=beams(beam).egs_BEAMnrc_dir
		  
		  line= exe_name+ " -i "+inpfilename+ " -p "+beams(beam).egs_pegs_file
		  good=egs_Get_Directory(Beam)
		  cc.command= line
		  cc.beam_num=Beam
		  cc.inpfilename=inpfilename
		  cc.egs_exbeam=True
		  cc.OutPutWindow=1
		  MMCTP_Shell_Run.All.Append cc
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function egs_Search_for_Opening(beam as integer, typea as Integer, Wantedshell_name as String) As Boolean
		  //------------------------------------------
		  //typea=1 Then // If the beam has finished before, BEAMnrc logic
		  // typea=2 Then // FLEC logic If the number of available jobs is greater than 0, DOSYXZnrc logic
		  //
		  //------------------------------------------
		  Dim sql,FLEC,JAW,MLC,WEDGE,APP,shell_name,inputfile(-1) as String
		  Dim ava_jobs,i,k,shell_index,findex as Integer
		  Dim found_file(-1) as String
		  dim good as Boolean
		  dim tt,record_found as Boolean
		  Dim bb as RTOG_Beam_Geometry
		  Dim rs as RecordSet
		  //------------------------------------------
		  
		  Beams(beam).egs_Phsp_Search=True
		  bb=gRTOG.Plan(Plan_Index).Beam(Beam)
		  tt=egs_Get_Directory(Beam)
		  record_found=False
		  
		  
		  if bb.Beam_Mode="FLEC" Then
		    FLEC=Format(bb.FLEC.x1,"-#.##")+","+Format(bb.FLEC.x2,"-#.##")+","+Format(bb.FLEC.y1,"-#.##")+","+Format(bb.FLEC.y2,"-#.##")
		  end
		  
		  App=bb.Aperture_ID
		  WEDGE=bb.Wedge_Type+bb.Wedge_Angle+bb.Wedge_Rotation
		  
		  JAW=Format(bb.Collimator.Fields(0).x1,"-#.##")+","+Format(bb.Collimator.Fields(0).x2,"-#.##")+","+Format(bb.Collimator.Fields(0).y1,"-#.##")+","+Format(bb.Collimator.Fields(0).y2,"-#.##")
		  
		  if bb.MLC.MLC_Type<>"" Then
		    gRTOG.Plan(Plan_Index).Write_McGill_MLC(beam)
		    MLC=gRTOG.Plan(Plan_Index).Beam(beam).mlc.mlc_file
		  end
		  
		  if PhaseSpace.Connect Then
		    sql="select BeamMode,FileName,BeamEnergy,FLECOpening,LinacName,Shell,JawOpening,MLCOpening,WEDGE,APP from PhaseSpaces"
		    rs=PhaseSpace.SQLSelect(sql)
		    if rs= Nil Then
		      Return False
		    end
		    record_found=False
		    While not rs.EOF
		      
		      if bb.Beam_Mode="FLEC" Then
		        if rs.Field("BeamMode").StringValue=bb.Beam_Mode and _
		          rs.Field("BeamEnergy").IntegerValue=val(bb.Beam_Energy) and _
		          rs.Field("FLECOpening").StringValue=FLEC and _
		          rs.Field("LinacName").StringValue=bb.RT_name and _
		          rs.Field("APP").StringValue=APP then
		          
		          //rs.Field("JawOpening").StringValue=JAW and _
		          //rs.Field("WEDGE").StringValue=WEDGE and _
		          //rs.Field("MLCOpening").StringValue=MLC and _
		          inputfile.append rs.Field("FileName").StringValue+".egsphsp1"
		          found_file.Append rs.Field("Shell").StringValue
		          record_found=True
		        end
		      elseif bb.Beam_Mode="Photon" then
		        if rs.Field("BeamMode").StringValue=bb.Beam_Mode and _
		          rs.Field("BeamEnergy").IntegerValue=val(bb.Beam_Energy) and _
		          rs.Field("FLECOpening").StringValue=FLEC and _
		          rs.Field("JawOpening").StringValue=JAW and _
		          rs.Field("MLCOpening").StringValue=MLC and _
		          rs.Field("WEDGE").StringValue=WEDGE and _
		          rs.Field("APP").StringValue=APP and _
		          rs.Field("LinacName").StringValue=bb.RT_name Then
		          inputfile.append rs.Field("FileName").StringValue+".egsphsp1"
		          found_file.Append rs.Field("Shell").StringValue
		          record_found=True
		        end
		        
		        
		        
		      else
		        if rs.Field("BeamMode").StringValue=bb.Beam_Mode and _
		          rs.Field("BeamEnergy").IntegerValue=val(bb.Beam_Energy) and _
		          rs.Field("FLECOpening").StringValue=FLEC and _
		          rs.Field("JawOpening").StringValue=JAW and _
		          rs.Field("MLCOpening").StringValue=MLC and _
		          rs.Field("WEDGE").StringValue=WEDGE and _
		          rs.Field("APP").StringValue=APP and _
		          rs.Field("LinacName").StringValue=bb.RT_name Then
		          inputfile.append rs.Field("FileName").StringValue+".egsphsp1"
		          found_file.Append rs.Field("Shell").StringValue
		          record_found=True
		        end
		        
		      end
		      
		      rs.MoveNext
		    Wend
		    rs.Close
		  end
		  
		  ava_jobs=-1
		  
		  if record_found Then
		    shell_index=0
		    shell_name=found_file(0)
		    if typea=1 Then // If the beam has finished before, BEAMnrc logic
		      for i=0 to UBound(found_file)
		        for k=0 to UBound(gShells.Shells)
		          if gShells.Shells(k).title=found_file(i) and gShells.Shells(k).online Then
		            if (gShells.Shells(k).MaxJobs- gShells.Shells(k).ActiveJobs)> ava_jobs Then
		              ava_jobs=gShells.Shells(k).MaxJobs- gShells.Shells(k).ActiveJobs
		              shell_index=k
		              shell_name=found_file(i)
		              findex=i
		            end
		          end
		        next
		      next
		      gBEAM.Beams(Beam).egs_Shell_Index=shell_index
		      gBEAM.Beams(Beam).egs_Shell=shell_name
		      gBEAM.Beams(Beam).egs_Phsp_link=True
		      gBEAM.Beams(Beam).egs_Phsp_name=inputfile(findex)
		      gBEAM.Beams(Beam).egs_progress=100
		      gBEAM.Beams(Beam).egs_AddPhsp_Finished=True
		      gBEAM.Beams(Beam).egs_BEAMnrc_started=True
		      MC_Get_Linac_Properties_for_patientdose(beam)
		      Return True
		      
		    elseif typea=2 Then // FLEC logic If the number of available jobs is greater than 0, DOSYXZnrc logic
		      for i=0 to UBound(found_file)
		        for k=0 to UBound(gShells.Shells)
		          if gShells.Shells(k).title=found_file(i) and gShells.Shells(k).online and Wantedshell_name=found_file(i) Then
		            shell_index=k
		            shell_name=found_file(i)
		            gBEAM.Beams(Beam).egs_Shell_Index=shell_index
		            gBEAM.Beams(Beam).egs_Shell=shell_name
		            gBEAM.Beams(Beam).egs_Phsp_link=True
		            gBEAM.Beams(Beam).egs_Phsp_name=inputfile(i)
		            gBEAM.Beams(Beam).egs_progress=100
		            gBEAM.Beams(Beam).egs_AddPhsp_Finished=True
		            gBEAM.Beams(Beam).egs_BEAMnrc_started=True
		            MC_Get_Linac_Properties_for_patientdose(beam)
		            Return True
		          end
		        next
		      next
		    end
		  end
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Update_PhaseSpace_Record(bb as integer)
		  //----------------------------------
		  // Update database
		  //----------------------------------
		  dim dr as  DatabaseRecord
		  dim i,k as Integer
		  dim JAW,MLC,sql,flec,app,wedge as String
		  dim beam as RTOG_Beam_Geometry
		  dim tt,record_found as Boolean
		  dim db as SQLiteDatabase //Changed to "SQLiteDatabase by William Davis after REAQLSQPDatabase was found to have  been deprecated
		  dim rs as RecordSet
		  //----------------------------------
		  
		  
		  db=PhaseSpace
		  
		  if db.Connect Then
		    dr = new DatabaseRecord
		    beam=gRTOG.Plan(Plan_Index).Beam(bb)
		    dr.Column("BeamMode")=gRTOG.Plan(Plan_Index).Beam(bb).beam_mode
		    dr.Column("FileName")=MC_file_name+str(bb+1)
		    i=val(gRTOG.Plan(Plan_Index).Beam(bb).Beam_Energy)
		    dr.Column("BeamEnergy")=str(i)
		    if gRTOG.Plan(Plan_Index).Beam(bb).beam_mode="FLEC" Then
		      flec=Format(beam.FLEC.x1,"-#.##")+","+Format(beam.FLEC.x2,"-#.##")+","+Format(beam.FLEC.y1,"-#.##")+","+Format(beam.FLEC.y2,"-#.##")
		      dr.Column("FLECOpening")=flec
		    end
		    
		    App=beam.Aperture_ID
		    dr.Column("APP")=App
		    
		    WEDGE=beam.Wedge_Type+beam.Wedge_Angle+beam.Wedge_Rotation
		    dr.Column("WEDGE")=wedge
		    
		    jaw=Format(beam.Collimator.Fields(0).X1,"-#.##")+","+Format(beam.Collimator.Fields(0).X2,"-#.##")+","+Format(beam.Collimator.Fields(0).Y1,"-#.##")+","+Format(beam.Collimator.Fields(0).Y2,"-#.##")
		    dr.Column("JawOpening")=jaw
		    
		    if beam.MLC.MLC_Type<>"" Then
		      gRTOG.Plan(Plan_Index).Write_McGill_MLC(bb)
		      mlc=Beam.MLC.MLC_File
		      dr.Column("MLCOpening")=mlc
		    end
		    
		    dr.Column("LinacName")=gRTOG.Plan(Plan_Index).Beam(bb).RT_name
		    tt=egs_Get_Directory(bb)
		    if tt Then
		      dr.Column("Shell")=cc.shell.title
		    end
		    
		    sql="select BeamMode,FileName,BeamEnergy,FLECOpening,LinacName,Shell,JawOpening,MLCOpening,WEDGE,APP from PhaseSpaces"
		    rs=db.SQLSelect(sql)
		    if rs=Nil Then
		      Exit
		    end
		    record_found=False
		    While not rs.EOF
		      if rs.Field("BeamMode").StringValue=dr.Column("BeamMode") and _
		        rs.Field("FileName").StringValue=dr.Column("FileName") and _
		        rs.Field("BeamEnergy").IntegerValue=val(dr.Column("BeamEnergy")) and _
		        rs.Field("FLECOpening").StringValue=dr.Column("FLECOpening") and _
		        rs.Field("LinacName").StringValue=dr.Column("LinacName") and _
		        rs.Field("Shell").StringValue=dr.Column("Shell")  and _
		        rs.Field("JawOpening").StringValue=dr.Column("JawOpening") and _
		        rs.Field("WEDGE").StringValue=dr.Column("WEDGE") and _
		        rs.Field("APP").StringValue=dr.Column("APP") and _
		        rs.Field("MLCOpening").StringValue=dr.Column("MLCOpening")  Then
		        record_found=True
		      end
		      rs.MoveNext
		    Wend
		    rs.Close
		    if db.Error=False and record_found=False Then
		      db.InsertRecord "PhaseSpaces", dr
		      db.Commit
		    end
		  end
		  
		  db.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Uploadfiles(beam as integer)
		  //---------------------------------------------------------
		  // Upload BEAMnrc files to shell from local computer
		  //
		  //---------------------------------------------------------
		  Dim location(-1),path_egsinp,path_jaws,path_mlc,beam_num,name as string
		  Dim MLC,DJAWS,egsinp,f as FolderItem
		  Dim i as Integer
		  Dim good as Boolean
		  //---------------------------------------------------------
		  
		  // Upload BEAMnrc input file
		  beam_num=str(beam+1)
		  name=MC_file_name+beam_num
		  f=gRTOG.Plan(Plan_Index).Path
		  
		  egsinp=f.Child(name+".egsinp")
		  DJAWS=f.Child(name+".djaws")
		  mlc=f.Child(name+".mlc")
		  
		  // Path
		  path_egsinp=egsinp.ShellPath
		  path_mlc=MLC.ShellPath
		  path_jaws=DJAWS.ShellPath
		  
		  
		  // Upload Beamnrc file
		  if egsinp.Exists and egs_Get_Directory(beam) Then
		    cc.FTP_Now=True
		    cc.FTP_Put_file=True
		    cc.FTP_Local_Path=path_egsinp
		    cc.FTP_Remote_Path=cc.dir+egsinp.Name
		    cc.command="put "+path_egsinp+"  "+cc.FTP_Remote_Path
		    cc.FTP_Files= egsinp
		    cc.inpfilename=egsinp.Name
		    cc.egs_uploade_inp=True
		    MMCTP_Shell_Run.All.Append cc
		  end
		  
		  // Upload MLC file
		  if MLC.Exists and egs_Get_Directory(beam) Then
		    cc.FTP_Now=True
		    cc.FTP_Put_file=True
		    cc.FTP_Local_Path=path_mlc
		    if cc.shell.OS=3 Then
		      cc.FTP_Remote_Path=cc.dir+"\"+MLC.Name
		    else
		      cc.FTP_Remote_Path=cc.dir+"/"+MLC.Name
		    end
		    cc.command= "put "+path_mlc+"  "+cc.dir+"/"+mlc.Name
		    cc.FTP_Files= mlc
		    cc.inpfilename=mlc.Name
		    cc.egs_uploade_inp=True
		    MMCTP_Shell_Run.All.Append cc
		  end
		  
		  // Upload djaws file
		  if DJAWS.Exists and egs_Get_Directory(beam) Then
		    cc.FTP_Now=True
		    cc.FTP_Put_file=True
		    cc.egs_uploade_inp=True
		    cc.FTP_Local_Path=path_jaws
		    if cc.shell.OS=3 Then
		      cc.FTP_Remote_Path=cc.dir+"\"+DJAWS.Name
		    else
		      cc.FTP_Remote_Path=cc.dir+"/"+DJAWS.Name
		    end
		    cc.command= "put "+path_jaws+"  "+cc.dir+"/"+DJAWS.Name
		    cc.FTP_Files= DJAWS
		    cc.inpfilename=DJAWS.Name
		    MMCTP_Shell_Run.All.Append cc
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Write()
		  //------------------------------------
		  // Write BEAM settings for one Plan
		  //
		  //------------------------------------
		  Dim f as FolderItem
		  Dim ts as TextOutputStream
		  Dim i as Integer
		  //------------------------------------
		  
		  
		  f=gRTOG.Plan(plan_index).Path
		  if f=nil Then
		    Return
		  end
		  
		  f=f.Child("BEAM.txt")
		  if f=nil Then
		    Return
		  end
		  
		  
		  if f.Exists Then
		    f.Delete
		  end
		  
		  ts=f.CreateTextFile
		  
		  i=0
		  While ts=nil
		    i=i+1
		    ts=f.CreateTextFile
		    if i>100 Then
		      gBEAM.egs_msg.append "Warning : Could not write BEAMnrc settings file "+f.Name
		      Return
		    end
		  wend
		  
		  
		  
		  for i=0 to UBound(gRTOG.Plan(Plan_Index).Beam)
		    Spaces(ts,"Beam "+Str(i+1)+" Number of jobs",40,str(Beams(i).egs_jobs))
		    Spaces(ts,"Beam "+Str(i+1)+" Number of histories",40,str(Beams(i).egs_num_histories))
		    Spaces(ts,"Beam "+Str(i+1)+" Particles per history",40,str(Beams(i).egs_particle_per_history))
		    Spaces(ts,"Beam "+Str(i+1)+" CPU time",40,str(Beams(i).egs_CPU_time_per_hist))
		    Spaces(ts,"Beam "+Str(i+1)+" Progress",40,str(Beams(i).egs_progress))
		    Spaces(ts,"Beam "+Str(i+1)+" PEGS file",40,str(Beams(i).egs_pegs_file))
		    Spaces(ts,"Beam "+Str(i+1)+" Desired Phsp particle density",40,str(Beams(i).egs_desired_phsp_particle_density))
		    Spaces(ts,"Beam "+Str(i+1)+" Queue",40,str(Beams(i).egs_queue))
		    Spaces(ts,"Beam "+Str(i+1)+" Phsp Size",40,str(Beams(i).egs_phsp_size))
		    Spaces(ts,"Beam "+Str(i+1)+" Phsp # Particles",40,str(Beams(i).egs_phsp_num_particles))
		    Spaces(ts,"Beam "+Str(i+1)+" Phsp # Photons",40,str(Beams(i).egs_phsp_num_photons))
		    
		    if Beams(i).egs_phsp_link Then
		      Spaces(ts,"Beam "+Str(i+1)+" Phsp link",40,"True")
		    else
		      Spaces(ts,"Beam "+Str(i+1)+" Phsp link",40,"False")
		    end
		    Spaces(ts,"Beam "+Str(i+1)+" Phsp Name",40,(Beams(i).egs_phsp_name))
		    
		    if Beams(i).egs_BEAMnrc_started Then
		      Spaces(ts,"Beam "+Str(i+1)+" BEAMnrc run started",40,"True")
		    else
		      Spaces(ts,"Beam "+Str(i+1)+" BEAMnrc run started",40,"False")
		    end
		    
		    Spaces(ts,"Beam "+Str(i+1)+" Number of BEAMnrc jobs running",40,str(Beams(i).egs_BEAMnrc_active_jobs))
		    
		    
		    if Beams(i).egs_AddPhsp_Finished Then
		      Spaces(ts,"Beam "+Str(i+1)+" AddPhsp Finished",40,"True")
		    else
		      Spaces(ts,"Beam "+Str(i+1)+" AddPhsp Finished",40,"False")
		    end
		    
		    if Beams(i).egs_Phsp_Lookup Then
		      Spaces(ts,"Beam "+Str(i+1)+" Phsp Lookup Finished",40,"True")
		    else
		      Spaces(ts,"Beam "+Str(i+1)+" Phsp Lookup Finished",40,"False")
		    end
		    
		    Spaces(ts,"Beam "+Str(i+1)+" BEAMnrc start time",40,Beams(i).egs_Start_Time)
		    Spaces(ts,"Beam "+Str(i+1)+" BEAMnrc shell",40,Beams(i).egs_Shell)
		    
		    if Beams(i).egs_auto_shell Then
		      Spaces(ts,"Beam "+Str(i+1)+" auto shell",40,"True")
		    else
		      Spaces(ts,"Beam "+Str(i+1)+" auto shell",40,"False")
		    end
		    
		    Spaces(ts,"Beam "+Str(i+1)+" Linac Index",40,str(Beams(i).egs_linac_index))
		    
		    if Beams(i).calculate Then
		      Spaces(ts,"Beam "+Str(i+1)+" calculate",40,"True")
		    else
		      Spaces(ts,"Beam "+Str(i+1)+" calculate",40,"False")
		    end
		    
		    
		    
		    Spaces(ts,"Beam "+Str(i+1)+" SimTime",40,Format(Beams(i).egs_Sim_Time,"#.###e"))
		    
		    
		    if Beams(i).auto_queue Then
		      Spaces(ts,"Beam "+Str(i+1)+" auto queue",40,"True")
		    else
		      Spaces(ts,"Beam "+Str(i+1)+" auto queue",40,"False")
		    end
		    
		  next
		  
		  ts.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Write_Default()
		  //------------------------------------
		  //
		  //
		  //------------------------------------
		  Dim f as FolderItem
		  Dim ts as TextOutputStream
		  Dim ss as String
		  Dim i as Integer
		  //------------------------------------
		  
		  
		  f=gPref.BEAMnrc_fi
		  f=f.Child("BEAM-Settings.txt")
		  
		  ts=f.CreateTextFile
		  While ts=nil
		    ts=f.CreateTextFile
		  wend
		  
		  if egs_auto_run Then
		    ss="yes"
		  else
		    ss="no"
		  end
		  
		  Spaces(ts,"Auto Run",40,ss)
		  
		  Spaces(ts,"Num Jobs",40,str(egs_Num_Jobs))
		  Spaces(ts,"MinNumJobs",40,str(egs_Min_Num_Jobs))
		  
		  Spaces(ts,"IDAT",40,str(egs_IDAT))
		  Spaces(ts,"IZLAST",40,str(egs_IZLAST))
		  
		  
		  
		  if egs_auto_refresh Then
		    ss="yes"
		  else
		    ss="no"
		  end
		  Spaces(ts,"Auto Refresh",40,ss)
		  
		  
		  if Remove_w_files Then
		    ss="yes"
		  else
		    ss="no"
		  end
		  Spaces(ts,"Remove w files",40,ss)
		  
		  if egs_auto_shell Then
		    ss="yes"
		  else
		    ss="no"
		  end
		  Spaces(ts,"Auto Shell",40,ss)
		  
		  if egs_auto_phsp Then
		    ss="no"
		  else
		    ss="yes"
		  end
		  Spaces(ts,"AutoPhsp",40,ss)
		  
		  if egs_automaxjob Then
		    ss="no"
		  else
		    ss="yes"
		  end
		  Spaces(ts,"AutoMaxJob",40,ss)
		  
		  if egs_Addphsp_fullpath Then
		    ss="yes"
		  else
		    ss="no"
		  end
		  Spaces(ts,"Addphspfullpath",40,ss)
		  
		  if egs_force_addphsp Then
		    ss="yes "
		  else
		    ss="no "
		  end
		  ss=ss+str(egs_force_addphsp_value)
		  Spaces(ts,"ForceAddphsp",40,ss)
		  
		  
		  ts.Close
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Beams(-1) As Class_Beam
	#tag EndProperty

	#tag Property, Flags = &h0
		CC As Class_MMCTP_Commands
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_addphsp As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_Addphsp_fullpath As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_automaxjob As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_automaxjobtime As integer = 150
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_auto_phsp As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_auto_refresh As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_auto_run As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_auto_shell As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_build As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_exbeam As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_force_addphsp As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_force_addphsp_value As Single = 95.5
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_IDAT As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_Inputfile As string
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_IZLAST As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_Min_Num_Jobs As integer = 2
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_msg(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_Num_Jobs As integer = 8
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_phsp1_copy As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_phsp_list As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_run1 As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_search_string As string
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_status As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_sub As string = "exb"
	#tag EndProperty

	#tag Property, Flags = &h0
		PhaseSpace As SQLiteDatabase
	#tag EndProperty

	#tag Property, Flags = &h0
		Queue_Num As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Remove_w_files As Boolean
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="egs_addphsp"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_Addphsp_fullpath"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_automaxjob"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_automaxjobtime"
			Group="Behavior"
			InitialValue="150"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_auto_phsp"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_auto_refresh"
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_auto_run"
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_auto_shell"
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_build"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_exbeam"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_force_addphsp"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_force_addphsp_value"
			Group="Behavior"
			InitialValue="95.5"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_IDAT"
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_Inputfile"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_IZLAST"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_Min_Num_Jobs"
			Group="Behavior"
			InitialValue="2"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_Num_Jobs"
			Group="Behavior"
			InitialValue="8"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_phsp1_copy"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_phsp_list"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_run1"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_search_string"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_status"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_sub"
			Group="Behavior"
			InitialValue="exb"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Priority"
			Visible=true
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Queue_Num"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Remove_w_files"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StackSize"
			Visible=true
			Group="Behavior"
			InitialValue="0"
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
