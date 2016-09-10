#tag Class
Protected Class Thread_VMC
Inherits Thread
	#tag Event
		Sub Run()
		  //=====================
		  //This controls all VMC thread tasks
		  //======================
		  Dim k,i as Integer
		  Dim good as Boolean
		  
		  While vmc_adddose or vmc_DMX_make or vmc_status or vmc_run
		    
		    
		    if vmc_run Then
		      
		    elseif vmc_adddose Then
		      vmc_adddose=False
		      vmc_add_dose
		      
		    elseif vmc_DMX_make then
		      vmc_Make_DMX
		      vmc_DMX_make=False
		      
		    elseif vmc_status then
		      for k=0 to UBound(gVMC.vmc)
		        for i=0 to UBound(gRTOG.Plan(plan_index).Beam)
		          if vmc_Get_Shell_Enviro(k,i) Then
		            vmc_Refresh_d3d(k,i)
		          end
		        next
		      next
		      vmc_status=False
		      gTimer_Refresh.Period=1000
		      gTimer_Refresh.Reset
		    end
		    
		  Wend
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Read_Defaults()
		  //------------------------------------
		  //
		  //
		  //------------------------------------
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  Dim ss,oneline as String
		  Dim i as Integer
		  //------------------------------------
		  
		  
		  f=gPref.VMC_fi
		  f=f.Child("VMC-Settings.txt")
		  
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
		        auto_run=True
		      else
		        auto_run=False
		      end
		      
		      
		    Elseif InStr(oneline,"Auto Refresh")> 0 Then
		      if InStr(oneline,"yes")> 0 Then
		        auto_refresh=True
		      else
		        auto_refresh=False
		      end
		      
		    Elseif InStr(oneline,"Auto Dose")> 0 Then
		      if InStr(oneline,"yes")> 0 Then
		        auto_importD=True
		      else
		        auto_importD=False
		      end
		      
		    Elseif InStr(oneline,"DosetoWater")> 0 Then
		      vmc_dose_water=val(NthField(oneline,":=",2))
		    Elseif InStr(oneline,"ChrLimit")> 0 Then
		      vmc_chrLimit=val(NthField(oneline,":=",2))
		      
		    Elseif InStr(oneline,"DMXRes")> 0 Then
		      ss=(NthField(oneline,":=",2))
		      
		      vmc_Res_X=val(NthField(ss,",",1))
		      vmc_Res_y=val(NthField(ss,",",2))
		      vmc_Res_z=val(NthField(ss,",",3))
		      
		    Elseif InStr(oneline,"DMXName")> 0 Then
		      DMX_Name=Trim(NthField(oneline,":=",2))
		      
		    Elseif InStr(oneline,"VMC-Deveice-Type")> 0 Then
		      Default_Device_Type=Val(NthField(oneline,":=",2))
		      
		    Elseif InStr(oneline,"VMC-Hist")> 0 Then
		      vmc_numb_hist=Val(NthField(oneline,":=",2))
		      
		    end
		  Wend
		  ts.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub vmc_Add_Dose()
		  //------------------------------------------------------
		  // This method will import d3d files,
		  // normalize them and generate a .Dose file
		  //
		  //
		  //=======================================
		  Dim k,j,i,yy,q,dmx_index,first_dose,dmxs(-1),beams(-1) as Integer
		  Dim scale_height,scale_width,dx,dy,dz,dmax,normalize as double
		  Dim f as FolderItem
		  Dim memblock as MemoryBlock
		  Dim bs as BinaryStream
		  Dim Dose as RTOG_Dose_Distribution
		  Dim data as RTOG_Dose_Plane
		  Dim path,temp as string
		  Dim ts as TextInputStream
		  Dim nan_test,kk(-1),Oneline,name as String
		  Dim point_v as Single
		  //=======================================
		  
		  
		  While UBound(AddDoseList)>-1 
		    
		    Oneline=AddDoseList(0)
		    AddDoseList.Remove 0
		    
		    'Find which d3d dose to add
		    dmx_index=-1
		    ReDim dmxs(-1)
		    ReDim beams(-1)
		    
		    
		    for k=1 to CountFields(Oneline,Chr(10))-1
		      name=NthField(Oneline,Chr(10),k)
		      dmxs.Append val(NthField(name,",",1))
		      beams.Append  val(NthField(name,",",2))
		    Next
		    
		    if UBound(dmxs)<0 Then
		      Return
		    end
		    
		    dmx_index=dmxs(0)
		    first_dose=beams(0)
		    Window_Treatment.dose_index=-1
		    
		    
		    
		    
		    //Window_Treatment.StaticText_VMC_Status.Text="VMC to McGill RT Dose" //Commented out by William Davis to avoid crash due to exception
		    //Window_Treatment.StaticText_VMC_Status.Text="Reading header file : "+vmc(dmx_index).DMX.dmx_name+".hed" //Commented out by William Davis to avoid crash due to exception
		    
		    f=gRTOG.Plan(Plan_Index).Path
		    f=f.Child(MC_file_name+str(first_dose+1)+"00_"+vmc(dmx_index).DMX.dmx_name+".hed")
		    if f<>nil then
		      if f.Exists then
		        ts=f.OpenAsTextFile
		        temp=ts.ReadAll
		        temp=NthField(temp,chr(10),2)
		        temp=Trim(NthField(temp,"|",2))
		        kk=Split(temp," ")
		        for k=UBound(kk) DownTo 0 
		          if kk(k)="" Then
		            kk.Remove k
		          end
		        next
		        if UBound(kk)<>2 Then
		          //Window_Treatment.StaticText_VMC_Status.Text = "Could not read line 2 of file : "+f.Name //Commented out by William Davis to avoid crash due to exception
		          Return
		        end
		        VMC(dmx_index).DMX.x_num=val(kk(0))
		        VMC(dmx_index).DMX.y_num=val(kk(2))
		        VMC(dmx_index).DMX.z_num=val(kk(1))
		      else
		        //Window_Treatment.StaticText_VMC_Status.Text ="Could not find file : "+f.Name //Commented out by William Davis to avoid crash due to exception
		        Return
		      end
		    else
		      //Window_Treatment.StaticText_VMC_Status.Text= "Could not find file : "+f.Name //Commented out by William Davis to avoid crash due to exception
		      Return
		    end
		    
		    
		    Dose = new RTOG_Dose_Distribution
		    data=new RTOG_Dose_Plane
		    dose.SOP_Instance_UID=gDICOM.UID_Make
		    
		    
		    
		    dx=VMC(dmx_index).DMX.del_x
		    dy=VMC(dmx_index).DMX.del_y
		    dz=VMC(dmx_index).DMX.del_z
		    
		    // Find a name for this dose distribution
		    temp="VMC-"+vmc(dmx_index).DMX.dmx_name+"-Beam-"+str(first_dose+1)
		    
		    f = new FolderItem
		    f=gRTOG.Plan(Plan_Index).Path
		    '1st step to name new  dose
		    f=f.Child(temp+".Dose")
		    if f<>nil then
		      j=0
		      While f.Exists
		        f=f.Parent
		        j=j+1
		        f=f.Child(temp+"-"+str(j)+".Dose")
		      wend
		    end
		    
		    
		    Dose.Dose_name=NthField(f.Name,".Dose",1)
		    Dose.engine="VMC"
		    Dose.Size_of_Dimension1=VMC(dmx_index).DMX.x_num
		    Dose.Size_of_Dimension2=VMC(dmx_index).DMX.y_num
		    Dose.Size_of_Dimension3=VMC(dmx_index).DMX.z_num
		    Dose.Horizontal_Grid=dx
		    Dose.Vertical_Grid=dy
		    Dose.Depth_Grid=dz
		    Dose.Coord_1_1st_point=VMC(dmx_index).DMX.x_min+dx/2
		    dose.Coord_2_1st_point=VMC(dmx_index).DMX.y_min+dy/2
		    dose.Coord_3_1st_point= VMC(dmx_index).DMX.z_min+dz/2
		    dose.dmax=-1000
		    dose.Dmin=1000
		    dose.Dose_Units="Gy"
		    memblock=new MemoryBlock(VMC(dmx_index).DMX.x_num*VMC(dmx_index).DMX.y_num*VMC(dmx_index).DMX.z_num*4)  //4 bytes floats 
		    //Above line changed to "new MemoryBlock" by William Davis when newmemoryBlock was found to have been deprecated
		    memblock.littleEndian=false
		    
		    for k=0 to VMC(dmx_index).DMX.z_num-1
		      data=new RTOG_Dose_Plane
		      data.Z=dose.Coord_3_1st_point+k*dose.Depth_Grid
		      redim data.Points(Dose.Size_of_Dimension1*Dose.Size_of_Dimension2-1)
		      dose.Dose_Distribution.Append data
		    next
		    
		    
		    
		    for yy=0 to UBound(beams)
		      q=beams(yy)
		      dmx_index=dmxs(yy)
		      f=gRTOG.Plan(Plan_Index).Path
		      f=f.Child(MC_file_name+str(q+1)+"00_"+vmc(dmx_index).dmx.dmx_name+".d3d")
		      if f.Exists=False Then
		        //Window_Treatment.StaticText_VMC_Status.Text ="Error, d3d file "+f.Name +" not found!" //Commented out by William Davis to avoid crash due to exception
		        Return
		      end
		      
		      normalize=gRTOG.Plan(Plan_Index).Beam(q).Number_of_Tx*gRTOG.Plan(Plan_Index).Beam(q).mu*_
		      gRTOG.Plan(Plan_Index).Beam(q).beam_weight*(vmc(dmx_index).beams(q).dose_to_water)/vmc(dmx_index).BEAMS(q).dose
		      if f<> nil then
		        bs=f.OpenAsBinaryFile
		        if bs=Nil then
		          Return
		        end
		        bs.littleEndian=true
		        memblock.stringValue(0,memblock.size)=bs.read(bs.Length)
		        for k=0 to  Dose.Size_of_Dimension3-1
		          //Window_Treatment.StaticText_VMC_Status.Text ="Reading d3d file : "+f.Name +chr(13)+"Slice Z : ("+str(k+1)+"/"+str( Dose.Size_of_Dimension3)+")" //Commented out by William Davis to avoid crash due to exception
		          for j=0 to Dose.Size_of_Dimension2-1
		            for i=0 to Dose.Size_of_Dimension1-1
		              yy=(i+k*Dose.Size_of_Dimension1+Dose.Size_of_Dimension1*Dose.Size_of_Dimension3*j)*4
		              point_v=memblock.singleValue(yy)
		              nan_test=str(point_v)
		              if InStr(nan_test,"nan")>0 Then
		                point_v=0
		              end
		              dose.Dose_Distribution(k).Points(i+j*Dose.Size_of_Dimension1) =point_v*normalize+dose.Dose_Distribution(k).Points(i+j*Dose.Size_of_Dimension1)
		              if dose.Dose_Distribution(k).Points(i+j*Dose.Size_of_Dimension1)>dose.dmax then
		                dose.dmax=dose.Dose_Distribution(k).Points(i+j*Dose.Size_of_Dimension1)
		              end
		              if dose.Dose_Distribution(k).Points(i+j*Dose.Size_of_Dimension1)<dose.Dmin then
		                dose.Dmin=dose.Dose_Distribution(k).Points(i+j*Dose.Size_of_Dimension1)
		              end
		            next
		          next
		        next
		      end
		      
		    next // Next beam
		    
		    gRTOG.Plan(Plan_Index).Dose.append dose
		    gRTOG.Plan(Plan_Index).Write_McGill_Dose(UBound(gRTOG.Plan(Plan_Index).Dose))
		    Window_Treatment.Window_update_plan_now=True
		    PW_Show=false
		    
		  Wend
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function vmc_CT_2_Dens(ctnum as integer) As Double
		  dim  h,h_prime as double
		  
		  h=ctnum
		  
		  if h < -991.0455 then
		    return(0.00125)
		  end
		  
		  h_prime=1.0+h/1000.0
		  
		  if (h_prime <= 0.895) then
		    return(-0.008 + 1.033*h_prime)
		  elseif (h_prime <= 1.1) then
		    return(0.108 + 0.904*h_prime)
		  elseif (h_prime <= 2.381) then
		    return(0.330 + 0.685*h_prime)
		  else
		    return(0.580 + 0.580*h_prime)
		  end
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub vmc_Delete_dmx(k as Integer)
		  //-----------------------------------------------------
		  // Delete One DMX file
		  //
		  //-----------------------------------------------------
		  Dim f as FolderItem
		  Dim i as Integer
		  //-----------------------------------------------------
		  
		  
		  if k>=0 and k<=UBound(VMC) Then
		    i=MsgBox("Are you sure you want to delete the DMX file "+chr(13)+VMC(k).DMX.dmx_name +"?",1,"Warning")
		    if i<>1 Then
		      Return
		    end
		    
		    f=gRTOG.Path.Child("McGill_RT")
		    f=f.Child(gRTOG.Patient_ID+gRTOG.StudyID+gRTOG.SeriesNumber+"_"+vmc(k).dmx.dmx_name+".dmx")
		    if f.Exists Then
		      f.Delete
		    end
		    
		    f=gRTOG.Path.Child("McGill_RT")
		    f=f.Child(gRTOG.Patient_ID+gRTOG.StudyID+gRTOG.SeriesNumber+"_"+vmc(k).dmx.dmx_name+".hed")
		    if f.Exists Then
		      f.Delete
		    end
		    
		    f=gRTOG.Path.Child("McGill_RT")
		    f=f.Child(gRTOG.Patient_ID+gRTOG.StudyID+gRTOG.SeriesNumber+"_"+vmc(k).dmx.dmx_name+".txt")
		    if f.Exists Then
		      f.Delete
		    end
		    
		    vmc.Remove k
		  end
		  
		  MC_Save_settings
		  Window_Treatment.MC_vmc_beam_progress
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function vmc_Determine_Shell(dmx_index as integer, beam as Integer) As boolean
		  //-------------------------------------------
		  // Used to set shell equal to BEAMnrc shell
		  //
		  //-------------------------------------------
		  dim i as integer
		  dim gg as Class_VMC_Inputfile
		  dim tt as Boolean
		  //-------------------------------------------
		  
		  
		  
		  gg=VMC(dmx_index).BEAMS(beam)
		  
		  if gg.DEVICETYPE=10 or gg.DEVICETYPE=110 Then
		    gg.Shell_Index=gBEAM.Beams(beam).egs_Shell_Index
		    Return True
		    
		  elseif gg.DEVICETYPE=11 or gg.DEVICETYPE=111 Then 
		    
		    gBEAM.Beams(beam).egs_Shell_Index=VMC(dmx_index).BEAMS(beam).Shell_Index
		    tt=gBEAM.egs_Get_Directory(beam)
		    if gBEAM.Beams(beam).egs_Shell_Index>-1 and gBEAM.Beams(beam).egs_Shell_Index<=UBound(gShells.Shells) Then
		      cc = new Class_MMCTP_Commands
		      cc.shell=gShells.Shells(gBEAM.Beams(beam).egs_Shell_Index)
		      
		      if gBEAM.Beams(beam).egs_BEAMnrc_dir="" Then
		        Return False
		      end
		      BEAMnrc_dir=gBEAM.Beams(beam).egs_BEAMnrc_dir
		      
		      
		      Return True
		      
		    end
		  end
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub vmc_dmx_Read_Settings()
		  
		  
		  
		  
		  if vmc_Res_X<=0 Then
		    gVMC.DMXSettings.Del_X=gRTOG.Scan(0).Grid_Units_Width
		  else
		    gVMC.DMXSettings.Del_X=vmc_Res_X
		  end
		  
		  if vmc_Res_y<=0 Then
		    gVMC.DMXSettings.Del_y=gRTOG.Scan(0).Grid_Units_Height
		  else
		    gVMC.DMXSettings.Del_y=vmc_Res_Y
		  end
		  
		  if vmc_Res_z<=0 Then
		    gVMC.DMXSettings.Del_z=gRTOG.Scan(0).Slice_Thickness
		  else
		    gVMC.DMXSettings.Del_z=vmc_Res_z
		  end
		  
		  
		  
		  gVMC.DMXSettings.X_Max=gVis.xoff_set-gVis.scale_width/2 +gRTOG.Scan(0).Grid_Units_Width*gRTOG.Scan(0).Size_of_Dimension1
		  gVMC.DMXSettings.X_min=gVis.xoff_set-gVis.scale_width/2
		  
		  
		  gVMC.DMXSettings.z_Max=gRTOG.Scan(UBound(gRTOG.Scan)).Z_Value+gRTOG.Scan(0).Slice_Thickness/2
		  gVMC.DMXSettings.z_min=gRTOG.Scan(0).Z_Value-gRTOG.Scan(0).Slice_Thickness/2
		  
		  gVMC.DMXSettings.y_Max=gVis.yoff_set-gVis.scale_height/2+gRTOG.Scan(0).Grid_Units_Height*gRTOG.Scan(0).Size_of_Dimension2
		  gVMC.DMXSettings.y_min=gVis.yoff_set-gVis.scale_height/2
		  
		  
		  gVMC.DMXSettings.dmx_name=DMX_Name
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub vmc_Download_one_dose(dmx_index as integer, index as integer)
		  //-------------------------------
		  // Download d3d file to patient folder
		  //
		  //=======================
		  Dim i as Integer
		  Dim f,g as FolderItem
		  Dim path,vmc_directoy,tmpstr,temp as string
		  //====================
		  
		  
		  for i=0 to UBound(MMCTP_Download.All)
		    if MMCTP_Download.All(i).vmc_download_d3d Then
		      if MMCTP_Download.All(i).vmc_dmx_index=dmx_index and MMCTP_Download.All(i).beam_num=index Then
		        Return
		      end
		    end
		  next
		  
		  if VMC(dmx_index).BEAMS(index).Write3dDose<>1 or VMC(dmx_index).BEAMS(index).downloaded_d3d Then
		    Return
		  end
		  
		  if vmc_Get_Shell_Enviro(dmx_index,index) Then
		    // Load Shell xvmc dir
		  end
		  
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  path=f.ShellPath
		  
		  vmc_directoy=xvmc_folder+gRTOG.Patient_ID+gRTOG.StudyID+gRTOG.SeriesNumber+"_"+vmc(dmx_index).dmx.dmx_name+"/"
		  temp=str(index+1)+"00"
		  
		  
		  tmpstr=MC_file_name+temp+".d3d"
		  g=f.Child(MC_file_name+temp+"_"+vmc(dmx_index).dmx.dmx_name+".d3d")
		  
		  if vmc_Get_Shell_Enviro(dmx_index,index) Then
		    cc.FTP_Files=g
		    cc.FTP_Now=True
		    cc.FTP_Get_File=True
		    cc.command="get "+vmc_directoy+tmpstr+" "+path+"/"+g.Name
		    cc.inpfilename=g.Name
		    cc.vmc_dmx_index=dmx_index
		    cc.beam_num=index
		    cc.vmc_download_d3d=True
		    cc.FTP_Local_Path=g.ShellPath
		    cc.FTP_Remote_Path=vmc_directoy+tmpstr
		    MMCTP_Download.All.Append cc
		  end
		  
		  
		  gTimer_Download.Period=1
		  gTimer_Download.Reset
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub vmc_Download_one_dose_hed(dmx_index as integer, index as integer)
		  //-------------------------------
		  // Download d3d file to patient folder
		  //
		  //=======================
		  Dim i as Integer
		  Dim f,g as FolderItem
		  Dim path,vmc_directoy,tmpstr,temp as string
		  //====================
		  
		  
		  for i=0 to UBound(MMCTP_Download.All)
		    if MMCTP_Download.All(i).vmc_download_hed Then
		      if MMCTP_Download.All(i).vmc_dmx_index=dmx_index and MMCTP_Download.All(i).beam_num=index Then
		        Return
		      end
		    end
		  next
		  
		  if VMC(dmx_index).BEAMS(index).Write3dDose<>1 or VMC(dmx_index).BEAMS(index).downloaded_hed Then
		    Return
		  end
		  
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  path=f.ShellPath
		  
		  vmc_directoy=xvmc_folder+gRTOG.Patient_ID+gRTOG.StudyID+gRTOG.SeriesNumber+"_"+vmc(dmx_index).dmx.dmx_name+"/"
		  temp=str(index+1)+"00"
		  
		  
		  tmpstr=MC_file_name+temp+".hed"
		  g=f.Child(MC_file_name+temp+"_"+vmc(dmx_index).dmx.dmx_name+".hed")
		  
		  if vmc_Get_Shell_Enviro(dmx_index,index) Then
		    cc.inpfilename=g.Name
		    cc.FTP_Files=g
		    cc.FTP_Now=True
		    cc.FTP_Get_File=True
		    cc.FTP_Remote_Path=vmc_directoy+tmpstr
		    cc.FTP_Local_Path=g.ShellPath
		    cc.command="get "+vmc_directoy+tmpstr+" "+path+"/"+g.Name
		    cc.vmc_dmx_index=dmx_index
		    cc.beam_num=index
		    cc.vmc_download_hed=True
		    MMCTP_Download.All.Append cc
		  end
		  
		  
		  temp=str(index+1)
		  tmpstr=MC_file_name+temp+".vmclog"
		  g=f.Child(MC_file_name+temp+"_"+vmc(dmx_index).dmx.dmx_name+".vmclog")
		  
		  if vmc_Get_Shell_Enviro(dmx_index,index) Then
		    cc.inpfilename=g.Name
		    cc.FTP_Files=g
		    cc.FTP_Now=True
		    cc.FTP_Get_File=True
		    cc.FTP_Remote_Path=vmc_directoy+tmpstr
		    cc.FTP_Local_Path=g.ShellPath
		    cc.command="get "+vmc_directoy+tmpstr+" "+path+"/"+g.Name
		    cc.vmc_dmx_index=dmx_index
		    cc.beam_num=index
		    cc.vmc_download_log=True
		    MMCTP_Download.All.Append cc
		  end
		  
		  
		  
		  
		  gTimer_Download.Period=1
		  gTimer_Download.Reset
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function vmc_Get_Shell_Enviro(dmx_index as integer, beam as Integer) As boolean
		  //-----------------------------
		  // Update shell variables
		  //-----------------------------
		  dim i as integer
		  //-----------------------------
		  
		  cc = new Class_MMCTP_Commands
		  cc.shell = new Class_Shell_One
		  
		  
		  if beam<=UBound(vmc(dmx_index).beams) and beam>-1 Then
		    i=VMC(dmx_index).BEAMS(beam).shell_index
		    if i>-1 and i<=UBound(gShells.Shells) Then
		      cc.shell=gShells.Shells(i)
		      cc.dir=gShells.Shells(i).vmc_path
		      xvmc_folder=gShells.Shells(i).vmc_folder
		      Return True
		    end
		  end
		  Return False
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function vmc_Import_d3d(dmx_num as integer, beam_num as integer, fd3d as folderitem, ghed as folderitem) As boolean
		  //------------------------------------
		  //
		  //
		  //------------------------------------
		  Dim vmc_dmx_nxy_imp,i as Integer
		  Dim dx as double
		  Dim head,oneline as string
		  Dim ts as TextInputStream
		  Dim path,temp,tmpstr,location(-1) as string
		  Dim f,l as FolderItem
		  //------------------------------------
		  
		  
		  
		  if ghed.Exists then
		    ts=ghed.OpenAsTextFile
		    head=ts.ReadAll
		  else
		    Return False
		  end
		  
		  for i=0 to InStr(head,chr(10))
		    oneline=NthField(head,chr(10),i)
		    if InStr(oneline,"VOXELSIZE")>0 then
		      oneline=trim(NthField(oneline,"|",2))
		      dx=val(NthField(oneline," ",1))
		    elseif InStr(oneline,"DIMENSION")>0 then
		      oneline=NthField(oneline,"|",2)
		      vmc_dmx_nxy_imp=val(NthField(oneline,",",1))
		    end
		  next
		  
		  
		  
		  
		  
		  '====================
		  f=gRTOG.Plan(Plan_Index).Path
		  tmpstr=f.NativePath
		  location=Split(tmpstr,":")
		  path=""
		  
		  
		  temp=str(beam_num+1)
		  while len(temp)<3
		    temp=Temp+"0"
		  wend
		  
		  'remove any exisiting files
		  l=f.Child(MC_file_name+temp+"_"+vmc(dmx_num).DMX.dmx_name+".d3d")
		  if l.Exists Then
		    l.Delete
		  end
		  l=f.Child(MC_file_name+temp+"_"+vmc(dmx_num).DMX.dmx_name+".hed")
		  if l.Exists Then
		    l.Delete
		  end
		  
		  
		  
		  
		  fd3d.CopyFileTo f.Child(MC_file_name+temp+"_"+vmc(dmx_num).dmx.dmx_name+".d3d")
		  
		  
		  ghed.CopyFileTo f.Child(MC_file_name+temp+"_"+vmc(dmx_num).dmx.dmx_name+".hed")
		  
		  
		  
		  vmc(dmx_num).BEAMS(beam_num).progress=100
		  
		  Window_Treatment.MC_vmc_beam_progress
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub vmc_Make_DMX()
		  '//------------------------------------------------------
		  '// Generate DMX file from Images, and/or contours and user settings
		  '//
		  '//------------------------------------------------------
		  Dim i, j, k,p, maskval ,cvalue,yy,h,ch,cv,order,z_index as integer
		  Dim dx,dy,dz,min, max, tmpval,  x,y,z as double
		  Dim imagemask(0) as picture
		  Dim memblock as memoryBlock
		  Dim bs as binaryStream
		  Dim ts as textOutputStream
		  Dim dmxfile,headerfile,f as folderItem
		  Dim maskrgb(-1) as RGBSurface
		  Dim file as RTOG_Structure_One_Structure
		  Dim poly as class_Polygon
		  Dim temp,check as String
		  Dim vv as Class_VMC
		  //===========================
		  
		  vv = new Class_VMC
		  vv.Initialize_DMX
		  vv.Initialize_Beams
		  vv.DMX.dmx_name=DMXSettings.dmx_name
		  
		  
		  
		  vv.DMX.X_num=Round((DMXSettings.X_Max-DMXSettings.X_min)/DMXSettings.Del_X)
		  vv.DMX.y_num=Round((DMXSettings.y_Max-DMXSettings.y_min)/DMXSettings.Del_y)
		  vv.DMX.z_num=Round((DMXSettings.z_Max-DMXSettings.z_min)/DMXSettings.Del_z)
		  
		  
		  vv.DMX.X_Max=DMXSettings.X_min+vv.DMX.X_num*DMXSettings.Del_X
		  vv.DMX.y_Max=DMXSettings.y_min+vv.DMX.y_num*DMXSettings.Del_y
		  vv.DMX.z_Max=DMXSettings.z_min+vv.DMX.z_num*DMXSettings.Del_z
		  
		  vv.DMX.Z_min=DMXSettings.z_min
		  vv.DMX.Y_min=DMXSettings.y_min
		  vv.DMX.x_min=DMXSettings.X_min
		  
		  vv.DMX.Del_X=DMXSettings.Del_X
		  vv.DMX.Del_y=DMXSettings.Del_y
		  vv.DMX.Del_z=DMXSettings.Del_z
		  
		  
		  vv.DMX.Cleancontour=DMXSettings.Cleancontour
		  vv.DMX.Clean_density=DMXSettings.Clean_density
		  vv.DMX.Cleancontours=DMXSettings.Cleancontours
		  
		  for i=0 to UBound(DMXSettings.Contours)
		    vv.DMX.Contours(i).density=DMXSettings.Contours(i).density
		    vv.DMX.Contours(i).RTOG_Contour_Index=DMXSettings.Contours(i).RTOG_Contour_Index
		    vv.DMX.Contours(i).Use_Density=DMXSettings.Contours(i).Use_Density
		  next
		  
		  
		  
		  Window_VMC_DMXSettings.StaticText_VMC_Make.Text="Making DMX file"
		  Window_VMC_DMXSettings.ProgressBar.Maximum=vv.DMX.Z_num
		  
		  
		  
		  
		  redim imagemask(vv.DMX.Z_num-1)
		  for k=0 to vv.DMX.Z_num-1
		    z=vv.DMX.z_min+vv.DMX.Del_Z/2+vv.DMX.Del_z*k
		    
		    imagemask(k)=New Picture(vv.DMX.X_num,vv.DMX.Y_num,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		    imagemask(k).Graphics.UseOldRenderer=true
		    if  DMXSettings.Cleancontours then //fill with set density
		      imagemask(k).graphics.forecolor=rgb(200,200,200) 'Fill with 200 means set density
		    else
		      imagemask(k).graphics.forecolor=rgb(255,255,255) '255 Means we'll get the CT2density value for that pixel
		    end
		    imagemask(k).graphics.fillrect 0,0,imagemask(k).graphics.width, imagemask(k).graphics.height 'sets image to 200 or 255
		    for order = 1 to UBound(gRTOG.structures) +1
		      ' The order is set by the user, largest structures should go 1st to avoid overlaping
		      if DMXSettings.Contours(order-1).Use_Density or _
		        (DMXSettings.Cleancontours and DMXSettings.Cleancontour=DMXSettings.Contours(order-1).RTOG_Contour_Index)  then
		        ' if user checked ok for this density and the order is correct
		        'or
		        'if we're useing cleancountours and this is the 1st ordered contour which should be the external contour
		        j=DMXSettings.Contours(order-1).RTOG_Contour_Index
		        
		        // Look for closest structure plane to Z value
		        z_index=-1
		        for p=0 to UBound(gRTOG.structures(j).structure_Data)
		          if abs(z-gRTOG.structures(j).structure_Data(p).Z)< gRTOG.Scan(0).Slice_Thickness then
		            z_index=p
		            exit
		          end
		          
		        next
		        
		        if z_index=-1 then
		          Break
		        end
		        
		        
		        file = new RTOG_Structure_One_Structure
		        file = gRTOG.structures(j).structure_Data(z_index)
		        for i=0 to ubound(file.segments)
		          poly = new class_polygon
		          for p =0 to ubound(file.segments(i).Points)
		            x=(file.segments(i).Points(p).x-vv.DMX.X_min)-vv.DMX.Del_X/2
		            y=(file.segments(i).Points(p).y-vv.DMX.Y_min)-vv.DMX.Del_y/2
		            x=Round(x/vv.DMX.Del_X)
		            y=Round(y/vv.DMX.Del_Y)
		            poly.AddPoint x,y
		          next
		          if UBound(poly.points)>0 then //if that contours has some points
		            if DMXSettings.Contours(order-1).Use_Density then
		              imagemask(k).graphics.foreColor=rgb(order,0,0) //set to that color (basically index of the structure...then later look up its density
		            else
		              imagemask(k).graphics.forecolor=rgb(255,255,255) '255 Means we'll get the CT2density value for that pixel
		            end if
		            imagemask(k).graphics.penHeight=0
		            imagemask(k).graphics.penwidth=0
		            imagemask(k).Graphics.UseOldRenderer=True
		            imagemask(k).graphics.fillPolygon poly.points
		          end if
		        next 'for all segments
		      end if
		    next
		  next
		  
		  //the lookup mask is created now use it as a look up to create the vmc file
		  //make an rgb surface lookup for quick access.
		  
		  redim maskrgb(ubound(imagemask))
		  for k=0 to ubound(imagemask)
		    //maskrgb(k)=new RGBSurface
		    maskrgb(k)=imagemask(k).rgbsurface
		  next
		  
		  dx=vv.DMX.Del_X
		  dy=vv.DMX.Del_Y
		  dz=vv.DMX.Del_Z
		  
		  memblock=new MemoryBlock(vv.DMX.X_num*vv.DMX.Y_num*vv.DMX.Z_num*4)  //4 bytes floats
		  //Above line changed to "new MemoryBlock" by William Davis when newmemoryBlock was found to have been deprecated
		  memblock.littleEndian=false
		  
		  max=-1000000
		  min=1000000
		  
		  
		  for k=0 to vv.DMX.Z_num-1
		    z=vv.DMX.z_min+vv.DMX.Del_Z/2+vv.DMX.Del_z*k
		    
		    Window_VMC_DMXSettings.ProgressBar.Value=k+1
		    
		    for j=0 to vv.DMX.Y_num-1
		      y=vv.DMX.y_min+vv.DMX.Del_y/2+vv.DMX.Del_y*j
		      
		      for i=0 to vv.DMX.X_num-1
		        x=vv.DMX.x_min+vv.DMX.Del_x/2+vv.DMX.Del_x*i
		        
		        //get lookup value
		        maskval=maskrgb(k).pixel(i,j).red
		        // j and k get flipped for vmc
		        //if value of the look up image is 255 take the original value
		        if maskval=255 then
		          //use a CT to density conversion
		          cvalue=RTOG_Image_Interpolate(x,y,z)
		          tmpval=vmc_CT_2_Dens(cvalue)
		          
		        elseif (maskval-1)<=ubound(gRTOG.structures) then
		          //use override density which the user has selected
		          tmpval=DMXSettings.Contours(maskval-1).density
		        elseif maskval=200 Then
		          //User set density (not normal and not overrrided)
		          tmpval=val(DMXSettings.Clean_density)
		        else
		          Break
		          
		        end if
		        
		        //if value is 0 to n look up the value in structurefillingdensity(n)
		        //if value is 254 then use air
		        
		        if tmpval>max then
		          max=tmpval
		        end
		        if tmpval<min then
		          min=tmpval
		        end
		        yy=(i+k*vv.DMX.x_num+vv.DMX.x_num*(vv.DMX.Z_num)*j)*4
		        memblock.singleValue(yy)=tmpval
		      next
		    next
		  next
		  
		  
		  //=========Write DMX file, and hed file
		  h=plan_index
		  Window_VMC_DMXSettings.StaticText_VMC_Make.Text="Writing DMX file"
		  f=new FolderItem
		  f=gRTOG.Path.Child("McGill_RT")
		  dmxfile=f.child(gRTOG.Patient_ID+gRTOG.StudyID+gRTOG.SeriesNumber+"_"+vv.DMX.dmx_name+".dmx")
		  if dmxfile<> nil then
		    bs=dmxfile.createBinaryFile("any")
		    bs.littleEndian=true
		    bs.write memblock
		    bs.close
		  end
		  
		  // now write the header file ".hed"
		  Window_VMC_DMXSettings.StaticText_VMC_Make.Text="Writing HED file"
		  headerfile=f.child(gRTOG.Patient_ID+gRTOG.StudyID+gRTOG.SeriesNumber+"_"+vv.DMX.dmx_name+".hed")
		  if headerfile<>nil then
		    ts=headerfile.createTextFile
		    ts.write "VOXELSIZE      | " +Format(dx,"#.###")+" "+Format(dz,"#.###")+" "+Format(dy,"#.###")
		    ts.write chr(10)
		    ts.write "DIMENSION      |  "+str(vv.DMX.X_num)+" "+str(vv.DMX.Z_num)+" "+str(vv.DMX.Y_num)
		    ts.write chr(10)
		    ts.write "END-INPUT      |"
		    ts.write chr(10)
		    ts.close
		  end
		  Window_VMC_DMXSettings.StaticText_VMC_Make.Text="Saving DMX Properties"
		  
		  
		  vv.Write_DMX_Settings
		  vv.Write_VMC_Settings
		  vmc.Append vv
		  Window_VMC_DMXSettings.StaticText_VMC_Make.Text="Finished"
		  Window_Treatment.MC_vmc_beam_progress
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function vmc_Make_Input_file(dmx_index as integer, beam as integer) As boolean
		  //------------------------------------
		  // Method to create XVMC input file
		  // Reture ture if successful
		  //
		  //------------------------------------
		  Dim g as FolderItem
		  Dim ts_g as TextInputStream
		  Dim wts as TextOutputStream
		  Dim file,b_mode,reading(-1) as string
		  Dim Isox_vmc,Isoy_vmc,Isoz_vmc,Dx_vmc,Dy_vmc,Dz_vmc,Nx_vmc,Ny_vmc,Nz_vmc As Single
		  Dim vmcf as Class_VMC_Inputfile
		  '===========================
		  
		  vmcf=VMC(dmx_index).BEAMS(beam)
		  
		  
		  Dx_vmc =VMC(dmx_index).DMX.del_x
		  Dy_vmc = VMC(dmx_index).DMX.del_y
		  Dz_vmc = VMC(dmx_index).DMX.del_z
		  
		  Nx_vmc =  Round((VMC(dmx_index).DMX.z_max-VMC(dmx_index).DMX.z_min)/VMC(dmx_index).DMX.del_z)
		  Ny_vmc = Round((VMC(dmx_index).DMX.y_max-VMC(dmx_index).DMX.y_min)/VMC(dmx_index).DMX.del_y)
		  Nz_vmc =  Round((VMC(dmx_index).DMX.x_max-VMC(dmx_index).DMX.x_min)/VMC(dmx_index).DMX.del_x)
		  '============END DMX sizes=====
		  
		  
		  '==========DEFINE isocenter====
		  
		  Isox_vmc = gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(0).isocenter.x - VMC(dmx_index).DMX.x_min 
		  Isoy_vmc = gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(0).isocenter.z - VMC(dmx_index).DMX.z_min 
		  Isoz_vmc = gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(0).isocenter.y -VMC(dmx_index).DMX.y_min 
		  
		  vmcf.ISOCENTERx=Isox_vmc
		  vmcf.ISOCENTERy=Isoy_vmc
		  vmcf.ISOCENTERz=Isoz_vmc
		  '=============Generate new VMC file==
		  b_mode=gRTOG.Plan(Plan_Index).Beam(beam).beam_mode
		  
		  if vmcf.Auto_Determine Then
		    if Default_Device_Type=0 Then
		      if b_mode="FLEC" or b_mode="ELECTRON" then
		        vmcf.CHANGESAD=95
		        vmcf.DEVICETYPE=10
		      elseif b_mode="PHOTON" then
		        vmcf.CHANGESAD=70
		        vmcf.DEVICETYPE=110
		      end
		      vmcf.DEVICEKEY=MC_file_name+str(beam+1)
		      
		    elseif Default_Device_Type=1 Then // Update for shar lib
		      if b_mode="FLEC" or b_mode="ELECTRON" then
		        vmcf.CHANGESAD=95
		        vmcf.DEVICETYPE=11
		      elseif b_mode="PHOTON" then
		        vmcf.CHANGESAD=70
		        vmcf.DEVICETYPE=111
		      end
		      
		      // Get BEAM directory
		      if not vmc_Determine_Shell(dmx_index,beam) Then
		        Return False
		      end
		      //BEAMnrc_directoy=gBEAM.cc.dir
		      
		      
		      // BEAMnrc input file name
		      vmcf.BEAMnrc_INPUT=MC_file_name+str(beam+1)
		      vmcf.BEAMnrc_PEGS=gBEAM.Beams(beam).egs_pegs_file
		      // Accelerator Name
		      vmcf.DEVICEKEY=BEAMnrc_dir
		      
		    end
		    vmcf.BEAMWEIGHT=1
		    vmcf.BremPhotons=False
		    vmcf.IRREGULAR_Num=0
		    
		  end
		  
		  vmcf.ISOCENTERDIST=gRTOG.Plan(Plan_Index).Beam(beam).nominal_isocenter
		  vmcf.GANTRYANGLE_TF="F"
		  vmcf.GANTRYANGLE_Value1=gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(0).gantry_angle
		  vmcf.GANTRYANGLE_Value2=0
		  vmcf.TABLEANGLE=gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(0).couch_angle
		  vmcf.COLLANGLE=-1*gRTOG.Plan(Plan_Index).Beam(beam).Collimator.Fields(0).collimator_angle
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub vmc_Make_Monoenergetic(dmx_index as integer, beam_index as Integer)
		  //-----------------------------------
		  // Make momoenergetic VMC input file for 
		  // beam geometry
		  //
		  // Valid for FLEC, Electron and Photon beam modes
		  //-----------------------------------
		  Dim temp as Class_VMC_Inputfile
		  Dim beam as RTOG_Beam_Geometry
		  Dim isox,isoy,isoz,x as Single
		  Dim g as Boolean
		  Dim i,k as Integer
		  //-----------------------------------
		  
		  
		  if beam_index>-1 and beam_index<=UBound(gRTOG.Plan(Plan_Index).Beam) Then
		    if dmx_index>-1 and dmx_index<=UBound(VMC) Then
		      temp=gVMC.VMC(dmx_index).BEAMS(beam_index)
		      Beam=gRTOG.Plan(Plan_Index).Beam(beam_index)
		      
		      
		      if temp<> nil and beam<> nil Then
		        
		        temp.num_batches=20
		        temp.BEAMWEIGHT=1
		        temp.NominalEnergy=val(Beam.Beam_Energy)
		        temp.Auto_Determine=False
		        temp.BremPhotons=True
		        
		        if beam.Beam_Mode="FLEC" Then
		          temp.PriCharge=-1
		          temp.DEVICETYPE=0
		          
		          temp.Coll_Width_X=25
		          temp.Coll_Width_y=25
		          temp.IRREGULAR_Num=5
		          ReDim temp.IRREGULAR_X(4)
		          ReDim temp.IRREGULAR_y(4)
		          
		          temp.IRREGULAR_X(0)=-Beam.FLEC.x1
		          temp.IRREGULAR_y(0)=-Beam.FLEC.y2
		          
		          temp.IRREGULAR_X(1)=Beam.FLEC.x2
		          temp.IRREGULAR_y(1)=-Beam.FLEC.y2
		          
		          temp.IRREGULAR_X(2)=Beam.FLEC.x2
		          temp.IRREGULAR_y(2)=Beam.FLEC.y1
		          
		          temp.IRREGULAR_X(3)=-Beam.FLEC.x1
		          temp.IRREGULAR_y(3)=Beam.FLEC.y1
		          
		          temp.IRREGULAR_X(4)=-Beam.FLEC.x1
		          temp.IRREGULAR_y(4)=-Beam.FLEC.y2
		          temp.CHANGESAD=95
		        Elseif beam.Beam_Mode="ELECTRON" Then
		          temp.PriCharge=-1
		          temp.DEVICETYPE=0
		          //temp.PriCharge=0
		          
		          temp.Coll_Width_X=25
		          temp.Coll_Width_y=25
		          
		          
		          if UBound(Beam.Block_Contours)<0 Then // The electron cutout has not been defined
		            temp.IRREGULAR_Num=0
		            Return
		          end
		          temp.IRREGULAR_Num=UBound(Beam.Block_Contours(0).Pair)+1
		          
		          ReDim temp.IRREGULAR_X(-1)
		          ReDim temp.IRREGULAR_y(-1)
		          for i=0 to temp.IRREGULAR_Num-1
		            temp.IRREGULAR_X.Append Beam.Block_Contours(0).Pair(i).x
		            temp.IRREGULAR_y.Append Beam.Block_Contours(0).Pair(i).y
		            //i=i+10
		          next
		          temp.IRREGULAR_Num=UBound(temp.IRREGULAR_y)+1
		          temp.CHANGESAD=95
		          
		          
		        elseif beam.Beam_Mode="Photon" Then
		          temp.DEVICETYPE=100
		          temp.CHANGESAD=55
		          
		          if temp.NominalEnergy=6 Then
		            temp.NominalEnergy=4
		          end
		          
		          
		          temp.Coll_Width_X=25
		          temp.Coll_Width_y=25
		          temp.IRREGULAR_Num=5
		          ReDim temp.IRREGULAR_X(4)
		          ReDim temp.IRREGULAR_y(4)
		          
		          
		          temp.IRREGULAR_X(0)=-temp.CHANGESAD*Beam.Collimator.Fields(0).x1/100
		          temp.IRREGULAR_y(0)=-temp.CHANGESAD*Beam.Collimator.Fields(0).y2/100
		          
		          temp.IRREGULAR_X(1)=temp.CHANGESAD*Beam.Collimator.Fields(0).x2/100
		          temp.IRREGULAR_y(1)=-temp.CHANGESAD*Beam.Collimator.Fields(0).y2/100
		          
		          temp.IRREGULAR_X(2)=temp.CHANGESAD*Beam.Collimator.Fields(0).x2/100
		          temp.IRREGULAR_y(2)=temp.CHANGESAD*Beam.Collimator.Fields(0).y1/100
		          
		          temp.IRREGULAR_X(3)=-temp.CHANGESAD*Beam.Collimator.Fields(0).x1/100
		          temp.IRREGULAR_y(3)=temp.CHANGESAD*Beam.Collimator.Fields(0).y1/100
		          
		          temp.IRREGULAR_X(4)=-temp.CHANGESAD*Beam.Collimator.Fields(0).x1/100
		          temp.IRREGULAR_y(4)=-temp.CHANGESAD*Beam.Collimator.Fields(0).y2/100
		          
		        end
		        temp.num_histories=vmc_numb_hist
		        g=VMC(dmx_index).Write_VMC_Inputfile(beam_index)
		      end
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub vmc_Make_Script(dmx_index as integer, beam as integer)
		  //--------------------------------------
		  // Make VMC script,
		  // vmc path + dmx name + inputfile
		  //
		  //--------------------------------------
		  Dim f as FolderItem
		  Dim vmc_path,s,VMC_dir as String
		  Dim ts as TextOutputStream
		  Dim i as integer
		  //---------------------------------------
		  
		  VMC_dir=xvmc_folder+gRTOG.Patient_ID+gRTOG.StudyID+gRTOG.SeriesNumber+"_"+vmc(dmx_index).dmx.dmx_name+ "/"
		  
		  if vmc_Get_Shell_Enviro(dmx_index,beam) Then
		    vmc_path=cc.shell.vmc_path
		    s= vmc_path+ " > "+cc.shell.vmc_folder+gRTOG.Patient_ID+gRTOG.StudyID+gRTOG.SeriesNumber+"_"+vmc(dmx_index).dmx.dmx_name+ "/"+MC_file_name+str(Beam+1)+".vmclog "+_
		    "<<!"+EndOfLine.UNIX+_
		    gRTOG.Patient_ID+gRTOG.StudyID+gRTOG.SeriesNumber+"_"+vmc(dmx_index).dmx.dmx_name+EndOfLine.UNIX+_
		    MC_file_name+str(beam+1)+EndOfLine.UNIX+_
		    "!"+EndOfLine.UNIX
		    
		    f=gRTOG.Plan(Plan_Index).Path
		    f=f.Child("j"+MC_file_name+str(Beam+1)+"_run")
		    ts=f.CreateTextFile
		    ts.Write s
		    ts.Close
		    
		    cc.FTP_Files=f
		    cc.vmc_uploadScript=True
		    cc.beam_num=beam
		    cc.FTP_Now=True
		    cc.command="put "+f.ShellPath+" "+VMC_dir+f.Name
		    cc.inpfilename=f.Name
		    cc.FTP_Local_Path=f.ShellPath
		    cc.FTP_Put_file=True
		    cc.FTP_Remote_Path=VMC_dir+f.Name
		    MMCTP_Shell_Run.All.Append cc
		  end
		  
		  //Change mode to exe and execute
		  if vmc_Get_Shell_Enviro(dmx_index,beam) Then
		    cc.dir=VMC_dir
		    cc.command="chmod u+x " +f.Name
		    MMCTP_Shell_Run.All.Append cc
		  end
		  
		  //determine how to submit job to batch
		  if vmc_Get_Shell_Enviro(dmx_index,beam) Then
		    cc.dir=VMC_dir
		    cc.vmc_run=True
		    cc.inpfilename=f.Name
		    cc.vmc_dmx_index=dmx_index
		    cc.beam_num=beam
		    cc.command=cc.Shell.Queue_Submit(vmc(dmx_index).BEAMS(beam).queue,f.Name)
		    MMCTP_Shell_Run.All.Append cc
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub vmc_Make_Spectrum(dmx_index as integer, beam_index as Integer)
		  //-----------------------------------
		  // Make momoenergetic VMC input file for 
		  // beam geometry
		  //
		  // Valid for FLEC, Electron and Photon beam modes
		  //-----------------------------------
		  Dim temp as Class_VMC_Inputfile
		  Dim beam as RTOG_Beam_Geometry
		  Dim isox,isoy,isoz,x as Single
		  Dim g as Boolean
		  Dim i,k as Integer
		  //-----------------------------------
		  
		  
		  if beam_index>-1 and beam_index<=UBound(gRTOG.Plan(Plan_Index).Beam) Then
		    if dmx_index>-1 and dmx_index<=UBound(VMC) Then
		      temp=gVMC.VMC(dmx_index).BEAMS(beam_index)
		      Beam=gRTOG.Plan(Plan_Index).Beam(beam_index)
		      
		      
		      if temp<> nil and beam<> nil Then
		        
		        temp.num_batches=20
		        temp.BEAMWEIGHT=1
		        temp.NominalEnergy=val(Beam.Beam_Energy)
		        temp.Auto_Determine=False
		        temp.BremPhotons=True
		        
		        if beam.Beam_Mode="FLEC" Then
		          temp.PriCharge=-1
		          temp.DEVICETYPE=0
		          
		          temp.Coll_Width_X=25
		          temp.Coll_Width_y=25
		          temp.IRREGULAR_Num=5
		          ReDim temp.IRREGULAR_X(4)
		          ReDim temp.IRREGULAR_y(4)
		          
		          temp.IRREGULAR_X(0)=-Beam.FLEC.x1
		          temp.IRREGULAR_y(0)=-Beam.FLEC.y2
		          
		          temp.IRREGULAR_X(1)=Beam.FLEC.x2
		          temp.IRREGULAR_y(1)=-Beam.FLEC.y2
		          
		          temp.IRREGULAR_X(2)=Beam.FLEC.x2
		          temp.IRREGULAR_y(2)=Beam.FLEC.y1
		          
		          temp.IRREGULAR_X(3)=-Beam.FLEC.x1
		          temp.IRREGULAR_y(3)=Beam.FLEC.y1
		          
		          temp.IRREGULAR_X(4)=-Beam.FLEC.x1
		          temp.IRREGULAR_y(4)=-Beam.FLEC.y2
		          temp.CHANGESAD=95
		        Elseif beam.Beam_Mode="ELECTRON" Then
		          temp.PriCharge=-1
		          temp.DEVICETYPE=0
		          //temp.PriCharge=0
		          
		          
		          
		          temp.Coll_Width_X=25
		          temp.Coll_Width_y=25
		          temp.IRREGULAR_Num=UBound(Beam.Block_Contours(0).Pair)+1
		          ReDim temp.IRREGULAR_X(-1)
		          ReDim temp.IRREGULAR_y(-1)
		          for i=0 to temp.IRREGULAR_Num-1
		            temp.IRREGULAR_X.Append Beam.Block_Contours(0).Pair(i).x
		            temp.IRREGULAR_y.Append Beam.Block_Contours(0).Pair(i).y
		            //i=i+10
		          next
		          temp.IRREGULAR_Num=UBound(temp.IRREGULAR_y)+1
		          temp.CHANGESAD=95
		          
		          
		        elseif beam.Beam_Mode="Photon" Then
		          temp.DEVICETYPE=101
		          temp.CHANGESAD=55
		          
		          if temp.NominalEnergy=6 Then
		            temp.NominalEnergy=6
		          end
		          temp.DEVICEKEY="examp"+str(temp.NominalEnergy)+"MV"
		          
		          temp.BremPhotons=False
		          
		          temp.Coll_Width_X=25
		          temp.Coll_Width_y=25
		          temp.IRREGULAR_Num=5
		          ReDim temp.IRREGULAR_X(4)
		          ReDim temp.IRREGULAR_y(4)
		          
		          
		          temp.IRREGULAR_X(0)=-temp.CHANGESAD*Beam.Collimator.Fields(0).x1/100
		          temp.IRREGULAR_y(0)=-temp.CHANGESAD*Beam.Collimator.Fields(0).y2/100
		          
		          temp.IRREGULAR_X(1)=temp.CHANGESAD*Beam.Collimator.Fields(0).x2/100
		          temp.IRREGULAR_y(1)=-temp.CHANGESAD*Beam.Collimator.Fields(0).y2/100
		          
		          temp.IRREGULAR_X(2)=temp.CHANGESAD*Beam.Collimator.Fields(0).x2/100
		          temp.IRREGULAR_y(2)=temp.CHANGESAD*Beam.Collimator.Fields(0).y1/100
		          
		          temp.IRREGULAR_X(3)=-temp.CHANGESAD*Beam.Collimator.Fields(0).x1/100
		          temp.IRREGULAR_y(3)=temp.CHANGESAD*Beam.Collimator.Fields(0).y1/100
		          
		          temp.IRREGULAR_X(4)=-temp.CHANGESAD*Beam.Collimator.Fields(0).x1/100
		          temp.IRREGULAR_y(4)=-temp.CHANGESAD*Beam.Collimator.Fields(0).y2/100
		          
		        end
		        temp.num_histories=vmc_numb_hist
		        g=VMC(dmx_index).Write_VMC_Inputfile(beam_index)
		      end
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub vmc_Open()
		  //------------------------------------
		  // Called once a patient is opned,
		  // This method counts the number of DMX files
		  // asscoisated to a patient and allocates memory for
		  // each vmc class
		  //
		  // note: 1 vmc class per DMX file
		  //------------------------------------
		  Dim i,k as Integer
		  Dim f,g as FolderItem
		  Dim ts as TextInputStream
		  Dim temp,fname,shellstring as string
		  Dim vv as Class_VMC
		  Dim DMXc as Class_VMC_DMX_Contour
		  '=========vmc============
		  
		  f=gRTOG.path.Child("McGill_RT")
		  redim VMC(-1)
		  for i=1 to f.Count
		    if InStr(f.Item(i).Name, ".dmx")>0 then
		      vv=new Class_VMC
		      vv.Initialize_DMX
		      Temp= f.Item(i).Name
		      fname=NthField(Temp,".dmx",1)
		      g=gRTOG.path.Child("McGill_RT").Child(fname+".txt")
		      temp=NthField(fname,gRTOG.Patient_ID+gRTOG.StudyID+gRTOG.SeriesNumber,2)
		      temp=NthField(temp,"_",2)
		      vv.DMX.dmx_name=temp
		      vv.Read_DMX_Setting(g)
		      vmc.Append vv
		    end
		  next
		  
		  ReDim DMXSettings.Contours(-1)
		  for i=0 to UBound(gRTOG.Structures)
		    DMXc= new Class_VMC_DMX_Contour
		    DMXc.RTOG_Contour_Index=i
		    DMXSettings.Contours.Append DMXc
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub vmc_Read_vmclog(dmx_index as integer, beam as Integer)
		  //--------------------------------------
		  // Readin egslst file
		  // Read total simulation time 
		  //--------------------------------------
		  Dim name,line,temp as String
		  Dim hh as Boolean
		  Dim tx as TextInputStream
		  Dim f as FolderItem
		  Dim time as Single
		  //--------------------------------------
		  
		  temp=str(beam+1)
		  
		  name=MC_file_name+temp+"_"+vmc(dmx_index).dmx.dmx_name+".vmclog"
		  
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child(Name)
		  if f.Exists Then
		    tx=f.OpenAsTextFile
		    name=tx.ReadAll
		    tx.Close
		    line=NthField(name,"CPU time for the simulation :",2)
		    Time=Val(line)
		    if time>0 Then
		      VMC(dmx_index).BEAMS(beam).simtime=time
		    end
		    
		    
		    line=NthField(name,"region d > 50% :",2)
		    Time=Val(line)
		    if time>0 Then
		      VMC(dmx_index).BEAMS(beam).uncertainty=time
		    end
		    
		    VMC(dmx_index).Write_VMC_Settings
		    
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub vmc_Refresh_d3d(a as integer, i as integer)
		  //----------------------------------------
		  // Method,
		  // to check if VMC simulation has finished
		  // Called by the user (Refresh button in treatment planning
		  // Window)
		  //
		  // If the simulation has finished, this methods calls
		  // the Download_one_dose method
		  //------------------------------------
		  Dim s,line(-1),path as String
		  //------------------------------------
		  
		  
		  if gVMC.VMC(a).BEAMS(i).progress=100 then
		    if gVMC.VMC(a).beams(i).downloaded_d3d=False Then
		      vmc_Download_one_dose(a,i)
		    end
		    if gVMC.VMC(a).beams(i).downloaded_hed=False Then
		      vmc_Download_one_dose_hed(a,i)
		    end
		    Return
		  end
		  
		  
		  if gVMC.VMC(a).BEAMS(i).vmc_started=false or gVMC.VMC(a).BEAMS(i).Write3dDose<>1Then
		    Return
		  end
		  
		  
		  if vmc_Get_Shell_Enviro(a,i) Then
		    s=MC_file_name+str(i+1)+"00.d3d"
		    cc.dir=xvmc_folder+gRTOG.Patient_ID+gRTOG.StudyID+gRTOG.SeriesNumber+"_"+gVMC.vmc(a).DMX.dmx_name+"/"
		    cc.command=cc.Shell.listfiles +" " +s
		    cc.vmc_refresh_d3d=True
		    cc.vmc_dmx_index=a
		    cc.beam_num=i
		    cc.inpfilename=s
		    MMCTP_Shell_Refresh.All.Append cc
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub vmc_Refresh_pro(a as integer, i as integer)
		  //----------------------------------------
		  // Method,
		  // to check if VMC simulation has finished
		  // Called by the user (Refresh button in treatment planning
		  // Window)
		  //
		  // If the simulation has finished, this methods calls
		  // the Download_one_dose method
		  //------------------------------------
		  Dim s,tmpstr,line(-1),path ,VMC_dir,command as String
		  //------------------------------------
		  
		  
		  if gVMC.VMC(a).beams(i).progress=100 Then
		    Return
		  end
		  
		  
		  if vmc_Get_Shell_Enviro(a,i) Then
		    s=MC_file_name+str(i+1)+".prg"
		    VMC_dir=xvmc_folder+gRTOG.Patient_ID+gRTOG.StudyID+gRTOG.SeriesNumber+"_"+gVMC.vmc(a).DMX.dmx_name+"/"
		    cc.vmc_dmx_index=a
		    cc.beam_num=i
		    cc.command=cc.Shell.tail_c+" " +s +" "+cc.Shell.tail_after
		    cc.dir=VMC_dir
		    cc.vmc_refresh_pro=True
		    cc.inpfilename=s
		    MMCTP_Shell_Refresh.All.Append cc
		  end
		  
		  gTimer_Refresh.Period=1
		  gTimer_Refresh.Reset
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub vmc_Run(dmx_index as integer, beam as integer)
		  //--------------------------------------------
		  // Run one VMC simulation
		  //
		  //--------------------------------------------
		  Dim good,found as Boolean
		  Dim shell_Name,name as String
		  Dim i,maxjob as Integer
		  Dim g as FolderItem
		  //--------------------------------------------
		  
		  // Remove d3d files on local 
		  g=gRTOG.Plan(Plan_Index).Path
		  name=MC_file_name+str(beam+1)+"00_"+VMC(dmx_index).DMX.dmx_name+".d3d"
		  g=g.Child(name)
		  if g.Exists Then
		    g.Delete
		  end
		  
		  good=False
		  if vmc(dmx_index).BEAMS(beam).auto_shell Then
		    good=vmc_Determine_Shell(dmx_index,beam)
		    if good=False Then
		      Return // No shell to run on
		    end
		  end
		  
		  
		  good=False
		  good=vmc_Get_Shell_Enviro(dmx_index,beam)
		  if good=False or cc=nil Then
		    Return // No shell to run on
		  end
		  
		  
		  maxjob=cc.shell.MaxJobs-cc.shell.ActiveJobs
		  if maxjob<1 Then
		    Return //No shell to run on
		  end
		  
		  
		  good=vmc_Get_Shell_Enviro(dmx_index,beam)
		  good=gVMC.vmc_Make_Input_file(dmx_index,beam)
		  
		  
		  // Get Shell
		  good=vmc_Get_Shell_Enviro(dmx_index,beam)
		  if good=False Then
		    Return
		  end
		  
		  shell_Name=cc.shell.title
		  found=False
		  for i=0 to UBound(VMC(dmx_index).DMX.shell_name)
		    if shell_Name=VMC(dmx_index).DMX.shell_name(i) Then
		      found=True
		    end
		  next
		  // Need to upload dmx file
		  if found=False Then
		    vmc_Upload_DMX(dmx_index,beam)
		  end
		  
		  //Write the VMC input file
		  if dmx_index>-1 and dmx_index<=UBound(VMC) Then
		    if beam>-1 and beam<=UBound(VMC(dmx_index).BEAMS) Then
		      good=VMC(dmx_index).Write_VMC_Inputfile(beam)
		    end
		  end
		  if good=False then
		    Return
		  end
		  
		  gVMC.vmc_softln(dmx_index,beam)
		  gVMC.vmc_Upload_input(dmx_index,beam)
		  gVMC.vmc_Make_Script(dmx_index,Beam)
		  gVMC.vmc(dmx_index).BEAMS(beam).progress=0
		  gVMC.vmc(dmx_index).BEAMS(beam).simtime=0
		  gVMC.vmc(dmx_index).BEAMS(beam).uncertainty=0
		  gVMC.vmc(dmx_index).BEAMS(beam).downloaded_d3d=False
		  gVMC.vmc(dmx_index).BEAMS(beam).downloaded_hed=False
		  gVMC.VMC(dmx_index).Write_VMC_Settings
		  gTimer_Run.Period=1
		  gTimer_Run.Reset
		  Window_Treatment.mc_vmc_beam_progress
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub vmc_Set_DMX_Settings()
		  Dim i,k,x as Integer
		  Dim ss as RTOG_Structure
		  
		  
		  if UBound(gRTOG.Scan)>-1 Then
		    
		    
		    DMXSettings.Del_X=gRTOG.Scan(0).Grid_Units_Width
		    DMXSettings.Del_y=gRTOG.Scan(0).Grid_Units_Height
		    DMXSettings.Del_z=gRTOG.Scan(0).Slice_Thickness
		    
		    
		    
		    
		    DMXSettings.X_Max=gVis.xoff_set-gVis.scale_width/2 +gRTOG.Scan(0).Grid_Units_Width*gRTOG.Scan(0).Size_of_Dimension1
		    DMXSettings.X_min=gVis.xoff_set-gVis.scale_width/2
		    
		    
		    DMXSettings.z_Max=gRTOG.Scan(UBound(gRTOG.Scan)).Z_Value+gRTOG.Scan(0).Slice_Thickness/2
		    DMXSettings.z_min=gRTOG.Scan(0).Z_Value-gRTOG.Scan(0).Slice_Thickness/2
		    
		    DMXSettings.y_Max=gVis.yoff_set-gVis.scale_height/2+gRTOG.Scan(0).Grid_Units_Height*gRTOG.Scan(0).Size_of_Dimension2
		    DMXSettings.y_min=gVis.yoff_set-gVis.scale_height/2
		    
		    DMXSettings.Clean_density=Format(vmc_clean_density,"-#.####")
		    
		    
		    
		    for i=0 to UBound(gRTOG.Structures)
		      if gRTOG.Structures(i).Structure_Name="BODY" or gRTOG.Structures(i).Structure_Name="EXTERNAL"  Then
		        ss=gRTOG.Structures(i)
		        DMXSettings.X_Max=-100000
		        DMXSettings.X_Min=100000
		        DMXSettings.y_Max=-10000
		        DMXSettings.y_Min=10000
		        DMXSettings.Cleancontour=i
		        
		        
		        for i=0 to UBound(ss.Structure_Data)
		          for k=0 to UBound(ss.Structure_Data(i).Segments)
		            for x=0 to UBound(ss.Structure_Data(i).Segments(k).points)
		              if ss.Structure_Data(i).Segments(k).points(x).x>DMXSettings.X_Max Then
		                DMXSettings.X_Max=ss.Structure_Data(i).Segments(k).points(x).x+1
		              end
		              if ss.Structure_Data(i).Segments(k).points(x).x<DMXSettings.X_Min Then
		                DMXSettings.X_Min=ss.Structure_Data(i).Segments(k).points(x).x-1
		              end
		              if ss.Structure_Data(i).Segments(k).points(x).y<DMXSettings.Y_min Then
		                DMXSettings.y_Min=ss.Structure_Data(i).Segments(k).points(x).y-1
		              end
		              if ss.Structure_Data(i).Segments(k).points(x).y>DMXSettings.Y_max Then
		                DMXSettings.Y_max=ss.Structure_Data(i).Segments(k).points(x).y+1
		              end
		              
		              
		              
		              
		            next
		          next
		        next
		        Exit
		      End
		    next
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub vmc_Softln(dmx_index as integer, beam as integer)
		  //------------------------------------------
		  // Create Soft link between egs phase space file and xvmc
		  //
		  //------------------------------------------
		  dim slink,dir,path as string
		  dim good as Boolean
		  //------------------------------------------
		  
		  if gBEAM.egs_Get_Directory(Beam) Then
		    
		    if VMC(dmx_index).BEAMS(beam).devicetype=10 or  VMC(dmx_index).BEAMS(beam).devicetype=110 Then
		      
		      path=gShells.Shells(gBEAM.Beams(beam).egs_Shell_Index).egsnrc_folder_path
		      path=path+gBEAM.Beams(beam).egs_BEAMnrc_dir
		      
		      if gBEAM.Beams(beam).egs_Phsp_link Then
		        path=path+"/"+gBEAM.Beams(beam).egs_Phsp_name+" "
		      else
		        path=path+"/"+MC_file_name+str(beam+1)+".egsphsp1 "
		      end
		      path=path+MC_file_name+str(beam+1)+".egs4phsp1"
		      
		      if vmc_Get_Shell_Enviro(dmx_index,beam) Then
		        dir=xvmc_folder+"dat/"
		        cc.dir=dir
		        cc.command ="rm -f "+MC_file_name+str(beam+1)+".egs4phsp1"
		        MMCTP_Shell_Run.All.Append cc
		      end
		      
		      
		      if vmc_Get_Shell_Enviro(dmx_index,beam) Then
		        cc.dir=dir
		        cc.command ="ln -s "+path
		        MMCTP_Shell_Run.All.Append cc
		      end
		      
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub vmc_Upload_DMX(dmx_index as integer, beam as Integer)
		  //----------------------------------------------------------
		  // Uploads a DMX file to the correct Login Shell
		  //
		  // 1, Make vmc dmx folder on cluster
		  // 2, Upload DMX to cluster
		  // 3 Upload hed file
		  //----------------------------------------------------------
		  Dim path,temp,vmc_directoy,tmpstr,location(-1),dmxfile_name as string
		  Dim f as FolderItem
		  Dim i as integer
		  Dim good as Boolean
		  //----------------------------------------------------------
		  
		  //Directory of VMC files
		  temp=gShells.Shells(VMC(dmx_index).BEAMS(beam).shell_Index).vmc_folder
		  vmc_directoy=xvmc_folder+gRTOG.Patient_ID+gRTOG.StudyID+gRTOG.SeriesNumber+"_"+vmc(dmx_index).DMX.dmx_name+"/"
		  
		  
		  
		  //Make dmx directory
		  if vmc_Get_Shell_Enviro(dmx_index,beam) Then
		    cc.command ="mkdir "+gRTOG.Patient_ID+gRTOG.StudyID+gRTOG.SeriesNumber+"_"+vmc(dmx_index).DMX.dmx_name
		    cc.dir=xvmc_folder
		    MMCTP_Shell_Run.All.Append cc
		  end
		  
		  
		  //upload dmx
		  if vmc_Get_Shell_Enviro(dmx_index,beam) Then
		    dmxfile_name=gRTOG.Patient_ID+gRTOG.StudyID+gRTOG.SeriesNumber+"_"+vmc(dmx_index).dmx.dmx_name+".dmx"
		    f=new FolderItem
		    f=gRTOG.Path.Child("McGill_RT")
		    f=f.child(dmxfile_name)
		    path=f.ShellPath
		    cc.inpfilename=f.Name
		    cc.dir=vmc_directoy
		    cc.FTP_Files=f
		    cc.FTP_Local_Path=f.ShellPath
		    cc.FTP_Remote_Path=vmc_directoy+f.Name
		    cc.FTP_Put_file=true
		    cc.FTP_Now=True
		    cc.vmc_dmx_upload=True
		    cc.vmc_dmx_index=dmx_index
		    cc.command="put "+f.ShellPath+" "+vmc_directoy+f.Name
		    MMCTP_Shell_Run.All.Append cc
		  end
		  
		  
		  
		  
		  
		  
		  
		  
		  //upload header
		  if vmc_Get_Shell_Enviro(dmx_index,beam) then
		    f=f.Parent
		    dmxfile_name=gRTOG.Patient_ID+gRTOG.StudyID+gRTOG.SeriesNumber+"_"+vmc(dmx_index).DMX.dmx_name+".hed"
		    f=f.child(dmxfile_name)
		    cc.FTP_Files=f
		    cc.FTP_Put_file=true
		    cc.FTP_Local_Path=f.ShellPath
		    cc.FTP_Remote_Path=vmc_directoy+f.Name
		    cc.dir=vmc_directoy
		    cc.FTP_Now=True
		    cc.inpfilename=f.Name
		    cc.command="put "+f.ShellPath+" "+vmc_directoy+f.Name
		    MMCTP_Shell_Run.All.Append cc
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub vmc_Upload_input(dmx_int as integer, beam as integer)
		  //--------------------------------------------
		  // Uploading input file"
		  //
		  //--------------------------------------------
		  Dim path,cd,tmpstr,location(-1) as string
		  Dim f as FolderItem
		  Dim i as integer
		  //==========================
		  
		  
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  path=f.ShellPath
		  
		  
		  cd=xvmc_folder+gRTOG.Patient_ID+gRTOG.StudyID+gRTOG.SeriesNumber+"_"+vmc(dmx_int).DMX.dmx_name+"/"
		  
		  
		  // Remove old files
		  if vmc_Get_Shell_Enviro(dmx_int,beam) Then
		    cc.command="rm -f "+MC_file_name+str(beam+1)+".*  " +"R"+MC_file_name+str(beam+1)+"_*  " +MC_file_name+str(beam+1)+"00.*"+" "+MC_file_name+str(beam+1)+"_*"
		    cc.dir=cd
		    MMCTP_Shell_Run.All.Append cc
		  end
		  
		  
		  
		  //upload new files
		  if vmc_Get_Shell_Enviro(dmx_int,beam) Then
		    tmpstr=path+"/"+MC_file_name+str(beam+1)+".vmc"
		    f=f.Child(MC_file_name+str(beam+1)+".vmc")
		    cc.command="put "+tmpstr+" "+cd+MC_file_name+str(beam+1)+".vmc"
		    cc.FTP_Files=f
		    cc.FTP_Now=True
		    cc.inpfilename=f.Name
		    cc.FTP_Put_file=True
		    cc.FTP_Local_Path=f.ShellPath
		    cc.FTP_Remote_Path=cd+f.Name
		    MMCTP_Shell_Run.All.Append cc
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_Defaults()
		  //------------------------------------
		  //
		  //
		  //------------------------------------
		  Dim f as FolderItem
		  Dim ts as TextOutputStream
		  Dim ss as String
		  Dim i as Integer
		  //------------------------------------
		  
		  
		  f=gPref.VMC_fi
		  f=f.Child("VMC-Settings.txt")
		  
		  ts=f.CreateTextFile
		  i=1
		  While ts=nil
		    i=i+1
		    ts=f.CreateTextFile
		    if i>100 Then
		      Return
		    end
		  wend
		  
		  if auto_run Then
		    ss="yes"
		  else
		    ss="no"
		  end
		  Spaces(ts,"Auto Run",40,ss)
		  
		  
		  if auto_refresh Then
		    ss="yes"
		  else
		    ss="no"
		  end
		  Spaces(ts,"Auto Refresh",40,ss)
		  
		  if auto_importD Then
		    ss="yes"
		  else
		    ss="no"
		  end
		  Spaces(ts,"Auto Dose",40,ss)
		  
		  Spaces(ts,"DosetoWater",40,Format(vmc_dose_water,"-#.####"))
		  Spaces(ts,"ChrLimit",40,Format(vmc_chrLimit,"#"))
		  Spaces(ts,"DMXRes",40,Format(vmc_Res_X,"-#.###")+","+Format(vmc_Res_y,"-#.###")+","+Format(vmc_Res_z,"-#.###"))
		  Spaces(ts,"DMXName",40,DMX_Name)
		  Spaces(ts,"VMC-Deveice-Type",40,Format(Default_Device_Type,"#"))
		  Spaces(ts,"VMC-Hist",40,Format(vmc_numb_hist,"-#"))
		  
		  
		  ts.Close
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		AddDoseList(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		auto_importD As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		auto_refresh As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		auto_run As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		BEAMnrc_dir As String
	#tag EndProperty

	#tag Property, Flags = &h0
		cc As class_mmCTP_Commands
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			0 for phsp files
			1 for Shared lib
		#tag EndNote
		Default_Device_Type As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		DMXSettings As Class_VMC_DMX_Settings
	#tag EndProperty

	#tag Property, Flags = &h0
		DMX_Name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		VMC(-1) As class_vmC
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_adddose As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_chrLimit As Integer = 20
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_clean_density As Single = .0012
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_DMX_make As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_dose_water As Single = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_numb_hist As Int64 = -20
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_Res_X As Single = .5
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_Res_Y As Single = .5
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_Res_Z As Single = .5
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_run As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_status As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		xvmc_folder As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="auto_importD"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="auto_refresh"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="auto_run"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BEAMnrc_dir"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Default_Device_Type"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DMX_Name"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
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
		#tag ViewProperty
			Name="vmc_adddose"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_chrLimit"
			Group="Behavior"
			InitialValue="20"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_clean_density"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_DMX_make"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_dose_water"
			Group="Behavior"
			InitialValue="1"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_numb_hist"
			Group="Behavior"
			InitialValue="-20"
			Type="Int64"
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_Res_X"
			Group="Behavior"
			InitialValue=".5"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_Res_Y"
			Group="Behavior"
			InitialValue=".5"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_Res_Z"
			Group="Behavior"
			InitialValue=".5"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_run"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_status"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="xvmc_folder"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
