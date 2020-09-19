#tag Class
Protected Class Thread_DOSXYZ
Inherits Thread
	#tag Event
		Sub Run()
		  //------------------------------------
		  //
		  //
		  //------------------------------------
		  Dim k,i as Integer
		  //------------------------------------
		  
		  While dosxyz_run_egsphant_Manual or Auto_EGSPhantSettings_Make or  dosxyz_AddDose or dosxyz_refresh or dosxyz_run_egsphant_CT or dosxyz_retransfer or dosxyz_test_run or dosxyznrc_Load_EGSPhant
		    
		    if dosxyz_AddDose Then
		      dosxyz_AddDose =False
		      dosxyz_Add_Dose
		    end
		    
		    if dosxyz_run_egsphant_Manual Then
		      dosxyz_run_egsphant_Manual =False
		      dosxyz_EGSPhant_Make_Manual(dosxyz_run_egsphant_index)
		    end
		    
		    
		    if Auto_EGSPhantSettings_Make Then
		      Auto_EGSPhantSettings_Make=False
		      for i=0 to UBound(Auto_EGSPhantSettings)
		        if Auto_EGSPhantSettings(i).Make_EGSPhant Then
		          Auto_EGSPhantSettings(i).Make_EGSPhant =False
		          dosxyz_EGSPhant_Auto_Load(i)
		        end
		      next
		    end
		    
		    
		    if dosxyz_run_egsphant_CT Then
		      dosxyz_run_egsphant_CT =False
		      dosxyz_EGSPhant_Make_CT(dosxyz_run_egsphant_index)
		    end
		    
		    
		    
		    if dosxyz_refresh Then
		      dosxyz_refresh=False
		      for k=0 to UBound(gDOSXYZ.dosxyz)
		        for i=0 to UBound(gRTOG.Plan(plan_index).Beam)
		          dosxyz_refresh(k,i)
		        next
		      next
		      gTimer_Refresh.Period=1000
		      gTimer_Refresh.Reset
		    end
		    
		    
		    if dosxyz_test_run Then
		      dosxyz_test_run=False
		      dosxyz_run_test(Window_DOSXYZ_Properties.egsphant,Window_DOSXYZ_Properties.beam)
		      gTimer_Run.Period=1000
		      gTimer_Run.Reset
		    end
		    
		    
		    if dosxyznrc_Load_EGSPhant Then
		      dosxyznrc_Load_EGSPhant=False
		      for i=0 to UBound(DOSXYZ)
		        DOSXYZ(i).EGSPhantSettings.read_EGSPhantfile_Header
		      next
		      
		    end
		    
		    
		  Wend
		  
		  
		  
		  Exception err as OutOfMemoryException
		    Errors.Append "Out of memory exception!"
		  Exception err as TypeMismatchException
		    Errors.Append "Tried to retype an object!"
		  Exception err as NilObjectException
		    Errors.Append "Tried to access a Nil object!"
		  Exception err as RuntimeException  // NOT RECOMMENDED
		    Errors.Append "Another exception"
		    
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Dosxyz_add_Checked_Dose_List(egsphant_index as Integer)
		  Dim i as Integer
		  Dim tmpstr as String
		  
		  
		  if UBound(DOSXYZ(egsphant_index).DOSXYZ_Input)>0 Then
		    tmpstr=""
		    for i=0 to UBound(gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input)
		      if gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(i).dos_3ddose_downloaded and  gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(i).dos_calculate  then
		        tmpstr=tmpstr+str(egsphant_index)+","+str(i)+Chr(10)
		      end
		    Next
		    gDOSXYZ.dosxyz_adddoseList.Append tmpstr
		  end
		  
		  dosxyz_AddDose=True
		  if State=4 Then
		    Run
		  end
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_Add_Dose()
		  // -----------------------------------
		  // The method will addup DOSXYZ 3ddose files
		  // and convert to McGill RT format
		  //
		  //-------------------------------------
		  Dim j,k,i,y,x,z,q,egsphant_index,beam_index,first_dose,egsphants(-1),beams(-1) as Integer
		  Dim scale_height,scale_width,dx,dy,dz,error,normalize,beam_w,temp,MC_norm,w,w_t as Single
		  Dim Dose as RTOG_Dose_Distribution
		  Dim f as FolderItem
		  Dim data as RTOG_Dose_Plane
		  Dim path,temp_name,name,dosxyz_adddoseS as string
		  Dim ddd as Class_DOSXYZ_3Ddose
		  Dim bb as Boolean
		  //-------------------------------------
		  
		  While UBound(dosxyz_adddoseList)>-1 
		    
		    if UBound(dosxyz_adddoseList)< 0 Then
		      Return
		    end
		    
		    
		    
		    dosxyz_adddoseS=dosxyz_adddoseList(0)
		    dosxyz_adddoseList.Remove 0
		    
		    'Find which egsphant to Add
		    egsphant_index=val(NthField(dosxyz_adddoseS,",",1))
		    ReDim egsphants(-1)
		    ReDim beams(-1)
		    
		    
		    for k=1 to CountFields(dosxyz_adddoseS,Chr(10))-1
		      name=NthField(dosxyz_adddoseS,Chr(10),k)
		      egsphants.Append val(NthField(name,",",1))
		      beams.Append  val(NthField(name,",",2))
		    Next
		    // egsphant found, 
		    
		    // Determine if Beams have been selected
		    if UBound(egsphants)=-1 Then
		      MsgBox "No Beams Selected"
		      Return
		    end
		    
		    
		    
		    // if we are opening a Profile
		    k= UBound(egsphants)
		    for i=0 to k
		      if DOSXYZ(egsphants(i)).DOSXYZ_Input(beams(i)).dos_Non_CT Then
		        dosxyz_Import_DoseProfile(egsphants(i),beams(i))
		        egsphants.Remove i
		        beams.Remove i
		        k=k-1
		      end
		    next
		    
		    
		    
		    
		    // Determine if any Beams are left 
		    if UBound(egsphants)=-1 Then
		      Return
		    end
		    
		    w_t=0
		    //loop for all 3ddose files and find total W
		    for i=0 to UBound(beams)
		      w_t=w_t+gRTOG.Plan(Plan_Index).Beam(beams(i)).Number_of_Tx*gRTOG.Plan(Plan_Index).Beam(beams(i)).mu*gRTOG.Plan(Plan_Index).Beam(beams(i)).Beam_Weight
		    next
		    
		    
		    egsphant_index=egsphants(0)
		    first_dose=beams(0)
		    
		    
		    Dose = new RTOG_Dose_Distribution
		    Dose.SOP_Instance_UID=gDICOM.UID_Make
		    
		    // Find a name for this dose distribution
		    // 1st step to name new  dose
		    
		    if UBound(beams)>0 Then
		      temp_name="DOS-"+DOSXYZ(egsphant_index).EGSPhantSettings.name+"- Total"
		      Dose.Dose_name=temp_name
		    else
		      temp_name="DOS-"+DOSXYZ(egsphant_index).EGSPhantSettings.name+"-"+MC_file_name+str(first_dose+1)
		      Dose.Dose_name=temp_name
		    end
		    
		    Dose.engine="DOSXYZ"
		    Dose.Dose_Units="Gy"
		    
		    
		    
		    name=str(first_dose+1)
		    While Len(name)<3
		      name="0"+name
		    Wend
		    
		    
		    
		    f=gRTOG.Plan(Plan_Index).Path
		    f=f.Child(MC_file_name+name+"_"+DOSXYZ(egsphant_index).EGSPhantSettings.name+".3ddose")
		    if f=nil Then
		      Errors.append "Error within Add Dose, folderitem=nil, task did not complete" //Changed to "Errors.append" by William Davis to avoid crash due to exception
		      Return
		    end
		    
		    if DOSXYZ(egsphant_index).DOSXYZ_Input(first_dose).dos_3ddose_downloaded=False Then
		      Errors.append "Error within Add Dose, "+f.Name+" has not been downloaded!" //Changed to "Errors.append" by William Davis to avoid crash due to exception
		      Return
		    end
		    
		    
		    if f.Exists=False Then
		      DOSXYZ(egsphant_index).DOSXYZ_Input(first_dose).dos_3ddose_downloaded=False
		      Errors.append "Error within Add Dose, could not find file : "+f.Name //Changed to "Errors.append" by William Davis to avoid crash due to exception
		      Return
		    end
		    
		    // Load 3ddose file
		    ddd=new Class_DOSXYZ_3Ddose
		    bb=ddd.read(f)
		    
		    
		    if bb=False Then
		      Errors.append "Error within Add Dose, could not read-in 3ddose file : "+f.Name //Changed to "Errors.append" by William Davis to avoid crash due to exception
		      Return
		    end
		    
		    Dose.Size_of_Dimension1=ddd.Nx
		    Dose.Size_of_Dimension2=ddd.Nz
		    Dose.Size_of_Dimension3=ddd.Ny
		    
		    'Voxel boundaries in X
		    Dose.Horizontal_Grid=ddd.dx
		    Dose.Coord_1_1st_point=ddd.Coord_X
		    
		    'Read in voxel boundaries in y
		    Dose.Vertical_Grid=ddd.dz
		    Dose.Coord_2_1st_point=-(ddd.Coord_z+ddd.dz*(ddd.Nz-1))
		    
		    'Read in voxel boundaries in Z
		    Dose.Depth_Grid=ddd.dy
		    Dose.Coord_3_1st_point=-(ddd.Coord_Y+ddd.dy*(ddd.Ny-1))
		    
		    // Initialize the Z planes
		    for i=0 to dose.Size_of_Dimension3-1
		      data= new RTOG_Dose_Plane
		      data.Z=dose.Coord_3_1st_point+i*dose.Depth_Grid
		      ReDim data.Points(Dose.Size_of_Dimension1*Dose.Size_of_Dimension2-1)
		      ReDim data.Errors(Dose.Size_of_Dimension1*Dose.Size_of_Dimension2-1)
		      Dose.Dose_Distribution.Append data
		    next
		    
		    'Read in each dose plane for each 3ddose
		    for k=0 to UBound(egsphants)
		      egsphant_index=egsphants(k)
		      beam_index=beams(k)
		      
		      // Readin other 3ddose, 1st one has already been read
		      if k<>0 Then
		        name=str(beams(k)+1)
		        While Len(name)<3
		          name="0"+name
		        Wend
		        f=gRTOG.Plan(Plan_Index).Path
		        f=f.Child(MC_file_name+name+"_"+DOSXYZ(egsphant_index).EGSPhantSettings.name+".3ddose")
		        if f.Exists=False Then
		          DOSXYZ(egsphant_index).DOSXYZ_Input(beams(k)).dos_3ddose_downloaded=False
		          Errors.append "Could not find file : "+f.Name //Changed to "Errors.append" by William Davis to avoid crash due to exception
		          Return
		        end
		        
		        ddd=new Class_DOSXYZ_3Ddose
		        gdosxyz.egs_msg.append "Reading 3ddose file : "+f.Name //Commented out by William Davis to avoid crash due to exception
		        bb=ddd.read(f)
		        if bb=False Then
		          Errors.append "Could not read-in 3ddose file : "+f.Name //Changed to "Errors.append" by William Davis to avoid crash due to exception
		          Return
		        end
		      end
		      
		      normalize=gRTOG.Plan(Plan_Index).Beam(beam_index).Number_of_Tx*gRTOG.Plan(Plan_Index).Beam(beam_index).mu*gRTOG.Plan(Plan_Index).Beam(beam_index).Beam_Weight
		      beam_w=normalize
		      MC_norm=DOSXYZ(egsphant_index).DOSXYZ_Input(beam_index).dose_to_water/DOSXYZ(egsphant_index).DOSXYZ_Input(beam_index).dos_dose
		      
		      // Add back scatter correction
		      if dosxyznrc_bs_cor Then
		        normalize=normalize*DOSXYZ(egsphant_index).DOSXYZ_Input(beam_index).dos_mu_bs/100
		      end
		      normalize=normalize*MC_norm
		      for z=0 to dose.Size_of_Dimension3-1
		        gdosxyz.egs_msg.append "Adding dose values in plane : "+str(z+1) ////Commented out by William Davis to avoid crash due to exception
		        for y=0 to dose.Size_of_Dimension2-1
		          for x=0 to dose.Size_of_Dimension1-1
		            // Dose values
		            q=y*(Dose.Size_of_Dimension1)+x
		            temp= ddd.dose(x,dose.Size_of_Dimension3-1 -z,dose.Size_of_Dimension2-1 -y)*normalize
		            temp=Temp+Dose.Dose_Distribution(z).Points(q)
		            Dose.Dose_Distribution(z).Points(q)= temp
		            if temp <dose.Dmin Then
		              dose.Dmin=temp
		            elseif temp >dose.Dmax Then
		              dose.Dmax=temp
		            end
		            //Dose Uncertainty calculation
		            error=Dose.Dose_Distribution(z).Errors(q)
		            error=error*error
		            temp= ddd.error(x,dose.Size_of_Dimension3-1-z,dose.Size_of_Dimension2-1 -y)
		            temp=temp*temp
		            w=beam_w/w_t
		            Dose.Dose_Distribution(z).Errors(q)= Sqrt(w*w*temp+error)
		          next
		        Next
		      next
		    next
		    
		    
		    
		    gRTOG.Plan(Plan_Index).Dose.append dose
		    gdosxyz.egs_msg.append "Writing dose file "+dose.Dose_name
		    gRTOG.Plan(Plan_Index).Write_McGill_Dose(UBound(gRTOG.Plan(Plan_Index).Dose))
		    PW_Show=false
		    Window_Treatment.window_update_plan_now=True
		  Wend
		  
		  if Dose<>nil Then
		    gdosxyz.egs_msg.append "Add dose complete for file "+dose.Dose_name //Commented out by William Davis to avoid crash due to exception
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Dosxyz_add_Plan_Dose_List(egsphant_index as Integer)
		  Dim i as Integer
		  Dim alldone as Boolean
		  Dim tmpstr as String
		  
		  
		  if UBound(DOSXYZ(egsphant_index).DOSXYZ_Input)>0 Then
		    alldone=True
		    for i=0 to UBound(DOSXYZ(egsphant_index).DOSXYZ_Input)
		      if DOSXYZ(egsphant_index).DOSXYZ_Input(i).dos_3ddose_downloaded=False Then
		        alldone=False
		      end
		    Next
		    
		    if alldone Then
		      tmpstr=""
		      for i=0 to UBound(gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input)
		        tmpstr=tmpstr+str(egsphant_index)+","+str(i)+Chr(10)
		      Next
		      gDOSXYZ.dosxyz_adddoseList.Append tmpstr
		    end
		    
		  end
		  
		  dosxyz_AddDose=True
		  if State=4 Then
		    Run
		  end
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_Cleanup(egsphant_index as integer, beam as integer)
		  //---------------------------------
		  // Clean up previous runs
		  //
		  //---------------------------------
		  dim name,name_3ddose,name_lock as String
		  dim ggo as Boolean
		  dim f as FolderItem
		  //---------------------------------
		  
		  name=str(beam+1)
		  While Len(name)<3
		    name="0"+name
		  Wend
		  name=MC_file_name+name+"_"+DOSXYZ(egsphant_index).EGSPhantSettings.name
		  
		  
		  // Remove from local area
		  name_3ddose=name+".3ddose"
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child(name_3ddose)
		  if f.Exists Then
		    f.Delete
		  end
		  
		  
		  
		  if DOSXYZ(egsphant_index).DOSXYZ_Input(beam).IRESTART=0 Then 
		    // DOSXYZnrc initiates a new run, deleting all of the output ﬁles
		    
		    //gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).TotalTime=0
		    gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_progress=0
		    gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).run_started=False
		    gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_start_Date=""
		    gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_num_active_jobs=0
		    gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_3ddose_detected=False
		    gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_3ddose_downloaded=False
		    gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_3ddose_finish_Time=""
		    
		    ggo=dosxyz_get_shell_Variables(egsphant_index,beam)
		    cc.command="rm -f "+name+"*"
		    MMCTP_Shell_Run.All.Append cc
		    ggo=dosxyz_get_shell_Variables(egsphant_index,beam)
		    cc.command="rm -f -r  *"+name+"*"
		    if ggo Then
		      MMCTP_Shell_Run.All.Append cc
		    end
		    
		  elseif DOSXYZ(egsphant_index).DOSXYZ_Input(beam).IRESTART=4 Then 
		    // Dosxyznrc recombines the pardose files from parallel jobs
		    
		    // Remove the lock file
		    name=name +".lock"
		    if not dosxyz_get_shell_Variables(egsphant_index,beam) Then
		      Return
		    end
		    
		    gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_3ddose_downloaded=False
		    ggo=dosxyz_get_shell_Variables(egsphant_index,beam)
		    if ggo Then
		      cc.command="rm -f "+name
		      MMCTP_Shell_Run.All.Append cc
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function dosxyz_CT2Dens(ctnum as integer, dosxyz_ct_model as Integer) As string
		  //---------------------------------------------
		  // Algorithm to interpolate CT number to density
		  // Uses the CT Calibration file
		  //
		  // Updated March 2017 by AA
		  // Michael Martyn reported bug issue on
		  // CT values not being assigned properly 
		  //---------------------------------------------
		  Dim  h,h_prime,slope,b,y as double
		  Dim i,m_index,k as Integer
		  Dim rsting as String
		  //---------------------------------------------
		  
		  h=ctnum
		  k=UBound(gCT.All_CT(dosxyz_ct_model).CalibrationM)
		  
		  if h<-1000 Then
		    h=-1000
		  end
		  
		  if k<=-1 Then // CT model has not been defined
		    rsting="CT-Model-Not-Found_"
		    y=-1000000
		  else
		    // CT model found!
		    if h<=gCT.All_CT(dosxyz_ct_model).CalibrationM(0).hu_l then
		      m_index=0
		      h=gCT.All_CT(dosxyz_ct_model).CalibrationM(0).hu_l
		    ElseIf h >= gCT.All_CT(dosxyz_ct_model).CalibrationM(k).hu_h Then
		      m_index=k
		      h=gCT.All_CT(dosxyz_ct_model).CalibrationM(k).hu_h
		    Else
		      m_index=-1
		      for i =0 to UBound(gCT.All_CT(dosxyz_ct_model).CalibrationM)
		        if h<= gCT.All_CT(dosxyz_ct_model).CalibrationM(i).hu_h and h>=gCT.All_CT(dosxyz_ct_model).CalibrationM(i).hu_l then
		          m_index=i
		        end
		      next
		    end
		    if m_index=-1 Then
		      rsting="CT-HU-Value-Not-Found-In-Range_"
		      y=-1000000
		    else
		      rsting=gCT.All_CT(dosxyz_ct_model).CalibrationM(m_index).M_name+"_"
		      
		      if gCT.All_CT(dosxyz_ct_model).CalibrationM(m_index).hu_h=gCT.All_CT(dosxyz_ct_model).CalibrationM(m_index).hu_l Then
		        slope=0
		      else
		        slope=(gCT.All_CT(dosxyz_ct_model).CalibrationM(m_index).p_h-gCT.All_CT(dosxyz_ct_model).CalibrationM(m_index).p_l)_
		        /(gCT.All_CT(dosxyz_ct_model).CalibrationM(m_index).hu_h-gCT.All_CT(dosxyz_ct_model).CalibrationM(m_index).hu_l)
		      end
		      b=gCT.All_CT(dosxyz_ct_model).CalibrationM(m_index).p_h-slope*gCT.All_CT(dosxyz_ct_model).CalibrationM(m_index).hu_h
		      y=slope*h+b
		    end
		    
		  end
		  Return rsting+Format(y,"-#.###")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_Delete_Phant(eindex as Integer)
		  //-----------------------------
		  //
		  //-----------------------------
		  Dim f as FolderItem
		  Dim i,k,m,l as Integer
		  Dim temp,dosename as String
		  //-----------------------------
		  
		  if eindex>-1 and eindex<=UBound(gDOSXYZ.DOSXYZ) Then
		    
		    i=MsgBox("Are you sure you want to delete the EGSPhant file "+chr(13)+gDOSXYZ.DOSXYZ(eindex).EGSPhantSettings.name +"?",1,"Warning")
		    
		    if i<>1 Then
		      Return
		    end
		    k=eindex
		    f=gRTOG.Path.Child("McGill_RT")
		    
		    f=f.Child(gRTOG.Patient_ID+"_"+gRTOG.StudyID+grtog.seriesnumber+"_"+DOSXYZ(k).EGSPhantSettings.name+".egsphant")
		    if f.Exists Then
		      f.Delete
		    end
		    
		    f=gRTOG.Path.Child("McGill_RT")
		    
		    f=f.Child(gRTOG.Patient_ID+"_"+gRTOG.StudyID+grtog.seriesnumber+"_"+DOSXYZ(k).EGSPhantSettings.name+".egsphanthed")
		    if f.Exists Then
		      f.Delete
		    end
		    
		    f=gRTOG.Path.Child("McGill_RT")
		    
		    f=f.Child(gRTOG.Patient_ID+"_"+gRTOG.StudyID+grtog.seriesnumber+"_"+DOSXYZ(k).EGSPhantSettings.name+".default")
		    if f.Exists Then
		      f.Delete
		    end
		    
		    
		    
		    
		    for m= 0 to UBound(gRTOG.Plan)
		      f=gRTOG.Plan(m).Path
		      
		      f=f.Child("DOSXYZ_"+DOSXYZ(k).EGSPhantSettings.name+".txt")
		      if f.Exists Then
		        f.Delete
		      end
		      
		      for l=0 to UBound(gRTOG.Plan(m).Beam)
		        temp=str(m+1)
		        
		        While Len(Temp)<3
		          Temp="0"+Temp
		        Wend
		        
		        temp=gRTOG.Patient_ID+"_"+gRTOG.StudyID+gRTOG.SeriesNumber+"_p"+Temp+str(l)+"_"+DOSXYZ(k).EGSPhantSettings.name
		        
		        f=gRTOG.Plan(m).Path
		        f=f.Child(temp+".egsinp")
		        if f.Exists Then
		          f.Delete
		        end
		        
		        f=gRTOG.Plan(m).Path
		        f=f.Child(temp+".3ddose")
		        if f.Exists Then
		          f.Delete
		        end
		        
		        f=gRTOG.Plan(m).Path
		        f=f.Child(temp+".egslst")
		        if f.Exists Then
		          f.Delete
		        end
		        
		        
		      next
		      
		    next
		    
		    
		    
		    
		    if gPref.DVH_clean Then
		      // 
		      // Find a name for this dose distribution, assume it is the default one
		      // 
		      dosename="DOS-"+DOSXYZ(k).EGSPhantSettings.name+"- Total"
		      gDVH.Delete_DVH_Set(dosename)
		      Window_Treatment.Dose_DVH
		    end
		    
		    
		    DOSXYZ.Remove k
		    Window_Treatment.MC_dosxyz_beam_progress
		    
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_Download_3ddose(egsphant_index as integer, beam as integer)
		  //----------------------------------------
		  // Method to download 3ddose file and egslst and clean up
		  // simulation files.
		  // If download completes, the method will remove
		  // _w* files and the egsrun dir
		  //
		  //----------------------------------------
		  Dim i as Integer
		  Dim f as FolderItem
		  Dim path,temp,type,tmpstr,beam_name,name as string
		  Dim good as Boolean
		  //-------------------------------------------
		  
		  good=dosxyz_get_shell_Variables(egsphant_index,beam)
		  beam_name=str(beam+1)
		  While Len(beam_name)<3
		    beam_name="0"+beam_name
		  Wend
		  name=MC_file_name+beam_name+"_"+DOSXYZ(egsphant_index).EGSPhantSettings.name+".3ddose"
		  
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child(name)
		  path=f.ShellPath
		  
		  // download 3ddose
		  cc.FTP_Files=f
		  cc.FTP_Now=True
		  cc.command="get "+cc.dir+name+" "+path
		  cc.FTP_Get_File=True
		  cc.FTP_Local_Path=path
		  cc.FTP_Remote_Path=cc.dir+name
		  cc.dos_download_3ddose=True
		  cc.inpfilename=name
		  cc.beam_num=beam
		  cc.dos_egsphant_index=egsphant_index
		  good=True
		  for i=UBound(MMCTP_Download.All) DownTo 0
		    if MMCTP_Download.All(i).inpfilename=cc.inpfilename Then
		      good=False
		      Exit
		    end
		  next
		  if good Then
		    MMCTP_Download.All.Append cc
		  end
		  
		  
		  // download egslst file
		  name=MC_file_name+beam_name+"_"+DOSXYZ(egsphant_index).EGSPhantSettings.name+".egslst"
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child(name)
		  path=f.ShellPath
		  good=dosxyz_get_shell_Variables(egsphant_index,beam)
		  cc.dos_download_log=True
		  cc.FTP_Files=f
		  cc.FTP_Now=True
		  cc.command="get "+cc.dir+name+" "+path
		  cc.inpfilename=name
		  cc.beam_num=beam
		  cc.dos_egsphant_index=egsphant_index
		  cc.FTP_Get_File=True
		  cc.FTP_Local_Path=path
		  cc.FTP_Remote_Path=cc.dir+name
		  good=True
		  for i=UBound(MMCTP_Download.All) DownTo 0
		    if MMCTP_Download.All(i).inpfilename=cc.inpfilename Then
		      good=False
		      Exit
		    end
		  next
		  if good Then
		    MMCTP_Download.All.Append cc
		  end
		  
		  
		  // download egslst file
		  name=MC_file_name+beam_name+"_"+DOSXYZ(egsphant_index).EGSPhantSettings.name+".egslog"
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child(name)
		  path=f.ShellPath
		  good=dosxyz_get_shell_Variables(egsphant_index,beam)
		  cc.dos_download_log=True
		  cc.FTP_Files=f
		  cc.FTP_Now=True
		  cc.command="get "+cc.dir+name+" "+path
		  cc.inpfilename=name
		  cc.beam_num=beam
		  cc.dos_egsphant_index=egsphant_index
		  cc.FTP_Get_File=True
		  cc.FTP_Local_Path=path
		  cc.FTP_Remote_Path=cc.dir+name
		  good=True
		  for i=UBound(MMCTP_Download.All) DownTo 0
		    if MMCTP_Download.All(i).inpfilename=cc.inpfilename Then
		      good=False
		      Exit
		    end
		  next
		  if good Then
		    MMCTP_Download.All.Append cc
		  end
		  
		  
		  Exception err as TypeMismatchException
		    Errors.Append "dosxyz_Download_3ddose Tried to retype an object!"
		  Exception err as NilObjectException
		    Errors.Append "dosxyz_Download_3ddose Tried to access a Nil object!"
		  Exception err as RuntimeException  // NOT RECOMMENDED
		    Errors.Append "dosxyz_Download_3ddose Another exception"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_EGSPhant_Auto_Load(eindex as Integer)
		  //----------------------------------------
		  // 1st Method to generate auto Egsphant file
		  // Copy Auto EGSPhant Settings into Class DOSXYZ EGSPhant
		  //
		  //----------------------------------------
		  Dim dd as Class_DOSXYZ
		  dim k, i as integer
		  //----------------------------------------
		  
		  dd = new Class_DOSXYZ
		  dd.EGSPhantSettings = new Class_DOSXYZ_EGSPhantSettings
		  
		  
		  dd.EGSPhantSettings.CT_model=Auto_EGSPhantSettings(eindex).CT_model
		  
		  if dd.EGSPhantSettings.CT_model>-1 and dd.EGSPhantSettings.CT_model<=UBound(gCT.All_CT) Then
		    dd.EGSPhantSettings.Pegsfile=gct.All_CT(dd.EGSPhantSettings.CT_model).Pegs_file
		    dd.EGSPhantSettings.CT_modelName=gct.All_CT(dd.EGSPhantSettings.CT_model).model_name
		  end
		  
		  dd.EGSPhantSettings.name=Auto_EGSPhantSettings(eindex).Name
		  dd.EGSPhantSettings.Non_CT_Phantom=Auto_EGSPhantSettings(eindex).Non_CT_Phantom
		  dd.EGSPhantSettings.Cleancontours=Auto_EGSPhantSettings(eindex).Cleancontours
		  dd.EGSPhantSettings.Cleancontour_Name=Auto_EGSPhantSettings(eindex).Cleancontour_Name
		  dd.EGSPhantSettings.Cleancontour_Index=-1
		  for i=0 to UBound(grtog.Structures.Structures)
		    if grtog.Structures.Structures(i).Structure_Name=dd.EGSPhantSettings.Cleancontour_Name Then
		      dd.EGSPhantSettings.Cleancontour_Index=i
		    end
		  next
		  
		  if dd.EGSPhantSettings.Non_CT_Phantom=False Then // For CT Phantoms
		    // Load EGSPhant Setting into EGSPhant Class
		    dd.EGSPhantSettings.X_Max=Auto_EGSPhantSettings(eindex).X_Max
		    dd.EGSPhantSettings.X_min=Auto_EGSPhantSettings(eindex).X_min
		    dd.EGSPhantSettings.y_Max=Auto_EGSPhantSettings(eindex).Y_max
		    dd.EGSPhantSettings.y_min=Auto_EGSPhantSettings(eindex).Y_min
		    dd.EGSPhantSettings.z_Max=Auto_EGSPhantSettings(eindex).Z_max
		    dd.EGSPhantSettings.z_min=Auto_EGSPhantSettings(eindex).Z_min
		    dd.EGSPhantSettings.Del_X=Auto_EGSPhantSettings(eindex).Del_X
		    dd.EGSPhantSettings.Del_y=Auto_EGSPhantSettings(eindex).Del_Y
		    dd.EGSPhantSettings.Del_z=Auto_EGSPhantSettings(eindex).Del_Z
		    dd.EGSPhantSettings.Create_wth_CTcontours=Auto_EGSPhantSettings(eindex).Create_wth_CTcontours
		    
		    if dd.EGSPhantSettings.Create_wth_CTcontours Then
		      // Determine Which Materials are used
		      
		      dd.EGSPhantSettings.CT_model=Auto_EGSPhantSettings(eindex).CT_model
		      ReDim dd.EGSPhantSettings.Materials(UBound(Auto_EGSPhantSettings(eindex).Materials))
		      for i=0 to UBound(Auto_EGSPhantSettings(eindex).Materials)
		        dd.EGSPhantSettings.Materials(i)=Auto_EGSPhantSettings(eindex).Materials(i)
		      next
		      ReDim dd.EGSPhantSettings.Contous(UBound(Auto_EGSPhantSettings(eindex).Contous))
		      for i=0 to UBound(Auto_EGSPhantSettings(eindex).Contous)
		        dd.EGSPhantSettings.Contous(i)=new Class_DOSXYZ_EGSPhant_Contour
		        dd.EGSPhantSettings.Contous(i).density=Auto_EGSPhantSettings(eindex).Contous(i).density
		        dd.EGSPhantSettings.Contous(i).materials=Auto_EGSPhantSettings(eindex).Contous(i).materials
		        dd.EGSPhantSettings.Contous(i).RTOG_Contour_Index=Auto_EGSPhantSettings(eindex).Contous(i).RTOG_Contour_Index
		        dd.EGSPhantSettings.Contous(i).Use_Material=Auto_EGSPhantSettings(eindex).Contous(i).Use_Material
		      next
		      
		      dd.Read_DOSXYZ
		      gDOSXYZ.DOSXYZ.Append dd
		      dosxyz_EGSPhant_Make_CT(UBound(DOSXYZ))
		    end
		  end
		  
		  Window_Treatment.MC_dosxyz_beam_progress
		  MC_Get_Linac_Properties_per_egsphant(UBound(gDOSXYZ.DOSXYZ))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_egsphant_Count()
		  //------------------------------------
		  // Count all of the egsphant files in the McGill RT folder
		  // Label each egsphant file with a shell name
		  //
		  // Readin each EGSPhantSettings header file
		  //
		  //------------------------------------
		  Dim f,h as FolderItem
		  Dim dd as Class_DOSXYZ
		  Dim i , k,materials as Integer
		  Dim temp,fname,shellstring as String
		  Dim ts as TextInputStream
		  '============DOSXYZ=============
		  f=gRTOG.path.Child("McGill_RT")
		  
		  Redim DOSXYZ(-1)
		  
		  for i=1 to f.Count
		    temp=f.Item(i).Name
		    if InStr(temp, ".egsphant")>0 and InStr(temp, ".egsphanthed")=0 then
		      Temp= f.Item(i).Name
		      fname=NthField(Temp,".egsphant",1)
		      temp=NthField(fname,gRTOG.Patient_ID+"_"+gRTOG.StudyID+gRTOG.SeriesNumber,2)
		      temp=NthField(temp,"_",2)
		      
		      
		      dd = new Class_DOSXYZ
		      dd.EGSPhantSettings= new Class_DOSXYZ_EGSPhantSettings
		      dd.EGSPhantSettings.name =temp
		      
		      // Read EGSPhant to get the materials used
		      
		      h=new FolderItem
		      h=f.Child(f.Item(i).Name)
		      
		      
		      h=new FolderItem
		      h=f.Child(fname+".egsphanthed")
		      
		      if h.Exists Then
		        ts=h.OpenAsTextFile
		        temp=ts.ReadLine
		        shellstring=trim(NthField(Temp,"=",2))
		        
		        // Count the Shell Names
		        for k=1 to CountFields(shellstring,",")
		          dd.EGSPhantSettings.shells.append NthField(shellstring,",",k)
		        next
		        
		        temp=ts.ReadLine
		        temp=trim(NthField(Temp,"=",2))
		        
		        if InStr(Temp,"True")>0 Then
		          dd.EGSPhantSettings.Non_CT_Phantom=True
		        else
		          dd.EGSPhantSettings.Non_CT_Phantom=False
		        end
		        
		        // Read pegs file name
		        temp=ts.ReadLine
		        shellstring=trim(NthField(Temp,"=",2))
		        dd.EGSPhantSettings.pegsfile=shellstring
		        
		        // Read CT Model Name
		        temp=ts.ReadLine
		        shellstring=trim(NthField(Temp,"=",2))
		        dd.EGSPhantSettings.CT_modelName=shellstring
		        
		        ts.Close
		      end
		      gDOSXYZ.dosxyz.Append dd
		    end
		  next
		  
		  
		  redim gDOSXYZ.EGSPhantSettings.Contous(UBound(grtog.Structures.Structures))
		  
		  
		  for i=0 to UBound(grtog.Structures.Structures)
		    gDOSXYZ.EGSPhantSettings.Contous(i)=new Class_DOSXYZ_EGSPhant_Contour
		    gDOSXYZ.EGSPhantSettings.Contous(i).RTOG_Contour_Index=i
		  next
		  
		  
		  dosxyznrc_Load_EGSPhant=True
		  if State=4 Then
		    Run
		  end
		  
		  
		  dosxyz_egsphant_Count_Default
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_egsphant_Count_Default()
		  //------------------------------------
		  // Look for default egsphant files
		  // else make default egsphant files
		  // 
		  //------------------------------------
		  Dim i , k,materials as Integer
		  Dim temp,fname,shellstring as String
		  Dim found as Boolean
		  '============DOSXYZ=============
		  
		  
		  for i=0 to UBound(Auto_EGSPhantSettings)
		    found=False
		    if Auto_EGSPhantSettings(i).Auto_Make Then
		      for k=0 to UBound(DOSXYZ)
		        if Auto_EGSPhantSettings(i).Name=DOSXYZ(k).EGSPhantSettings.name Then
		          found=True
		        end
		      Next
		      
		      if found=False Then
		        Auto_EGSPhantSettings(i).Make_EGSPhant=True
		        Auto_EGSPhantSettings_Make=True
		      end
		      
		      if me.State=4 Then
		        Run
		      end
		    end
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_EGSPhant_Make()
		  //----------------------------------------
		  // 1st Method to generate Egsphant file
		  // Copy EGSPhant settings into Class DOSXYZ EGSPhant
		  //
		  //----------------------------------------
		  Dim name as String
		  Dim find as Boolean
		  dim overwrite as Boolean
		  Dim dd as Class_DOSXYZ
		  Dim check as String
		  dim k, i as integer
		  Dim f ,dosfile,headerfile as FolderItem
		  Dim ts as TextOutputStream
		  Dim vv as Class_DOSXYZ_EGSPhant_Voxels
		  //----------------------------------------
		  
		  dd = new Class_DOSXYZ
		  dd.EGSPhantSettings = new Class_DOSXYZ_EGSPhantSettings
		  dd.EGSPhantSettings.Pegsfile=EGSPhantSettings.Pegsfile
		  dd.EGSPhantSettings.CT_modelName=EGSPhantSettings.CT_modelName
		  dd.EGSPhantSettings.name=EGSPhantSettings.Name
		  
		  if EGSPhantSettings.Non_CT_Phantom=False Then // For CT Phantoms
		    // Load EGSPhant Setting into EGSPhant Class
		    dd.EGSPhantSettings.Non_CT_Phantom=False
		    dd.EGSPhantSettings.X_Max=EGSPhantSettings.X_Max
		    dd.EGSPhantSettings.X_min=EGSPhantSettings.X_min
		    dd.EGSPhantSettings.y_Max=EGSPhantSettings.Y_max
		    dd.EGSPhantSettings.y_min=EGSPhantSettings.Y_min
		    dd.EGSPhantSettings.z_Max=EGSPhantSettings.Z_max
		    dd.EGSPhantSettings.z_min=EGSPhantSettings.Z_min
		    dd.EGSPhantSettings.Del_X=EGSPhantSettings.Del_X
		    dd.EGSPhantSettings.Del_y=EGSPhantSettings.Del_Y
		    dd.EGSPhantSettings.Del_z=EGSPhantSettings.Del_Z
		    dd.EGSPhantSettings.Create_wth_CTcontours=EGSPhantSettings.Create_wth_CTcontours
		    
		    if dd.EGSPhantSettings.Create_wth_CTcontours Then
		      // Determine Which Materials are used
		      dd.EGSPhantSettings.Cleancontours=EGSPhantSettings.Cleancontours
		      dd.EGSPhantSettings.Cleancontour_Index=EGSPhantSettings.Cleancontour_Index
		      dd.EGSPhantSettings.Clean_material=EGSPhantSettings.Clean_material
		      dd.EGSPhantSettings.CT_model=EGSPhantSettings.CT_model
		      ReDim dd.EGSPhantSettings.Materials(UBound(EGSPhantSettings.Materials))
		      for i=0 to UBound(EGSPhantSettings.Materials)
		        dd.EGSPhantSettings.Materials(i)=EGSPhantSettings.Materials(i)
		      next
		      ReDim dd.EGSPhantSettings.Contous(UBound(EGSPhantSettings.Contous))
		      for i=0 to UBound(EGSPhantSettings.Contous)
		        dd.EGSPhantSettings.Contous(i)=new Class_DOSXYZ_EGSPhant_Contour
		        dd.EGSPhantSettings.Contous(i).density=EGSPhantSettings.Contous(i).density
		        dd.EGSPhantSettings.Contous(i).materials=EGSPhantSettings.Contous(i).materials
		        dd.EGSPhantSettings.Contous(i).RTOG_Contour_Index=EGSPhantSettings.Contous(i).RTOG_Contour_Index
		        dd.EGSPhantSettings.Contous(i).Use_Material=EGSPhantSettings.Contous(i).Use_Material
		      next
		      
		      dd.Read_DOSXYZ
		      gDOSXYZ.DOSXYZ.Append dd
		      //MsgBox "About to run gdosxyz"
		      gDOSXYZ.dosxyz_run_egsphant_CT=True
		      gDOSXYZ.dosxyz_run_egsphant_index=UBound(DOSXYZ)
		      if gDOSXYZ.State=4 Then
		        gDOSXYZ.Run
		      End
		      
		    else // For manual set voxels
		      for i=0 to UBound(EGSPhantSettings.Voxels)
		        vv= new Class_DOSXYZ_EGSPhant_Voxels
		        dd.EGSPhantSettings.Voxels.Append vv
		        vv.Material=EGSPhantSettings.Voxels(i).Material
		        vv.X_From=EGSPhantSettings.Voxels(i).X_From
		        vv.X_To=EGSPhantSettings.Voxels(i).X_To
		        vv.Y_From=EGSPhantSettings.Voxels(i).Y_From
		        vv.Y_To=EGSPhantSettings.Voxels(i).Y_To
		        vv.Z_From=EGSPhantSettings.Voxels(i).Z_From
		        vv.Z_To=EGSPhantSettings.Voxels(i).Z_To
		        vv.density=EGSPhantSettings.Voxels(i).density
		      next
		      
		      
		      ReDim dd.EGSPhantSettings.Materials(UBound(EGSPhantSettings.Materials))
		      for i=0 to UBound(EGSPhantSettings.Materials)
		        dd.EGSPhantSettings.Materials(i)=EGSPhantSettings.Materials(i)
		      next
		      dd.Read_DOSXYZ
		      gDOSXYZ.DOSXYZ.Append dd
		      gDOSXYZ.dosxyz_run_egsphant_Manual=True
		      gDOSXYZ.dosxyz_run_egsphant_index=UBound(DOSXYZ)
		      if gDOSXYZ.State=4 Then
		        gDOSXYZ.Run
		      End
		      
		    end
		    
		    
		    
		    
		  else  // For Profile Phantoms
		    dd.EGSPhantSettings.Non_CT_Phantom=True
		    dd.Read_DOSXYZ
		    gDOSXYZ.DOSXYZ.Append dd
		    '====================Write THE EGSPHANT
		    f=new FolderItem
		    f=gRTOG.Path.Child("McGill_RT")
		    dosfile=f.child(gRTOG.Patient_ID+"_"+gRTOG.studyID+grtog.seriesnumber+"_"+gDOSXYZ.DOSXYZ(UBound(gDOSXYZ.DOSXYZ)).EGSPhantSettings.name+".egsphant")
		    if dosfile <> nil then
		      ts=dosfile.CreateTextFile
		      ts.Close
		    end
		    dd.Write_DOSXYZ
		    dd.Write_EGSPhant_Settings
		  end
		  
		  Window_Treatment.MC_dosxyz_beam_progress
		  MC_Get_Linac_Properties_per_egsphant(UBound(gDOSXYZ.DOSXYZ))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub dosxyz_EGSPhant_Make_CT(index as Integer)
		  //---------------------------------------------------
		  // 2nd level method
		  // Method to generate egsphant file based on 
		  // user input and a CT to density curve
		  //
		  // 
		  //---------------------------------------------------
		  Dim i, j, k, p, maskval ,cvalue,order,material_value as integer
		  Dim x,y,z,density_value as Single
		  Dim maskrgb(-1) as RGBSurface
		  Dim good as Boolean
		  Dim ee as Class_DOSXYZ_EGSPhantSettings
		  Dim temp ,CT_cal,m_name as String
		  //----------------------------------------------
		  
		  if index>-1 and index<=UBound(DOSXYZ) Then
		    ee=DOSXYZ(index).EGSPhantSettings
		    gdosxyz.egs_msg.append "Making EGSPhant file"  //Commented out by William Davis to avoid crash due to exception
		    
		    if ee.CT_model<0 or ee.CT_model>UBound(gCT.All_CT) Then
		      Errors.Append "CT model not defined, choose again"
		      gdosxyz.egs_msg.append "Error Making EGSPhant file" //Commented out by William Davis to avoid crash due to exception
		      Return
		    end
		    
		    if UBound(gCT.All_CT(ee.CT_model).CalibrationM)<=-1 Then
		      Errors.Append "Error with CT model named, "+gCT.All_CT(ee.CT_model).Model_name+", no materials defined!"
		      gdosxyz.egs_msg.append "Error Making EGSPhant file" //Commented out by William Davis to avoid crash due to exception
		      Return 
		    end
		    
		    ReDim ee.mediacolor(-1)
		    for i=0 to UBound(ee.Materials)
		      ee.mediacolor.Append gVis.Make_Clour
		    Next
		    
		    // --------------------------------------------------------------
		    //========== Size of nx,ny,nz with boundary================
		    ee.Nx=Round((ee.X_Max-ee.X_min)/ee.Del_X)
		    ee.Ny=Round((ee.z_Max-ee.z_min)/ee.Del_z)
		    ee.nz=Round((ee.y_Max-ee.y_min)/ee.Del_y)
		    
		    // Do not use these values anymore!!
		    // Use min values if need be
		    ee.X_Max=0
		    ee.z_Max=0
		    ee.y_Max=0
		    
		    if ee.nx<=0 or ee.ny<=0 or ee.nz<=0 Then
		      Errors.append "Error Making EGSPhant file" //Changed to Errors.append by William Davis to avoid crash due to exception
		      Return
		    end
		    
		    
		    ReDim ee.boundaryx(ee.nx)
		    ReDim ee.boundaryy(ee.ny)
		    ReDim ee.boundaryZ(ee.nz)
		    
		    // X voxels
		    for i=0 to ee.nx
		      ee.boundaryx(i)=ee.X_min+i*ee.Del_X
		    next
		    
		    // Y voxels
		    for i= ee.ny DownTo 0  
		      ee.boundaryy(ee.ny-i)=-(ee.z_min+i*ee.Del_z)
		    next
		    
		    //Z voxels
		    for i=ee.nz DownTo 0
		      ee.boundaryz(ee.nz-i)=-(ee.Y_min+i*ee.Del_y)
		    next
		    
		    // finished egsphant header
		    
		    '=========================Make Phantom
		    //MsgBox "Make Phantom"
		    if ee.nz<=0 Then
		      Errors.append "Error Making EGSPhant file" //Changed to Errors.append by William Davis to avoid crash due to exception
		      
		      Return
		    end
		    
		    ee.Make_ImageMap
		    
		    ReDim ee.media(ee.nx-1,ee.ny-1,ee.nz-1 )
		    ReDim ee.density(ee.nx-1,ee.ny-1,ee.nz-1 )
		    
		    //the lookup mask is created now use it as a look up to create the dosxyz file
		    //make an rgb surface lookup for quick access.
		    
		    redim maskrgb(ubound(ee.imagemask))
		    for k=0 to ubound(ee.imagemask)
		      maskrgb(k)=ee.imagemask(k).rgbsurface
		    next
		    
		    ee.maxdensity=-10000
		    ee.mindensity=10000
		    
		    // nz is really the y values within slices
		    // ny is really the axial slices Z
		    for k= ee.nz-1  downto 0  
		      y=ee.Y_min+ee.Del_Y/2+ee.Del_Y*k
		      gdosxyz.egs_msg.append "Assigning Voxel Values "+Format((100*(ee.nz-k)/ee.nz),"#")+"%" //Commented out by William Davis to avoid crash due to exception
		      for j= ee.ny-1 downTo 0 
		        z=ee.z_min+ee.Del_z/2+ee.Del_z*j
		        for i=0 to ee.nx-1
		          x=ee.x_min+ee.Del_x/2+ee.Del_x*i
		          //get lookup value
		          maskval=maskrgb(j).pixel(i,k).red
		          //if value of the look up image is 255 take the original value
		          if maskval>200 then // Use normal density
		            cvalue=RTOG_Image_Interpolate(x,y,z)
		            CT_cal=dosxyz_CT2Dens(cvalue,ee.CT_model)
		            m_name=Trim(NthField(ct_cal,"_",1))
		            density_value=Val(NthField(ct_cal,"_",2))
		          elseif (maskval<=(ubound(grtog.Structures.Structures)+1)) and maskval>=1 then // Use override density
		            m_name=ee.Contous(maskval-1).materials
		            density_value=ee.Contous(maskval-1).density
		          else // Outside the clean contour, set to clean density value
		            m_name=ee.Clean_material
		            density_value=val(ee.Clean_density)
		          end if
		          
		          // Turn material names into an index number
		          material_value=-1
		          for p=0 to UBound(ee.Materials)
		            if m_name=ee.Materials(p) Then
		              material_value=p
		              exit for p
		            end
		          next
		          
		          if material_value=-1 Then
		            Break
		            Errors.Append "Problem with material index!"
		          end
		          
		          if density_value>ee.maxdensity Then
		            ee.maxdensity=density_value
		          end
		          
		          if density_value<ee.mindensity Then
		            ee.mindensity=density_value
		          end
		          
		          ee.media(i,ee.ny-1-j,ee.nz-1-k)=material_value
		          ee.density(i,ee.ny-1-j,ee.nz-1-k)=density_value
		        next
		      next
		    next
		    
		    // Set new Del Y,Z, DelX has not changed
		    ee.Del_Y=ee.boundaryy(1)-ee.boundaryy(0)
		    ee.Del_z=ee.boundaryz(1)-ee.boundaryz(0)
		    
		    '====================Write THE EGSPHANT file and the MMCTP header file================
		    ee.Loaded=True
		    ee.Write_EGSPhant
		    DOSXYZ(index).Write_EGSPhant_Settings
		    gdosxyz.egs_msg.append "EGSPhant Creat Finished" //Commented out by William Davis to avoid crash due to exception
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_EGSPhant_Make_Manual(index as Integer)
		  //---------------------------------------------------
		  // 2nd level method
		  // Method to generate egsphant file based on user input
		  //
		  // 
		  //
		  //
		  //---------------------------------------------------
		  Dim i, j, k, p, maskval ,cvalue,order,material_value,x,y,z as integer
		  Dim density_value as Single
		  Dim maskrgb(-1) as RGBSurface
		  Dim found,good as Boolean
		  Dim ee as Class_DOSXYZ_EGSPhantSettings
		  Dim temp ,CT_cal,m_name as String
		  //----------------------------------------------
		  
		  ee=DOSXYZ(index).EGSPhantSettings
		  
		  gdosxyz.egs_msg.append "Making EGSPhant file" //Commented out by William Davis to avoid crash due to exception
		  
		  
		  
		  ReDim ee.mediacolor(-1)
		  for i=0 to UBound(ee.Materials)
		    ee.mediacolor.Append gVis.Make_Clour
		  Next
		  
		  // --------------------------------------------------------------
		  //========== Size of nx,ny,nz with boundary================
		  ee.Nx=Round((ee.X_Max-ee.X_min)/ee.Del_X)
		  ee.Ny=Round((ee.z_Max-ee.z_min)/ee.Del_z)
		  ee.nz=Round((ee.y_Max-ee.y_min)/ee.Del_y)
		  
		  // Do not use these values anymore!!
		  // Use min values if need be
		  ee.X_Max=0
		  ee.z_Max=0
		  ee.y_Max=0
		  
		  if ee.nx<=0 or ee.ny<=0 or ee.nz<=0 Then
		    Return
		  end
		  
		  
		  ReDim ee.boundaryx(ee.nx)
		  ReDim ee.boundaryy(ee.ny)
		  ReDim ee.boundaryZ(ee.nz)
		  
		  // X voxels
		  for i=0 to ee.nx
		    ee.boundaryx(i)=ee.X_min+i*ee.Del_X
		  next
		  
		  // Y voxels
		  for i= ee.ny DownTo 0  
		    ee.boundaryy(ee.ny-i)=-(ee.z_min+i*ee.Del_z)
		  next
		  
		  //Z voxels
		  for i=ee.nz DownTo 0
		    ee.boundaryz(ee.nz-i)=-(ee.Y_min+i*ee.Del_y)
		  next
		  
		  // finished egsphant header
		  
		  '=========================Make Phantom
		  //MsgBox "Make Phantom"
		  if ee.nz<=0 Then
		    Return
		  end
		  
		  ReDim ee.media(ee.nx-1,ee.ny-1,ee.nz-1 )
		  ReDim ee.density(ee.nx-1,ee.ny-1,ee.nz-1 )
		  
		  //the lookup mask is created now use it as a look up to create the dosxyz file
		  //make an rgb surface lookup for quick access.
		  
		  ee.maxdensity=-10000
		  ee.mindensity=10000
		  
		  gdosxyz.egs_msg.append "Assigning Voxel Values" //Commented out by William Davis to avoid crash due to exception
		  // nz is really the y values within slices
		  // ny is really the axial slices Z
		  for k= ee.nz-1  downto 0  
		    //y=ee.Y_min+ee.Del_Y/2+ee.Del_Y*k
		    y=k+1
		    
		    for j= ee.ny-1 downTo 0 
		      z=j+1
		      for i=0 to ee.nx-1
		        x=i+1
		        //get lookup value
		        
		        for p=0 to UBound(ee.Voxels)
		          if ee.Voxels(p).X_From<=x and x<=ee.Voxels(p).X_To Then
		            m_name=ee.Voxels(p).Material
		            density_value=ee.Voxels(p).density
		            Exit for p
		          end
		        next
		        
		        // Turn material names into an index number
		        for p=0 to UBound(ee.Materials)
		          if m_name=ee.Materials(p) Then
		            material_value=p
		          end
		        next
		        
		        if density_value>ee.maxdensity Then
		          ee.maxdensity=density_value
		        end
		        
		        if density_value<ee.mindensity Then
		          ee.mindensity=density_value
		        end
		        
		        ee.media(i,ee.ny-1-j,ee.nz-1-k)=material_value
		        ee.density(i,ee.ny-1-j,ee.nz-1-k)=density_value
		      next
		    next
		  next
		  
		  // Set new Del Y,Z, DelX has not changed
		  ee.Del_Y=ee.boundaryy(1)-ee.boundaryy(0)
		  ee.Del_z=ee.boundaryz(1)-ee.boundaryz(0)
		  
		  '====================Write THE EGSPHANT file and the MMCTP header file================
		  ee.Write_EGSPhant
		  DOSXYZ(index).Write_EGSPhant_Settings
		  gdosxyz.egs_msg.append "Finished" //Commented out by William Davis to avoid crash due to exception
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_Egsphant_Read_Settings()
		  //-------------------------------
		  // Readin default egsphant variables
		  //
		  //-------------------------------
		  Dim i,k,x as Integer
		  Dim ss as RTOG_Structure_Class
		  //-------------------------------
		  
		  if UBound(gRTOG.Scan)>-1 Then
		    if Auto_EGSPhantSettings(0).Del_X=0 Then
		      gDOSXYZ.EGSPhantSettings.Del_X=gRTOG.Scan(0).Grid_Units_Width
		    else
		      gDOSXYZ.EGSPhantSettings.Del_X=Auto_EGSPhantSettings(0).Del_X
		    end
		    if Auto_EGSPhantSettings(0).Del_Y=0 Then
		      gDOSXYZ.EGSPhantSettings.Del_y=gRTOG.Scan(0).Grid_Units_Height
		    else
		      gDOSXYZ.EGSPhantSettings.Del_y=Auto_EGSPhantSettings(0).Del_y
		    end
		    if Auto_EGSPhantSettings(0).Del_Z=0 Then
		      gDOSXYZ.EGSPhantSettings.Del_z=gRTOG.Scan(0).Slice_Thickness
		    else
		      gDOSXYZ.EGSPhantSettings.Del_z=Auto_EGSPhantSettings(0).Del_z
		    end
		    gDOSXYZ.EGSPhantSettings.X_Max=gVis.xoff_set-gVis.scale_width/2 +gRTOG.Scan(0).Grid_Units_Width*gRTOG.Scan(0).Size_of_Dimension1
		    gDOSXYZ.EGSPhantSettings.X_min=gVis.xoff_set-gVis.scale_width/2
		    gDOSXYZ.EGSPhantSettings.z_Max=gRTOG.Scan(UBound(gRTOG.Scan)).Z_Value+gRTOG.Scan(0).Slice_Thickness/2
		    gDOSXYZ.EGSPhantSettings.z_min=gRTOG.Scan(0).Z_Value-gRTOG.Scan(0).Slice_Thickness/2
		    gDOSXYZ.EGSPhantSettings.y_Max=gVis.yoff_set-gVis.scale_height/2+gRTOG.Scan(0).Grid_Units_Height*gRTOG.Scan(0).Size_of_Dimension2
		    gDOSXYZ.EGSPhantSettings.y_min=gVis.yoff_set-gVis.scale_height/2
		    gDOSXYZ.EGSPhantSettings.Clean_material=Auto_EGSPhantSettings(0).Clean_material
		    for i=0 to UBound(dosxyz_materials)
		      if gDOSXYZ.EGSPhantSettings.Clean_material=dosxyz_materials(i).Material_Name Then
		        gDOSXYZ.EGSPhantSettings.Clean_density=Format(dosxyz_materials(i).Material_Density,"-#.####")
		      end
		    next
		    gDOSXYZ.EGSPhantSettings.CT_model=Auto_EGSPhantSettings(0).CT_model
		    gDOSXYZ.EGSPhantSettings.Name=Auto_EGSPhantSettings(0).Name
		    for i=0 to UBound(grtog.Structures.Structures)
		      if grtog.Structures.Structures(i).Structure_Name="BODY" or grtog.Structures.Structures(i).Structure_Name="EXTERNAL"  Then
		        ss=grtog.Structures.Structures(i)
		        gDOSXYZ.EGSPhantSettings.X_Max=-100000
		        gDOSXYZ.EGSPhantSettings.X_Min=100000
		        gDOSXYZ.EGSPhantSettings.y_Max=-10000
		        gDOSXYZ.EGSPhantSettings.y_Min=10000
		        gDOSXYZ.EGSPhantSettings.Cleancontour_index=i
		        for i=0 to UBound(ss.Structure_Data)
		          for k=0 to UBound(ss.Structure_Data(i).Segments)
		            for x=0 to UBound(ss.Structure_Data(i).Segments(k).points)
		              if ss.Structure_Data(i).Segments(k).points(x).x>gDOSXYZ.EGSPhantSettings.X_Max Then
		                gDOSXYZ.EGSPhantSettings.X_Max=ss.Structure_Data(i).Segments(k).points(x).x+1
		              end
		              if ss.Structure_Data(i).Segments(k).points(x).x<gDOSXYZ.EGSPhantSettings.X_Min Then
		                gDOSXYZ.EGSPhantSettings.X_Min=ss.Structure_Data(i).Segments(k).points(x).x-1
		              end
		              if ss.Structure_Data(i).Segments(k).points(x).y<gDOSXYZ.EGSPhantSettings.Y_min Then
		                gDOSXYZ.EGSPhantSettings.y_Min=ss.Structure_Data(i).Segments(k).points(x).y-1
		              end
		              if ss.Structure_Data(i).Segments(k).points(x).y>gDOSXYZ.EGSPhantSettings.Y_max Then
		                gDOSXYZ.EGSPhantSettings.Y_max=ss.Structure_Data(i).Segments(k).points(x).y+1
		              end
		            next
		          next
		        next
		        Exit
		      End
		    next
		  end
		  
		  
		  // Set Settings for all default EGSPhant files
		  
		  for i=0 to UBound(Auto_EGSPhantSettings) 
		    Auto_EGSPhantSettings(i).X_Max=EGSPhantSettings.X_Max
		    Auto_EGSPhantSettings(i).X_min=EGSPhantSettings.X_min
		    Auto_EGSPhantSettings(i).y_Max=EGSPhantSettings.y_Max
		    Auto_EGSPhantSettings(i).Y_min=EGSPhantSettings.y_min
		    Auto_EGSPhantSettings(i).z_Max=EGSPhantSettings.z_Max
		    Auto_EGSPhantSettings(i).Z_min=EGSPhantSettings.Z_min
		    Auto_EGSPhantSettings(i).Update_MaterialsUD
		    
		    redim gDOSXYZ.Auto_EGSPhantSettings(i).Contous(UBound(grtog.Structures.Structures))
		    
		    for k=0 to UBound(grtog.Structures.Structures)
		      gDOSXYZ.Auto_EGSPhantSettings(i).Contous(k)=new Class_DOSXYZ_EGSPhant_Contour
		      gDOSXYZ.Auto_EGSPhantSettings(i).Contous(k).RTOG_Contour_Index=k
		    next
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function dosxyz_get_shell_Variables(egsphant_index as integer, beam as Integer) As Boolean
		  //-------------------------------------------------
		  // to update all beam variables
		  // link between beam variables and lianc settings
		  // link between beam variables and BEAMnrc settings
		  // link between beam variables and DOS,VMC settings
		  //-------------------------------------------------
		  dim i,x as integer
		  dim name,energy,mode as String
		  dim tt as Boolean
		  //-------------------------------------------------
		  
		  name=gRTOG.Plan(Plan_Index).beam(beam).rt_name
		  energy=gRTOG.Plan(Plan_Index).Beam(beam).beam_energy
		  mode=gRTOG.Plan(Plan_Index).Beam(beam).beam_mode
		  
		  if beam> UBound(gBEAM.Beams) or beam< 0 Then
		    Return False
		  end
		  
		  if egsphant_index<0 or egsphant_index>UBound(DOSXYZ) Then
		    Return False
		  end
		  
		  if beam> UBound(DOSXYZ(egsphant_index).DOSXYZ_Input) Then
		    Return False
		  end
		  
		  
		  
		  gBEAM.Beams(beam).egs_linac_index=-1
		  
		  // Update the Linac link
		  for i=0 to UBound(gLinacs.All_Linacs)
		    if mode= gLinacs.All_Linacs(i).Mode and _
		      gLinacs.All_Linacs(i).RT_name =name and _
		      gLinacs.All_Linacs(i).Energy = energy then
		      gBEAM.Beams(beam).egs_linac_index=i
		      Exit for i
		    end
		  next
		  
		  if gBEAM.Beams(beam).egs_linac_index=-1 Then
		    Return False
		  end
		  
		  if DOSXYZ(egsphant_index).DOSXYZ_Input(beam).isource=9 or _
		    DOSXYZ(egsphant_index).DOSXYZ_Input(beam).isource=11 or _ 
		    DOSXYZ(egsphant_index).DOSXYZ_Input(beam).isource=10 or _
		    DOSXYZ(egsphant_index).DOSXYZ_Input(beam).isource=20 or _
		    DOSXYZ(egsphant_index).DOSXYZ_Input(beam).isource=21  Then
		    //AAA
		    gBEAM.Beams(beam).egs_Shell_Index=gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_Shell_Index
		    tt=gBEAM.egs_Get_Directory(beam)
		    if gBEAM.Beams(beam).egs_Shell_Index>-1 and gBEAM.Beams(beam).egs_Shell_Index<=UBound(gShells.Shells) Then
		      cc = new Class_MMCTP_Commands
		      cc.shell=gShells.Shells(gBEAM.Beams(beam).egs_Shell_Index)
		      
		      if gBEAM.Beams(beam).egs_BEAMnrc_dir="" Then
		        Return False
		      end
		      DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_Shell_Index=gBeam.Beams(beam).egs_Shell_Index
		      gDOSXYZ.cc = new Class_MMCTP_Commands
		      gDOSXYZ.cc.Shell= gShells.Shells(gBEAM.Beams(beam).egs_Shell_Index)
		      gDOSXYZ.cc.dir=cc.Shell.egsnrc_folder_path+"dosxyznrc/"
		      for x=0 to UBound(gDOSXYZ.DOSXYZ)
		        if UBound(gDOSXYZ.DOSXYZ(x).DOSXYZ_Input)>=x Then
		          gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam).dos_shell=cc.shell.title
		        end
		      next
		      
		      Return True
		    else
		      Return False
		    end
		    
		  elseif DOSXYZ(egsphant_index).DOSXYZ_Input(beam).isource=2 or DOSXYZ(egsphant_index).DOSXYZ_Input(beam).isource=8 Then
		    tt=gBEAM.egs_Get_Directory(beam)
		    if gBEAM.Beams(beam).egs_Shell_Index>-1 and gBEAM.Beams(beam).egs_Shell_Index<=UBound(gShells.Shells) Then
		      cc = new Class_MMCTP_Commands
		      cc.shell=gShells.Shells(gBEAM.Beams(beam).egs_Shell_Index)
		      
		      
		      if gBEAM.Beams(beam).egs_BEAMnrc_dir="" Then
		        Return False
		      end
		      DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_Shell_Index=gBeam.Beams(beam).egs_Shell_Index
		      DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_Shell=gShells.Shells(DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_Shell_Index).title
		      
		      gDOSXYZ.cc = new Class_MMCTP_Commands
		      gDOSXYZ.cc.Shell= gShells.Shells(gBEAM.Beams(beam).egs_Shell_Index)
		      
		      if cc.shell.OS=3 Then
		        gDOSXYZ.cc.dir=cc.Shell.egsnrc_folder_path+"dosxyznrc\"
		      else
		        gDOSXYZ.cc.dir=cc.Shell.egsnrc_folder_path+"dosxyznrc/"
		      end
		      
		      
		      Return True
		    else
		      Return False
		    end
		    
		  elseif  DOSXYZ(egsphant_index).DOSXYZ_Input(beam).isource=1 or DOSXYZ(egsphant_index).DOSXYZ_Input(beam).isource=3 then
		    // AA update to include source 3
		    
		    gDOSXYZ.cc = new Class_MMCTP_Commands
		    gDOSXYZ.cc.Shell= gShells.Shells(DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_Shell_Index)
		    if cc.shell.OS=3 Then
		      gDOSXYZ.cc.dir=cc.Shell.egsnrc_folder_path+"dosxyznrc\"
		    else
		      gDOSXYZ.cc.dir=cc.Shell.egsnrc_folder_path+"dosxyznrc/"
		    end
		    gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_shell=cc.shell.title
		    
		    Return True
		    
		    
		  else
		    
		    Return False
		  end
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function dosxyz_Importd(g as folderItem) As boolean
		  //---------------------------------------------------------
		  //
		  //
		  //---------------------------------------------------------
		  Dim dosxyz_voxelx,dosxyz_voxely,dosxyz_voxelz,ix,tt,i,j as Integer
		  Dim Dose as RTOG_Dose_Distribution
		  Dim head,temp,splitf(-1) as string
		  Dim data as RTOG_Dose_Plane
		  Dim ts as TextInputStream
		  Dim good as Boolean
		  Dim dosetemp as Double
		  Dim x_val(-1),y_val(-1),z_val(-1),dvalue as Single
		  //---------------------------------------------------------
		  
		  ts=g.OpenAsTextFile
		  head=Trim(ts.ReadLine)
		  dosxyz_voxelx=val(NthField(head," ",1))
		  dosxyz_voxely=val(NthField(head," ",2))
		  dosxyz_voxelz=val(NthField(head," ",3))
		  
		  Redim x_val(dosxyz_voxelx)
		  Redim y_val(dosxyz_voxely)
		  Redim z_val(dosxyz_voxelz)
		  
		  PW_Title="Importing 3ddose"
		  PW_Progress_Max=dosxyz_voxelz+1
		  PW_Show=true
		  
		  
		  ix=0
		  While ix<= dosxyz_voxelx
		    temp=Trim(ts.ReadLine)
		    Splitf=split(temp," ")
		    for i= UBound(splitf) DownTo 0
		      if Splitf(i)=" " or Splitf(i)="" then
		        Splitf.Remove i
		      end
		    next
		    
		    tt=0
		    for i=0 to UBound(splitf)
		      x_val(ix+tt)=val(splitf(i))
		      tt=tt+1
		    next
		    ix=ix+tt
		  Wend
		  
		  
		  ix=0
		  While ix<= dosxyz_voxely
		    temp=Trim(ts.ReadLine)
		    Splitf=split(temp," ")
		    for i= UBound(splitf) DownTo 0
		      if Splitf(i)=" " or Splitf(i)="" then
		        Splitf.Remove i
		      end
		    next
		    
		    tt=0
		    for i=0 to UBound(splitf)
		      y_val(ix+tt)=val(splitf(i))
		      tt=tt+1
		    next
		    ix=ix+tt
		  Wend
		  
		  
		  ix=0
		  While ix<= dosxyz_voxelz
		    temp=Trim(ts.ReadLine)
		    Splitf=split(temp," ")
		    for i= UBound(splitf) DownTo 0
		      if Splitf(i)=" " or Splitf(i)="" then
		        Splitf.Remove i
		      end
		    next
		    
		    tt=0
		    for i=0 to UBound(splitf)
		      z_val(ix+tt)=val(splitf(i))
		      tt=tt+1
		    next
		    ix=ix+tt
		  Wend
		  
		  
		  
		  Dose = new RTOG_Dose_Distribution
		  Dose.SOP_Instance_UID=gDICOM.UID_Make
		  data=new RTOG_Dose_Plane
		  
		  
		  
		  
		  
		  Dose.engine="3ddose"
		  Dose.Size_of_Dimension1=dosxyz_voxelx
		  Dose.Size_of_Dimension2=dosxyz_voxely
		  Dose.Size_of_Dimension3=dosxyz_voxelz
		  
		  Dose.Horizontal_Grid=x_val(1)-x_val(0)
		  Dose.Vertical_Grid=-(y_val(0)-y_val(1))
		  dose.Depth_Grid=z_val(1)-z_val(0)
		  
		  
		  Dose.Coord_1_1st_point=x_val(0)+Dose.Horizontal_Grid/2
		  dose.Coord_2_1st_point=y_val(0)+Dose.Vertical_Grid/2
		  dose.Coord_3_1st_point=z_val(0)+Dose.Depth_Grid/2
		  
		  dose.dmax=0
		  dose.Dose_Units="cGy"
		  
		  for j=1 to dosxyz_voxelz
		    
		    PW_Progress=j
		    PW_StaticText="Reading file"
		    
		    
		    data=new RTOG_Dose_Plane
		    data.Z=dose.Coord_3_1st_point+Dose.Depth_Grid*(j-1)
		    
		    
		    ix=0
		    While ix<= dosxyz_voxelx*dosxyz_voxely
		      temp=Trim(ts.ReadLine)
		      Splitf=split(temp," ")
		      tt=0
		      for i=0 to UBound(splitf)
		        if Splitf(i)<>"" and splitf(i)<> " " then
		          tt=tt+1
		          dvalue=val(Splitf(i))
		          
		          
		          
		          data.Points.Append dvalue
		          
		          if dvalue>dose.Dmax then
		            dose.Dmax=dvalue
		          elseif dvalue < dose.Dmin Then
		            dose.Dmin=dvalue
		          end
		          
		          
		        end
		        
		      next
		      ix=ix+tt
		      
		    Wend
		    
		    dose.Dose_Distribution.Append data
		    
		  next
		  
		  
		  
		  
		  gRTOG.Plan(Plan_Index).Dose.append dose
		  PW_Progress_Max=1
		  gRTOG.Plan(Plan_Index).Write_McGill_Dose(UBound(gRTOG.Plan(Plan_Index).Dose))
		  
		  Window_Treatment.window_update_plan_now=True
		  PW_Show=false
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_Import_DoseOutput(egsphant_index as integer, first_dose as integer)
		  // -----------------------------------
		  // The method will readin a DOSXYZ 3ddose file
		  // and generate a dose output value
		  //
		  //-------------------------------------
		  Dim k as Integer
		  Dim f as FolderItem
		  Dim ddd as Class_DOSXYZ_3Ddose
		  Dim profile as Class_Profile_One
		  Dim pp as Class_Points
		  Dim temp_name,name as String
		  Dim x,y,z,out,ssd,depth,error as Double
		  Dim d as Date
		  Dim bb as Boolean
		  Dim gg as Class_DOSXYZ_Input
		  //-------------------------------------
		  
		  
		  // ------- Find a name for this dose distribution ----------------
		  temp_name="DOSXYZ_"+DOSXYZ(egsphant_index).EGSPhantSettings.name
		  
		  d=New Date
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  
		  name=str(first_dose+1)
		  While Len(name)<3
		    name="0"+name
		  Wend
		  
		  f=f.Child(MC_file_name+name+"_"+DOSXYZ(egsphant_index).egsphantsettings.name+".3ddose")
		  if f.Exists=False Then
		    MsgBox "Could not find file : "+f.Name
		    PW_Show=false
		    Return
		  end
		  
		  
		  ddd=new Class_DOSXYZ_3Ddose
		  bb=ddd.read(f)
		  
		  profile = new Class_Profile_One
		  profile.Colour=gvis.Make_Clour
		  
		  if first_dose<= UBound(gBEAM.Beams) and (DOSXYZ(egsphant_index).DOSXYZ_Input(first_dose).isource=2 or DOSXYZ(egsphant_index).DOSXYZ_Input(first_dose).isource=9 or  DOSXYZ(egsphant_index).DOSXYZ_Input(first_dose).isource=11) Then
		    profile.Linac=gRTOG.Plan(Plan_Index).Beam(first_dose).rt_name
		    profile.Label=gRTOG.Plan(Plan_Index).Beam(first_dose).Beam_Description+" - "+MC_file_name+str(first_dose+1)+ " - "+_
		    DOSXYZ(egsphant_index).egsphantsettings.name
		    profile.Energy=Val(gRTOG.Plan(Plan_Index).Beam(first_dose).beam_energy)
		    if gRTOG.Plan(Plan_Index).Beam(first_dose).Beam_mode="FLEC" Then
		      profile.Field_X=gRTOG.Plan(Plan_Index).Beam(first_dose).flec.x1+gRTOG.Plan(Plan_Index).Beam(first_dose).flec.x2
		      profile.Field_Y=gRTOG.Plan(Plan_Index).Beam(first_dose).flec.y1+gRTOG.Plan(Plan_Index).Beam(first_dose).flec.y2
		    else
		      profile.Field_X=gRTOG.Plan(Plan_Index).Beam(first_dose).Collimator.fields(0).X1+gRTOG.Plan(Plan_Index).Beam(first_dose).Collimator.fields(0).X2
		      profile.Field_Y=gRTOG.Plan(Plan_Index).Beam(first_dose).Collimator.fields(0).Y1+gRTOG.Plan(Plan_Index).Beam(first_dose).Collimator.fields(0).Y2
		    end
		    
		  else
		    profile.Label="Profile -"+MC_file_name+str(first_dose+1)
		  end
		  
		  profile.Show=True
		  profile.X_label="Position"
		  profile.y_label="Position"
		  profile.z_label="Position"
		  profile.Units_x="cm"
		  profile.Units_y="cm"
		  profile.Units_z="cm"
		  profile.Date=d.SQLDateTime
		  profile.Value_Label="Dose/Particle"
		  profile.Pointa = new Class_Points
		  profile.Pointb = new Class_Points
		  profile.Algorithm="DOSXYZnrc"
		  // Find out which axis is the profile
		  
		  
		  
		  gg=DOSXYZ(egsphant_index).DOSXYZ_Input(first_dose)
		  
		  if gg.IMAX<0 Then
		    // Assume it's a X profile
		    profile.TYPE=2
		    for k=0 to ddd.nx-1
		      pp = new Class_Points
		      pp.X_cm=ddd.boundaryx(k)+(ddd.boundaryx(k+1)-ddd.boundaryx(k))/2
		      pp.Value=ddd.dose(k,1,1)
		      pp.z_cm=ddd.boundaryz(1)+(ddd.boundaryz(2)-ddd.boundaryz(1))/2
		      pp.y_cm=ddd.boundaryy(1)+(ddd.boundaryy(2)-ddd.boundaryy(1))/2
		      pp.uncertainty=ddd.error(k,1,1)
		      profile.Points.Append pp
		    next
		    // Find Depth
		    Profile.Depth=pp.z_cm
		    
		  ElseIf gg.KMAX<0 Then
		    // it's a Z profile or PDD
		    profile.TYPE=1
		    for k=0 to ddd.nz-1
		      pp = new Class_Points
		      pp.Z_cm=ddd.boundaryZ(k)+(ddd.boundaryZ(k+1)-ddd.boundaryZ(k))/2
		      pp.x_cm=0
		      pp.y_cm=0
		      pp.Value=ddd.dose(1,1,k)
		      pp.uncertainty=ddd.error(1,1,k)
		      profile.Points.Append pp
		    next
		    if gg.KMAX=-3 Then
		      out=ddd.dose(1,1,1)
		      error=ddd.error(1,1,1)
		      ssd=gRTOG.Plan(Plan_Index).Beam(first_dose).Nominal_Isocenter+ddd.boundaryZ(0)
		      depth=gRTOG.Plan(Plan_Index).Beam(first_dose).Nominal_Isocenter-ssd+ddd.boundaryZ(1)+(ddd.boundaryZ(1+1)-ddd.boundaryZ(1))/2
		      gOutput.Add_Value(out, error,"DOSXYZnrc", gRTOG.Plan(Plan_Index).Beam(first_dose).RT_name,gRTOG.Plan(Plan_Index).Beam(first_dose).beam_energy,_
		      gRTOG.Plan(Plan_Index).Beam(first_dose).collimator.fields(0).x1+gRTOG.Plan(Plan_Index).Beam(first_dose).collimator.fields(0).x2,_
		      gRTOG.Plan(Plan_Index).Beam(first_dose).collimator.fields(0).y1+gRTOG.Plan(Plan_Index).Beam(first_dose).collimator.fields(0).y2,_
		      ssd,depth,DOSXYZ(egsphant_index).DOSXYZ_Input(first_dose).dos_shell,gRTOG.Plan(Plan_Index).Beam(first_dose).beam_mode)
		    end
		    profile.SSD=ssd
		    profile.depth=depth
		  else 
		    profile.TYPE=3
		    for k=0 to ddd.ny-1
		      pp = new Class_Points
		      pp.Y_cm=ddd.boundaryy(k)+(ddd.boundaryy(k+1)-ddd.boundaryy(k))/2
		      pp.x_cm=ddd.boundaryx(1)+(ddd.boundaryx(2)-ddd.boundaryx(1))/2
		      pp.z_cm=ddd.boundaryz(1)+(ddd.boundaryz(2)-ddd.boundaryz(1))/2
		      pp.Value=ddd.dose(1,k,1)
		      pp.uncertainty=ddd.error(1,k,1)
		      profile.Points.Append pp
		    next
		    // Find Depth
		    Profile.Depth=pp.z_cm
		    
		  end
		  
		  
		  // Normalize dose values
		  profile.Normalize_value=gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(first_dose).dos_dose
		  profile.Pointa.x_cm=profile.Points(0).X_cm
		  profile.Pointa.Y_cm=profile.Points(0).y_cm
		  profile.Pointa.z_cm=profile.Points(0).z_cm
		  
		  profile.Pointb.x_cm=profile.Points(UBound(profile.Points)).X_cm
		  profile.Pointb.Y_cm=profile.Points(UBound(profile.Points)).y_cm
		  profile.Pointb.z_cm=profile.Points(UBound(profile.Points)).z_cm
		  
		  x=profile.Pointb.x_cm-profile.Pointa.x_cm
		  y=profile.Pointb.y_cm-profile.Pointa.y_cm
		  z=profile.Pointb.z_cm-profile.Pointa.z_cm
		  Profile.Source_TYPE=1
		  profile.Distance=Sqrt(x*x+y*y+z*z)
		  gProfiles.One_Profile.Append profile
		  
		  //Window_Treatment.Profiles_Update_Results
		  gdosxyz.egs_msg.append "Output added to table" //Commented out by William Davis to avoid crash due to exception
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_Import_DoseProfile(egsphant_index as integer, first_dose as integer)
		  // -----------------------------------
		  // The method will readin a DOSXYZ 3ddose file
		  // and generate a dose profile
		  //
		  //-------------------------------------
		  Dim k as Integer
		  Dim f as FolderItem
		  Dim ddd as Class_DOSXYZ_3Ddose
		  Dim profile as Class_Profile_One
		  Dim pp as Class_Points
		  Dim temp_name,name as String
		  Dim x,y,z as Single
		  Dim d as Date
		  Dim bb as Boolean
		  //-------------------------------------
		  
		  
		  // ------- Find a name for this dose distribution ----------------
		  temp_name="DOSXYZ_"+DOSXYZ(egsphant_index).EGSPhantSettings.name
		  
		  d=New Date
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  
		  name=str(first_dose+1)
		  While Len(name)<3
		    name="0"+name
		  Wend
		  
		  f=f.Child(MC_file_name+name+"_"+DOSXYZ(egsphant_index).egsphantsettings.name+".3ddose")
		  if f.Exists=False Then
		    MsgBox "Could not find file : "+f.Name
		    PW_Show=false
		    Return
		  end
		  
		  if InStr(DOSXYZ(egsphant_index).egsphantsettings.name,"output")>0 Then
		    dosxyz_Import_DoseOutput(egsphant_index,first_dose)
		    Return
		  end
		  
		  
		  
		  ddd=new Class_DOSXYZ_3Ddose
		  bb=ddd.read(f)
		  
		  profile = new Class_Profile_One
		  profile.Colour=gvis.Make_Clour
		  
		  if first_dose<= UBound(gBEAM.Beams) and (DOSXYZ(egsphant_index).DOSXYZ_Input(first_dose).isource=2 or DOSXYZ(egsphant_index).DOSXYZ_Input(first_dose).isource=9 or DOSXYZ(egsphant_index).DOSXYZ_Input(first_dose).isource=11) Then
		    profile.Linac=gRTOG.Plan(Plan_Index).Beam(first_dose).rt_name
		    profile.Label=gRTOG.Plan(Plan_Index).Beam(first_dose).Beam_Description+" - "+MC_file_name+str(first_dose+1)+ " - "+_
		    DOSXYZ(egsphant_index).egsphantsettings.name
		    profile.Energy=Val(gRTOG.Plan(Plan_Index).Beam(first_dose).beam_energy)
		    if gRTOG.Plan(Plan_Index).Beam(first_dose).Beam_mode="FLEC" Then
		      profile.Field_X=gRTOG.Plan(Plan_Index).Beam(first_dose).flec.x1+gRTOG.Plan(Plan_Index).Beam(first_dose).flec.x2
		      profile.Field_Y=gRTOG.Plan(Plan_Index).Beam(first_dose).flec.y1+gRTOG.Plan(Plan_Index).Beam(first_dose).flec.y2
		    else
		      profile.Field_X=gRTOG.Plan(Plan_Index).Beam(first_dose).Collimator.fields(0).X1+gRTOG.Plan(Plan_Index).Beam(first_dose).Collimator.fields(0).X2
		      profile.Field_Y=gRTOG.Plan(Plan_Index).Beam(first_dose).Collimator.fields(0).Y1+gRTOG.Plan(Plan_Index).Beam(first_dose).Collimator.fields(0).Y2
		    end
		    
		  else
		    profile.Label="Profile -"+MC_file_name+str(first_dose+1)
		  end
		  
		  profile.Show=True
		  profile.X_label="Position"
		  profile.y_label="Position"
		  profile.z_label="Position"
		  profile.Units_x="cm"
		  profile.Units_y="cm"
		  profile.Units_z="cm"
		  profile.Date=d.SQLDateTime
		  profile.Value_Label="Dose/Particle"
		  profile.Pointa = new Class_Points
		  profile.Pointb = new Class_Points
		  profile.Algorithm="DOSXYZnrc"
		  // Find out which axis is the profile
		  
		  if ddd.Nz>3 Then
		    profile.TYPE=1
		    for k=0 to ddd.nz-1
		      pp = new Class_Points
		      pp.Z_cm=ddd.boundaryZ(k)+(ddd.boundaryZ(k+1)-ddd.boundaryZ(k))/2
		      pp.x_cm=0
		      pp.y_cm=0
		      pp.Value=ddd.dose(1,1,k)
		      pp.uncertainty=ddd.error(1,1,k)
		      profile.Points.Append pp
		    next
		    
		    Profile.SSD=gRTOG.Plan(Plan_Index).Beam(first_dose).Nominal_Isocenter+ddd.boundaryZ(0)
		    
		    
		  elseif ddd.Ny>3 Then
		    profile.TYPE=3
		    for k=0 to ddd.ny-1
		      pp = new Class_Points
		      pp.Y_cm=ddd.boundaryy(k)+(ddd.boundaryy(k+1)-ddd.boundaryy(k))/2
		      pp.x_cm=ddd.boundaryx(1)+(ddd.boundaryx(2)-ddd.boundaryx(1))/2
		      pp.z_cm=ddd.boundaryz(1)+(ddd.boundaryz(2)-ddd.boundaryz(1))/2
		      pp.Value=ddd.dose(1,k,1)
		      pp.uncertainty=ddd.error(1,k,1)
		      profile.Points.Append pp
		    next
		    // Find Depth
		    Profile.Depth=pp.z_cm-ddd.boundaryz(0)
		    Profile.SSD=gRTOG.Plan(Plan_Index).Beam(first_dose).Nominal_Isocenter+ddd.boundaryZ(0)
		    
		  else // Assume it's a X profile
		    // ddd.nx>3 Then
		    profile.TYPE=2
		    for k=0 to ddd.nx-1
		      pp = new Class_Points
		      pp.X_cm=ddd.boundaryx(k)+(ddd.boundaryx(k+1)-ddd.boundaryx(k))/2
		      pp.Value=ddd.dose(k,1,1)
		      pp.z_cm=ddd.boundaryz(1)+(ddd.boundaryz(2)-ddd.boundaryz(1))/2
		      pp.y_cm=ddd.boundaryy(1)+(ddd.boundaryy(2)-ddd.boundaryy(1))/2
		      pp.uncertainty=ddd.error(k,1,1)
		      profile.Points.Append pp
		    next
		    // Find Depth
		    Profile.Depth=pp.z_cm-ddd.boundaryz(0)
		    Profile.SSD=gRTOG.Plan(Plan_Index).Beam(first_dose).Nominal_Isocenter+ddd.boundaryZ(0)
		  end
		  
		  
		  // Normalize dose values
		  profile.Normalize_value=gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(first_dose).dos_dose
		  profile.Pointa.x_cm=profile.Points(0).X_cm
		  profile.Pointa.Y_cm=profile.Points(0).y_cm
		  profile.Pointa.z_cm=profile.Points(0).z_cm
		  
		  profile.Pointb.x_cm=profile.Points(UBound(profile.Points)).X_cm
		  profile.Pointb.Y_cm=profile.Points(UBound(profile.Points)).y_cm
		  profile.Pointb.z_cm=profile.Points(UBound(profile.Points)).z_cm
		  
		  x=profile.Pointb.x_cm-profile.Pointa.x_cm
		  y=profile.Pointb.y_cm-profile.Pointa.y_cm
		  z=profile.Pointb.z_cm-profile.Pointa.z_cm
		  Profile.Source_TYPE=1
		  profile.Distance=Sqrt(x*x+y*y+z*z)
		  gProfiles.One_Profile.Append profile
		  
		  
		  
		  if app.which_window_Commission Then
		    //Window_Commisssioning.Update_Profile
		  end
		  
		  //Window_Treatment.Profiles_Update_Results 
		  gdosxyz.egs_msg.append "Profile complete" //Commented out by William Davis to avoid crash due to exception
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function dosxyz_Input_file(egsphant_index as integer, beam as integer) As Boolean
		  //-------------------------------------------
		  // Make the dosxyz input file
		  //
		  //
		  // Updates ---------------------------------
		  //
		  // 2012 - Alexander
		  // Auto MMCTP Update change to non-CT phantom
		  //
		  // Update for isource 20 phsp shared lib runs 2017
		  //-------------------------------------------
		  Dim BEAMnrc_directoy, name, temp,bversion,name2 as string
		  Dim gamma, col, p, direction,test As Single
		  Dim egsinp as Class_DOSXYZ_input
		  Dim k, count,counter, cm_index, i, scoring  as Integer
		  Dim good as Boolean
		  //-------------------------------------------
		  
		  name=str(beam+1)
		  While Len(name)<3
		    name="0"+name
		  Wend
		  name2=MC_file_name+name+"_"+DOSXYZ(egsphant_index).EGSPhantSettings.name +"_Arc.egsinp"
		  name=MC_file_name+name+"_"+DOSXYZ(egsphant_index).EGSPhantSettings.name +".egsinp"
		  
		  egsinp=DOSXYZ(egsphant_index).DOSXYZ_Input(beam)
		  egsinp.TITLE=name+" DOSXYZ Simulation"
		  
		  gdosxyz.egs_msg.append "Making input file : "+name //Commented out by William Davis to avoid crash due to exception //Then fixed by Andrew Alexander, it appears
		  
		  //Update IDAT to default value
		  egsinp.IDAT=gDOSXYZ.dosxyz_defaultIDAT
		  
		  if egsinp.dos_Non_CT=False Then
		    // For CT Phantom
		    egsinp.NMED=0
		    if cc.Shell<> nil Then
		      if cc.shell.OS=3 Then
		        temp=cc.Shell.egsnrc_folder_path+"dosxyznrc\"+gRTOG.Patient_ID+"_"+gRTOG.StudyID+grtog.SeriesNumber+"_"+DOSXYZ(egsphant_index).EGSPhantSettings.name +".egsphant"
		      else
		        temp=cc.Shell.egsnrc_folder_path+"dosxyznrc/"+gRTOG.Patient_ID+"_"+gRTOG.StudyID+grtog.SeriesNumber+"_"+DOSXYZ(egsphant_index).EGSPhantSettings.name +".egsphant"
		      end
		    else
		      temp="dosxyznrc/"+gRTOG.Patient_ID+"_"+gRTOG.StudyID+grtog.seriesnumber+"_"+DOSXYZ(egsphant_index).EGSPhantSettings.name +".egsphant"
		    end
		    
		    
		    egsinp.egsphant_path=temp
		  end
		  
		  
		  
		  
		  // Calculate Distance from Phsp scoring plane to Isocenter
		  if egsinp.MMCTP_auto Then
		    
		    if dosxyznrc_link=1 Then// For BEAMnrc link
		      
		      if egsinp.isource=20 and gDOSXYZ.dosxyz_defaultsource20_as_phasespace=False Then
		        egsinp.FILNAM=gBEAM.cc.dir+gBEAM.Beams(beam).egs_BEAMnrc_Source_phsp_name //"/" between directoy and phsp name removed by William Davis 
		      else
		        egsinp.FILNAM=gBEAM.cc.dir+gBEAM.Beams(beam).egs_Phsp_name //"/" between directoy and phsp name removed by William Davis 
		      end
		      
		      
		      if egsinp.isource=2 or egsinp.isource=8 or egsinp.isource=9 or egsinp.isource=11 or egsinp.isource=20 or egsinp.isource=21 or egsinp.isource=10 Then
		        // Find last scoring plane
		        if gBEAM.Beams(beam).Inputfile.IO_OPT=4 and  InStr(egsinp.FILNAM,"IAEAphsp")>0 Then
		          egsinp.dsource=gRTOG.Plan(Plan_Index).Beam(beam).Nominal_Isocenter
		        else
		          scoring=gBEAM.Beams(BEAM).Inputfile.NSC_PLANES-1
		          if scoring>=0 and scoring<=UBound(gBEAM.Beams(BEAM).Inputfile.Nsc) Then
		            cm_index=gBEAM.Beams(BEAM).Inputfile.NSC(scoring).IPLANE_to_CM-1
		            if cm_index<= UBound(gBEAM.Beams(BEAM).Inputfile.CMs) and cm_index>=0 Then
		              egsinp.dsource=gRTOG.Plan(Plan_Index).Beam(beam).Nominal_Isocenter-gBEAM.Beams(BEAM).Inputfile.CMs(cm_index).Bottom_z
		            end
		          end
		        end
		      end
		      
		      
		    elseif dosxyznrc_link=2 Then// For Cutout link
		      egsinp.dsource=gRTOG.Plan(Plan_Index).Beam(beam).Nominal_Isocenter-95
		      cc.dir=cc.Shell.egsnrc_folder_path+"cutoutmp/"
		      egsinp.FILNAM=cc.dir+MC_file_name+str(beam+1)+"-cutout.egsphsp1"
		    end
		    
		    
		    
		    // ===Isocenter DOSXYZnrc=========
		    // Find new iso and angle values
		    // If auto MMCTP is on, otherwise, use user values
		    ReDim egsinp.theta(0)
		    ReDim egsinp.isox(0)
		    ReDim egsinp.isoy(0)
		    ReDim egsinp.isoz(0)
		    ReDim egsinp.phi(0)
		    ReDim egsinp.phicol(0)
		    
		    if egsinp.dos_Non_CT Then
		      egsinp.xiso=0
		      egsinp.yiso=0
		      egsinp.ziso=0
		      egsinp.nset=UBound(gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields)+1 // Number of control points
		      if egsinp.isource=20 or egsinp.isource=21 then // These sources need at least 2 control points
		        if egsinp.nset<=1 Then
		          egsinp.nset=2
		        end
		      end
		      ReDim egsinp.DYNARC(egsinp.nset-1)
		      ReDim egsinp.muIndex(egsinp.nset-1)
		      ReDim egsinp.theta(egsinp.nset-1)
		      ReDim egsinp.isox(egsinp.nset-1)
		      ReDim egsinp.isoy(egsinp.nset-1)
		      ReDim egsinp.isoz(egsinp.nset-1)
		      ReDim egsinp.phi(egsinp.nset-1)
		      ReDim egsinp.phicol(egsinp.nset-1)
		      ReDim egsinp.dsources(egsinp.nset-1)
		      
		      for i=0 to UBound(egsinp.DYNARC)
		        egsinp.isox(i)=0
		        egsinp.isoy(i)=0
		        egsinp.isoz(i)=0
		        //======Theta, Phi, Phicol==============
		        egsinp.theta(i)=180
		        egsinp.phi(i)=0
		        egsinp.phicol(i)=0
		        egsinp.dsources(i)=egsinp.dsource
		        if i>UBound(gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields) Then
		          k=UBound(gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields)
		        else
		          k=i
		        end
		        egsinp.muIndex(i)=gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(k).index
		        egsinp.DYNARC(i)=gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(k).index
		      Next
		      
		    else // For CT based phantom simulation
		      //======Theta, Phi, Phicol==============
		      egsinp.phi(0)=gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(0).couch_Angle
		      egsinp.theta(0)=gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(0).Gantry_Angle
		      egsinp.phicol(0)=gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(0).Collimator_Angle
		      egsinp.xiso=gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(0).isocenter.x
		      egsinp.yiso=-gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(0).isocenter.z
		      egsinp.ziso=-gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(0).isocenter.y
		      
		      egsinp.nset=UBound(gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields)+1 // Number of control points
		      if egsinp.isource=20 or egsinp.isource=21 then // These sources need at least 2 control points
		        if egsinp.nset<=1 Then
		          egsinp.nset=2
		        end
		      end
		      
		      ReDim egsinp.DYNARC(egsinp.nset-1)
		      ReDim egsinp.muIndex(egsinp.nset-1)
		      ReDim egsinp.theta(egsinp.nset-1)
		      ReDim egsinp.isox(egsinp.nset-1)
		      ReDim egsinp.isoy(egsinp.nset-1)
		      ReDim egsinp.isoz(egsinp.nset-1)
		      ReDim egsinp.phi(egsinp.nset-1)
		      ReDim egsinp.phicol(egsinp.nset-1)
		      ReDim egsinp.dsources(egsinp.nset-1)
		      
		      // Populate arrays
		      for i=0 to UBound(egsinp.DYNARC)
		        if i>UBound(gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields) Then
		          k=UBound(gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields)
		        else
		          k=i
		        end
		        egsinp.DYNARC(i)=gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(k).index
		        egsinp.muIndex(i)=gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(k).index
		        egsinp.phi(i)=gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(k).couch_angle
		        egsinp.phicol(i)=gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(k).Collimator_Angle
		        egsinp.theta(i)=gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(k).gantry_angle
		        egsinp.isox(i)=gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(k).isocenter.x
		        egsinp.isoy(i)=-gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(k).isocenter.z
		        egsinp.isoz(i)=-gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(k).isocenter.y
		        egsinp.dsources(i)=egsinp.dsource
		      Next
		      
		      
		      // Determine ARC directions and theta values
		      count=0
		      counter=0
		      
		      if UBound(gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields)>0 Then
		        for k=0 to UBound(egsinp.DYNARC)-1
		          if gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(k).ARC_Direction=0  Then // For clockwise motion
		            if gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(k).Gantry_Angle > gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(k+1).Gantry_Angle Then
		              count=count+1
		            end
		            egsinp.theta(k+1)=egsinp.theta(k+1)+(count*360)
		          elseif gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(k).ARC_Direction=1  Then // For counter clockwise motion
		            if gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(k).Gantry_Angle< gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(k+1).Gantry_Angle Then
		              counter=counter+1
		            end
		          end
		        Next
		      end
		      
		      if counter>0 Then
		        for k=0 to UBound(egsinp.DYNARC)-1
		          if gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(k).ARC_Direction=1  Then // For counter clockwise motion
		            egsinp.theta(k)=egsinp.theta(k)+(counter*360)
		            if gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(k).Gantry_Angle< gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(k+1).Gantry_Angle Then
		              counter=counter-1
		            end
		          end
		        Next
		      end
		    end
		  end // ===Isocenter DOSxyz=========
		  
		  
		  if gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).isource=8 or gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).isource=10 Then // we are using a phase space file from multi directions
		    // Write code for multi direction path 
		    // Update 2016 AA
		    egsinp.nang=-1
		    ReDim egsinp.ivary(0)
		    ReDim egsinp.angfixed(0)
		    ReDim egsinp.angmin(0)
		    ReDim egsinp.angmax(0)
		    ReDim egsinp.ngang(0)
		    ReDim egsinp.pgang(0)
		    egsinp.ivary(0)=1 // 1 for varying theta
		    egsinp.angfixed(0)=egsinp.phi(0) 
		    egsinp.angmin(0)=egsinp.theta(0) 
		    egsinp.angmax(0)=egsinp.theta(UBound(egsinp.theta))
		    egsinp.ngang(0)=300
		    egsinp.pgang(0)=1
		  end
		  
		  
		  
		  // Get BEAM directory
		  if not dosxyz_get_shell_Variables(egsphant_index,beam) Then
		    Return False
		  end
		  BEAMnrc_directoy=gBEAM.cc.dir
		  
		  // Get BEAMnrc version
		  bversion=gShells.Shells(gBEAM.Beams(beam).egs_Shell_Index).Beamnrc_v
		  
		  // Determine which type of source we are using by looking at EGSBEAM properties,
		  // Unless the user has uncheck the auto box
		  if egsinp.MMCTP_auto Then
		    if dosxyznrc_link=1 Then /// For BEAMnrc linking
		      if gBEAM.Beams(beam).Inputfile.iBRSPL=2 Then
		        //Determine if DBS was used
		        //Make BEAMnrc Inputfile update BEAMnrc variables
		        good=gBEAM.Beams(beam).Write_Inputfile(bversion)
		        egsinp.i_dbs=1
		        egsinp.r_dbs=gBEAM.Beams(beam).Inputfile.fs
		        egsinp.ssd_dbs=gRTOG.Plan(Plan_Index).Beam(beam).Nominal_Isocenter
		        scoring=gBEAM.Beams(BEAM).Inputfile.NSC_PLANES-1
		        cm_index=gBEAM.Beams(BEAM).Inputfile.NSC(scoring).IPLANE_to_CM-1
		        egsinp.z_dbs=gBEAM.Beams(BEAM).Inputfile.CMs(cm_index).Bottom_z
		      else
		        // No DBS
		        egsinp.i_dbs=0
		      end
		      
		      // Determine Z last of BEAMnrc simulation
		      if gBEAM.Beams(beam).Inputfile.IZLAST=0 Then
		        egsinp.mode=0
		      else
		        egsinp.mode=2
		      end
		      
		      // Get the BEAMnrc folder name for the BEAMnrc simulation
		      if gBEAM.cc.shell.OS=3 Then
		        // For windows paths
		        k=CountFields(BEAMnrc_directoy,"\")-1
		        if k>=0 Then
		          BEAMnrc_directoy=NthField(BEAMnrc_directoy,"\",k)
		        end
		      else // for linux paths
		        k=CountFields(BEAMnrc_directoy,"/")-1
		        if k>=0 Then
		          BEAMnrc_directoy=NthField(BEAMnrc_directoy,"/",k)
		        end
		      end
		      
		      
		      if Len(BEAMnrc_directoy)=0 Then
		        Errors.append "Error with DOSXYZnrc input file, BEAM lib source not defined for "+name //Changed to Errors.append by William Davis to avoid crash due to exception
		        Return False
		      end
		      
		      
		      egsinp.the_shared_lib=BEAMnrc_directoy
		      egsinp.the_beam_code=BEAMnrc_directoy
		      if gBEAM.Beams(beam).egs_pegs_file="" Then
		        MC_Get_Linac_Properties_BEAMnrc_Pegsfile(Beam)
		      end
		      egsinp.the_pegs_file=gBEAM.Beams(beam).egs_pegs_file
		      egsinp.the_input_file=MC_file_name+Str(beam+1)
		      
		      if gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).isource=20 and gDOSXYZ.dosxyz_defaultsource20_as_phasespace Then
		        // for non shared lib or source model runs. Reset those values to 0 
		        egsinp.the_shared_lib="0"
		        egsinp.the_input_file="0"
		      end
		    end
		    //Number of times to split charged particles as soon as they enter the phantom
		    //geometry. Split particles have their weight reduced by a factor of 1/e split. This
		    //is only used in conjunction with photon splitting (n split, see Section 8.16) and
		    //prevents higher-weight contaminant electrons from compromising statistics in photon
		    //beams. For maximum eﬃciency, it is suggested that you set e split=n split, the
		    //photon splitting number.
		    egsinp.e_split=egsinp.n_split
		  end
		  
		  
		  
		  
		  
		  
		  if gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).isource=1 Then// Parallel Rectangular Beam Incident from Any Direction
		    if egsinp.enflag=0 or egsinp.enflag=1 Then
		    else
		      egsinp.enflag=0
		    end
		    
		    
		  elseif gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).isource=11 or _
		    gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).isource=10 or _
		    gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).isource=21or _
		    (gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).isource=20 and gDOSXYZ.dosxyz_defaultsource20_as_phasespace=False) then// FOr lib Tomo source  or Synchronized BEAM Simulation Source
		    
		    if egsinp.enflag=2 or egsinp.enflag=3 Then
		    else
		      egsinp.enflag=2
		    end
		    
		    if cc.shell.OS=3 Then
		      egsinp.path11=cc.shell.egsnrc_folder_path+"dosxyznrc\"+name2
		    else
		      egsinp.path11=cc.shell.egsnrc_folder_path+"dosxyznrc/"+name2
		    end
		    
		    if gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).isource=11 Then // Only for Tomo Source
		      DOSXYZ(egsphant_index).Write_DOSXYZ_Input_Arc(beam)
		    end
		    
		    
		    //Make BEAMnrc Inputfile
		    good=gBEAM.Beams(beam).Write_Inputfile(bversion)
		    gBEAM.egs_Uploadfiles(BEAM)
		    
		    
		    
		  elseif gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).isource=2  or _
		    (gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).isource=20 and gDOSXYZ.dosxyz_defaultsource20_as_phasespace)  or _
		    gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).isource=8 Then// we are using a phase space file
		    if egsinp.enflag=2 or egsinp.enflag=3 Then
		    else
		      egsinp.enflag=2
		    end
		  end
		  
		  
		  
		  
		  
		  DOSXYZ(egsphant_index).Write_DOSXYZ_Input(beam)
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_Make_Mono_Source(i as Integer, k as Integer)
		  Dim temp as Class_DOSXYZ_Input
		  Dim isox,isoy,isoz,x as Single
		  Dim beam as RTOG_Beam_Geometry
		  
		  Beam=new RTOG_Beam_Geometry
		  
		  temp=gDOSXYZ.DOSXYZ(i).DOSXYZ_Input(k)
		  Beam=gRTOG.Plan(Plan_Index).Beam(k)
		  
		  
		  temp.IQIN=-1
		  temp.isource=1
		  temp.enflag=0
		  temp.ein=val(Beam.Beam_Energy)
		  
		  
		  // Determine new FIELD positions, must be symmetric
		  temp.xcol=Beam.FLEC.x1+Beam.FLEC.x2
		  temp.ycol=Beam.FLEC.y1+Beam.FLEC.y2
		  
		  
		  // Determine new ISO center
		  x=Beam.FLEC.x2-Beam.FLEC.x1
		  x=x/2
		  
		  
		  isox=Beam.Collimator.Fields(0).isocenter.X+x*cos(Beam.Collimator.Fields(0).Gantry_Angle*PI/180)
		  isoy=Beam.Collimator.Fields(0).isocenter.y+x*sin(Beam.Collimator.Fields(0).Gantry_Angle*PI/180)
		  isoz=Beam.Collimator.Fields(0).isocenter.z+(Beam.FLEC.y2-Beam.FLEC.y1)/2
		  
		  
		  Beam.Collimator.Fields(0).isocenter.X=isox
		  Beam.Collimator.Fields(0).isocenter.y=isoy
		  Beam.Collimator.Fields(0).isocenter.z=isoz
		  
		  Beam.FLEC.x1=temp.xcol/2
		  Beam.FLEC.x2=temp.xcol/2
		  Beam.FLEC.y1=temp.ycol/2
		  Beam.FLEC.y2=temp.ycol/2
		  
		  
		  Beam.Collimator.fields(0).X1=Beam.FLEC.x1+0.5
		  Beam.Collimator.fields(0).X2=Beam.FLEC.x1+0.5
		  Beam.Collimator.fields(0).Y1=Beam.FLEC.y1+0.5
		  Beam.Collimator.fields(0).Y2=Beam.FLEC.y1+0.5
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_Make_Script(egsphant as integer, beam as integer, name as string)
		  //--------------------------------------
		  // Make DOSXYZnrc script,
		  // vmc path + dmx name + inputfile
		  //
		  //--------------------------------------
		  Dim f as FolderItem
		  Dim s,tmpstr,location(-1),path as String
		  Dim ts as TextOutputStream
		  Dim i as integer
		  Dim g as Boolean
		  //---------------------------------------
		  
		  s= "dosxyznrc -i "+name+ " -p "+DOSXYZ(egsphant).DOSXYZ_Input(beam).dos_pegs_file
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child("j"+name+"_run")
		  ts=f.CreateTextFile
		  ts.Write s
		  ts.Close
		  
		  path=f.ShellPath
		  
		  g=dosxyz_get_shell_Variables(egsphant,beam)
		  cc.FTP_Files=f
		  cc.FTP_Now=True
		  cc.command="put "+path+" "+cc.shell.egsnrc_folder_path+"/dosxyznrc/"+f.Name
		  cc.inpfilename=f.Name
		  cc.FTP_Put_file=True
		  cc.FTP_Local_Path=path
		  if  cc.shell.OS=3 Then
		    cc.FTP_Remote_Path=cc.shell.egsnrc_folder_path+"\dosxyznrc\"+f.Name
		  else
		    cc.FTP_Remote_Path=cc.shell.egsnrc_folder_path+"/dosxyznrc/"+f.Name
		  end
		  MMCTP_Shell_Run.All.Append cc
		  
		  '//Change mode to exe
		  g=dosxyz_get_shell_Variables(egsphant,beam)
		  if cc.shell.OS=3 Then
		    cc.dir=cc.shell.egsnrc_folder_path+"\dosxyznrc\"
		  else
		    cc.dir=cc.shell.egsnrc_folder_path+"/dosxyznrc/"
		  end
		  cc.command="chmod u+x " +f.Name
		  MMCTP_Shell_Run.All.Append cc
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Dosxyz_read()
		  //------------------------------------
		  // Readin User DOSXYZ settings
		  //
		  //------------------------------------
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  Dim ss,oneline as String
		  Dim k,i as Integer
		  //------------------------------------
		  
		  
		  f=gPref.BEAMnrc_fi
		  f=f.Child("DOS-Settings.txt")
		  
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
		    
		    if InStr(oneline,"Auto Run")> 0 Then
		      if InStr(oneline,"yes")> 0 Then
		        dosxyz_auto_run=True
		      else
		        dosxyz_auto_run=False
		      end
		      
		    Elseif InStr(oneline,"Auto Refresh")> 0 Then
		      if InStr(oneline,"yes")> 0 Then
		        dosxyz_auto_refresh=True
		      else
		        dosxyz_auto_refresh=False
		      end
		      
		    elseif InStr(oneline,"Num Jobs")> 0 Then
		      dosxyz_desired_number_of_Jobs=val(NthField(oneline,"=",2))
		      
		    elseif InStr(oneline,"Average error")> 0 Then
		      dosxyz_desired_average_error=val(NthField(oneline,"=",2))
		      
		    elseif InStr(oneline,"Remove w")> 0 Then
		      if InStr(oneline,"yes")> 0 Then
		        dosxyz_remove_w_files=True
		      else
		        dosxyz_remove_w_files=False
		      end
		      
		    elseif InStr(oneline,"NumberTestHist")> 0 Then
		      dosxyz_test_histories=val(NthField(oneline,"=",2))
		      
		    elseif InStr(oneline,"DefaultIDAT")> 0 Then
		      dosxyz_defaultIDAT=val(NthField(oneline,"=",2))
		      
		    elseif InStr(oneline,"Defaultsource")> 0 Then
		      dosxyz_defaultsource=val(NthField(oneline,"=",2))
		      
		    elseif InStr(oneline,"ImportPlanDose")> 0 Then
		      if InStr(oneline,"yes")> 0 Then
		        ImportPlanDose=True
		      else
		        ImportPlanDose=False
		      end
		      
		    elseif InStr(oneline,"LoadEGSPhantFile")> 0 Then
		      if InStr(oneline,"yes")> 0 Then
		        LoadEGSPhant=True
		      else
		        LoadEGSPhant=False
		      end
		      
		    elseif InStr(oneline,"ImportDose")> 0 Then
		      if InStr(oneline,"yes")> 0 Then
		        ImportDose=True
		      else
		        ImportDose=False
		      end
		      
		    elseif InStr(oneline,"UseMUBS")> 0 Then
		      if InStr(oneline,"yes")> 0 Then
		        dosxyznrc_bs_cor=True
		      else
		        dosxyznrc_bs_cor=False
		      end
		      
		    elseif InStr(oneline,"Isource20-as-phasespace")> 0 Then
		      if InStr(oneline,"yes")> 0 Then
		        dosxyz_defaultsource20_as_phasespace=True
		      else
		        dosxyz_defaultsource20_as_phasespace=False
		      end
		      
		      
		    elseif InStr(oneline,"MinDosxyzJobs")> 0 Then
		      dosxyz_min_number_of_Jobs=val(NthField(oneline,"=",2))
		      
		    elseif InStr(oneline,"ZeroDose")> 0 Then
		      if InStr(oneline,"yes")> 0 Then
		        Zero_Dose=True
		      else
		        Zero_Dose=False
		      end
		      
		      
		    elseif InStr(oneline,"Autojobnumber-on")> 0 Then
		      if InStr(oneline,"yes")> 0 Then
		        dosxyz_autojobtimer=True
		      else
		        dosxyz_autojobtimer=False
		      end
		      
		    elseif InStr(oneline,"AutojobnumbertimerSec")> 0 Then
		      dosxyz_autojobtimer_sec=val(NthField(oneline,"=",2))
		      
		      
		    elseif InStr(oneline,"EGSPhantRes")> 0 Then
		      oneline=NthField(oneline,"=",2)
		      
		      i=CountFields(oneline,"**~**")-1
		      ReDim Auto_EGSPhantSettings(i-1)
		      for i=1 to CountFields(oneline,"**~**")-1
		        Auto_EGSPhantSettings(i-1)=new Class_DOSXYZ_EGSPhantSettings
		        ss=NthField(oneline,"**~**",i)
		        Auto_EGSPhantSettings(i-1).Del_X=val(NthField(ss,",",1))
		        Auto_EGSPhantSettings(i-1).Del_y=val(NthField(ss,",",2))
		        Auto_EGSPhantSettings(i-1).Del_z=val(NthField(ss,",",3))
		      next
		      
		      if UBound(Auto_EGSPhantSettings)<0 Then
		        ReDim Auto_EGSPhantSettings(0)
		        Auto_EGSPhantSettings(0)=new Class_DOSXYZ_EGSPhantSettings
		      end
		      
		      
		    elseif InStr(oneline,"EGSPhantCTRamp")> 0 Then
		      oneline=NthField(oneline,"=",2)
		      i=CountFields(oneline,"**~**")-1
		      for i=1 to CountFields(oneline,"**~**")-1
		        ss=NthField(oneline,"**~**",i)
		        Auto_EGSPhantSettings(i-1).CT_model=val(NthField(ss,",",1))
		      next
		      
		    elseif InStr(oneline,"EGSPhant-Clean-Contour")> 0 Then
		      oneline=NthField(oneline,"=",2)
		      i=CountFields(oneline,"**~**")-1
		      for i=1 to CountFields(oneline,"**~**")-1
		        ss=NthField(oneline,"**~**",i)
		        Auto_EGSPhantSettings(i-1).Cleancontour_Name=Trim(NthField(ss,",",1))
		      next
		      
		      
		    elseif InStr(oneline,"EGSPhant-Clean-Material")> 0 Then
		      oneline=NthField(oneline,"=",2)
		      i=CountFields(oneline,"**~**")-1
		      for i=1 to CountFields(oneline,"**~**")-1
		        ss=NthField(oneline,"**~**",i)
		        Auto_EGSPhantSettings(i-1).Clean_material=Trim(NthField(ss,",",1))
		      next
		      
		    elseif InStr(oneline,"EGSPhant-Name")>0 Then
		      oneline=NthField(oneline,"=",2)
		      i=CountFields(oneline,"**~**")-1
		      for i=1 to CountFields(oneline,"**~**")-1
		        ss=NthField(oneline,"**~**",i)
		        Auto_EGSPhantSettings(i-1).Name=Trim(NthField(ss,",",1))
		      next
		      
		      
		      
		      
		    elseif InStr(oneline,"EGSPhant-AutoMake")> 0 Then
		      oneline=NthField(oneline,"=",2)
		      i=CountFields(oneline,"**~**")-1
		      for i=1 to CountFields(oneline,"**~**")-1
		        ss=Trim(NthField(oneline,"**~**",i))
		        if ss="1" Then
		          Auto_EGSPhantSettings(i-1).Auto_Make=True
		        else
		          Auto_EGSPhantSettings(i-1).Auto_Make=False
		        end
		      next
		      
		      
		      
		      
		    elseif InStr(oneline,"DOSXYZLink")> 0 Then
		      dosxyznrc_link=val(NthField(oneline,"=",2))
		    end
		  Wend
		  ts.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_Readmaterials()
		  //--------------------------------------
		  // Readin the dosxyz material list
		  //
		  // vacuum must be the 1st material
		  //--------------------------------------
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  Dim s,name,dens as String
		  Dim dd as Class_DOSXYZ_Material
		  //--------------------------------------
		  
		  
		  f=gPref.BEAMnrc_fi.Child("dosxyz_materials.txt")
		  
		  
		  
		  if f <> nil then
		    if f.Exists then
		      ts=f.OpenAsTextFile
		      Do
		        s=trim(ts.ReadLine)
		        if InStr(s,"Material")=0 then
		          dd=new Class_DOSXYZ_Material
		          name=Trim(NthField(s,",",1))
		          dens=Trim(NthField(s,",",2))
		          dd.Material_Name=name
		          dd.Material_Density=val(dens)
		          dosxyz_materials.Append dd
		        end
		      Loop Until ts.EOF
		      ts.Close
		    else
		      dd=new Class_DOSXYZ_Material
		      name="Vacuum"
		      dd.Material_Name=name
		      dd.Material_Density=0
		      dosxyz_materials.Append dd
		      dosxyz_Writematerials
		      
		    end
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_read_egslst(f as FolderItem, egs as Integer, beam as Integer)
		  //-------------------------
		  // Read the egslst file, update stats 
		  //
		  //-------------------------
		  Dim ts as TextInputStream
		  Dim temp,t2 as String
		  Dim hh,text as Double
		  //-------------------------
		  
		  ts=f.OpenAsTextFile
		  if ts=nil Then
		    Return
		  end
		  
		  While ts.EOF=False
		    temp=ts.ReadLine
		    if InStr(temp,"average % error of doses >  0.500 of max dose")>0 Then
		      temp=NthField(temp,"=",2)
		      DOSXYZ(egs).DOSXYZ_Input(beam).dos_average_error=val(temp)
		      DOSXYZ(egs).DOSXYZ_Input(beam).dos_error_math_error=DOSXYZ(egs).DOSXYZ_Input(beam).dos_average_error
		      DOSXYZ(egs).DOSXYZ_Input(beam).dos_error_math_hist=DOSXYZ(egs).DOSXYZ_Input(beam).dos_num_histories
		    elseif InStr(temp,"Total CPU time for this run =")>0 Then // Update simulation time estimate
		      t2=NthField(temp,"=",1)
		      temp=NthField(temp,"=",2)
		      DOSXYZ(egs).DOSXYZ_Input(beam).TotalTime=val(temp)
		      hh=Val(temp)
		      text=hh/DOSXYZ(egs).DOSXYZ_Input(beam).dos_num_histories
		      DOSXYZ(egs).DOSXYZ_Input(beam).dos_CPU_time=DOSXYZ(egs).DOSXYZ_Input(beam).dos_jobs*hh/DOSXYZ(egs).DOSXYZ_Input(beam).dos_num_histories
		      
		    elseif InStr(temp,"average of 20 highest doses =")>0 Then
		      t2=NthField(temp,"=",1)
		      temp=NthField(temp,"=",2)
		      text=val(temp)
		      if text=0 Then // Problem if highest doses are zero!
		        DOSXYZ(egs).DOSXYZ_Input(beam).dos_simulation_error=True
		        Errors.append "Error found within "+f.Name+" zero max dose!" //Changed to Errors.append by William Davis to avoid crash due to exception
		      end
		    end
		  Wend
		  ts.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_Refresh(egsphant_index as integer, beam as integer)
		  //-----------------------------------------------
		  // Checks the status of active simulations, 
		  //
		  //-----------------------------------------------
		  dim inpfilename,name as string
		  //-----------------------------------------------
		  
		  
		  if UBound(DOSXYZ(egsphant_index).DOSXYZ_Input)<beam Then
		    Return
		  end
		  
		  
		  if DOSXYZ(egsphant_index).DOSXYZ_Input(beam).run_started = false Then
		    Return
		  end
		  
		  if DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_3ddose_downloaded Then
		    Return
		  end
		  
		  if not dosxyz_get_shell_Variables(egsphant_index,beam) Then
		    Return
		  end
		  
		  if cc.shell.online=False Then
		    Return
		  end
		  
		  
		  if gBEAM.Beams(beam).Beamnrc_error Then
		    Return
		  end
		  
		  
		  //Read the lock file
		  if DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_progress<>100 and DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_jobs>1 then
		    name=str(beam+1)
		    While Len(name)<3
		      name="0"+name
		    Wend
		    
		    inpfilename=MC_file_name+name+"_"+DOSXYZ(egsphant_index).EGSPhantSettings.name+".lock"
		    cc.command= "tail "+inpfilename
		    cc.inpfilename=inpfilename
		    cc.dos_egsphant_index=egsphant_index
		    cc.beam_num=beam
		    cc.dos_refresh=True
		    MMCTP_Shell_Refresh.All.Append cc
		    
		  elseif DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_progress<>100 and DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_jobs=1 Then
		    dosxyz_Refresh_One(egsphant_index,beam)
		    
		    
		  elseif DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_progress=100 and DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_3ddose_downloaded=False and DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_3ddose_detected=True then
		    dosxyz_Download_3ddose(egsphant_index,beam)
		    
		    
		  elseif DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_progress=100 and DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_3ddose_detected=false Then
		    dosxyz_Refresh_3ddose(egsphant_index,beam)
		    
		    
		    
		  end
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_Refresh_3ddose(egsphant_index as integer, beam as integer)
		  //-----------------------------------------------
		  // Checks the status of active simulations, look for 3ddose file
		  //
		  //-----------------------------------------------
		  dim inpfilename,name as string
		  dim g as Boolean
		  '========================================
		  
		  
		  g=dosxyz_get_shell_Variables(egsphant_index,beam)
		  
		  if cc.shell.online=false Then
		    Return
		  end
		  
		  
		  //Read the 3ddose file
		  name=str(beam+1)
		  While Len(name)<3
		    name="0"+name
		  Wend
		  
		  inpfilename=MC_file_name+name+"_"+DOSXYZ(egsphant_index).EGSPhantSettings.name+".3ddose"
		  cc.command= cc.shell.listfiles+" " +inpfilename
		  cc.inpfilename=inpfilename
		  cc.dos_egsphant_index=egsphant_index
		  cc.beam_num=beam
		  cc.dos_refresh_3ddose=True
		  MMCTP_Shell_Refresh.All.Append cc
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_Refresh_One(egsphant_index as integer, beam as integer)
		  //-----------------------------------------------
		  // Checks the status of active simulations, 
		  //
		  //-----------------------------------------------
		  dim inpfilename,name as string
		  //-----------------------------------------------
		  
		  
		  if UBound(DOSXYZ(egsphant_index).DOSXYZ_Input)<beam Then
		    Return
		  end
		  
		  
		  if DOSXYZ(egsphant_index).DOSXYZ_Input(beam).run_started = false Then
		    Return
		  end
		  
		  if DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_3ddose_downloaded Then
		    Return
		  end
		  
		  if not dosxyz_get_shell_Variables(egsphant_index,beam) Then
		    Return
		  end
		  
		  if cc.shell.online=False Then
		    Return
		  end
		  
		  
		  
		  //Read the lock file
		  if DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_progress<>100 and DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_jobs=1 then
		    name=str(beam+1)
		    While Len(name)<3
		      name="0"+name
		    Wend
		    
		    inpfilename="egsrun_*"+MC_file_name+name+"*/"+MC_file_name+name+"_"+DOSXYZ(egsphant_index).EGSPhantSettings.name+".egslst"
		    cc.command= "tail "+inpfilename
		    cc.inpfilename=inpfilename
		    cc.dos_egsphant_index=egsphant_index
		    cc.beam_num=beam
		    cc.dos_refresh_One=True
		    MMCTP_Shell_Refresh.All.Append cc
		    
		    
		  end
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_Remove_wfiles(egsphant_index as integer, beam as Integer)
		  //--------------------------------------
		  // Remove all _w* files previous egsrun beams
		  //
		  //--------------------------------------
		  Dim name, inpfilename as String
		  Dim hh as Boolean
		  //--------------------------------------
		  
		  
		  name=str(beam+1)
		  While Len(name)<3
		    name="0"+name
		  Wend
		  
		  inpfilename=MC_file_name+name+"_"+DOSXYZ(egsphant_index).EGSPhantSettings.name+"_w*"
		  hh=dosxyz_get_shell_Variables(egsphant_index,Beam)
		  cc.command="rm -f "+inpfilename
		  MMCTP_Shell_Refresh.All.Append cc
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_Run(egsphant_index as integer, beam as integer)
		  //----------------------------------------
		  // Process all tasks to run a job
		  //--------------------------------------
		  Dim line,name,shell_Name as string
		  Dim time as Single
		  Dim g,found as Boolean
		  Dim shell_index,i as Integer
		  Dim bb as Boolean
		  //--------------------------------------
		  
		  
		  shell_index=DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_shell_index
		  DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_shell=gShells.Shells(shell_index).title
		  dosxyz_Cleanup(egsphant_index,beam)
		  
		  DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_progress=0
		  
		  bb=dosxyz_Input_file(egsphant_index, beam)
		  dosxyz_Upload_input(egsphant_index ,beam)
		  dosxyz_Upload_Input_Arc(egsphant_index ,beam)
		  
		  
		  name=str(beam+1)
		  While Len(name)<3 
		    name="0"+name
		  Wend
		  name=MC_file_name+name+"_"+DOSXYZ(egsphant_index).EGSPhantSettings.name
		  
		  if DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_auto_queue Then
		    time=DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_CPU_time*gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_num_histories/ _ 
		    (gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_jobs*60)
		    DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_queue=MC_Autoqueue(time, cc.shell)
		  end
		  
		  // Look for EGSPhant file on Shell
		  if DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_Non_CT=False Then
		    g=dosxyz_get_shell_Variables(egsphant_index,beam)
		    if g=False Then
		      Return
		    end
		    shell_Name=cc.shell.title
		    found=False
		    for i=0 to UBound(DOSXYZ(egsphant_index).EGSPhantSettings.shells)
		      if shell_Name=DOSXYZ(egsphant_index).EGSPhantSettings.shells(i) Then
		        found=True
		      end
		    next
		    // Need to upload egsphant file
		    if found=False Then
		      dosxyz_Upload_Phant(egsphant_index,beam)
		    end
		  end
		  
		  // Create submit command
		  if DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_jobs>1 Then
		    line= "exb dosxyznrc "+name+ " "+DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_pegs_file+" "+_
		    DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_queue+" batch="+cc.Shell.batch+" p="+Format(DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_jobs,"#")
		  else // For submitting 1 job
		    dosxyz_Make_Script(egsphant_index,beam,name)
		    line=cc.Shell.Queue_Submit(DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_queue,"j"+name+"_run")
		  end
		  DOSXYZ(egsphant_index).DOSXYZ_Input(beam).dos_full_run=true
		  g=dosxyz_get_shell_Variables(egsphant_index,beam)
		  cc.command=line
		  cc.dos_run=True
		  cc.inpfilename=name
		  cc.dos_egsphant_index=egsphant_index
		  cc.beam_num=beam
		  MMCTP_Shell_Run.All.Append cc
		  
		  gDOSXYZ.DOSXYZ(egsphant_index).Write_DOSXYZ
		  Window_Treatment.MC_dosxyz_beam_progress
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_Run_Test(egs_index as integer, beam as integer)
		  //---------------------------------------------------------------
		  //
		  //
		  //---------------------------------------------------------------
		  dim temp,line,inpfilename,shell_Name as string
		  dim test_history,num_part,i as Int64
		  dim g,found,bb as Boolean
		  dim shell_index,v as Integer
		  //===============================================
		  
		  inpfilename=str(beam+1)
		  While Len(inpfilename)<3
		    inpfilename="0"+inpfilename
		  Wend
		  
		  
		  // Determine which shell to use for isource 1,9
		  if DOSXYZ(egs_index).DOSXYZ_Input(beam).autoshell Then
		    if (DOSXYZ(egs_index).DOSXYZ_Input(beam).isource=1 or _
		      DOSXYZ(egs_index).DOSXYZ_Input(beam).isource=20 or  _
		      DOSXYZ(egs_index).DOSXYZ_Input(beam).isource=21 or  _
		      DOSXYZ(egs_index).DOSXYZ_Input(beam).isource=9 or _
		      DOSXYZ(egs_index).DOSXYZ_Input(beam).isource=11) Then
		      found=False
		      for v=0 to UBound(gShells.Shells)
		        if gShells.Shells(v).online Then
		          DOSXYZ(egs_index).DOSXYZ_Input(beam).dos_Shell_Index=v
		          DOSXYZ(egs_index).DOSXYZ_Input(beam).dos_Shell=gShells.Shells(v).title
		          if dosxyz_get_shell_Variables(egs_index,beam) Then
		            found=True
		            exit for v
		          end
		          
		        end
		      next
		      if found=False Then
		        MsgBox "Run Test run could not find a shell to run on"
		        Return
		      end
		    end
		  end
		  
		  inpfilename=MC_file_name+inpfilename+"_"+DOSXYZ(egs_index).EGSPhantSettings.name
		  
		  
		  shell_index=DOSXYZ(egs_index).DOSXYZ_Input(beam).dos_shell_index
		  // Determine if shell is online
		  if gShells.Shells(shell_index).online=False Then
		    Errors.append "Error : "+inpfilename+" could not start cause " +gShells.Shells(shell_index).title+" is not online"  //Changed to Errors.append by William Davis to avoid crash due to exception
		    Return
		  end
		  
		  
		  gDOSXYZ.DOSXYZ(egs_index).DOSXYZ_Input(beam).dos_CPU_time=0
		  gDOSXYZ.DOSXYZ(egs_index).DOSXYZ_Input(beam).dos_error_math_error=0
		  gDOSXYZ.DOSXYZ(egs_index).DOSXYZ_Input(beam).dos_error_math_hist=0
		  
		  dosxyz_Cleanup(egs_index,beam)
		  
		  DOSXYZ(egs_index).DOSXYZ_Input(beam).dos_test_run_now=True
		  
		  
		  // Look for EGSPhant file on Shell
		  if DOSXYZ(egs_index).DOSXYZ_Input(beam).dos_Non_CT=False Then
		    g=dosxyz_get_shell_Variables(egs_index,beam)
		    if g=False Then
		      Return
		    end
		    shell_Name=cc.shell.title
		    found=False
		    for i=0 to UBound(DOSXYZ(egs_index).EGSPhantSettings.shells)
		      if shell_Name=DOSXYZ(egs_index).EGSPhantSettings.shells(i) Then
		        found=True
		      end
		    next
		    
		    // Need to upload egsphant file
		    if found=False Then
		      dosxyz_Upload_Phant(egs_index,beam)
		    end
		  end
		  
		  
		  // Switch the number of histories to temp val, make input file, then switch back, only for new runs
		  if DOSXYZ(egs_index).DOSXYZ_Input(beam).IRESTART=0 Then
		    DOSXYZ(egs_index).DOSXYZ_Input(beam).dos_num_histories=DOSXYZ(egs_index).DOSXYZ_Input(beam).dos_test_histories
		    DOSXYZ(egs_index).DOSXYZ_Input(beam).dos_error_math_hist=DOSXYZ(egs_index).DOSXYZ_Input(beam).dos_test_histories
		  end
		  bb=dosxyz_Input_file(egs_index,beam)
		  
		  //upload input file
		  dosxyz_Upload_Input(egs_index,beam)
		  dosxyz_Upload_Input_Arc(egs_index,beam)
		  
		  DOSXYZ(egs_index).DOSXYZ_Input(beam).dos_test_run=true
		  
		  if app.which_window_DOSYXZ_Options Then
		    Window_DOSXYZ_Properties.UpdateInterface=True
		  end
		  
		  g=dosxyz_get_shell_Variables(egs_index,beam)
		  
		  cc.OutPutWindow=2
		  cc.command= "dosxyznrc"+ " -i "+inpfilename+ " -p "+DOSXYZ(egs_index).DOSXYZ_Input(beam).dos_pegs_file
		  cc.dos_dosxyznrc_test=True
		  cc.dos_egsphant_index=egs_index
		  cc.beam_num=beam
		  cc.inpfilename=inpfilename
		  MMCTP_Shell_Run.All.Append cc
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_Update_BS_norm(x as Integer, beam_index as Integer)
		  gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_MU_BS=100+(2.483-gRTOG.Plan(Plan_Index).Beam(beam_index).collimator.BackScatter)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_Update_Run_Stats(x as Integer, beam_index as Integer, tmpstr as String)
		  Dim One_Line(-1),Temp,s as String
		  Dim math, egs_pro,StartNohist as Single
		  Dim i as Integer
		  
		  
		  if gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).IRESTART=0 Then // For new runs, update run parameters
		    
		    
		    While InStr(tmpstr,chr(10))>0
		      tmpstr=Replace(tmpstr,Chr(10),Chr(13))
		    Wend
		    gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_simulation_error=False
		    
		    
		    One_Line=Split(tmpstr,chr(13))
		    if UBound(One_Line)>1 Then
		      for i =0 to UBound(One_Line)
		        Temp=One_Line(i)
		        if InStr(One_Line(i),  "Total CPU time for run")>0 Then
		          s=(NthField(One_Line(i),"=",2))
		          gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_CPU_time=val(s)/_
		          gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_test_histories
		          gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).TotalTime=val(s)
		        elseif InStr(One_Line(i),  "average % error of doses >  0.500 of max dose =")>0 Then
		          s=(NthField(One_Line(i),"=",2))
		          gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_average_error=val(s)
		          gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_error_math_error=val(s)
		          egs_pro=gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_error_math_error / _
		          gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_desired_average_error
		          StartNohist=gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_test_histories
		          StartNohist=Round(egs_pro*egs_pro*StartNohist)
		          gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_num_histories =StartNohist
		          
		          if gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_average_error=0 Then
		            gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_simulation_error=True
		          end
		        end
		      next
		    end
		    
		    
		    //if auto run timer is on update number of jobs
		    if gDOSXYZ.dosxyz_autojobtimer Then
		      math=StartNohist*gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_CPU_time/gDOSXYZ.dosxyz_autojobtimer_sec
		      gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_jobs=Round(math)
		    end
		    
		    
		    gDOSXYZ.DOSXYZ(x).Write_DOSXYZ
		    if app.which_window_DOSYXZ_Options  Then
		      if Window_DOSXYZ_Properties.beam= beam_index and Window_DOSXYZ_Properties.egsphant= x Then
		        Window_DOSXYZ_Properties.Refresh_List
		      end
		    end
		  end
		  
		  
		  gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_test_run_now=false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_Upload_Input(egsphant_index as integer, beam as integer)
		  //---------------------------------------------
		  // Uploading dosxyz input file
		  //
		  //
		  //---------------------------------------------
		  Dim path,tmpstr,command,location(-1),name as string
		  Dim f as FolderItem
		  Dim i as integer
		  Dim good as Boolean
		  //---------------------------------------------
		  
		  if not dosxyz_get_shell_Variables(egsphant_index,beam) Then
		    Return
		  end
		  
		  name=str(beam+1)
		  While Len(name)<3
		    name="0"+name
		  Wend
		  
		  name=MC_file_name+name+"_"+DOSXYZ(egsphant_index).EGSPhantSettings.name +".egsinp"
		  
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child(name)
		  if f.Exists =false Then
		    Return
		  end
		  
		  
		  if  Instr(f.ShellPath," ")> 0 Then
		    Errors.Append "Spaces found within file path of DOSXYZnrc input file, MMCTP may not transfer files with spaces within their path." +chr(13)+"Remove spaces from folder paths."+chr(13)+f.ShellPath
		  end
		  
		  
		  // Path
		  path=f.ShellPath
		  good=dosxyz_get_shell_Variables(egsphant_index,beam)
		  if cc.shell.OS=3 Then
		    cc.dir=cc.Shell.egsnrc_folder_path+"dosxyznrc\"
		  else
		    cc.dir=cc.Shell.egsnrc_folder_path+"dosxyznrc/"
		  end
		  cc.command="put "+path+" "+cc.dir+name
		  cc.FTP_Now=True
		  cc.FTP_Put_file=True
		  cc.FTP_Local_Path=path
		  cc.FTP_Remote_Path=cc.dir+name
		  cc.FTP_Files=f
		  cc.dos_inputfile=true
		  cc.inpfilename=name
		  MMCTP_Shell_Run.All.Append cc
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_Upload_Input_Arc(egsphant_index as integer, beam as integer)
		  //---------------------------------------------
		  // Uploading dosxyz input file
		  //
		  //
		  //---------------------------------------------
		  Dim path,tmpstr,command,location(-1),name as string
		  Dim f as FolderItem
		  Dim i as integer
		  Dim good as Boolean
		  //---------------------------------------------
		  
		  if not dosxyz_get_shell_Variables(egsphant_index,beam) Then
		    Return
		  end
		  
		  name=str(beam+1)
		  While Len(name)<3
		    name="0"+name
		  Wend
		  
		  name=MC_file_name+name+"_"+DOSXYZ(egsphant_index).EGSPhantSettings.name +"_Arc.egsinp"
		  
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child(name)
		  if f.Exists =false Then
		    Return
		  end
		  
		  // Path for Windows
		  path=f.ShellPath
		  good=dosxyz_get_shell_Variables(egsphant_index,beam)
		  cc.dir=cc.Shell.egsnrc_folder_path+"dosxyznrc/"
		  cc.command="put "+path+" "+cc.dir+name
		  cc.FTP_Now=True
		  cc.FTP_Put_file=True
		  cc.FTP_Local_Path=path
		  cc.FTP_Remote_Path=cc.dir+name
		  cc.FTP_Files=f
		  MMCTP_Shell_Run.All.Append cc
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_Upload_Phant(egsphant_num as integer, beam_num as integer)
		  //---------------------------------------------
		  // Upload EGSPhant file to remote PC
		  //
		  //---------------------------------------------
		  Dim path,tmpstr,command,location(-1),name as string
		  Dim f as FolderItem
		  Dim i as integer
		  //---------------------------------------------
		  
		  
		  name=gRTOG.Patient_ID+"_"+gRTOG.StudyID+grtog.seriesnumber+"_"+DOSXYZ(egsphant_num).EGSPhantSettings.name+".egsphant"
		  
		  f=gRTOG.Path.Child("McGill_RT")
		  f=f.Child(name)
		  
		  if f.Exists=False Then
		    Return
		  end
		  // Path 
		  path=f.ShellPath
		  cc.FTP_Files=f
		  cc.FTP_Now=True
		  cc.command="put "+path+" "+cc.shell.egsnrc_folder_path+"dosxyznrc/"+name
		  cc.FTP_Put_file=True
		  cc.FTP_Local_Path=path
		  cc.FTP_Remote_Path=cc.shell.egsnrc_folder_path+"dosxyznrc/"+name
		  cc.inpfilename=f.Name
		  cc.dos_egsphant_index=egsphant_num
		  cc.dos_egsphant_Upload=True
		  MMCTP_Shell_Run.All.Append cc
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Dosxyz_write()
		  //------------------------------------
		  // Write USER DOSXYZnrc profile
		  //
		  //------------------------------------
		  Dim f as FolderItem
		  Dim ts as TextOutputStream
		  Dim ss,temp as String
		  Dim i as Integer
		  //------------------------------------
		  
		  
		  f=gPref.BEAMnrc_fi
		  f=f.Child("DOS-Settings.txt")
		  
		  ts=f.CreateTextFile
		  i=1
		  While ts=nil
		    i=i+1
		    ts=f.CreateTextFile
		    if i>100 Then
		      Return
		    end
		  wend
		  
		  if dosxyz_auto_run Then
		    ss="yes"
		  else
		    ss="no"
		  end
		  Spaces(ts,"Auto Run",40,ss)
		  
		  if dosxyz_auto_refresh Then
		    ss="yes"
		  else
		    ss="no"
		  end
		  Spaces(ts,"Auto Refresh",40,ss)
		  Spaces(ts,"Num Jobs",40,str(dosxyz_desired_number_of_Jobs))
		  Spaces(ts,"Average error",40,str(dosxyz_desired_average_error))
		  
		  if dosxyz_remove_w_files Then
		    ss="yes"
		  else
		    ss="no"
		  end
		  Spaces(ts,"Remove w files",40,ss)
		  Spaces(ts,"NumberTestHist",40,Format(dosxyz_test_histories,"#.######e"))
		  
		  if ImportPlanDose Then
		    ss="yes"
		  else
		    ss="no"
		  end
		  Spaces(ts,"ImportPlanDose",40,ss)
		  
		  if LoadEGSPhant Then
		    ss="yes"
		  else
		    ss="no"
		  end
		  Spaces(ts,"LoadEGSPhantFile",40,ss)
		  
		  
		  
		  if ImportDose Then
		    ss="yes"
		  else
		    ss="no"
		  end
		  Spaces(ts,"ImportDose",40,ss)
		  
		  if dosxyznrc_bs_cor Then
		    ss="yes"
		  else
		    ss="no"
		  end
		  Spaces(ts,"UseMUBS",40,ss)
		  
		  
		  
		  if Zero_Dose Then
		    ss="yes"
		  else
		    ss="no"
		  end
		  Spaces(ts,"ZeroDose",40,ss)
		  Spaces(ts,"DefaultSource",40,Format(dosxyz_defaultsource,"#"))
		  Spaces(ts,"MinDosxyzJobs",40,Format(dosxyz_min_number_of_Jobs,"#"))
		  
		  if dosxyz_autojobtimer Then
		    ss="yes"
		  else
		    ss="no"
		  end
		  Spaces(ts,"Autojobnumber-on",40,ss)
		  Spaces(ts,"AutojobnumbertimerSec",40,Format(dosxyz_autojobtimer_sec,"#"))
		  Spaces(ts,"DefaultIDAT",40,Format(dosxyz_defaultIDAT,"#"))
		  
		  if dosxyz_defaultsource20_as_phasespace Then
		    ss="yes"
		  else
		    ss="no"
		  end
		  Spaces(ts,"Isource20-as-phasespace",40,ss)
		  
		  // Write all default EGSPhant files which are auto made
		  temp=""
		  for i=0 to UBound(Auto_EGSPhantSettings)
		    temp=temp+Format(Auto_EGSPhantSettings(i).Del_X,"-#.###")+","+Format(Auto_EGSPhantSettings(i).Del_Y,"-#.###")+","+Format(Auto_EGSPhantSettings(i).Del_Z,"-#.###")+"**~**"
		  next
		  Spaces(ts,"EGSPhantRes",40,temp)
		  
		  temp=""
		  for i=0 to UBound(Auto_EGSPhantSettings)
		    temp=temp+Format(Auto_EGSPhantSettings(i).CT_model,"#")+"**~**"
		  next
		  Spaces(ts,"EGSPhantCTRamp",40,temp)
		  
		  temp=""
		  for i=0 to UBound(Auto_EGSPhantSettings)
		    temp=temp+Auto_EGSPhantSettings(i).Cleancontour_Name+"**~**"
		  next
		  Spaces(ts,"EGSPhant-Clean-Contour",40,temp)
		  
		  temp=""
		  for i=0 to UBound(Auto_EGSPhantSettings)
		    temp=temp+Auto_EGSPhantSettings(i).Clean_material+"**~**"
		  next
		  Spaces(ts,"EGSPhant-Clean-Material",40,temp)
		  
		  temp=""
		  for i=0 to UBound(Auto_EGSPhantSettings)
		    temp=temp+Auto_EGSPhantSettings(i).Name+"**~**"
		  next
		  Spaces(ts,"EGSPhant-Name",40,temp)
		  
		  temp=""
		  for i=0 to UBound(Auto_EGSPhantSettings)
		    if Auto_EGSPhantSettings(i).Auto_Make Then
		      temp=temp+"1"+"**~**"
		    else
		      temp=temp+"0"+"**~**"
		    end
		  next
		  Spaces(ts,"EGSPhant-AutoMake",40,temp)
		  
		  // End list of auto egsphant files
		  
		  
		  
		  
		  
		  Spaces(ts,"DOSXYZLink",40,Format(dosxyznrc_link,"#"))
		  ts.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dosxyz_Writematerials()
		  //--------------------------------------
		  // Write DOSXYZnrc materials
		  //
		  // Vacuum must be 1st
		  //--------------------------------------
		  Dim f as FolderItem
		  Dim ts as TextOutputStream
		  Dim name as String
		  Dim i as Integer
		  //--------------------------------------
		  
		  
		  f=gPref.BEAMnrc_fi.Child("dosxyz_materials.txt")
		  
		  if f.Exists Then
		    f.Delete
		  end
		  ts=f.CreateTextFile
		  
		  
		  if ts<>nil Then
		    ts.WriteLine "Material,            Density"
		    for i=0 to UBound(dosxyz_materials)
		      if i=0 Then // Check for vacuum
		        if dosxyz_materials(i).Material_Name<> "Vacuum" Then
		          dosxyz_materials(i).Material_Name="Vacuum"
		          dosxyz_materials(i).Material_Density=0
		        end
		      end
		      name=Trim(dosxyz_materials(i).Material_Name)+",              "+Format(dosxyz_materials(i).Material_Density,"-#.######")
		      ts.WriteLine name
		    next
		    ts.Close
		  end
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Auto_EGSPhantSettings(0) As Class_DOSXYZ_EGSPhantSettings
	#tag EndProperty

	#tag Property, Flags = &h0
		Auto_EGSPhantSettings_Make As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		CC As Class_MMCTP_Commands
	#tag EndProperty

	#tag Property, Flags = &h0
		DOSXYZ(-1) As Class_DOSXYZ
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyznrc_bs_cor As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			// 1 for beamnrc
			// 2 for cutout
			// 3 for none
		#tag EndNote
		dosxyznrc_link As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyznrc_Load_EGSPhant As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyz_AddDose As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyz_adddoseList(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyz_autojobtimer As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyz_autojobtimer_sec As Integer = 150
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyz_auto_refresh As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyz_auto_run As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyz_BEAMnrc_directoy As string
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyz_defaultIDAT As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyz_defaultsource As Integer = 2
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyz_defaultsource20_as_phasespace As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyz_desired_average_error As single = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyz_desired_number_of_Jobs As Integer = 4
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyz_materials(-1) As Class_DOSXYZ_Material
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyz_min_number_of_Jobs As Integer = 2
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyz_refresh As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyz_remove_w_files As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyz_retransfer As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyz_run_egsphant_CT As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyz_run_egsphant_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyz_run_egsphant_Manual As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyz_test_histories As Int64 = 1000
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyz_test_run As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		EGSPhantSettings As Class_DOSXYZ_EGSPhantSettings
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_msg(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ImportDose As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		ImportPlanDose As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		LoadEGSPhant As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Zero_Dose As Boolean = false
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Auto_EGSPhantSettings_Make"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dosxyznrc_bs_cor"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dosxyznrc_link"
			Visible=false
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dosxyznrc_Load_EGSPhant"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dosxyz_AddDose"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dosxyz_autojobtimer"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dosxyz_autojobtimer_sec"
			Visible=false
			Group="Behavior"
			InitialValue="150"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dosxyz_auto_refresh"
			Visible=false
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dosxyz_auto_run"
			Visible=false
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dosxyz_BEAMnrc_directoy"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dosxyz_defaultIDAT"
			Visible=false
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dosxyz_defaultsource"
			Visible=false
			Group="Behavior"
			InitialValue="2"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dosxyz_defaultsource20_as_phasespace"
			Visible=false
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dosxyz_desired_average_error"
			Visible=false
			Group="Behavior"
			InitialValue="1"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dosxyz_desired_number_of_Jobs"
			Visible=false
			Group="Behavior"
			InitialValue="4"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dosxyz_min_number_of_Jobs"
			Visible=false
			Group="Behavior"
			InitialValue="2"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dosxyz_refresh"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dosxyz_remove_w_files"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dosxyz_retransfer"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dosxyz_run_egsphant_CT"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dosxyz_run_egsphant_index"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dosxyz_run_egsphant_Manual"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dosxyz_test_histories"
			Visible=false
			Group="Behavior"
			InitialValue="1000"
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dosxyz_test_run"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImportDose"
			Visible=false
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImportPlanDose"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
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
			Name="LoadEGSPhant"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
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
		#tag ViewProperty
			Name="Zero_Dose"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
