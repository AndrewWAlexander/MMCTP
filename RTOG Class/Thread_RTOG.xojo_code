#tag Class
Protected Class Thread_RTOG
Inherits Thread
	#tag Event
		Sub Run()
		  //------------------------
		  // Open a McGill RT patient
		  //
		  //------------------------
		  Dim ff as Boolean
		  Dim i as Integer
		  Dim k as Single
		  //------------------------
		  
		  ff=Read_McGill
		  
		  if ff=False Then
		    TPW_Show=False
		    PW_Show=False 
		    Return
		  end
		  
		  PW_Show=True
		  PW_Title="Opening external beam planning"
		  PW_Progress_Max=-1
		  
		  gVis.iso.Read_Default_IsoDoseSettins
		  
		  for i=1 to 10000
		    k=k+i*3.4
		  Next
		  
		  TPW_Show=True
		  
		  
		  exception err as OutOfMemoryException
		    Errors.Append  "Insufficient memory to draw the picture within gVis.Run"
		    PW_Show=False
		    
		  Exception err as TypeMismatchException
		    Errors.Append "Tried to retype an object within gVis.Run"
		    PW_Show=False
		    
		  Exception err as NilObjectException
		    Errors.Append "Tried to access a Nil object within gVis.Run"
		    PW_Show=False
		    
		  Exception err as RuntimeException  // NOT RECOMMENDED
		    Errors.Append "Another exception within gVis.Run"
		    PW_Show=False
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function Add_Plan() As RTOG_Plan
		  //---------------------------
		  //
		  //
		  //---------------------------
		  Dim i, last_num as integer
		  Dim p as RTOG_Plan
		  Dim f as FolderItem
		  Dim  temp as String
		  //---------------------------
		  
		  
		  p=new RTOG_Plan
		  i=UBound(Plan)
		  if i=-1 then
		    last_num=0
		  else
		    last_num=val(gRTOG.Plan(i).Plan_ID)
		  end
		  last_num=last_num+1
		  Temp=Format(last_num,"#")
		  if Len(Temp)<2 then
		    Temp="0"+Temp
		  end
		  p.Plan_ID = Temp
		  f=path.Child("Plan"+String_Separate+p.Plan_ID)
		  f.CreateAsFolder
		  p.Path= f
		  Plan.Append p
		  
		  Return p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add_Structure()
		  //---------------------------
		  //
		  //
		  //---------------------------
		  Dim s as RTOG_Structure_Class
		  Dim i as integer
		  //---------------------------
		  
		  s=new RTOG_Structure_Class
		  s.Structure_Name="New Structure"
		  s.scolor=gVis.Make_Clour
		  i=UBound(Scan)
		  redim s.Structure_Data(i)
		  for i=0 to UBound(Scan)
		    s.Structure_Data(i)=new RTOG_Structure_Slice
		    s.Structure_Data(i).scan_Num=i
		    s.Structure_Data(i).Z=Scan(i).Z_Value
		  next
		  s.num_of_Scans=UBound(Scan)+1
		  Structures.Structures.Append s
		  gvis.contour_show.Append True
		  gvis.contour_fill.Append True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Convert_CadPlan2McGilRT(CADPLAN as Thread_RTOG)
		  //----------------------------------------------------
		  // Transfer CADPlan files into MMCTP McGill RT files
		  //
		  //
		  '=======================================
		  dim basename,fname ,temp as string
		  dim basefi,fnamefi as FolderItem
		  dim done as boolean
		  dim a,b,c,i,j,k,nimage,m,n,ii,plan_origin_set,caddate,dosenorm,normfac,numfield as integer
		  dim bs,bsf as BinaryStream
		  dim tmpstruct as RTOG_Structure_Slice
		  dim dx,dy,thickness,grid,dose_offset_x,dose_offset_y,plan_orgin_x,plan_orgin_y,norm_f,tmpint as double
		  dim d as Date
		  dim mb as MemoryBlock
		  Dim zpos(-1) As Double
		  Dim IndStruct As Integer
		  dim OrdStructures(-1) as RTOG_Structure_Slice
		  Dim DimScan As Integer
		  Dim num_removed as Integer
		  Dim bb as Boolean
		  '=======================================
		  
		  
		  
		  Patient_Name=CADPLAN.Patient_Name
		  Patient_Surname=CADPLAN.Patient_Surname
		  Patient_ID=CADPLAN.Patient_ID
		  
		  While InStr(Patient_Name," ")>0
		    Patient_Name=Replace(Patient_Name," ","")
		  Wend
		  While InStr(Patient_Surname," ")>0
		    Patient_Surname=Replace(Patient_Surname," ","")
		  Wend
		  While InStr(Patient_ID," ")>0
		    Patient_Name=Replace(Patient_Name," ","")
		  Wend
		  
		  //=====Now Check to see if any scans are "CORONAL"or "SAGITTAL", and remove these!!
		  
		  
		  for i=UBound(CADPLAN.Scan) DownTo 0
		    if CADPLAN.Scan(i).scan_type<>"TRANSVERSE" then
		      CADPLAN.Scan.Remove i
		      // Also remove Structure on that plane
		      for IndStruct = 0 to UBound(CADPLAN.Structures.Structures)
		        if i>-1 and i<=UBound(CADPLAN.Structures.Structures(IndStruct).Structure_Data) Then
		          CADPLAN.Structures.Structures(IndStruct).Structure_Data.remove i
		        end
		      next
		      
		    end
		  next
		  d=new date
		  CADPLAN.scan(0).Scan_date=d.SQLDate
		  
		  
		  
		  // =====Arage Scans in Z order
		  Redim zpos(UBound(CADPLAN.Scan))
		  for i=0 to UBound(zpos)
		    zpos(i)=CADPLAN.Scan(i).Z_Value
		  Next
		  zpos.SortWith(CADPLAN.Scan)
		  
		  for i=0 to UBound(zpos)
		    Scan.Append CADPLAN.Scan(i)
		  Next
		  
		  Scan(0).Slice_Thickness=Scan(1).Z_Value-Scan(0).Z_Value
		  Scan(0).WinLevel=500
		  Scan(0).WinWidth=3000
		  
		  // =====Arrange Structures in Z order
		  
		  ReDim zpos(UBound(CADPLAN.Structures.Structures(0).Structure_Data))
		  
		  for IndStruct = 0 to UBound(CADPLAN.Structures.Structures)
		    for i=0 to UBound(CADPLAN.Structures.Structures(IndStruct).Structure_Data)
		      zpos(i) = CADPLAN.Structures.Structures(IndStruct).Structure_Data(i).z
		    next
		    zpos.SortWith(CADPLAN.Structures.Structures(IndStruct).Structure_Data)
		  next
		  
		  for i=0 to UBound(CADPLAN.Structures.Structures)
		    Structures.Structures.Append CADPLAN.Structures.Structures(i)
		    Structures.Structures(i).Num_of_Scans=UBound(zpos)+1
		  Next
		  
		  ''======================Arrange Dose Distribution===============
		  
		  for i=0 to UBound(CADPLAN.Plan)
		    for k=0 to UBound(CADPLAN.Plan(i).Dose)
		      Redim zpos(UBound(CADPLAN.Plan(i).Dose(k).Dose_Distribution))
		      for j =0 to UBound(zpos)
		        zpos(j)=CADPLAN.Plan(i).Dose(k).Dose_Distribution(j).z
		      Next
		      CADPLAN.Plan(i).Dose(k).Depth_Grid=Scan(0).Slice_Thickness
		    next
		    Plan.Append CADPLAN.Plan(i)
		  next
		  
		  '======End Arrange Dose==============
		  
		  bb=Write_McGill
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Convert_DICOM2McGillRT(DICOM as Thread_DICOM_Object, study_id as String, series as String)
		  //------------------------------------------------
		  // This Method Converts DICOM classes into
		  // McGill RT Classes. Including images, plans, beams, doses
		  // and structures.
		  //
		  //
		  //-------------------------------------------------
		  Dim i,j,nimage,k,h,a,num,x,segnum,num_points,segindex(-1),rtp,z as integer
		  Dim all_ct,id_found ,found as Boolean
		  Dim z_index,zvale,zpos(-1),dicom_image_pp_x,dicom_image_pp_y,dicom_image_pp_z,Xx,Yy,scan_thick,scan_thick2  as Single
		  Dim di_plans(-1),di_dose(-1),points_data,temp,temp2,temp4,temp3,file_dicom,tempss as string
		  Dim f,g as FolderItem
		  Dim ppp as RTOG_Plan
		  Dim image as RTOG_Scan
		  Dim plan_check,d_check as Boolean
		  //-------------------------------------------------
		  
		  
		  PW_Title="Transfering DICOM to McGill RT"
		  PW_Show=true
		  
		  
		  Structures= new RTOG_Structure
		  
		  //-------------IMAGES ----------------------
		  PW_StaticText="Sorting Images...please wait (this can take a while)"
		  
		  PW_Progress_Max=0
		  // Arrage the axial DICOM images acording to Z value in ascending order.
		  // Remove all scan which are not Axial
		  for i= UBound(DICOM.RT_Images) DownTo 0
		    temp= DICOM.RT_Images(i).Image_Type
		    temp2=DICOM.RT_Images(i).ImageOrientationPatient
		    temp3=DICOM.RT_Images(i).Modality
		    temp4=DICOM.RT_Images(i).patient_position

		    //row (X) direction cosine of the Image Orientation (Patient) (0020,0037) 
		    //column (Y) direction cosine of the Image Orientation (Patient) (0020,0037) 
		    row_x=val(NthField(temp2,"\",1))
		    row_y=val(NthField(temp2,"\",2))
		    row_z=val(NthField(temp2,"\",3))
		    col_x=val(NthField(temp2,"\",4))
		    col_y=val(NthField(temp2,"\",5))
		    col_z=val(NthField(temp2,"\",6))
		    
		    

		    if InStr(Temp,"Axial")= 0 Then
		      Errors.Append "Image type for image : "+DICOM.RT_Images(i).MediaStorageSOPInstanceUID+chr(13)+ " can not be determined to be Axial and will be removed"+chr(13)+"Image type : " +Temp
		      DICOM.RT_Images.Remove i
		    end
		  next
		  
		  
		  
		  //Get all Z positions
		  ReDim zpos(UBound(DICOM.RT_Images))
		  for i=0 to UBound(zpos)
		    zpos(i)=val(NthField(DICOM.RT_Images(i).ImagePositionPatient,"\",3))
		    //zpos(i)=DICOM.RT_Images(i).SliceLocation
		  next
		  //end
		  
		  
		  
		  zpos.SortWith(DICOM.RT_Images)
		  // Arrange the DICOM images to McGill RT images
		  for i=0 to UBound(DICOM.RT_Images)
		    if study_id=DICOM.RT_Images(i).StudyInstanceUID Then
		      
		      if UBound(Scan)=-1 Then
		        Patient_ID=Trim(DICOM.RT_Images(i).PatientID)
		        Patient_Name=NthField(DICOM.RT_Images(i).PatientName,"^",2)
		        
		        While InStr(Patient_Name,"""")>0 
		          Patient_Name=Replace(Patient_Name,"""","-")
		        Wend
		        
		        Patient_Surname=NthField(DICOM.RT_Images(i).PatientName,"^",1)
		        StudyInstanceUID=DICOM.RT_Images(i).StudyInstanceUID
		        SeriesInstanceUID=DICOM.RT_Images(i).SeriesInstanceUID
		        PatientPosition=DICOM.RT_Images(i).patient_position
		        DICOM_Study_Date=DICOM.RT_Images(i).StudyDate
		        DICOM_Study_Description=DICOM.RT_Images(i).StudyDescription
		        DICOM_Study_Time=DICOM.RT_Images(i).StudyTime
		        DICOM_Age=DICOM.RT_Images(i).Age
		        DICOM_Birthdate=DICOM.RT_Images(i).PatientBirthDate
		        DICOM_Sex=DICOM.RT_Images(i).sex
		        DICOM_Physician=DICOM.RT_Images(i).Physician
		        DICOM_ImageOrientationPatient=DICOM.RT_Images(i).ImageOrientationPatient
		        FrameOfReferenceUID=DICOM.RT_Images(i).FrameOfReferenceUID
		        StudyID=DICOM.RT_Images(i).StudyID
		        While InStr(StudyID,"""")>0 
		          StudyID=Replace(StudyID,"""","-")
		        Wend
		        SeriesNumber=DICOM.RT_Images(i).SeriesNumber
		        Patient_Name=Replace(Patient_Name,String_Separate,"-")
		        Patient_Surname=Replace(Patient_Surname,String_Separate,"-")
		        Patient_ID=Replace(Patient_ID,String_Separate,"-")
		      end
		      image=new RTOG_Scan
		      Image.DICOM_SOP_Instance_UID=DICOM.RT_Images(i).SOPInstanceUID
		      Image.Bytes_per_Pixel=2
		      Image.Grid_Units_Height=cdbl(NthField(dicom.RT_Images(i).PixelSpacing,"\",2))/10
		      Image.Grid_Units_Width=cdbl(NthField(dicom.RT_Images(i).PixelSpacing,"\",1))/10
		      Image.Size_of_Dimension1=DICOM.RT_Images(i).Columns
		      Image.Size_of_Dimension2=DICOM.RT_Images(i).row
		      Image.Image_Type=DICOM.RT_Images(i).Image_Type
		      Image.Image_Modality=DICOM.RT_Images(i).Modality
		      Image.Slice_Thickness=DICOM.RT_Images(i).SliceThickness/10
		      image.WinLevel=DICOM.RT_Images(i).WinLevel
		      Image.WinWidth=DICOM.RT_Images(i).WinWidth
		      Image.Z_Value=cdbl(NthField(DICOM.RT_Images(i).ImagePositionPatient,"\",3))/10 // Z coordinate of the slice - in mm
		      
		      //Xxyz The values from the row (X) direction cosine of the Image Orientation (Patient) (0020,0037) attribute.
		      //Yxyz The values from the column (Y) direction cosine of the Image Orientation (Patient) 0020,0037) attribute.
		      
		      Xx=cdbl(NthField(DICOM.RT_Images(i).ImageOrientationPatient,"\",1))
		      Yy=cdbl(NthField(DICOM.RT_Images(i).ImageOrientationPatient,"\",5))
		      Image.X_Offset=Xx*cdbl(NthField(DICOM.RT_Images(i).ImagePositionPatient,"\",1))/10 // same for all slices
		      Image.Y_offset=Yy*cdbl(NthField(DICOM.RT_Images(i).ImagePositionPatient,"\",2))/10 // same for all slices
		      Image.Scan_date=DICOM.RT_Images(i).StudyDate
		      ReDim image.voxel(UBound(DICOM.RT_Images(i).PixelData))
		      for j=0 to Image.Size_of_Dimension2-1
		        for k=0 to Image.Size_of_Dimension1-1
		          Image.voxel(k+j*Image.Size_of_Dimension1)=DICOM.RT_Images(i).rescaleslope*DICOM.RT_Images(i).PixelData(k+j*Image.Size_of_Dimension1)+DICOM.RT_Images(i).rescaleintercept
		        next
		      next
		      Scan.Append Image
		    end
		  next
		  
		  
		  // Check the the slice thickness is correct
		  if UBound(Scan)>0 Then
		    if Scan(0).Slice_Thickness=0 Then
		      Scan(0).Slice_Thickness=Scan(1).Z_Value-Scan(0).Z_Value
		    else
		      scan_thick=Scan(0).Slice_Thickness
		      scan_thick2=Scan(1).Z_Value-Scan(0).Z_Value
		      if scan_thick2<scan_thick and scan_thick2>0 Then
		        Scan(0).Slice_Thickness=scan_thick2
		      end
		    end
		    if Scan(0).Slice_Thickness=0 Then
		      MsgBox "DICOM import error: Can not determine image slice thickness"
		    end
		  end
		  
		  
		  
		  
		  
		  //------------------END IMAGES----------------------
		  
		  Convert_DICOM2McGillRT_Structures(DICOM,xx,yy)
		  
		  //-----------------------------------------------------------------
		  //   Arranging the DICOM Beams data into correct Plans
		  //-----------------------------------------------------------------
		  PW_StaticText="Sorting Beams...please wait (this can take a while)"
		  
		  for j=0 to UBound(DICOM.RT_Plan) //there is plan information
		    if UBound(DICOM.RT_Plan(j).ReferencedStructureSetSequence)>-1 Then
		      tempss=DICOM.RT_Plan(j).ReferencedStructureSetSequence(0).ReferencedSOPInstanceUID
		    end
		    if FrameOfReferenceUID=DICOM.RT_Plan(j).FrameOfReferenceUID or tempss=ReferencedStructureSetSequence Then
		      ppp= new RTOG_Plan
		      ppp.Plan_Update_DV(Structures.Structures)
		      plan_check=ppp.Import_DICOM_Plan(DICOM.RT_Plan(j),xx,yy,DICOM)
		      if plan_check Then
		        z=UBound(Plan)+2
		        found=True
		        While found
		          found=False
		          temp=Str(z)
		          While Len(temp)<2
		            temp="0"+temp
		          Wend
		          for i=0 to UBound(Plan)
		            if Plan(i).Plan_ID=temp Then
		              found=True
		            end
		          next
		          z=z+1
		        Wend
		        ppp.Plan_ID=temp
		        Plan.Append ppp
		      end
		    end
		  Next
		  
		  
		  
		  if UBound(DICOM.RT_Plan)=-1 and  UBound(DICOM.RT_Doses)>=0 Then
		    //if there is no plan but we have dose distrubtions
		    ppp = new RTOG_Plan
		    Plan.Append ppp
		    ppp.Plan_Name= "None"
		    for i=0 to UBound(DICOM.RT_Doses)
		      d_check=ppp.Import_DICOM_Dose(DICOM.RT_Doses(i),xx,yy)
		    next
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Convert_DICOM2McGillRT_Structures(DICOM as Thread_DICOM_Object, xx as Single, yy as Single)
		  //------------------------------------------------
		  // This Method converts DICOM Structures classes into
		  // McGill RT Classes  
		  //
		  // Arrange the Structure Segments
		  // after Class_DICOM.extract_struct: Trans.Structures(h).Structure_Data(0).Segments(k).Points(m)
		  // for each structure [Structures(h)] the segments from all slices are grouped in Structure_Data(0),
		  // i.e. for a given structure H there will only be a Structure_Data element [StructureData(0)],
		  // containing a number of Segments equal to the number of slices where that structure was contoured.
		  // Each such segment further contains a number of points (x,y,Z) [Segments(k).Points] and the Z-coordinate of the slice [Segments(k).Z].
		  //
		  //---------------------------------------------------------------------------------------------------------------------------
		  // Arrage the  DICOM structures acording to scan UID value.
		  // Updates:
		  // 2012 - A Alexander, new method to match contour segments with axial images. Now we use the image UID if avaiable, otherwise use old method. 
		  //-------------------------------------------------
		  Dim i,b,z,k,x,segnum,num_points,scan_num as Integer
		  Dim srt as RTOG_Structure_Class
		  Dim pp as RTOG_Structure_Point
		  Dim id_found,slice_found as Boolean
		  Dim new_segment as RTOG_Structure_Segment
		  Dim sss as Class_DICOM_Structures
		  Dim sdata as RTOG_Structure_Slice
		  Dim points_data as String
		  Dim z_axial_value,MaxSliceDistance as Single
		  Dim roiObseq as Class_DICOM_Structure_ROI_Obv_Sequence
		  //----------------------------------------
		  
		  MaxSliceDistance=gPref.DICOM_In_Structure_Slice_Assigment
		  
		  PW_Title="Transfering DICOM to McGill RT"
		  PW_Show=true
		  PW_StaticText="Sorting Structures...please wait (this can take a while)"
		  PW_Progress_Max=0
		  
		  
		  for z=0 to UBound(DICOM.RT_Structures)
		    sss=DICOM.rt_Structures(z)
		    if sss<>nil Then
		      if sss.StudyInstanceUID<>StudyInstanceUID Then
		        Errors.Append "DICOM StudyInstanceUID : "+sss.StudyInstanceUID +" does not match patient StudyInstanceUID : "+StudyInstanceUID+Chr(13)+"This file will be skipped"
		        
		      else // The DICOM structure dataset is a match to the image study instance UID
		        ReferencedStructureSetSequence=sss.SOPInstanceUID
		        for i=0 to UBound(sss.SetROISequence) // i loops for each structure
		          srt= new RTOG_Structure_Class // new RTOG structure for each DICOM strucutre within sss.SetROISequence
		          srt.Structure_Name=sss.SetROISequence(i).ROIName
		          srt.Num_of_Scans=UBound(Scan)+1
		          srt.ROI_Number=sss.SetROISequence(i).ROI_num
		          PW_StaticText="Sorting Structures...please wait (this can take a while)"
		          PW_StaticText=PW_StaticText+chr(13)+"Structure : "+sss.SetROISequence(i).ROIName
		          
		          
		          // Create McGill RT structure format of one 
		          for k=0 to UBound(Scan)
		            sdata=new RTOG_Structure_Slice
		            sdata.Z=Scan(k).Z_Value
		            sdata.scan_Num=k
		            srt.Structure_Data.Append sdata
		          Next
		          
		          
		          
		          // if there is at least one segment of a contour
		          if UBound(sss.ROIContourSequence)>=i Then
		            srt.scolor=sss.ROIContourSequence(i).ROIColour
		            PW_Progress_Max=UBound(sss.ROIContourSequence(i).ContourSequence) 
		            
		            
		            for x=0 to UBound(sss.ROIContourSequence(i).ContourSequence) 
		              // At each slice position, this loops over all contour sequences and segments.
		              PW_Progress=x
		              
		              slice_found=False
		              
		              
		              // Loop for an image sequence match with contour sequence values, this is the best way to match the two objects
		              if UBound(sss.ROIContourSequence(i).ContourSequence(x).contourimagesequence)>-1 Then
		                // Loop for all McGill RT scans to find a match 
		                for k=0 to UBound(Scan)
		                  if Scan(k).DICOM_SOP_Instance_UID=sss.ROIContourSequence(i).ContourSequence(x).contourimagesequence(0).ReferencedSOPInstanceUID Then
		                    // We have a match and now know the Z position
		                    z_axial_value=Scan(k).Z_Value
		                    slice_found=True
		                    Exit for k
		                  end
		                Next // end slice loop
		              end // End if contourimagesequence
		              
		              
		              
		              // We did not find a match as Scan(k).DICOM_SOP_Instance_UID="" or something else
		              // 2nd attempt, try to match by looking at Z values and comparing to Z values of image slice
		              if slice_found=False Then
		                for k=0 to UBound(Scan)
		                  if slice_found=False Then
		                    z_axial_value=Scan(k).Z_Value
		                    scan_num=k
		                    pp=new RTOG_Structure_Point
		                    pp.z=CDbl(NthField(sss.ROIContourSequence(i).ContourSequence(x).data,"\",3))/10
		                    if gPref.DICOM_IN_Inverse Then// Why do we need this section of code???
		                      //Loop with -1
		                      pp.z=-1*CDbl(NthField(sss.ROIContourSequence(i).ContourSequence(x).data,"\",3))/10
		                    end
		                    
		                    //1st method to assign contour slices
		                    if z_axial_value=pp.z Then
		                      slice_found=True
		                      exit for k
		                    end
		                    
		                    //2nd method to assign contour slices to axial images
		                    if abs(z_axial_value-pp.z) <MaxSliceDistance and slice_found=False Then
		                      slice_found=True
		                      exit for k
		                    end
		                  end
		                next // end slice loop
		              end
		              
		              
		              if slice_found Then
		                new_segment = new RTOG_Structure_Segment
		                // Insert loop here for many segments on the same slice
		                new_segment.Z=z_axial_value
		                
		                num_points=sss.ROIContourSequence(i).ContourSequence(x).numberofcontourpoints
		                points_data=sss.ROIContourSequence(i).ContourSequence(x).data
		                if num_points>1 then
		                  for b=1 to num_points // put point data into segment class
		                    pp=new RTOG_Structure_Point
		                    pp.x = CDbl(NthField(points_data,"\",1+(b-1)*3))/10
		                    pp.y = CDbl(NthField(points_data,"\",2+(b-1)*3))/10
		                    pp.z=  CDbl(NthField(points_data,"\",3+(b-1)*3))/10
		                    
		                    // Apply the cosine direction, and image offset
		                    pp.x =xx*pp.x
		                    pp.y =yy*pp.y
		                    new_segment.Points.Append pp
		                  Next
		                end
		                
		                // Attach the new segment to the correct slice 
		                slice_found=False
		                for k=0 to UBound(srt.Structure_Data)
		                  if srt.Structure_Data(k).Z=z_axial_value Then
		                    slice_found=True
		                    srt.Structure_Data(k).Segments.Append new_segment
		                  end
		                next
		                
		                
		              end // if slice was found
		            next // loop for x, the number of contours for a specific contour set
		          end // End if there was at least one set of contour points
		          
		          
		          
		          // All segments of the contour have been addressed, now time to append data structure to main class
		          // Determine if we should overwrite or append
		          id_found=False
		          if Structures=nil Then
		            Return
		          end
		          for b=0 to UBound(Structures.Structures)
		            if Structures.Structures(b).Structure_Name=srt.Structure_Name Then
		              Structures.Structures(b)=srt
		              id_found=True
		              Exit for b
		            end
		          next
		          if id_found=False Then
		            Structures.Structures.Append srt
		          end
		          
		          
		          // Electron density override information, and Structure type
		          for b=0 to UBound(DICOM.RT_Structures(z).ROI_Obs_Seq)
		            roiObseq=DICOM.RT_Structures(z).ROI_Obs_Seq(b)
		            if str(srt.ROI_Number)=roiObseq.ReferencedROI_Num Then
		              srt.StructureType=roiObseq.RT_ROI_Inter_Type
		              if UBound(roiObseq.ROI_Phys_Prop_Sequ)>-1 Then
		                srt.ElectronDensityOverride=True
		                srt.ElectronDensity=val(roiObseq.ROI_Phys_Prop_Sequ(0).ROI_Phys_Prop_Value)/100
		              end
		            end
		          next // end electron density loop
		          
		          
		        Next // next i, contour
		      end // match for DICOM dataset
		    end // if sss exisits, not nil
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Convert_McGillRT2DICOM_RTDose(planidex as integer, dose as RTOG_Dose_Distribution)
		  //------------------------------------------------
		  // This Method converts McGill classes into
		  // DICOM RT Classes. 
		  // Including doses
		  //
		  //
		  //-------------------------------------------------
		  Dim i,j,k,h as integer
		  Dim data as RTOG_Dose_Plane
		  dim dicomD as Class_DICOM_RTDose
		  dim ss as Class_DICOM_RTDose_StructureSetSequence
		  dim sps as Class_DICOM_RTDose_RTPlanSequence
		  dim nowdate as date
		  Dim temps as String
		  Dim test as Int64
		  Dim yy,Xx as Single
		  '============================
		  
		  
		  nowdate = new date
		  dicomD=new Class_DICOM_RTDose
		  
		  ss = new Class_DICOM_RTDose_StructureSetSequence
		  sps=new Class_DICOM_RTDose_RTPlanSequence
		  
		  
		  
		  // Append DICOM Dose to temp DICOM thread
		  gdicom.RT_Doses.Append dicomD
		  
		  dicomD.ImageType="ORIGINAL\PRIMARY\AXIAL"
		  
		  dicomD.InstanceCreationDate=Format(nowdate.Year,"#")+Format(nowdate.Month,"00")+Format(nowdate.Day,"00")
		  dicomD.InstanceCreationTime=Format(nowdate.TotalSeconds,"#")
		  dicomD.Physician=DICOM_Physician
		  dicomD.Sex=DICOM_Sex
		  dicomD.Age=DICOM_Age
		  dicomD.PatientBirthDate=DICOM_Birthdate
		  dicomD.SeriesDescription=dose.SeriesDescription
		  dicomD.AcquistionDate=CStr(dose.AcquisitionDate)
		  dicomd.AcquistionTime=CStr(dose.AcquisitionTime)
		  
		  // Standard UID for structure set reference
		  ss.ReferencedSOPClassUID="1.2.840.10008.5.1.4.1.1.481.3"
		  ss.ReferencedSOPInstanceUID=ReferencedStructureSetSequence
		  dicomD.ReferencedStructureSetSeq.Append ss
		  
		  // Standard UID for reference plan set
		  // (0008,1150)
		  sps.ReferencedSOPClassUID="1.2.840.10008.5.1.4.1.1.481.5"
		  // File name of dicom plan
		  // (0008,1155)
		  sps.ReferencedSOPInstanceUID=gRTOG.Plan(planidex).DICOM_SOPInstanceUID
		  dicomD.ReferencedRTPSequence.Append sps
		  
		  // This is for DICOM dose files
		  dicomD.MediaStorageSOPClassUID="1.2.840.10008.5.1.4.1.1.481.2"
		  
		  
		  // Assign SOP Instance UID
		  if dose.SOP_Instance_UID="" Then
		    // Unique UID name for file Source code from MATLAB
		    dose.SOP_Instance_UID=gdicom.UID_Make
		  end
		  dicomD.MediaStorageSOPInstanceUID=dose.SOP_Instance_UID
		  
		  
		  // Assign SOP Instance UID
		  if dose.SOP_Instance_UID="" Then
		    // Unique UID name for file Source code from MATLAB
		    dose.SOP_Instance_UID=gdicom.UID_Make
		  end
		  dicomD.MediaStorageSOPInstanceUID=dose.SOP_Instance_UID
		  
		  
		  // Always the same for all dicom dose 
		  if gPref.DICOM_Format=0 Then
		    //Implicit
		    dicomD.TransferSyntaxUID="1.2.840.10008.1.2"
		  else
		    dicomD.TransferSyntaxUID="1.2.840.10008.1.2.1"
		  end
		  
		  
		  // Not sure what this is for
		  dicomD.ImplementationClassUID="1.2.246.352.70.2.1.7"
		  
		  dicomD.SOPClassUID=dicomD.MediaStorageSOPClassUID
		  dicomD.SOPInstanceUID=dicomD.MediaStorageSOPInstanceUID
		  
		  // This should be the same Study Instatnce UID as the patient 
		  dicomD.StudyInstanceUID=StudyInstanceUID
		  
		  // This should be a unique number since there is only one Ddistribution,
		  // Update 2012 for Tomo compliance
		  //dicomD.SeriesInstanceUID=dicom.Make_UID
		  dicomD.SeriesInstanceUID=dicomD.MediaStorageSOPInstanceUID+".1"
		  dicomD.StudyID=gRTOG.StudyID
		  dicomD.FrameOfReferenceUID=gRTOG.FrameOfReferenceUID
		  
		  
		  // Added Nov 2009 Study date and time
		  // Updated to CT image study data and time
		  dicomD.StudyDate=DICOM_Study_Date
		  dicomD.StudyTime=DICOM_Study_Time
		  
		  dicomD.AccessionNumber=""
		  dicomD.ReferringPhysicianName=""
		  
		  dicomD.Modality="RTDOSE"
		  dicomD.Manufacturer=gPref.Manufacturer
		  dicomD.Manufacturer_Model_Name=gPref.ManufacturerName
		  dicomD.StudyDescription=DICOM_Study_Description
		  dicomD.StationName=gPref.StationName
		  dicomD.DoseComment=Dose.Dose_Comment
		  dicomD.PatientID=gRTOG.Patient_ID
		  dicomD.PatientName=gRTOG.Patient_Surname+"^"+gRTOG.Patient_Name
		  dicomD.BitsAllocated=gPref.DICOM_Bytes
		  dicomD.HighBit=gPref.DICOM_Bytes-1
		  dicomD.BitsStored=gPref.DICOM_Bytes
		  dicomD.Software_Version=Format(App.MajorVersion,"#")+"."+Format(App.MinorVersion,"#")+"."+Format(App.BugVersion,"#")
		  dicomD.SliceThickness=Format(10*Dose.Depth_Grid,"-0.0")
		  dicomD.Smallest_Image_Pixel_Value=0
		  
		  dicomD.SeriesNumber=CStr(dose.Series_Number)
		  dicomD.InstanceNumber="2"
		  
		  dicomD.ImageOrientationPatient=DICOM_ImageOrientationPatient
		  
		  // Apply cosine and image offsets
		  Xx=cdbl(NthField(DICOM_ImageOrientationPatient,"\",1))
		  Yy=cdbl(NthField(DICOM_ImageOrientationPatient,"\",5))
		  
		  
		  
		  
		  
		  dicomD.columns=Dose.Size_of_Dimension1
		  dicomD.rows=Dose.Size_of_Dimension2
		  dicomD.NumberofFrames=Dose.Size_of_Dimension3
		  
		  dicomD.PixelSpacing=Format(10*Dose.Vertical_Grid,"-#.#######")+"\"+Format(10*Dose.Horizontal_Grid,"-#.#######")
		  dicomD.Image_Presentation_Group_Length=150
		  
		  if gPref.DICOM_Z_Invert Then
		    dicomd.SliceLocation=-10*dose.Dose_Distribution(dose.Size_of_Dimension3-1).Z
		    dicomD.ImagePositionPatient=Format(10*Dose.Coord_1_1st_point,"-#.#####")+"\"+Format(10*Dose.Coord_2_1st_point,"-#.#####")+"\"+Format(-1*dicomd.SliceLocation,"-0.0####")
		  else
		    dicomd.SliceLocation=10*dose.Dose_Distribution(0).Z
		    dicomD.ImagePositionPatient=Format(xx*10*Dose.Coord_1_1st_point,"-#.#####")+"\"+Format(yy*10*Dose.Coord_2_1st_point,"-#.#####")+"\"+Format(10*Dose.Coord_3_1st_point,"-0.0####")
		  end
		  
		  dicomD.SamplesPerPixel="1"
		  dicomD.PhotometrixInter="MONOCHROME2"
		  
		  // Dec 2010 Problem with slice values readin by eclipse
		  // (0028,0009)
		  dicomd.FrameIncrementPointer="3004000C"
		  
		  dicomD.DoseUnits=Dose.Dose_Units
		  if dicomD.DoseUnits="" Then
		    dicomD.DoseUnits="GY"
		  ELSEIF dicomD.DoseUnits="Gy" Then
		    dicomD.DoseUnits="GY"
		  end
		  dicomd.DoseType="PHYSICAL"
		  
		  
		  if gPref.DICOM_Bytes=16 Then
		    //Signed rage −32768 to 32767
		    dicomD.DoseGridScaling=(dose.Dmax-Dose.Dmin)/10000
		  else // 32 bites
		    // Signed rage −2,147,483,648 to 2,147,483,647,
		    dicomD.DoseGridScaling=(dose.Dmax-Dose.Dmin)/10000000
		  end
		  
		  
		  // Check to elminate 0 as scaling value
		  if dicomD.DoseGridScaling=0 Then
		    dicomD.DoseGridScaling=1
		  end
		  
		  dicomD.DoseSummationType="PLAN"
		  
		  ReDim dicomD.PixelData(Dose.Size_of_Dimension1*Dose.Size_of_Dimension2*Dose.Size_of_Dimension3-1)
		  
		  // Make the Grid frame offset vector 
		  if gPref.DICOM_Z_Invert Then
		    for h=0 to Dose.Size_of_Dimension3-1
		      data=Dose.Dose_Distribution(h)
		      if h=0 Then
		        dicomD.GridFrameOffsetVector=Format((data.Z-dose.Dose_Distribution(0).Z)*-10,"-0.0###")
		      else
		        dicomD.GridFrameOffsetVector=dicomD.GridFrameOffsetVector+"\"+Format((data.Z-dose.Dose_Distribution(0).Z)*-10,"-0.0###")
		      end
		    next
		  else
		    for h=0 to Dose.Size_of_Dimension3-1
		      data=Dose.Dose_Distribution(h)
		      if h=0 Then
		        dicomD.GridFrameOffsetVector=Format((data.Z-dose.Dose_Distribution(0).Z)*10,"-0.0###")
		      else
		        dicomD.GridFrameOffsetVector=dicomD.GridFrameOffsetVector+"\"+Format((data.Z-dose.Dose_Distribution(0).Z)*10,"-0.0###")
		      end
		    next
		  end
		  
		  
		  // Make the 1D array of pixel values
		  for h= 0 to Dose.Size_of_Dimension3-1 
		    data=Dose.Dose_Distribution(h)
		    for k=0 to Dose.Size_of_Dimension1*Dose.Size_of_Dimension2-1
		      test=data.Points(k)/dicomD.DoseGridScaling
		      // Place voxel point in correct order for DICOM pixels
		      if gPref.DICOM_Z_Invert Then
		        dicomD.PixelData((Dose.Size_of_Dimension3-1-h)*Dose.Size_of_Dimension1*Dose.Size_of_Dimension2+k) =test
		      else
		        dicomD.PixelData(h*Dose.Size_of_Dimension1*Dose.Size_of_Dimension2+k) =test
		      end
		    next
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Convert_McGillRT2DICOM_RTImage()
		  //------------------------------------------------
		  // This Method converts McGill classes into
		  // DICOM RT Classes. 
		  // Including Images
		  //
		  //
		  //-------------------------------------------------
		  Dim i,j,k,h as integer
		  Dim data as RTOG_Dose_Plane
		  dim dicomI  as Class_DICOM_Image
		  dim nowdate as date
		  Dim temps as String
		  Dim test as Int64
		  '============================
		  
		  nowdate=new date
		  
		  
		  
		  
		  for i=0 to UBound(Scan)
		    Scan(i).Size_of_Dimension1=gVis.nx
		    Scan(i).Size_of_Dimension2=gVis.ny
		    Scan(i).X_Offset=gVis.xoff_set
		    Scan(i).y_Offset=gVis.yoff_set
		    Scan(i).Slice_Thickness=gVis.scale_thickness
		    Scan(i).Grid_Units_Width=gVis.scale_width
		    Scan(i).Grid_Units_Height=gVis.scale_height
		    Scan(i).patient_position=PatientPosition
		  Next
		  
		  
		  
		  
		  
		  
		  
		  // Tansfer to DICOM class
		  for i=0 to UBound(Scan)
		    
		    dicomi=new Class_DICOM_Image
		    // Append DICOM Dose to temp DICOM thread
		    gdicom.RT_Images.Append dicomI
		    
		    dicomi.Image_Type="ORIGINAL\PRIMARY\AXIAL"
		    dicomi.InstanceCreationDate=nowdate.Year*10000+nowdate.Month*100+nowdate.Day
		    dicomi.InstanceCreationTime=Format(nowdate.TotalSeconds,"#")
		    
		    dicomi.SOPInstanceUID=Scan(i).DICOM_SOP_Instance_UID
		    dicomi.StudyDate=DICOM_Study_Date
		    dicomI.SeriesDate=DICOM_Study_Date
		    dicomi.AcquisitionDate=DICOM_Study_Date
		    
		    dicomi.StudyTime=DICOM_Study_Time
		    dicomi.SeriesTime=DICOM_Study_Time
		    dicomi.AcquisitionTime=DICOM_Study_Time
		    
		    dicomi.Modality="CT"
		    dicomi.Manufacturer=gPref.Manufacturer
		    dicomI.Physician=DICOM_Physician
		    dicomi.StudyDescription=DICOM_Study_Description
		    dicomI.SeriesDescription=seriesdescription
		    
		    dicomi.PatientID=gRTOG.Patient_ID
		    dicomi.PatientName=gRTOG.Patient_Surname+"^"+gRTOG.Patient_Name
		    
		    dicomi.PatientBirthDate=DICOM_Birthdate
		    dicomi.Sex=DICOM_Sex
		    dicomi.Age=DICOM_Age
		    
		    dicomi.SliceThickness=10*Scan(i).Slice_Thickness
		    
		    dicomI.patient_position=Scan(i).patient_position
		    
		    dicomI.StudyInstanceUID=StudyInstanceUID
		    dicomI.SeriesInstanceUID=SeriesInstanceUID
		    dicomI.StudyID=StudyID
		    dicomI.SeriesNumber=SeriesNumber
		    
		    dicomI.AccessionNumber=""
		    
		    
		    dicomI.ImagePositionPatient=Format(10*Scan(i).X_Offset,"-#.###")+"\"+Format(10*Scan(i).y_Offset,"-#.###")+"\"+Format(10*Scan(i).Z_Value,"-#.###")
		    dicomi.ImageOrientationPatient=DICOM_ImageOrientationPatient
		    dicomi.FrameOfReferenceUID=FrameOfReferenceUID
		    
		    dicomI.InstanceNumber=i+1
		    
		    dicomI.ImagesinAcquisition=(UBound(Scan)+1)
		    
		    dicomI.SliceLocation=Scan(i).Z_Value
		    
		    dicomI.SampleperPixel="1"
		    dicomi.PhotometricInterpretation="MONOCHROME2"
		    dicomi.row=Scan(i).Size_of_Dimension1
		    dicomi.Columns=Scan(i).Size_of_Dimension2
		    
		    dicomi.PixelSpacing=Format(10*Scan(i).Grid_Units_Width,"-0.000000")+"\"+Format(10*Scan(i).Grid_Units_Height,"-0.000000")
		    
		    dicomi.BitsAllocated=gPref.DICOM_Bytes
		    dicomi.HighBit=gPref.DICOM_Bytes-1
		    dicomi.BitsStored=gPref.DICOM_Bytes
		    
		    dicomI.SmallestImagePixelValue=0
		    dicomI.rescaleintercept=-1024
		    dicomI.rescaleslope=1.0
		    
		    if gPref.DICOM_Bytes=16 Then
		      //Signed rage −32768 to 32767
		      
		    else // 32 bites
		      // Signed rage −2,147,483,648 to 2,147,483,647,
		      
		    end
		    
		    ReDim dicomi.PixelData(Scan(i).Size_of_Dimension1*Scan(i).Size_of_Dimension2-1)
		    
		    // Make the 1D array of pixel values
		    for k=0 to UBound(dicomI.PixelData)
		      test=Scan(i).voxel(k)-dicomI.rescaleintercept
		      dicomi.PixelData(k) =test
		    next
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Convert_McGillRT2DICOM_RTPlan(planidex as integer)
		  //----------------------------------------------------
		  // This Method converts McGill classes into
		  // DICOM RT Classes. 
		  // including RTOG plans
		  //
		  //
		  //-----------------------------------------------------
		  Dim i,j,k,h as integer
		  Dim dicomP as Class_DICOM_Plan
		  dim nowdate as date
		  Dim temps as String
		  Dim test as Int64
		  Dim fgs as new Class_DICOM_Plan_Fractiongroup
		  Dim rbs as new Class_DICOM_ReferencedBeamSequence
		  Dim BS as new Class_DICOM_Plan_BeamSequence
		  Dim BLDS as new Class_DICOM_Plan_BeamLimitingDeviceSequence
		  Dim BLDPS as new Class_DICOM_Plan_BeamLimitingDevicePositionSequence
		  Dim WS as new Class_DICOM_Plan_WedgeSequence
		  Dim WPS as new Class_DICOM_Plan_WedgePositionSequence
		  Dim CPS as new Class_DICOM_Plan_ControlPointSequence
		  Dim PSS as new Class_DICOM_Plan_PatientSetupSequence
		  Dim Blsq as new Class_DICOM_Plan_BlockSequence
		  Dim AppSQ as new Class_DICOM_Plan_ApplicatorSequence
		  Dim rsss as new Class_DICOM_Plan_ReferencedStructureSetSequence
		  Dim rds as  new Class_DICOM_Plan_ReferencedDoseSequence
		  Dim RDRS as  new Class_DICOM_Plan_ReferencedDoseReferenceSequence
		  Dim drs as new Class_DICOM_Plan_DoseReferenceSequence
		  //-----------------------------------------------------
		  
		  
		  nowdate = new date
		  dicomP=new Class_DICOM_Plan
		  
		  
		  
		  
		  // Append DICOM Plan to temp DICOM thread
		  gDICOM.RT_Plan.Append dicomP
		  
		  
		  // Always the same for all dicom dose 
		  if gPref.DICOM_Format=0 Then
		    //Implicit
		    dicomp.TransferSyntaxUID="1.2.840.10008.1.2"
		  else
		    dicomp.TransferSyntaxUID="1.2.840.10008.1.2.1"
		  end
		  
		  dicomp.ImplementationClassUID="1.2.246.352.70.2.1.7"
		  
		  dicomp.InstanceCreationDate=Format(nowdate.Year,"#")+Format(nowdate.Month,"00")+Format(nowdate.Day,"00")
		  dicomP.InstanceCreationTime=Format(nowdate.TotalSeconds,"#")
		  
		  // This is for DICOM plan file
		  dicomP.SOPClassUID="1.2.840.10008.5.1.4.1.1.481.5"
		  dicomp.MediaStorageSOPClassUID=dicomP.SOPClassUID
		  
		  
		  // Assign SOP Instance UID
		  if gRTOG.Plan(Planidex).DICOM_SOPInstanceUID="" Then
		    // Unique UID name for file Source code from MATLAB
		    gRTOG.Plan(Planidex).DICOM_SOPInstanceUID=gdicom.UID_Make
		  end
		  dicomP.SOPInstanceUID=gRTOG.Plan(Planidex).DICOM_SOPInstanceUID
		  dicomP.MediaStorageSOPInstanceUID=dicomP.SOPInstanceUID
		  
		  
		  
		  
		  // This should be the same Study Instatnce UID as the patient
		  // Update 2012 for Tomo compliance
		  dicomP.StudyInstanceUID=StudyInstanceUID
		  
		  
		  if gRTOG.Plan(Planidex).DICOM_SeriesInstanceUID="" Then
		    // Unique UID name for file Source code from MATLAB
		    gRTOG.Plan(planidex).DICOM_SeriesInstanceUID=dicomP.MediaStorageSOPInstanceUID+".1"
		  end
		  dicomp.SeriesInstanceUID=gRTOG.Plan(planidex).DICOM_SeriesInstanceUID
		  
		  
		  dicomp.StudyDate=DICOM_Study_Date
		  dicomp.StudyTime=DICOM_Study_Time
		  dicomP.AccessionNumber=""
		  dicomP.Modality="RTPLAN"
		  dicomP.Manufacturer=gPref.Manufacturer
		  dicomP.ReferringPhysicianName=""
		  dicomp.StationName=gPref.StationName
		  dicomp.StudyDescription=DICOM_Study_Description
		  dicomp.SeriesDescription=gRTOG.Plan(planidex).SeriesDescription
		  dicomP.PhysicianofRecord=""
		  dicomp.OperatorsName=""
		  dicomp.Manufacturer_Model_Name=gPref.ManufacturerName
		  dicomP.PatientGroupLength=""
		  dicomp.PatientID=gRTOG.Patient_ID
		  dicomp.PatientName=gRTOG.Patient_Surname+"^"+gRTOG.Patient_Name
		  dicomp.Birthdate=DICOM_Birthdate
		  dicomp.Sex=DICOM_Sex
		  dicomp.Age=DICOM_Age
		  dicomP.AcquisitionGroupLength=""
		  dicomp.SoftwareVersions=gPref.SoftwareVersion
		  dicomP.RelationshipGroupLength=""
		  dicomp.StudyID=gRTOG.StudyID
		  dicomp.SeriesNumber=CStr(gRTOG.Plan(planidex).DICOM_SeriesNumber)
		  dicomP.InstanceNumber=""
		  dicomP.FrameOfReferenceUID=gRTOG.FrameOfReferenceUID
		  dicomP.PositionReferenceIndicator=""
		  dicomP.RTPlan_Label=gRTOG.Plan(planidex).Plan_Name
		  dicomP.RTPlan_Name=gRTOG.Plan(planidex).Plan_Name
		  dicomP.RTPlan_Description=gRTOG.Plan(planidex).Plan_Name
		  dicomP.RTPlan_Date=gRTOG.Plan(planidex).Plan_Date
		  dicomP.RTPlan_Time=gRTOG.Plan(planidex).Plan_Time
		  dicomP.RTPlan_Geometry="PATIENT"
		  dicomP.ApprovalStatus=Plan(planidex).ApprovalStatus
		  dicomP.ReviewDate=Plan(planidex).ReviewDate
		  dicomP.ReviewTime=Plan(planidex).ReviewTime
		  dicomP.ReviewerName=Plan(planidex).ReviewerName
		  
		  
		  // Get the target and OAR values into the plan file
		  k=0
		  for i=0 to UBound(grtog.Structures.Structures)
		    if gRTOG.Plan(planidex).Structure_Dose(i).Use_Max_Dose or gRTOG.Plan(planidex).Structure_Dose(i).Use_Min_Dose or gRTOG.Plan(planidex).Structure_Dose(i).Use_DV_Constraint Then 
		      k=k+1
		      drs = new Class_DICOM_Plan_DoseReferenceSequence
		      dicomP.DoseReferenceSequence.Append drs
		      drs.DoseReferenceNumber=k
		      drs.ReferencedROINumb=grtog.Structures.Structures(i).ROI_Number
		      
		      if gRTOG.Plan(planidex).Structure_Dose(i).Use_Min_Dose Then
		        drs.DoseReferenceDescription="Target"
		        drs.DoseReferenceType="TARGET"
		        drs.TargetMinDose=gRTOG.Plan(planidex).Structure_Dose(i).MinDose
		        drs.TargetMaxDose=gRTOG.Plan(planidex).Structure_Dose(i).MaxDose
		        drs.TargetPxDose=gRTOG.Plan(planidex).Structure_Dose(i).Target_Norm_Dose
		        drs.TargetUnderDoseVolume=1-gRTOG.Plan(planidex).Structure_Dose(i).Target_Norm_Volume/100
		        drs.Tomo_MinDose_Pen=gRTOG.Plan(planidex).Structure_Dose(i).Min_Priority
		        drs.Tomo_MaxDose_Pen=gRTOG.Plan(planidex).Structure_Dose(i).Max_Priority
		        dicomP.Prescription_Description=Format(gRTOG.Plan(planidex).Structure_Dose(i).Target_Norm_Volume,"0.0")+"% of the PTV volume receives at least "+Format(gRTOG.Plan(planidex).Structure_Dose(i).Target_Norm_Dose,"0.0")+" Gy"
		      else
		        drs.DoseReferenceDescription="Sensitive Structure"
		        drs.DoseReferenceType="ORGAN_AT_RISK"
		        //drs.OrganatRiskMaximumDose=gRTOG.Plan(planidex).Structure_Dose(i).MaxDose
		        if UBound(gRTOG.Plan(planidex).Structure_Dose(i).Constraints)>-1 Then
		          drs.OrganatRiskMaximumDose=gRTOG.Plan(planidex).Structure_Dose(i).Constraints(0).dose
		          drs.OrganatRiskOverdoseVolumeFraction=gRTOG.Plan(planidex).Structure_Dose(i).Constraints(0).volume/100
		          drs.Tomo_DV_Pen=gRTOG.Plan(planidex).Structure_Dose(i).Constraints(0).Priority
		        end
		        drs.OrganatRiskFullVolumeDose=gRTOG.Plan(planidex).Structure_Dose(i).MaxDose
		        drs.Tomo_MaxDose_Pen=gRTOG.Plan(planidex).Structure_Dose(i).Max_Priority
		      end
		      drs.ConstraintWeight=gRTOG.Plan(planidex).Structure_Dose(i).Importance
		      drs.Tomo_Overlap_Prio=gRTOG.Plan(planidex).Structure_Dose(i).OverlapPriority
		    end
		  Next
		  
		  
		  //-------------------------------------- Fraction group sequence
		  dicomP.FractionGroupSequence.Append fgs
		  fgs.numberofbeams=UBound(gRTOG.Plan(planidex).Beam)+1
		  if UBound(gRTOG.Plan(planidex).Beam)>-1 Then
		    fgs.numberoffractionsplanned=gRTOG.Plan(planidex).Beam(0).Number_of_Tx
		    fgs.fractiongroupnumber=1
		    for i=0 to UBound(gRTOG.Plan(planidex).Beam)
		      rbs = new Class_DICOM_ReferencedBeamSequence
		      rbs.BeamDose=gRTOG.Plan(planidex).Beam(i).Rx_Dose
		      rbs.BeamMeterset=gRTOG.Plan(planidex).Beam(i).MU
		      rbs.Referencedbeamnumber=i+1
		      
		      if gRTOG.Plan(planidex).Beam(i).Beam_Weight_Point="1" Then
		        gRTOG.Plan(planidex).Beam(i).Beam_Weight_Point=Format(gRTOG.Plan(planidex).Beam(i).Collimator.Fields(0).isocenter.x*10,"-#.0000")+"\"+_
		        Format(gRTOG.Plan(planidex).Beam(i).Collimator.Fields(0).isocenter.y*10,"-#.0000")+"\"+_
		        Format(gRTOG.Plan(planidex).Beam(i).Collimator.Fields(0).isocenter.z*10,"-#.0000")
		      end
		      rbs.Beam_Dose_Point=gRTOG.Plan(planidex).Beam(i).Beam_Weight_Point
		      fgs.Referencedbeamsequence.Append rbs
		    Next
		  end
		  
		  
		  //-------------------------------------- Beam sequence
		  if UBound(gRTOG.Plan(planidex).Beam)>-1 Then
		    for i=0 to UBound(gRTOG.Plan(planidex).Beam)
		      BS= new Class_DICOM_Plan_BeamSequence
		      dicomP.BeamSequence.Append BS
		      
		      bs.Manufacturer=gPref.Manufacturer
		      bs.ManufactureModelname=gPref.ManufacturerName
		      bs.TreatmentMachineName=gRTOG.Plan(planidex).Beam(i).RT_name
		      bs.SAD=gRTOG.Plan(planidex).Beam(i).Nominal_Isocenter*10
		      bs.BeamNumber=(i+1)
		      bs.BeamType=gRTOG.Plan(planidex).Beam(i).beam_type
		      bs.RadiationType=gRTOG.Plan(planidex).Beam(i).Beam_Mode
		      bs.NumberofControlPoints=gRTOG.Plan(planidex).Beam(i).Collimator.NumFields
		      if bs.NumberofControlPoints=0 or bs.NumberofControlPoints=1 Then
		        bs.NumberofControlPoints=2
		      end
		      
		      bs.FluenceModeSQ.Append new Class_DICOM_Plan_PrimaryFluenceModeSQ
		      
		      bs.FluenceModeSQ(0).FluenceMode="STANDARD"
		      
		      bs.TreatmentDeliveryType="TREATMENT"
		      bs.RadiationType=gRTOG.Plan(planidex).Beam(i).Beam_Mode
		      bs.BeamNumber=(i+1)
		      
		      if gRTOG.Plan(planidex).Beam(i).Collimator.Type="" Then
		        bs.BeamType=gRTOG.Plan(planidex).Beam(i).Beam_Type
		      else
		        bs.BeamType=gRTOG.Plan(planidex).Beam(i).Collimator.Type
		      end
		      
		      
		      if gPref.DICOM_FileStructure=0 or  gPref.DICOM_FileStructure=2 Then
		        bs.TreatmentMachineName=gRTOG.Plan(planidex).Beam(i).RT_name
		        bs.PrimaryDosimeterUnit="MU"
		        
		        BLDS = new Class_DICOM_Plan_BeamLimitingDeviceSequence
		        bs.BeamLimitingDevice.Append BLDS
		        BLDS.RTBeamLimitingDeviceType="X"
		        BLDS.NumberofLeafjawPairs="1"
		        BLDS.SourceToBeamLimitingDeviceDistance="336.0"
		        
		        BLDS = new Class_DICOM_Plan_BeamLimitingDeviceSequence
		        bs.BeamLimitingDevice.Append BLDS
		        BLDS.RTBeamLimitingDeviceType="Y"
		        BLDS.NumberofLeafjawPairs="1"
		        BLDS.SourceToBeamLimitingDeviceDistance="336.0"
		        
		        BLDS = new Class_DICOM_Plan_BeamLimitingDeviceSequence
		        bs.BeamLimitingDevice.Append BLDS
		        BLDS.RTBeamLimitingDeviceType="MLCX"
		        BLDS.NumberofLeafjawPairs=str(gRTOG.Plan(planidex).Beam(i).MLC.NumberofLeafPairs)
		        BLDS.SourceToBeamLimitingDeviceDistance=Format(gRTOG.Plan(planidex).Beam(i).MLC.Source_to_MLC,"-#.##")
		        if UBound(gRTOG.Plan(planidex).Beam(i).MLC.LeafBoundaries)>-1 Then
		          BLDS.LeafPositionBoundaries=Format(10*gRTOG.Plan(planidex).Beam(i).MLC.LeafBoundaries(0),"-#.#")
		          for h=1 to UBound(gRTOG.Plan(planidex).Beam(i).MLC.LeafBoundaries)
		            BLDS.LeafPositionBoundaries=BLDS.LeafPositionBoundaries+"\"+Format(10*gRTOG.Plan(planidex).Beam(i).MLC.LeafBoundaries(h),"-#.#")
		          Next
		        end
		        
		        bs.BeamName=gRTOG.Plan(planidex).Beam(i).Beam_Description
		        bs.BeamDescrip=gRTOG.Plan(planidex).Beam(i).Beam_Description
		        
		        for k=0 to bs.NumberofControlPoints-1
		          cps = new Class_DICOM_Plan_ControlPointSequence
		          bs.ControlPointSequence.Append cps
		          cps.ControlPointIndex=k
		          
		          if k=0 Then
		            cps.ControlPointIndex=0
		            cps.NominalBeamEnergy=val(gRTOG.Plan(planidex).Beam(i).Beam_Energy)
		            
		            
		            BLDPS=new Class_DICOM_Plan_BeamLimitingDevicePositionSequence
		            cps.BeamLimitingDevicePositionSequence.Append BLDPS
		            
		            BLDPS.RTBeamLimitingDevice="ASYMX"
		            BLDPS.LeafjawPositions=Format(-10*gRTOG.Plan(planidex).Beam(i).Collimator.fields(k).X1,"-00.0")+"\"+Format(-10*gRTOG.Plan(planidex).Beam(i).Collimator.fields(k).X2,"00.0")
		            
		            
		            BLDPS=new Class_DICOM_Plan_BeamLimitingDevicePositionSequence
		            cps.BeamLimitingDevicePositionSequence.Append BLDPS
		            
		            BLDPS.RTBeamLimitingDevice="ASYMY"
		            BLDPS.LeafjawPositions=Format(-10*gRTOG.Plan(planidex).Beam(i).Collimator.fields(k).y1,"-00.0")+"\"+Format(-10*gRTOG.Plan(planidex).Beam(i).Collimator.fields(k).y2,"00.0")
		            
		            
		            BLDPS=new Class_DICOM_Plan_BeamLimitingDevicePositionSequence
		            cps.BeamLimitingDevicePositionSequence.Append BLDPS
		            BLDPS.RTBeamLimitingDevice="MLCX"
		            if UBound(gRTOG.Plan(planidex).Beam(i).MLC.Fields(k).leaf_a)>-1 Then
		              BLDPS.LeafjawPositions=Format(-10*gRTOG.Plan(planidex).Beam(i).MLC.Fields(k).leaf_b(0),"-#.#")
		              for h=1 to UBound(gRTOG.Plan(planidex).Beam(i).MLC.Fields(k).leaf_a)
		                BLDPS.LeafjawPositions=BLDPS.LeafjawPositions+"\"+Format(-10*gRTOG.Plan(planidex).Beam(i).MLC.Fields(k).leaf_b(h),"-#.#")
		              Next
		              for h=0 to UBound(gRTOG.Plan(planidex).Beam(i).MLC.Fields(k).leaf_a)
		                BLDPS.LeafjawPositions=BLDPS.LeafjawPositions+"\"+Format(10*gRTOG.Plan(planidex).Beam(i).MLC.Fields(k).leaf_a(h),"-#.#")
		              Next
		              
		            end
		            
		            //cps.GantryAngle=val(gRTOG.Plan(planidex).Beam(i).)
		            cps.GantryRotationDirection="NONE"
		            cps.IsocenterPosition=Format(gRTOG.Plan(planidex).Beam(i).Collimator.Fields(0).isocenter.x*10,"-#.0000")+"\"+_
		            Format(gRTOG.Plan(planidex).Beam(i).Collimator.Fields(0).isocenter.y*10,"-#.0000")+"\"+_
		            Format(gRTOG.Plan(planidex).Beam(i).Collimator.Fields(0).isocenter.z*10,"-#.0000")
		            cps.GantryAngle=gRTOG.Plan(planidex).Beam(i).Collimator.Fields(0).Gantry_Angle
		            cps.SSD=gRTOG.Plan(planidex).Beam(i).SSD*10
		            cps.CumulativeMetersetWeight=0
		            
		            
		          else
		            
		            cps.ControlPointIndex=k
		            cps.CumulativeMetersetWeight=1
		            
		          end
		          
		          //Reference dose reference sequence
		          RDRS=new Class_DICOM_Plan_ReferencedDoseReferenceSequence
		          cps.ReferencedDoseReferenceSequence.Append RDRS
		          RDRS.CumulativeDoseReferenceCoefficient=cps.CumulativeMetersetWeight
		          RDRS.ReferencedDoseReferenceNumber=i+1
		          
		          
		        next // loop for each control point
		        
		        
		        
		      elseif  gPref.DICOM_FileStructure=1 then  // Tomo format Then
		        bs.PrimaryDosimeterUnit="MINUTE"
		        bs.BeamType="DYNAMIC"
		        bs.BeamName="Helical TomoTherapy Beam"
		        bs.BeamDescrip="Beam pitch 0.287, Field size 25.00 mm"
		        bs.TreatmentDeliveryType="TREATMENT"
		        
		        
		        BLDS = new Class_DICOM_Plan_BeamLimitingDeviceSequence
		        bs.BeamLimitingDevice.Append BLDS
		        BLDS.RTBeamLimitingDeviceType="X"
		        BLDS.NumberofLeafjawPairs="1"
		        
		        BLDS = new Class_DICOM_Plan_BeamLimitingDeviceSequence
		        bs.BeamLimitingDevice.Append BLDS
		        BLDS.RTBeamLimitingDeviceType="ASYMY"
		        BLDS.NumberofLeafjawPairs="1"
		        
		        
		        
		        
		        for k=0 to bs.NumberofControlPoints-1
		          cps = new Class_DICOM_Plan_ControlPointSequence
		          bs.ControlPointSequence.Append cps
		          cps.ControlPointIndex=k
		          cps.NominalBeamEnergy=val(gRTOG.Plan(planidex).Beam(i).Beam_Energy)
		          
		          if k=0 Then
		            BLDPS=new Class_DICOM_Plan_BeamLimitingDevicePositionSequence
		            cps.BeamLimitingDevicePositionSequence.Append BLDPS
		            
		            BLDPS.RTBeamLimitingDevice="X"
		            BLDPS.LeafjawPositions="-200.0\200.0"
		            
		            BLDPS=new Class_DICOM_Plan_BeamLimitingDevicePositionSequence
		            cps.BeamLimitingDevicePositionSequence.Append BLDPS
		            
		            BLDPS.RTBeamLimitingDevice="ASYMY"
		            BLDPS.LeafjawPositions="-12.5\12.5"
		            
		          end
		          //cps.GantryAngle=val(gRTOG.Plan(planidex).Beam(i).)
		          cps.GantryRotationDirection="CW"
		          cps.IsocenterPosition=Format(gRTOG.Plan(planidex).Beam(i).Collimator.Fields(0).isocenter.x*10,"-#.0000")+"\"+_
		          Format(gRTOG.Plan(planidex).Beam(i).Collimator.Fields(0).isocenter.y*10,"-#.0000")+"\"+_
		          Format(gRTOG.Plan(planidex).Beam(i).Collimator.Fields(0).isocenter.z*10,"-#.0000")
		          cps.TomoSinogram="0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0\0.0"
		        Next
		      end
		    Next
		  end
		  
		  
		  // --------------------Patient Setup Sequence--------------------
		  PSS= new Class_DICOM_Plan_PatientSetupSequence
		  dicomP.PatientSetupSequence.Append PSS
		  pss.PatientPosition=PatientPosition
		  pss.PatientSetupNumber=1
		  pss.SetupTechnique="ISOCENTRIC"
		  if gPref.DICOM_FileStructure=0 or gPref.DICOM_FileStructure=2 Then
		    
		    
		  elseif gPref.DICOM_FileStructure=1 Then // Tomo format
		    
		    PSS.SetupDeviceSequence.Append new Class_DICOM_Plan_SetupDevice
		    PSS.SetupDeviceSequence(0).SetupDeviceType="LASER_POINTER"
		    PSS.SetupDeviceSequence(0).SetupDeviceLabel="RED IEC X"
		    PSS.SetupDeviceSequence(0).SetupDeviceParameter="-0.8065313"
		    PSS.SetupDeviceSequence(0).SetupDeviceParameter="0"
		    
		    
		    PSS.SetupDeviceSequence.Append new Class_DICOM_Plan_SetupDevice
		    PSS.SetupDeviceSequence(1).SetupDeviceType="LASER_POINTER"
		    PSS.SetupDeviceSequence(1).SetupDeviceLabel="RED IEC Y"
		    PSS.SetupDeviceSequence(1).SetupDeviceParameter="71.28476"
		    PSS.SetupDeviceSequence(1).SetupDeviceParameter="0"
		    
		    PSS.SetupDeviceSequence.Append new Class_DICOM_Plan_SetupDevice
		    PSS.SetupDeviceSequence(2).SetupDeviceType="LASER_POINTER"
		    PSS.SetupDeviceSequence(2).SetupDeviceLabel="RED IEC Z"
		    PSS.SetupDeviceSequence(2).SetupDeviceParameter="0.52982146"
		    PSS.SetupDeviceSequence(2).SetupDeviceParameter="0"
		    
		  end
		  //--------------------------------------------
		  
		  // Standard UID for structure set reference
		  rsss.ReferencedSOPClassUID="1.2.840.10008.5.1.4.1.1.481.3"
		  if ReferencedStructureSetSequence="" Then
		    ReferencedStructureSetSequence=gDICOM.UID_Make
		  end
		  rsss.ReferencedSOPInstanceUID=ReferencedStructureSetSequence
		  dicomp.ReferencedStructureSetSequence.Append rsss
		  
		  // Standard UID for dose set reference
		  
		  
		  if UBound(Plan(planidex).Dose)>-1 Then
		    if Plan(planidex).Dose(0).SOP_Instance_UID="" Then
		      Plan(planidex).Dose(0).SOP_Instance_UID=gDICOM.UID_Make
		    end
		    
		    rds.ReferencedSOPClassUID="1.2.840.10008.5.1.4.1.1.481.2"
		    rds.ReferencedSOPInstanceUID=Plan(planidex).Dose(0).SOP_Instance_UID
		    dicomp.ReferencedDoseSequence.append rds
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Convert_McGillRT2DICOM_RTStructures()
		  //------------------------------------------------
		  // This Method converts McGill RT Classes into DICOM Structures classes
		  //
		  //
		  //-------------------------------------------------
		  Dim dicomS as Class_DICOM_Structures
		  Dim i,b,z,k,x,segnum,num_points,scan_num as Integer
		  Dim srt as RTOG_Structure
		  Dim pp as RTOG_Structure_Point
		  Dim id_found,slice_found as Boolean
		  Dim new_segment as RTOG_Structure_Segment
		  Dim sdata as RTOG_Structure_Slice
		  Dim points_data as String
		  Dim z_axial_value,MaxSliceDistance as Single
		  dim nowdate as date
		  dim SetROISequence as Class_DICOM_Structure_SetROISequence
		  Dim rfors as new Class_DICOM_Referenced_Frame_of_Ref_Sequence
		  Dim RTRSS as new Class_DICOM_Referenced_Study_Sequence
		  Dim RTRSeriesS as new Class_DICOM_Referenced_Series_Sequence
		  Dim cis as new Class_DICOM_Structure_ContourImageSequence
		  Dim ROI as new Class_DICOM_Structure_ROContourSequence
		  Dim RTROI_Ob as Class_DICOM_Structure_ROI_Obv_Sequence
		  Dim cs as Class_DICOM_Structure_ContourSequence
		  //----------------------------------------
		  
		  
		  // Append DICOM Structure to temp DICOM thread
		  dicomS = new Class_DICOM_Structures
		  gdicom.RT_Structures.Append dicomS
		  nowdate = new date
		  
		  dicoms.InstanceCreationDate=Format(nowdate.Year,"#")+Format(nowdate.Month,"00")+Format(nowdate.Day,"00")
		  dicoms.InstanceCreationTime=Format(nowdate.TotalSeconds,"#")
		  dicoms.SOPInstanceUID=ReferencedStructureSetSequence
		  
		  // Assign SOP Instance UID
		  if dicoms.SOPInstanceUID="" Then
		    // Unique UID name for file Source code from MATLAB
		    dicoms.SOPInstanceUID=gdicom.UID_Make
		  end
		  //dicoms.MediaStorageSOPInstanceUID=dicomP.SOPInstanceUID
		  
		  // This should be the same Study Instatnce UID as the patient
		  // This should be a unique number since there is only one Ddistribution,
		  // Update 2012 for Tomo compliance
		  //dicomD.SeriesInstanceUID=dicom.Make_UID
		  dicoms.StudyInstanceUID=StudyInstanceUID
		  //dicomp.SeriesInstanceUID=dicomP.MediaStorageSOPInstanceUID+".1"
		  dicoms.SeriesInstanceUID=SeriesInstanceUID
		  dicoms.StudyDate=DICOM_Study_Date
		  dicoms.StudyTime=DICOM_Study_Time
		  dicoms.Manufacturer=gPref.Manufacturer
		  dicoms.StudyDescription=DICOM_Study_Description
		  dicoms.SeriesDescription=seriesdescription
		  dicoms.ManufacturerModelName=gPref.ManufacturerName
		  dicoms.PatientID=gRTOG.Patient_ID
		  dicoms.PatientName=gRTOG.Patient_Surname+"^"+gRTOG.Patient_Name
		  dicoms.PatientBirthDate=DICOM_Birthdate
		  dicoms.Sex=DICOM_Sex
		  dicoms.Age=DICOM_Age
		  dicoms.SoftwareVersion=gPref.SoftwareVersion
		  dicoms.StudyID=gRTOG.StudyID
		  dicoms.SeriesNumber=SeriesNumber
		  
		  // Referenced Frame of Reference Sequence
		  dicomS.RFORS.Append rfors
		  rfors.FrameofReferenceUID=FrameOfReferenceUID
		  rfors.ReferencedStudySequence.Append RTRSS
		  RTRSS.ReferencedSOPClassUID="1.2.840.10008.3.1.2.3.1"
		  RTRSS.ReferencedSOPInstanceUID=StudyInstanceUID
		  RTRSS.RTReferencedSeriesSequence.Append RTRSeriesS
		  RTRSeriesS.SeriesInstanceUID=SeriesInstanceUID
		  for z=0 to UBound(Scan)
		    cis = new Class_DICOM_Structure_ContourImageSequence
		    cis.ReferencedSOPClassUID="1.2.840.10008.5.1.4.1.1.2"
		    cis.ReferencedSOPInstanceUID=Scan(z).DICOM_SOP_Instance_UID
		    RTRSeriesS.ContourImageSequence.Append cis
		  Next
		  // End referenced Frame of RS
		  
		  // Structure Set ROI Sequence
		  for z=0 to UBound(Structures.Structures)
		    SetROISequence=new Class_DICOM_Structure_SetROISequence
		    dicomS.SetROISequence.Append SetROISequence
		    SetROISequence.ROIName=Structures.Structures(z).Structure_Name
		    SetROISequence.ROI_num=Structures.Structures(z).ROI_Number
		    SetROISequence.ReferencedFrameofRefUID=FrameOfReferenceUID
		    SetROISequence.ROI_Algorithm="MANUAL"
		  Next
		  
		  
		  // ---------ROI Contour Sequence-------
		  for z=0 to UBound(Structures.Structures)
		    ROI = new Class_DICOM_Structure_ROContourSequence
		    dicomS.ROIContourSequence.Append ROI
		    ROI.ROIColour=Structures.Structures(z).scolor
		    roi.ReferencedROINumber=Format(Structures.Structures(z).ROI_Number,"#")
		    for i=0 to UBound(Structures.Structures(z).Structure_Data)
		      if UBound(Structures.Structures(z).Structure_Data(i).Segments)>-1 Then
		        cs = new Class_DICOM_Structure_ContourSequence
		        ROI.ContourSequence.Append cs
		        cis = new Class_DICOM_Structure_ContourImageSequence
		        cs.contourimagesequence.Append cis
		        cis.ReferencedSOPClassUID="1.2.840.10008.5.1.4.1.1.2"
		        cis.ReferencedSOPInstanceUID=Scan(i).DICOM_SOP_Instance_UID
		        cs.GeometricType="CLOSED_PLANAR"
		        cs.SlabThickness=Format(gVis.scale_thickness*10,"-0.0")
		        cs.OffsetVector="0.0\0.0\0.0"
		        cs.numberofcontourpoints=UBound(Structures.Structures(z).Structure_Data(i).Segments(0).Points)+1
		        cs.data=""
		        for x=0 to cs.numberofcontourpoints-1
		          points_data=Format(Structures.Structures(z).Structure_Data(i).Segments(0).Points(x).x*10,"-0.0###")+"\"+Format(Structures.Structures(z).Structure_Data(i).Segments(0).Points(x).y*10,"-0.0###")+"\"+Format(Structures.Structures(z).Structure_Data(i).Segments(0).Points(x).z*10,"-0.0###")
		          if x=0 Then
		            cs.data=points_data
		          else
		            cs.data=cs.data+"\"+points_data
		          end
		        Next
		      end
		    Next
		  Next
		  //-----------------------------------------
		  
		  
		  // ---------ROI Contour Sequence-------
		  for z=0 to UBound(Structures.Structures)
		    RTROI_Ob= new Class_DICOM_Structure_ROI_Obv_Sequence
		    dicomS.ROI_Obs_Seq.Append RTROI_Ob
		    RTROI_Ob.Ob_num=z+1
		    RTROI_Ob.ReferencedROI_Num=Format(Structures.Structures(z).ROI_Number,"#")
		    RTROI_Ob.RT_ROI_Inter_Type=Structures.Structures(z).StructureType
		    RTROI_Ob.ROI_Inter=""
		    if Structures.Structures(z).ElectronDensityOverride Then
		      RTROI_Ob.ROI_Phys_Prop_Sequ.Append(new Class_DICOM_Structure_ROI_Physical_Prop_Seq)
		      RTROI_Ob.ROI_Phys_Prop_Sequ(0).ROI_Phys_Prop="REL_ELEC_DENSITY"
		      RTROI_Ob.ROI_Phys_Prop_Sequ(0).ROI_Phys_Prop_Value=Format(Structures.Structures(z).ElectronDensity*100,"-0.00#")
		    end
		  Next
		  //-----------------------------------------
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Convert_RTOG2McGillRT(RTOG as Thread_RTOG)
		  //------------------------------------------------
		  // This Method converts RTOG classes into
		  // McGill RT Classes. Including images, plans, beams, doses
		  // and structures.
		  //
		  //
		  //-------------------------------------------------
		  Dim filenumber, count,i, plan_counter(-1),add,k,m,y,x,j as integer
		  Dim ts as textinputStream
		  Dim tmpstr, file, reading(1), imagetype , plan_id,plan_name(-1) as string
		  Dim p_name,matched  as boolean
		  Dim pp as RTOG_Plan
		  Dim zpos(-1) ,x_offset,y_offset as Single
		  Dim test as RTOG_Structure_Class
		  '==================================
		  
		  
		  
		  
		  Patient_Name=RTOG.Patient_Name
		  Patient_ID=RTOG.Patient_ID
		  Date_Created=RTOG.Date_Created
		  While InStr(Date_Created," ")>0
		    Date_Created=Replace(Date_Created," ","_")
		  Wend
		  
		  While InStr(Date_Created,",")>0
		    Date_Created=Replace(Date_Created,",","")
		  Wend
		  
		  
		  
		  
		  
		  //-------------------------------------------------------------------------
		  // Fix Structures
		  //
		  //
		  //-------------------------------------------------------------------------
		  
		  'if RTOG.Scan(0).Head_in_out="IN" Then // Place negative numbers on each Z position
		  
		  
		  for i=0 to UBound(RTOG.Scan)
		    RTOG.Scan(i).Z_Value=-1*RTOG.Scan(i).Z_Value
		  Next
		  
		  
		  
		  
		  
		  
		  // End negative numbers
		  
		  
		  
		  
		  // Arrange Patient data in correct order, lowest Z first!
		  Redim zpos(UBound(RTOG.Scan))
		  for i=0 to UBound(zpos)
		    zpos(i)=RTOG.Scan(i).Z_Value
		  Next
		  
		  zpos.SortWith(RTOG.Scan)
		  
		  Scan=RTOG.Scan
		  
		  if Scan(0).Slice_Thickness=0 Then
		    Scan(0).Slice_Thickness=Scan(1).Z_Value-Scan(0).Z_Value
		  end
		  
		  
		  
		  
		  if UBound(Scan)>-1 Then
		    
		    Scan(0).WinLevel=1000
		    Scan(0).WinWidth=4000
		    
		    if Scan(0).Scan_date="" Then
		      Scan(0).Scan_date=Date_Created
		    end
		    Scan(0).Image_Modality=Scan(0).Image_Type
		  end
		  
		  
		  for i=0 to UBound(Scan)
		    for k=0 to Scan(i).Size_of_Dimension1*Scan(i).Size_of_Dimension2-1
		      Scan(i).voxel(k)=Scan(i).voxel(k)-Scan(i).CT_Offset
		    next
		  next
		  
		  
		  x_offset=Scan(0).X_Offset
		  y_offset=Scan(0).Y_offset
		  
		  
		  Scan(0).X_Offset=0
		  Scan(0).Y_offset=0
		  
		  
		  
		  
		  
		  
		  //-------------------------------------------------------------------------
		  // Fix Structures
		  //
		  //
		  //-------------------------------------------------------------------------
		  
		  
		  for i=0 to UBound(RTOG.Structures.Structures)
		    for k=0 to UBound(RTOG.Structures.Structures(i).Structure_Data)
		      RTOG.Structures.Structures(i).Structure_Data(k).z=-1*RTOG.Structures.Structures(i).Structure_Data(k).z
		    next
		  next
		  
		  for i=0 to (UBound(RTOG.Structures.Structures))
		    Redim zpos(UBound(RTOG.Structures.Structures(i).Structure_Data))
		    for k=0 to UBound(zpos)
		      zpos(k)=RTOG.Structures.Structures(i).Structure_Data(k).Z
		    Next
		    zpos.SortWith(RTOG.Structures.Structures(i).Structure_Data)
		    for k=0 to UBound(RTOG.Structures.Structures(i).Structure_Data)
		      RTOG.Structures.Structures(i).Structure_Data(k).scan_num=(k+1)
		    next
		  next
		  
		  
		  Structures=RTOG.Structures
		  
		  
		  // Remove x,y offsets on Structures
		  for i=0 to UBound(Structures.Structures)
		    for j=0 to UBound(Structures.Structures(i).Structure_Data)
		      for x =0 to UBound(Structures.Structures(i).Structure_Data(j).segments)
		        for y= 0 to UBound(Structures.Structures(i).Structure_Data(j).segments(x).points)
		          Structures.Structures(i).Structure_Data(j).segments(x).points(y).x=Structures.Structures(i).Structure_Data(j).segments(x).points(y).x-x_offset
		          Structures.Structures(i).Structure_Data(j).segments(x).points(y).y=-(Structures.Structures(i).Structure_Data(j).segments(x).points(y).y-y_offset)
		        next
		      next
		    next
		  next
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  //-------------------------------------------------------------------------
		  // Fix Plan and Dose Distributions
		  //
		  //
		  //-------------------------------------------------------------------------
		  
		  
		  for i=0 to UBound(RTOG.Plan)
		    for k=0 to UBound(RTOG.Plan(i).Beam)
		      RTOG.Plan(i).Beam(k).Collimator.Fields(0).isocenter.z=-1*RTOG.Plan(i).Beam(k).Collimator.Fields(0).isocenter.z
		    Next
		    
		    for k=0 to UBound(RTOG.Plan(i).Dose)
		      for m=0 to UBound(RTOG.Plan(i).Dose(k).Dose_Distribution)
		        RTOG.Plan(i).Dose(k).Dose_Distribution(m).z=-1*RTOG.Plan(i).Dose(k).Dose_Distribution(m).z
		      Next
		    Next
		  Next
		  
		  // Arrange Patient data DOSE in correct order, lowest Z first!, set first Z plane
		  for i=0 to UBound(RTOG.Plan)
		    for k=0 to UBound(RTOG.Plan(i).Dose)
		      Redim zpos(UBound(RTOG.Plan(i).Dose(k).Dose_Distribution))
		      for m=0 to UBound(RTOG.Plan(i).Dose(k).Dose_Distribution)
		        zpos(m)=RTOG.Plan(i).Dose(k).Dose_Distribution(m).z
		      Next
		      
		      zpos.SortWith(RTOG.Plan(i).Dose(k).Dose_Distribution)
		      
		      RTOG.Plan(i).Dose(k).Coord_3_1st_point=RTOG.Plan(i).Dose(k).Dose_Distribution(0).Z
		      'RTOG.Plan(i).Dose(k).depth_grid=RTOG.Plan(i).Dose(k).Dose_Distribution(1).Z-RTOG.Plan(i).Dose(k).Dose_Distribution(0).Z
		      
		    Next
		    
		  Next
		  
		  
		  for i=0 to UBound(RTOG.Plan)
		    if UBound(RTOG.Plan(i).Beam)>-1 or UBound(RTOG.Plan(i).Dose)>-1  Then
		      Plan.Append RTOG.Plan(i)
		      
		    end
		  next
		  
		  
		  // Adjust offset to the isocenters, and dose distribution coordinates
		  
		  for i=0 to UBound(Plan)
		    for k=0 to UBound(Plan(i).Beam)
		      Plan(i).Beam(k).Collimator.Fields(0).isocenter.x=Plan(i).Beam(k).Collimator.Fields(0).isocenter.x-x_offset
		      Plan(i).Beam(k).Collimator.Fields(0).isocenter.y=Plan(i).Beam(k).Collimator.Fields(0).isocenter.y-y_offset
		    Next
		    for k=0 to UBound(plan(i).Dose)
		      plan(i).Dose(k).Coord_1_1st_point=plan(i).Dose(k).Coord_1_1st_point-x_offset
		      plan(i).Dose(k).Coord_2_1st_point=plan(i).Dose(k).Coord_2_1st_point-y_offset
		      
		    next
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Delete_Plan(num as integer)
		  Dim f,g  as FolderItem
		  Dim i ,count as integer
		  
		  
		  
		  f=Plan(num).Path
		  Plan.Remove num
		  
		  if f<>Nil Then
		    if f.Exists Then
		      for i=f.Count DownTo 1
		        //Must remove all files to delete folder
		        g=f.Item(i)
		        if g<>Nil Then
		          if g.Exists Then
		            g.Delete
		          end
		        end
		      Next
		      //now delete FolderI
		      f.Delete
		    end
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Delete_Structure(num as integer)
		  Dim i as Integer
		  Dim f as FolderItem
		  
		  
		  
		  
		  grtog.Structures.Structures.Remove num
		  
		  gvis.contour_fill.Remove num
		  gvis.contour_show.Remove num
		  
		  f=gRTOG.path
		  f=f.Child("McGill_RT")
		  
		  
		  for i=1 to f.Count
		    if InStr(f.Item(i).Name,".struct")>0 Then
		      f.Item(i).Delete
		    end
		  next
		  
		  
		  for i=0 to UBound(grtog.Structures.Structures)
		    Write_McGill_Structures(grtog.Structures.Structures(i),f,i)
		  next
		  
		  
		  
		  
		  PW_Show=false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Dose_Export_Axial(slice as integer,dose_index as Integer) As RTOG_Dose_Distribution
		  Dim  Z(-1,-1) as double
		  Dim dose ,newdd as RTOG_Dose_Distribution
		  Dim i,k,j as Integer
		  Dim dose_value,cmx,cmy,cmz as Single
		  Dim f as FolderItem
		  Dim dose_file,fname,One_Line as String
		  //==========================
		  
		  dose=gRTOG.plan(plan_index).dose(dose_index)
		  
		  newdd= new RTOG_Dose_Distribution
		  ReDim newdd.Dose_Distribution(0)
		  newdd.Dose_Distribution(0)=new RTOG_Dose_Plane
		  newdd.Size_of_Dimension1=gvis.nx
		  newdd.Size_of_Dimension2=gvis.ny
		  newdd.Size_of_Dimension3=1
		  newdd.Coord_1_1st_point=gVis.xoff_set
		  newdd.Coord_2_1st_point=gVis.yoff_set
		  newdd.Coord_3_1st_point=gRTOG.Scan(slice).Z_Value
		  newdd.Vertical_Grid=gvis.scale_height
		  newdd.Horizontal_Grid=gvis.scale_width
		  newdd.Depth_Grid=gRTOG.Scan(0).slice_Thickness
		  newdd.Dmin=9999999999999
		  cmz=newdd.Coord_3_1st_point
		  newdd.Dose_name=dose.Dose_name+"-Axial Plane Interpolation on Image Resolution"
		  
		  'Populate Dose data array
		  for j=0 to gvis.ny-1
		    for i=0 to gvis.nx-1
		      cmx=newdd.Coord_1_1st_point+i*newdd.Horizontal_Grid
		      cmy=newdd.Coord_2_1st_point+j*newdd.Vertical_Grid
		      dose_value=RTOG_Dose_Interpolate(cmx,CMY,cmz,dose)
		      newdd.Dose_Distribution(0).Points.append dose_value
		      
		      if dose_value>newdd.Dmax Then
		        newdd.Dmax=dose_value
		      end
		      
		      if dose_value<newdd.Dmin Then
		        newdd.Dmin=dose_value
		      end
		      
		      
		    next
		  next
		  
		  Return newdd
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Dose_Export_Axial_NoInter(slice as integer,dose_index as Integer) As RTOG_Dose_Distribution
		  //-----------------------------------
		  // Export with no interpolation
		  //-----------------------------------
		  Dim dose,newdd as RTOG_Dose_Distribution
		  Dim i,k,j,index as Integer
		  Dim z_slice,dose_value,z_dose,z(-1),z_index,z_index_plus,z_index_min as Single
		  //==========================
		  
		  dose=new RTOG_Dose_Distribution
		  dose=gRTOG.plan(plan_index).dose(dose_index)
		  
		  z_slice=Scan(slice).Z_Value
		  
		  for i=0 to dose.Size_of_Dimension3-1
		    z_dose=Dose.Dose_Distribution(i).Z
		    z.Append z_dose
		  next
		  
		  index=Round((z_slice-dose.Coord_3_1st_point)/dose.Depth_Grid)
		  z_index=z(index)
		  
		  if (index+1)<= UBound(z) and (index-1)<= UBound(z) and (index-1)>-1 and (index+1)>-1 Then
		    z_index_plus=z(index+1)
		    z_index_min=z(index-1)
		  end
		  
		  
		  newdd= new RTOG_Dose_Distribution
		  ReDim newdd.Dose_Distribution(0)
		  
		  newdd.Dose_Distribution(0)=new RTOG_Dose_Plane
		  newdd.Size_of_Dimension1=dose.Size_of_Dimension1
		  newdd.Size_of_Dimension2=dose.Size_of_Dimension2
		  newdd.Size_of_Dimension3=1
		  newdd.Coord_1_1st_point=dose.Coord_1_1st_point
		  newdd.Coord_2_1st_point=dose.Coord_2_1st_point
		  newdd.Coord_3_1st_point=z_index
		  newdd.Vertical_Grid=dose.Vertical_Grid
		  newdd.Horizontal_Grid=dose.Horizontal_Grid
		  newdd.Depth_Grid=dose.Depth_Grid
		  newdd.Dose_name=dose.Dose_name+"- Axial Plane No Interpolation"
		  newdd.Dmin=9999999999999
		  
		  
		  'Populate Dose data array
		  for j=0 to dose.Size_of_Dimension2-1
		    for i=0 to  dose.Size_of_Dimension1-1
		      dose_value=dose.Dose_Distribution(index).Z
		      dose_value=dose.Dose_Distribution(index).Points(j*(dose.Size_of_Dimension1)+i)
		      newdd.Dose_Distribution(0).Points.append dose_value
		      
		      if dose_value>newdd.Dmax Then
		        newdd.Dmax=dose_value
		      end
		      
		      if dose_value<newdd.Dmin Then
		        newdd.Dmin=dose_value
		      end
		      
		      
		    next
		  next
		  
		  
		  Return newdd
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Dose_Export_Cor(slice as integer,dose_index as Integer) As RTOG_Dose_Distribution
		  //==========================
		  // Export a Coronal slice
		  //
		  //==========================
		  Dim newdd,dose as RTOG_Dose_Distribution
		  Dim i,k,j,m as Integer
		  Dim dx,dy,dz,cor_cm ,dose_value,cmx,cmy,cmz as Single
		  Dim f as FolderItem
		  Dim out_file,uncer,head_file,dose_file,x_pos,y_pos,one_line,fname as String
		  Dim test as Boolean
		  //==========================
		  
		  
		  dose=new RTOG_Dose_Distribution
		  dose=gRTOG.plan(plan_index).dose(dose_index)
		  fname=gRTOG.Patient_ID+"_"+gRTOG.Patient_Name+"_"+gRTOG.Plan(Plan_Index).Dose(dose_index).engine+"_"
		  
		  newdd= new RTOG_Dose_Distribution
		  ReDim newdd.Dose_Distribution(0)
		  newdd.Dose_Distribution(0)=new RTOG_Dose_Plane
		  newdd.Size_of_Dimension1=gvis.nx
		  newdd.Size_of_Dimension2=gvis.nz
		  newdd.Size_of_Dimension3=1
		  newdd.Coord_1_1st_point=gVis.xoff_set
		  newdd.Coord_2_1st_point=gVis.zoff_set
		  newdd.Coord_3_1st_point=0
		  newdd.Vertical_Grid=gvis.scale_thickness
		  newdd.Horizontal_Grid=gvis.scale_height
		  
		  newdd.Dmin=9999999999999
		  
		  
		  newdd.Dose_name=dose.Dose_name+"-Coronal Plane Interpolation on Image Resolution"
		  
		  cor_cm=gVis.yoff_set+(slice-1)*gvis.scale_height
		  cmy=cor_cm
		  
		  'Populate Dose data array
		  for j=0 to gvis.nz-1
		    for i=0 to gvis.nx-1
		      cmx=newdd.Coord_1_1st_point+i*gvis.scale_width
		      cmz=gRTOG.Scan(j).Z_Value
		      dose_value=RTOG_Dose_Interpolate(cmx,cmy,cmz,dose)
		      newdd.Dose_Distribution(0).Points.append dose_value
		      if dose_value>newdd.Dmax Then
		        newdd.Dmax=dose_value
		      end
		      if dose_value<newdd.Dmin Then
		        newdd.Dmin=dose_value
		      end
		    next
		  next
		  
		  Return newdd
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Dose_Export_Sag(slice as integer,dose_index as Integer) As RTOG_Dose_Distribution
		  Dim  Z(-1,-1),X(-1)   ,Y(-1) as double
		  Dim newdd,dose as RTOG_Dose_Distribution
		  Dim i,k,j,m as Integer
		  Dim dx,dy,dz, sag_cm,dose_value,cmx,cmy,cmz as Single
		  Dim f as FolderItem
		  Dim out_file,uncer,head_file,dose_file,x_pos,y_pos,one_line,fname as String
		  Dim test as Boolean
		  //==========================
		  
		  
		  dose=new RTOG_Dose_Distribution
		  dose=gRTOG.plan(plan_index).dose(dose_index)
		  fname=gRTOG.Patient_ID+"_"+gRTOG.Patient_Name+"_"+gRTOG.Plan(Plan_Index).Dose(dose_index).engine+"_"
		  
		  newdd= new RTOG_Dose_Distribution
		  ReDim newdd.Dose_Distribution(0)
		  newdd.Dose_Distribution(0)=new RTOG_Dose_Plane
		  newdd.Size_of_Dimension1=gvis.ny
		  newdd.Size_of_Dimension2=gvis.nz
		  newdd.Size_of_Dimension3=1
		  newdd.Coord_1_1st_point=gVis.yoff_set
		  newdd.Coord_2_1st_point=gVis.zoff_set
		  newdd.Coord_3_1st_point=0
		  newdd.Vertical_Grid=gvis.scale_thickness
		  newdd.Horizontal_Grid=gvis.scale_height
		  
		  newdd.Dmin=9999999999999
		  
		  
		  newdd.Dose_name=dose.Dose_name+"-Sagittal Plane Interpolation on Image Resolution"
		  
		  sag_cm=gVis.xoff_set+(slice-1)*gvis.scale_width
		  cmx=sag_cm
		  
		  'Populate Dose data array
		  for j=0 to gvis.nz-1
		    for i=0 to gvis.ny-1
		      cmy=newdd.Coord_1_1st_point+i*gvis.scale_height
		      cmz=gRTOG.Scan(j).Z_Value
		      dose_value=RTOG_Dose_Interpolate(cmx,cmy,cmz,Dose)
		      dose_value=RTOG_Dose_Interpolate(cmx,CMY,cmz,dose)
		      newdd.Dose_Distribution(0).Points.append dose_value
		      
		      if dose_value>newdd.Dmax Then
		        newdd.Dmax=dose_value
		      end
		      
		      if dose_value<newdd.Dmin Then
		        newdd.Dmin=dose_value
		      end
		      
		    next
		  next
		  
		  
		  
		  
		  Return newdd
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Error_window(name as string, missing as string, fnum as integer)
		  ''Popup error window for RTOG inport
		  '
		  'Dim filenum,message as String
		  'filenum=str(fnum)
		  'while len(filenum)<4
		  'filenum="0"+filenum
		  'wend
		  'message= "Invalid "+name +" Value," + " from : aapm"+filenum +Chr(13)+"Missing Variable : " +missing
		  'Window_Error.EditField1.Text =message
		  'Window_Error.EditField1.SelStart =len(message)-len(missing)
		  'Window_Error.EditField1.SelLength= len(missing)
		  'Window_Error.EditField1.SelTextColor=RGB(255,0,0)
		  'Window_Error.EditField1.SelLength=0
		  'Window_Error.Refresh
		  'Window_Error.ShowModal
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Line_Profile(dose_index as Integer, rr as Class_Ruler)
		  // --------------------------------------
		  // Calculate one profile
		  //
		  //
		  // ---------------------------------------
		  Dim pp as Class_Profile_One
		  Dim points as Class_Points
		  dim i as integer
		  dim x,y,z,dx,dy,dz,dose,w,h,t as Single
		  dim distancecm,off as Single
		  dim ddose as RTOG_Dose_Distribution
		  dim N_points as integer //sample number
		  // ---------------------------------------
		  
		  
		  
		  if Plan_Index<0 Then
		    Return
		  end
		  
		  if dose_index<0 Then
		    Return
		  end
		  
		  ddose=gRTOG.Plan(Plan_Index).Dose(dose_index)
		  
		  pp=new Class_Profile_One
		  pp.Pointa=new Class_Points
		  pp.Pointb=new Class_Points
		  
		  pp.Label="Plan "+str(Plan_Index+1)+" "+gRTOG.Plan(Plan_Index).Dose(dose_index).dose_name
		  pp.X_label="Position"
		  pp.Units_x="cm"
		  pp.y_label="Position"
		  pp.Units_y="cm"
		  pp.z_label="Position"
		  pp.Units_z="cm"
		  
		  pp.Value_Label="Dose"
		  pp.Value_Units=gRTOG.Plan(Plan_Index).Dose(dose_index).dose_units
		  
		  pp.Colour=gvis.Make_Clour
		  
		  
		  
		  
		  //----------------------------------
		  // Calculate total distance
		  //----------------------------------
		  pp.Pointa.Z_cm=rr.Point1.Z_cm
		  pp.Pointb.Z_cm=rr.Point2.Z_cm
		  pp.Pointa.X_cm=rr.point1.x_cm
		  pp.Pointb.X_cm=rr.point2.x_cm
		  pp.Pointa.y_cm=rr.point1.y_cm
		  pp.Pointb.y_cm=rr.point2.y_cm
		  dx=  rr.point2.x_cm-  rr.point1.x_cm
		  dy=  rr.point2.y_cm-  rr.point1.y_cm
		  dz= rr.point2.z_cm-  rr.point1.z_cm
		  distancecm=sqrt(dx*dx+dy*dy+dz*dz)
		  pp.Distance=distancecm
		  
		  // Find equation of a line
		  if dz=0 Then
		    t =0.0
		  else
		    if ddose.Depth_Grid<gVis.scale_thickness and ddose.Depth_Grid>0 Then
		      t=ddose.Depth_Grid
		    else
		      t=gVis.scale_thickness
		    end
		  end
		  
		  if dx=0 Then
		    w=0
		  else
		    if ddose.Horizontal_Grid<gVis.scale_width and ddose.Horizontal_Grid>0 Then
		      w=ddose.Horizontal_Grid
		    else
		      w=gVis.scale_width
		    end
		  end
		  
		  
		  
		  if dy=0 Then
		    h=0 
		  else
		    if ddose.Vertical_Grid<gVis.scale_height and ddose.Vertical_Grid>0 Then
		      h=ddose.Vertical_Grid
		    else
		      h=gVis.scale_height
		    end
		  end
		  
		  
		  
		  
		  
		  
		  N_points=Round(distancecm/(sqrt(w*w+h*h+t*t)))
		  
		  
		  x=rr.point1.x_cm
		  y=rr.point1.y_cm
		  z=rr.Point1.Z_cm
		  
		  for i=0 to N_points
		    dose=RTOG_Dose_Interpolate(x,y,z,gRTOG.Plan(Plan_Index).Dose(dose_index))
		    Points=new Class_Points
		    points.X_cm =x
		    points.Y_cm=y
		    points.Z_cm=z
		    points.Value=dose
		    y=y+dy/N_points
		    x=x+dx/N_points
		    z=z+dz/N_points
		    pp.Points.Append points
		  next
		  
		  gRTOG.Profiles.One_Profile.Append pp
		  
		  
		  
		  
		  //------------------------------------------------------------------------------------
		  // Calculate HU profile
		  
		  pp=new Class_Profile_One
		  pp.Pointa=new Class_Points
		  pp.Pointb=new Class_Points
		  
		  pp.Label="Profile of HU values"
		  pp.X_label="Position"
		  pp.Units_x="cm"
		  pp.y_label="Position"
		  pp.Units_y="cm"
		  pp.z_label="Position"
		  pp.Units_z="cm"
		  
		  pp.Value_Label="Point HU values"
		  pp.Value_Units="HU"
		  
		  pp.Colour=gvis.Make_Clour
		  
		  
		  
		  //----------------------------------
		  // Calculate total distance
		  //----------------------------------
		  pp.Pointa.Z_cm=rr.Point1.Z_cm
		  pp.Pointb.Z_cm=rr.Point2.Z_cm
		  pp.Pointa.X_cm=rr.point1.x_cm
		  pp.Pointb.X_cm=rr.point2.x_cm
		  pp.Pointa.y_cm=rr.point1.y_cm
		  pp.Pointb.y_cm=rr.point2.y_cm
		  pp.Distance=distancecm
		  
		  // Find equation of a line
		  if dz=0 Then
		    t=0
		  else
		    t=gvis.scale_thickness
		  end
		  N_points=Round(distancecm/(sqrt(gvis.scale_width*gvis.scale_width+gvis.scale_height*gvis.scale_height+t*t)))
		  
		  
		  x=rr.point1.x_cm
		  y=rr.point1.y_cm
		  z=rr.Point1.Z_cm
		  
		  for i=0 to N_points
		    dose=RTOG_Image_Interpolate(x,y,z)
		    Points=new Class_Points
		    points.X_cm =x
		    points.Y_cm=y
		    points.Z_cm=z
		    points.Value=dose
		    y=y+dy/N_points
		    x=x+dx/N_points
		    z=z+dz/N_points
		    pp.Points.Append points
		  next
		  
		  gRTOG.Profiles.One_Profile.Append pp
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub McGill_Copy_Beam(planto as integer, planfrom as integer, beam as integer)
		  //-----------------------------------------------
		  //
		  //
		  //-----------------------------------------------
		  Dim i,k,j,plan as integer
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  Dim n,line as string
		  //-----------------------------------------------
		  
		  plan=planfrom
		  gRTOG.Plan(planto).Add_Beam
		  k=UBound(gRTOG.Plan(planto).Beam)
		  
		  gRTOG.Plan(planto).Beam(k).Beam_Num=k+1
		  gRTOG.Plan(planto).Beam(k).RT_name=gRTOG.Plan(Plan).Beam(Beam).RT_name
		  gRTOG.Plan(planto).Beam(k).beam_Mode=gRTOG.Plan(Plan).Beam(Beam).beam_Mode
		  gRTOG.Plan(planto).Beam(k).beam_energy=gRTOG.Plan(Plan).Beam(Beam).beam_energy
		  gRTOG.Plan(planto).Beam(k).Beam_DoseRate=gRTOG.Plan(Plan).Beam(Beam).Beam_DoseRate
		  gRTOG.Plan(planto).Beam(k).Aperture_ID=gRTOG.Plan(Plan).Beam(Beam).Aperture_ID
		  gRTOG.Plan(planto).Beam(k).Beam_Description=gRTOG.Plan(Plan).Beam(Beam).Beam_Description
		  gRTOG.Plan(planto).Beam(k).Rx_Dose=gRTOG.Plan(Plan).Beam(Beam).Rx_Dose
		  gRTOG.Plan(planto).Beam(k).MU=gRTOG.Plan(Plan).Beam(Beam).MU
		  gRTOG.Plan(planto).Beam(k).SSD=gRTOG.Plan(Plan).Beam(Beam).SSD
		  gRTOG.Plan(planto).Beam(k).Beam_Weight=gRTOG.Plan(Plan).Beam(Beam).Beam_Weight
		  gRTOG.Plan(planto).Beam(k).number_of_Tx=gRTOG.Plan(Plan).Beam(Beam).number_of_Tx
		  gRTOG.Plan(planto).Beam(k).fraction_Group_ID=gRTOG.Plan(Plan).Beam(Beam).fraction_Group_ID
		  gRTOG.Plan(planto).Beam(k).beam_Type=gRTOG.Plan(Plan).Beam(Beam).beam_Type
		  gRTOG.Plan(planto).Beam(k).Collimator.Type=gRTOG.Plan(Plan).Beam(Beam).Collimator.Type
		  gRTOG.Plan(planto).Beam(k).aperture_Type=gRTOG.Plan(Plan).Beam(Beam).aperture_Type
		  gRTOG.Plan(planto).Beam(k).Wedge_type =gRTOG.Plan(Plan).Beam(Beam).Wedge_type
		  gRTOG.Plan(planto).Beam(k).Wedge_ID=gRTOG.Plan(Plan).Beam(Beam).Wedge_ID
		  gRTOG.Plan(planto).Beam(k).Wedge_Angle=gRTOG.Plan(Plan).Beam(Beam).Wedge_Angle
		  gRTOG.Plan(planto).Beam(k).Wedge_Rotation=gRTOG.Plan(Plan).Beam(Beam).Wedge_Rotation
		  gRTOG.Plan(planto).Beam(k).nominal_Isocenter=gRTOG.Plan(Plan).Beam(Beam).nominal_Isocenter
		  gRTOG.Plan(planto).Beam(k).number_Representation=gRTOG.Plan(Plan).Beam(Beam).number_Representation
		  gRTOG.Plan(planto).Beam(k).plan_ID=gRTOG.Plan(Plan).Beam(Beam).plan_ID
		  gRTOG.Plan(planto).Beam(k).FLEC.x1=gRTOG.Plan(Plan).Beam(Beam).FLEC.x1
		  gRTOG.Plan(planto).Beam(k).FLEC.x2=gRTOG.Plan(Plan).Beam(Beam).FLEC.x2
		  gRTOG.Plan(planto).Beam(k).FLEC.y1=gRTOG.Plan(Plan).Beam(Beam).FLEC.y1
		  gRTOG.Plan(planto).Beam(k).FLEC.y2=gRTOG.Plan(Plan).Beam(Beam).FLEC.y2
		  
		  // Update new beam to the same number of collimator fields as original beam
		  ReDim gRTOG.Plan(planto).Beam(k).Collimator.Fields(UBound(gRTOG.Plan(Plan).Beam(Beam).Collimator.fields))
		  
		  for i=0 to UBound(gRTOG.Plan(Plan).Beam(Beam).Collimator.fields)
		    gRTOG.Plan(planto).Beam(k).Collimator.Fields(i)=new Class_Collimator_Fields
		    gRTOG.Plan(planto).Beam(k).Collimator.Fields(i).isocenter=new Class_isocenter
		    gRTOG.Plan(planto).Beam(k).Collimator.Fields(i).index=gRTOG.Plan(Plan).Beam(Beam).Collimator.Fields(i).index
		    
		    gRTOG.Plan(planto).Beam(k).Collimator.Fields(i).collimator_Angle=gRTOG.Plan(Plan).Beam(Beam).Collimator.Fields(i).collimator_Angle
		    gRTOG.Plan(planto).Beam(k).Collimator.Fields(i).gantry_Angle=gRTOG.Plan(Plan).Beam(Beam).Collimator.Fields(i).gantry_Angle
		    gRTOG.Plan(planto).Beam(k).Collimator.Fields(i).couch_Angle=gRTOG.Plan(Plan).Beam(Beam).Collimator.Fields(i).couch_Angle
		    
		    gRTOG.Plan(planto).Beam(k).Collimator.Fields(i).isocenter.X=gRTOG.Plan(Plan).Beam(Beam).Collimator.Fields(i).isocenter.X
		    gRTOG.Plan(planto).Beam(k).Collimator.Fields(i).isocenter.y=gRTOG.Plan(Plan).Beam(Beam).Collimator.Fields(i).isocenter.y
		    gRTOG.Plan(planto).Beam(k).Collimator.Fields(i).isocenter.z=gRTOG.Plan(Plan).Beam(Beam).Collimator.Fields(i).isocenter.z
		    gRTOG.Plan(planto).Beam(k).Collimator.fields(i).X1=gRTOG.Plan(Plan).Beam(Beam).Collimator.fields(i).X1
		    gRTOG.Plan(planto).Beam(k).Collimator.fields(i).X2=gRTOG.Plan(Plan).Beam(Beam).Collimator.fields(i).X2
		    gRTOG.Plan(planto).Beam(k).Collimator.fields(i).Y1=gRTOG.Plan(Plan).Beam(Beam).Collimator.fields(i).Y1
		    gRTOG.Plan(planto).Beam(k).Collimator.fields(i).Y2=gRTOG.Plan(Plan).Beam(Beam).Collimator.fields(i).Y2
		  Next
		  
		  gRTOG.Plan(planto).Beam(k).MLC.Model=gRTOG.Plan(Plan).Beam(Beam).MLC.Model
		  gRTOG.Plan(planto).Beam(k).MLC.MLC_Type=gRTOG.Plan(Plan).Beam(Beam).MLC.MLC_type
		  gRTOG.Plan(planto).Beam(k).MLC.NumberofFields=gRTOG.Plan(Plan).Beam(Beam).mlc.NumberofFields
		  gRTOG.Plan(planto).Beam(k).MLC.Model_Type=gRTOG.Plan(Plan).Beam(Beam).MLC.Model_Type
		  gRTOG.Plan(planto).Beam(k).MLC.MLC_Direction=gRTOG.Plan(Plan).Beam(Beam).MLC.MLC_Direction
		  gRTOG.Plan(planto).Beam(k).MLC.NumberofLeafPairs=gRTOG.Plan(Plan).Beam(Beam).MLC.NumberofLeafPairs
		  gRTOG.Plan(planto).Beam(k).MLC.Abutting_Gap=gRTOG.Plan(Plan).Beam(Beam).MLC.Abutting_Gap
		  
		  ReDim gRTOG.Plan(planto).Beam(k).MLC.LeafBoundaries(UBound(gRTOG.Plan(Plan).Beam(Beam).MLC.LeafBoundaries))
		  for j=0 to UBound(gRTOG.Plan(Plan).Beam(Beam).MLC.LeafBoundaries)
		    gRTOG.Plan(planto).Beam(k).MLC.LeafBoundaries(j)=gRTOG.Plan(Plan).Beam(Beam).MLC.LeafBoundaries(j)
		  Next
		  
		  ReDim gRTOG.Plan(planto).Beam(k).MLC.Fields(UBound(gRTOG.Plan(Plan).Beam(Beam).mlc.fields))
		  for j=0 to UBound(gRTOG.Plan(Plan).Beam(Beam).MLC.fields)
		    gRTOG.Plan(planto).Beam(k).MLC.Fields(j)=new Class_MLC_Positions
		    gRTOG.Plan(planto).Beam(k).MLC.Fields(j).Indexnum=gRTOG.Plan(Plan).Beam(Beam).mlc.fields(j).indexnum
		    ReDim gRTOG.Plan(planto).Beam(k).MLC.Fields(j).Leaf_A(UBound(gRTOG.Plan(Plan).Beam(Beam).mlc.fields(j).Leaf_A))
		    ReDim gRTOG.Plan(planto).Beam(k).MLC.Fields(j).Leaf_b(UBound(gRTOG.Plan(Plan).Beam(Beam).mlc.fields(j).Leaf_b))
		    
		    for i=0 to UBound(gRTOG.Plan(Plan).Beam(Beam).MLC.Fields(j).Leaf_A)
		      gRTOG.Plan(planto).Beam(k).MLC.Fields(j).Leaf_A(i)=gRTOG.Plan(Plan).Beam(Beam).mlc.Fields(j).Leaf_A(i)
		    next
		    
		    for i=0 to UBound(gRTOG.Plan(Plan).Beam(Beam).MLC.Fields(j).Leaf_b)
		      gRTOG.Plan(planto).Beam(k).MLC.Fields(j).Leaf_B(i)=gRTOG.Plan(Plan).Beam(Beam).mlc.Fields(j).Leaf_B(i)
		    Next
		  next
		  
		  //update the beamnrc, dosxyz and vmc calibration numbers for that linac and energy
		  if planto=Plan_Index Then
		    MC_Get_Linac_Properties(k)
		    MC_Save_settings
		    gBEAM.egs_Read
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Patient_Rename(last as String, fname as String, idnum as String)
		  //-------------------------
		  // Method to rename patient
		  // ID, first and last name
		  //
		  //-------------------------
		  Dim f,old,g as FolderItem
		  Dim ts as TextOutputStream
		  Dim rt,ffname,imageset as String
		  Dim i as Integer
		  //-------------------------
		  
		  
		  // Move CT dir to new location
		  f=path
		  old=path
		  imageset=f.Name
		  g=gPref.mcgillfi
		  g=g.Child(fname+String_Separate+last+String_Separate+idnum)
		  g.CreateAsFolder
		  f.MoveFileTo g
		  
		  // Set new path to CT dir
		  g=g.Child(imageset)
		  path=g
		  
		  // Set new Patient values
		  Patient_ID=idnum
		  Patient_Surname=last
		  Patient_Name=fname
		  
		  // Write New RT file
		  g=g.child("McGill_RT")
		  if g= nil Then
		    Return
		  end
		  
		  g=g.Child("RT.dir")
		  if g.Exists Then
		    g.Delete
		  end
		  ts=g.createTextFile
		  gRTOG.Write_McGill_RT(ts)
		  ts.Close
		  
		  g=path
		  for i=0 to UBound(Plan)
		    if g.Child("Plan"+String_Separate+Plan(i).Plan_ID+String_Separate+Plan(i).Plan_Name).Exists Then
		      Plan(i).Path=g.Child("Plan"+String_Separate+Plan(i).Plan_ID+String_Separate+Plan(i).Plan_Name)
		    end
		  next
		  
		  
		  // Remove old Dir if there's no other image set
		  old=old.Parent
		  for i=old.Count DownTo 1
		    if old.Item(i).Directory Then
		    else
		      old.Item(i).Delete
		    end
		  Next
		  if old.Count=0 Then
		    old.Delete
		  end
		  
		  
		  
		  // Remove all MC settings
		  // BEAMnrc settings
		  for i=0 to UBound(Plan)
		    g=Plan(i).Path
		    if g<> nil Then
		      g=g.Child("BEAM.txt")
		      if g<> nil Then
		        if g.Exists Then
		          g.Delete
		        end
		      end
		    end
		  next
		  
		  // Remove all egsphant files
		  g=path.Child("McGill_RT")
		  for i=g.Count DownTo 1
		    if g.Item(i)<> nil Then
		      if InStr(g.Item(i).Name,".egsphant")>0 Then
		        g.Item(i).Delete
		      end
		    end
		  next
		  
		  MC_Open_settings(Plan_Index)
		  
		  if app.which_window_TreatmentPlanning Then
		    Window_Treatment.Show
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Put_RTOG() As boolean
		  Dim name as string
		  Dim i,j as integer
		  Dim f,mainfolder as folderItem
		  Dim ts as textoutputStream
		  Dim beam as rtoG_beam_Geometry
		  Dim film as rtOG_Digital_Film_Image
		  Dim dose as rtoG_dose_Distribution
		  Dim dvh as rtoG_Dose_Volume_Histogram
		  '========================================
		  name= "aapm"
		  mainfolder=selectfolder()
		  f=mainfolder.child(name+"0000")  //new folderItem(name+"0000")
		  PW_Show=true
		  PW_Title="Saving RTOG files..."
		  '===============================Scan===============
		  ts=f.createTextFile
		  if ubound(me.scan) >-1 then // write scan files
		    for i =0 to ubound(me.scan)
		      spaces(ts,"IMAGE #",31,str(me.scan(i).File_num))
		      
		      spaces(ts,"IMAGE TYPE",31,me.scan(i).image_Type)
		      
		      spaces(ts,"CASE #",31,"1")
		      
		      spaces(ts,"PATIENT NAME",31,(me.patient_Name))
		      
		      spaces(ts,"SCAN TYPE",31,me.scan(i).scan_Type)
		      
		      spaces(ts,"CT OFFSET", 31, str(me.scan(i).cT_Offset))
		      
		      spaces(ts,"GRID 1 UNITS", 31, str(me.scan(i).grid_Units_Width))
		      
		      spaces(ts,"GRID 2 UNITS", 31, str(me.scan(i).grid_Units_Width))
		      
		      spaces(ts,"NUMBER REPRESENTATION", 31, (me.scan(i).num_Representation))
		      
		      spaces(ts,"BYTES PER PIXEL", 31, str(me.scan(i).bytes_per_Pixel))
		      
		      spaces(ts,"NUMBER OF DIMENSIONS", 31, str(me.scan(i).num_Dimensions))
		      
		      spaces(ts,"SIZE OF DIMENSION 1", 31, str(me.scan(i).size_of_Dimension1))
		      
		      spaces(ts,"SIZE OF DIMENSION 2", 31, str(me.scan(i).size_of_Dimension2))
		      
		      spaces(ts,"Z VALUE", 31, str(me.scan(i).z_Value))
		      
		      spaces(ts,"X OFFSET", 31, str(me.scan(i).x_Offset))
		      
		      spaces(ts,"Y OFFSET", 31, str(me.scan(i).Y_Offset))
		      
		      spaces(ts,"CT-AIR", 31, str(me.scan(i).ct_Air))
		      
		      spaces(ts,"CT-WATER", 31, str(me.scan(i).ct_water))
		      
		      spaces(ts,"SLICE THICKNESS", 31, str(me.scan(i).slice_Thickness))
		      
		      ts.writeLine
		      put_RTOG_Scan(scan(i),f)
		    next
		  end//end writing scan
		  
		  '===============================Structure==================
		  if ubound(me.Structures.Structures)>-1 then
		    for i =0 to ubound(me.Structures.Structures)
		      spaces(ts,"IMAGE #", 31, str(me.Structures.Structures(i).File_Num))
		      
		      spaces(ts,"IMAGE TYPE", 31, "STRUCTURE")
		      
		      spaces(ts,"CASE #", 31, "1")
		      
		      spaces(ts,"PATIENT NAME", 31, (me.patient_Name))
		      
		      spaces(ts,"STRUCTURE NAME", 31, (me.Structures.Structures(i).structure_Name))
		      
		      spaces(ts,"NUMBER REPRESENTATION", 31, (me.Structures.Structures(i).number_Rep))
		      
		      spaces(ts,"STRUCTURE FORMAT", 31, (me.Structures.Structures(i).structure_Format))
		      
		      spaces(ts,"NUMBER OF SCANS", 31, str(me.Structures.Structures(i).num_of_Scans))
		      
		      ts.writeLine
		      put_RTOG_Structures(Structures.Structures(i),f)
		    next // writing each structure
		  end //writing structures
		  
		  if ubound(me.plan)>-1 then//write each plan
		    for i=0 to ubound(me.plan)
		      '===============================Beam==================
		      if ubound(me.plan(i).beam) >-1 then//write beams
		        for j=0 to ubound(me.plan(i).beam)'write each beam
		          beam=new rtoG_beam_Geometry
		          Beam = me.plan(i).Beam(j)
		          spaces(ts,"IMAGE #", 31, str(beam.file_Num))
		          
		          spaces(ts,"IMAGE TYPE", 31, "BEAM GEOMETRY")
		          
		          spaces(ts,"CASE #", 31, "1")
		          
		          spaces(ts,"PATIENT NAME", 31, me.Patient_Name)
		          
		          spaces(ts,"BEAM #", 31, str(beam.Beam_Num))
		          
		          spaces(ts,"BEAM MODALITY", 31, (beam.beam_Mode))
		          
		          spaces(ts,"BEAM ENERGY(MEV)", 31, (beam.beam_energy))
		          
		          spaces(ts,"BEAM DESCRIPTION", 31, (beam.beam_description))
		          
		          spaces(ts,"RX DOSE PER TX (GY)", 31, str(beam.Rx_Dose))
		          
		          spaces(ts,"NUMBER OF TX", 31, str(beam.number_of_Tx))
		          
		          spaces(ts,"FRACTION GROUP ID", 31, (beam.Fraction_Group_ID))
		          
		          spaces(ts,"BEAM TYPE", 31, (beam.beam_Type))
		          
		          spaces(ts,"COLLIMATOR TYPE", 31, (beam.collimator.Type))
		          
		          spaces(ts,"APERTURE TYPE ", 31, (beam.aperture_Type))
		          
		          spaces(ts,"COLLIMATOR ANGLE", 31, str(beam.Collimator.Fields(0).collimator_Angle))
		          
		          spaces(ts,"GANTRY ANGLE", 31, str(beam.Collimator.Fields(0).gantry_Angle))
		          
		          spaces(ts,"COUCH ANGLE", 31, str(beam.Collimator.Fields(0).couch_Angle))
		          
		          spaces(ts,"NOMINAL ISOCENTER DIST", 31, str(beam.nominal_Isocenter))
		          
		          spaces(ts,"NUMBER REPRESENTATION", 31, (beam.number_Representation))
		          
		          spaces(ts,"PLAN ID OF ORIGIN", 31, (beam.plan_ID))
		          
		          ts.writeLine
		          put_RTOG_Beam(beam,f)
		        next'end writing one beam
		      end//write beams
		      '===============================Film============================
		      if ubound(me.plan(i).Film) >-1 then//write films
		        for j=0 to ubound(me.plan(i).film)'write each film
		          film=new rtoG_Digital_Film_Image
		          film = me.plan(i).Film(j)
		          spaces(ts,"IMAGE #", 31, str(film.file_Num))
		          
		          spaces(ts,"IMAGE TYPE", 31, "DIGITAL FILM")
		          
		          spaces(ts,"CASE #", 31, "1")
		          
		          spaces(ts,"PATIENT NAME", 31, me.patient_Name)
		          
		          spaces(ts,"FILM NUMBER", 31, str(film.film_Num))
		          
		          spaces(ts,"FILM DATE", 31, (film.film_Date))
		          
		          spaces(ts,"FILM TYPE", 31, (film.film_type))
		          
		          spaces(ts,"BEAM #", 31, str(film.beam_num))
		          
		          spaces(ts,"BEAM DESCRIPTION", 31, (film.beam_Discription))
		          
		          spaces(ts,"NUMBER OF DIMENSIONS", 31, str(film.num_of_Dimension))
		          
		          spaces(ts,"SIZE OF DIMENSION 1", 31, str(film.size_of_Dimension1))
		          
		          spaces(ts,"SIZE OF DIMENSION 2", 31, str(film.size_of_Dimension2))
		          
		          spaces(ts,"NUMBER REPRESENTATION", 31, (film.num_Rep))
		          
		          spaces(ts,"BYTES PER PIXEL", 31, str(film.bytes_Per_Pixel))
		          
		          ts.writeLine
		          put_RTOG_Film(film,f)
		        next'end writing one film
		      end//end write films
		      '===============================Dose============================
		      if ubound(me.plan(i).Dose) >-1 then//write dose
		        for j=0 to ubound(me.plan(i).dose)'write each dose
		          dose=new rtoG_Dose_Distribution
		          dose = me.plan(i).dose(j)
		          spaces(ts,"IMAGE #", 31, str(dose.file_Num))
		          
		          spaces(ts,"IMAGE TYPE", 31, "DOSE")
		          
		          spaces(ts,"CASE #", 31, "1")
		          
		          spaces(ts,"PATIENT NAME", 31, patient_Name)
		          
		          spaces(ts,"DOSE UNITS", 31, (dose.dose_Units))
		          
		          spaces(ts,"ORIENTATION OF DOSE", 31, (dose.orientation))
		          
		          spaces(ts,"NUMBER REPRESENTATION", 31, (dose.num_Representation))
		          
		          spaces(ts,"NUMBER OF DIMENSIONS", 31, str(dose.num_Dimensions))
		          
		          spaces(ts,"SIZE OF DIMENSION 1", 31, str(dose.size_of_Dimension1))
		          
		          spaces(ts,"SIZE OF DIMENSION 2", 31, str(dose.size_of_dimension2))
		          
		          spaces(ts,"SIZE OF DIMENSION 3", 31, str(dose.size_of_dimension3))
		          
		          spaces(ts,"COORD 1 OF FIRST POINT", 31, str(dose.coord_1_1st_point))
		          
		          spaces(ts,"COORD 2 OF FIRST POINT", 31, str(dose.coord_2_1st_point))
		          
		          spaces(ts,"HORIZONTAL GRID INTERVAL", 31, STR(dose.horizontal_Grid))
		          
		          spaces(ts,"VERTICAL GRID INTERVAL", 31, STR(dose.vertical_Grid))
		          
		          spaces(ts,"PLAN ID OF ORIGIN", 31, (dose.plan_ID))
		          
		          ts.writeLine
		          put_RTOG_Dose(dose,f)
		        next'end writing one dose
		      end'end write doses
		      '===============================DVH============================
		      if ubound(me.plan(i).DVH)> -1 then'write DVH
		        for j=0 to ubound(me.plan(i).dvH)'wite each DVH
		          dvh=new rtOG_dose_Volume_Histogram
		          dvh= me.plan(i).DVH(j)
		          spaces(ts,"IMAGE #", 31, str(dvh.file_Num))
		          
		          spaces(ts,"IMAGE TYPE", 31, "DOSE VOLUME HISTOGRAM")
		          
		          spaces(ts,"CASE #", 31, "1")
		          
		          spaces(ts,"PATIENT NAME", 31, patient_Name)
		          
		          spaces(ts,"STRUCTURE NAME", 31, (dvh.structure_Name))
		          
		          spaces(ts,"DOSE UNITS", 31, (dvh.Dose_Units))
		          
		          spaces(ts,"VOLUME TYPE", 31, (dvh.volume_Type))
		          
		          spaces(ts,"NUMBER OF PAIRS", 31, str(dvh.Number_of_Pairs))
		          
		          spaces(ts,"MAXIMUM # PAIRS", 31, str(dvh.max_Num_Pairs))
		          
		          spaces(ts,"NUMBER REPRESENTATION", 31, (dvh.Num_Rep))
		          
		          spaces(ts,"PLAN ID OF ORIGIN", 31, (dvh.plan_ID))
		          
		          ts.writeLine
		          put_RTOG_DVH(dvh,f)
		        next
		      end' end write DVH
		    next//write each plan
		  end//writing plan
		  ts.close
		  PW_Show=false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Put_RTOG_Beam(beam as rtoG_Beam_Geometry, f as folderItem)
		  Dim fname, line ,a,b as string
		  Dim ts as textOutputStream
		  Dim i ,j as integer
		  '=========================
		  ///if beam.changed =true then
		  fname=str(beam.file_num)
		  while len(fname)<4
		    fname="0"+fname
		  wend
		  fname="aapm"+fname
		  
		  PW_StaticText="Writing "+beam.Beam_Description+ " File # "+fname
		  
		  ts=f.parent.child(fname).createTextFile
		  '=========================================================
		  line = """Isocenter coordinate""  " +str(beam.Collimator.Fields(0).isocenter.X)+",  "+str(beam.Collimator.Fields(0).isocenter.y)+",  "+str(beam.Collimator.Fields(0).isocenter.z)
		  ts.writeline line
		  if beam.Collimator.Type ="Asymmetric" or beam.Collimator.Type ="Asmmetric_X" then // ge
		    line = """Asymmetric Collimator Setting X""  " +str(beam.Collimator.fields(0).X1)+",  "+str(beam.Collimator.fields(0).X2)
		    ts.writeline line
		  else
		    line = """Collimator Setting X""  " +str(beam.Collimator.fields(0).X1)
		    ts.writeline line
		  end
		  if beam.Collimator.Type ="Asymmetric" or beam.Collimator.Type ="Asmmetric_Y" then // ge
		    line = """Asymmetric Collimator Setting Y""  " +str(beam.Collimator.fields(0).Y1)+",  "+str(beam.Collimator.fields(0).Y2)
		    ts.writeline line
		  else
		    line = """Collimator Setting Y""  " +str(beam.Collimator.fields(0).Y1)
		    ts.writeline line
		  end
		  '=================================================
		  if beam.aperture_Type="Block" then// read block type file
		    line = """Number of block contours""  " +str(ubound(beam.Block_Contours)+1)
		    ts.writeline line
		    for i = 0 to ubound(beam.Block_Contours)
		      line = """Block contour #0 encloses open portal""  " +str((beam.Block_Contours(i).Block_Type))
		      ts.writeline line
		      line = """Transmission under block""  " +str((beam.Block_Contours(i).Transmission))
		      ts.writeline line
		      line = """Number of block coordinate pairs""  " +str((ubound(beam.Block_Contours(i).Pair))+1)
		      ts.writeline line
		      for j =0 to ubound(beam.block_Contours(i).pair)
		        a=str(beam.Block_Contours(i).Pair(j).x)
		        b=str(beam.Block_Contours(i).Pair(j).y)
		        while len(a)<5
		          a=chrB(32)+a
		        wend
		        while len(b)<5
		          b=chrB(32)+b
		        wend
		        line=a+b
		        ts.writeline line
		      next
		    next
		  end
		  '=====================================
		  ts.close
		  //end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Put_RTOG_Dose(dose as rtoG_Dose_Distribution, f as folderItem)
		  Dim fname , a,line as string
		  Dim ts As textOutputStream
		  Dim i , j ,k, num_points as integer
		  '=====================================
		  fname=str(dose.File_Num)
		  while len(fname)<4
		    fname="0"+fname
		  wend
		  fname="aapm"+fname
		  PW_StaticText="Writing Dose Matrix"+ " File # "+fname
		  
		  ts=f.parent.child(fname).createTextFile
		  line = """NUMBER OF DOSE PLANES IS "" " +str(ubound(dose.Dose_Distribution)+1)
		  ts.writeline line
		  for i = 0 to ubound(dose.Dose_Distribution)
		    line = """Z-COORDINATE IS "" " +str((dose.Dose_Distribution(i).z))
		    ts.writeline line
		    num_points=dose.Size_of_Dimension1*dose.size_of_Dimension2
		    for j = 0 to (num_points/10-1)
		      line = ""
		      for k = 0 to 9
		        a=str(dose.Dose_Distribution(i).Points(10*j+k))
		        while len(a)<7
		          a=chrB(32)+a
		        wend
		        if k <> 9 then
		          line= line + a+","
		        else
		          line= line + a
		        end
		      next
		      ts.writeline line
		    next
		  next
		  ts.close
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Put_RTOG_DVH(dvh as rtoG_Dose_Volume_Histogram, f as folderItem)
		  Dim fname , a,line as string
		  Dim ts As textOutputStream
		  Dim i , k as integer
		  '================================
		  if dvh.changed = true then
		    fname=str(dvh.File_Num)
		    while len(fname)<4
		      fname="0"+fname
		    wend
		    fname="aapm"+fname
		    PW_StaticText="Writing DVH"+ " File # "+fname
		    
		    ts=f.parent.child(fname).createTextFile
		    line = """Minimum Bin Dose,  Fractional Volume"""
		    ts.writeline line
		    for i =0 to dvh.Number_of_Pairs-1
		      line =""
		      for k = 0 to 1
		        a=str(dvh.bin(i,k))
		        while len(a)<10
		          a=chrB(32)+a
		        wend
		        if k=0 then
		          a=a+","
		        end
		        line= line + a
		      next
		      ts.writeline line
		    next
		    ts.close
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Put_RTOG_Film(film as rtoG_digital_Film_Image, f as folderItem)
		  Dim fname as string
		  Dim bs as binaryStream
		  Dim length ,i, fsize as integer
		  '=============================
		  if film.changed = true then
		    fname=str(film.File_Num)
		    while len(fname)<4
		      fname="0"+fname
		    wend
		    fname="aapm"+fname
		    PW_StaticText="Writing "+film.Film_Type+ " File # "+fname
		    
		    bs=f.parent.child(fname).createBinaryFile("")
		    bs.littleEndian=false
		    fsize=ubound(film.pixel)
		    length=film.bytes_per_Pixel
		    if length=1 then
		      for i=0 to fsize-1  //user readbyte (8 bits) or readshort (16 bits)
		        bs.WriteInt8  film.Pixel(i)
		      next
		    elseif length=2 then
		      for i=0 to fsize-1  //user readbyte (8 bits) or readshort (16 bits)
		        bs.WriteInt16  film.pixel(i)
		      next
		    end if
		    bs.close
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Put_RTOG_Scan(scan as rtoG_scan, f as folderItem)
		  Dim fname as string
		  Dim fsize , i,length as integer
		  Dim bs as binaryStream
		  if scan.changed = true then
		    fname=str(scan.file_num)
		    while len(fname)<4
		      fname="0"+fname
		    wend
		    fname="aapm"+fname
		    PW_StaticText="Writing "+scan.image_Type+ " File # "+fname
		    
		    fsize=scan.size_of_Dimension1*scan.size_of_Dimension2
		    bs=f.parent.child(fname).createBinaryFile("")
		    bs.littleEndian=false
		    length = scan.bytes_per_Pixel
		    if length=1 then
		      for i=0 to fsize-1  //user readbyte (8 bits) or readshort (16 bits)
		        bs.WriteInt8  scan.voxel(i)
		      next
		    elseif length=2 then
		      for i=0 to fsize-1  //user readbyte (8 bits) or readshort (16 bits)
		        bs.WriteInt16  scan.voxel(i)
		      next
		    end if
		    bs.close
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Put_RTOG_Structures(structures as rtOG_Structure_Class, f as folderItem)
		  Dim fname , line,a,b,c as string
		  Dim ts as textoutputStream
		  dim i,j,k ,l as integer
		  
		  if structures.changed = true then
		    fname=str(structures.file_num)
		    while len(fname)<4
		      fname="0"+fname
		    wend
		    fname="aapm"+fname
		    PW_StaticText="Writing "+structures.Structure_Name+ " File # "+fname
		    
		    ts=f.parent.child(fname).createTextFile
		    line = """NUMBER OF LEVELS""       " +str(structures.num_of_Scans)
		    ts.writeline line
		    for i = 0 to (structures.Num_of_Scans-1)
		      line = """SCAN NUMBER """ +str(structures.Structure_Data(i).scan_Num)
		      ts.writeline line
		      line = """# OF SEGMENTS ""  " +str(Ubound(structures.structure_Data(i).Segments)+1)
		      ts.writeline line
		      if ubound(structures.Structure_Data(i).segments) >-1 then
		        for j =0 to Ubound(structures.structure_Data(i).Segments) // for each segment
		          line = """# OF POINTS ""  " +str(Ubound(structures.structure_Data(i).Segments(j).points)+1)
		          ts.writeline line
		          for k=0 to  Ubound(structures.structure_Data(i).Segments(j).points)// for each point in each segment
		            a=str(structures.structure_Data(i).Segments(j).points(k).x)+","
		            b=str(structures.structure_Data(i).Segments(j).points(k).y)+","
		            c=str(structures.structure_Data(i).Segments(j).points(k).z)
		            while len(a)<8
		              a=chrB(32)+a
		            wend
		            while len(b)<8
		              b=chrB(32)+b
		            wend
		            while len(c)<8
		              c=chrB(32)+c
		            wend
		            line = a+b+c
		            ts.writeline line
		          next
		        next
		      end
		    next
		    ts.close
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_CadPlan(fi as folderitem)
		  //-----------------------------------------------
		  // Function to readin one CADPlan file
		  //
		  //-----------------------------------------------
		  dim basename,fname ,temp as string
		  dim basefi,fnamefi as FolderItem
		  dim done as boolean
		  dim a,b,c,i,j,k,nimage,m,n,ii,plan_origin_set,caddate,dosenorm,normfac,numfield as integer
		  dim bs,bsf as BinaryStream
		  dim tmpstruct as RTOG_Structure_Slice
		  dim dx,dy,thickness,grid,dose_offset_x,dose_offset_y,plan_orgin_x,plan_orgin_y,norm_f,tmpint as double
		  dim d as Date
		  dim mb as MemoryBlock
		  Dim data as RTOG_Dose_Plane
		  Dim dose as RTOG_Dose_Distribution
		  Dim pp as RTOG_Plan
		  '=======================================
		  
		  
		  
		  '=====scan to figure how many images=====
		  //fi is a folder item to image 0
		  
		  basefi=fi.Parent
		  basename=left(fi.name,Len(fi.name)-1)
		  i=0
		  //check how many images are there
		  while not done
		    //the base name for the image file is id which includes the .
		    //so every image is made out of id+#
		    fname=basename+str(i)
		    fnamefi=basefi.child(fname)
		    if fnamefi.exists then
		      i=i+1
		    else
		      done=true
		    end if
		  wend
		  nimage=i
		  redim Scan(nimage-1)
		  
		  '=========End # images check===========
		  
		  
		  
		  '=========Open each image file
		  PW_Progress_Max=nimage
		  
		  
		  for k=0 to nimage ' Open all images files
		    fname=basename+str(k)
		    PW_StaticText="Opening file : "+fname
		    PW_Progress=k+1
		    
		    
		    fnamefi=basefi.child(fname)
		    bs=fnamefi.OpenAsBinaryFile
		    
		    
		    
		    if bs<>nil then
		      bs.littleEndian=false
		      scan(k)=new RTOG_Scan
		      
		      
		      if k=0 then 'Only do this once for 1st image
		        Patient_ID=(left(basename,7))
		        bs.position=260
		        Patient_Name=bs.read(40)
		        Patient_Name=trim(Patient_Name)
		        Patient_Surname=Trim(NthField(Patient_Name,"^",1))
		        Patient_Name=Trim(NthField(Patient_Name,"^",2))
		        
		        'Enter in defaut Struct stuff
		        redim Structures.Structures(9) //make space for 10
		        for i=0 to 9
		          Structures.Structures(i)=new RTOG_Structure_Class
		          Structures.Structures(i).Structure_Name="Contour "+str(i+1)
		          Structures.Structures(i).Structure_Format="SCAN-BASED"
		          Structures.Structures(i).Number_Rep="CHARACTER"
		          Structures.Structures(i).Num_of_Scans=nimage
		          redim Structures.Structures(i).Structure_Data(nimage-1)
		        next
		        
		        //making up some default colors for cadplan Structures.Structures
		        Structures.Structures(0).scolor=&c00FF00
		        Structures.Structures(0).colour="GREEN"
		        Structures.Structures(1).scolor=&c0000FF
		        Structures.Structures(1).colour="BLUE"
		        Structures.Structures(2).scolor=&cFFFF00
		        Structures.Structures(2).colour="COLOR2"
		        Structures.Structures(3).scolor=&c00FFFF
		        Structures.Structures(3).colour="COLOR3"
		        Structures.Structures(4).scolor=&cFF00FF
		        Structures.Structures(4).colour="COLOR4"
		        Structures.Structures(5).scolor=&c2266FF
		        Structures.Structures(5).colour="COLOR5"
		        Structures.Structures(6).scolor=&c442200
		        Structures.Structures(6).colour="COLOR6"
		        Structures.Structures(7).scolor=&c3333FF
		        Structures.Structures(7).colour="COLOR7"
		        Structures.Structures(8).scolor=&c331111
		        Structures.Structures(8).colour="COLOR8"
		        Structures.Structures(9).scolor=&c332211
		        Structures.Structures(9).colour="COLOR9"
		        
		        
		      end'End of 1st image
		      
		      //for type of image look at IMORGN, if 1000-1999 then CT
		      //for type of image look at IMORGN, if 2000-2999 then NMR
		      //for type of image look at IMORGN, if 3000-3999 then PET
		      bs.position=10
		      tmpint=bs.ReadInt16
		      if tmpint<2000 then
		        scan(k).Image_Modality="CT SCAN"
		      elseif tmpint <3000 then
		        scan(k).Image_Modality="MR SCAN"
		      elseif tmpint <4000 then
		        scan(k).Image_Modality="PET SCAN"
		      end if
		      
		      'Image origination
		      bs.position=108
		      tmpint=bs.ReadInt16
		      if tmpint=0 then
		        scan(k).scan_type="unknown"
		      elseif tmpint =1 then
		        scan(k).scan_type="TRANSVERSE"
		      elseif tmpint=2 then
		        scan(k).scan_type="CORONAL"
		      elseif tmpint=3 then
		        scan(k).scan_type="SAGITTAL"
		      end if
		      
		      //ct offset not defined in CART...assume -1000
		      scan(k).CT_Offset=1000
		      //pixel size in X: cm/pixel
		      bs.position=18
		      scan(k).Grid_Units_Width=(bs.ReadInt16)/10000
		      //pixel size in Y: cm/pixel
		      bs.position=20
		      scan(k).Grid_Units_Height=(bs.ReadInt16)/10000
		      
		      bs.position=12
		      scan(k).Z_Value=bs.ReadInt16/10
		      
		      
		      scan(k).Num_Representation="TWO'S COMPLEMENT INTEGER"
		      //those must equal 2:
		      scan(k).Bytes_per_Pixel=2
		      scan(k).Num_Dimensions=2
		      
		      //nx
		      bs.position=14
		      scan(k).Size_of_Dimension1=bs.ReadInt16
		      //ny
		      bs.Position=16
		      scan(k).Size_of_Dimension2=bs.ReadInt16
		      
		      //Image Offsets
		      scan(k).X_Offset=-scan(k).Grid_Units_Width*scan(k).Size_of_Dimension1/2+scan(k).Grid_Units_Width/2
		      scan(k).Y_offset=-scan(k).Grid_Units_Height*scan(k).Size_of_Dimension2/2+scan(k).Grid_Units_Height/2
		      scan(k).CT_Air=0
		      scan(k).CT_Water=1024
		      
		      
		      //fill in the structure information for that slice
		      //10 possible one in CadPlan
		      
		      
		      
		      
		      //get pixel info for image 0
		      redim scan(k).voxel(scan(k).Size_of_Dimension2*scan(k).Size_of_Dimension1)
		      for j=0 to scan(k).Size_of_Dimension2-1
		        for i=0 to scan(k).Size_of_Dimension1-1
		          bs.position=6656+i*2+j*Scan(k).Size_of_Dimension1*2
		          //invert the position in the matrix (flip the ys values)
		          scan(k).voxel(i+(scan(k).Size_of_Dimension2-j-1)*scan(k).Size_of_Dimension1)=bs.ReadInt16-1000
		        next
		      next
		      
		      
		      
		      
		      
		      '========Enter in structure points==========
		      for i=0 to 9
		        bs.position=1024+i*2
		        tmpint=bs.ReadInt16 //gives how many points for that contour i on that images (image #0)
		        Structures.Structures(i).Structure_Data(k) =  new  RTOG_Structure_Slice//for images k
		        tmpstruct=new RTOG_Structure_Slice
		        redim tmpstruct.Segments(0) //only one segment per contour per slice with cadplan
		        tmpstruct.Segments(0)=new RTOG_Structure_Segment
		        //fill in the values for that i contour on image 0
		        if tmpint > 0 then
		          redim tmpstruct.Segments(0).Points(tmpint-1)
		          for j=0 to tmpint-1 step 1 // as they are stored as x,y,x1,y1 ..
		            bs.position=1536 + i*256*2 + j*4
		            a=bs.ReadInt16
		            bs.position=1536 + i*256*2 + j*4+2
		            b=bs.ReadInt16
		            
		            //get the coordinates of pixel (a,b) in cm from the center of the image being at (0cm,0cm)
		            //need to use the image size for that.
		            //get difference dx and dy in pixel then x by cmperpix size.
		            dx=(a-Scan(k).Size_of_Dimension1/2)*scan(k).Grid_Units_Width
		            dy=-(b-Scan(k).Size_of_Dimension2/2)*scan(k).Grid_Units_Height
		            tmpstruct.Segments(0).Points(j)=new RTOG_Structure_Point
		            tmpstruct.Segments(0).Points(j).x=dx
		            tmpstruct.Segments(0).Points(j).y=dy
		            tmpstruct.Segments(0).Points(j).z=Scan(k).Z_Value
		            
		          next
		        end if
		        //put tmpstruct in at the proper place
		        tmpstruct.scan_Num=k+1
		        tmpstruct.Z=Scan(k).Z_Value
		        Structures.Structures(i).Structure_Data(k)=tmpstruct
		      next
		      '==========End Structure points=========
		      
		      bs.close
		    end
		  next' End opening of image files and strucutres
		  
		  
		  
		  
		  '======================LOAD PLANS===============
		  // Each *.EF file is a plan file which contains the dose distrbution
		  //
		  //
		  for ii=0 to 9 //the base name for the image file is id which includes the .
		    //so every image is made out of id+#
		    fname=basename+"EF"+str(ii)
		    fnamefi=basefi.child(fname)
		    if fnamefi.exists then
		      //open that planfile
		      pp = new RTOG_Plan
		      pp.Plan_ID=str(ii+1)
		      if len(pp.Plan_ID)<2 then
		        pp.Plan_ID="0"+pp.Plan_ID
		      end
		      //assign the binarystream to it
		      bsf=fnamefi.openasbinaryFile
		      bsf.littleEndian=false
		      if bsf<>nil Then
		        if bsf.Length>=(10*320+(UBound(Scan)+1)*112*160*2) then
		          Dose = new RTOG_Dose_Distribution
		          dose.engine="CadPlan"
		          dose.Dose_name="CadPlan"
		          PW_StaticText="Opening file : "+fname
		          bsf.position=320+240*10 + 2*2
		          dosenorm=bsf.ReadInt16
		          norm_f=1000/bsf.ReadInt16
		          caddate=bsf.ReadInt16
		          numfield=bsf.ReadInt16
		          //now read the dose info and values
		          //reading the isocenter
		          
		          bsf.position=320+240*10 + 8*2
		          plan_origin_set=bsf.ReadInt16
		          
		          //isox
		          bsf.position=320+240*0+56+7*4
		          temp=str(bsf.readsingle)
		          
		          bsf.position=320+240*10 + 9*2
		          plan_orgin_x=bsf.ReadInt16/10
		          plan_orgin_y=bsf.ReadInt16/10
		          
		          
		          //the sign of the isoy might be a problem.
		          //isoy
		          bsf.position=320+240*0+56+8*4
		          temp=str(bsf.ReadSingle)
		          
		          //isoz
		          bsf.position=320+240*0+56+9*4
		          'gPreviewEF.isoz=bsf.ReadSingle
		          
		          
		          bsf.position=320+240*10 + 31*2
		          dose_offset_x=bsf.ReadInt16/100
		          dose_offset_y=bsf.ReadInt16/100
		          
		          //figure out the grid size in the dose matrix
		          bsf.position=320+240*10 + 33*2
		          grid=bsf.ReadInt16
		          select case grid
		          case 16
		            dose.Horizontal_Grid=0.125
		          case 8
		            dose.Horizontal_Grid=0.25
		          case 4
		            dose.Horizontal_Grid=0.5
		          case 2
		            dose.Horizontal_Grid=1.0
		          end select
		          
		          dose.Vertical_Grid=dose.Horizontal_Grid
		          dose.Size_of_Dimension1=160
		          dose.Size_of_Dimension2=112
		          dose.Size_of_Dimension3=UBound(Scan)+1
		          dose.Coord_3_1st_point=Scan(0).Z_Value
		          dose.Coord_1_1st_point=-160/2*dose.Horizontal_Grid+dose.Horizontal_Grid-(plan_orgin_x-dose_offset_x)
		          dose.Coord_2_1st_point=-112/2*dose.Vertical_Grid +dose.Vertical_Grid+(plan_orgin_y-dose_offset_y)
		          
		          
		          
		          //place in memoryblock to read faster...
		          //----------------------------
		          mb=new MemoryBlock(bsf.Length) //Changed to "new MemoryBlock" by William Davis when newmemoryBlock was found to have been deprecated
		          if mb.size=bsf.length then
		            //reading the whole file into thismemblock
		            bsf.position=0
		            mb.stringValue(0,mb.size)=bsf.read(bsf.Length)
		          end
		          //fix for Unix endian
		          mb.LittleEndian=false
		          //----------------------------
		          
		          Redim Dose.Dose_Distribution(UBound(Scan))
		          
		          Dose.Dmax=0
		          dose.Dmin=10000
		          PW_Progress_Max=UBound(Scan)
		          for k=0 to UBound(Scan)
		            data = new RTOG_Dose_Plane
		            redim data.Points(160*112-1)
		            data.Z=Scan(k).Z_Value
		            PW_Progress=k
		            
		            for i=0 to dose.Size_of_Dimension1-1
		              for j=0 to dose.Size_of_Dimension2-1
		                
		                tmpint=norm_f*mb.short(10*320+i*112*2+j*2+(k)*112*160*2)
		                data.Points(i*112+j)=tmpint
		                if tmpint>dose.Dmax Then
		                  dose.Dmax=tmpint
		                end
		                if tmpint<dose.Dmin Then
		                  dose.Dmin=tmpint
		                end
		                
		              next
		            next
		            dose.Dose_Distribution(k)=data
		          next
		          pp.Dose.Append dose
		        end if
		        bsf.close
		      end if
		      Plan.Append pp
		    end
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Read_McGill() As Boolean
		  //-----------------------------------------------------------------------------------
		  // Method to open one McGill RT patient file strucutre
		  //
		  //
		  // Updates 
		  // 2012 
		  //     - A Alexander -    Exit condition for patient files without any images
		  //
		  //'=============Read in McGill data==================
		  Dim scan_count,struct_count,i,plan_count,k as integer
		  Dim f as FolderItem
		  Dim ok as Boolean
		  '==============================================
		  
		  PW_Title="Opening McGill RT Patient"
		  PW_Show=True
		  
		  DICOM_ImageOrientationPatient="1.0\0.0\0.0\0.0\1.0\0.0"
		  
		  struct_count=0
		  scan_count=0
		  plan_count=0
		  ok=False
		  f=path
		  f=f.child("McGill_RT")
		  for i =1 to f.Count
		    if f.Item(i).Visible Then
		      if InStr(f.Item(i).Name,".img")>0 then
		        scan_count=scan_count+1
		      end
		      if InStr(f.Item(i).Name,".struct")>0 then
		        struct_count=struct_count+1
		      end
		    end
		  next
		  redim Scan(scan_count-1)
		  Structures= new RTOG_Structure
		  redim Structures.Structures(struct_count-1)
		  if scan_count>0 Then
		    Read_McGill_RT(f)
		    PW_Progress_Max=scan_count
		    ok=read_McGill_Scan(f, scan_count)
		    
		  else // Scan count less than 1 must exit program
		    // Update 2012
		    Errors.Append "Error! There are no images within this patient folder : "+f.Name+Chr(13) +" Exit patient opening"
		    ok=False
		  end
		  
		  if ok Then
		    read_McGill_Structures(f,struct_count)
		    f=f.Parent
		    gVis.Open
		    
		    for i=1 to f.Count
		      if InStr(f.Item(i).Name,"Plan")>0 then 'Read in each Plan
		        plan_count=plan_count+1
		        redim Plan(plan_count-1)
		        Plan(plan_count-1)=new RTOG_Plan
		        Plan(plan_count-1).Plan_ID=NthField(f.Item(i).Name,Chr(126)+Chr(126),2)
		        Plan(plan_count-1).Plan_Name=NthField(f.Item(i).Name,Chr(126)+Chr(126),3)
		        Plan(plan_count-1).Path=f.Child(f.Item(i).Name)
		        Plan(plan_count-1).Read_McGill_Plan
		        Plan(plan_count-1).Plan_Update_DV(Structures.Structures)
		        Plan(plan_count-1).Read_DV_Contraints_File
		        Plan(plan_count-1).Read_Structure_Files
		      end
		    next
		    
		    Profiles=new Class_Profiles_All
		    Profiles.Read_All_Profiles(path)
		  end
		  
		  PW_Show=False
		  
		  Structures.Structures_HR
		  
		  
		  
		  Try
		    
		  Catch err as OutOfMemoryException
		    Errors.Append "Error within McGill RT open, Insufficient memory to load remainder of patient files"
		    Return False
		    
		    
		  End Try
		  
		  
		  Return ok
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_McGill_RT(f as folderitem)
		  //---------------------------------------------------
		  //
		  // Populate CT, MRI, US data
		  //========================================
		  Dim fname,temp as string
		  Dim ts as TextInputStream
		  //=================================================
		  
		  f=f.Child("RT.dir")
		  ts=f.OpenAsTextFile
		  
		  if ts=nil Then
		    Return
		  end
		  
		  scan(0)=new RTOG_Scan
		  
		  While ts.EOF=False
		    temp=ts.ReadLine
		    
		    fname = trim(NthField(temp,":=",2))
		    temp = trim(NthField(temp,":=",1))
		    
		    if temp="PATIENT FORENAME" Then
		      Patient_Name = trim(fname)
		    elseif temp="PATIENT SURNAME" Then
		      Patient_Surname = trim(fname)
		    elseif temp="PATIENT ID #" Then
		      Patient_ID=trim(fname)
		    elseif temp="Patient Position" Then
		      PatientPosition=trim(fname)
		    elseif temp="IMAGE MODALITY" Then
		      scan(0).Image_Modality=trim(fname)
		    elseif temp="IMAGE TYPE" Then
		      scan(0).Image_Type=trim(fname)
		    elseif temp="SCAN TYPE" Then
		      scan(0).scan_type=trim(fname)
		    elseif temp="CT OFFSET" Then
		      scan(0).CT_Offset=Val(fname)
		    elseif temp="GRID 1 UNITS" Then
		      scan(0).Grid_Units_Width=Val(fname)
		    elseif temp="GRID 2 UNITS" Then
		      scan(0).Grid_Units_Height=Val(fname)
		    elseif temp="NUMBER REPRESENTATION" Then
		      scan(0).Num_Representation=Trim(fname)
		    elseif temp="BYTES PER PIXEL" Then
		      scan(0).Bytes_per_Pixel=Val(fname)
		    elseif temp="NUMBER OF DIMENSIONS" Then
		      scan(0).Num_Dimensions=Val(fname)
		    elseif temp="SIZE OF DIMENSION 1" Then
		      scan(0).Size_of_Dimension1=Val(fname)
		    elseif temp="SIZE OF DIMENSION 2" Then
		      scan(0).Size_of_Dimension2=Val(fname)
		    elseif temp="X OFFSET" Then
		      scan(0).X_Offset=Val(fname)
		    elseif temp="Y OFFSET" Then
		      scan(0).Y_offset=Val(fname)
		    elseif temp="CT-AIR" Then
		      scan(0).CT_Air=Val(fname)
		    elseif temp="CT-WATER" Then
		      scan(0).CT_Water=Val(fname)
		    elseif temp="SLICE THICKNESS" Then
		      scan(0).Slice_Thickness=Val(fname)
		    elseif temp="Date" Then
		      scan(0).Scan_date=Trim(fname)
		    elseif temp="WINDOW LEVEL" Then
		      scan(0).WinLevel=Val(fname)
		    elseif temp="WINDOW WIDTH" Then
		      scan(0).WinWidth=Val(fname)
		    elseif InStr(temp,"STUDYInstanceUID")>0 Then
		      StudyInstanceUID=fname
		    elseif InStr(temp,"SeriesInstanceUID")>0 Then
		      SeriesInstanceUID=fname
		    elseif InStr(temp,"FrameOfReferenceUID")>0 Then
		      FrameOfReferenceUID=fname
		    elseif InStr(temp,"StudyID")>0 Then
		      StudyID=fname
		    elseif InStr(temp,"ReferencedStructureSetSequence")>0 Then
		      ReferencedStructureSetSequence=fname
		    elseif InStr(temp,"SeriesNumber")>0 Then
		      SeriesNumber=fname
		    elseif InStr(temp,"DICOMStudyDate")>0 Then
		      DICOM_Study_Date=fname
		    elseif InStr(temp,"DICOMStudyTime")>0 Then
		      DICOM_Study_Time=fname
		    elseif InStr(temp,"DICOMStudyDescription")>0 Then
		      DICOM_Study_Description=fname
		    elseif InStr(temp,"DICOMSex")>0 Then
		      DICOM_Sex=fname
		    elseif InStr(temp,"DICOMAge")>0 Then
		      DICOM_Age=fname
		    elseif InStr(temp,"DICOMBirthday")>0 Then
		      DICOM_Birthdate=fname
		    elseif InStr(temp,"DICOMPhysician")>0 Then
		      DICOM_Physician=fname
		    elseif InStr(temp,"DICOM_ImageOrientationPatient")>0 Then
		      DICOM_ImageOrientationPatient=fname
		    elseif InStr(temp,"SeriesDescription")>0 Then
		      seriesdescription=fname
		    end
		  wend
		  ts.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Read_McGill_Scan(f as folderitem, scan_count as integer) As Boolean
		  '=================================================
		  // Populate CT,MRI,US data into McGill RT classes
		  //
		  //
		  // Updates
		  // 2012 : Alexander, update to return false when files are not found!
		  // 2012 : Image file position with Z
		  '========================================
		  Dim fname as string
		  Dim bs as binaryStream
		  Dim k,i,pixels,location,ll as integer
		  Dim mb as MemoryBlock
		  Dim found as Boolean
		  Dim ztest as Double
		  '=================================================
		  
		  redim Scan(scan_count-1)
		  
		  PW_Progress_Max=scan_count
		  
		  pixels=scan(0).Size_of_Dimension1*scan(0).Size_of_Dimension2
		  // Loop for each image file
		  for i=1 to scan_count
		    fname=str(i)
		    while len(fname)<3
		      fname="0"+fname
		    wend
		    fname=fname+".img"
		    PW_StaticText="Reading : "+scan(0).Image_Modality+chr(13)+ "File        : "+fname
		    PW_Progress=i
		    
		    
		    f=f.Child(fname)
		    if f.Exists Then
		      bs=f.OpenAsBinaryFile
		      mb=new MemoryBlock(bs.Length) //Changed to "new MemoryBlock" by William Davis when newmemoryBlock was found to have been deprecated
		      if mb.size=bs.length then
		        //reading the whole file into thismemblock
		        bs.position=0
		        mb.stringValue(0,mb.size)=bs.read(bs.Length)
		      end
		      bs.Close
		      f=f.Parent
		      if i-1 <>0 then
		        scan(i-1)=new RTOG_Scan
		      end
		      mb.LittleEndian=gPref.endian
		      scan(i-1).Z_Value=mb.DoubleValue(0)
		      redim scan(i-1).voxel(pixels-1)
		      for k=0 to pixels-1
		        location=(8+k*2)
		        if mb.Size>=location+2 Then
		          scan(i-1).voxel(k)=mb.Short(8+k*2)
		        end
		        if scan(i-1).voxel(k)>gvis.max_pix then
		          gvis.max_pix=scan(i-1).voxel(k)
		        end
		        if scan(i-1).voxel(k)<gvis.min_pix then
		          gvis.min_pix=scan(i-1).voxel(k)
		        end
		      next
		      location=(8+k*2)
		      
		      if location<mb.Size Then
		        ll=mb.Int16Value(location)
		        Scan(i-1).DICOM_SOP_Instance_UID=mb.StringValue(location+2,ll)
		      end
		      
		    else
		      // Upate 2012
		      Errors.Append "Could not find image file: "+f.Name+" with the McGill_RT folder!"
		      Return False
		    end
		  next
		  
		  // Update 2012 Alexander
		  // Check for Z values which are equal to each other
		  found=False
		  for i=0 to UBound(scan)
		    ztest=Scan(i).Z_Value
		    for k=0 to UBound(Scan)
		      if ztest=Scan(k).Z_Value and i<>k Then
		        found=True
		        Exit
		        Exit
		      end
		    next
		  Next
		  if found Then
		    Errors.Append "Error with image files! Two or more image files share the same z position."
		    Return False
		  end
		  
		  // True when all is good!
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_McGill_Structures(f as folderitem, struct_count as integer)
		  //------------------------------------------------------
		  // Populate Structure data
		  //========================================
		  Dim i,num,scan_num,segment_num,num_points,k,j,w as Integer
		  Dim ts as TextInputStream
		  Dim tmpstr,fname,reading(1),rgb_color,zero_test as string
		  Dim file as RTOG_Structure_Slice
		  Dim S as RTOG_Structure_Segment
		  Dim p as RTOG_Structure_Point
		  Dim Z_value as Single
		  '========================================
		  
		  
		  Structures.X_Offset=Scan(0).X_Offset
		  Structures.Y_Offset=Scan(0).Y_offset
		  
		  Structures.nx=Scan(0).Size_of_Dimension1
		  Structures.ny=Scan(0).Size_of_Dimension1
		  Structures.nz=UBound(Scan)+1
		  
		  Structures.Res_X=Scan(0).Grid_Units_Width
		  Structures.Res_Y=Scan(0).Grid_Units_Height
		  Structures.Res_Z=Scan(0).Slice_Thickness
		  
		  
		  PW_Progress_Max=struct_count-1
		  for i=0 to struct_count-1
		    me.Structures.Structures(i)= new RTOG_Structure_Class
		    fname=str(i+1)
		    while len(fname)<3
		      fname="0"+fname
		    wend
		    fname=fname+".struct"
		    f=f.Child(fname)
		    ts=f.OpenAsTextFile
		    do
		      reading = ts.readline.split(":=")
		      if ubound(reading) >-1 then
		        if Instr(reading(0),"STRUCTURE NAME" )>0 then
		          me.Structures.Structures(i).Structure_name = trim(reading(1))
		          me.Structures.Structures(i).structure_n=true
		        end
		        if Instr(reading(0),"NUMBER REPRESENTATION" )>0 then
		          me.Structures.Structures(i).number_Rep= trim(reading(1))
		          me.Structures.Structures(i).number_R=true
		        end
		        if Instr(reading(0),"STRUCTURE FORMAT" )>0 then
		          me.Structures.Structures(i).structure_format = trim(reading(1))
		          me.Structures.Structures(i).structure_F=true
		        end
		        if Instr(reading(0),"NUMBER OF SCANS" )>0 then
		          me.Structures.Structures(i).num_of_scans = val(trim(reading(1)))
		          me.Structures.Structures(i).num_S=true
		        end
		        
		        if Instr(reading(0),"STRUCTURE TYPE" )>0 then
		          me.Structures.Structures(i).StructureType = (trim(reading(1)))
		        end
		        if Instr(reading(0),"STRUCTURE eDENSITY" )>0 then
		          me.Structures.Structures(i).ElectronDensity = val(trim(reading(1)))
		        end
		        
		        if Instr(reading(0),"STRUCTURE DENSITY" )>0 then
		          if  "YES" = (trim(reading(1))) Then
		            me.Structures.Structures(i).ElectronDensityOverride=true
		          else
		            me.Structures.Structures(i).ElectronDensityOverride =False
		          end
		        end
		        if Instr(reading(0),"STRUCTURE ROINUMBER" )>0 then
		          me.Structures.Structures(i).ROI_Number = val(trim(reading(1)))
		        end
		        if Instr(reading(0),"STRUCTURE COLOUR RGB" )>0 then
		          rgb_color=trim(reading(1))
		          me.Structures.Structures(i).scolor=rgb(CDbl(NthField(rgb_color,"/",1)),CDbl(NthField(rgb_color,"/",2)),CDbl(NthField(rgb_color,"/",3)))
		        end
		      end
		    loop until ubound(reading) =-1
		    '===============================================================================
		    PW_StaticText="Reading : "+me.Structures.Structures(i).Structure_name+chr(13)+ "File        : "+fname
		    PW_Progress=i
		    
		    '===============================================================================
		    tmpstr=ts.readline
		    num=val(NthField(tmpstr,"""",3))// Number of scans
		    redim me.Structures.Structures(i).structure_Data(num-1)
		    for w = 1 to num//Get all points per scan
		      file = new RTOG_Structure_Slice
		      tmpstr=ts.readline
		      tmpstr=NthField(tmpstr,":",2)
		      scan_num=Val(NthField(tmpstr,",",1))
		      Z_value=Val(NthField(tmpstr,",",2))
		      tmpstr=ts.readline
		      segment_num=Val(NthField(tmpstr,"""",3))
		      if segment_num >0 then //if we have segmnets
		        redim file.Segments(segment_num-1)
		        for j=1 to segment_num // Get the points per scan number per segment
		          tmpstr=ts.readline
		          num_points=Val(NthField(tmpstr,"""",3))
		          S = new RTOG_Structure_Segment
		          redim s.Points(num_points-1)
		          for k = 1 to num_points// read points per segment
		            tmpstr=ts.readline
		            p = new RTOG_Structure_Point
		            zero_test=(NthField(tmpstr,",",1))'only here because of bad files which put zeros infront of values
		            if asc(zero_test)= 0 then'only here because of bad files which put zeros infront of values
		              p.x = val(right(zero_test,6))'only here because of bad files which put zeros infront of values
		            else
		              p.X=Val(NthField(tmpstr,",",1))
		            end
		            p.y=Val(NthField(tmpstr,",",2))
		            p.z=Val(NthField(tmpstr,",",3))
		            s.Points(k-1)=p
		          next // end read points per segment
		          file.segments(j-1)=s
		        next//
		      else
		        redim file.segments(-1)
		      end // end segments
		      me.Structures.Structures(i).Structure_Data(w-1)=file
		      me.Structures.Structures(i).structure_Data(w-1).scan_Num=scan_num
		      me.Structures.Structures(i).structure_Data(w-1).Z=Z_value
		    next// end get all points
		    ts.Close
		    f=f.Parent
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_RTOG(f as folderItem)
		  Dim filenumber, count,i, plan_counter(-1),add,k as integer
		  Dim ts as textinputStream
		  Dim tmpstr, file, reading(1), imagetype , plan_id,plan_name(-1) as string
		  Dim p_name,matched  as boolean
		  Dim pp as RTOG_Plan
		  '==================================
		  ts=f.openasTextFile
		  do
		    tmpstr=ts.readline//Get one line of file
		    reading = tmpstr.split(":=")
		    if ubound(reading) > 0 then// if the line has text
		      if Instr(reading(0), "Image #")>0 then
		        filenumber= val(reading(1))
		      elseif Instr(reading(0), "PATIENT NAME")>0 and p_name = false then
		        patient_Name=trim(reading(1))
		        p_name=true
		        if InStr(Patient_Name,",")>0 then
		          Patient_Name=Replace(Patient_Name, ",","_")
		        end
		        if InStr(Patient_Name," ")>0 then
		          Patient_Name=Replace(Patient_Name, " ","_")
		        end
		        if InStr(Patient_Name,"__")>0 then
		          Patient_Name=Replace(Patient_Name, "__","_")
		        end
		      elseif Instr(reading(0), "Study number of origin")>0  then
		        Patient_ID=trim(reading(1))
		      elseif Instr(reading(0), "Date created")>0  then
		        date_created=trim(reading(1))
		      elseif Instr(reading(0), "PLAN ID OF ORIGIN")>0  or Instr(reading(0), "Fraction Group ID")>0 then//Determine the number of plans
		        matched=false
		        for i = 0 to (ubound(plan_name))
		          if  InStr(reading(1), plan_name(i))>0 then
		            matched = true
		          end
		        next
		        if matched = false then//found a new plan
		          redim plan_name(ubound(plan_name)+1)
		          redim plan_counter(ubound(plan_counter)+1)
		          plan_name(ubound(plan_name))= trim(reading(1))
		          plan_counter(ubound(plan_counter))=filenumber//determine where a new plan starts
		          pp = new RTOG_Plan
		          pp.Plan_Name=trim(reading(1))
		          plan_id=str(UBound(Plan)+2)
		          While Len(plan_id)<2
		            plan_id="0"+plan_id
		          Wend
		          
		          pp.Plan_ID=plan_id
		          Plan.Append pp
		        end
		      end
		    end// end reading of that line
		  loop until ts.eoF
		  ts.close
		  
		  // if no plans were found
		  if ubound(plan_counter) = -1 then
		    redim plan_counter(0)
		    plan_counter(0)=1
		    redim plan_name(0)
		    plan_name(0)="None"
		    ReDim Plan(0)
		    Plan(0) = new RTOG_Plan
		    Plan(0).Plan_Name="None"
		    Plan(0).Plan_ID="01"
		  end
		  
		  
		  
		  '======================================
		  PW_Progress_Max=filenumber
		  
		  ts=f.openasTextFile
		  do
		    reading = ts.readline.split(":=")
		    if ubound(reading) > 0 then// if the line has text
		      if Instr(reading(0), "Image #")>0 then
		        filenumber= val(reading(1))
		      end
		      if InStr(reading(1), "CT SCAN" )>0 or InStr(reading(1),"MRI")>0 or instr(reading(1),"Ultrasound")>0  then
		        read_RTOG_Scan(filenumber, trim(reading(1)),f,ts)
		      end
		      if Instr(reading(1), "STRUCTURE")>0 then
		        read_RTOG_Structures(filenumber, f,ts)
		      end
		    end// End line with text
		  loop until ts.eoF
		  ts.close'end reading all aapm files
		  '===========================================
		  
		  for i =0 to UBound(Plan)
		    ts=f.openasTextFile
		    do
		      reading = ts.readline.split(":=")
		      if ubound(reading) > 0 then// if the line has text
		        if Instr(reading(0), "Image #")>0 then
		          filenumber= val(reading(1))
		        end
		        if instr(reading(1), "BEAM GEOMETRY")>0 then
		          Plan(i).read_RTOG_beam(filenumber, f,ts)
		        end
		        'if InStr(reading(1), "DIGITAL FILM") >0 then
		        'get_rtog_film(filenumber,  f,ts)
		        'end
		        if instr(reading(1),"DOSE")>0 and  instr(reading(1),"VOLUME")=0 then
		          Plan(i).READ_RTOG_Dose(filenumber, f,ts)
		        end
		        'if InStr(reading(1), "DOSE")>0 and InStr(reading(1), "VOLUME HISTOGRAM")>0 then
		        'get_rtOG_DVH(filenumber,f,ts)
		        
		      end// End line with text
		    loop until ts.eoF
		    ts.close'end reading all aapm files
		  Next
		  
		  
		  //Check Beam number in each plan, add one if 1st is zero
		  add=0
		  for i =0 to UBound(Plan)
		    for k =0 to UBound(Plan(i).Beam)
		      if Plan(i).Beam(0).beam_num=0 Then
		        add=1
		      end
		      Plan(i).Beam(k).beam_num=Plan(i).Beam(k).beam_num+add
		    next
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_RTOG_DVH(filenumber as integer, f0 as folderItem, ts as textinputStream)
		  '==========================================
		  Dim reading(1) , fname,error,oneline,name As string
		  Dim i ,num_plans,num_dvh as integer
		  Dim dvh_ts as textInputStream
		  Dim dvh as rtOG_dose_Volume_Histogram
		  DVH= New RtOG_dose_Volume_Histogram
		  '===============================================
		  fname=str(filenumber)
		  while len(fname)<4
		    fname="0"+fname
		  wend
		  fname="aapm"+fname
		  PW_StaticText="Reading : "+"DVH "+dvh.Structure_Name  +chr(13)+ "File        : " +fname
		  PW_Progress=filenumber
		  
		  '============================================
		  'set flags to false
		  dvh.Dose_T=False
		  dvh.Dose_U=False
		  dvh.Max_N=False
		  dvh.Number_P=False
		  dvh.Num_R=False
		  dvh.Plan_I=False
		  dvh.Structure_N=False
		  dvh.Volume_T=False
		  '=====================================
		  'Populate variable from the 0000 file
		  dvH.file_Num=filenumber
		  do
		    reading = ts.readline.split(":=")
		    if ubound(reading) >-1 then
		      if Instr(reading(0),"DOSE TYPE" )>0 then
		        dvH.dose_type=trim(reading(1))
		        dvh.dose_t=true
		      end
		      if Instr(reading(0),"DOSE UNITS" )>0 then
		        dvh.dose_units=trim(reading(1))
		        dvh.dose_u=true
		      end
		      if Instr(reading(0),"MAXIMUM # PAIRS" )>0 then
		        dvh.max_Num_Pairs=val(reading(1))
		        dvH.max_N=true
		      end
		      if Instr(reading(0),"NUMBER OF PAIRS" )>0 then
		        dvh.number_of_Pairs=val(reading(1))
		        dvh.number_P=true
		      end
		      if Instr(reading(0),"NUMBER REPRESENTATION" )>0 then
		        dvh.num_Rep=trim(reading(1))
		        dvh.num_R=true
		      end
		      if Instr(reading(0),"PLAN ID OF ORIGIN" )>0 then
		        dvh.plan_ID=trim(reading(1))
		        dvh.plan_I=true
		      end
		      if Instr(reading(0),"STRUCTURE NAME" )>0 then
		        dvh.structure_Name=trim(reading(1))
		        dvh.structure_N=true
		      end
		      if Instr(reading(0),"VOLUME TYPE"  )>0 then
		        dvh.volume_Type=trim(reading(1))
		        dvh.volume_T=true
		      end
		    end
		  loop until ubound(reading) =-1
		  '================================================================
		  'Pop up error window for missing values
		  'name="DVH"
		  'if dvh.dose_U = false then
		  'error="Dose Units"
		  'Error_window(name, error,filenumber)
		  'end
		  'if dvh.max_N = false then
		  'error="Maximum number of pairs"
		  'Error_window(name, error,filenumber)
		  'end
		  'if dvh.number_P = false then
		  'error="Number of pairs"
		  'Error_window(name, error,filenumber)
		  'end
		  'if dvh.num_R = false then
		  'error="Number Representation"
		  'Error_window(name, error,filenumber)
		  'end
		  'if dvh.plan_I = false then
		  'error="Plan ID of origin"
		  'Error_window(name, error,filenumber)
		  'end
		  'if dvh.structure_N = false then
		  'error="Structure Name"
		  'Error_window(name, error,filenumber)
		  'end
		  'if dvh.volume_T = false then
		  'error="Volume Type"
		  'Error_window(name, error,filenumber)
		  'end
		  'if dvh.Dose_T = false then
		  'error="Dose Type"
		  'Error_window(name, error,filenumber)
		  'end
		  '==================================================
		  //now open the actual image
		  if dvh.number_P = true then
		    f0=f0.parent.child(fname)//open file
		    DVH_ts=f0.openasTextFile
		    oneline=dvh_ts.readline
		    redim dvH.Bin(dvh.Number_of_Pairs-1,1)
		    for i =1 to dvh.number_of_Pairs//read in all bin values
		      oneline = dvh_ts.readline
		      dvh.bin(i-1,0)=val(nthField(oneline,",",1))//Minimum bin dose
		      dvh.bin(i-1,1)=val(nthField(oneline,",",2))// Fraction volume
		    next// end bin value read
		  end
		  '======================================================
		  num_plans = ubound(plan)
		  num_dvh =ubound(plan(num_plans).dvH)+1
		  redim plan(num_plans).dvH(num_dvh)
		  plan(num_plans).dvH(num_dvh)= new rtoG_dose_Volume_Histogram
		  plan(num_plans).dvH(num_dvh)=dVH
		  if dvh.Plan_I=True then
		    plan(num_plans).Plan_ID=dvh.Plan_ID
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_RTOG_Film(filenumber as integer, f0 as folderItem, ts as textinputStream)
		  '==============================
		  Dim reading(1), fname,error ,name As string
		  Dim length, fsize,i, num_plans, num_film as integer
		  Dim bs as binaryStream
		  Dim film As rtOG_digital_Film_Image
		  film =new rtOG_digital_Film_Image
		  '===================================
		  fname=str(filenumber)
		  while len(fname)<4
		    fname="0"+fname
		  wend
		  fname="aapm"+fname
		  film.file_Num=filenumber
		  '===============================
		  'Set flags to false
		  film.Beam_D=False
		  film.Beam_n=False
		  film.Bytes_P=False
		  film.Film_D=False
		  film.Film_N=False
		  film.Film_T=False
		  film.Num_D=False
		  film.Num_R=False
		  film.Plan_I=False
		  film.Size_D1=False
		  film.Size_D2=False
		  '==============================
		  do
		    reading = ts.readline.split(":=")
		    if ubound(reading)>-1 then
		      if Instr(reading(0),"BYTES PER PIXEL")>0 then
		        film.bytes_Per_Pixel=val(reading(1))
		        film.bytes_P=true
		      end
		      if Instr(reading(0),"FILM DATE")>0 then
		        film.Film_Date= trim(reading(1))
		        film.film_D=true
		      end
		      if Instr(reading(0),"FILM NUMBER")>0 then
		        film.film_Num =val(reading(1))
		        film.film_N= true
		      end
		      if Instr(reading(0),"FILM TYPE" )>0 then
		        film.film_Type=trim(reading(1))
		        film.film_t=true
		      end
		      if Instr(reading(0),"NUMBER OF DIMENSIONS" )>0 then
		        film.num_of_Dimension=val(reading(1))
		        film.num_D=true
		      end
		      if Instr(reading(0),"NUMBER REPRESENTATION" )>0 then
		        film.num_Rep=trim(reading(1))
		        film.num_r=true
		      end
		      if Instr(reading(0),"SIZE OF DIMENSION 1" )>0 then
		        film.size_of_Dimension1=val(reading(1))
		        film.size_d1=true
		      end
		      if Instr(reading(0),"SIZE OF DIMENSION 2" )>0 then
		        film.size_of_Dimension2=val(reading(1))
		        film.size_d2=true
		      end
		      if ubound(plan) >-1 then
		        
		        if Instr(reading(0),"PLAN ID")>0 then
		          film.Plan_ID=trim(reading(1))
		          film.Plan_I=true
		        end
		        
		        if Instr(reading(0),"BEAM #" )>0 then
		          film.beam_num=val(reading(1))
		          film.beam_n=true
		        end
		        if Instr(reading(0),"BEAM DESCRIPTION" )>0 then
		          film.beam_Discription=(reading(1))
		          film.beam_D=true
		        end
		      end
		    end
		  loop until ubound(reading) =-1
		  '=========================================================================
		  PW_StaticText="Reading : Digital Film "+film.film_Type+chr(13)+ "File        : "+fname
		  PW_Progress=filenumber
		  
		  '=================================================================
		  'Pop up error window
		  name ="Film"
		  if film.bytes_P = false then
		    error="Bytes per Pixel"
		    Error_window(name,error,filenumber)
		  end
		  if film.film_D = false then
		    error="Film Date"
		    Error_window(name,error,filenumber)
		  end
		  if film.film_N = false then
		    error="Film Number"
		    Error_window(name,error,filenumber)
		  end
		  if film.film_T = false then
		    error="Film Type"
		    Error_window(name,error,filenumber)
		  end
		  if film.num_D = false then
		    error="Number of Dimensions"
		    Error_window(name,error,filenumber)
		  end
		  if film.num_R = false then
		    error="Number of Representation"
		    Error_window(name,error,filenumber)
		  end
		  if film.size_D1 = false then
		    error="Size of Dimension 1"
		    Error_window(name,error,filenumber)
		  end
		  if film.size_D2 = false then
		    error="Size of Dimension 2"
		    Error_window(name,error,filenumber)
		  end
		  if ubound(plan) >-1 then
		    if film.beam_D = false then
		      error="Beam Discription"
		      Error_window(name,error,filenumber)
		    end
		    if film.beam_n = false then
		      error="Beam Number"
		      Error_window(name,error,filenumber)
		    end
		    'if film.Plan_I = false then
		    'error="Plan ID"
		    'Error_window(name,error,filenumber)
		    'end
		  end
		  '=========================================================================
		  //now open the actual image
		  if film.size_D1 = true and film.size_D2 = true and film.Bytes_P= true then
		    f0=f0.parent.child(fname)
		    fsize=film.size_of_Dimension1*film.Size_of_Dimension2
		    redim film.pixel(fsize-1)
		    bs=f0.openasbinaryFile
		    bs.littleEndian=false
		    length=film.bytes_per_Pixel
		    if length=1 then
		      for i=0 to fsize-1  //user readbyte (8 bits) or readshort (16 bits)
		        film.pixel(i)=bs.ReadInt8
		      next
		    elseif length=2 then
		      for i=0 to fsize-1  //user readbyte (8 bits) or readshort (16 bits)
		        film.pixel(i)=bs.ReadInt16
		      next
		    end if
		    bs.close
		  end
		  '=====================================
		  'Save film data into rtog plan
		  if ubound(plan) >-1 then
		    num_plans = ubound(plan)
		    num_film = ubound(plan(num_plans).Film)+1
		    redim plan(num_plans).Film(num_film)
		    plan(num_plans).Film(num_film)=film
		  else
		    num_film = ubound(orphan_FIlm)+1
		    redim orphan_FIlm(num_film)
		    orphan_FIlm(num_film) = new rtoG_Digital_Film_Image
		    orphan_FIlm(num_film)=film
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_RTOG_Scan(filenumber as integer, image_type as string, f0 as folderItem, ts as textinputStream)
		  'Populate CT,MRI,US data
		  '========================================
		  Dim reading(1),fname,name,error as string
		  Dim bs as binaryStream
		  Dim fsize,length,i,num_scans as integer
		  '=================================================
		  fname=str(filenumber)
		  while len(fname)<4
		    fname="0"+fname
		  wend
		  fname="aapm"+fname
		  num_scans= ubound(me.Scan)+1
		  redim scan(num_scans)
		  scan(num_scans)=new RTOG_scan
		  '=========================================
		  'set flags to false
		  scan(num_scans).Bytes_P=false
		  scan(num_scans).CT_A=false
		  scan(num_scans).CT_O=false
		  scan(num_scans).CT_W=false
		  scan(num_scans).Grid_U_H=false
		  scan(num_scans).Grid_U_W=false
		  scan(num_scans).image_T=false
		  scan(num_scans).num_D=false
		  scan(num_scans).num_R=false
		  scan(num_scans).Image_T=false
		  scan(num_scans).size_D1=false
		  scan(num_scans).size_D2=false
		  scan(num_scans).slice_T=false
		  scan(num_scans).X_Off=false
		  scan(num_scans).Y_0ff=false
		  scan(num_scans).z_V=false
		  scan(num_scans).scan_t=false
		  '=================================
		  scan(num_scans).image_Type = image_type
		  scan(num_scans).image_T=true
		  scan(num_scans).File_num = filenumber
		  PW_StaticText="Reading : "+scan(num_scans).image_Type+chr(13)+ "File        : "+fname
		  PW_Progress=filenumber
		  
		  
		  '=================================
		  do
		    reading = ts.readline.split(":=")
		    if ubound(reading)>-1 then
		      
		      
		      
		      if Instr(reading(0),"CT OFFSET" )>0 then
		        me.scan(num_scans).ct_Offset = val(reading(1))
		        me.scan(num_scans).ct_O=true
		      end
		      
		      if Instr(reading(0),"Head in/out " )>0 then
		        me.scan(num_scans).Head_in_out = Trim(reading(1))
		      end
		      
		      if Instr(reading(0),"GRID 1 UNITS")>0  then
		        me.scan(num_scans).grid_Units_Width = val(reading(1))
		        me.scan(num_scans).grid_U_W=true
		      end
		      if Instr(reading(0),"GRID 2 UNITS")>0 then
		        me.scan(num_scans).grid_Units_Height = val(reading(1))
		        me.scan(num_scans).grid_U_H=true
		      end
		      if Instr(reading(0),"NUMBER REPRESENTATION")>0 then
		        me.scan(num_scans).num_Representation = trim(reading(1))
		        me.scan(num_scans).num_r=true
		      end
		      if Instr(reading(0),"BYTES PER PIXEL" )>0 then
		        me.scan(num_scans).Bytes_per_Pixel = val(reading(1))
		        me.scan(num_scans).bytes_P=true
		      end
		      if Instr(reading(0),"SCAN TYPE" )>0 then
		        me.scan(num_scans).SCan_type = TRIM(reading(1))
		        me.scan(num_scans).scan_t=true
		      end
		      if Instr(reading(0),"NUMBER OF DIMENSIONS")>0 then
		        me.scan(num_scans).num_Dimensions = val(reading(1))
		        me.scan(num_scans).num_d=true
		      end
		      if Instr(reading(0),"SIZE OF DIMENSION 1" )>0 then
		        me.scan(num_scans).size_of_Dimension1 = val(reading(1))
		        me.scan(num_scans).size_d1=true
		      end
		      if Instr(reading(0),"SIZE OF DIMENSION 2" )>0 then
		        me.scan(num_scans).size_of_Dimension2 = val(reading(1))
		        me.scan(num_scans).size_d2=true
		      end
		      if Instr(reading(0),"Z VALUE" )>0 then
		        me.scan(num_scans).z_Value = val(reading(1))
		        me.scan(num_scans).z_V=true
		      end
		      if Instr(reading(0),"X OFFSET")>0 then
		        me.scan(num_scans).x_offset = val(reading(1))
		        me.scan(num_scans).x_Off=true
		      end
		      if Instr(reading(0),"Y OFFSET")>0 then
		        me.scan(num_scans).y_offset = val(reading(1))
		        me.scan(num_scans).y_0ff=true
		      end
		      if Instr(reading(0),"CT-AIR")>0 then
		        me.scan(num_scans).ct_Air = val(reading(1))
		        me.scan(num_scans).ct_a=true
		      end
		      if Instr(reading(0),"CT-WATER")>0 then
		        me.scan(num_scans).ct_Water = val(reading(1))
		        me.scan(num_scans).cT_w=true
		      end
		      if Instr(reading(0),"SLICE THICKNESS")>0 then
		        me.scan(num_scans).slice_Thickness = val(reading(1))
		        me.scan(num_scans).slice_T=true
		      end
		    end
		  loop until ubound(reading) =-1
		  '=========================================
		  'Error Window popup
		  name ="Scan"
		  if scan(num_scans).Bytes_P = false then
		    error="Bytes per Pixel"
		    Error_window(name,error,filenumber)
		  end
		  if scan(num_scans).CT_A = false then
		    error="CT Air"
		    Error_window(name,error,filenumber)
		  end
		  if scan(num_scans).CT_O = false then
		    error="CT Offset"
		    Error_window(name,error,filenumber)
		  end
		  if scan(num_scans).CT_W = false then
		    error="CT Water"
		    Error_window(name,error,filenumber)
		  end
		  if scan(num_scans).Grid_U_H = false then
		    error="Grid Units 2"
		    Error_window(name,error,filenumber)
		  end
		  if scan(num_scans).grid_U_W = false then
		    error="Grid Units 1"
		    Error_window(name,error,filenumber)
		  end
		  if scan(num_scans).Image_T = false then
		    error="Image Type"
		    Error_window(name,error,filenumber)
		  end
		  if scan(num_scans).Num_D = false then
		    error="Number of Dimensions"
		    Error_window(name,error,filenumber)
		  end
		  if scan(num_scans).Num_R = false then
		    error="Number Representation"
		    Error_window(name,error,filenumber)
		  end
		  if scan(num_scans).size_D1 = false then
		    error="Size of Dimension 1"
		    Error_window(name,error,filenumber)
		  end
		  if scan(num_scans).size_D2 = false then
		    error="Size of Dimension 2"
		    Error_window(name,error,filenumber)
		  end
		  if scan(num_scans).Slice_T = false then
		    error="Slice Thickness"
		    Error_window(name,error,filenumber)
		  end
		  if scan(num_scans).X_Off = false then
		    error="X Offset"
		    Error_window(name,error,filenumber)
		  end
		  if scan(num_scans).y_0ff = false then
		    error="Y Offset"
		    Error_window(name,error,filenumber)
		  end
		  if scan(num_scans).Z_V = false then
		    error="Z Value"
		    Error_window(name,error,filenumber)
		  end
		  if scan(num_scans).scan_t = false then
		    error="Scan Type"
		    Error_window(name,error,filenumber)
		  end
		  '==========================================
		  //now open the actual image
		  
		  if scan(num_scans).Size_D1= true and scan(num_scans).Size_D2 =true and scan(num_scans).bytes_P= true then
		    f0=f0.parent.child(fname)
		    fsize=me.scan(num_scans).size_of_Dimension1*me.scan(num_scans).size_of_Dimension2
		    redim me.scan(num_scans).voxel(fsize)
		    bs=f0.openasbinaryFile
		    bs.littleEndian=false
		    length=me.scan(num_scans).bytes_per_Pixel
		    if length=1 then
		      for i=0 to fsize-1  //user readbyte (8 bits) or readshort (16 bits)
		        me.scan(num_scans).voxel(i)=bs.ReadInt8
		      next
		    elseif length=2 then
		      for i=0 to fsize-1  //user readbyte (8 bits) or readshort (16 bits)
		        me.scan(num_scans).voxel(i)=bs.ReadInt16
		      next
		    end if
		    bs.close
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_RTOG_Structures(filenumber As integer, f0 as folderItem, ts as textinputStream)
		  '==========================================
		  Dim reading(1),  fname, tmpstr, field ,test,name,error as string
		  Dim ts_struc as textInputStream
		  Dim scan_num, segment_num ,j ,i ,k,num_points, num_struc,num ,pp as integer
		  Dim p as RTOG_Structure_Point
		  Dim S as RTOG_Structure_Segment
		  Dim file as RTOG_Structure_Slice
		  '==================================================
		  num_struc=ubound(me.Structures.Structures)+1
		  redim Structures.Structures(num_struc)
		  Structures.Structures(num_struc) = new RTOG_Structure_Class
		  Structures.Structures(num_struc).file_Num=filenumber
		  '========================================
		  'Set flags to false
		  Structures.Structures(num_struc).Number_R=false
		  Structures.Structures(num_struc).Num_S=false
		  Structures.Structures(num_struc).Structure_F=false
		  Structures.Structures(num_struc).Structure_N=false
		  '=========================================
		  'pop variables from 0000 file
		  do
		    reading = ts.readline.split(":=")
		    if ubound(reading) >-1 then
		      if Instr(reading(0),"STRUCTURE NAME" )>0 then
		        me.Structures.Structures(num_struc).Structure_name = trim(reading(1))
		        me.Structures.Structures(num_struc).structure_n=true
		      end
		      if Instr(reading(0),"NUMBER REPRESENTATION" )>0 then
		        me.Structures.Structures(num_struc).number_Rep= trim(reading(1))
		        me.Structures.Structures(num_struc).number_R=true
		      end
		      if Instr(reading(0),"STRUCTURE FORMAT" )>0 then
		        me.Structures.Structures(num_struc).structure_format = trim(reading(1))
		        me.Structures.Structures(num_struc).structure_F=true
		      end
		      if Instr(reading(0),"NUMBER OF SCANS" )>0 then
		        me.Structures.Structures(num_struc).num_of_scans = val(trim(reading(1)))
		        me.Structures.Structures(num_struc).num_S=true
		      end
		    end
		  loop until ubound(reading) =-1
		  '==========================================
		  fname=str(filenumber)//Get file name
		  while len(fname)<4
		    fname="0"+fname
		  wend
		  fname="aapm"+fname
		  PW_StaticText="Reading : Structure "+Structures.Structures(num_struc).Structure_name+chr(13)+ "File        : "+fname
		  PW_Progress=filenumber
		  
		  '==========================================
		  'error window popup
		  name="Structure"
		  
		  if Structures.Structures(num_struc).Number_R = false then
		    error="Number Representation"
		    Error_window(name,error,filenumber)
		  end
		  if Structures.Structures(num_struc).Num_S = false then
		    error="Number of Scans"
		    Error_window(name,error,filenumber)
		  end
		  if Structures.Structures(num_struc).Structure_F = false then
		    error="Structure Format"
		    Error_window(name,error,filenumber)
		  end
		  if Structures.Structures(num_struc).Structure_N = false then
		    error="Structure Name"
		    Error_window(name,error,filenumber)
		  end
		  '==========================================
		  //now open the actual structure file
		  f0=f0.parent.child(fname)//open file
		  ts_struc=f0.openAsTextFile
		  tmpstr=ts_struc.readline
		  num=val(NthField(tmpstr,"""",3))// Number of Structures.Structures
		  redim me.Structures.Structures(num_struc).structure_Data(num-1)
		  for i = 1 to num//Get all points per structure
		    tmpstr=ts_struc.readline
		    scan_num=Val(NthField(tmpstr,"""",3))
		    tmpstr=ts_struc.readline
		    segment_num=Val(NthField(tmpstr,"""",3))
		    file = new RTOG_Structure_Slice
		    
		    if segment_num >0 then //if we have segmnets
		      redim file.Segments(segment_num-1)
		      for j=1 to segment_num // Get the points per scan number per segment
		        tmpstr=ts_struc.readline
		        num_points=Val(NthField(tmpstr,"""",3))
		        S = new RTOG_Structure_Segment
		        redim s.Points(num_points-1)
		        for k = 1 to num_points// read points per segment
		          tmpstr=ts_struc.readline
		          p = new RTOG_Structure_Point
		          test=(NthField(tmpstr,",",1))'only here because of bad files which put zeros infront of values
		          if asc(test)= 0 then'only here because of bad files which put zeros infront of values
		            p.x = val(right(test,6))'only here because of bad files which put zeros infront of values
		          else
		            p.X=Val(NthField(tmpstr,",",1))
		          end
		          p.y=Val(NthField(tmpstr,",",2))
		          p.z=Val(NthField(tmpstr,",",3))
		          if k=1 then
		            file.Z=Val(NthField(tmpstr,",",3))
		          end
		          s.Points(k-1)=p
		        next // end read points per segment
		        file.segments(j-1)=s
		      next//
		    else
		      redim file.segments(-1)
		    end // end segments
		    me.Structures.Structures(num_struc).Structure_Data(i-1)=file
		    me.Structures.Structures(num_struc).structure_Data(i-1).scan_Num=scan_num
		    me.Structures.Structures(num_struc).structure_Data(i-1).Z=me.Scan(scan_num-1).Z_Value
		  next// end get all points
		  ts_struc.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Write_McGill() As boolean
		  '===========Write McGill format to disk=================
		  Dim f ,g as FolderItem
		  Dim fname,line,temp,temp2 as string
		  Dim i ,j ,k as integer
		  Dim ct as boolean
		  Dim d as date
		  Dim ts as TextOutputStream
		  '======================================================
		  fname=Patient_Name+String_Separate+Patient_Surname+String_Separate+Patient_ID
		  
		  PW_Title="Saving McGill files..."
		  PW_StaticText=fname
		  PW_Show=true
		  
		  f= gPref.mcgillfi
		  f=f.child(fname)
		  f.createAsFolder
		  
		  
		  '========Creat Scan directory
		  if UBound(Scan)>-1 Then
		    if Scan(0).Scan_date="" Then
		      Scan(0).Scan_date=Date_Created
		    end
		    temp=scan(0).Image_Modality+String_Separate+scan(0).Scan_date+String_Separate+StudyID+String_Separate+SeriesNumber
		    f=f.child(temp)
		  else
		    temp="None"
		    f=f.child(temp)
		  end
		  
		  if f.Exists=False Then
		    f.createAsFolder
		  end
		  
		  path=new FolderItem
		  path=f
		  
		  '========Creat McGill RT directory
		  if UBound(Scan)>-1 Then
		    f=f.child("McGill_RT")
		    if f.Exists=False Then
		      f.createAsFolder
		    end
		    f=f.Child("RT.dir")
		    if f.Exists Then
		      f.Delete
		    end
		    ts=f.createTextFile
		    write_McGill_RT(ts)
		    ts.Close
		    f=f.Parent
		    
		    PW_Progress_Max=ubound(scan)+1
		    for i=0 to ubound(scan)
		      write_McGill_CT_Scan(f,i)
		    next
		    
		    PW_Progress_Max=ubound(Structures.Structures)+1
		    for i=0 to ubound(Structures.Structures)
		      write_mcGill_Structures(Structures.Structures(i),f,i)
		    next
		    
		  end
		  
		  
		  
		  for i=0 to ubound(Plan)
		    Plan(i).Write_McGill_Plan(path)
		  next
		  
		  PW_Show=false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_McGill_CT_Scan(f as folderItem, index as integer)
		  '===========Write McGill CT scans===============
		  Dim fname ,line as string
		  Dim fsize ,length,i as integer
		  Dim bs as binaryStream
		  '===========================================
		  fname=str(index+1)
		  while len(fname)<3
		    fname="0"+fname
		  wend
		  fname=fname+".img"
		  '======================Progress Window================
		  PW_StaticText="Writing   : "+Scan(0).Image_Modality+chr(13)+     "File         : "+fname
		  PW_Progress=index+1
		  
		  '======================Write Z value and Pixel values========
		  f=f.child(fname)
		  fsize=scan(0).size_of_Dimension1*scan(0).size_of_Dimension2
		  bs=f.createBinaryFile("")
		  if bs=nil Then
		    Return
		  end
		  bs.littleEndian=gPref.endian
		  length = scan(0).bytes_per_Pixel
		  bs.writedouble Scan(index).z_value   //as a double value  //fixed by FD
		  if length=1 then
		    for i=0 to fsize-1  //user readbyte (8 bits) or readshort (16 bits)
		      bs.WriteInt8  Scan(index).voxel(i)
		    next
		  elseif length=2 then
		    for i=0 to fsize-1  //user readbyte (8 bits) or readshort (16 bits)
		      bs.WriteInt16  Scan(index).voxel(i)
		    next
		  end if
		  bs.WriteInt16(LenB(Scan(index).DICOM_SOP_Instance_UID))
		  bs.Write(Scan(index).DICOM_SOP_Instance_UID)
		  bs.close
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_McGill_RT(ts as textoutputStream)
		  spaces(ts,"PATIENT FORENAME",31,patient_Name)
		  spaces(ts,"PATIENT SURNAME",31,Patient_Surname)
		  spaces(ts,"PATIENT ID #",31,Patient_ID)
		  spaces(ts,"Patient Position", 31, PatientPosition)
		  spaces(ts,"IMAGE MODALITY",31,scan(0).Image_Modality)
		  spaces(ts,"IMAGE TYPE",31,scan(0).image_Type)
		  spaces(ts,"SCAN TYPE",31,scan(0).scan_Type)
		  spaces(ts,"CT OFFSET", 31,Str(scan(0).cT_Offset,"-#"))
		  spaces(ts,"GRID 1 UNITS", 31,Str(scan(0).grid_Units_Width,"-#.#####"))
		  spaces(ts,"GRID 2 UNITS", 31,Str(scan(0).Grid_Units_Height,"-#.#####"))
		  spaces(ts,"NUMBER REPRESENTATION", 31, scan(0).num_Representation)
		  spaces(ts,"BYTES PER PIXEL", 31, Str(scan(0).bytes_per_Pixel,"#"))
		  spaces(ts,"NUMBER OF DIMENSIONS", 31, Str(scan(0).num_Dimensions,"#"))
		  spaces(ts,"SIZE OF DIMENSION 1", 31, Str(scan(0).size_of_Dimension1,"#"))
		  spaces(ts,"SIZE OF DIMENSION 2", 31, Format(scan(0).size_of_Dimension2,"#"))
		  spaces(ts,"X OFFSET", 31, Str(scan(0).x_Offset,"-#.#####"))
		  spaces(ts,"Y OFFSET", 31, Str(scan(0).Y_Offset,"-#.#####"))
		  spaces(ts,"CT-AIR", 31, Str(scan(0).ct_Air,"-#"))
		  spaces(ts,"CT-WATER", 31, Str(scan(0).ct_water,"-#"))
		  spaces(ts,"SLICE THICKNESS", 31, Str(scan(0).slice_Thickness,"#.#####"))
		  spaces(ts,"Date", 31, scan(0).Scan_date)
		  spaces(ts,"WINDOW LEVEL", 31, Str(scan(0).WinLevel,"#"))
		  spaces(ts,"WINDOW WIDTH", 31, Str(scan(0).WinWidth,"#"))
		  
		  
		  // Write DICOM values
		  spaces(ts,"STUDYInstanceUID", 31, StudyInstanceUID)
		  spaces(ts,"SeriesInstanceUID", 31, SeriesInstanceUID)
		  spaces(ts,"FrameOfReferenceUID", 31, FrameOfReferenceUID)
		  spaces(ts,"STUDYID", 31, StudyID)
		  spaces(ts,"ReferencedStructureSetSequence", 31, ReferencedStructureSetSequence)
		  spaces(ts,"SeriesNumber", 31, SeriesNumber)
		  spaces(ts,"DICOMStudyDate", 31, DICOM_Study_Date)
		  spaces(ts,"DICOMStudyTime", 31, DICOM_Study_Time)
		  spaces(ts,"DICOMStudyDescription", 31, DICOM_Study_Description)
		  spaces(ts,"DICOMSex", 31, DICOM_Sex)
		  spaces(ts,"DICOMAge", 31, DICOM_Age)
		  spaces(ts,"DICOMBirthday", 31, DICOM_Birthdate)
		  spaces(ts,"DICOMPhysician", 31, DICOM_Physician)
		  spaces(ts,"DICOMPatientPohysician", 31, DICOM_Physician)
		  spaces(ts,"DICOM_ImageOrientationPatient", 31, DICOM_ImageOrientationPatient)
		  spaces(ts,"SeriesDescription", 31, seriesdescription)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_McGill_Structures(structures as rtoG_Structure_class, f as folderItem, index as integer)
		  '====Write the strucutre files in McGill RT format
		  Dim fname , line,a,b,c as string
		  Dim ts as textoutputStream
		  Dim i,j,k ,l,num_points as integer
		  '=====================
		  
		  fname=str(index+1)
		  while len(fname)<3
		    fname="0"+fname
		  wend
		  fname=fname+".struct"
		  PW_StaticText="Writing   : "+structures.Structure_Name+chr(13)+     "File        : "+fname
		  PW_Progress=index+1
		  
		  
		  ts=f.child(fname).createTextFile
		  if ts=nil Then
		    Return
		  end
		  
		  spaces(ts,"STRUCTURE NAME", 31, (structures.structure_Name))
		  spaces(ts,"STRUCTURE ROINUMBER", 31, str(structures.ROI_Number))
		  spaces(ts,"STRUCTURE TYPE", 31, (structures.StructureType))
		  spaces(ts,"STRUCTURE eDENSITY", 31, str(structures.ElectronDensity))
		  if structures.ElectronDensityOverride Then
		    spaces(ts,"STRUCTURE DENSITY", 31, "YES")
		  else
		    spaces(ts,"STRUCTURE DENSITY", 31, "NO")
		  end
		  
		  
		  
		  spaces(ts,"STRUCTURE COLOUR RGB", 31, str(structures.scolor.Red)+"/"+str(structures.scolor.Green)+"/"+str(structures.scolor.Blue))
		  spaces(ts,"NUMBER OF SCANS", 31, str(structures.num_of_Scans))
		  ts.writeline ""
		  
		  line = """NUMBER OF LEVELS""       " +str(structures.num_of_Scans)
		  ts.writeline line
		  for i = 0 to (structures.Num_of_Scans-1)
		    line = "Image Number and Z Value : " +str(i+1)+" , " +Format(structures.Structure_Data(i).Z,"-#.####")
		    ts.writeline line
		    line = """# OF SEGMENTS"" " +str(Ubound(structures.structure_Data(i).Segments)+1)
		    ts.writeline line
		    if ubound(structures.Structure_Data(i).segments) >-1 then
		      for j =0 to Ubound(structures.structure_Data(i).Segments) // for each segment
		        num_points=Ubound(structures.structure_Data(i).Segments(j).points)
		        if num_points>=0 then
		          if structures.structure_Data(i).Segments(j).points(0).x<>structures.structure_Data(i).Segments(j).points(Ubound(structures.structure_Data(i).Segments(j).points)).x or structures.structure_Data(i).Segments(j).points(0).y<>structures.structure_Data(i).Segments(j).points(Ubound(structures.structure_Data(i).Segments(j).points)).y then
		            structures.structure_Data(i).Segments(j).points.append structures.structure_Data(i).Segments(j).points(0)
		          end
		        end
		        line = """# OF POINTS""  " +str(Ubound(structures.structure_Data(i).Segments(j).points)+1)
		        ts.writeline line
		        for k=0 to  Ubound(structures.structure_Data(i).Segments(j).points)// for each point in each segment
		          a=Format(structures.structure_Data(i).Segments(j).points(k).x,"-#.####")+","
		          b=Format(structures.structure_Data(i).Segments(j).points(k).y,"-#.####")+","
		          c=Format(structures.structure_Data(i).z,"-#.####")
		          while len(a)<8
		            a=chrB(32)+a
		          wend
		          while len(b)<8
		            b=chrB(32)+b
		          wend
		          while len(c)<8
		            c=chrB(32)+c
		          wend
		          line = a+b+c
		          ts.writeline line
		        next
		      next
		    end
		  next
		  ts.close
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Write_McGill_yaxis() As boolean
		  '===========Write McGill format to disk=================
		  Dim f ,g as FolderItem
		  Dim fname,line,temp,temp2 as string
		  Dim i ,j ,k as integer
		  Dim ct as boolean
		  Dim d as date
		  Dim ts as TextOutputStream
		  '======================================================
		  fname=Patient_Name+"_"+Patient_ID
		  PW_Title="Saving McGill files..."
		  PW_StaticText=fname
		  PW_Show=true
		  
		  f= gPref.mcgillfi
		  f=f.child(fname)
		  f.createAsFolder
		  
		  
		  '========Creat Scan directory
		  f=gRTOG.path
		  
		  '========Creat McGill RT directory
		  if UBound(Scan)>-1 Then
		    f=f.child("McGill_RT")
		    f=f.Child("RT.dir")
		    if f.Exists Then
		      f.Delete
		    end
		    ts=f.createTextFile
		    write_McGill_RT(ts)
		    ts.Close
		    f=f.Parent
		    
		    PW_Progress_Max=ubound(scan)+1
		    'for i=0 to ubound(scan)
		    ''write_McGill_CT_Scan(scan(i),f,i)
		    'next
		    
		    PW_Progress_Max=ubound(Structures.Structures)+1
		    for i=0 to ubound(Structures.Structures)
		      write_mcGill_Structures(Structures.Structures(i),f,i)
		    next
		    
		  end
		  
		  for i=0 to ubound(Plan)
		    
		    f=gRTOG.Plan(i).Path
		    Plan(i).Write_McGill_Beam
		    for k=0 to UBound(Plan(i).Dose)
		      Plan(i).Write_McGill_Dose(k)
		    next
		  next
		  
		  
		  
		  
		  
		  PW_Show=false
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		changed As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Date_Created As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DICOM_Age As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DICOM_Birthdate As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DICOM_ImageOrientationPatient As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DICOM_Physician As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DICOM_Sex As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DICOM_Study_Date As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DICOM_Study_Description As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DICOM_Study_Time As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DoseNoAtIso As single
	#tag EndProperty

	#tag Property, Flags = &h0
		DosePrescription As single
	#tag EndProperty

	#tag Property, Flags = &h0
		FrameOfReferenceUID As String = "1.2.840.113704.1.111.8064.1334342892.4"
	#tag EndProperty

	#tag Property, Flags = &h0
		Normalization As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Orphan_FIlm(-1) As RTOG_Digital_Film_Image
	#tag EndProperty

	#tag Property, Flags = &h0
		path As folderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			HFS
		#tag EndNote
		PatientPosition As String = "HFS"
	#tag EndProperty

	#tag Property, Flags = &h0
		Patient_ID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Patient_Name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Patient_Surname As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Plan(-1) As RTOG_Plan
	#tag EndProperty

	#tag Property, Flags = &h0
		Points(-1) As Class_Points
	#tag EndProperty

	#tag Property, Flags = &h0
		Profiles As Class_Profiles_All
	#tag EndProperty

	#tag Property, Flags = &h0
		ReferencedStructureSetSequence As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Scan(-1) As RTOG_Scan
	#tag EndProperty

	#tag Property, Flags = &h0
		seriesdescription As string
	#tag EndProperty

	#tag Property, Flags = &h0
		SeriesInstanceUID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SeriesNumber As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Structures As RTOG_Structure
	#tag EndProperty

	#tag Property, Flags = &h0
		StudyID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StudyInstanceUID As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="changed"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Date_Created"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_Age"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_Birthdate"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_ImageOrientationPatient"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_Physician"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_Sex"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_Study_Date"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_Study_Description"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_Study_Time"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoseNoAtIso"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DosePrescription"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameOfReferenceUID"
			Group="Behavior"
			InitialValue="1.2.840.113704.1.111.8064.1334342892.4"
			Type="String"
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
			Name="Normalization"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PatientPosition"
			Group="Behavior"
			InitialValue="HFS"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Patient_ID"
			Group="Behavior"
			InitialValue="0"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Patient_Name"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Patient_Surname"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Priority"
			Visible=true
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReferencedStructureSetSequence"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="seriesdescription"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SeriesInstanceUID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SeriesNumber"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StackSize"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StudyID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StudyInstanceUID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
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
