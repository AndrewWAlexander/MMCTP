#tag Module
Protected Module Globals
	#tag Method, Flags = &h0
		Function Dose_Difference_1D(a as Class_Profile_One, b as Class_Profile_One, absv as Boolean) As Class_Profile_One
		  //-----------------------------------------
		  // Calculate Dose Difference Between 2 Profiles
		  //
		  // 
		  //-----------------------------------------
		  Dim pp as Class_Profile_One
		  Dim i, k,n as Integer
		  Dim Ks,ddiff(-1),a_v,b_v,da,db as Single
		  //-----------------------------------------
		  
		  da=a.Distance_Between_Two_Points(a.Pointa,a.Pointb)
		  db=b.Distance_Between_Two_Points(b.Pointa,b.Pointb)
		  
		  pp = new Class_Profile_One
		  pp.New_Profile
		  pp.Show=True
		  pp.X_label="Position (cm)"
		  pp.y_label="Position (cm)"
		  pp.z_label="Position (cm)"
		  pp.Value_Label="Dose Difference"
		  pp.Value_Units="%"
		  
		  pp.TYPE=a.TYPE
		  pp.Field_X=a.Field_X
		  pp.Field_Y=a.Field_Y
		  pp.Energy=a.Energy
		  pp.Depth=a.Depth
		  pp.Linac=a.Linac
		  pp.SSD=a.SSD
		  
		  if da<db Then
		    pp.Pointa=a.Pointa
		    pp.Pointb=a.Pointb
		    ReDim pp.Points(UBound(a.Points))
		    // Make new profile at the resolution of shorter profile
		    for i=0 to UBound(a.Points)
		      pp.Points(i)= new Class_Points
		      pp.Points(i).X_cm=a.Points(i).X_cm
		      pp.Points(i).y_cm=a.Points(i).y_cm
		      pp.Points(i).z_cm=a.Points(i).z_cm
		      //assign dose value of profile B at resolution of a
		      //pp.Points(i).Value=b.Get_Value_at_Point(pp.Points(i).X_cm,pp.Points(i).y_cm,pp.Points(i).Z_cm)
		    Next
		  else
		    pp.Pointa=b.Pointa
		    pp.Pointb=b.Pointb
		    ReDim pp.Points(UBound(b.Points))
		    // Make new profile at the resolution of shorter profile
		    for i=0 to UBound(pp.Points)
		      pp.Points(i)= new Class_Points
		      pp.Points(i).X_cm=b.Points(i).X_cm
		      pp.Points(i).y_cm=b.Points(i).y_cm
		      pp.Points(i).z_cm=b.Points(i).z_cm
		      //assign dose value of profile B at resolution of a
		      //pp.Points(i).Value=a.Get_Value_at_Point(pp.Points(i).X_cm,pp.Points(i).y_cm,pp.Points(i).Z_cm)
		    Next
		  end
		  
		  
		  
		  // Calculate the percent dose difference between profile B and A
		  ReDim ddiff(UBound(pp.Points))
		  for i=0 to UBound(pp.Points)
		    a_v=a.Get_Value_at_Point(pp.Points(i).X_cm,pp.Points(i).y_cm,pp.Points(i).Z_cm,false)
		    b_v=b.Get_Value_at_Point(pp.Points(i).X_cm,pp.Points(i).y_cm,pp.Points(i).Z_cm,false)
		    
		    if a.Norm and b.Norm Then
		      ddiff(i)=(a_v-b_v)
		    else
		      ddiff(i)=100*(a_v-b_v)/a_v
		    end
		    
		    if absv Then
		      ddiff(i)=Abs(ddiff(i))
		    end
		    pp.Points(i).Value=ddiff(i)
		  Next
		  
		  
		  //-------------------------------------
		  // Calculate K squared
		  n=0
		  Ks=0
		  for i=0 to UBound(pp.Points)
		    Ks=Ks+pp.Points(i).value*pp.Points(i).value
		    n=n+1
		  next
		  
		  pp.Chi=Sqrt(Ks)/n
		  pp.Label="Dose difference cm ["+a.Label+" & "+b.Label+"] K squared = "+str(pp.Chi)
		  pp.Update_Profile
		  Return pp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Dose_DTA_1D(a as Class_Profile_One, b as Class_Profile_One, absv as Boolean) As Class_Profile_One
		  //-----------------------------------------
		  // Calculate Dose DTA Between 2 Profiles
		  //
		  //  Udated 2015
		  //-----------------------------------------
		  Dim pp as Class_Profile_One
		  Dim i, k,n as Integer
		  Dim Ks,ddiff(-1),a_v,b_v,da,db,d_x as Single
		  //-----------------------------------------
		  
		  da=a.Distance_Between_Two_Points(a.Pointa,a.Pointb)
		  db=b.Distance_Between_Two_Points(b.Pointa,b.Pointb)
		  
		  pp = new Class_Profile_One
		  pp.New_Profile
		  pp.Label="DTA mm ["+a.Label+" & "+b.Label+"] "
		  pp.Show=True
		  pp.X_label="Position (cm)"
		  pp.y_label="Position (cm)"
		  pp.z_label="Position (cm)"
		  pp.Value_Label="Dose DTA"
		  pp.Value_Units="mm"
		  
		  pp.TYPE=a.TYPE
		  pp.Field_X=a.Field_X
		  pp.Field_Y=a.Field_Y
		  pp.Energy=a.Energy
		  pp.Depth=a.Depth
		  pp.Linac=a.Linac
		  pp.SSD=a.SSD
		  
		  if da<db Then
		    pp.Pointa=a.Pointa
		    pp.Pointb=a.Pointb
		    ReDim pp.Points(UBound(a.Points))
		    // Make new profile at the resolution of shorter profile
		    for i=0 to UBound(a.Points)
		      pp.Points(i)= new Class_Points
		      pp.Points(i).X_cm=a.Points(i).X_cm
		      pp.Points(i).y_cm=a.Points(i).y_cm
		      pp.Points(i).z_cm=a.Points(i).z_cm
		      //assign dose value of profile B at resolution of a
		      //pp.Points(i).Value=b.Get_Value_at_Point(pp.Points(i).X_cm,pp.Points(i).y_cm,pp.Points(i).Z_cm)
		    Next
		  else
		    pp.Pointa=b.Pointa
		    pp.Pointb=b.Pointb
		    ReDim pp.Points(UBound(b.Points))
		    // Make new profile at the resolution of shorter profile
		    for i=0 to UBound(pp.Points)
		      pp.Points(i)= new Class_Points
		      pp.Points(i).X_cm=b.Points(i).X_cm
		      pp.Points(i).y_cm=b.Points(i).y_cm
		      pp.Points(i).z_cm=b.Points(i).z_cm
		      //assign dose value of profile B at resolution of a
		      //pp.Points(i).Value=a.Get_Value_at_Point(pp.Points(i).X_cm,pp.Points(i).y_cm,pp.Points(i).Z_cm)
		    Next
		  end
		  
		  pp.Profile_Width=pp.Distance_Between_Two_Points(pp.Pointa,pp.Pointb)
		  
		  // Calculate the percent dose difference between profile B and A
		  ReDim ddiff(UBound(pp.Points))
		  for i=0 to UBound(pp.Points)
		    a_v=a.Get_Value_at_Point(pp.Points(i).X_cm,pp.Points(i).y_cm,pp.Points(i).Z_cm,false)
		    d_x=b.Get_DTA_from_Point(pp.Points(i).X_cm,pp.Points(i).y_cm,pp.Points(i).Z_cm,a_v,pp.Profile_Width)
		    ddiff(i)=d_x*10
		    if absv Then
		      ddiff(i)=Abs(ddiff(i))
		    end
		    pp.Points(i).Value=ddiff(i)
		  Next
		  
		  
		  
		  pp.Update_Profile
		  Return pp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DTA(a as Class_Profile_One, b as Class_Profile_One, pp as Class_Profile_One)
		  //-----------------------------------------
		  // Calculate Distance to agreement Fuction Between 2 Profiles
		  //
		  //-----------------------------------------
		  Dim i, k,n as Integer
		  Dim min_distance,aa as Single
		  Dim apoints(-1) as Class_Points
		  //-----------------------------------------
		  
		  
		  
		  // Calculate distance to agreement
		  ReDim pp.DTA(UBound(pp.Points))
		  for i=0 to UBound(pp.Points)
		    aa=a.Get_Value_at_Point(pp.Points(i).X_cm,pp.Points(i).y_cm,pp.Points(i).z_cm,false)
		    apoints()=b.Get_Point_at_Value(aa)
		    min_distance=0
		    
		    for k=0 to UBound(apoints)
		      aa=a.Distance_Between_Two_Points(pp.Points(i),apoints(k))
		      if k=0 or aa<min_distance Then
		        min_distance=aa
		      end
		    Next
		    pp.DTA(i)=min_distance
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Gamma_1D(delD as single, dta as single, a as Class_Profile_One, b as Class_Profile_One) As Class_Profile_One
		  //-----------------------------------------
		  // Calculate Gamma Fuction Between 2 Profiles
		  //
		  //-----------------------------------------
		  Dim pp as Class_Profile_One
		  Dim i, k,n as Integer
		  Dim gamma, gamma_min,norma,normb,x,y,z,ddiff(-1),a_v,b_v,dta_values(-1),min_distance,aa,bb,v1,v2,g(-1) as Single
		  Dim apoints(-1) as Class_Points
		  //-----------------------------------------
		  
		  
		  pp = new Class_Profile_One
		  pp.New_Profile
		  
		  //pp.Label="Gamma "+str(delD)+"% "+str(dta)+" cm "+pp.Label
		  pp.Label="Gamma "+str(delD)+"% "+str(dta)+" cm ["+a.Label+" & "+b.Label+"]"
		  pp.Show=True
		  pp.X_label="Position (cm)"
		  pp.y_label="Position (cm)"
		  pp.z_label="Position (cm)"
		  pp.Value_Label="Gamma Index"
		  pp.TYPE=a.TYPE
		  pp.Field_X=a.Field_X
		  pp.Field_Y=a.Field_Y
		  pp.Energy=a.Energy
		  pp.Depth=a.Depth
		  pp.Pointa= a.Pointa
		  pp.Pointb=a.Pointb
		  
		  ReDim pp.Points(UBound(a.Points))
		  
		  // Make new profile at the resolution of profile a
		  for i=0 to UBound(a.Points)
		    pp.Points(i)= new Class_Points
		    pp.Points(i).X_cm=a.Points(i).X_cm
		    pp.Points(i).y_cm=a.Points(i).y_cm
		    pp.Points(i).z_cm=a.Points(i).z_cm
		    //assign dose value of profile B at resolution of a
		    pp.Points(i).Value=b.Get_Value_at_Point(pp.Points(i).X_cm,pp.Points(i).y_cm,pp.Points(i).Z_cm,false)
		  Next
		  
		  // Calculate the percent dose difference between profile B and A
		  ReDim ddiff(UBound(a.Points))
		  for i=0 to UBound(a.Points)
		    a_v=a.Get_Value_at_Point(pp.Points(i).X_cm,pp.Points(i).y_cm,pp.Points(i).Z_cm,false)
		    b_v=b.Get_Value_at_Point(pp.Points(i).X_cm,pp.Points(i).y_cm,pp.Points(i).Z_cm,false)
		    ddiff(i)=Abs(100*(a_v-b_v)/a_v)
		  Next
		  
		  // Calculate distance to agreement
		  ReDim dta_values(UBound(a.Points))
		  for i=0 to UBound(a.Points)
		    if a.Norm Then
		      aa=a.Points(i).Value*100/a.Normalize_value
		    else
		      aa=a.Points(i).Value
		    end
		    apoints()=pp.Get_Point_at_Value(aa)
		    
		    for k=0 to UBound(apoints)
		      x=(a.Points(i).X_cm-apoints(k).X_cm)
		      y=(a.Points(i).Y_cm-apoints(k).Y_cm)
		      z=(a.Points(i).Z_cm-apoints(k).Z_cm)
		      aa=Sqrt(x*x+y*y+z*z)
		      if k=0 or aa<min_distance Then
		        min_distance=aa
		      end
		    Next
		    dta_values(i)=min_distance
		  Next
		  
		  gamma_min=1.5
		  for k=0 to UBound(pp.Points)
		    v1=pp.Points(k).Value
		    ReDim g(-1)
		    for i=0 to UBound(a.Points)
		      if a.Norm Then
		        v2=a.Points(i).Value*100/a.Normalize_value
		      else
		        v2=a.Points(i).Value
		      end
		      aa=v1-v2
		      aa=(aa*aa)/(dta*dta)
		      bb=pp.Distance_Between_Two_Points(a.Points(i),pp.Points(k))
		      bb=(bb*bb)/(delD*delD)
		      gamma=Sqrt(aa+bb)
		      g.Append gamma
		    Next
		    g.Sort
		    if UBound(g)>-1 Then
		      pp.Points(k).Value=g(0)
		    end
		  next
		  
		  pp.Update_Profile
		  
		  // Not the place to update gprofiles
		  //gProfiles.One_Profile.Append pp
		  
		  
		  
		  // Calculate Pass rate
		  n=0
		  for i=0 to UBound(pp.Points)
		    if pp.Points(i).Value<=1 Then
		      n=n+1
		    end
		  next
		  
		  
		  pp.Gamma_Value=100*n/(UBound(pp.Points)+1)
		  
		  
		  
		  
		  
		  Return pp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Max(ss() as Single) As Single
		  Dim temp as Single
		  Dim i as Integer
		  
		  
		  temp=0
		  if UBound(ss)>-1 Then
		    For i=0 to UBound(ss)
		      if i=0 Then
		        temp=ss(i)
		      end
		      if temp<ss(i) Then
		        temp=ss(i)
		      end
		    Next
		  end
		  
		  Return temp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MC_AddBeam()
		  //-------------------------
		  // Append one beam slot to all MC variables
		  //
		  // Update
		  // 2012 Alexander - if conditions for nil cases
		  //-------------------------
		  Dim i as integer
		  
		  
		  
		  if gDOSXYZ<> nil Then
		    for i =0 to UBound(gDOSXYZ.DOSXYZ)
		      gDOSXYZ.DOSXYZ(i).addbeam
		    Next
		  end
		  
		  if gBEAM<>nil Then
		    gBEAM.egs_addbeam
		  end
		  
		  if gCutout<> nil Then
		    gCutout.addbeam
		  end
		  
		  if gVMC<>nil Then
		    for i =0 to UBound(gVMC.VMC)
		      gVMC.VMC(i).addbeam
		    Next
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MC_AddBeam_FLEC()
		  Dim i as integer
		  
		  
		  for i =0 to UBound(gDOSXYZ.DOSXYZ)
		    gDOSXYZ.DOSXYZ(i).addbeam
		  Next
		  
		  gBEAM.egs_addbeam
		  
		  for i =0 to UBound(gVMC.VMC)
		    gVMC.VMC(i).addbeam
		  Next
		  
		  MC_Get_Linac_Properties(UBound(gBEAM.Beams))
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MC_Autoqueue(t as single, ss as Class_Shell_One) As string
		  //--------------------------------------------
		  //
		  // Function to determine the queue status
		  // t in minutes 
		  // ---Updates---
		  //
		  // 2015
		  // Update to look for correct queue time
		  // Bug fix for other clusters found by William Davis and Cody Crewson
		  //--------------------------------------------
		  Dim i,queue,times1(-1), ftime,k as Integer
		  
		  queue=UBound(ss.Queue)
		  
		  
		  
		  if queue>-1 and t>0 Then
		    // Determine the right queue for the job 
		    for i=0 to queue
		      times1.Append ss.QueueTime(i)
		    Next
		    
		    times1.Sort
		    
		    
		    if t<times1(0) or queue=0 Then
		      ftime=times1(0)
		      
		    elseif t> times1(queue) Then
		      ftime=times1(queue)
		      
		    else
		      for i=0 to (queue-1)
		        if t>times1(i) and t<times1(i+1) Then
		          ftime=times1(i+1)
		        end
		      Next
		      
		    end
		    
		    for k=0 to queue
		      if ss.QueueTime(k)=ftime Then
		        Return ss.Queue(k)
		      end
		    Next
		    
		  else
		    
		    Return ""
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MC_Count_Number_Jobs()
		  Dim i,k,x as Integer
		  Dim good as Boolean
		  
		  
		  for i=0 to UBound(gShells.Shells)
		    gShells.Shells(i).ActiveJobs=0
		    gShells.Shells(i).BeamnrcJobs=0
		    if gBEAM<>nil Then
		      gBEAM.Queue_Num=0
		      for k=0 to UBound(gBEAM.Beams)
		        if gBEAM.Beams(k).calculate and gBEAM.Beams(k).egs_BEAMnrc_started=False Then
		          gBEAM.Queue_Num=gBEAM.Queue_Num+1
		        end
		        if gShells.Shells(i).title=gBEAM.Beams(k).egs_Shell Then
		          gShells.Shells(i).ActiveJobs=gShells.Shells(i).ActiveJobs+gBEAM.Beams(k).egs_BEAMnrc_active_jobs
		          gShells.Shells(i).BeamnrcJobs=gShells.Shells(i).BeamnrcJobs+gBEAM.Beams(k).egs_BEAMnrc_active_jobs
		        end
		      next
		    end
		    gShells.Shells(i).DosxyznrcJobs=0
		    if gDOSXYZ<> nil Then
		      for x=0 to UBound(gDOSXYZ.DOSXYZ)
		        for k=0 to UBound(gDOSXYZ.DOSXYZ(x).DOSXYZ_Input)
		          if gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(k).dos_shell=gShells.Shells(i).title Then
		            gShells.Shells(i).ActiveJobs=gShells.Shells(i).ActiveJobs+gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(k).dos_num_active_jobs
		            gShells.Shells(i).DosxyznrcJobs=gShells.Shells(i).DosxyznrcJobs+gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(k).dos_num_active_jobs
		          end
		        next
		        
		      next
		    end
		    
		    gShells.Shells(i).VMCJobs=0
		    if gVMC<> nil Then
		      for x=0 to UBound(gVMC.VMC)
		        for k=0 to UBound(gVMC.VMC(x).BEAMS)
		          if gVMC.VMC(x).BEAMS(k).Shell_Index=i Then
		            if gVMC.VMC(x).BEAMS(k).vmc_started And gVMC.VMC(x).BEAMS(k).progress<>100 Then
		              gShells.Shells(i).ActiveJobs=gShells.Shells(i).ActiveJobs+1
		              gShells.Shells(i).VMCJobs=gShells.Shells(i).VMCJobs+1
		            end
		          end
		        next
		      next
		    end
		  next
		  
		  if App.which_window_planinfo Then
		    Window_Plan_Info.MC_Jobs_Open
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MC_DeleteBeam(num as integer)
		  Dim i as Integer
		  
		  
		  for i =0 to UBound(gDOSXYZ.DOSXYZ)
		    gDOSXYZ.DOSXYZ(i).DeleteBeam num
		  Next
		  
		  gBEAM.egs_deletebeam num
		  gCutout.deletebeam num
		  
		  
		  for i =0 to UBound(gVMC.vmc)
		    gVMC.vmc(i).DeleteBeam num
		  Next
		  
		  
		  
		  //MC_Open_settings Plan_Index
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MC_Determine_Which_Shell_BEAMnrc(beam as Integer,pp as Integer) As Boolean
		  Dim i,ava,max,shell_index as  Integer
		  
		  
		  MC_Count_Number_Jobs
		  max=-10
		  shell_index=-1
		  for i=0 to UBound(gShells.Shells)
		    if gShells.Shells(i).online Then
		      ava=gShells.Shells(i).MaxJobs-gShells.Shells(i).ActiveJobs
		      if gBEAM.Beams(beam).egs_linac_index>-1 and gBEAM.Beams(beam).egs_linac_index<=UBound(gLinacs.All_Linacs) Then
		        if ava>max and  gLinacs.All_Linacs(gBEAM.Beams(beam).egs_linac_index).MC_BEAMnrc_path(i)<>"" Then
		          max=ava
		          shell_index=i
		        end
		      end
		    end
		  next
		  
		  
		  if shell_index>-1 and max>0 and gBEAM.Beams(beam).egs_auto_shell and pp=0 Then // Full simulation runs
		    gBEAM.Beams(beam).egs_Shell_Index=shell_index
		    gBEAM.Beams(beam).egs_Shell=gShells.Shells(shell_index).title
		    MC_Get_Linac_Properties_for_patientdose(beam)
		    
		    if app.which_window_BEAM_Options Then
		      Window_BEAM_Options.UpdateWindow=True
		      //Window_BEAM_Options.Refresh_window
		    end
		    Return true
		    
		    
		  elseif shell_index>-1 and gBEAM.Beams(beam).egs_auto_shell and  pp=1 Then // Test  runs
		    gBEAM.Beams(beam).egs_Shell_Index=shell_index
		    gBEAM.Beams(beam).egs_Shell=gShells.Shells(shell_index).title
		    MC_Get_Linac_Properties_for_patientdose(beam)
		    
		    if app.which_window_BEAM_Options Then
		      //Window_BEAM_Options.Refresh_window
		      Window_BEAM_Options.UpdateWindow=True
		    end
		    
		    
		    Return true
		    
		  Elseif gBEAM.Beams(beam).egs_auto_shell=False Then
		    Return True
		    
		  else
		    if shell_index>-1 and max<=0 Then
		      gBEAM.egs_msg.Append "Warning : No avaible job slots for beam "+str(beam+1)
		    elseif shell_index<0 Then
		      gBEAM.egs_msg.Append "Warning : Could not link beam "+str(beam+1)+" within the list of configured online linacs & shells"
		    end
		    Return False
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MC_Get_Linac_Properties(beam_index as integer)
		  //---------------------------------------------
		  // Updates the linac properties to the MC variables
		  // Use only after linac properties have been updated
		  //---------------------------------------------
		  Dim linac,eng,pegs,mode as String
		  Dim x,j,sh_index as Integer
		  Dim egs_pro,jarea as Single
		  Dim StartNohist as Int64
		  //---------------------------------------------
		  
		  
		  for j=0 to UBound(gLinacs.All_Linacs)
		    linac=gLinacs.All_Linacs(j).RT_name
		    mode=gLinacs.All_Linacs(j).Mode
		    eng=gLinacs.All_Linacs(j).Energy
		    
		    if linac=gRTOG.Plan(Plan_Index).Beam(beam_index).rt_name and _
		      eng =gRTOG.Plan(Plan_Index).Beam(beam_index).beam_energy and _
		      mode=gRTOG.Plan(Plan_Index).Beam(beam_index).beam_mode then
		      
		      gBEAM.Beams(beam_index).egs_pegs_file=gLinacs.All_Linacs(j).MC_BEAMnrc_pegs4
		      gBEAM.BeamS(beam_index).egs_desired_phsp_particle_density=gLinacs.All_Linacs(j).MC_BEAMnrc_part_density
		      gBEAM.BeamS(beam_index).egs_auto_shell=gBEAM.egs_auto_shell
		      
		      
		      if gBEAM.Beams(beam_index).egs_particle_per_history>0 Then
		        jarea=gBEAM.egs_Calculate_Area(beam_index)
		        gBEAM.beams(beam_index).egs_num_histories=Round(gBEAM.Beams(beam_index).egs_desired_phsp_particle_density*jarea/gBEAM.Beams(beam_index).egs_particle_per_history)
		      end
		      gRTOG.Plan(Plan_Index).beam(beam_index).Calculate_MU_BS
		      
		      gBEAM.Beams(beam_index).egs_linac_index=j
		      
		      if gBEAM.Beams(beam_index).egs_BEAMnrc_started=False Then
		        gBEAM.Beams(beam_index).egs_jobs=gBEAM.egs_Num_Jobs
		      end
		      
		      // Determine Shell
		      sh_index=gBEAM.Beams(beam_index).egs_Shell_Index
		      
		      if sh_index>-1 and  sh_index<=UBound(gShells.Shells) Then
		        for x= 0 to UBound(gVMC.VMC)
		          gVMC.vmc(x).BEAMS(beam_index).dose=gLinacs.All_Linacs(j).MC_VMC_dose(sh_index)
		        Next
		        
		        
		        for x= 0 to UBound(gDOSXYZ.DOSXYZ)
		          gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_dose=gLinacs.All_Linacs(j).MC_dosxyz_dose(sh_index)
		          gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_pegs_file=gDOSXYZ.DOSXYZ(x).EGSPhantSettings.pegsfile
		          gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_Non_CT=gDOSXYZ.DOSXYZ(x).EGSPhantSettings.Non_CT_Phantom
		          gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_desired_average_error=gDOSXYZ.dosxyz_desired_average_error
		          gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_test_histories=gDOSXYZ.dosxyz_test_histories
		          gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).isource=gDOSXYZ.dosxyz_defaultsource
		          gDOSXYZ.dosxyz_Update_BS_norm(x,beam_index)
		          //gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_MU_BS=100+(2.483-gRTOG.Plan(Plan_Index).Beam(beam_index).collimator.BackScatter)
		          if gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).run_started=False Then
		            gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_jobs=gDOSXYZ.dosxyz_desired_number_of_Jobs
		          end
		          if gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_error_math_error>0 Then
		            egs_pro=gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_error_math_error/gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_desired_average_error
		            StartNohist=gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_error_math_hist
		            StartNohist=Round(egs_pro*egs_pro*StartNohist)
		            gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_num_histories =StartNohist
		          end
		        Next
		      end
		      Exit
		    end // Linac found
		  next // Next Linac
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MC_Get_Linac_Properties_BEAMnrc_Pegsfile(beam_index as integer)
		  //---------------------------------------------
		  // Updates the linac properties to the MC variables
		  // Use only after linac properties have been completed
		  //---------------------------------------------
		  Dim linac,eng,pegs,mode as String
		  Dim x,j,sh_index as Integer
		  Dim egs_pro,jarea as Single
		  Dim StartNohist as Int64
		  //---------------------------------------------
		  
		  
		  for j=0 to UBound(gLinacs.All_Linacs)
		    linac=gLinacs.All_Linacs(j).RT_name
		    mode=gLinacs.All_Linacs(j).Mode
		    eng=gLinacs.All_Linacs(j).Energy
		    
		    if linac=gRTOG.Plan(Plan_Index).Beam(beam_index).rt_name and _
		      eng =gRTOG.Plan(Plan_Index).Beam(beam_index).beam_energy and _
		      mode=gRTOG.Plan(Plan_Index).Beam(beam_index).beam_mode then
		      gBEAM.Beams(beam_index).egs_pegs_file=gLinacs.All_Linacs(j).MC_BEAMnrc_pegs4
		      exit
		    end // Linac found
		  next // Next Linac
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MC_Get_Linac_Properties_for_patientdose(beam_index as integer)
		  //---------------------------------------------
		  // Updates the linac properties for MC dose calculation
		  //
		  //---------------------------------------------
		  Dim sh_index,x,linac_index as Integer
		  //---------------------------------------------
		  
		  
		  
		  
		  
		  
		  // Determine Shell
		  sh_index=gBEAM.Beams(beam_index).egs_Shell_Index
		  linac_index=gBEAM.Beams(beam_index).egs_linac_index
		  
		  if sh_index>-1 and  sh_index<=UBound(gShells.Shells) and linac_index>-1 and linac_index<=UBound(gLinacs.All_Linacs) Then
		    
		    for x= 0 to UBound(gVMC.VMC)
		      gVMC.vmc(x).BEAMS(beam_index).dose=gLinacs.All_Linacs(linac_index).MC_VMC_dose(sh_index)
		    Next
		    
		    for x= 0 to UBound(gDOSXYZ.DOSXYZ)
		      gDOSXYZ.DOSXYZ(x).DOSXYZ_Input(beam_index).dos_dose=gLinacs.All_Linacs(linac_index).MC_dosxyz_dose(sh_index)
		    Next
		    
		    
		  end
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MC_Get_Linac_Properties_per_egsphant(egsphant_index as integer)
		  //---------------------------------------------
		  // Updates the linac properties to the MC variables
		  //
		  //---------------------------------------------
		  Dim linac,eng,pegs,mode as String
		  Dim j,beam_index,sh_index as Integer
		  //---------------------------------------------
		  
		  
		  
		  for j=0 to UBound(gLinacs.All_Linacs)
		    linac=gLinacs.All_Linacs(j).RT_name
		    mode=gLinacs.All_Linacs(j).Mode
		    eng=gLinacs.All_Linacs(j).Energy
		    if Plan_Index>-1 and Plan_Index<=UBound(gRTOG.Plan) Then
		      for beam_index=0 to UBound(gRTOG.Plan(Plan_Index).Beam)
		        if linac=gRTOG.Plan(Plan_Index).Beam(beam_index).rt_name and _
		          eng =gRTOG.Plan(Plan_Index).Beam(beam_index).beam_energy and _
		          mode=gRTOG.Plan(Plan_Index).Beam(beam_index).beam_mode then
		          
		          sh_index=gBEAM.Beams(beam_index).egs_Shell_Index
		          
		          if sh_index>-1 and  sh_index<=UBound(gShells.Shells) Then
		            
		            gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam_index).dos_dose=gLinacs.All_Linacs(j).MC_dosxyz_dose(sh_index)
		            gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam_index).dos_pegs_file=gDOSXYZ.DOSXYZ(egsphant_index).EGSPhantSettings.pegsfile
		            gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam_index).dos_Non_CT=gDOSXYZ.DOSXYZ(egsphant_index).EGSPhantSettings.Non_CT_Phantom
		            gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam_index).dos_desired_average_error=gDOSXYZ.dosxyz_desired_average_error
		            gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beam_index).dos_test_histories=gDOSXYZ.dosxyz_test_histories
		            
		          end
		        end
		      next
		    end
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MC_Initialize()
		  gBEAM=new Thread_BEAM
		  gBEAM.egs_Read_Default
		  gBEAM.cc = new Class_MMCTP_Commands
		  ReDim gBEAM.Beams(-1)
		  
		  gCutout=new Thread_Cutout
		  gCutout.init
		  
		  gVMC= new Thread_VMC
		  ReDim gVMC.VMC(-1)
		  gVMC.Read_Defaults
		  gVMC.DMXSettings=new Class_VMC_DMX_Settings
		  gVMC.vmc_set_DMX_Settings
		  
		  gDOSXYZ=new Thread_DOSXYZ
		  ReDim gDOSXYZ.Auto_EGSPhantSettings(0)
		  gDOSXYZ.Auto_EGSPhantSettings(0)=new Class_DOSXYZ_EGSPhantSettings
		  gDOSXYZ.Dosxyz_read
		  gDOSXYZ.cc= new Class_MMCTP_Commands
		  gDOSXYZ.dosxyz_readmaterials
		  gDOSXYZ.EGSPhantSettings= new Class_DOSXYZ_EGSPhantSettings
		  gDOSXYZ.dosxyz_Egsphant_Read_Settings
		  gDOSXYZ.dosxyz_egsphant_Count
		  
		  gVMC.vmc_dmx_Read_Settings
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MC_Logic()
		  //--------------------------------
		  // Automaticaly advance the simulations
		  //
		  //--------------------------------
		  Dim i,maxjob,x,ss as Integer
		  Dim good as Boolean
		  Dim dd as Class_DOSXYZ
		  Dim sname as String
		  Dim temp,Job_submited as Boolean
		  //--------------------------------
		  
		  
		  
		  
		  //--------------------------------
		  //BEAMnrc Logic
		  //--------------------------------
		  MC_Count_Number_Jobs
		  if gBEAM.egs_auto_run Then
		    for i =0 to UBound(gBEAM.Beams)
		      //BEAMnrc Run New Job
		      if gBEAM.Beams(i).Beamnrc_error=False and gBEAM.Beams(i).calculate Then
		        if gBEAM.Beams(i).egs_BEAMnrc_started=False and gBEAM.Beams(i).egs_progress<=0 Then
		          if gBEAM.Beams(i).egs_Phsp_Search=False Then // Search for existing phsp file
		            temp=gBEAM.egs_Search_for_Opening(i,1,"")
		            
		          else // Normal beams
		            if gBEAM.Beams(i).egs_particle_per_history=0 or gBEAM.Beams(i).egs_CPU_time_per_hist=0  Then
		              // Run test run 1st
		              gBEAM.egs_Run_Test(i)
		              Exit for i
		              
		            elseif MC_Determine_Which_Shell_BEAMnrc(i,0) Then
		              // Run full simulation
		              gBEAM.egs_Run(i,False)
		              Exit for i
		            end
		            
		          end
		          
		        end // Started and Progress 
		        
		      end // If we should run this beam
		    next // Next Beam num
		  end
		  
		  
		  
		  
		  //--------------------------------
		  // VMC Logic
		  //--------------------------------
		  if gVMC.auto_run Then
		    MC_Logic_VMC
		  end
		  
		  
		  //--------------------------------
		  // DOSXYZnrc Logic
		  //--------------------------------
		  if gDOSXYZ.dosxyz_auto_run Then
		    MC_Logic_DOSXYZ
		  end
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MC_Logic_DOSXYZ()
		  //--------------------------------
		  // Automaticaly advance the simulations
		  //
		  // DOSXYZnrc Logic
		  // depends on beam mode, and source type
		  //--------------------------------
		  Dim i,maxjob,x,ss as Integer
		  Dim good as Boolean
		  Dim dd as Class_DOSXYZ
		  Dim sname as String
		  Dim temp,Job_submited as Boolean
		  //--------------------------------
		  
		  //Reset pending jobs
		  for ss=0 to UBound(gShells.Shells)
		    gShells.Shells(ss).Pending_jobs=0
		  Next
		  
		  
		  for i =0 to UBound(gDOSXYZ.DOSXYZ) // For all EGSPhant files
		    
		    // Get one EGSPhant
		    dd=gDOSXYZ.DOSXYZ(i)
		    
		    // Loop over all shells
		    for ss=0 to UBound(gShells.Shells)
		      maxjob=gShells.Shells(ss).MaxJobs-gShells.Shells(ss).ActiveJobs-gShells.Shells(ss).Pending_jobs
		      
		      // If shell is online
		      if gShells.Shells(ss).online  Then
		        sname=gShells.Shells(ss).title
		        Job_submited=False
		        // Look for a beam using that shell
		        for x=0 to UBound(dd.DOSXYZ_Input) // X variable for each beam
		          if dd.DOSXYZ_Input(x).dos_calculate Then
		            if dd.DOSXYZ_Input(x).isource=2  or _
		              (dd.DOSXYZ_Input(x).isource=20 and gDOSXYZ.dosxyz_defaultsource20_as_phasespace) or _
		              dd.DOSXYZ_Input(x).isource=8  Then // For Phase Space sources only
		              if (gBEAM.egs_Get_Directory(x)  and  ((gBEAM.Beams(x).egs_progress=100 and gBEAM.Beams(x).egs_AddPhsp_Finished) or gBEAM.Beams(x).egs_Phsp_link)) Then
		                
		                if dd.DOSXYZ_Input(x).dos_Shell=sname  Then
		                  // We have a dosxyznrc simulation using this shell, or simulation can run on any shell
		                  
		                  
		                  if gDOSXYZ.DOSXYZ(i).DOSXYZ_Input(x).run_started = false and gDOSXYZ.DOSXYZ(i).DOSXYZ_Input(x).dos_progress = 0 and  gDOSXYZ.DOSXYZ(i).DOSXYZ_Input(x).dos_simulation_error = false  then
		                    // We have a dosxyznrc simulation that has not been started
		                    
		                    
		                    if dd.DOSXYZ_Input(x).dos_CPU_time=0 Then
		                      // Run test run
		                      if dd.DOSXYZ_Input(x).dos_test_run=False Then
		                        gDOSXYZ.DOSXYZ(i).DOSXYZ_Input(x).dos_shell_index=ss
		                        gDOSXYZ.dosxyz_Run_Test(i,x)
		                        Job_submited=true
		                        exit for x // go to next shell
		                      end
		                      
		                    elseif maxjob>0 and maxjob>=gDOSXYZ.dosxyz_min_number_of_Jobs Then
		                      // Submit full run
		                      if dd.DOSXYZ_Input(x).dos_full_run=False Then
		                        if maxjob<dd.DOSXYZ_Input(x).dos_jobs then
		                          dd.DOSXYZ_Input(x).dos_jobs=maxjob
		                        end
		                        // Update Shell Index
		                        gDOSXYZ.DOSXYZ(i).DOSXYZ_Input(x).dos_shell_index=ss
		                        gDOSXYZ.dosxyz_run(i,x)
		                        Job_submited=true
		                        gShells.Shells(ss).Pending_jobs=gShells.Shells(ss).Pending_jobs+dd.DOSXYZ_Input(x).dos_jobs
		                        exit for x // go to next shell
		                      end
		                      
		                    end //Submit Job
		                  end // Try and submit job
		                end // If dos_Shell=sname  shell name is the same
		                
		              end // If BEAMnrc has finished
		              
		              
		              
		            elseif dd.DOSXYZ_Input(x).isource=1 or dd.DOSXYZ_Input(x).isource=3 Then // Dosxyz sources
		              // simulation can run on any shell
		              
		              if gDOSXYZ.DOSXYZ(i).DOSXYZ_Input(x).run_started = false and gDOSXYZ.DOSXYZ(i).DOSXYZ_Input(x).dos_progress = 0  and  gDOSXYZ.DOSXYZ(i).DOSXYZ_Input(x).dos_simulation_error = false  then
		                // We have a dosxyznrc simulation that has not been started
		                
		                if dd.DOSXYZ_Input(x).dos_CPU_time=0 Then
		                  // Run test run
		                  if dd.DOSXYZ_Input(x).dos_test_run=False or UBound(MMCTP_Shell_Run.All)=-1 Then
		                    gDOSXYZ.DOSXYZ(i).DOSXYZ_Input(x).dos_shell_index=ss
		                    dd.DOSXYZ_Input(x).dos_Shell=sname
		                    gDOSXYZ.dosxyz_Run_Test(i,x)
		                  end
		                  
		                elseif  gDOSXYZ.dosxyz_auto_run and maxjob>0 and maxjob>=gDOSXYZ.dosxyz_min_number_of_Jobs Then
		                  // Submit full run
		                  if dd.DOSXYZ_Input(x).dos_full_run=False Then
		                    if maxjob<dd.DOSXYZ_Input(x).dos_jobs then
		                      dd.DOSXYZ_Input(x).dos_jobs=maxjob
		                    end
		                    // Update Shell Index
		                    dd.DOSXYZ_Input(x).dos_Shell=sname
		                    gDOSXYZ.DOSXYZ(i).DOSXYZ_Input(x).dos_shell_index=ss
		                    gDOSXYZ.dosxyz_run(i,x)
		                    gShells.Shells(ss).Pending_jobs=gShells.Shells(ss).Pending_jobs+dd.DOSXYZ_Input(x).dos_jobs
		                    
		                  end
		                end
		                
		                exit for x // go to next shell
		              end 
		              
		            elseif dd.DOSXYZ_Input(x).isource=9 or dd.DOSXYZ_Input(x).isource=10 or _
		              (dd.DOSXYZ_Input(x).isource=20 and gDOSXYZ.dosxyz_defaultsource20_as_phasespace=False) or _
		              dd.DOSXYZ_Input(x).isource=11 or _
		              dd.DOSXYZ_Input(x).isource=21 Then // For Lib sources only
		              //AAA
		              if dd.DOSXYZ_Input(x).dos_Shell=sname or dd.DOSXYZ_Input(x).AutoShell Then
		                
		                // We have a dosxyznrc simulation using this shell, or simulation can run on any shell
		                if gDOSXYZ.DOSXYZ(i).DOSXYZ_Input(x).run_started = false and gDOSXYZ.DOSXYZ(i).DOSXYZ_Input(x).dos_progress = 0  and  gDOSXYZ.DOSXYZ(i).DOSXYZ_Input(x).dos_simulation_error = false  then
		                  
		                  // We have a dosxyznrc simulation that has not been started
		                  if dd.DOSXYZ_Input(x).dos_CPU_time=0 Then
		                    // Run test run
		                    
		                    if dd.DOSXYZ_Input(x).dos_test_run=False or UBound(MMCTP_Shell_Run.All)=-1 Then
		                      gDOSXYZ.DOSXYZ(i).DOSXYZ_Input(x).dos_shell_index=ss
		                      gDOSXYZ.dosxyz_Run_Test(i,x)
		                      Job_submited=true
		                      exit for x // go to next shell
		                    end
		                    
		                  elseif maxjob>0 and maxjob>=gDOSXYZ.dosxyz_min_number_of_Jobs and   dd.DOSXYZ_Input(x).dos_num_histories>0 Then
		                    
		                    // Submit full run
		                    if dd.DOSXYZ_Input(x).dos_full_run=False or UBound(MMCTP_Shell_Run.All)=-1Then
		                      dd.DOSXYZ_Input(x).dos_Shell=sname
		                      dd.DOSXYZ_Input(x).dos_Shell_Index=ss
		                      
		                      
		                      if maxjob<dd.DOSXYZ_Input(x).dos_jobs then
		                        dd.DOSXYZ_Input(x).dos_jobs=maxjob
		                      end
		                      // Update Shell Index
		                      gDOSXYZ.DOSXYZ(i).DOSXYZ_Input(x).dos_shell_index=ss
		                      gDOSXYZ.dosxyz_run(i,x)
		                      gShells.Shells(ss).Pending_jobs=gShells.Shells(ss).Pending_jobs+dd.DOSXYZ_Input(x).dos_jobs
		                      Job_submited=true
		                      exit for x // go to next shell
		                    end
		                    
		                  end //Submit Job
		                  
		                end // Try and submit job
		                
		                
		              end if // if shell name =sname or auto shell is on 
		            end // For each source type
		            
		          end  if//If beam calculate is on
		        next // Next Beam number
		        
		        
		        // For FLEC simulations, look for new phase space file
		        if Job_submited=False and maxjob>0 and maxjob>=gDOSXYZ.dosxyz_min_number_of_Jobs  Then
		          // Try to link BEAMnrc phase on current shell
		          for x=0 to UBound(dd.DOSXYZ_Input) // For all beams within EGSphant file
		            if dd.DOSXYZ_Input(x).isource=2  Then
		              if gBEAM.egs_Get_Directory(x)  and  dd.DOSXYZ_Input(x).dos_calculate and gRTOG.Plan(Plan_Index).Beam(x).beam_mode="FLEC" and((gBEAM.Beams(x).egs_progress=100 and gBEAM.Beams(x).egs_AddPhsp_Finished) or gBEAM.Beams(x).egs_Phsp_link) Then
		                if gDOSXYZ.DOSXYZ(i).DOSXYZ_Input(x).run_started = false and gDOSXYZ.DOSXYZ(i).DOSXYZ_Input(x).dos_progress = 0 and gDOSXYZ.DOSXYZ(i).DOSXYZ_Input(x).dos_test_run_now = false  and dd.DOSXYZ_Input(x).dos_full_run=False then
		                  // We have a dosxyznrc simulation that has not been started
		                  if gBEAM.egs_Search_for_Opening(x,2,sname) Then
		                    Job_submited=True
		                    if dd.DOSXYZ_Input(x).dos_CPU_time=0 Then // Run test run
		                      gDOSXYZ.dosxyz_Run_Test(i,x)
		                    else // Run beam
		                      gDOSXYZ.dosxyz_run(i,x)
		                    end
		                    exit for x // go to next shell
		                  end
		                end 
		              end // If BEAMnrc has finished
		            end
		          next // Next Beam number
		        end // If we coulded run a job
		        
		        
		        
		        // For FLEC simulations
		        if Job_submited=False and gBEAM.egs_auto_run and maxjob>0 and maxjob>=gDOSXYZ.dosxyz_min_number_of_Jobs and dd.Complete <90 and gBEAM.Queue_Num<1 Then
		          // Try to Run BEAMnrc phase on current shell
		          if UBound(MMCTP_Shell_Run.All)=-1 Then
		            for x=0 to UBound(dd.DOSXYZ_Input)
		              if dd.DOSXYZ_Input(x).isource=2  and dd.DOSXYZ_Input(x).dos_calculate Then
		                if gBEAM.egs_Get_Directory(x)  and gRTOG.Plan(Plan_Index).Beam(x).beam_mode="FLEC" and ((gBEAM.Beams(x).egs_progress=100 and gBEAM.Beams(x).egs_AddPhsp_Finished) or gBEAM.Beams(x).egs_Phsp_link) Then
		                  // Rerun BEAMnrc on available shell
		                  if gDOSXYZ.DOSXYZ(i).DOSXYZ_Input(x).run_started = false and _
		                    gDOSXYZ.DOSXYZ(i).DOSXYZ_Input(x).dos_progress = 0  and _
		                    gDOSXYZ.DOSXYZ(i).DOSXYZ_Input(x).dos_test_run_now = false  and _
		                    dd.DOSXYZ_Input(x).dos_full_run=False and  _
		                    ((gShells.Shells(gBEAM.Beams(x).egs_Shell_Index).MaxJobs-gShells.Shells(gBEAM.Beams(x).egs_Shell_Index).ActiveJobs)<0 or gShells.Shells(gBEAM.Beams(x).egs_Shell_Index).online=false) then
		                    // We have a dosxyznrc simulation that has not been started
		                    // restart beam on avaiable shell
		                    gBEAM.Beams(x).egs_Phsp_link=False
		                    gBEAM.Beams(x).egs_progress=0
		                    gBEAM.Beams(x).egs_Start_Time=""
		                    gBEAM.Beams(x).egs_BEAMnrc_started=False
		                    gBEAM.Beams(x).egs_CPU_time_per_hist=0
		                    gBEAM.Beams(x).egs_AddPhsp_Finished=False
		                    gBEAM.Beams(x).egs_Phsp_Search=True
		                    gBEAM.Beams(x).egs_Shell=sname
		                    gBEAM.Beams(x).egs_Shell_Index=ss
		                    //gBEAM.Beams(x).egs_auto_shell=False
		                    gBEAM.egs_Run_Test(x)
		                    exit for x // go to next shell
		                  end // If current shell cann't run DOSXYZnrc simulation
		                end // If BEAMnrc has finished
		              end
		            next // Next Beam number
		          end // If there are no other commands running
		        end // If we coulded run a job
		      end //  If Shell can run jobs
		    next // Next shell
		  next // Next EGsphant file
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MC_Logic_VMC()
		  //--------------------------------
		  // Automaticaly advance the simulations
		  // VMC Logic
		  //
		  //--------------------------------
		  Dim i,maxjob,x,ss as Integer
		  Dim good as Boolean
		  Dim sname as String
		  Dim temp,Job_submited as Boolean
		  //--------------------------------
		  
		  
		  
		  for i =0 to UBound(gVMC.VMC)
		    for x=0 to UBound(gVMC.VMC(i).BEAMS)
		      if gVMC.VMC(i).BEAMS(x).vmc_started=False and gVMC.VMC(i).BEAMS(x).progress<=0  and gVMC.VMC(i).BEAMS(x).calculate Then
		        if gVMC.VMC(i).BEAMS(x).devicetype=0 Then // Mono Source
		          for ss=0 to UBound(gShells.Shells)
		            if gShells.Shells(ss).online Then
		              maxjob=gShells.Shells(ss).MaxJobs-gShells.Shells(ss).ActiveJobs
		              if maxjob>0 Then
		                if gVMC.VMC(i).BEAMS(x).auto_shell Then
		                  gVMC.VMC(i).BEAMS(x).shell_index=ss
		                  gVMC.vmc_run(i,x)
		                  Return
		                elseif gVMC.VMC(i).BEAMS(x).shell_index=ss Then
		                  gVMC.vmc_run(i,x)
		                  Return
		                end
		                
		              end
		            end
		          next
		          
		          
		          
		        elseif (gVMC.VMC(i).BEAMS(x).devicetype=10 or gVMC.VMC(i).BEAMS(x).devicetype=110) and gVMC.Default_Device_Type=0 Then // Phsp file
		          
		          if (gBEAM.Beams(x).egs_progress=100 and gBEAM.Beams(x).egs_AddPhsp_Finished) or gBEAM.Beams(x).egs_Phsp_link then
		            gVMC.vmc_run(i,x)
		          end
		          
		          
		          
		        else
		          if gVMC.vmc_Get_Shell_Enviro(i,x) Then
		            maxjob=gVMC.cc.shell.MaxJobs-gVMC.cc.shell.ActiveJobs
		            if maxjob>0 Then
		              gVMC.vmc_run(i,x)
		              Return
		            end
		          end
		        end
		        
		        
		        
		      end
		    next
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MC_Open_settings(Plan_num as integer)
		  //------------------------------------
		  // Open all files related to MC for one plan
		  //------------------------------------
		  Dim i as Integer
		  
		  
		  gvmc.vmc_Open
		  
		  
		  if Plan_num>-1 and UBound(gRTOG.Plan)>=Plan_num Then
		    
		    // MMCTP naming convention
		    MC_file_name=gRTOG.Patient_ID+"_"+gRTOG.StudyID+gRTOG.SeriesNumber+"_p"+gRTOG.Plan(Plan_Index).Plan_ID+"b"
		    transfer_endline=EndOfLine.unix
		    
		    /// Open BEAMnrc input files and settings
		    gBEAM.egs_read
		    
		    gCutout.Open
		    
		    // Open DOSXYZ files
		    for i= 0 to UBound(gDOSXYZ.DOSXYZ)
		      gDOSXYZ.DOSXYZ(i).Read_DOSXYZ
		    next
		    
		    // Open VMC input files and settings
		    for i= 0 to UBound(gVMC.VMC)
		      gVMC.VMC(i).Initialize_Beams
		    next
		    
		  end'=============================
		  
		  Window_Treatment.mc_egs_Beam_Progress
		  Window_Treatment.mc_vmc_beam_progress
		  Window_Treatment.MC_dosxyz_beam_progress
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MC_Save_settings()
		  //------------------------------------------
		  //
		  //------------------------------------------
		  Dim i as Integer
		  //------------------------------------------
		  
		  
		  for i= 0 to UBound(gDOSXYZ.DOSXYZ)
		    gDOSXYZ.DOSXYZ(i).Write_DOSXYZ
		  next
		  
		  gBEAM.egs_write
		  
		  for i= 0 to UBound(gvmc.vmc)
		    gvmc.vmc(i).Write_VMC_Settings
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Mean(ss() as Single) As Single
		  Dim temp as Single
		  Dim i as Integer
		  
		  
		  temp=0
		  For i=0 to UBound(ss)
		    temp=ss(i)+temp
		  Next
		  temp=temp/(UBound(ss)+1)
		  
		  Return temp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Min(ss() as Single) As Single
		  Dim temp as Single
		  Dim i as Integer
		  
		  
		  temp=0
		  if UBound(ss)>-1 Then
		    For i=0 to UBound(ss)
		      if i=0 Then
		        temp=ss(i)
		      end
		      if temp>ss(i) Then
		        temp=ss(i)
		      end
		    Next
		  end
		  
		  Return temp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Profiles_Asses(a as Class_Profile_One, b as Class_Profile_One, pp as Class_Profile_One)
		  //---------------------------------
		  //
		  //
		  //---------------------------------
		  Dim i,count as Integer
		  Dim ss(-1),temp,d1,d2 as Single
		  //---------------------------------
		  
		  a.Get_Properties
		  
		  if a.TYPE=2 or a.TYPE=3 Then
		    if a.TYPE=3 Then
		      i=i
		    end
		    //---------DTA in Penumbra 20-80% ------------------------------------------
		    ReDim ss(-1)
		    count=0
		    For i=0 to UBound(pp.Points)
		      if pp.Is_Within(a.Penumbra_Pointa, a.Penumbra_Pointb, pp.Points(i)) Then
		        ss.Append pp.DTA(i)
		      end
		      if pp.Is_Within(a.Penumbra_Pointc, a.Penumbra_Pointd, pp.Points(i)) Then
		        ss.Append pp.DTA(i)
		      end
		    Next
		    pp.Penumbra_DTA=Mean(ss)
		    pp.Penumbra_SD=Standard_Deviation(ss, pp.Penumbra_DTA)
		    pp.Penumbra_Max=max(ss)
		    pp.Penumbra_Min=Min(ss)
		    //---------------------------------------------------
		    
		    
		    //---------Dose diff in 80-100% ------------------------------------------
		    ReDim ss(-1)
		    For i=0 to UBound(pp.Points)
		      if pp.Is_Within(a.Penumbra_Pointb, a.Penumbra_Pointc, pp.Points(i)) Then
		        ss.Append pp.Points(i).Value
		      end
		    Next
		    pp.Center_Mean_Diff=Mean(ss)
		    pp.Center_SD=Standard_Deviation(ss, pp.Center_Mean_Diff)
		    pp.Center_Max_Diff=max(ss)
		    pp.Center_Min_Diff=Min(ss)
		    //---------------------------------------------------
		    
		    
		    //---------Dose diff in 0-20% ------------------------------------------
		    d1=pp.Distance_Between_Two_Points(a.Penumbra_Pointa,pp.Pointa)
		    d2=pp.Distance_Between_Two_Points(a.Penumbra_Pointd,pp.Pointa)
		    ReDim ss(-1)
		    For i=0 to UBound(pp.Points)
		      if d1<d2 Then
		        if pp.Is_Within(a.Penumbra_Pointa,pp.Pointa, pp.Points(i)) or pp.Is_Within(a.Penumbra_Pointd,pp.Pointb, pp.Points(i))  Then
		          ss.Append pp.Points(i).Value
		        end
		      else
		        if pp.Is_Within(a.Penumbra_Pointd,pp.Pointa, pp.Points(i)) or pp.Is_Within(a.Penumbra_Pointa,pp.Pointb, pp.Points(i))  Then
		          ss.Append pp.Points(i).Value
		        end
		      end
		    Next
		    pp.Umbra_Mean_Diff=Mean(ss)
		    pp.Umbra_SD=Standard_Deviation(ss, pp.Umbra_Mean_Diff)
		    pp.Umbra_Max_Diff=max(ss)
		    pp.Umbra_Min_Diff=Min(ss)
		    //---------------------------------------------------
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RTOG_Dose_Errors_Interpolate(x as single, y as single, z as single, D as RTOG_Dose_Distribution) As single
		  //-----------------------------------------
		  // Interpolate dose uncertainty at x,y,z
		  //
		  //-----------------------------------------
		  Dim x_l,x_r,y_t,y_b,D1,D2,D3,D4, x1,x2,x3,x4,y1,y2,y3,y4,Z1,Z2,D_avg_xl,D_avg_xr,r_dose,z_dose(-1),da,db as Double
		  Dim z_l,z_r, min, min_index,rvalue,temp,z_dd as Double
		  Dim x_index, y_index, z_index(-1),i as integer
		  Dim z_plane as Boolean
		  //===========================
		  x_l=d.Coord_1_1st_point
		  x_r=d.Coord_1_1st_point+(d.Size_of_Dimension1-1)*d.Horizontal_Grid
		  
		  y_t=d.Coord_2_1st_point
		  y_b=d.Coord_2_1st_point+d.Vertical_Grid*(d.Size_of_Dimension2-1)
		  
		  
		  z_l=d.Coord_3_1st_point
		  z_r=d.Coord_3_1st_point+d.Depth_Grid*(d.Size_of_Dimension3-1)
		  
		  if z>z_r or z<z_l Then
		    Return 0
		  end
		  
		  
		  if d.Size_of_Dimension3<=0 or d.Size_of_Dimension1<=0 or d.Size_of_Dimension2<=0  Then
		    Return 0
		  end
		  
		  for i=0 to UBound(d.Dose_Distribution)
		    if UBound(d.Dose_Distribution(i).Errors)=-1 Then
		      Return 0
		    end
		  next
		  
		  'Use z to find index of dose distribution
		  z_plane=False
		  
		  
		  temp=(z-d.Coord_3_1st_point)/d.Depth_Grid
		  min_index=Floor(temp)
		  //Floor Update July 2010!!!!
		  
		  z_dd=d.Coord_3_1st_point+min_index*d.Depth_Grid
		  
		  if abs(z-z_dd)<0.001  Then
		    Redim z_index(0)
		    ReDim z_dose(0)
		    z_index(0)=min_index
		    
		  Else
		    //Must average two dose planes
		    Redim z_index(1)
		    ReDim z_dose(1)
		    z_index(0)=min_index
		    z_index(1)=min_index+1
		    
		  end
		  
		  
		  
		  
		  
		  
		  for i=0 to UBound(z_index)
		    if x>=x_l and x<=x_r and y<=y_b and y>=y_t then
		      x_index=Floor((x-d.Coord_1_1st_point)/d.Horizontal_Grid)
		      y_index=Floor((y-d.Coord_2_1st_point)/d.Vertical_Grid)
		      D1=d.Dose_Distribution(z_index(i)).Errors(x_index+y_index*(d.Size_of_Dimension1))
		      if x_index+1<d.Size_of_Dimension1 then
		        D2=d.Dose_Distribution(z_index(i)).Errors(x_index+1+y_index*(d.Size_of_Dimension1))
		      else
		        D2=0
		      end
		      if 1+y_index<d.Size_of_Dimension2 and 1+x_index<d.Size_of_Dimension1 then
		        D4=d.Dose_Distribution(z_index(i)).Errors(x_index+1+(1+y_index)*(d.Size_of_Dimension1))
		      else
		        D4=0
		      end
		      if 1+y_index<d.Size_of_Dimension2 then
		        D3=d.Dose_Distribution(z_index(i)).Errors(x_index+(1+y_index)*(d.Size_of_Dimension1))
		      else
		        D3=0
		      end
		      x1=d.Coord_1_1st_point+x_index*d.Horizontal_Grid
		      x2=d.Coord_1_1st_point+(x_index+1)*d.Horizontal_Grid
		      x3=d.Coord_1_1st_point+x_index*d.Horizontal_Grid
		      x4=d.Coord_1_1st_point+(1+x_index)*d.Horizontal_Grid
		      
		      y1=d.Coord_2_1st_point+y_index*d.Vertical_Grid
		      y2=d.Coord_2_1st_point+y_index*d.Vertical_Grid
		      y3=d.Coord_2_1st_point+(y_index+1)*d.Vertical_Grid
		      y4=d.Coord_2_1st_point+(y_index+1)*d.Vertical_Grid
		      
		      D_avg_xl=D3*(y1-y)/(y1-y3)+D1*(1-(y1-y)/(y1-y3))
		      D_avg_xr=D4*(y2-y)/(y2-y4)+D2*(1-(y2-y)/(y2-y4))
		      r_dose=D_avg_xl*(1-(x-x1)/(x2-x1))+D_avg_xr*(x-x1)/(x2-x1)
		    else
		      r_dose= 0
		    end
		    z_dose(i)=r_dose
		  next
		  
		  
		  if UBound(z_dose)>0 Then
		    // Do a wieghted average over the two planes
		    Da=z_dose(0)
		    Db=z_dose(1)
		    Z1=D.Dose_Distribution(z_index(0)).Z
		    Z2=D.Dose_Distribution(z_index(1)).Z
		    rvalue=dB*(Z1-Z)/(z1-z2)+dA*(1-(z1-z)/(z1-z2))
		  else
		    rvalue= z_dose(0)
		  end
		  
		  
		  
		  if InStr(str(rvalue),"nan")>0 Then
		    //Break
		  end
		  
		  
		  Return rvalue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RTOG_Dose_Interpolate(x as single, y as single, z as single, D as RTOG_Dose_Distribution) As single
		  //-----------------------------------------
		  // Interpolate dose  at x,y,z
		  //
		  //-----------------------------------------
		  Dim x_l,x_r,y_t,y_b,D1,D2,D3,D4, x1,x2,x3,x4,y1,y2,y3,y4,Z1,Z2,D_avg_xl,D_avg_xr,r_dose,z_dose(-1),total ,da,db as Double
		  Dim z_l,z_r, min, min_index,rvalue,temp,z_dd as Double
		  Dim x_index, y_index, z_index(-1),i as integer
		  Dim z_plane as Boolean
		  //===========================
		  x_l=d.Coord_1_1st_point
		  x_r=d.Coord_1_1st_point+(d.Size_of_Dimension1-1)*d.Horizontal_Grid
		  
		  y_t=d.Coord_2_1st_point
		  y_b=d.Coord_2_1st_point+d.Vertical_Grid*(d.Size_of_Dimension2-1)
		  
		  
		  z_l=d.Coord_3_1st_point
		  z_r=d.Coord_3_1st_point+d.Depth_Grid*(d.Size_of_Dimension3-1)
		  
		  if z>z_r or z<z_l Then
		    Return 0
		  end
		  
		  if d.Size_of_Dimension3<=0 or d.Size_of_Dimension1<=0 or d.Size_of_Dimension2<=0  Then
		    Return 0
		  end
		  
		  
		  
		  'Use z to find index of dose distribution
		  z_plane=False
		  
		  
		  temp=(z-d.Coord_3_1st_point)/d.Depth_Grid
		  min_index=Floor(temp)
		  //Update July 2010!!!!
		  
		  z_dd=d.Coord_3_1st_point+min_index*d.Depth_Grid
		  
		  if abs(z-z_dd)<0.001  Then //If we are right on the slice of interest
		    Redim z_index(0)
		    ReDim z_dose(0)
		    z_index(0)=min_index
		  Else
		    //Must average two dose planes
		    Redim z_index(1)
		    ReDim z_dose(1)
		    z_index(0)=min_index
		    z_index(1)=min_index+1
		  end
		  
		  
		  
		  
		  
		  
		  total=0
		  for i=0 to UBound(z_index)
		    if x>=x_l and x<=x_r and y<=y_b and y>=y_t then
		      x_index=Floor((x-d.Coord_1_1st_point)/d.Horizontal_Grid)
		      y_index=Floor((y-d.Coord_2_1st_point)/d.Vertical_Grid)
		      D1=d.Dose_Distribution(z_index(i)).Points(x_index+y_index*(d.Size_of_Dimension1))
		      if x_index+1<d.Size_of_Dimension1 then
		        D2=d.Dose_Distribution(z_index(i)).Points(x_index+1+y_index*(d.Size_of_Dimension1))
		      else
		        D2=0
		      end
		      if 1+y_index<d.Size_of_Dimension2 and 1+x_index<d.Size_of_Dimension1 then
		        D4=d.Dose_Distribution(z_index(i)).Points(x_index+1+(1+y_index)*(d.Size_of_Dimension1))
		      else
		        D4=0
		      end
		      if 1+y_index<d.Size_of_Dimension2 then
		        D3=d.Dose_Distribution(z_index(i)).Points(x_index+(1+y_index)*(d.Size_of_Dimension1))
		      else
		        D3=0
		      end
		      x1=d.Coord_1_1st_point+x_index*d.Horizontal_Grid
		      x2=d.Coord_1_1st_point+(x_index+1)*d.Horizontal_Grid
		      x3=d.Coord_1_1st_point+x_index*d.Horizontal_Grid
		      x4=d.Coord_1_1st_point+(1+x_index)*d.Horizontal_Grid
		      
		      y1=d.Coord_2_1st_point+y_index*d.Vertical_Grid
		      y2=d.Coord_2_1st_point+y_index*d.Vertical_Grid
		      y3=d.Coord_2_1st_point+(y_index+1)*d.Vertical_Grid
		      y4=d.Coord_2_1st_point+(y_index+1)*d.Vertical_Grid
		      
		      D_avg_xl=D3*(y1-y)/(y1-y3)+D1*(1-(y1-y)/(y1-y3))
		      D_avg_xr=D4*(y2-y)/(y2-y4)+D2*(1-(y2-y)/(y2-y4))
		      r_dose=D_avg_xl*(1-(x-x1)/(x2-x1))+D_avg_xr*(x-x1)/(x2-x1)
		    else
		      r_dose= 0
		    end
		    z_dose(i)=r_dose
		  next
		  
		  
		  if UBound(z_dose)>0 Then
		    // Do a wieghted average over the two planes
		    Da=z_dose(0)
		    Db=z_dose(1)
		    Z1=D.Dose_Distribution(z_index(0)).Z
		    Z2=D.Dose_Distribution(z_index(1)).Z
		    rvalue=dB*(Z1-Z)/(z1-z2)+dA*(1-(z1-z)/(z1-z2))
		  else
		    rvalue= z_dose(0)
		  end
		  
		  
		  
		  if InStr(str(rvalue),"nan")>0 Then
		    //Break
		  end
		  
		  
		  Return rvalue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RTOG_Image_Interpolate(x as single, y as single, z as single) As single
		  //-----------------------------------------
		  // Interpolate image pixel value at x,y,z
		  // Within one plane, this is four point interpolation
		  // Return Pixel value or -1000 if outside range
		  //
		  //  D1-----------D2
		  //    ----p(x,y)----
		  //  D3-----------D4
		  //-----------------------------------------
		  Dim x_l,x_r,y_t,y_b,D1,D2,D3,D4, x1,x2,x3,x4,y1,y2,y3,y4,Z1,Z2,D_avg_xl,D_avg_xr,r_dose,z_dose(-1),total ,da,db as Double
		  Dim z_b,z_t, min,rvalue,temp,z_dd,OutOfBValue as Double
		  Dim x_index, y_index, z_index(-1),i,max_index,min_index as integer
		  //===========================
		  
		  OutOfBValue=-1000
		  
		  x_l=gVis.xoff_set-gRTOG.Scan(0).Grid_Units_Width/2
		  x_r=x_l+(gRTOG.Scan(0).Grid_Units_Width)*(gRTOG.Scan(0).Size_of_Dimension1)
		  
		  y_t = gVis.yoff_set-gRTOG.Scan(0).Grid_Units_Height/2
		  y_b = y_t+(gRTOG.Scan(0).Grid_Units_Height)*(gRTOG.Scan(0).Size_of_Dimension2)
		  
		  z_b=gRTOG.Scan(0).Z_Value
		  z_t=gRTOG.Scan(UBound(gRTOG.Scan)).Z_Value
		  
		  if z>z_t or z<z_b Then
		    Return OutOfBValue
		  end
		  
		  'Use z to find index of image 
		  temp=(z-gRTOG.Scan(0).Z_Value)/gRTOG.Scan(0).Slice_Thickness
		  min_index=Floor(temp)
		  max_index=Ceil(temp)
		  if max_index>UBound(gRTOG.Scan) Then
		    max_index=UBound(gRTOG.Scan)
		  end
		  
		  
		  Redim z_index(0)
		  Redim z_dose(0)
		  if  z=gRTOG.Scan(min_index).Z_Value Then
		    z_index(0)=min_index
		  elseif z=gRTOG.Scan(max_index).Z_Value Then
		    z_index(0)=max_index
		  else
		    for i=0 to UBound(gRTOG.Scan)-1
		      if z>=gRTOG.Scan(i).Z_Value and z<=gRTOG.Scan(i+1).Z_Value Then
		        Redim z_index(1)
		        ReDim z_dose(1)
		        z_index(0)=i
		        z_index(1)=i+1
		        Exit for i
		      end
		    next
		  end
		  
		  
		  
		  
		  
		  for i=0 to UBound(z_index)
		    if x>=x_l and x<=x_r and y<=y_b and y>=y_t then
		      x_index=Floor((x-x_l)/gRTOG.Scan(0).Grid_Units_Width)
		      y_index=Floor((y-y_t)/(gRTOG.Scan(0).Grid_Units_Height))
		      
		      if y_index<gRTOG.Scan(0).Size_of_Dimension2 Then
		        D1=gRTOG.Scan(z_index(i)).voxel(x_index+y_index*(gRTOG.Scan(0).Size_of_Dimension1))
		      else
		        D1=OutOfBValue
		      end
		      
		      if (x_index+1)<gRTOG.Scan(0).Size_of_Dimension1 and y_index<gRTOG.Scan(0).Size_of_Dimension2  then
		        D2=gRTOG.Scan(z_index(i)).voxel(x_index+1+y_index*(gRTOG.Scan(0).Size_of_Dimension1))
		      else
		        D2=OutOfBValue
		      end
		      
		      if (1+y_index)<gRTOG.Scan(0).Size_of_Dimension2 and (1+x_index)<gRTOG.Scan(0).Size_of_Dimension1 then
		        D4=gRTOG.Scan(z_index(i)).voxel(x_index+1+(1+y_index)*(gRTOG.Scan(0).Size_of_Dimension1))
		      else
		        D4=OutOfBValue
		      end
		      
		      if (1+y_index)<gRTOG.Scan(0).Size_of_Dimension2 then
		        D3=gRTOG.Scan(z_index(i)).voxel(x_index+(1+y_index)*(gRTOG.Scan(0).Size_of_Dimension1))
		      else
		        D3=OutOfBValue
		      end
		      x1=x_l+x_index*gRTOG.Scan(0).Grid_Units_Width
		      x2=x_l+(x_index+1)*gRTOG.Scan(0).Grid_Units_Width
		      x3=x_l+x_index*gRTOG.Scan(0).Grid_Units_Width
		      x4=x_l+(1+x_index)*gRTOG.Scan(0).Grid_Units_Width
		      
		      y1=y_t+y_index*(gRTOG.Scan(0).Grid_Units_Height)
		      y2=y_t+y_index*(gRTOG.Scan(0).Grid_Units_Height)
		      y3=y_t+(y_index+1)*(gRTOG.Scan(0).Grid_Units_Height)
		      y4=y_t+(y_index+1)*(gRTOG.Scan(0).Grid_Units_Height)
		      
		      D_avg_xl=D3*(y1-y)/(y1-y3)+D1*(1-(y1-y)/(y1-y3))
		      D_avg_xr=D4*(y2-y)/(y2-y4)+D2*(1-(y2-y)/(y2-y4))
		      r_dose=D_avg_xl*(1-(x-x1)/(x2-x1))+D_avg_xr*(x-x1)/(x2-x1)
		    else
		      r_dose= OutOfBValue
		    end
		    z_dose(i)=r_dose
		  next
		  
		  if UBound(z_dose)>0 Then
		    // Do a wieghted average over the two Z planes
		    Da=z_dose(0)
		    Db=z_dose(1)
		    Z1=gRTOG.Scan(z_index(0)).Z_Value
		    Z2=gRTOG.Scan(z_index(1)).Z_Value
		    rvalue=dB*(Z1-Z)/(z1-z2)+dA*(1-(z1-z)/(z1-z2))
		  else
		    rvalue= z_dose(0)
		  end
		  
		  if InStr(str(rvalue),"nan")>0 Then
		    Break
		  end
		  
		  Return rvalue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Spaces(ts as textoutputStream, name as string, space as integer, name2 as string)
		  'Places a set number of spaces between the 2 name strings
		  if ts=nil Then
		    Return
		  end
		  
		  while len(name)<space
		    name=name+chrB(32)
		  wend
		  name=name +":=  "+name2
		  ts.writeline name
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Standard_Deviation(ss() as Single, avg as Single) As Single
		  Dim temp,diff,diff_sum as Single
		  Dim i as Integer
		  
		  
		  
		  diff_sum=0
		  temp=0
		  For i=0 to UBound(ss)
		    diff=ss(i)-avg
		    diff_sum=diff_sum+diff*diff
		  Next
		  temp=diff_sum/(UBound(ss))
		  temp=Sqrt(temp)
		  
		  Return temp
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Errors(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		gBEAM As Thread_BEAM
	#tag EndProperty

	#tag Property, Flags = &h0
		gCT As Class_CT
	#tag EndProperty

	#tag Property, Flags = &h0
		gCutout As Thread_Cutout
	#tag EndProperty

	#tag Property, Flags = &h0
		gDICOM As Thread_DICOM_Object
	#tag EndProperty

	#tag Property, Flags = &h0
		gDoseStats As Class_Dose_Stats
	#tag EndProperty

	#tag Property, Flags = &h0
		gDOSXYZ As Thread_DOSXYZ
	#tag EndProperty

	#tag Property, Flags = &h0
		gdoublemax As double = 1e+10
	#tag EndProperty

	#tag Property, Flags = &h0
		gdoublemin As double = -1e+10
	#tag EndProperty

	#tag Property, Flags = &h0
		gDVH As Thread_DVH
	#tag EndProperty

	#tag Property, Flags = &h0
		gLinacs As Class_Linacs
	#tag EndProperty

	#tag Property, Flags = &h0
		gOpt As Thread_Optimization
	#tag EndProperty

	#tag Property, Flags = &h0
		gOutput As Class_OutPut
	#tag EndProperty

	#tag Property, Flags = &h0
		gPoly As Class_Structures
	#tag EndProperty

	#tag Property, Flags = &h0
		gPref As Class_Preference
	#tag EndProperty

	#tag Property, Flags = &h0
		gProfiles As Class_Profiles_All
	#tag EndProperty

	#tag Property, Flags = &h0
		gRTOG As Thread_RTOG
	#tag EndProperty

	#tag Property, Flags = &h0
		gShells As Class_Shells
	#tag EndProperty

	#tag Property, Flags = &h0
		gTimer_Download As Class_MMCTP_Timer_Download
	#tag EndProperty

	#tag Property, Flags = &h0
		gTimer_PW As Class_MMCTP_Timer_ProgressWindow
	#tag EndProperty

	#tag Property, Flags = &h0
		gTimer_Refresh As Class_MMCTP_Timer_Refresh
	#tag EndProperty

	#tag Property, Flags = &h0
		gTimer_Run As Class_MMCTP_Timer_Run
	#tag EndProperty

	#tag Property, Flags = &h0
		gTimer_Windows As Class_MMCTP_Timer_Windows
	#tag EndProperty

	#tag Property, Flags = &h0
		gVis As Thread_Visualization
	#tag EndProperty

	#tag Property, Flags = &h0
		gVMC As Thread_VMC
	#tag EndProperty

	#tag Property, Flags = &h0
		local_endline As string
	#tag EndProperty

	#tag Property, Flags = &h0
		MC_Auto_Check As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			patient ID + plan # + beam #
			
			ex
			54598_p1b2
		#tag EndNote
		MC_file_name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		MC_Run_Logic As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		MMCTP_Download As Shell_MMCTP_Download
	#tag EndProperty

	#tag Property, Flags = &h0
		MMCTP_Shell_Refresh As Shell_MMCTP_Refresh
	#tag EndProperty

	#tag Property, Flags = &h0
		MMCTP_Shell_Run As Shell_MMCTP_Run
	#tag EndProperty

	#tag Property, Flags = &h0
		PI As double = 3.141592654
	#tag EndProperty

	#tag Property, Flags = &h0
		Plan_Index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PW_Progress As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PW_Progress_Max As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PW_Show As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		PW_StaticText As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PW_Title As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RTOGBeam_Index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		String_Separate As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TPW_Show As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		TP_DVH_Text As String
	#tag EndProperty

	#tag Property, Flags = &h0
		transfer_endline As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="gdoublemax"
			Visible=false
			Group="Behavior"
			InitialValue="1e+35"
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="gdoublemin"
			Visible=false
			Group="Behavior"
			InitialValue="1e-35"
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="local_endline"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MC_Auto_Check"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MC_file_name"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MC_Run_Logic"
			Visible=false
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
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
			Name="PI"
			Visible=false
			Group="Behavior"
			InitialValue="3.14159"
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Plan_Index"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PW_Progress"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PW_Progress_Max"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PW_Show"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PW_StaticText"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PW_Title"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RTOGBeam_Index"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="String_Separate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TPW_Show"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TP_DVH_Text"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="transfer_endline"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
