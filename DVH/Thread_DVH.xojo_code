#tag Class
Protected Class Thread_DVH
Inherits Thread
	#tag Event
		Sub Run()
		  Dim i,k,l as integer
		  Dim b1, b2 as Boolean
		  
		  
		  if HR_struc Then
		    TP_DVH_Text="Updating contour points for DVH calculations"
		    HR_struc=False
		    gRTOG.Structures.Structures_HR
		  end
		  
		  
		  if gRTOG<> nil Then
		    for l=0 to UBound(gRTOG.plan)
		      for k=0 to UBound(gRTOG.plan(l).dose)
		        if ubound(grtog.Structures.Structures) >-1  then
		          for i=0 to UBound(grtog.Structures.Structures)
		            if grtog.Structures.Structures(i).Loaded_Points and grtog.Structures.Structures(i).DVH_Calculate Then
		              if Calculate_DVH_HR(i,l,k,False) or Calculate_HF_VH(i) Then
		                gDVH.Update_Window=True
		              end
		            end
		          Next
		        end
		      next
		    next
		  end
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function Calculate_DVH(struc as integer, PIndex as integer, RTdose_index as Integer, override as Boolean) As Boolean
		  //---------------------------------------------------
		  // Calculates one DVH based on the
		  // selected structure volume and dose distribution
		  //
		  //=========================
		  Dim file as RTOG_Structure_Slice
		  Dim poly,p2,p3 as class_Polygon
		  Dim j, ii,jj,k,n,di,tmpint,pixx,pixy,dose_int as integer
		  Dim  cmx,cmy,cmz,tmpdose,_
		  dose_error(-1),dose_values(-1),std,xp, yp,polysx, polysy as double
		  Dim avg_d,percent_dose as Double
		  Dim tmpsurf as RGBSurface
		  Dim doseM as RTOG_Dose_Distribution
		  DIm DVH as Class_DVH_One
		  Dim out,ttemp as String
		  Dim found,arepoints as Boolean
		  //==================================
		  
		  DVH = new Class_DVH_One
		  DVH.DVH_bins=DVHBins
		  
		  if PIndex<0 or PIndex>UBound(gRTOG.Plan) Then
		    Return False
		  else
		    if RTdose_index<0 or RTdose_index>UBound(gRTOG.Plan(PIndex).Dose) Then
		      Return False
		    end
		  end
		  //Load Dose
		  doseM=gRTOG.plan(PIndex).dose(RTdose_index)
		  
		  
		  DVH.Dose_Units=doseM.Dose_Units
		  
		  ReDim dvh.DVH(dvh.DVH_bins-1)
		  
		  DVH.name=gRTOG.Plan(PIndex).Plan_ID+String_Separate+doseM.dose_name
		  DVH.Dose_Name=doseM.Dose_name
		  DVH.Calculate=grtog.Structures.Structures(struc).DVH_Calculate
		  
		  //if no structure and no patient loaded then then return
		  DVH.pixelvolume=gvis.scale_height*gvis.scale_width*gvis.scale_thickness
		  
		  //for each structure
		  DVH.struc_names=grtog.Structures.Structures(struc).Structure_Name
		  
		  
		  //Check if DVH is already calculated
		  found=False
		  for n=0 to UBound(All_DVH)
		    if All_DVH(n).Name=dvh.Name and All_DVH(n).struc_names=DVH.struc_names Then
		      found=True
		      
		      // If found then override and remove
		      if override Then
		        All_DVH.Remove n
		        found=False
		      end
		    end
		  Next
		  
		  
		  if found Then
		    Return False
		  end
		  
		  
		  DVH.svolume=0
		  DVH.sbigvolume=0
		  DVH.ssmallvolume=0
		  DVH.svolumeerror=0
		  DVH.NumberofPixels=0
		  for j=0 to DVH.DVH_bins-1 ' DVH bins
		    DVH.DVH(j)=0.0
		  next
		  DVH.stru_color=gvis.colour(struc)
		  DVH.mindose=500000000000000
		  DVH.maxdose=-50000000000000
		  DVH.svolume=grtog.Structures.Structures(struc).Structure_Volume
		  
		  
		  //show progress along the way...to know where we are.
		  out=grtog.Structures.Structures(struc).Structure_Name+" DVH caluclation on dose : "+doseM.Dose_name+", progress : "
		  
		  for n=0 to ubound(gRTOG.Scan)
		    //for each structure find volume in cm^3...
		    file = new RTOG_Structure_Slice
		    file = grtog.Structures.Structures(struc).structure_Data(n)
		    //for each segment of each structure.
		    
		    TP_DVH_Text=out+Format((n+1)*100/(UBound(gRTOG.Scan)+1),"#")+" %"
		    
		    
		    for jj=0 to UBound(grtog.Structures.Structures(struc).structure_Data(n).Axial_Points_Y)
		      
		      cmx= grtog.Structures.Structures(struc).structure_Data(n).Axial_Points_X(jj)*gvis.scale_width+gVis.xoff_set   'cm coordinate of pixel center!
		      cmy= grtog.Structures.Structures(struc).structure_Data(n).Axial_Points_Y(jj)*gvis.scale_height+gVis.yoff_set   'cm coordinate of pixel center
		      cmz=gRTOG.Scan(n).Z_Value   //centerofthezslice
		      
		      tmpdose=RTOG_Dose_Interpolate(cmx,cmy,cmz,doseM)  //interpolate in the current plan_index and dose_index
		      
		      dose_values.append tmpdose
		      if tmpdose >DVH.maxdose then ' Get the max dose per Structure
		        DVH.maxdose=tmpdose
		        ttemp=Format(cmx,"#.###e")+", "+Format(cmy,"#.###e")+", "+Format(cmz,"#.###e")
		      elseif tmpdose <DVH.mindose then ' Get the min dose per Structure
		        DVH.mindose=tmpdose
		      end
		      
		      tmpdose=RTOG_Dose_Errors_Interpolate(cmx,cmy,cmz,doseM)  //interpolate in the current plan_index and dose_index
		      dose_error.append tmpdose
		      DVH.NumberofPixels=DVH.NumberofPixels+1  //volume in terms of # of pixel...
		      
		    next // loop for all ny points End of tmpimage lookup
		    
		  next ' End for each scan
		  
		  
		  '=================================================
		  //-----------------Now calculate the DVH--------------------
		  for j=0 to UBound(dose_values)
		    tmpdose=dose_values(j)
		    if (DVH.maxdose-DVH.mindose)<>0 Then
		      percent_dose=(tmpdose-DVH.mindose)/(DVH.maxdose-DVH.mindose)
		    else
		      percent_dose=0
		    end
		    dose_int=Floor(dvh.DVH_bins*percent_dose) 'to get integer percentage of dose
		    if dose_int<0  Then
		      dose_int=0
		    elseif dose_int>(dvh.DVH_bins-1) Then
		      dose_int=dvh.DVH_bins-1
		    end
		    DVH.DVH(dose_int)=DVH.DVH(dose_int)+1
		  next
		  //----------------DVH---------------------
		  
		  
		  // Average Dose, and Uncertainty
		  avg_d=0
		  for n=0 to UBound(dose_values ) 
		    avg_d=avg_d+dose_values(n)
		  next
		  DVH.avgdose=avg_d/(UBound(dose_values)+1)
		  
		  avg_d=0
		  for n=0 to UBound(dose_error) 
		    avg_d=avg_d+dose_error(n)
		  next
		  DVH.avg_error=avg_d/(UBound(dose_error)+1)
		  
		  
		  
		  for n=0 to dvh.DVH_bins-1
		    if DVH.NumberofPixels<=0 then
		      DVH.DVH(n)=0
		    else
		      DVH.DVH(n)=DVH.DVH(n)*100/DVH.NumberofPixels
		    end
		  next
		  
		  
		  
		  
		  //----------------Calculate the StDev ---------------------
		  std=0
		  for n=0 to UBound(dose_values)
		    std=std+(dose_values(n)-dvh.avgdose)^2
		  next
		  std=Sqrt(std/(UBound(dose_values)+1))
		  DVH.stdev=std
		  
		  
		  //----------------Calculate D50 ---------------------
		  DVH.D50=DVH.Calculate_Dose_at_Volume_Percent(50)
		  
		  
		  gDVH.All_DVH.Append DVH
		  gDVH.Write_DVH_File(UBound(All_DVH))
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Calculate_DVH_HR(struc as integer, PIndex as integer, RTdose_index as Integer, override as Boolean) As Boolean
		  //---------------------------------------------------
		  // Calculates one DVH based on the
		  // selected structure volume and dose distribution
		  //
		  //=========================
		  Dim file as RTOG_Structure_Slice
		  Dim poly,p2,p3 as class_Polygon
		  Dim j, ii,jj,k,n,di,tmpint,pixx,pixy,dose_int as integer
		  Dim  cmx,cmy,cmz,tmpdose,_
		  dose_error(-1),dose_values(-1),std,xp, yp,polysx, polysy as double
		  Dim avg_d,percent_dose as Double
		  Dim tmpsurf as RGBSurface
		  Dim doseM as RTOG_Dose_Distribution
		  DIm DVH as Class_DVH_One
		  Dim out,ttemp as String
		  Dim found,arepoints as Boolean
		  //==================================
		  
		  DVH = new Class_DVH_One
		  DVH.DVH_bins=DVHBins
		  
		  if PIndex<0 or PIndex>UBound(gRTOG.Plan) Then
		    Return False
		  elseif grtog.Structures.Structures(struc).Loaded_PointsHR=False or grtog.Structures.Structures(struc).Loaded_PolyHR=False Then
		    TP_DVH_Text=grtog.Structures.Structures(struc).Structure_Name+" not ready for DVH calculations; creating structure points"
		    Return False
		  else
		    if RTdose_index<0 or RTdose_index>UBound(gRTOG.Plan(PIndex).Dose) Then
		      Return False
		    end
		  end
		  //Load Dose
		  doseM=gRTOG.plan(PIndex).dose(RTdose_index)
		  
		  
		  DVH.Dose_Units=doseM.Dose_Units
		  ReDim dvh.DVH(dvh.DVH_bins-1)
		  DVH.name=gRTOG.Plan(PIndex).Plan_ID+String_Separate+doseM.dose_name
		  DVH.Dose_Name=doseM.Dose_name
		  DVH.Calculate=grtog.Structures.Structures(struc).DVH_Calculate
		  DVH.Res_X=grtog.Structures.HR_Res_X
		  DVH.Res_Y=grtog.Structures.HR_Res_Y
		  DVH.Res_Z=grtog.Structures.HR_Res_z
		  DVH.pixelvolume=DVH.Res_X*DVH.Res_Y*DVH.Res_Z
		  //for each structure
		  DVH.struc_names=grtog.Structures.Structures(struc).Structure_Name
		  
		  
		  //Check if DVH is already calculated
		  found=False
		  for n=0 to UBound(All_DVH)
		    if All_DVH(n).Name=dvh.Name and All_DVH(n).struc_names=DVH.struc_names Then
		      found=True
		      // If found then override and remove
		      if override Then
		        All_DVH.Remove n
		        found=False
		      end
		    end
		  Next
		  
		  
		  if found Then
		    Return False
		  end
		  
		  
		  DVH.svolume=0
		  DVH.sbigvolume=0
		  DVH.ssmallvolume=0
		  DVH.svolumeerror=0
		  DVH.NumberofPixels=0
		  for j=0 to DVH.DVH_bins-1 ' DVH bins
		    DVH.DVH(j)=0.0
		  next
		  DVH.stru_color=gvis.colour(struc)
		  DVH.mindose=500000000000000
		  DVH.maxdose=-50000000000000
		  DVH.svolume=grtog.Structures.Structures(struc).Structure_Volume
		  
		  
		  //show progress along the way...to know where we are.
		  out=grtog.Structures.Structures(struc).Structure_Name+" DVH caluclation on dose : "+doseM.Dose_name+", progress : "
		  
		  for n=0 to ubound(grtog.Structures.Structures(struc).Structure_DataHR)
		    //for each structure find volume in cm^3...
		    file = new RTOG_Structure_Slice
		    file = grtog.Structures.Structures(struc).Structure_DataHR(n)
		    //for each segment of each structure.
		    
		    TP_DVH_Text=out+Format((n+1)*100/(ubound(grtog.Structures.Structures(struc).Structure_DataHR)+1),"#")+" %"
		    
		    
		    for jj=0 to UBound(grtog.Structures.Structures(struc).Structure_DataHR(n).Axial_Points_Y)
		      cmx= grtog.Structures.Structures(struc).Structure_DataHR(n).Axial_Points_X(jj)*grtog.Structures.HR_Res_X+gVis.xoff_set   'cm coordinate of pixel center!
		      cmy= grtog.Structures.Structures(struc).Structure_DataHR(n).Axial_Points_Y(jj)*grtog.Structures.HR_Res_Y+gVis.yoff_set   'cm coordinate of pixel center
		      cmz=grtog.Structures.Structures(struc).Structure_DataHR(n).Z  //centerofthezslice
		      
		      tmpdose=RTOG_Dose_Interpolate(cmx,cmy,cmz,doseM)  //interpolate in the current plan_index and dose_index
		      
		      dose_values.append tmpdose
		      if tmpdose >DVH.maxdose then ' Get the max dose per Structure
		        DVH.maxdose=tmpdose
		        ttemp=Format(cmx,"#.###e")+", "+Format(cmy,"#.###e")+", "+Format(cmz,"#.###e")
		      elseif tmpdose <DVH.mindose then ' Get the min dose per Structure
		        DVH.mindose=tmpdose
		      end
		      
		      tmpdose=RTOG_Dose_Errors_Interpolate(cmx,cmy,cmz,doseM)  //interpolate in the current plan_index and dose_index
		      dose_error.append tmpdose
		      DVH.NumberofPixels=DVH.NumberofPixels+1  //volume in terms of # of pixel...
		      
		    next // loop for all ny points End of tmpimage lookup
		    
		  next ' End for each scan
		  
		  TP_DVH_Text=out+" 100 %"
		  
		  '=================================================
		  //-----------------Now calculate the DVH--------------------
		  for j=0 to UBound(dose_values)
		    tmpdose=dose_values(j)
		    if (DVH.maxdose-DVH.mindose)<>0 Then
		      percent_dose=(tmpdose-DVH.mindose)/(DVH.maxdose-DVH.mindose)
		    else
		      percent_dose=0
		    end
		    dose_int=Floor(dvh.DVH_bins*percent_dose) 'to get integer percentage of dose
		    if dose_int<0  Then
		      dose_int=0
		    elseif dose_int>(dvh.DVH_bins-1) Then
		      dose_int=dvh.DVH_bins-1
		    end
		    DVH.DVH(dose_int)=DVH.DVH(dose_int)+1
		  next
		  //----------------DVH---------------------
		  
		  
		  // Average Dose, and Uncertainty
		  avg_d=0
		  for n=0 to UBound(dose_values ) 
		    avg_d=avg_d+dose_values(n)
		  next
		  DVH.avgdose=avg_d/(UBound(dose_values)+1)
		  
		  avg_d=0
		  for n=0 to UBound(dose_error) 
		    avg_d=avg_d+dose_error(n)
		  next
		  DVH.avg_error=avg_d/(UBound(dose_error)+1)
		  
		  
		  
		  for n=0 to dvh.DVH_bins-1
		    if DVH.NumberofPixels<=0 then
		      DVH.DVH(n)=0
		    else
		      DVH.DVH(n)=DVH.DVH(n)*100/DVH.NumberofPixels
		    end
		  next
		  
		  
		  
		  
		  //----------------Calculate the StDev ---------------------
		  std=0
		  for n=0 to UBound(dose_values)
		    std=std+(dose_values(n)-dvh.avgdose)^2
		  next
		  std=Sqrt(std/(UBound(dose_values)+1))
		  DVH.stdev=std
		  
		  
		  //----------------Calculate D50 ---------------------
		  DVH.D50=DVH.Calculate_Dose_at_Volume_Percent(50)
		  
		  
		  gDVH.All_DVH.Append DVH
		  gDVH.Write_DVH_File(UBound(All_DVH))
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Calculate_HF_VH(struc as integer) As Boolean
		  //---------------------------------------------------
		  // Calculates one DVH based on the
		  // selected structure volume and dose distribution
		  //
		  // This method calculates a Hounsfield Unit DVH
		  //=========================
		  Dim file as RTOG_Structure_Slice
		  Dim poly,p2,p3 as class_Polygon
		  Dim j, ii,jj,k,n,di,tmpint,pixx,pixy,dose_int as integer
		  Dim tmparea, tmpvolume,cmx,cmy,cmz,tmpdose,_
		  dose_error(-1),dose_values(-1),std,xp, yp,polysx, polysy as double
		  Dim avg_d,percent_dose as Double
		  Dim tmpimage as picture
		  DIm DVH as Class_DVH_One
		  Dim out,ttemp as String
		  Dim found as Boolean
		  //==================================
		  
		  DVH = new Class_DVH_One
		  DVH.DVH_bins=gDVH.DVHBins
		  DVH.Dose_Units="HU"
		  
		  
		  ReDim dvh.DVH(dvh.DVH_bins-1)
		  DVH.name="HU Histogram"
		  
		  //if no structure and no patient loaded then then return
		  DVH.pixelvolume=gvis.scale_height*gvis.scale_width*gvis.scale_thickness
		  
		  //for each structure
		  DVH.struc_names=grtog.Structures.Structures(struc).Structure_Name
		  
		  
		  //Check if DVH is already calculated
		  found=False
		  for n=0 to UBound(All_DVH)
		    if All_DVH(n).Name=dvh.Name and All_DVH(n).struc_names=DVH.struc_names Then
		      found=True
		    end
		  Next
		  if found Then
		    Return False
		  end
		  
		  
		  DVH.svolume=0
		  DVH.sbigvolume=0
		  DVH.ssmallvolume=0
		  DVH.svolumeerror=0
		  DVH.NumberofPixels=0
		  for j=0 to DVH.DVH_bins-1 ' DVH bins
		    DVH.DVH(j)=0.0
		  next
		  DVH.stru_color=gvis.colour(struc)
		  DVH.mindose=500000000000000
		  DVH.maxdose=-50000000000000
		  DVH.svolume=grtog.Structures.Structures(struc).Structure_Volume
		  
		  
		  //show progress along the way...to know where we are.
		  out=grtog.Structures.Structures(struc).Structure_Name+" HUVH caluclation on, progress : "
		  
		  for n=0 to ubound(gRTOG.Scan)
		    TP_DVH_Text=out+Format((n+1)*100/(UBound(gRTOG.Scan)+1),"#")+" %"
		    for jj=0 to UBound(grtog.Structures.Structures(struc).structure_Data(n).Axial_Points_Y)
		      cmx= grtog.Structures.Structures(struc).structure_Data(n).Axial_Points_X(jj)*gvis.scale_width+gVis.xoff_set   'cm coordinate of pixel center!
		      cmy= grtog.Structures.Structures(struc).structure_Data(n).Axial_Points_Y(jj)*gvis.scale_height+gVis.yoff_set   'cm coordinate of pixel center
		      cmz=gRTOG.Scan(n).Z_Value   //centerofthezslice
		      tmpdose=RTOG_Image_Interpolate(cmx,cmy,cmz)  //interpolate in the current plan_index and dose_index
		      dose_values.append tmpdose
		      if tmpdose >DVH.maxdose then ' Get the max dose per Structure
		        DVH.maxdose=tmpdose
		        ttemp=Format(cmx,"#.###e")+", "+Format(cmy,"#.###e")+", "+Format(cmz,"#.###e")
		      elseif tmpdose <DVH.mindose then ' Get the min dose per Structure
		        DVH.mindose=tmpdose
		      end
		      DVH.NumberofPixels=DVH.NumberofPixels+1  //volume in terms of # of pixel...
		    next //Loop for all nx points
		  next // loop for all ny points End of tmpimage lookup
		  
		  
		  
		  
		  '=================================================
		  //-----------------Now calculate the DVH--------------------
		  for j=0 to UBound(dose_values)
		    tmpdose=dose_values(j)
		    if (DVH.maxdose-DVH.mindose)<>0 Then
		      percent_dose=(tmpdose-DVH.mindose)/(DVH.maxdose-DVH.mindose)
		    else
		      percent_dose=0
		    end
		    dose_int=Floor(dvh.DVH_bins*percent_dose) 'to get integer percentage of dose
		    if dose_int<0  Then
		      dose_int=0
		    elseif dose_int>(dvh.DVH_bins-1) Then
		      dose_int=dvh.DVH_bins-1
		    end
		    DVH.DVH(dose_int)=DVH.DVH(dose_int)+1
		  next
		  //----------------DVH---------------------
		  
		  
		  // Average Dose, and Uncertainty
		  avg_d=0
		  for n=0 to UBound(dose_values ) 
		    avg_d=avg_d+dose_values(n)
		  next
		  DVH.avgdose=avg_d/(UBound(dose_values)+1)
		  
		  avg_d=0
		  for n=0 to UBound(dose_error) 
		    avg_d=avg_d+dose_error(n)
		  next
		  DVH.avg_error=avg_d/(UBound(dose_error)+1)
		  
		  
		  
		  for n=0 to dvh.DVH_bins-1
		    if DVH.NumberofPixels<=0 then
		      DVH.DVH(n)=0
		    else
		      DVH.DVH(n)=DVH.DVH(n)*100/DVH.NumberofPixels
		    end
		  next
		  
		  
		  
		  
		  //----------------Calculate the StDev ---------------------
		  std=0
		  for n=0 to UBound(dose_values)
		    std=std+(dose_values(n)-dvh.avgdose)^2
		  next
		  std=Sqrt(std/(UBound(dose_values)+1))
		  DVH.stdev=std
		  
		  
		  //----------------Calculate D50 ---------------------
		  DVH.D50=DVH.Calculate_Dose_at_Volume_Percent(50)
		  
		  gDVH.All_DVH.Append DVH
		  gDVH.Write_DVH_File(UBound(All_DVH))
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Delete_DVH(num as Integer)
		  //----------------------------------
		  Dim f as FolderItem
		  Dim i,j as integer
		  Dim dvh_file, line as String
		  //----------------------------------
		  
		  
		  f=gRTOG.path.Child("McGill_RT")
		  
		  if f=nil then
		    Return
		  end
		  
		  if num>-1 And num<=UBound(All_DVH)  Then
		    f=f.Child(All_DVH(num).struc_names+"_-_"+All_DVH(num).Name+".DVH")
		    if f.Exists Then
		      f.Delete
		    end
		  end
		  All_DVH.Remove num
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Delete_DVH_Set(dname as String)
		  //----------------------------------
		  // Method to remove all DVHs that belong to a specific dose distribution
		  //
		  //----------------------------------
		  Dim f,k as FolderItem
		  Dim i,j as integer
		  Dim dvh_file, line,dvhname_full,DVHdname as String
		  //----------------------------------
		  
		  
		  k =gRTOG.path.Child("McGill_RT")
		  
		  if k =nil then
		    Return
		  end
		  
		  for i= UBound(All_DVH)  downto 0 
		    dvhname_full=All_DVH(i).Name
		    DVHdname=Trim(NthField(dvhname_full,String_Separate,2))
		    if dname=DVHdname Then
		      f=k.Child(All_DVH(i).struc_names+"_-_"+All_DVH(i).Name+".DVH")
		      if f<> nil Then
		        if f.Exists Then
		          f.Delete
		        end
		      end
		      All_DVH.Remove i
		    end
		  Next
		  
		  Return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Export_DVH_DoseStats(DVH as Class_DVH_One)
		  //-------------------------------
		  //
		  //
		  //-------------------------------
		  Dim ts as TextOutputStream
		  Dim f as FolderItem
		  Dim dvh_file as String
		  //-------------------------------
		  
		  dvh_file=""
		  f=GetSaveFolderItem("","DoseStats-"+gRTOG.Patient_Name+"-"+gRTOG.Patient_Surname+"-"+dvh.Dose_Name+"-"+DVH.struc_names)
		  if f<>nil then
		    dvh_file=dvh_file+gDoseStats.Export_Stat_Header+local_endline
		    dvh_file=dvh_file+gDoseStats.Export_Stat(DVH)+local_endline
		    ts=f.CreateTextFile
		    if ts<> nil Then
		      ts.Write dvh_file
		      ts.Close
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Export_DVH_Text(DVH as Class_DVH_One)
		  //-------------------------------
		  //
		  //
		  //-------------------------------
		  Dim ts as TextOutputStream
		  Dim f as FolderItem
		  //-------------------------------
		  
		  f=GetSaveFolderItem("","DVH-~-"+DVH.struc_names+"-~-"+DVH.Dose_Name+"-~-"+gRTOG.Patient_Name+"-~-"+gRTOG.Patient_Surname+".txt")
		  
		  
		  if f<>nil and DVH<> nil then
		    Make_DVH_StringFile(DVH)
		    ts=f.CreateTextFile
		    ts.Write DVH.StringFile
		    ts.Close
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Make_DVH_StringFile(DVH as Class_DVH_One)
		  //----------------------------------
		  // Create DVH string file
		  //
		  //----------------------------------
		  Dim i,j as integer
		  Dim dvh_file, line as String
		  //----------------------------------
		  
		  if DVH=nil then
		    Return
		  end
		  
		  line="Structure Name : "+DVH.struc_names+local_endline
		  dvh_file=dvh_file+line
		  line="DoseName : "+DVH.Dose_Name+local_endline
		  dvh_file=dvh_file+line
		  line="DoseUnits : "+DVH.Dose_Units+local_endline
		  dvh_file=dvh_file+line
		  line="Geometric Volume  cm^3 : "+Format(DVH.svolume,"-#.###e")+local_endline
		  dvh_file=dvh_file+line
		  line="Pixel Volume cm^3 : "+Format(DVH.pixelvolume,"-#.###e")+local_endline
		  dvh_file=dvh_file+line
		  line="NumofPixels : "+Format(DVH.NumberofPixels,"-#")+local_endline
		  dvh_file=dvh_file+line
		  line="Max Dose : "+Format(DVH.maxdose,"-#.####e")+local_endline
		  dvh_file=dvh_file+line
		  line="Min Dose : "+Format(DVH.mindose,"-#.####e")+local_endline
		  dvh_file=dvh_file+line
		  line="Avg Dose : "+Format(DVH.avgdose,"-#.###e")+local_endline
		  dvh_file=dvh_file+line
		  line="Avg Error : "+Format(DVH.avg_error,"-#.###e")+local_endline
		  dvh_file=dvh_file+line
		  line="StandardDeviation : "+Format(DVH.stdev,"-#.###e")+local_endline
		  dvh_file=dvh_file+line
		  line="D50 : "+Format(DVH.D50,"-#.###e")+local_endline
		  dvh_file=dvh_file+line
		  line="DVHColour : "+str(DVH.stru_color.Red)+"/"+str(DVH.stru_color.Green)+"/"+str(DVH.stru_color.Blue)+local_endline
		  dvh_file=dvh_file+line
		  line="Normalize : "+Format(DVH.Normalize,"-#.#####e")+local_endline
		  dvh_file=dvh_file+line
		  line="ResX : "+Format(DVH.Res_X,"0.00####e")+local_endline
		  dvh_file=dvh_file+line
		  line="ResY : "+Format(DVH.Res_Y,"0.00####e")+local_endline
		  dvh_file=dvh_file+line
		  line="ResZ : "+Format(DVH.Res_Z,"0.00####e")+local_endline
		  dvh_file=dvh_file+line
		  line="Bins : "+Format(DVH.DVH_bins,"#")+local_endline
		  dvh_file=dvh_file+line
		  
		  
		  for i=0 to DVH.DVH_bins-1   //n bins
		    line = Format(DVH.DVH(i),"-#.#####e") +local_endline
		    dvh_file=dvh_file+line
		  next
		  dvh_file=dvh_file
		  DVH.StringFile=dvh_file
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_DVH()
		  //----------------------------------
		  // Readin Global DVH graphs to patient
		  //
		  //----------------------------------
		  Dim f,g as FolderItem
		  Dim i as integer
		  Dim ts as TextInputStream
		  Dim line as String
		  DIm dv as Class_DVH_One
		  //----------------------------------
		  
		  
		  ReDim All_DVH(-1)
		  
		  f=gRTOG.path.Child("McGill_RT")
		  if f=nil then
		    Return
		  end
		  
		  
		  
		  for i=f.Count DownTo 1
		    line=f.Item(i).Name
		    
		    if InStr(line,".DVH")>0 Then
		      g=f.Child(line)
		      dv = new Class_DVH_One
		      line=NthField(line,".DVH",1)
		      dv.Name=NthField(line,"_-_",2)
		      
		      if g<>nil Then
		        ts=g.OpenAsTextFile
		        if ts<> nil Then
		          dv.StringFile=ts.ReadAll
		          ts.Close
		          Read_DVH_String(dv)
		          All_DVH.Append dv
		        end
		      end
		      
		      
		    end
		  next
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_DVH_String(DV as Class_DVH_One)
		  //----------------------------------
		  // Parse DVH string 
		  //
		  //----------------------------------
		  Dim f,g as FolderItem
		  Dim i,j,m as integer
		  Dim dvh_file(-1), line,rgb_color as String
		  //----------------------------------
		  
		  dvh_file=Split(dv.StringFile,local_endline)
		  
		  for i=0 to UBound(dvh_file)
		    line=dvh_file(i)
		    
		    if InStr(line,"Structure Name")>0 Then
		      dv.struc_names=Trim(NthField(line,":",2))
		      
		    elseif InStr(line,"DVHColour")>0 Then
		      rgb_color=Trim(NthField(line,":",2))
		      dv.stru_color=rgb(CDbl(NthField(rgb_color,"/",1)),CDbl(NthField(rgb_color,"/",2)),CDbl(NthField(rgb_color,"/",3)))
		      
		    elseif InStr(line,"DoseName")>0 Then
		      dv.Dose_Name=Trim(NthField(line,":",2))
		      
		    elseif InStr(line,"DoseUnits")>0 Then
		      dv.Dose_Units=Trim(NthField(line,":",2))
		      
		    elseif InStr(line,"Geometric Volume")>0 Then
		      dv.svolume=val(NthField(line,":",2))
		      
		    elseif InStr(line,"Pixel Volume")>0 Then
		      dv.pixelvolume=val(NthField(line,":",2))
		      
		    elseif InStr(line,"NumofPixels")>0 Then
		      dv.NumberofPixels=val(NthField(line,":",2))
		      
		    elseif InStr(line,"Max Dose")>0 Then
		      dv.maxdose=val(NthField(line,":",2))
		      
		    elseif InStr(line,"Min Dose")>0 Then
		      dv.mindose=val(NthField(line,":",2))
		      
		    elseif InStr(line,"Avg Dose")>0 Then
		      dv.avgdose=val(NthField(line,":",2))
		      
		    elseif InStr(line,"D50")>0 Then
		      dv.D50=val(NthField(line,":",2))
		      
		    elseif InStr(line,"Avg Error")>0 Then
		      dv.avg_error=val(NthField(line,":",2))
		      
		    elseif InStr(line,"StandardDeviation")>0 Then
		      dv.stdev=val(NthField(line,":",2))
		      
		      
		    elseif InStr(line,"ResZ")>0 Then
		      dv.Res_Z=val(NthField(line,":",2))
		    elseif InStr(line,"ResX")>0 Then
		      dv.Res_X=val(NthField(line,":",2))
		    elseif InStr(line,"ResY")>0 Then
		      dv.Res_Y=val(NthField(line,":",2))
		      
		      
		      
		    elseif InStr(line,"Bins")>0 Then
		      dv.DVH_bins=val(NthField(line,":",2))
		      ReDim dv.DVH(dv.DVH_bins-1)
		      ReDim dv.DVH_Cum(dv.DVH_bins-1)
		      
		      for m=0 to dv.DVH_bins-1
		        line=dvh_file(i+1+m)
		        dv.DVH(m)=val(line)
		      Next
		      
		      dv.DVH_Cum(dv.DVH_bins-1)=dv.DVH(dv.DVH_bins-1)
		      for m=dv.DVH_bins-2 DownTo 0
		        dv.DVH_Cum(m)=dv.DVH(m)+dv.DVH_Cum(m+1)
		      next
		      
		      
		      
		      Return
		    end
		  Next
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_DVH_File(num as Integer)
		  //----------------------------------
		  //
		  //
		  //----------------------------------
		  Dim f as FolderItem
		  Dim i,j as integer
		  Dim ts as TextOutputStream
		  Dim dvh_file, line as String
		  //----------------------------------
		  
		  j=num
		  
		  f=gRTOG.path.Child("McGill_RT")
		  
		  if f=nil then
		    Return
		  end
		  
		  if num>-1 And num<=UBound(All_DVH)  Then
		    Make_DVH_StringFile(All_DVH(num))
		    
		    f=f.Child(All_DVH(num).struc_names+"_-_"+All_DVH(num).Name+".DVH")
		    if f=nil Then
		      Return
		    end
		    
		    if f.Exists Then
		      f.Delete
		    end
		    
		    ts=f.CreateTextFile
		    ts.Write All_DVH(num).StringFile
		    ts.Close
		  end
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		All_DVH(-1) As Class_DVH_One
	#tag EndProperty

	#tag Property, Flags = &h0
		DVHBins As Integer = 50
	#tag EndProperty

	#tag Property, Flags = &h0
		HR_struc As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Save_DVH As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Timer As Class_DVH_Timer
	#tag EndProperty

	#tag Property, Flags = &h0
		Update_Window As Boolean = false
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DVHBins"
			Group="Behavior"
			InitialValue="50"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HR_struc"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
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
			Name="Save_DVH"
			Group="Behavior"
			InitialValue="false"
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
		#tag ViewProperty
			Name="Update_Window"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
