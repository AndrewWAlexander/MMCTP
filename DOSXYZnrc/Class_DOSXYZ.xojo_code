#tag Class
Protected Class Class_DOSXYZ
	#tag Method, Flags = &h0
		Sub AddBeam()
		  //--------------------------------
		  //
		  //
		  //--------------------------------
		  Dim a as Class_DOSXYZ_input
		  Dim bb as Boolean
		  //--------------------------------
		  
		  a = new Class_DOSXYZ_input
		  DOSXYZ_Input.Append a
		  
		  a.dos_jobs=gDOSXYZ.dosxyz_desired_number_of_Jobs
		  a.EGSnrc = new Class_EGSnrc_Inputs
		  a.dos_Non_CT=EGSPhantSettings.Non_CT_Phantom
		  a.dos_pegs_file=EGSPhantSettings.Pegsfile
		  a.dos_test_histories=gDOSXYZ.dosxyz_test_histories
		  a.dos_desired_average_error=gDOSXYZ.dosxyz_desired_average_error
		  
		  bb=Read_DOSXYZ_Input(UBound(DOSXYZ_Input))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Calculate_Complete()
		  Dim i,cc as Integer
		  Dim per as Single
		  
		  cc=0
		  for i=0 to UBound(DOSXYZ_Input)
		    
		    if DOSXYZ_Input(i).dos_progress=100 Then
		      cc=cc+1
		    end
		    
		  next
		  
		  
		  per=cc/i*100
		  Complete=(per)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteBeam(num as integer)
		  DOSXYZ_Input.Remove num
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_DOSXYZ()
		  //----------------------------------------
		  // Initialize one DOSXYZ Class
		  // Read in the DOSXYZ properties file
		  //
		  //==============================
		  dim a,i as Integer
		  DIm temp,cc,field as String
		  Dim ts as TextInputStream
		  Dim f as FolderItem
		  Dim good as Boolean
		  //--------------------------------------------
		  
		  if Plan_Index>=0 and Plan_Index<=UBound(gRTOG.Plan) Then
		    redim DOSXYZ_Input(UBound(gRTOG.Plan(Plan_Index).Beam))
		    
		    
		    // Initialize variables
		    for a=0 to UBound(gRTOG.Plan(Plan_Index).Beam)
		      DOSXYZ_Input(a)=new Class_DOSXYZ_input
		      ReDim DOSXYZ_Input(a).theta(0)
		      ReDim DOSXYZ_Input(a).phi(0)
		      
		      DOSXYZ_Input(a).dos_pegs_file=EGSPhantSettings.Pegsfile
		      DOSXYZ_Input(a).dos_Non_CT=EGSPhantSettings.Non_CT_Phantom
		      DOSXYZ_Input(a).EGSnrc = new Class_EGSnrc_Inputs
		      DOSXYZ_Input(a).dos_Shell=""
		    next
		    
		    f=gRTOG.Plan(Plan_Index).Path
		    f=f.Child("DOSXYZ_"+egsphantsettings.name+".txt")
		    if f.Exists=False then
		      // Now load DOSXYZnrc classes
		      for a=0 to  UBound(gRTOG.Plan(Plan_Index).Beam)
		        good = Read_DOSXYZ_Input(a)
		      Next
		      Return
		    end
		    ts=f.OpenAsTextFile
		    
		    
		    do
		      Temp=ts.ReadLine
		      a=Val(NthField(Temp," ",2))-1
		      cc=Trim(NthField(Temp,":",1))
		      field=""
		      for i=3 to CountFields(cc," ")
		        field=field+ " "+NthField(cc," ",i)
		      next
		      field=Trim(field)
		      
		      
		      
		      if a>=0 and a<=UBound(gRTOG.Plan(Plan_Index).Beam) Then
		        
		        if InStr(Temp,"Dose to Water")>0 Then
		          DOSXYZ_Input(a).dose_to_water=Val(NthField(Temp,"=",2))
		          
		        ElseIf field="Dose" Then
		          DOSXYZ_Input(a).dos_dose=Val(NthField(Temp,"=",2))
		          
		        ElseIf InStr(Temp,"Progress")>0 Then
		          DOSXYZ_Input(a).dos_progress=Val(NthField(Temp,"=",2))
		          
		        ElseIf InStr(Temp,"Queue")>0 Then
		          DOSXYZ_Input(a).dos_queue=trim(NthField(Temp,"=",2))
		          
		          
		        ElseIf InStr(Temp,"Number of Histories")>0 Then
		          DOSXYZ_Input(a).dos_num_histories=Val(NthField(Temp,"=",2))
		          
		        ElseIf InStr(Temp,"Number of Jobs")>0 Then
		          DOSXYZ_Input(a).dos_jobs=Val(NthField(Temp,"=",2))
		          
		        ElseIf InStr(Temp,"CPU time per History")>0 Then
		          DOSXYZ_Input(a).dos_CPU_time=Val(NthField(Temp,"=",2))
		          
		        ElseIf InStr(Temp,"DOSXYZnrc run started")>0 Then
		          temp=NthField(Temp,"=",2)
		          if InStr(Temp,"True")>0 Then
		            good=true
		          else
		            good=False
		          end
		          DOSXYZ_Input(a).run_started=good
		          
		          
		          
		        ElseIf InStr(Temp,"SimError")>0 Then
		          temp=NthField(Temp,"=",2)
		          if InStr(Temp,"True")>0 Then
		            good=true
		          else
		            good=False
		          end
		          DOSXYZ_Input(a).dos_simulation_error=good
		          
		          
		          
		        ElseIf InStr(Temp,"Desired % error")>0 Then
		          DOSXYZ_Input(a).dos_desired_average_error=Val(NthField(Temp,"=",2))
		          
		          
		        ElseIf InStr(Temp,"Number of test histories")>0 Then
		          DOSXYZ_Input(a).dos_test_histories=Val(NthField(Temp,"=",2))
		          
		          
		        ElseIf InStr(Temp,"% error of test histories")>0 Then
		          DOSXYZ_Input(a).dos_error_math_error=Val(NthField(Temp,"=",2))
		          
		        ElseIf InStr(Temp,"Num hist for %error test")>0 Then
		          DOSXYZ_Input(a).dos_error_math_hist=Val(NthField(Temp,"=",2))
		          
		          
		        ElseIf InStr(Temp,"Number Active Jobs")>0 Then
		          DOSXYZ_Input(a).dos_num_active_jobs=Val(NthField(Temp,"=",2))
		          
		        ElseIf InStr(Temp,"TotalTime")>0 Then
		          DOSXYZ_Input(a).TotalTime=Val(NthField(Temp,"=",2))
		          
		          
		          
		        ElseIf InStr(Temp,"Non CT Phantom")>0 Then
		          temp=NthField(Temp,"=",2)
		          if InStr(Temp,"True")>0 Then
		            good=true
		          else
		            good=False
		          end
		          DOSXYZ_Input(a).dos_Non_CT=good
		          
		          
		          
		          
		        ElseIf InStr(Temp,"Pegs file")>0 Then
		          DOSXYZ_Input(a).dos_pegs_file=Trim(NthField(Temp,"=",2))
		          
		        ElseIf InStr(Temp,"Submit time")>0 Then
		          DOSXYZ_Input(a).dos_start_Date=Trim(NthField(Temp,"=",2))
		          
		        ElseIf InStr(Temp,"Finish time")>0 Then
		          DOSXYZ_Input(a).dos_3ddose_finish_Time=Trim(NthField(Temp,"=",2))
		          
		          
		        ElseIf InStr(Temp,"3ddose")>0 and InStr(Temp,"downloaded")>0 Then
		          temp=NthField(Temp,"=",2)
		          if InStr(Temp,"True")>0 Then
		            good=true
		          else
		            good=False
		          end
		          DOSXYZ_Input(a).dos_3ddose_downloaded=good
		          
		        ElseIf InStr(Temp,"3ddose-found")>0 Then
		          temp=NthField(Temp,"=",2)
		          if InStr(Temp,"True")>0 Then
		            good=true
		          else
		            good=False
		          end
		          DOSXYZ_Input(a).dos_3ddose_detected=good
		          
		          
		          
		        ElseIf InStr(Temp,"Shell Index")>0 Then
		          DOSXYZ_Input(a).dos_Shell_Index=Val(NthField(Temp,"=",2))
		          if DOSXYZ_Input(a).dos_Shell_Index>-1 and DOSXYZ_Input(a).dos_Shell_Index<=UBound(gShells.Shells) Then
		            DOSXYZ_Input(a).dos_Shell=gShells.Shells(DOSXYZ_Input(a).dos_Shell_Index).title
		          end
		          
		        ElseIf InStr(Temp,"CalculateDose")>0 Then
		          temp=NthField(Temp,"=",2)
		          if InStr(Temp,"True")>0 Then
		            good=true
		          else
		            good=False
		          end
		          DOSXYZ_Input(a).dos_calculate=good
		          
		        ElseIf InStr(Temp,"%error average")>0 Then
		          DOSXYZ_Input(a).dos_average_error=Val(NthField(Temp,"=",2))
		          
		          
		        end
		      end
		    loop until  ts.EOF
		    
		    
		    ts.Close
		    
		    
		    // Now load DOSXYZnrc classes
		    for a=0 to  UBound(gRTOG.Plan(Plan_Index).Beam)
		      good = Read_DOSXYZ_Input(a)
		    Next
		    
		    
		  else
		    redim DOSXYZ_Input(-1)
		  end
		  
		  Calculate_Complete
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Read_DOSXYZ_Input(beam as integer) As boolean
		  //-----------------------------------
		  // Reads in DOSXYZ.egsinp input file
		  //
		  //-----------------------------------
		  Dim ts as TextInputStream
		  DIm f as FolderItem
		  Dim temp,name,line(-1),bnum  as String
		  Dim one_file as Class_DOSXYZ_input
		  Dim i,k as Integer
		  Dim prerun as Boolean
		  //----------------------------------
		  
		  // Try to load file from plan folder
		  one_file=DOSXYZ_Input(beam)
		  f=new FolderItem
		  f=gRTOG.Plan(Plan_Index).Path
		  bnum=str(beam+1)
		  While Len(bnum)<3
		    bnum="0"+bnum
		  Wend
		  name=MC_file_name+bnum+"_"+egsphantsettings.name +".egsinp"
		  f=f.Child(name)
		  prerun=False
		  // Next try and load file form McGill RT folder
		  if f.Exists=False Then
		    f=new FolderItem
		    f=gRTOG.path.Child("McGill_RT").Child(egsphantsettings.name+".default")
		    
		    if f.Exists=False Then
		      f=new FolderItem
		      f=gPref.BEAMnrc_fi
		      one_file.dos_Non_CT=EGSPhantSettings.Non_CT_Phantom
		      
		      if EGSPhantSettings.Non_CT_Phantom Then
		        f=f.child("MC_WaterPhantom_Output.egsinp")
		      else
		        f=f.child("dosxyz.egsinp")
		      end
		      if f=nil then
		        Return False
		      end
		    end
		  else // There has been a previous run input file & found
		    prerun=True
		  end
		  
		  if f.Exists=False Then
		    MsgBox "Could not find file : "+f.Name+chr(13) +"Under : "+f.ShellPath
		    Return False
		  end
		  
		  ts=f.OpenAsTextFile
		  
		  // title
		  temp=ts.ReadLine
		  DOSXYZ_Input(beam).TITLE=temp
		  
		  // Number of mediums
		  temp=ts.ReadLine
		  DOSXYZ_Input(beam).NMED=val(temp)
		  
		  if one_file.NMED=0 Then // egsphant in its own file 
		    temp=ts.ReadLine
		    one_file.egsphant_path=temp
		  else // input file contains esgphant 
		    ReDim one_file.NMedium(one_file.NMED-1)
		    for i=0 to one_file.NMED-1
		      temp=ts.ReadLine
		      one_file.NMedium(i)=Temp
		    next
		  end
		  
		  
		  
		  temp=ts.ReadLine
		  one_file.ECUTIN =val(NthField(temp,",",1))
		  one_file.PCUT=val(NthField(temp,",",2))
		  one_file.ESTEPM=val(NthField(temp,",",3))
		  
		  //Fill in the egsphant boundaries
		  if one_file.NMED>0 Then
		    temp=ts.ReadLine
		    one_file.IMAX =val(NthField(temp,",",1))
		    one_file.JMAX =val(NthField(temp,",",2))
		    one_file.KMAX =val(NthField(temp,",",3))
		    one_file.IPHANT =val(NthField(temp,",",4))
		    
		    
		    //----------------------
		    //Define i voxels
		    if one_file.IMAX<0 Then //set of equally spaced boundaries
		      temp=ts.ReadLine
		      one_file.iMAX_Group_Min=val(NthField(temp,",",1))
		      
		      ReDim one_file.iMAX_Group(Abs(one_file.iMAX)-1)
		      ReDim one_file.iMAX_Group_Num(abs(one_file.iMAX)-1)
		      for i=0 to Abs(one_file.iMAX)-1
		        temp=ts.ReadLine
		        one_file.iMAX_Group(i)=val(NthField(temp,",",1))
		        one_file.iMAX_Group_Num(i)=val(NthField(temp,",",2))
		      next
		    else
		      ReDim one_file.IMAX_Bound(one_file.IMAX)
		      for i=0 to one_file.IMAX
		        temp=ts.ReadLine
		        one_file.IMAX_Bound(i)=val(Temp)
		      next
		    end
		    // End i voxels
		    //----------------------
		    
		    
		    
		    //----------------------
		    //Define J voxels
		    if one_file.JMAX<0 Then
		      temp=ts.ReadLine
		      one_file.jMAX_Group_Min=val(NthField(temp,",",1))
		      
		      ReDim one_file.jMAX_Group(Abs(one_file.jMAX)-1)
		      ReDim one_file.jMAX_Group_Num(abs(one_file.jMAX)-1)
		      for i=0 to Abs(one_file.jMAX)-1
		        temp=ts.ReadLine
		        one_file.jMAX_Group(i)=val(NthField(temp,",",1))
		        one_file.jMAX_Group_Num(i)=val(NthField(temp,",",2))
		      next
		    else
		      ReDim one_file.JMAX_Bound(one_file.JMAX)
		      for i=0 to one_file.JMAX
		        temp=ts.ReadLine
		        one_file.JMAX_Bound(i)=val(Temp)
		      next
		    end
		    //End J voxels
		    //----------------------
		    
		    
		    
		    //-----------------------
		    //Define K voxels
		    //-----------------------
		    if one_file.KMAX<0 Then
		      temp=ts.ReadLine
		      one_file.KMAX_Group_Min=val(NthField(temp,",",1))
		      ReDim one_file.KMAX_Group(Abs(one_file.KMAX)-1)
		      ReDim one_file.KMAX_Group_Num(abs(one_file.KMAX)-1)
		      for i=0 to Abs(one_file.KMAX)-1
		        temp=ts.ReadLine
		        one_file.KMAX_Group(i)=val(NthField(temp,",",1))
		        one_file.KMAX_Group_Num(i)=val(NthField(temp,",",2))
		      next
		    else
		      ReDim one_file.kMAX_Bound(one_file.kMAX)
		      for i=0 to one_file.kMAX
		        temp=ts.ReadLine
		        one_file.kMAX_Bound(i)=val(Temp)
		      next
		    end
		    //-----------------------
		    //End K voxels
		    //-----------------------
		    
		    
		    //asign the voxels a material and density
		    temp=ts.ReadLine
		    one_file.IL =val(NthField(temp,",",1))
		    one_file.Iu =val(NthField(temp,",",2))
		    one_file.jl =val(NthField(temp,",",3))
		    one_file.ju =val(NthField(temp,",",4))
		    one_file.kl =val(NthField(temp,",",5))
		    one_file.ku =val(NthField(temp,",",6))
		    one_file.MEDIUM =val(NthField(temp,",",7))
		    one_file.DENSITY =val(NthField(temp,",",8))
		    
		    // 2 Blank lines
		    temp=ts.ReadLine
		    temp=ts.ReadLine
		    
		    
		    // Print dose at one line
		    temp=ts.ReadLine
		    one_file.IZSCAN_X1 =val(NthField(temp,",",1))
		    one_file.IZSCAN_X2 =val(NthField(temp,",",2))
		    one_file.IZSCAN_Y1 =val(NthField(temp,",",3))
		    one_file.IZSCAN_Y2 =val(NthField(temp,",",4))
		    one_file.IZSCAN_z1 =val(NthField(temp,",",5))
		    one_file.IZSCAN_Z2 =val(NthField(temp,",",6))
		    one_file.IZSCAN =val(NthField(temp,",",7))
		    one_file.Max20 =val(NthField(temp,",",8))
		    
		    // Blank line
		    temp=ts.ReadLine
		    
		    
		  else // Readin CT phantom info
		    temp=ts.ReadLine
		    one_file.zeroairdose=val(NthField(temp,",",1))
		    one_file.doseprint=val(NthField(temp,",",2))
		    one_file.Max20=val(NthField(temp,",",3))
		  end
		  
		  
		  temp=ts.ReadLine
		  one_file.IQIN=val(NthField(temp,",",1))
		  one_file.isource=val(NthField(temp,",",2))
		  
		  if one_file.isource=1 Then //Parallel Rectangular Beam Incident from Any Direction
		    ReDim one_file.theta(0)
		    ReDim one_file.phi(0)
		    
		    one_file.xiso=val(NthField(temp,",",3))
		    one_file.yiso=val(NthField(temp,",",4))
		    one_file.ziso=val(NthField(temp,",",5))
		    one_file.theta(0)=val(NthField(temp,",",6))
		    one_file.phi(0)=val(NthField(temp,",",7))
		    one_file.xcol=val(NthField(temp,",",8))
		    one_file.ycol=val(NthField(temp,",",9))
		    one_file.phicol(0)=val(NthField(temp,",",10))
		    
		  elseif one_file.isource=2 Then  //Phase-Space Source Incident from Any Direction
		    ReDim one_file.theta(0)
		    ReDim one_file.phi(0)
		    
		    one_file.xiso=val(NthField(temp,",",3))
		    one_file.yiso=val(NthField(temp,",",4))
		    one_file.ziso=val(NthField(temp,",",5))
		    one_file.theta(0)=val(NthField(temp,",",6))
		    one_file.phi(0)=val(NthField(temp,",",7))
		    one_file.dsource=val(NthField(temp,",",8))
		    one_file.phicol(0)=val(NthField(temp,",",9))
		    one_file.i_dbs=val(NthField(temp,",",10))
		    one_file.r_dbs=val(NthField(temp,",",11))
		    one_file.ssd_dbs=val(NthField(temp,",",12))
		    one_file.z_dbs=val(NthField(temp,",",13))
		    one_file.e_split=val(NthField(temp,",",14))
		    
		  elseif one_file.isource=3 Then //Point Source Rectangular Beam Incident from Front
		    one_file.xinl=val(NthField(temp,",",3))
		    one_file.xinu=val(NthField(temp,",",4))
		    one_file.yinl=val(NthField(temp,",",5))
		    one_file.yinu=val(NthField(temp,",",6))
		    one_file.ssd=val(NthField(temp,",",7))
		    
		  elseif one_file.isource=8 Then //Phase-Space Source Incident from Multiple Directions 
		    one_file.xiso=val(NthField(temp,",",3))
		    one_file.yiso=val(NthField(temp,",",4))
		    one_file.ziso=val(NthField(temp,",",5))
		    one_file.nang=val(NthField(temp,",",6))
		    one_file.dsource=val(NthField(temp,",",7))
		    one_file.phicol(0)=val(NthField(temp,",",8))
		    one_file.i_dbs=val(NthField(temp,",",9))
		    one_file.r_dbs=val(NthField(temp,",",10))
		    one_file.ssd_dbs=val(NthField(temp,",",11))
		    one_file.z_dbs=val(NthField(temp,",",12))
		    one_file.e_split=val(NthField(temp,",",13))
		    
		    if one_file.nang>0 Then
		      ReDim one_file.theta(one_file.nang-1)
		      ReDim one_file.pang(one_file.nang-1)
		      ReDim one_file.phi(one_file.nang-1)
		      for i=1 to one_file.nang 
		        temp=ts.ReadLine
		        one_file.theta(i-1)=val(NthField(temp,",",1))
		        one_file.phi(i-1)=val(NthField(temp,",",2))
		        one_file.pang(i-1)=val(NthField(temp,",",3))
		      next
		      
		    elseif one_file.nang<0 Then
		      i=Abs(one_file.nang)
		      ReDim one_file.ivary(i-1)
		      ReDim one_file.angfixed(i-1)
		      ReDim one_file.angmax(i-1)
		      ReDim one_file.ngang(i-1)
		      ReDim one_file.pgang(i-1)
		      ReDim one_file.angmin(i-1)
		      
		      for i=1 to abs(one_file.nang)
		        temp=ts.ReadLine
		        one_file.ivary(i-1)=val(NthField(temp,",",1))
		        one_file.angfixed(i-1)=val(NthField(temp,",",2))
		        one_file.angmin(i-1)=val(NthField(temp,",",3))
		        one_file.angmax(i-1)=val(NthField(temp,",",4))
		        one_file.ngang(i-1)=val(NthField(temp,",",5))
		        one_file.pgang(i-1)=val(NthField(temp,",",6))
		      next
		    end
		    
		  elseif one_file.isource=9 Then //BEAM Treatment Head Simulation
		    ReDim one_file.theta(0)
		    ReDim one_file.phi(0)
		    
		    one_file.xiso=val(NthField(temp,",",3))
		    one_file.yiso=val(NthField(temp,",",4))
		    one_file.ziso=val(NthField(temp,",",5))
		    one_file.theta(0)=val(NthField(temp,",",6))
		    one_file.phi(0)=val(NthField(temp,",",7))
		    one_file.dsource=val(NthField(temp,",",8))
		    one_file.phicol(0)=val(NthField(temp,",",9))
		    one_file.i_dbs=val(NthField(temp,",",10))
		    one_file.e_split=val(NthField(temp,",",11))
		    
		  elseif one_file.isource=11 Then // Tomo input files
		    ReDim one_file.theta(0)
		    ReDim one_file.phi(0)
		    one_file.xiso=val(NthField(temp,",",3))
		    one_file.yiso=val(NthField(temp,",",4))
		    one_file.ziso=val(NthField(temp,",",5))
		    one_file.tomo_phi=val(NthField(temp,",",6))
		    one_file.dsource=val(NthField(temp,",",7))
		    one_file.tomo_phicol=val(NthField(temp,",",8))
		    one_file.i_dbs=val(NthField(temp,",",9))
		    one_file.e_split=val(NthField(temp,",",10))
		    one_file.tomo_ipp=val(NthField(temp,",",11))
		    one_file.tomo_pitch=val(NthField(temp,",",12))
		    one_file.tomo_field_width=val(NthField(temp,",",13))
		    
		    temp=ts.ReadLine
		    one_file.path11=Trim(temp)
		    
		    
		    
		  elseif one_file.isource=21 or one_file.isource=20 Then // Tony Popescu and Julio Lobo source
		    one_file.nset=val(NthField(temp,",",3))
		    one_file.i_dbs=val(NthField(temp,",",4))
		    one_file.e_split=val(NthField(temp,",",5))
		    
		    ReDim one_file.isox(one_file.nset-1)
		    ReDim one_file.isoy(one_file.nset-1)
		    ReDim one_file.isoz(one_file.nset-1)
		    ReDim one_file.theta(one_file.nset-1)
		    ReDim one_file.phi(one_file.nset-1)
		    ReDim one_file.phicol(one_file.nset-1)
		    ReDim one_file.muIndex(one_file.nset-1)
		    ReDim one_file.dsources(one_file.nset-1)
		    
		    for i=1 to abs(one_file.nset)
		      temp=ts.ReadLine
		      one_file.isox(i-1)=val(NthField(temp,",",1))
		      one_file.isoy(i-1)=val(NthField(temp,",",2))
		      one_file.isoz(i-1)=val(NthField(temp,",",3))
		      one_file.theta(i-1)=val(NthField(temp,",",4))
		      one_file.phi(i-1)=val(NthField(temp,",",5))
		      one_file.phicol(i-1)=val(NthField(temp,",",6))
		      one_file.dsources(i-1)=val(NthField(temp,",",7))
		      one_file.muIndex(i-1)=val(NthField(temp,",",8))
		    Next
		  end
		  
		  
		  //Record SC2 
		  //enflag,mode,medsur,dsurround(1),dflag,dsurround(2),dsurround(3),dsurround(4)
		  temp=ts.ReadLine
		  one_file.enflag=val(NthField(temp,",",1))
		  one_file.mode=val(NthField(temp,",",2))
		  one_file.medsur=val(NthField(temp,",",3))
		  one_file.dsurround1=val(NthField(temp,",",4))
		  one_file.dflag=val(NthField(temp,",",5))
		  one_file.dsurround2=val(NthField(temp,",",6))
		  one_file.dsurround3=val(NthField(temp,",",7))
		  one_file.dsurround4=val(NthField(temp,",",8))
		  
		  
		  //Record SC3 
		  temp=trim(ts.ReadLine)
		  if one_file.enflag=0 Then
		    // monoene val
		    one_file.ein=val(temp)
		    
		  elseif one_file.enflag=1 Then
		    // Spectrum file name
		    one_file.FILNAM=temp
		    
		  elseif one_file.enflag=2 and one_file.isource=2 Then
		    // Phsp space file name
		    one_file.FILNAM=temp
		    
		  elseif one_file.enflag=2 and (one_file.isource=9 or one_file.isource=11 or one_file.isource=21) Then
		    // BEAMnrc source 
		    one_file.the_beam_code=Trim(NthField(temp,",",1))
		    one_file.the_input_file=Trim(NthField(temp,",",2))
		    one_file.the_pegs_file=Trim(NthField(temp,",",3))
		    one_file.the_vcu_code=Trim(NthField(temp,",",4))
		    one_file.the_vcu_input_file=Trim(NthField(temp,",",5))
		  end
		  
		  
		  //Record SC3c
		  if one_file.enflag=3 Then
		    temp=trim(ts.ReadLine)
		    one_file.I_bit_filter=val(NthField(temp,",",1))
		    one_file.NBIT1=val(NthField(temp,",",2))
		    one_file.NBIT2=val(NthField(temp,",",2))
		    temp=trim(ts.ReadLine)
		    for i=1 to one_file.NBIT1
		      if i-1>=0 and i-1<=UBound(one_file.LATBit) Then
		        one_file.LATBit(i-1)=val(NthField(temp,",",i))
		      end
		    next
		    if one_file.I_bit_filter=0 and one_file.NBIT2>0 Then
		      temp=trim(ts.ReadLine)
		      k=1
		      for i=one_file.NBIT1+1 to (one_file.NBIT1+one_file.NBIT2)
		        if i-1>=0 and i-1<=UBound(one_file.LATBit) Then
		          one_file.LATBit(i-1)=val(NthField(temp,",",k))
		        end
		        k=k+1
		      next
		    end
		  end
		  
		  
		  // Readin 
		  temp=ts.ReadLine
		  one_file.NCASE=val(NthField(temp,",",1))
		  one_file.IWATCH=val(NthField(temp,",",2))
		  one_file.TIMMAX=val(NthField(temp,",",3))
		  one_file.INSEED1=val(NthField(temp,",",4))
		  one_file.INSEED2=val(NthField(temp,",",5))
		  one_file.BEAM_SIZE=val(NthField(temp,",",6))
		  one_file.ISMOOTH=val(NthField(temp,",",7))
		  one_file.IRESTART=val(NthField(temp,",",8))
		  one_file.IDAT=val(NthField(temp,",",9))
		  one_file.IREJECT=val(NthField(temp,",",10))
		  one_file.ESAVE_GLOBAL=val(NthField(temp,",",11))
		  one_file.NRCYCL=val(NthField(temp,",",12))
		  one_file.IPARALLEL=val(NthField(temp,",",13))
		  one_file.PARNUM=val(NthField(temp,",",14))
		  one_file.n_split=val(NthField(temp,",",15))
		  one_file.ihowfarless=val(NthField(temp,",",16))
		  
		  // Readin EGSnrc values
		  temp=ts.ReadAll
		  ts.Close
		  
		  
		  line=Split(Temp,EndOfLine.UNIX)
		  one_file.EGSnrc.Read_EGSnrc_Inputs(line)
		  
		  
		  if prerun=False Then //Update input file to default user settings
		    one_file.isource=gDOSXYZ.dosxyz_defaultsource
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_DOSXYZ()
		  //---------------------------------------
		  //
		  //
		  //---------------------------------------
		  Dim f,g as FolderItem
		  Dim temp as String
		  Dim k,i as Integer
		  Dim ts as TextOutputStream
		  '==========Write DOSXYZ settings======
		  
		  Calculate_Complete
		  
		  f=gRTOG.Plan(plan_index).Path
		  if f=nil Then
		    Return
		  end
		  
		  g=f.Child("DOSXYZ_"+egsphantsettings.name+".txt")
		  
		  if g=nil Then
		    Return
		  end
		  
		  if g.Exists Then
		    g.Delete
		  end
		  
		  g=f.Child("DOSXYZ_"+egsphantsettings.name+".txt")
		  ts=g.CreateTextFile
		  
		  i=0
		  While ts=nil
		    ts=g.CreateTextFile
		    i=i+1
		    if i>20 Then
		      exit While
		    end
		  wend
		  
		  
		  if ts=nil Then
		    Return
		    MsgBox "Could not create file : "+g.Name
		  end
		  
		  
		  for i=0 to UBound(gRTOG.Plan(Plan_Index).Beam)
		    
		    Spaces(ts,"Beam "+Str(i+1)+" Dose to Water",30,str(DOSXYZ_Input(i).dose_to_water))
		    Spaces(ts,"Beam "+Str(i+1)+" Dose",30,Format(DOSXYZ_Input(i).dos_dose,"-#.#######e"))
		    Spaces(ts,"Beam "+Str(i+1)+" Progress",30,str(DOSXYZ_Input(i).dos_progress))
		    Spaces(ts,"Beam "+Str(i+1)+" Queue",30,DOSXYZ_Input(i).dos_queue)
		    Spaces(ts,"Beam "+Str(i+1)+" Number of Histories",30,str(DOSXYZ_Input(i).dos_num_histories))
		    Spaces(ts,"Beam "+Str(i+1)+" Number of Jobs",30,str(DOSXYZ_Input(i).dos_jobs))
		    Spaces(ts,"Beam "+Str(i+1)+" CPU time per History",30,str(DOSXYZ_Input(i).dos_CPU_time))
		    if DOSXYZ_Input(i).run_started Then
		      temp="True"
		    else
		      Temp="Fale"
		    end
		    Spaces(ts,"Beam "+Str(i+1)+" DOSXYZnrc run started ",30,temp)
		    Spaces(ts,"Beam "+Str(i+1)+" Desired % error ",30,Format(DOSXYZ_Input(i).dos_desired_average_error,"-##.##"))
		    Spaces(ts,"Beam "+Str(i+1)+" Number of test histories ",30,Format(DOSXYZ_Input(i).dos_test_histories,"#"))
		    Spaces(ts,"Beam "+Str(i+1)+" % error of test histories ",30,Format(DOSXYZ_Input(i).dos_error_math_error,"-##.##"))
		    if DOSXYZ_Input(i).dos_Non_CT Then
		      temp="True"
		    else
		      Temp="Fale"
		    end
		    Spaces(ts,"Beam "+Str(i+1)+" Non CT Phantom",30,temp)
		    Spaces(ts,"Beam "+Str(i+1)+" Pegs file",30,DOSXYZ_Input(i).dos_pegs_file )
		    Spaces(ts,"Beam "+Str(i+1)+" Number Active Jobs",30,Format(DOSXYZ_Input(i).dos_num_active_jobs,"#" ))
		    Spaces(ts,"Beam "+Str(i+1)+" Submit time",30,DOSXYZ_Input(i).dos_start_Date)
		    
		    if DOSXYZ_Input(i).dos_3ddose_downloaded Then
		      temp="True"
		    else
		      Temp="Fale"
		    end
		    Spaces(ts,"Beam "+Str(i+1)+" 3ddose-downloaded",30,temp)
		    
		    if DOSXYZ_Input(i).dos_3ddose_detected Then
		      temp="True"
		    else
		      Temp="Fale"
		    end
		    Spaces(ts,"Beam "+Str(i+1)+" 3ddose-found",30,temp)
		    
		    Spaces(ts,"Beam "+Str(i+1)+" Finish time",30,DOSXYZ_Input(i).dos_3ddose_finish_Time)
		    
		    Spaces(ts,"Beam "+Str(i+1)+" Shell Index",30,Format(DOSXYZ_Input(i).dos_Shell_Index,"#" ))
		    
		    
		    if DOSXYZ_Input(i).dos_calculate Then
		      temp="True"
		    else
		      Temp="Fale"
		    end
		    Spaces(ts,"Beam "+Str(i+1)+" CalculateDose",30,temp)
		    
		    Spaces(ts,"Beam "+Str(i+1)+" %error average",30,Format(DOSXYZ_Input(i).dos_average_error,"-##.###"))
		    Spaces(ts,"Beam "+Str(i+1)+" Num hist for %error test",30,Format(DOSXYZ_Input(i).dos_error_math_hist,"-##.###"))
		    Spaces(ts,"Beam "+Str(i+1)+" TotalTime",30,Format(DOSXYZ_Input(i).TotalTime,"-##.###"))
		    
		    if DOSXYZ_Input(i).dos_simulation_error Then
		      temp="True"
		    else
		      Temp="Fale"
		    end
		    Spaces(ts,"Beam "+Str(i+1)+" SimError",30,temp)
		  next
		  ts.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_DOSXYZ_Input(beam as Integer)
		  //-------------------------------------------
		  // Write the dosxyz input file
		  //
		  //
		  //-------------------------------------------
		  Dim f as FolderItem
		  Dim wts as TextOutputStream
		  Dim file,name as string
		  Dim egsinp as Class_DOSXYZ_input
		  Dim k,i as Integer
		  //-------------------------------------------
		  
		  name=str(beam+1)
		  While Len(name)<3
		    name="0"+name
		  Wend
		  
		  name=MC_file_name+name+"_"+EGSPhantSettings.name +".egsinp"
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child(name)
		  if f.Exists Then
		    f.Delete
		  end
		  egsinp=DOSXYZ_Input(beam)
		  file=egsinp.TITLE+EndOfLine.UNIX
		  
		  gdosxyz.egs_msg.append "Writing input file : "+name //Commented out by William Davis to avoid crash due to exception
		  
		  if egsinp.NMED=0 Then
		    // For CT Phantom
		    file=file+ Str(egsinp.NMED)+EndOfLine.UNIX
		    file=file + egsinp.egsphant_path+EndOfLine.UNIX
		    
		  else
		    file=file+Str(egsinp.NMED)+EndOfLine.UNIX
		    // Define all mediums of PDD type phantoms non CT Phantom
		    for k=0 to egsinp.NMED-1
		      file=file +egsinp.NMedium(k)+EndOfLine.UNIX
		    next
		  end
		  
		  
		  File=file+Format(egsinp.ECUTIN,"#.###")+", "+ Format(egsinp.PCUT,"#.###")+", "+Format(egsinp.ESTEPM,"#.###")+EndOfLine.UNIX
		  
		  if egsinp.dos_Non_CT=False Then
		    file=file+Format(egsinp.zeroairdose,"#")+", "+Format(egsinp.doseprint,"#")+", "+Format(egsinp.Max20,"#")+", "+EndOfLine.UNIX
		  elseif egsinp.dos_Non_CT Then
		    //-------------------------------------------
		    //Define egsphant file for a non CT phantom
		    //-------------------------------------------
		    file=file+Format(egsinp.IMAX,"-#")+", "+Format(egsinp.JMAX,"-#")+", "+Format(egsinp.KMAX,"-#")+", "+Format(egsinp.IPHANT,"#")+EndOfLine.UNIX
		    //Write the i voxels
		    if egsinp.IMAX<0 Then
		      file=file+Format(egsinp.iMAX_Group_Min,"-#.###")+EndOfLine.UNIX
		      for i=0 to abs(egsinp.iMAX)-1
		        file=file+Format(egsinp.iMAX_Group(i),"-#.###")+", "+str(egsinp.iMAX_Group_Num(i))+EndOfLine.UNIX
		      next
		    else
		      for i=0 to egsinp.IMAX
		        file=file+Format(egsinp.IMAX_Bound(i),"-#.###")+EndOfLine.UNIX
		      next
		    end
		    
		    
		    //Write the j voxels
		    if egsinp.JMAX<0 Then
		      file=file+Format(egsinp.jMAX_Group_Min,"-#.###")+EndOfLine.UNIX
		      for i=0 to abs(egsinp.jMAX)-1
		        file=file+Format(egsinp.jMAX_Group(i),"-#.###")+", "+str(egsinp.jMAX_Group_Num(i))+EndOfLine.UNIX
		      next
		    else
		      for i=0 to egsinp.JMAX
		        file=file+Format(egsinp.jMAX_Bound(i),"-#.###")+EndOfLine.UNIX
		      next
		    end
		    
		    //Write the k voxels
		    if egsinp.KMAX<0 Then
		      file=file+Format(egsinp.KMAX_Group_Min,"-#.###")+EndOfLine.UNIX
		      for i=0 to abs(egsinp.KMAX)-1
		        file=file+Format(egsinp.KMAX_Group(i),"-#.###")+", "+str(egsinp.KMAX_Group_Num(i))+EndOfLine.UNIX
		      next
		    else
		      for i=0 to egsinp.kMAX
		        file=file+Format(egsinp.kMAX_Bound(i),"-#.###")+EndOfLine.UNIX
		      next
		    end
		    //-------------------------------------------
		    //END Define egsphant file
		    //-------------------------------------------
		    
		    
		    
		    //Define voxel materials and densities output profile
		    file=file+"1, "+Format(egsinp.IU,"#")+", 1, "+Format(egsinp.JU,"#")+ _
		    ", 1, "+Format(egsinp.KU,"#")+", "+Format(egsinp.MEDIUM,"#")+", "+Format(egsinp.DENSITY,"#.###")+ _
		    EndOfLine.UNIX
		    
		    // 2 blank lines
		    file=file+"0, 0, 0, 0, 0, 0, 0, 0"+EndOfLine.UNIX
		    file=file+"0, 0, 0, 0, 0, 0, 0, 0"+EndOfLine.UNIX
		    
		    //Define dose output profile
		    file=file+Format(egsinp.IZSCAN_X1,"#")+", "+Format(egsinp.IZSCAN_X2,"#")+", "+Format(egsinp.IZSCAN_y1,"#")+ _
		    ", "+Format(egsinp.IZSCAN_y2,"#")+", "+Format(egsinp.IZSCAN_z1,"#")+", "+Format(egsinp.IZSCAN_z2,"#")+ _
		    ", "+Format(egsinp.IZSCAN,"#")+", "+Format(egsinp.Max20,"#")+EndOfLine.UNIX
		    file=file+"0, 0, 0, 0, 0, 0, 0, 0"+EndOfLine.UNIX
		    
		  end
		  
		  
		  // If we are using a Lib source or a phsp source or multi source
		  if DOSXYZ_Input(beam).isource=1 Then// Parallel Rectangular Beam Incident from Any Direction
		    file=file+Format(egsinp.IQIN,"-#")+", 1, "+Format(egsinp.xiso,"-#.##")+", "+Format(egsinp.yiso,"-#.##")+", "+Format(egsinp.ziso,"-#.##")+_
		    ", "+Format(egsinp.theta(0),"-#.##")+", "+Format(egsinp.phi(0),"-#.##")+", "+Format(egsinp.xcol,"-#.###")+", "+Format(egsinp.ycol,"-#.###")+", "+ Format(egsinp.phicol(0),"-#.##")+EndOfLine.UNIX
		    
		    
		  elseif DOSXYZ_Input(beam).isource=2 Then// we are using a phase space file
		    file=file+Format(egsinp.IQIN,"-#")+", 2, "+Format(egsinp.xiso,"-#.##")+", "+Format(egsinp.yiso,"-#.##")+", "+Format(egsinp.ziso,"-#.##")+_
		    ", "+Format(egsinp.theta(0),"-#.##")+", "+Format(egsinp.phi(0),"-#.##")+", "+Format(egsinp.dsource,"-#")+", "+ Format(egsinp.phicol(0),"-#.##")+_
		    ", "+ Format(egsinp.i_dbs,"#")+", "+ Format(egsinp.r_dbs,"#.##")+", "+ Format(egsinp.ssd_dbs,"#.##")+", "+ Format(egsinp.z_dbs,"#.##")+_
		    ", "+ Format(egsinp.e_split,"#")+EndOfLine.UNIX
		    
		    
		  elseif DOSXYZ_Input(beam).isource=3 Then// we are using a point source
		    file=file+Format(egsinp.IQIN,"-#")+", 3, "+Format(egsinp.xinl,"-#.##")+", "+Format(egsinp.xinu,"-#.##")+", "+Format(egsinp.yinl,"-#.##")+", "+Format(egsinp.yinu,"-#.##")_
		    +", "+Format(egsinp.ssd,"-#.##")+EndOfLine.UNIX
		    
		    
		    
		  elseif DOSXYZ_Input(beam).isource=8 Then// we are using a phase space file from multi directions
		    file=file+Format(egsinp.IQIN,"-#")+", 8, "+Format(egsinp.xiso,"-#.##")+", "+Format(egsinp.yiso,"-#.##")+", "+Format(egsinp.ziso,"-#.##")+_
		    ", "+Format(egsinp.nang,"-#")+", "+Format(egsinp.dsource,"-#")+", "+ Format(egsinp.phicol(0),"-#.##")+_
		    ", "+ Format(egsinp.i_dbs,"#")+", "+ Format(egsinp.r_dbs,"#.##")+", "+ Format(egsinp.ssd_dbs,"#.##")+", "+ Format(egsinp.z_dbs,"#.##")+_
		    ", "+ Format(egsinp.e_split,"#")+EndOfLine.UNIX
		    
		    
		    // nang The number of incident theta-phi pairs or, if negative, then abs(nang) is the number
		    // of groups of incident theta-phi pairs, where, within a group, all theta-phi pairs have
		    // equal probability
		    
		    // theta-phi pairs!
		    if DOSXYZ_Input(beam).nang>0 Then
		      for i=0 to UBound(DOSXYZ_Input(beam).theta)
		        file=file+Format(DOSXYZ_Input(beam).theta(i),"-#.##")+_
		        ", "+Format(DOSXYZ_Input(beam).phi(i),"-#.##")+_
		        ", "+Format(DOSXYZ_Input(beam).pang(i),"#.##")+EndOfLine.UNIX
		      Next
		      
		      // theta-phi groups
		    elseif DOSXYZ_Input(beam).nang<0 Then
		      file=file+Format(DOSXYZ_Input(beam).ivary(i),"#")+_
		      ", "+Format(DOSXYZ_Input(beam).angfixed(i),"-#.##")+_
		      ", "+Format(DOSXYZ_Input(beam).angmin(i),"-#.##")+_
		      ", "+Format(DOSXYZ_Input(beam).angmax(i),"-#.##")+_
		      ", "+Format(DOSXYZ_Input(beam).ngang(i),"#")+_
		      ", "+Format(DOSXYZ_Input(beam).pgang(i),"#.##")+EndOfLine.UNIX
		    end
		    
		  elseif DOSXYZ_Input(beam).isource=9  Then //BEAM Treatment Head Simulation Incident from Any Direction
		    // We are using a Lib source
		    file=file+Format(egsinp.IQIN,"-#")+", 9, "+Format(egsinp.xiso,"-#.##")+", "+Format(egsinp.yiso,"-#.##")+", "+Format(egsinp.ziso,"-#.##")+","+Format(egsinp.theta(0),"-#.##")_
		    +", "+Format(egsinp.phi(0),"-#.##")+", "+Format(egsinp.dsource,"-#")+", "+ Format(egsinp.phicol(0),"-#.##")+", "+ Format(egsinp.i_dbs,"#")+", "+ Format(egsinp.e_split,"#")+EndOfLine.UNIX
		    
		    
		    
		  elseif DOSXYZ_Input(beam).isource=11  Then // We are using a Tomo lib source
		    file=file+Format(egsinp.IQIN,"-#")+", 11, "+Format(egsinp.xiso,"-#.##")+", "+Format(egsinp.yiso,"-#.##")+", "+Format(egsinp.ziso,"-#.##")+", "+Format(egsinp.tomo_phi,"-#.##")_
		    +", "+Format(egsinp.dsource,"-#.##")+", "+Format(egsinp.tomo_phicol,"-#.##")+", "+ Format(egsinp.i_dbs,"-#")+", "+ Format(egsinp.e_split,"#")+", "+ Format(egsinp.tomo_ipp,"#.##")+", "+ Format(egsinp.tomo_pitch,"-#.##")+", "+Format(egsinp.tomo_field_width,"-#.##")+EndOfLine.UNIX
		    
		    file=file+egsinp.path11+EndOfLine.UNIX
		    
		  elseif DOSXYZ_Input(beam).isource=20  Then // : Synchronized phase space source
		    
		    file=file+Format(egsinp.IQIN,"-#")+", "+Format(DOSXYZ_Input(beam).isource,"#")+",  "+ Format(egsinp.nset,"-#")+", "+Format(DOSXYZ_Input(beam).i_dbs,"#")+ ", "+Format(egsinp.r_dbs,"#")+", "+Format(egsinp.ssd_dbs,"#")+", "+ Format(egsinp.z_dbs,"#")+", "+ Format(egsinp.e_split,"#")+", "+ Format(egsinp.i_muidx_out,"#.#####")+EndOfLine.UNIX
		    
		    
		    for i=0 to (egsinp.nset-1)
		      file=file+Format(egsinp.isox(i),"-#.########")+", "+Format(egsinp.isoy(i),"-#.########")+", "+Format(egsinp.isoz(i),"-#.########")+", "+Format(egsinp.theta(i),"-#.########")+", "+Format(egsinp.phi(i),"-#.########")+", "+Format(egsinp.phicol(i),"-#.########")+", "+Format(egsinp.dsources(i),"-#.########")+", "+Format(egsinp.muIndex(i),"-#.########")+", "+EndOfLine.UNIX
		    Next
		    
		    
		  elseif DOSXYZ_Input(beam).isource=21  Then // Synchronized BEAM treatment head simulation
		    file=file+Format(egsinp.IQIN,"-#")+",  "+Format(DOSXYZ_Input(beam).isource,"#")+ ", "+Format(egsinp.nset,"#")+", "+Format(egsinp.i_dbs,"#")+", "+ Format(egsinp.e_split,"#")+EndOfLine.UNIX
		    
		    
		    for i=0 to (egsinp.nset-1)
		      file=file+Format(egsinp.isox(i),"-#.########")+", "+Format(egsinp.isoy(i),"-#.########")+", "+Format(egsinp.isoz(i),"-#.########")+", "+Format(egsinp.theta(i),"-#.########")+", "+Format(egsinp.phi(i),"-#.########")+", "+Format(egsinp.phicol(i),"-#.########")+", "+Format(egsinp.dsources(i),"-#.########")+", "+Format(egsinp.muIndex(i),"-#.########")+", "+EndOfLine.UNIX
		    Next
		    
		    
		  end '//======END of Source Options==================
		  
		  
		  file=file+Format(egsinp.enflag,"#")+", "+Format(egsinp.mode,"#")+", "+Format(egsinp.medsur,"#")+_
		  ", "+Format(egsinp.dsurround1,"#")+", "+Format(egsinp.dflag,"#")+", "+Format(egsinp.dsurround2,"#")+_
		  ", "+Format(egsinp.dsurround3,"#")+", "+Format(egsinp.dsurround4,"#")+EndOfLine.UNIX
		  
		  
		  // if enflag = 1, 2, 3, or 4, each with different inputs)
		  if egsinp.enflag=0 Then
		    File=file+Format(egsinp.ein,"-#.###")+EndOfLine.UNIX
		    
		  ElseIf egsinp.enflag=1 Then
		    File=file+egsinp.FILNAM+EndOfLine.UNIX
		    
		  elseif (egsinp.enflag=2 or egsinp.enflag=3) and (egsinp.isource=2 or egsinp.isource=8 ) Then //phsp source
		    // Name of file conatining phase space data
		    File=file+egsinp.FILNAM+EndOfLine.UNIX
		    
		  elseif (egsinp.enflag=2 or egsinp.enflag=3) and (egsinp.isource=21 or egsinp.isource=20 or egsinp.isource=9 or egsinp.isource=11 ) Then // Shared lib source
		    
		    if (egsinp.isource=21) Then
		      if Len(egsinp.the_vcu_code)<2 Then
		        egsinp.the_vcu_code="0"
		        egsinp.the_vcu_input_file="0"
		      end
		      File=file+egsinp.the_beam_code+", "+egsinp.the_input_file+", "+egsinp.the_pegs_file+", "+egsinp.the_vcu_code+", "+egsinp.the_vcu_input_file+ EndOfLine.UNIX
		    elseif egsinp.isource=20 Then
		      File=file+egsinp.the_shared_lib +", "+egsinp.FILNAM+", "+egsinp.the_input_file+EndOfLine.UNIX
		    else
		      
		      File=file+egsinp.the_beam_code+", "+egsinp.the_input_file+", "+egsinp.the_pegs_file+EndOfLine.UNIX
		    end
		  end
		  
		  // Record SC3c Latch Bit filter
		  if egsinp.enflag=3 Then
		    file=file+Format(egsinp.I_bit_filter,"#")+", "+Format(egsinp.NBIT1,"#")+", "+Format(egsinp.NBIT2,"#")+EndOfLine.UNIX
		    for i=1 to egsinp.NBIT1
		      if i-1>0 and i-1<=UBound(egsinp.LATBit) Then
		        file=file+Format(egsinp.LATBit(i-1),"#")+", "
		      end
		    next 
		    file=file+EndOfLine.UNIX
		    if egsinp.I_bit_filter=0 and egsinp.NBIT2>0 Then
		      for i=egsinp.NBIT1+1 to egsinp.NBIT1+egsinp.NBIT2
		        if i-1>0 and i-1<=UBound(egsinp.LATBit) Then
		          file=file+Format(egsinp.LATBit(i-1),"#")+", "
		        end
		      next
		      file=file+EndOfLine.UNIX
		    end
		  end
		  
		  
		  // Record 13
		  file=file+Format(DOSXYZ_Input(beam).dos_num_histories,"#")_
		  +", "+Format(egsinp.IWATCH,"#")+", "+Format(egsinp.TIMMAX,"#.##")_
		  +", "+Format(egsinp.INSEED1,"#")+", "+Format(egsinp.INSEED2,"#")_
		  +", "+Format(egsinp.BEAM_SIZE,"#")+", "+Format(egsinp.ISMOOTH,"#")_
		  +", "+Format(egsinp.IRESTART,"#")+", "+Format(egsinp.IDAT,"#")_
		  +", "+Format(egsinp.IREJECT,"#")+", "+Format(egsinp.ESAVE_GLOBAL,"#.##")_
		  +", "+Format(egsinp.NRCYCL,"#")+", "+Format(egsinp.IPARALLEL,"#")_
		  +", "+Format(egsinp.PARNUM,"#")+", "+Format(egsinp.n_split,"#")_
		  +", "+Format(egsinp.ihowfarless,"#")+EndOfLine.UNIX
		  
		  //-------------------------------
		  // Add egsnrc input values
		  //-------------------------------
		  File=file+egsinp.EGSnrc.Write_EGSnrc_Inputs
		  
		  // Write File
		  wts=f.CreateTextFile
		  wts.Write file
		  wts.Close
		  gdosxyz.egs_msg.append name+" created" //Commented out by William Davis to avoid crash due to exception
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_DOSXYZ_Input_Arc(beam as Integer)
		  //-------------------------------------------
		  // Write the dosxyz input file for isource 11
		  //
		  // Update, March 2011
		  // Write the file to TextOutputStream as apposed to strings 1st and then text stream
		  //
		  //-------------------------------------------
		  Dim f as FolderItem
		  Dim wts as TextOutputStream
		  Dim file,name as string
		  Dim egsinp as Class_DOSXYZ_input
		  Dim k,i as Integer
		  //-------------------------------------------
		  
		  name=str(beam+1)
		  While Len(name)<3
		    name="0"+name
		  Wend
		  
		  egsinp=DOSXYZ_Input(beam)
		  
		  
		  name=MC_file_name+name+"_"+EGSPhantSettings.name +"_Arc.egsinp"
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child(name)
		  if f.Exists Then
		    f.Delete
		  end
		  
		  
		  gdosxyz.egs_msg.append "Writing input file : "+name //Commented out by William Davis to avoid crash due to exception
		  
		  // Write File
		  wts=f.CreateTextFile
		  if wts<> Nil Then
		    file=Format((UBound(egsinp.DYNARC)+1),"#")+EndOfLine.UNIX
		    wts.Write file
		    for i=0 to UBound(egsinp.DYNARC)
		      file=Format(egsinp.theta(i),"-#.########")+", "+Format(egsinp.isox(i),"-#.########")+", "+Format(egsinp.isoy(i),"-#.########")+", "+Format(egsinp.isoz(i),"-#.########")+", "+Format(egsinp.phi(i),"-#.########")+", "+Format(egsinp.phicol(i),"-#.########")+EndOfLine.UNIX
		      wts.Write file
		    Next
		    wts.Close
		    gdosxyz.egs_msg.append name+" created" //Commented out by William Davis to avoid crash due to exception
		    
		  else
		    Errors.append "Error ! could not write input file : "+name //Changed to Errors.append by William Davis to avoid crash due to exception
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_EGSPhant_Settings()
		  //------------------------------------------
		  // Writefile and the MMCTP header file
		  //
		  //---------------------------------------
		  Dim f, headerfile as FolderItem
		  Dim ts as TextOutputStream
		  Dim i as Integer
		  Dim s,check as String
		  //------------------------------------------
		  
		  
		  f=new FolderItem
		  f=gRTOG.Path.Child("McGill_RT")
		  
		  s=""
		  for i =0 to UBound(EGSPhantSettings.Shells)
		    s=s+EGSPhantSettings.Shells(i)+","
		  next
		  
		  headerfile=f.child(gRTOG.Patient_ID+"_"+gRTOG.StudyID+gRTOG.SeriesNumber+"_"+EGSPhantSettings.name+".egsphanthed")
		  if headerfile<>nil then
		    ts=headerfile.createTextFile
		    Spaces(ts,"Shell",20,s)
		    if EGSPhantSettings.Non_CT_Phantom Then
		      Spaces(ts,"Non CT Phantom",20,"True")
		    else
		      Spaces(ts,"Non CT Phantom",20,"Fale")
		    end
		    Spaces(ts,"PEGS file",20,EGSPhantSettings.Pegsfile)
		    Spaces(ts,"CT Model",20,EGSPhantSettings.CT_modelName)
		    
		    
		    for i=0 to UBound(EGSPhantSettings.Contous)
		      if EGSPhantSettings.Contous(i).Use_Material then
		        check="Yes"
		      else
		        Check="No"
		      end
		      Spaces(ts,"Use Contour "+gRTOG.Structures(EGSPhantSettings.Contous(i).RTOG_Contour_Index).Structure_Name,20,check)
		    next
		    Spaces(ts,"X-Max",20,Format(EGSPhantSettings.X_Max,"-#.###"))
		    Spaces(ts,"X-Min",20,Format(EGSPhantSettings.X_min,"-#.###"))
		    Spaces(ts,"X-del",20,Format(EGSPhantSettings.Del_X,"-#.###"))
		    Spaces(ts,"Y-Max",20,Format(EGSPhantSettings.y_Max,"-#.###"))
		    Spaces(ts,"Y-Min",20,Format(EGSPhantSettings.Y_min,"-#.###"))
		    Spaces(ts,"Y-del",20,Format(EGSPhantSettings.Del_Y,"-#.###"))
		    Spaces(ts,"Z-Max",20,Format(EGSPhantSettings.z_Max,"-#.###"))
		    Spaces(ts,"Z-Min",20,Format(EGSPhantSettings.Z_min,"-#.###"))
		    Spaces(ts,"Z-Del",20,Format(EGSPhantSettings.Del_Z,"-#.###"))
		    ts.Close
		  end
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Complete As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		DOSXYZ_Input(-1) As Class_DOSXYZ_Input
	#tag EndProperty

	#tag Property, Flags = &h0
		EGSPhantSettings As Class_DOSXYZ_EGSPhantSettings
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Complete"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
