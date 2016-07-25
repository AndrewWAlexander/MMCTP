#tag Class
Protected Class Thread_DICOM_Object
Inherits Thread
	#tag Event
		Sub Run()
		  if TaskNum=1 Then
		    DICOM_Import
		  else
		    DICOM_Transfer
		  end
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub DICOM_Convert_Anonymize()
		  //---------------------------------------------------------------------------------------------------------------------
		  //
		  //
		  //---------------------------------------------------------------------------------------------------------------------
		  Dim k as Integer
		  
		  'for k=0 to UBound(RT_Images)
		  'RT_Images(k).BitsAllocated=gPref.DICOM_Bytes
		  'RT_Images(k).BitsStored=gPref.DICOM_Bytes
		  'RT_Images(k).highbit=gPref.DICOM_Bytes-1
		  'RT_Images(k).Manufacturer=gPref.Manufacturer
		  'RT_Images(k).SoftwareVersions=gPref.SoftwareVersion
		  'RT_Images(k).StudyID=sid
		  'RT_Images(k).SeriesDescription=seriesdescription
		  'RT_Images(k).StudyDescription=sdescription
		  'RT_Images(k).DerivationDescription=deridescription
		  'RT_Images(k).FrameOfReferenceUID=frameofreferenceUID
		  'Next
		  
		  'for k=0 to UBound(RT_Structures)
		  'RT_Structures(k).Manufacturer=gPref.Manufacturer
		  'RT_Structures(k).SoftwareVersion=gPref.SoftwareVersion
		  'RT_Structures(k).StudyID=sid
		  'RT_Structures(k).SeriesDescription=seriesdescription
		  'RT_Structures(k).StudyDescription=sdescription
		  '//RT_Structures(k).SeriesInstanceUID=RT_Structures(k).SOPInstanceUID+".1"
		  'Next
		  
		  'for k=0 to UBound(RT_Doses)
		  ''RT_Doses(k).Manufacturer=gPref.Manufacturer
		  ''RT_Doses(k).Software_Version=gPref.SoftwareVersion
		  ''RT_Doses(k).StudyID=sid
		  ''//RT_Doses(k).SeriesDescription=seriesdescription
		  ''RT_Doses(k).StudyDescription=sdescription
		  ''RT_Doses(k).SeriesInstanceUID=RT_Doses(k).SOPInstanceUID+".1"
		  'Next
		  
		  for k=0 to UBound(RT_Plan)
		    RT_Plan(k).PatientID=""
		    RT_Plan(k).PatientName=""
		    RT_Plan(k).Sex=""
		    RT_Plan(k).PhysicianofRecord=""
		    RT_Plan(k).Age=""
		    RT_Plan(k).Birthdate=""
		    RT_Plan(k).OperatorsName=""
		    RT_Plan(k).ReferringPhysicianName=""
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DICOM_Convert_Tomo()
		  //---------------------------------------------------------------------------------------------------------------------
		  //
		  //
		  //---------------------------------------------------------------------------------------------------------------------
		  Dim fname,sid,sdescription,seriesdescription,deridescription,modelname,frameofreferenceUID as String
		  Dim k as Integer
		  //---------------------------------------------------------------------------------------------------------------------
		  
		  gPref.SoftwareVersion="HiArt4_0_3_Apps 4.0.3.80"
		  sid="tomo"
		  sdescription="TomoTherapy Patient Disease"
		  seriesdescription="kVCT Image Set"
		  deridescription="Resampled kVCT data set"
		  modelname="Hi-Art"
		  frameofreferenceUID="1.2.840.113704.1.111.1184.1358534854.4"
		  
		  for k=0 to UBound(RT_Images)
		    RT_Images(k).BitsAllocated=gPref.DICOM_Bytes
		    RT_Images(k).BitsStored=gPref.DICOM_Bytes
		    RT_Images(k).highbit=gPref.DICOM_Bytes-1
		    RT_Images(k).Manufacturer=gPref.Manufacturer
		    RT_Images(k).SoftwareVersions=gPref.SoftwareVersion
		    RT_Images(k).StudyID=sid
		    RT_Images(k).SeriesDescription=seriesdescription
		    RT_Images(k).StudyDescription=sdescription
		    RT_Images(k).DerivationDescription=deridescription
		    RT_Images(k).FrameOfReferenceUID=frameofreferenceUID
		  Next
		  
		  for k=0 to UBound(RT_Structures)
		    RT_Structures(k).Manufacturer=gPref.Manufacturer
		    RT_Structures(k).SoftwareVersion=gPref.SoftwareVersion
		    RT_Structures(k).StudyID=sid
		    RT_Structures(k).SeriesDescription=seriesdescription
		    RT_Structures(k).StudyDescription=sdescription
		    //RT_Structures(k).SeriesInstanceUID=RT_Structures(k).SOPInstanceUID+".1"
		  Next
		  
		  for k=0 to UBound(RT_Doses)
		    'RT_Doses(k).Manufacturer=gPref.Manufacturer
		    'RT_Doses(k).Software_Version=gPref.SoftwareVersion
		    'RT_Doses(k).StudyID=sid
		    '//RT_Doses(k).SeriesDescription=seriesdescription
		    'RT_Doses(k).StudyDescription=sdescription
		    'RT_Doses(k).SeriesInstanceUID=RT_Doses(k).SOPInstanceUID+".1"
		  Next
		  
		  for k=0 to UBound(RT_Plan)
		    RT_Plan(k).Manufacturer=gPref.Manufacturer
		    RT_Plan(k).SoftwareVersions=gPref.SoftwareVersion
		    RT_Plan(k).StudyID=sid
		    RT_Plan(k).SeriesDescription=seriesdescription
		    RT_Plan(k).StudyDescription=sdescription
		    RT_Plan(k).Manufacturer_Model_Name=modelname
		    RT_Plan(k).FrameOfReferenceUID=frameofreferenceUID
		    //Plan(k).SeriesInstanceUID=Plan(k).SOPInstanceUID+".1"
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DICOM_Import()
		  //----------------------------------------------
		  // Import One DICOM set based on ID and Name 
		  // and DICOM series
		  //
		  //----------------------------------------------
		  Dim k,z as Integer
		  Dim found as Boolean
		  Dim McGillRT as Thread_RTOG
		  Dim DICOM_Series(-1),DICOM_Study(-1) as String
		  //----------------------------------------------
		  
		  // Read DICOM files
		  
		  Load_All_DICOM_files(gPref.DICOMfi,Import_ID,Import_Name)
		  
		  
		  for z=0 to UBound(RT_Images)
		    found=False
		    for k=0 to UBound(DICOM_Series)
		      if DICOM_Series(k)=RT_Images(z).SeriesInstanceUID Then
		        found=True
		      end
		    next
		    
		    if found=False Then
		      DICOM_Series.Append RT_Images(z).SeriesInstanceUID
		      DICOM_Study.Append RT_Images(z).StudyInstanceUID
		    end
		  next
		  
		  
		  For Z=0 To Ubound(DICOM_Series)
		    McGillRT=nil
		    McGillRT= new Thread_RTOG
		    McGillRT.COnvert_DICOM2McGillRT(self,DICOM_Study(z),DICOM_Series(z))
		    found=McGillRT.Write_McGill
		    Window_Transfer.UpdateMcGill=True
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DICOM_Transfer()
		  //----------------------------------------------
		  // Import One DICOM set based on ID and Name 
		  // and DICOM series
		  //
		  //----------------------------------------------
		  
		  // Read DICOM files
		  Load_All_DICOM_files(gPref.DICOMfi,Import_ID,Import_Name)
		  
		  
		  Get_Dir
		  
		  if MainFolder=Nil Then
		    Return
		  end
		  
		  if gPref.DICOM_Convert_Tomo Then
		    DICOM_Convert_Tomo
		  end
		  
		  if gPref.DICOM_Convert_Anonymize Then
		    DICOM_Convert_Anonymize
		  end
		  
		  
		  Write
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Get_Dir()
		  dim dlg as new SelectFolderDialog
		  
		  dlg.ActionButtonCaption = "Select"
		  dlg.InitialDirectory=SpecialFolder.Desktop
		  dlg.promptText="Choose a folder name and location"
		  dlg.Title="DICOM export folder"
		  MainFolder=dlg.ShowModal()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Load_All_DICOM_files(ffolder as folderitem,  idstr as String, Pname as String)
		  // -------DICOM Reader-----------
		  //
		  //This method reads DICOM data into
		  // standard DICOM classes
		  //
		  //-------------------------------
		  Dim k as Integer
		  Dim f,g as FolderItem
		  Dim file_dicom as String
		  Dim mm as Boolean
		  '============================
		  
		  PW_Title="Reading DICOM files"
		  PW_Show=true
		  
		  f = ffolder
		  
		  // ============Start Reading all DICOM files
		  PW_Progress_Max=f.Count
		  for k=1 to f.count
		    g=f.Item(k)
		    PW_Progress = k+1
		    PW_StaticText="Reading "+g.Name
		    
		    
		    if g.Directory=False and g.Visible Then
		      //if right(g.name,4)=".dcm" then
		      if File=nil Then
		        file=new Class_DICOM_File
		      end
		      
		      mm=file.Load_One_DICOM_file(g)
		      file.Read_names //Found out if the file is the one we want
		      
		      file_dicom=file.p_id //PatientID
		      
		      if idstr=file_dicom then
		        Read_File
		      end if
		    end
		  next k
		  
		  PW_Show=false 
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_Dictionary()
		  Dim f as FolderItem
		  Dim inp as TextInputStream
		  Dim line as String
		  Dim i as Integer
		  
		  f=gPref.Config_fi
		  f = f.Child("DICOM-dict.txt")
		  if f <> nil and f.exists then
		    inp = f.OpenAsTextFile
		    for i = 0 to 1719
		      line = inp.ReadLine
		      dictionary(i, 0) = NthField(line, chr(34), 2)    // group and element
		      dictionary(i, 1) = NthField(line, chr(34), 6)    // VR
		      dictionary(i, 2) = NthField(line, chr(34), 12)  // Info
		      dictionary(i, 3) = NthField(line, chr(34), 4)    // Supplement
		    next
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Read_Doses() As Boolean
		  //----------------------------------------
		  // Read in DICOM RTDOSE file
		  //
		  //----------------------------------------
		  Dim i,k,pos,vv as Integer
		  Dim found,signed as Boolean
		  Dim d_value as Double
		  Dim RT_Dose as Class_DICOM_RTDose
		  Dim ss as Class_DICOM_RTDose_RTPlanSequence
		  Dim rf as Class_DICOM_ReferencedFractionGroupSequence
		  Dim RBS as Class_DICOM_ReferencedBeamSequence
		  Dim rds as Class_DICOM_Plan_ReferencedDoseSequence
		  Dim ssq as Class_DICOM_RTDose_StructureSetSequence
		  //==============================
		  
		  found=False
		  for i=0 to UBound(file.Elements) // look for DOSE .dcm files
		    if file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0060" then
		      if InStr(file.Elements(i).value,"DOSE")>0 or InStr(file.Elements(i).value,"RTDOSE")>0then
		        found=true
		        Exit
		      end if
		    end if
		  next
		  
		  if found then // if it is a DOSE file
		    RT_Dose=new Class_DICOM_RTDose
		    RT_Doses.Append RT_Dose
		  else
		    Return False
		  end
		  
		  for i=0 to UBound(file.Elements)
		    if file.Elements(i).tag_a="300C" and file.Elements(i).tag_b="0002"  then // Referenced RTP Plan Sequence
		      for i=i to UBound(file.Elements)
		        if file.Elements(i).value="END OF SEQUENCE" and file.Elements(i).VM=1  Then
		          exit
		        elseif file.Elements(i).value="New Item"  and file.Elements(i).VM=1 Then
		          ss=new Class_DICOM_RTDose_RTPlanSequence
		          RT_Dose.ReferencedRTPSequence.append ss
		        elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1155"  then
		          ss.ReferencedSOPInstanceUID = file.Elements(i).value // Plan filename (DICOM_ID)
		        elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1150"  then
		          ss.ReferencedSOPClassUID = file.Elements(i).value // Plan
		          
		        elseif file.Elements(i).tag_a="300C" and file.Elements(i).tag_b="0020"  then // Referenced Fraction Group Sequence
		           rf=new Class_DICOM_ReferencedFractionGroupSequence
		          ss.ReferencedFractionGroupSequence=rf
		          for i=i to UBound(file.Elements)
		            if file.Elements(i).value="END OF SEQUENCE" and file.Elements(i).VM=2  Then
		              exit
		              
		            elseif file.Elements(i).tag_a="300C" and file.Elements(i).tag_b="0022"  then
		              rf.ReferencedFractionGroupNumber =val( file.Elements(i).value) // Plan
		              
		            elseif file.Elements(i).tag_a="300C" and file.Elements(i).tag_b="0004"  then // Referenced Beam Sequence
		              rbs=new Class_DICOM_ReferencedBeamSequence
		              ss.ReferencedFractionGroupSequence.ReferencedBeamSequence=RBS
		              for i=i to UBound(file.Elements)
		                if file.Elements(i).value="END OF SEQUENCE" and file.Elements(i).VM=3  Then
		                  exit
		                elseif file.Elements(i).tag_a="300C" and file.Elements(i).tag_b="0006"  then
		                  RBS.Referencedbeamnumber =val( file.Elements(i).value) // Plan filename (DICOM_ID)
		                end
		              next
		            end
		          next
		        end
		      next
		      
		    elseif file.Elements(i).tag_a="300C" and file.Elements(i).tag_b="0060"  then // Referenced Structure Set Sequence
		      for i=i to UBound(file.Elements)
		        if file.Elements(i).value="END OF SEQUENCE" and file.Elements(i).VM=1  Then
		          exit
		        elseif file.Elements(i).value="New Item"  and file.Elements(i).VM=1 Then
		          ssq=new Class_DICOM_RTDose_StructureSetSequence
		          RT_Dose.ReferencedStructureSetSeq.append ssq
		        elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1155"  then
		          ssq.ReferencedSOPInstanceUID = file.Elements(i).value // Plan filename (DICOM_ID)
		        elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1150"  then
		          ssq.ReferencedSOPClassUID = file.Elements(i).value // Plan
		        end
		      next
		      
		    ElseIf file.Elements(i).tag_a="0002" and file.Elements(i).tag_b="0003"  then // DICOM_ID (file name)
		      
		    elseif file.Elements(i).tag_a="0002" and file.Elements(i).tag_b="0020"  then
		      RT_Dose.PatientOrientation=Trim(file.Elements(i).value) // Patient Orientation
		      
		    elseif file.Elements(i).tag_a="0002" and file.Elements(i).tag_b="0037"  then
		      RT_Dose.FrameOfReferenceUID=Trim(file.Elements(i).value) //Frame of reference UID
		      
		    elseif file.Elements(i).tag_a="0002" and file.Elements(i).tag_b="0032"  then
		      RT_Dose.PatientOrientation=Trim(file.Elements(i).value) // ImagePositionPatient
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0008"  then
		      RT_Dose.ImageType=trim(file.Elements(i).value) // Creation Date
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0012"  then
		      RT_Dose.InstanceCreationDate=trim(file.Elements(i).value) // Creation Date
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0013"  then
		      RT_Dose.InstanceCreationTime=trim(file.Elements(i).value) // Creation time
		      
		    ElseIf file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0016"  then // SOP class UID
		      RT_Dose.SOPClassUID= trim(file.Elements(i).value)
		      
		    ElseIf file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0018"  then // SOP Instance  UID
		      RT_Dose.SOPInstanceUID= trim(file.Elements(i).value)
		      
		    ElseIf file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0020"  then // Acq date
		      RT_Dose.StudyDate= Trim(file.Elements(i).value)
		      
		    ElseIf file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0022"  then // Acq date
		      RT_Dose.AcquistionDate= Trim(file.Elements(i).value)
		      
		    ElseIf file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0030"  then // Study ime
		      RT_Dose.StudyTime=Trim(file.Elements(i).value)
		      
		    ElseIf file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0032"  then // Acq time
		      RT_Dose.AcquistionTime= Trim(file.Elements(i).value)
		      
		    ElseIf file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0060"  then 
		      RT_Dose.Modality= Trim(file.Elements(i).value)
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0070"  then //Manufacturer name
		      RT_Dose.Manufacturer=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0090"  then //Manufacturer name
		      RT_Dose.ReferringPhysicianName=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1010"  then //Dose slice thickness
		      RT_Dose.StationName=Trim(file.Elements(i).value)
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1030"  then //Study Description
		      RT_Dose.StudyDescription=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="103E"  then //Series Description
		      RT_Dose.SeriesDescription=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1048"  then //Series Description
		      RT_Dose.Physician=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1090"  then //Manufacturer Model Name
		      RT_Dose.Manufacturer_Model_Name=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0010" and file.Elements(i).tag_b="0010" then
		      RT_Dose.PatientName=trim((file.Elements(i).value))
		      
		    elseif file.Elements(i).tag_a="0010" and file.Elements(i).tag_b="0020" then
		      RT_Dose.PatientID=trim(file.Elements(i).value) //0010x0020  patient ID
		      
		    elseif file.Elements(i).tag_a="0010" and file.Elements(i).tag_b="0030" then
		      RT_Dose.PatientBirthDate=trim((file.Elements(i).value)) // Birthdate
		      
		    elseif file.Elements(i).tag_a="0010" and file.Elements(i).tag_b="0040" then
		      RT_Dose.sex=trim(file.Elements(i).value) //  patient sex
		      
		    elseif file.Elements(i).tag_a="0010" and file.Elements(i).tag_b="1010" then
		      RT_Dose.Age=trim(file.Elements(i).value) //Age
		      
		    elseif file.Elements(i).tag_a="0018" and file.Elements(i).tag_b="0050"  then //Dose slice thickness
		      RT_Dose.SliceThickness=Trim(file.Elements(i).value)
		      
		    elseif file.Elements(i).tag_a="0018" and file.Elements(i).tag_b="1020"  then //Software version
		      RT_Dose.Software_Version=(file.Elements(i).value)
		      
		    elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="000D"  then //Study Instace UID
		      RT_Dose.StudyInstanceUID=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="000E"  then //Series Instace UID
		      RT_Dose.SeriesInstanceUID=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="0010"  then // Study ID
		      RT_Dose.StudyID=Trim(file.Elements(i).Value)
		      
		    elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="0011"  then // Series Number
		      RT_Dose.SeriesNumber=Trim(file.Elements(i).Value)
		      
		    elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="0013"  then // 
		      RT_Dose.InstanceNumber=Trim(file.Elements(i).Value)
		      
		    elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="0032"  then // Image position (Patient)
		      RT_Dose.ImagePositionPatient=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="0037"  then
		      RT_Dose.ImageOrientationPatient=Trim(file.Elements(i).value) // ImageOrientationPatient
		      
		    elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="0052"  then
		      RT_Dose.FrameOfReferenceUID=Trim(file.Elements(i).value) // 
		      
		    elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="1041"  then // Slice Location
		      RT_Dose.SliceLocation=val(file.Elements(i).Value)
		      
		      //---------------------------------------------------------------------------------------------
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="0000"  then
		      RT_Dose.Image_Presentation_Group_Length=CDbl(file.Elements(i).value) // number of frames, i.e. slices
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="0002"  then
		      RT_Dose.SamplesPerPixel=(file.Elements(i).value) // number of frames, i.e. slices
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="0004"  then
		      RT_Dose.PhotometrixInter=(file.Elements(i).value) // number of frames, i.e. slices
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="0008"  then
		      RT_Dose.NumberofFrames=CDbl(file.Elements(i).value) // number of frames, i.e. slices
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="0009"  then
		      RT_Dose.FrameIncrementPointer=(file.Elements(i).value) // Frame Increment Pointer
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="0010"  then
		      RT_Dose.rows=CDbl(file.Elements(i).value) // rows
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="0011"  then
		      RT_Dose.columns=CDbl(file.Elements(i).value) // columns
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="0030"  then // pixel spacing
		      RT_Dose.PixelSpacing=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="0100"  then
		      RT_Dose.BitsAllocated=CDbl(file.Elements(i).value) // bits allocated
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="0101"  then
		      RT_Dose.BitsStored=CDbl(file.Elements(i).value) // bits stored
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="0102"  then
		      RT_Dose.HighBit=CDbl(file.Elements(i).value) // high bit
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="0103"  then
		      RT_Dose.PixelRepresentation=CDbl(file.Elements(i).value) // Pixel Representation
		      if RT_Dose.PixelRepresentation=1 Then
		        signed=True
		      else
		        signed=False
		      end
		      
		      // 0001H = two’s complement integer, 
		      // 0000H = unsigned integer, otherwise.
		      
		      
		    elseif file.Elements(i).tag_a="3004" and file.Elements(i).tag_b="000A"  then
		      RT_Dose.DoseSummationType=file.Elements(i).value  // Dose Summation type
		      
		    elseif file.Elements(i).tag_a="3004" and file.Elements(i).tag_b="0002"  then
		      RT_Dose.DoseUnits=file.Elements(i).value  // Dose units
		      
		    elseif file.Elements(i).tag_a="3004" and file.Elements(i).tag_b="0004"  then
		      RT_Dose.DoseType=file.Elements(i).value  // Dose type
		      
		    elseif file.Elements(i).tag_a="3004" and file.Elements(i).tag_b="0006"  then //Dose Comment
		      RT_Dose.DoseComment=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="3004" and file.Elements(i).tag_b="000C"  then // Z spacing (SI dir)
		      RT_Dose.GridFrameOffsetVector=file.Elements(i).Value
		      
		      
		    elseif file.Elements(i).tag_a="3004" and file.Elements(i).tag_b="000E"  then // dose grid scaling
		      RT_Dose.DoseGridScaling=Val(file.Elements(i).value)
		      
		    ElseIf file.Elements(i).tag_a="7FE0" and file.Elements(i).tag_b="0010"  then // Pixel data
		      if file.TS_Implicit then
		        pos=file.Elements(i).byte_position+8
		      else
		        pos=file.Elements(i).byte_position+12
		      end if
		      
		    end if
		  next
		  
		  
		  //for now assume pixel data from end of file up --> rows*width*Bits allocated/8  give size in byte.
		  //data_start=pos
		  for k = 0 to RT_Dose.rows*RT_Dose.columns*RT_Dose.NumberofFrames-1
		    //here read the proper way...8, 16 or 32 bits signed or not. endian is taken care by the memory block .littleendian
		    if RT_Dose.BitsAllocated=8 then
		      d_value =file.thismemblock.Byte(pos+k)
		      
		    elseif RT_Dose.BitsAllocated=16 then // For 16 bit voxels
		      vv=pos+k*2
		      if vv<File.thismemblock.Size Then
		        if signed Then
		          d_value =file.thismemblock.short(vv)
		        else
		          d_value =file.thismemblock.ushort(vv)
		        end
		      else
		        MsgBox "Could not readin DICOM Dose voxels, error with 16 bit voxels"
		        Return False
		      end
		      
		    elseif RT_Dose.BitsAllocated=32 then // For 32 bit voxels
		      vv=pos+k*4
		      if vv<File.thismemblock.Size Then
		        if signed Then
		          d_value=file.thismemblock.Long(vv)
		        else
		          d_value =file.thismemblock.UInt32Value(vv)
		        end
		      else
		        MsgBox "Could not readin DICOM Dose voxels, error with 32 bit voxels"
		        Return False
		      end
		    end if
		    
		    RT_Dose.PixelData.Append d_value
		  next
		  k=k*RT_Dose.BitsAllocated/8+pos
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_File()
		  //-------------------
		  // 
		  //
		  //-------------------
		  Dim yy as Boolean
		  //-------------------
		  
		  if gPref.DICOM_IN_CT Then
		    Read_Images
		  end
		  if gPref.DICOM_IN_STRUCT Then
		    Read_Structure
		  end
		  if gPref.DICOM_IN_RTPLAN Then
		    yy=Read_Plan
		  end
		  if gPref.DICOM_IN_RTDOSE Then
		    yy=Read_Doses
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_Images()
		  //------------------------------------------------------
		  // DICOM image reader
		  //
		  //-------------------------------------------------------
		  dim i,j,pos as integer
		  dim found,signed as boolean
		  Dim Image as Class_DICOM_Image
		  //================================================
		  
		  found=False
		  for i=0 to UBound(file.Elements) // look for Image .dcm files
		    if file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0060" and file.Elements(i).value="CT"  then
		      found=true
		      Exit
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0060" and file.Elements(i).value=""  then // Correction for Issam DICOM Data from CERR
		      file.Elements(i).value="CT"
		      found=true
		      Exit
		    end if
		  next
		  
		  if found Then
		    Image=new Class_DICOM_Image
		  else
		    Return
		  end
		  
		  
		  for i=0 to UBound(file.Elements)
		    if file.Elements(i).tag_a="0002" and file.Elements(i).tag_b="0002" then
		      Image.MediaStorageSOPClassUID=(file.Elements(i).value)
		      
		    elseif file.Elements(i).tag_a="0002" and file.Elements(i).tag_b="0003" then
		      Image.MediaStorageSOPInstanceUID=(file.Elements(i).value)
		      
		    elseif file.Elements(i).tag_a="0002" and file.Elements(i).tag_b="0020"  then
		      Image.PatientOrientation=Trim(file.Elements(i).value) // Patient Orientation
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0008" then // Image Type
		      Image.Image_Type=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0012" then // Creation Date
		      Image.InstanceCreationDate=val(file.Elements(i).value)
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0013" then // Creation Time
		      Image.InstanceCreationTime=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0016" then // SOP Class UID
		      Image.SOPClassUID=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0018" then // SOP Instance UID
		      Image.SOPInstanceUID=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0020" then // Study Date
		      Image.StudyDate=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0021" then // Series Date
		      Image.SeriesDate=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0022" then // AcquisitionDate Date
		      Image.AcquisitionDate=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0030" then //Study Time
		      Image.StudyTime=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0031" then // Series Time
		      Image.SeriesTime=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0032" then // aq Time
		      Image.AcquisitionTime=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0050" then //
		      Image.AccessionNumber=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0060" then //Modality
		      Image.Modality=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0070" then //Modality
		      Image.Manufacturer=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0090" then // Referring Physician's name
		      Image.ReferringPhysician=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1030" then //Study Description
		      Image.StudyDescription=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="103E" then //Series Description
		      Image.SeriesDescription=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1048" then //Physician Name
		      Image.Physician=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="2111" then //
		      Image.DerivationDescription=file.Elements(i).value
		      
		      
		    elseif file.Elements(i).tag_a="0010" and file.Elements(i).tag_b="0010" then
		      Image.PatientName=trim((file.Elements(i).value))
		      
		    elseif file.Elements(i).tag_a="0010" and file.Elements(i).tag_b="0020" then
		      Image.PatientID=trim(file.Elements(i).value) //0010x0020  patient ID
		      
		    elseif file.Elements(i).tag_a="0010" and file.Elements(i).tag_b="0030" then
		      Image.PatientBirthDate=trim((file.Elements(i).value)) // Birthdate
		      
		    elseif file.Elements(i).tag_a="0010" and file.Elements(i).tag_b="0040" then
		      Image.sex=trim(file.Elements(i).value) //  patient sex
		      
		    elseif file.Elements(i).tag_a="0010" and file.Elements(i).tag_b="1010" then
		      Image.Age=trim(file.Elements(i).value) //Age
		      
		      
		    elseif file.Elements(i).tag_a="0018" and file.Elements(i).tag_b="0050" then
		      Image.SliceThickness=cdbl(file.Elements(i).value) //slice thickness in mm
		      
		      
		    elseif file.Elements(i).tag_a="0018" and file.Elements(i).tag_b="0060" then
		      Image.Kvp=Trim(file.Elements(i).value) //slice thickness in mm
		      
		    elseif file.Elements(i).tag_a="0018" and file.Elements(i).tag_b="1020" then
		      Image.SoftwareVersions=Trim(file.Elements(i).value) 
		      
		    elseif file.Elements(i).tag_a="0018" and file.Elements(i).tag_b="5100" then
		      Image.patient_position=file.Elements(i).value //patient position HFS, etc...
		      
		    ElseIf file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="000D"  then // Study instace UID
		      Image.StudyInstanceUID=(file.Elements(i).value)
		      
		    ElseIf file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="000E"  then // Series Instance UID
		      Image.SeriesInstanceUID=(file.Elements(i).value)
		      
		    ElseIf file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="0010"  then // Study ID
		      Image.StudyID=(file.Elements(i).value)
		      
		    ElseIf file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="0011"  then // Series Number
		      Image.SeriesNumber=(file.Elements(i).value)
		      
		    ElseIf file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="0013"  then // Series Number
		      Image.InstanceNumber=val(file.Elements(i).value)
		      
		      
		    elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="0032" then
		      Image.ImagePositionPatient=file.Elements(i).value //Image Position Patient
		      
		    elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="0037"  then
		      Image.ImageOrientationPatient=Trim(file.Elements(i).value) // ImageOrientationPatient
		      
		    elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="0052" then
		      Image.FrameOfReferenceUID=file.Elements(i).value //Image FrameOfReferenceUID 
		      
		    elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="1002" then
		      Image.ImagesinAcquisition=val(file.Elements(i).value) //Image FrameOfReferenceUID
		      
		    elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="1040" then
		      Image.PositionReferenceIndicator=file.Elements(i).value //Image FrameOfReferenceUID
		      
		    elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="1041" then
		      Image.SliceLocation=val(file.Elements(i).value )// Z coordinate of the slice - in mm
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="0002" then //Smaples per pixel
		      Image.SampleperPixel=(file.Elements(i).value)
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="0004" then //Photo
		      Image.PhotometricInterpretation=(file.Elements(i).value)
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="0010" then
		      Image.row=cdbl(file.Elements(i).value) // No of rows
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="0011" then
		      Image.Columns=cdbl(file.Elements(i).value) // No of columns
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="0030" then
		      Image.PixelSpacing=file.Elements(i).value // Pixel size (x) in mm
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="0100" then // Bits allocated per pixel ...
		      Image.BitsAllocated=cdbl(file.Elements(i).value)
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="0101" then // Bits stored per pixel ...
		      Image.BitsStored=cdbl(file.Elements(i).value)
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="0102" then // Bits highbit per pixel ...
		      Image.HighBit=cdbl(file.Elements(i).value)
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="0103" then
		      Image.PixelRepresentation=CDbl(file.Elements(i).value) //PixelRepresentation
		      if Image.PixelRepresentation=1 Then
		        signed=True
		      else
		        signed=False
		      end
		      
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="1050" then
		      Image.WinLevel=cdbl(file.Elements(i).value) //default window level
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="1051" then
		      Image.WinWidth=cdbl(file.Elements(i).value) //default window width
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="1052" then //Image rescale intercept
		      Image.rescaleintercept=cdbl(file.Elements(i).value)
		      
		    elseif file.Elements(i).tag_a="0028" and file.Elements(i).tag_b="1053" then 
		      Image.rescaleslope=cdbl(file.Elements(i).value)
		      
		    ElseIf file.Elements(i).tag_a="7FE0" and file.Elements(i).tag_b="0010"  then // Pixel data
		      if file.TS_Implicit then
		        pos=file.Elements(i).byte_position+8
		      else
		        pos=file.Elements(i).byte_position+12
		      end if
		    end
		  next
		  
		  redim Image.PixelData(Image.row*Image.Columns-1)
		  
		  //pos=thismemblock.size-imagesize
		  //for now assume pixel data from end of file up   so rows*width*Bits allocated/8  give size in byte.
		  //thismemblock.littleEndian=not thismemblock.littleEndian
		  for j=0 to Image.row-1
		    for i=0 to Image.Columns-1
		      //here read the proper way...8 or 16 bits signed or not. endian is taken care by the memory block .littleendian
		      if Image.BitsAllocated=16 then
		        if signed then
		          Image.PixelData(i+j*Image.Columns)=file.thismemblock.short(pos)// signed 16bit integer
		        else
		          Image.PixelData(i+j*Image.Columns)=file.thismemblock.ushort(pos) //16bit integer
		        end if
		        pos=pos+2
		        
		      elseif Image.BitsAllocated=8 then
		        Image.PixelData(i+j*Image.Columns)=file.thismemblock.byte(pos)
		        pos=pos+1
		      end if
		    next
		  next
		  
		  RT_Images.Append Image
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Read_Plan() As Boolean
		  // -------------------------------------
		  // Read in DICOM Plan file
		  //
		  //----------------------------------------
		  Dim i,num as Integer
		  Dim found as Boolean
		  Dim temp as String
		  Dim bb as Class_DICOM_Plan
		  Dim fgs as Class_DICOM_Plan_Fractiongroup
		  Dim rbs as Class_DICOM_ReferencedBeamSequence
		  Dim BS as Class_DICOM_Plan_BeamSequence
		  Dim BLDS as Class_DICOM_Plan_BeamLimitingDeviceSequence
		  Dim BLDPS as Class_DICOM_Plan_BeamLimitingDevicePositionSequence
		  Dim WS as Class_DICOM_Plan_WedgeSequence
		  Dim WPS as Class_DICOM_Plan_WedgePositionSequence
		  Dim CPS as Class_DICOM_Plan_ControlPointSequence
		  Dim PSS as Class_DICOM_Plan_PatientSetupSequence
		  Dim Blsq as Class_DICOM_Plan_BlockSequence
		  Dim AppSQ as Class_DICOM_Plan_ApplicatorSequence
		  Dim rsss as Class_DICOM_Plan_ReferencedStructureSetSequence
		  Dim rds as Class_DICOM_Plan_ReferencedDoseSequence
		  Dim RDRS as Class_DICOM_Plan_ReferencedDoseReferenceSequence
		  Dim  dtemp as Double
		  Dim drs as Class_DICOM_Plan_DoseReferenceSequence
		  dim sds as Class_DICOM_Plan_SetupDevice
		  //=========================
		  
		  
		  found=False
		  for i=0 to UBound(file.Elements) // look for PLAN .dcm files
		    if file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0060" then // if it is a PLAN file
		      if   InStr(file.Elements(i).value,"PLAN")>0 or  InStr(file.Elements(i).value,"RTPLAN")>0 then
		        found=true
		        Exit
		      end
		    end if
		  next
		  
		  if found=False then
		    Return False
		  end
		  
		  bb=new Class_DICOM_Plan
		  
		  for i=0 to UBound(file.Elements)
		    if file.Elements(i).tag_a="0002" and file.Elements(i).tag_b="0003"  then // DICOM_ID (file name)
		      bb.MediaStorageSOPInstanceUID= trim(file.Elements(i).value)
		      
		    ElseIf file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0012"  then //
		      bb.InstanceCreationDate= trim(file.Elements(i).value)
		      
		    ElseIf file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0013"  then // 
		      bb.InstanceCreationTime= trim(file.Elements(i).value)
		      
		    ElseIf file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0016"  then // SOP class UID
		      bb.SOPClassUID= trim(file.Elements(i).value)
		      
		    ElseIf file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0018"  then // SOP Instance  UID
		      bb.SOPInstanceUID= trim(file.Elements(i).value)
		      
		    ElseIf file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0020"  then // 
		      bb.StudyDate= trim(file.Elements(i).value)
		      
		    ElseIf file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0030"  then //
		      bb.StudyTime= trim(file.Elements(i).value)
		      
		    ElseIf file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0060"  then //
		      bb.Modality= trim(file.Elements(i).value)
		      
		    ElseIf file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1155"  then // SOP Instance  UID
		      bb.ReferencedSOPInstanceUID= trim(file.Elements(i).value)
		      While InStr(bb.ReferencedSOPInstanceUID,">")>0
		        bb.ReferencedSOPInstanceUID=Replace(bb.ReferencedSOPInstanceUID,">","")
		      Wend
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0070"  then //Manufacturer name
		      bb.Manufacturer=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1010"  then //
		      bb.StationName=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1030"  then //
		      bb.StudyDescription=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="103E"  then //
		      bb.SeriesDescription=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1048"  then //
		      bb.PhysicianofRecord=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1070"  then //
		      bb.OperatorsName=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1090"  then //Manufacturer Model Name
		      bb.Manufacturer_Model_Name=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0010" and file.Elements(i).tag_b="0010" then
		      bb.PatientName=trim((file.Elements(i).value))
		      
		    elseif file.Elements(i).tag_a="0010" and file.Elements(i).tag_b="0020" then
		      bb.PatientID=trim(file.Elements(i).value) //0010x0020  patient ID
		      
		    elseif file.Elements(i).tag_a="0010" and file.Elements(i).tag_b="0030" then
		      bb.BirthDate=trim((file.Elements(i).value)) // Birthdate
		      
		    elseif file.Elements(i).tag_a="0010" and file.Elements(i).tag_b="0040" then
		      bb.sex=trim(file.Elements(i).value) //  patient sex
		      
		    elseif file.Elements(i).tag_a="0010" and file.Elements(i).tag_b="1010" then
		      bb.Age=trim(file.Elements(i).value) //Age
		      
		    elseif file.Elements(i).tag_a="0018" and file.Elements(i).tag_b="1020"  then //Software version
		      bb.SoftwareVersions=(file.Elements(i).value)
		      
		    ElseIf file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="000D"  then // Study Instance UID
		      bb.StudyInstanceUID= trim(file.Elements(i).value)
		      
		    ElseIf file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="000E"  then // Series Instance UID
		      bb.SeriesInstanceUID= trim(file.Elements(i).value)
		      
		    ElseIf file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="0010"  then // Series Instance UID
		      bb.StudyID= trim(file.Elements(i).value)
		      
		    elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="0011"  then // Series Number
		      bb.SeriesNumber=(file.Elements(i).value)
		      
		    elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="0013"  then // 
		      bb.InstanceNumber=(file.Elements(i).value)
		      
		    elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="0052"  then // FrameOfReference UID
		      bb.FrameOfReferenceUID=(file.Elements(i).value)
		      
		    elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0002"  then // Plan Label
		      bb.RTPlan_Label= trim(file.Elements(i).value)
		      
		    elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0003"  then // Plan Name
		      bb.RTPlan_Name= trim(file.Elements(i).value)
		      
		    elseif  file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0004"  then // Plan Description
		      bb.RTPlan_Description= trim(file.Elements(i).value)
		      
		    elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0005"  then // 
		      //bb.RTPlan_Date= trim(file.Elements(i).value)
		      
		    elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0006"  then // Plan Date
		      bb.RTPlan_Date= trim(file.Elements(i).value)
		      
		    elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0007"  then // Plan time
		      bb.RTPlan_Time= trim(file.Elements(i).value)
		      
		    elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="000C"  then // Geome
		      bb.RTPlan_Geometry= trim(file.Elements(i).value)
		      
		    elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="000E"  then // Prescription Description
		      bb.Prescription_Description= trim(file.Elements(i).value)
		      
		      
		    elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0010"  then // Dose Reference Sequence
		      for i=i to UBound(file.Elements)
		        if file.Elements(i).value="END OF SEQUENCE" and file.Elements(i).VM=1  Then
		          exit
		        elseif file.Elements(i).value="New Item"  and file.Elements(i).VM=1 Then
		          drs=new Class_DICOM_Plan_DoseReferenceSequence
		          bb.DoseReferenceSequence.append drs
		          
		        elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0084"  then // Referenced ROI Number
		          temp=trim(file.Elements(i).value)
		          drs.ReferencedROINumb=val(temp)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0012"  then // Dose Reference number
		          temp=trim(file.Elements(i).value)
		          drs.DoseReferenceNumber=val(temp)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0014"  then // Dose Reference Structure set
		          temp=trim(file.Elements(i).value)
		          drs.DoseReferenceStructureType=(temp)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0016"  then // Dose reference description 
		          temp=trim(file.Elements(i).value)
		          drs.DoseReferenceDescription=(temp)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0020"  then // Dose reference type
		          temp=trim(file.Elements(i).value)
		          drs.DoseReferenceType=(temp)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0021"  then // Constraint weight
		          temp=trim(file.Elements(i).value)
		          drs.ConstraintWeight=val(temp)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0025"  then // 
		          temp=trim(file.Elements(i).value)
		          drs.TargetMinDose=val(temp)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0026"  then //
		          temp=trim(file.Elements(i).value)
		          drs.TargetPxDose=val(temp)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0027"  then //
		          temp=trim(file.Elements(i).value)
		          drs.TargetMaxDose=val(temp)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0028"  then //
		          temp=trim(file.Elements(i).value)
		          drs.TargetUnderDoseVolume=val(temp)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="002A"  then // Organ at risk full volume dose  
		          temp=trim(file.Elements(i).value)
		          drs.OrganatRiskFullVolumeDose=val(temp)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="002C"  then // Organ at risk max dose
		          temp=trim(file.Elements(i).value)
		          drs.OrganatRiskMaximumDose=val(temp)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="002D"  then // Organ at risk Overdose volume frax
		          temp=trim(file.Elements(i).value)
		          drs.OrganatRiskOverdoseVolumeFraction=val(temp)
		          
		        elseif file.Elements(i).tag_a="300D" and file.Elements(i).tag_b="0010"  then // Tomocrap
		          temp=trim(file.Elements(i).value)
		          
		        elseif file.Elements(i).tag_a="300D" and file.Elements(i).tag_b="1010"  then // Tomocrap
		          temp=trim(file.Elements(i).value)
		          drs.Tomo_Blocked=(temp)
		          
		        elseif file.Elements(i).tag_a="300D" and file.Elements(i).tag_b="1012"  then // Tomocrap
		          temp=trim(file.Elements(i).value)
		          drs.Tomo_Overlap_Prio=val(temp)
		          
		        elseif file.Elements(i).tag_a="300D" and file.Elements(i).tag_b="1016"  then // Tomocrap
		          temp=trim(file.Elements(i).value)
		          drs.Tomo_MinDose_Pen=val(temp)
		          
		        elseif file.Elements(i).tag_a="300D" and file.Elements(i).tag_b="1017"  then // Tomocrap
		          temp=trim(file.Elements(i).value)
		          drs.Tomo_MaxDose_Pen=val(temp)
		          
		          
		        elseif file.Elements(i).tag_a="300D" and file.Elements(i).tag_b="101B"  then // Tomocrap
		          temp=(file.Elements(i).value)
		          drs.Tomo_101B=(temp)
		          
		        elseif file.Elements(i).tag_a="300D" and file.Elements(i).tag_b="1018"  then // Tomocrap
		          temp=trim(file.Elements(i).value)
		          drs.Tomo_DV_Pen=val(temp)
		          
		        elseif file.Elements(i).tag_a="300D" and file.Elements(i).tag_b="1019"  then // Tomocrap
		          temp=trim(file.Elements(i).value)
		          drs.Tomo_MaxDose_Pen=val(temp)
		        end
		      next
		    elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0070"  then // FractionGroupSQ
		      for i=i to UBound(file.Elements)
		        if file.Elements(i).value="END OF SEQUENCE" and file.Elements(i).VM=1  Then
		          exit
		          
		        elseif file.Elements(i).value="New Item"  and file.Elements(i).VM=1 Then
		          fgs=new Class_DICOM_Plan_Fractiongroup
		          bb.FractionGroupSequence.append fgs
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0071"  then // 
		          temp=trim(file.Elements(i).value)
		          fgs.fractiongroupnumber=val(temp)
		          
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0078"  then // Num fractions planned
		          temp=trim(file.Elements(i).value)
		          fgs.numberoffractionsplanned=val(temp)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0080"  then // Num of beams
		          temp=trim(file.Elements(i).value)
		          fgs.numberofbeams=val(temp)
		          
		        elseif file.Elements(i).tag_a="300C" and file.Elements(i).tag_b="0004"  then // Referenced Beam sequence
		          for i=i to UBound(file.Elements)
		            //temp=file.Elements(i).tag_a+",  "+file.Elements(i).tag_b+",  "+MyArray(i,2)+",  "+MyArray(i,3)+",  "+MyArray(i,4)+",  "+MyArray(i,5)+",  "+file.Elements(i).value+",  "+MyArray(i,7)+",  "+MyArray(i,8)+",  "+MyArray(i,9)
		            if file.Elements(i).value="END OF SEQUENCE" and file.Elements(i).VM=2  Then
		              exit
		            elseif file.Elements(i).value="New Item" and file.Elements(i).VM=2 Then
		              rbs=new Class_DICOM_ReferencedBeamSequence
		              fgs.Referencedbeamsequence.append rbs
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0082"  then // Beam Dose Point
		              temp=trim(file.Elements(i).value)
		              rbs.Beam_Dose_Point=trim(temp)
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0084"  then // Beam dose
		              temp=trim(file.Elements(i).value)
		              rbs.BeamDose=val(temp)
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0086"  then // Beam meterset
		              temp=trim(file.Elements(i).value)
		              rbs.BeamMeterset=val(temp)
		              
		            elseif file.Elements(i).tag_a="300C" and file.Elements(i).tag_b="0006"  then // Referenced beam number
		              temp=trim(file.Elements(i).value)
		              rbs.Referencedbeamnumber=val(temp)
		            end
		          next// loop within Ref beam sequence
		        end
		      next
		      
		      
		    elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00B0"  then // BeamSQ
		      
		      for i=i to UBound(file.Elements)// loop within BeamSQ
		        
		        if InStr(file.Elements(i).Value,"END OF SEQUENCE")>0 and file.Elements(i).VM=1 Then
		          exit
		          
		        elseif file.Elements(i).value="New Item"  and file.Elements(i).VM=1 then
		          if file.Elements(i).VM=1 Then
		            BS=new Class_DICOM_Plan_BeamSequence
		            bb.BeamSequence.Append bs
		          end
		        elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0070"  then // Manufacurer
		          bs.Manufacturer=trim(file.Elements(i).value)
		          
		        elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0080"  then // Institution name
		          bs.InstitutionName=trim(file.Elements(i).value)
		          
		        elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1040"  then //  Institution dept name
		          bs.InstitutionalDepartmentName=trim(file.Elements(i).value)
		          
		        elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1090"  then // Manufacurer Model
		          bs.ManufactureModelname=trim(file.Elements(i).value)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00B2"  then // Treatment Model name
		          bs.TreatmentMachineName=trim(file.Elements(i).value)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00B3"  then // Primary Dosimeter Unit
		          bs.PrimaryDosimeterUnit=trim(file.Elements(i).value)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00B4"  then // SAD
		          temp=file.Elements(i).value
		          bs.SAD=val(temp)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00B6"  then // Beamlimiting device type
		          for i=i to UBound(file.Elements)
		            
		            if InStr(file.Elements(i).value,"END OF SEQUENCE")>0 and file.Elements(i).VM=2 Then
		              exit
		              
		            elseif file.Elements(i).value="New Item" and file.Elements(i).VM=2 Then
		              BLDS=new Class_DICOM_Plan_BeamLimitingDeviceSequence
		              bs.BeamLimitingDevice.Append BLDS
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00B8"  then // Limiting device type
		              blds.RTBeamLimitingDeviceType=file.Elements(i).value
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00BA"  then // Source to MLC distance
		              blds.SourceToBeamLimitingDeviceDistance=file.Elements(i).value
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00BC"  then // Number of leafjaw pairs
		              blds.NumberofLeafjawPairs=file.Elements(i).value
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00BE"  then // leaf boundaries
		              blds.LeafPositionBoundaries=file.Elements(i).value
		            end
		          next
		          
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00F4"  then // Block Sequence device type
		          for i=i to UBound(file.Elements)
		            
		            if InStr(file.Elements(i).value,"END OF SEQUENCE")>0 and file.Elements(i).VM=2 Then
		              exit
		              
		            elseif file.Elements(i).value="New Item" and file.Elements(i).VM=2 Then
		              Blsq=new Class_DICOM_Plan_BlockSequence
		              bs.BlockSQ.Append Blsq
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00E1"  then // Material ID
		              Blsq.Material=file.Elements(i).value
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00F5"  then // BlockTrayID
		              Blsq.BlockTrayID=file.Elements(i).value
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00F6"  then // Source to block D
		              Blsq.SourToBlockDistance=val(file.Elements(i).value)
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00F8"  then // block Type
		              Blsq.BlockType=file.Elements(i).value
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00FC"  then // block num
		              Blsq.BlockNumber=val(file.Elements(i).value)
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00FE"  then // block Name
		              //Blsq.b=file.Elements(i).value
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0100"  then // block Thickness
		              Blsq.BlockThickness=val(file.Elements(i).value)
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0104"  then // block num points
		              Blsq.BlockNumberOfPoints=val(file.Elements(i).value)
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0106"  then // block data
		              Blsq.BlockData=file.Elements(i).value
		              
		            end
		          next
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0107"  then // Applicator Sequence
		          for i=i to UBound(file.Elements)
		            
		            if InStr(file.Elements(i).value,"END OF SEQUENCE")>0 and file.Elements(i).VM=2 Then
		              exit
		              
		            elseif file.Elements(i).value="New Item" and file.Elements(i).VM=2 Then
		              AppSQ=new Class_DICOM_Plan_ApplicatorSequence
		              bs.ApplicatorSQ.Append AppSQ
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00F9"  then // Undefined
		              AppSQ.Undefined=file.Elements(i).value
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0108"  then // App ID
		              AppSQ.ApplicatorID=file.Elements(i).value
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0109"  then // App Type
		              AppSQ.ApplicatorType=file.Elements(i).value
		              
		            end
		          next
		          
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00C0"  then // Beam number
		          bs.BeamNumber=val(file.Elements(i).value)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00C2"  then // Beam name
		          bs.BeamName=file.Elements(i).value
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00C3"  then // Beam description
		          bs.BeamDescrip=file.Elements(i).value
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00C4"  then // Beam Type
		          bs.BeamType=file.Elements(i).value
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00C6"  then // radiation type
		          bs.RadiationType=file.Elements(i).value
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00CE"  then // Treatment Delivery type
		          bs.TreatmentDeliveryType=file.Elements(i).value
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00D0"  then // number of wedges
		          temp=file.Elements(i).value
		          bs.NumberofWedges=val(Temp)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00D1"  then // wedge SQ
		          for i=i to UBound(file.Elements) //Loop for Wedge SQ
		            //temp=file.Elements(i).tag_a+",  "+file.Elements(i).tag_b+",  "+MyArray(i,2)+",  "+MyArray(i,3)+",  "+MyArray(i,4)+",  "+MyArray(i,5)+",  "+file.Elements(i).value+",  "+MyArray(i,7)+",  "+MyArray(i,8)+",  "+MyArray(i,9)
		            if InStr(file.Elements(i).Value,"END OF SEQUENCE")>0 and file.Elements(i).VM=2 Then
		              exit
		              
		            elseif file.Elements(i).value="New Item" and file.Elements(i).VM=2 Then
		              ws=new Class_DICOM_Plan_WedgeSequence
		              bs.WedgeSequence.Append ws
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00D2"  then // Wedge number
		              temp=file.Elements(i).value
		              ws.WedgeNumber= val(Temp)
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00D3"  then // Wedge type
		              ws.WedgeType=file.Elements(i).value
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00D4"  then // Wedge ID
		              ws.WedgeID=file.Elements(i).value
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00D5"  then // Wedge angle
		              temp=file.Elements(i).value
		              ws.WedgeAngle =val(temp)
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00D8"  then // Wedge orientation
		              temp=file.Elements(i).value
		              ws.WedgeOrientation= val(Temp)
		              
		            End
		          next //Loop for Wedge SQ
		          
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="010E"  then // Final Cumulative Meterset Weight
		          temp=file.Elements(i).value
		          bs.FinalCimulativeMetersetWeight=val(Temp)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0110"  then // Number of Control Points
		          temp=file.Elements(i).value
		          bs.NumberofControlPoints=val(Temp)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0111"  then // Control Point SQ
		          
		          for i=i to UBound(file.Elements) // Loop for Control Point SQ
		            
		            if InStr( file.Elements(i).value,"END OF SEQUENCE")>0 and file.Elements(i).VM=2 Then
		              exit
		              
		            elseif file.Elements(i).value="New Item" and file.Elements(i).VM=2 Then
		              CPS=new Class_DICOM_Plan_ControlPointSequence
		              bs.ControlPointSequence.Append CPS
		              
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0114"  then // Nominal Beam energy
		              
		              temp=file.Elements(i).value
		              CPS.NominalBeamEnergy=val(Temp)
		              
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0115"  then // Dose rate
		              temp=file.Elements(i).value
		              CPS.DoseRateSet= val(Temp)
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0112"  then // Control index
		              temp=file.Elements(i).value
		              CPS.ControlPointIndex= val(Temp)
		              
		              
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0116"  then // Wedgeposition sequence
		              for i=i to UBound(file.Elements)
		                
		                if file.Elements(i).value="END OF SEQUENCE" and file.Elements(i).VM=3 Then
		                  exit
		                  
		                elseif file.Elements(i).value="New Item" and  file.Elements(i).VM=3 Then
		                  WPS=new Class_DICOM_Plan_WedgePositionSequence
		                  CPS.WedgePositionSequence.Append WPS
		                  
		                elseif  file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0118"  then // Wedge position
		                  wps.WedgePosition=file.Elements(i).value
		                  
		                end
		              next
		              
		              
		              
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="011A"  then // Beam limiting device position sequence
		              for i=i to UBound(file.Elements)
		                if InStr( file.Elements(i).value,"END OF SEQUENCE")>0 and  file.Elements(i).VM=3 Then
		                  exit
		                  
		                elseif file.Elements(i).value="New Item" and file.Elements(i).VM=3 Then
		                  BLDPS=new Class_DICOM_Plan_BeamLimitingDevicePositionSequence
		                  CPS.BeamLimitingDevicePositionSequence.Append BLDPS
		                  
		                elseif  file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00B8"  then // RTBeam limiting device type
		                  BLDPS.RTBeamLimitingDevice=file.Elements(i).value
		                  
		                elseif  file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="011C"  then // Leafjaw positions
		                  BLDPS.LeafjawPositions=file.Elements(i).value
		                end
		              next
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="011E"  then // Gantry angle
		              temp=file.Elements(i).value
		              CPS.GantryAngle= val(Temp)
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="011F"  then // Gantry Rotation Direction
		              temp=file.Elements(i).value
		              CPS.GantryRotationDirection= Trim(Temp)
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0120"  then // Collimator angle
		              temp=file.Elements(i).value
		              CPS.Beamlimitngdeviceangle= val(Temp)
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0121"  then // Collimator Rotation Direction
		              temp=file.Elements(i).value
		              CPS.BeamLimitingDeviceRotationDirection= Trim(Temp)
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0122"  then // Couch angle
		              temp=file.Elements(i).value
		              CPS.PatientSupportAngle= val(Temp)
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0123"  then // Couch Rotation Direction
		              temp=file.Elements(i).value
		              CPS.PatientSupportRotationDirection= Trim(Temp)
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0125"  then // Table Top Eccentric Angle
		              temp=file.Elements(i).value
		              CPS.TableTopEccentricAngle= Trim(Temp)
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0126"  then // Table Top Eccentric Rotation Direction
		              temp=file.Elements(i).value
		              CPS.TableTopEccentricRotationDirection= Trim(Temp)
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0128"  then // Table Top Vertical Position
		              temp=file.Elements(i).value
		              CPS.TableTopVerticalPosition= Trim(Temp)
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0129"  then // Table Top Longitudinal Position
		              temp=file.Elements(i).value
		              CPS.TableTopLongitudinalPosition= Trim(Temp)
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="012A"  then // Table Top Lateral Position
		              temp=file.Elements(i).value
		              CPS.TableTopLateralPosition= Trim(Temp)
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="012C"  then // Isocenter
		              CPS.IsocenterPosition=file.Elements(i).value
		              
		            elseif file.Elements(i).tag_a="300D" and file.Elements(i).tag_b="0010"  then // TomoType
		              CPS.TomoType=Trim(file.Elements(i).value)
		              
		              
		            elseif file.Elements(i).tag_a="300D" and file.Elements(i).tag_b="10A7"  then // TomoSinogram
		              CPS.TomoSinogram=Trim(file.Elements(i).value)
		              
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0130"  then // SSD
		              temp=file.Elements(i).value
		              CPS.SSD= val(Temp)
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0134"  then // CumulativeMetersetWeight
		              temp=file.Elements(i).value
		              dtemp=val(Temp)
		              CPS.CumulativeMetersetWeight=dtemp
		              
		              
		              
		            elseif file.Elements(i).tag_a="300C" and file.Elements(i).tag_b="0050"  then // Referenced Dose Reference Sequence
		              for i=i to UBound(file.Elements)
		                if InStr( file.Elements(i).value,"END OF SEQUENCE")>0 and  file.Elements(i).VM=3 Then
		                  exit
		                  
		                elseif file.Elements(i).value="New Item" and file.Elements(i).VM=3 Then
		                  RDRS=new Class_DICOM_Plan_ReferencedDoseReferenceSequence
		                  CPS.ReferencedDoseReferenceSequence.Append RDRS
		                  
		                elseif  file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="010C"  then // Cumulative Dose Referecnce Coeff. 
		                  RDRS.CumulativeDoseReferenceCoefficient=val(file.Elements(i).value)
		                  
		                elseif  file.Elements(i).tag_a="300C" and file.Elements(i).tag_b="0051"  then // Referenced Dose Reference Number
		                  RDRS.ReferencedDoseReferenceNumber=val(file.Elements(i).value)
		                end
		              next
		            End
		          next// Loop within Control Point SQ
		          
		        elseif file.Elements(i).tag_a="300C" and file.Elements(i).tag_b="0080"  then // Referenced Dose  Sequence
		          rds=new Class_DICOM_Plan_ReferencedDoseSequence
		          bs.ReferenceDoseSequence.Append rds
		          
		          for i=i to UBound(file.Elements)
		            if file.Elements(i).value="END OF SEQUENCE" and file.Elements(i).VM=2  Then
		              exit
		            elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1150"  then
		              rds.ReferencedSOPClassUID =Trim( file.Elements(i).value)
		            elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1155"  then
		              rds.ReferencedSOPInstanceUID =Trim( file.Elements(i).value)
		            end
		          next
		          
		          
		        end
		      next i // loop within BeamSQ
		      
		      
		    elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0180"  then // Patient Setup Sequence
		      for i=i to UBound(file.Elements)
		        if file.Elements(i).value="END OF SEQUENCE" and file.Elements(i).VM=1  Then
		          exit
		        elseif file.Elements(i).value="New Item"  and file.Elements(i).VM=1 Then
		          pss=new Class_DICOM_Plan_PatientSetupSequence
		          bb.PatientSetupSequence.append pss
		          
		        elseif file.Elements(i).tag_a="0018" and file.Elements(i).tag_b="5100"  then // Patient Position
		          temp=trim(file.Elements(i).value)
		          pss.PatientPosition=(temp)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="0182"  then // Patient Setupnumber
		          temp=trim(file.Elements(i).value)
		          pss.PatientSetupNumber=val(temp)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="01B0"  then // Setup Technique
		          temp=trim(file.Elements(i).value)
		          pss.SetupTechnique=(temp)
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="01B2"  then // Setup TechniqueDescription
		          temp=trim(file.Elements(i).value)
		          pss.SetupTechniqueDescription=(temp)
		          
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="01B4"  then // Setup Device Sequence
		          for i=i to UBound(file.Elements)
		            if file.Elements(i).value="END OF SEQUENCE" and file.Elements(i).VM=2  Then
		              exit
		            elseif file.Elements(i).value="New Item"  and file.Elements(i).VM=2 Then
		              sds=new Class_DICOM_Plan_SetupDevice
		              PSS.SetupDeviceSequence.append sds
		              
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="01B6"  then // Patient Position
		              temp=trim(file.Elements(i).value)
		              sds.SetupDeviceType=(temp)
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="01B8"  then // Patient Position
		              temp=trim(file.Elements(i).value)
		              sds.SetupDeviceLabel=(temp)
		              
		              
		            elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="01BC"  then // Patient Position
		              temp=trim(file.Elements(i).value)
		              sds.SetupDeviceParameter=(temp)
		            end
		          next
		        end
		      next
		      
		    elseif file.Elements(i).tag_a="300C" and file.Elements(i).tag_b="0060"  then // Referenced Structure Set Sequence
		      rsss=new Class_DICOM_Plan_ReferencedStructureSetSequence
		      bb.ReferencedStructureSetSequence.Append rsss
		      for i=i to UBound(file.Elements)
		        if file.Elements(i).value="END OF SEQUENCE" and file.Elements(i).VM=1  Then
		          exit
		        elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1150"  then
		          rsss.ReferencedSOPClassUID =Trim( file.Elements(i).value)
		        elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1155"  then
		          rsss.ReferencedSOPInstanceUID =Trim( file.Elements(i).value)
		        end
		      next
		      
		    elseif file.Elements(i).tag_a="300C" and file.Elements(i).tag_b="0080"  then // Referenced Dose Set Sequence
		      rds=new Class_DICOM_Plan_ReferencedDoseSequence
		      bb.ReferencedDoseSequence.Append rds
		      for i=i to UBound(file.Elements)
		        if file.Elements(i).value="END OF SEQUENCE" and file.Elements(i).VM=1  Then
		          exit
		        elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1150"  then
		          rds.ReferencedSOPClassUID =Trim( file.Elements(i).value)
		        elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1155"  then
		          rds.ReferencedSOPInstanceUID =Trim( file.Elements(i).value)
		        end
		      next
		      
		    elseif file.Elements(i).tag_a="300E" and file.Elements(i).tag_b="0002"  then //
		      bb.ApprovalStatus=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="300E" and file.Elements(i).tag_b="0004"  then //
		      bb.ReviewDate=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="300E" and file.Elements(i).tag_b="0005"  then //
		      bb.ReviewTime=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="300E" and file.Elements(i).tag_b="0008"  then //
		      bb.ReviewerName=file.Elements(i).value
		      
		    end
		    
		  next i // Loop for whole file
		  RT_Plan.Append bb
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_Structure()
		  // ------Populate DICOM variables-----------
		  // Read in a Structure file
		  //
		  //----------------------------------------
		  Dim i as integer
		  Dim found as boolean
		  Dim temp as String
		  Dim Structures as Class_DICOM_Structures
		  Dim pp as Class_DICOM_Structure_SetROISequence
		  Dim cc as Class_DICOM_Structure_ROContourSequence
		  Dim cs as Class_DICOM_Structure_ContourSequence
		  Dim cis as Class_DICOM_Structure_ContourImageSequence
		  Dim rfors as Class_DICOM_Referenced_Frame_of_Ref_Sequence
		  Dim rss as Class_DICOM_Referenced_Study_Sequence
		  Dim rseriess as Class_DICOM_Referenced_Series_Sequence
		  Dim roiOb as Class_DICOM_Structure_ROI_Obv_Sequence
		  Dim roiPPS as Class_DICOM_Structure_ROI_Physical_Prop_Seq
		  //=====================================
		  
		  
		  // Reads in DICOM Structures
		  
		  
		  found=False
		  for i=0 to UBound(file.Elements)
		    if file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0060" and  InStr(file.Elements(i).value,"STRUCT")>0 then // check if it is a structure file
		      found=true
		      Exit
		    ElseIf file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0060" and  InStr(file.Elements(i).value,"RTSTRUCT")>0 then
		      found=true
		      Exit
		    end if
		  next
		  
		  // if it is a structure file
		  if found=False then
		    Return
		  end
		  
		  
		  Structures=new Class_DICOM_Structures
		  RT_Structures.Append Structures
		  for i=0 to UBound(file.Elements) // 1st part of reading in the Structure info
		    Temp=file.Elements(i).value
		    
		    if file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0070"  then // Manufacturer
		      Structures.Manufacturer=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0000"  then // Date
		      Structures.IdentifyingGroupLength=file.Elements(i).value
		      
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0012"  then // Date
		      Structures.InstanceCreationDate=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0013"  then // Time
		      Structures.InstanceCreationTime=file.Elements(i).value
		      
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0016"  then // SOP Class UID
		      Structures.SOPClassUID=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0018"  then // SOP instance UID
		      Structures.SOPInstanceUID=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0020"  then // Study Date
		      Structures.StudyDate=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0030"  then // Study Time
		      Structures.StudyTime=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="0060"  then // Modality
		      Structures.Modality=file.Elements(i).value
		      
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1030"  then // Study Description
		      Structures.StudyDescription=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="103E"  then // Series Description
		      Structures.SeriesDescription=file.Elements(i).value
		      
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1048"  then // 
		      Structures.Physician=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1090"  then // Manufacturer Model
		      Structures.ManufacturerModelName=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0010" and file.Elements(i).tag_b="0000"  then // Patient's Group
		      Structures.PatientGroupLength=val(file.Elements(i).value)
		      
		      
		    elseif file.Elements(i).tag_a="0010" and file.Elements(i).tag_b="0010"  then // Patient's Name
		      Structures.PatientName=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0010" and file.Elements(i).tag_b="0020"  then // Patient's ID
		      Structures.PatientID=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0010" and file.Elements(i).tag_b="0030"  then // Patient's bday
		      Structures.PatientBirthDate=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0010" and file.Elements(i).tag_b="0040"  then // Patient's sex
		      Structures.sex=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0010" and file.Elements(i).tag_b="1010"  then // Patient's age
		      Structures.Age=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0018" and file.Elements(i).tag_b="0000"  then // Software Version
		      Structures.AcquisitionGroupLength=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0018" and file.Elements(i).tag_b="1020"  then // Software Version
		      Structures.SoftwareVersion=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="0000"  then // StudyInstanceUID
		      Structures.RelationshipGroupLength=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="000D"  then // StudyInstanceUID
		      Structures.StudyInstanceUID=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="000E"  then // SeriesInstanceUID
		      Structures.SeriesInstanceUID=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="0010"  then // StudyID
		      Structures.StudyID=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="0011"  then // Series Number
		      Structures.SeriesNumber=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0000"  then // Tomo Crap
		      Structures.Tomo3006=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0002"  then // Structures set ROI Label
		      Structures.StructureSetLabel=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0004"  then // Structures set name
		      Structures.StructureSetName=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0006"  then // Structures set descript
		      Structures.StructureSetDescription=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0008"  then // Structures set ROI Date
		      Structures.StrutureSetDate=file.Elements(i).value
		      
		    elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0009"  then // Structures set ROI Time
		      Structures.StrutureSetTime=file.Elements(i).value
		      
		      
		      
		    elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0010"  then // Referneced Frame of Reference Sequene
		      for i=i to UBound(file.Elements)
		        //temp=file.Elements(i).tag_a+",  "+file.Elements(i).tag_b+",  "+file.Elements(i).value
		        if InStr(file.Elements(i).value,"END OF SEQUENCE")>0 Then
		          exit
		          
		        elseif file.Elements(i).value="New Item" Then
		          rfors=new Class_DICOM_Referenced_Frame_of_Ref_Sequence
		          Structures.RFORS.Append rfors
		          
		          
		        elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="0052"  then //Frame of reference UID
		          rfors.FrameofReferenceUID=file.Elements(i).value
		          
		        elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0012"  then // RT Referenced Study Sequence
		          
		          for i=i to UBound(file.Elements)
		            if InStr(file.Elements(i).Value,"END OF SEQUENCE")>0 and file.Elements(i).VM=2 Then
		              exit
		            elseif file.Elements(i).value="New Item" and file.Elements(i).VM=2 Then
		              rss=new Class_DICOM_Referenced_Study_Sequence
		              rfors.ReferencedStudySequence.Append rss
		            elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1150"  then // Referenced SOP class UID
		              rss.ReferencedSOPClassUID=file.Elements(i).value
		            elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1155"  then // Referenced SOP Instance UID
		              rss.ReferencedSOPInstanceUID=file.Elements(i).value
		              
		            elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0014"  then // RT Referenced Series Sequence
		              
		              for i=i to UBound(file.Elements)
		                if InStr(file.Elements(i).Value,"END OF SEQUENCE")>0 and file.Elements(i).VM=3 Then
		                  exit
		                elseif file.Elements(i).value="New Item" and file.Elements(i).VM=3 Then
		                  rseriess=new Class_DICOM_Referenced_Series_Sequence
		                  rss.RTReferencedSeriesSequence.Append rseriess
		                  
		                elseif file.Elements(i).tag_a="0020" and file.Elements(i).tag_b="000E"  then // Seriers Instance UID
		                  rseriess.SeriesInstanceUID=file.Elements(i).value
		                  
		                elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0016"  then //Contour Image Sequence
		                  
		                  for i=i to UBound(file.Elements)
		                    if InStr(file.Elements(i).Value,"END OF SEQUENCE")>0 and file.Elements(i).VM=4 Then
		                      exit
		                    elseif file.Elements(i).value="New Item" and file.Elements(i).VM=4 Then
		                      cis=new Class_DICOM_Structure_ContourImageSequence
		                      rseriess.ContourImageSequence.Append cis
		                      
		                    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1150"  then // Seriers Instance UID
		                      cis.ReferencedSOPClassUID=file.Elements(i).value
		                      
		                    elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1155"  then // Seriers Instance UID
		                      cis.ReferencedSOPInstanceUID=file.Elements(i).value
		                      
		                      
		                    end
		                  Next
		                  
		                  
		                  
		                  
		                end
		                
		              Next
		              
		              
		            end
		          next
		          
		        end
		      Next
		      
		      
		      
		    elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0020"  then // Structure Set ROI Sequence
		      for i=i to UBound(file.Elements)
		        //temp=file.Elements(i).tag_a+",  "+file.Elements(i).tag_b+",  "+MyArray(i,2)+",  "+MyArray(i,3)+",  "+MyArray(i,4)+",  "+MyArray(i,5)+",  "+file.Elements(i).value+",  "+MyArray(i,7)+",  "+MyArray(i,8)+",  "+MyArray(i,9)
		        if InStr(file.Elements(i).value,"END OF SEQUENCE")>0  and file.Elements(i).VM=1  Then
		          exit
		          
		        elseif file.Elements(i).value="New Item" and file.Elements(i).VM=1  Then
		          pp=new Class_DICOM_Structure_SetROISequence
		          Structures.SetROISequence.Append pp
		          
		          
		        elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0022"  then //Frame of reference UID
		          pp.ROI_num=val(file.Elements(i).value)
		          
		        elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0024"  then //Frame of reference UID
		          pp.ReferencedFrameofRefUID=(file.Elements(i).value)
		          
		        elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0026"  then //Frame of reference UID
		          pp.ROIName=(file.Elements(i).value)
		          
		        elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0036"  then //Frame of reference UID
		          pp.ROI_Algorithm=(file.Elements(i).value)
		          
		          
		          
		          
		        end
		      Next
		      
		      
		    elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0039"  then // ROI Contour Sequence
		      
		      for i=i to UBound(file.Elements)
		        //temp=file.Elements(i).tag_a+",  "+file.Elements(i).tag_b+",  "+MyArray(i,2)+",  "+MyArray(i,3)+",  "+MyArray(i,4)+",  "+MyArray(i,5)+",  "+file.Elements(i).value+",  "+MyArray(i,7)+",  "+MyArray(i,8)+",  "+MyArray(i,9)
		        if InStr(file.Elements(i).value,"END OF SEQUENCE")>0  and file.Elements(i).VM=1  Then
		          exit
		          
		        elseif file.Elements(i).value="New Item" and file.Elements(i).VM=1  Then
		          cc=new Class_DICOM_Structure_ROContourSequence
		          Structures.ROIContourSequence.Append cc
		          
		          
		          
		        elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="002A"  then // RGB color for one Structure (ROI)
		          Temp=file.Elements(i).value
		          While InStr(temp,">")>0
		            temp=Replace(Temp,">","")
		          Wend
		          cc.ROIColour=RGB(CDbl(NthField(temp,"\",1)),CDbl(NthField(temp,"\",2)),CDbl(NthField(temp,"\",3)))
		          
		        Elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0084" then // number of contour points
		          cc.ReferencedROINumber=file.Elements(i).value
		          
		          
		        elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0040"  then // Contour Sequence
		          
		          for i=i to UBound(file.Elements)
		            //temp=file.Elements(i).tag_a+",  "+file.Elements(i).tag_b+",  "+MyArray(i,2)+",  "+MyArray(i,3)+",  "+MyArray(i,4)+",  "+MyArray(i,5)+",  "+file.Elements(i).value+",  "+MyArray(i,7)+",  "+MyArray(i,8)+",  "+MyArray(i,9)
		            if InStr(file.Elements(i).Value,"END OF SEQUENCE")>0 and file.Elements(i).VM=2 Then
		              exit
		              
		            elseif file.Elements(i).value="New Item" and file.Elements(i).VM=2 Then
		              cs=new Class_DICOM_Structure_ContourSequence
		              cc.ContourSequence.Append cs
		              
		              
		              
		            elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0016"  then // Contour Image Sequence
		              
		              for i=i to UBound(file.Elements)
		                //temp=file.Elements(i).tag_a+",  "+file.Elements(i).tag_b+",  "+MyArray(i,2)+",  "+MyArray(i,3)+",  "+MyArray(i,4)+",  "+MyArray(i,5)+",  "+file.Elements(i).value+",  "+MyArray(i,7)+",  "+MyArray(i,8)+",  "+MyArray(i,9)
		                if InStr(file.Elements(i).Value,"END OF SEQUENCE")>0 and file.Elements(i).VM=3  Then
		                  exit
		                  
		                elseif file.Elements(i).value="New Item" and file.Elements(i).VM=3 Then
		                  cis=new Class_DICOM_Structure_ContourImageSequence
		                  cs.contourimagesequence.Append cis
		                  
		                  
		                elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1150"  then // SOP Class UID\
		                  Temp=file.Elements(i).value
		                  While InStr(temp,">")>0
		                    temp=Replace(Temp,">","")
		                  Wend
		                  cis.ReferencedSOPClassUID=temp
		                  
		                  
		                elseif file.Elements(i).tag_a="0008" and file.Elements(i).tag_b="1155"  then // SOP Instance UID\
		                  Temp=file.Elements(i).value
		                  While InStr(temp,">")>0
		                    temp=Replace(Temp,">","")
		                  Wend
		                  cis.ReferencedSOPInstanceUID=temp
		                end
		              next
		              
		            Elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0042" then // number of contour points
		              cs.GeometricType=file.Elements(i).value
		              
		            Elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0044" then // number of contour points
		              cs.SlabThickness=file.Elements(i).value
		              
		            Elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0045" then // number of contour points
		              cs.OffsetVector=file.Elements(i).value
		              
		              
		              
		            Elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0046" then // number of contour points
		              Temp=file.Elements(i).value
		              While InStr(temp,">")>0
		                temp=Replace(Temp,">","")
		              Wend
		              cs.numberofcontourpoints= val(temp)
		              
		              
		            Elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0050" then //  contour data
		              Temp=file.Elements(i).value
		              While InStr(temp,">")>0
		                temp=Replace(Temp,">","")
		              Wend
		              cs.data =(temp)
		            end
		          next
		        end
		      next
		      
		      
		      
		      
		    elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0080"  then // ROI Observation Sequence
		      for i=i to UBound(file.Elements)
		        
		        if InStr(file.Elements(i).value,"END OF SEQUENCE")>0  and file.Elements(i).VM=1  Then
		          exit
		          
		        elseif file.Elements(i).value="New Item" and file.Elements(i).VM=1  Then
		          roiOb=new Class_DICOM_Structure_ROI_Obv_Sequence
		          Structures.ROI_Obs_Seq.Append roiOb
		          
		        Elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0082" then // 
		          roiOb.Ob_num=val(file.Elements(i).value)
		        Elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="0084" then // 
		          roiOb.ReferencedROI_Num=(file.Elements(i).value)
		        Elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="00A4" then // 
		          roiOb.RT_ROI_Inter_Type=(file.Elements(i).value)
		        Elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="00A6" then // 
		          roiOb.ROI_Inter=(file.Elements(i).value)
		          
		        Elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="00B0" then //
		          
		          for i=i to UBound(file.Elements)
		            
		            if InStr(file.Elements(i).value,"END OF SEQUENCE")>0  and file.Elements(i).VM=2  Then
		              exit
		              
		            elseif file.Elements(i).value="New Item" and file.Elements(i).VM=2  Then
		              roiPPS=new Class_DICOM_Structure_ROI_Physical_Prop_Seq
		              roiOb.ROI_Phys_Prop_Sequ.Append roiPPS
		            Elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="00B2" then //
		              roiPPS.ROI_Phys_Prop=(file.Elements(i).value)
		            Elseif file.Elements(i).tag_a="3006" and file.Elements(i).tag_b="00B4" then //
		              roiPPS.ROI_Phys_Prop_Value=(file.Elements(i).value)
		              
		            end
		          Next
		          
		        end
		      Next
		    end
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UID_get_instance() As String
		  //-------------------------------
		  // Create Instance Section of UID
		  //
		  //
		  //-------------------------------
		  Dim out,process,address,address_a,address_b,id_part,orgroot as String
		  Dim i,k as Integer
		  Dim n as NetworkInterface
		  Dim r as New Random
		  //-------------------------------
		  
		  //Where does this number come from?
		  //orgroot="1.2.840.113704.1.1.1."
		  orgroot=""
		  
		  if System.NetworkInterfaceCount>=1 Then
		    n=System.GetNetworkInterface(0)
		    address=n.MACAddress
		    While InStr(address,":")>0
		      address=Replace(address,":","")
		    Wend
		    
		    
		    if (Len(address) = 12) Then
		      //% Convert MAC address.  They are always 12 hex values.
		      address_a=left(Address,6)
		      address_b=Right(Address,6)
		      i=val("&h"+address_a)
		      address_a=Format(i,"00000000")
		      i=val("&h"+address_b)
		      address_b=Format(i,"00000000")
		      id_part=Address_a+Address_b
		    else
		      Break
		      '% Convert 32-bit host ID.
		      'os_id = address(1:2);
		      'id_part = sprintf('%010.0f', sscanf(address(3:end) , '%x'));
		      'id_part = [os_id id_part];
		    end
		    
		    process=Str(r.InRange(0,900000))
		    //% Create a 6-digit process number.
		    While Len(process)<5
		      process="0"+process
		    Wend
		    
		    out=id_part+process
		    
		    
		    While Left(out,1)="0"
		      out=Right(out,Len(out)-1)
		    Wend
		    
		    
		    
		  end
		  
		  out=orgroot+out
		  Return out
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UID_get_object_instance() As String
		  //-------------------------------------
		  //
		  //%GET_OBJECT_INSTANCE   Return the unique timestamp part of the UID.
		  //
		  //% Create a timestamp value that repeats just under 274 years and has a
		  //% minimum resolution of about 1/100 sec.
		  //-------------------------------------
		  Dim dd as date
		  Dim total as Double
		  Dim time as String
		  Dim value as Integer
		  //-------------------------------------
		  
		  dd = new date
		  total=dd.TotalSeconds
		  
		  time=Format(total,"#")
		  
		  value = Counter+1
		  Counter=value
		  value= value Mod 1000
		  
		  Return Time+Format(value,"#")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UID_Make() As String
		  //----------------------------------
		  // Make Unique UID value
		  //
		  //----------------------------------
		  Dim i as Integer
		  Dim temp,instance,object_instance as String
		  //----------------------------------
		  
		  // Matlab org root value
		  //const root= "1.3.6.1.4.1.9590.100.1.1"
		  
		  
		  
		  
		  
		  instance = UID_get_instance
		  object_instance = UID_get_object_instance
		  temp=UID_root+instance+"."+object_instance
		  
		  
		  i=len(temp)
		  
		  if i>64 Then
		    Break
		  end
		  
		  Return temp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write()
		  // Write the DICOM format into data elements
		  Write_DICOM_Elements_Image
		  Write_DICOM_Elements_Structure
		  Write_DICOM_Elements_Plan
		  Write_DICOM_Elements_Dose
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_DICOM_Elements_Dose()
		  //-------------------------------------
		  // Transfer DICOM data from dicom class
		  // to DICOM elements
		  //-------------------------------------
		  Dim k,i ,tt as Integer
		  Dim ee as Class_DICOM_Element
		  Dim dose as Class_DICOM_RTDose
		  Dim cc,found as Boolean
		  dim j,x,y,pos,level1_index, level2_index,item_level1_index,item_level2_index,length_level1,item_level1_length  as integer
		  //-------------------------------------
		  
		  
		  for i=0 to UBound(RT_Doses)
		    file=new Class_DICOM_File
		    dose=RT_Doses(i)
		    
		    if gPref.DICOM_Format=0 Then
		      // FileMetaInfoGroupLength
		      ee= new Class_DICOM_Element
		      ee.Tag_a="0002"
		      ee.Tag_b="0000"
		      cc=ee.Update
		      File.Elements.Append ee
		      
		      // FileMetaInfoVersion
		      ee= new Class_DICOM_Element
		      ee.Tag_a="0002"
		      ee.Tag_b="0001"
		      ee.Value="256"
		      cc=ee.Update
		      File.Elements.Append ee
		      
		      // MediaStorageSOPClassUID
		      ee= new Class_DICOM_Element
		      ee.Tag_a="0002"
		      ee.Tag_b="0002"
		      ee.Value=dose.MediaStorageSOPClassUID
		      cc=ee.Update
		      File.Elements.Append ee
		      
		      // MediaStorageSOPInstanceUID
		      ee= new Class_DICOM_Element
		      ee.Tag_a="0002"
		      ee.Tag_b="0003"
		      ee.Value=dose.MediaStorageSOPInstanceUID
		      cc=ee.Update
		      File.Elements.Append ee
		      
		      // TransferSyntax
		      ee= new Class_DICOM_Element
		      ee.Tag_a="0002"
		      ee.Tag_b="0010"
		      ee.Value=dose.TransferSyntaxUID
		      cc=ee.Update
		      File.Elements.Append ee
		      
		      // ImplementationClassUID
		      ee= new Class_DICOM_Element
		      ee.Tag_a="0002"
		      ee.Tag_b="0012"
		      ee.Value=dose.ImplementationClassUID
		      cc=ee.Update
		      File.Elements.Append ee
		    end
		    
		    // Image type
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0008"
		    ee.Value=dose.ImageType
		    cc=ee.Update
		    File.Elements.Append ee
		    
		    // Instance Creation Date
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0012"
		    ee.Value=dose.InstanceCreationDate
		    cc=ee.Update
		    File.Elements.Append ee
		    
		    // Instance creation time
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0013"
		    ee.Value=dose.InstanceCreationTime
		    cc=ee.Update
		    File.Elements.Append ee
		    
		    // SOPClassUID
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0016"
		    ee.Value=dose.SOPClassUID
		    cc=ee.Update
		    File.Elements.Append ee
		    
		    // SOPInstanceUID
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0018"
		    ee.Value=dose.SOPInstanceUID
		    cc=ee.Update
		    File.Elements.Append ee
		    File.UID_Name=dose.SOPInstanceUID
		    
		    // StudyDate
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0020"
		    ee.Value=dose.StudyDate
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Accession Date
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0022"
		    ee.Value=CStr(dose.AcquistionDate)
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // StudyTime
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0030"
		    ee.Value=dose.StudyTime
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    
		    // Acq time
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0032"
		    ee.Value=CStr(dose.AcquistionTime)
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // AccessionNumber
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0050"
		    ee.Value=dose.AccessionNumber
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Modality
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0060"
		    ee.Value=dose.Modality
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Manufacutre
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0070"
		    ee.Value=dose.Manufacturer
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // RP name
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0090"
		    ee.Value=dose.ReferringPhysicianName
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Station name
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="1010"
		    ee.Value=dose.StationName
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Study Description name
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="1030"
		    ee.Value=dose.StudyDescription
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Series Description name
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="103E"
		    ee.Value=dose.SeriesDescription
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    if gPref.DICOM_Format=1 Then
		      // Series Description name
		      ee= new Class_DICOM_Element
		      ee.Tag_a="0008"
		      ee.Tag_b="1048"
		      ee.Value=dose.Physician
		      File.Elements.Append ee
		      cc=ee.Update
		    end
		    
		    // Manufacture's Model Name
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="1090"
		    ee.Value=dose.Manufacturer_Model_Name
		    File.Elements.Append ee
		    cc=ee.Update
		    //----------------------------------------------------
		    
		    
		    // Patient Name
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0010"
		    ee.Tag_b="0010"
		    ee.Value=dose.PatientName
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Patient ID
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0010"
		    ee.Tag_b="0020"
		    ee.Value=dose.PatientID
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Patient Birthdate
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0010"
		    ee.Tag_b="0030"
		    ee.Value=dose.PatientBirthDate
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Patient Sex
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0010"
		    ee.Tag_b="0040"
		    ee.Value=dose.Sex
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Patient Age
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0010"
		    ee.Tag_b="1010"
		    ee.Value=dose.Age
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    
		    //-----------------------------------------------
		    // Slice Thicknes
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0018"
		    ee.Tag_b="0050"
		    ee.Value=str(dose.SliceThickness)
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Software Version
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0018"
		    ee.Tag_b="1020"
		    ee.Value=dose.Software_Version
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    
		    //-----------------------------------------------------
		    // Study Instance UID
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0020"
		    ee.Tag_b="000D"
		    ee.Value=dose.StudyInstanceUID
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Series Instance UID
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0020"
		    ee.Tag_b="000E"
		    ee.Value=dose.SeriesInstanceUID
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Study ID
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0020"
		    ee.Tag_b="0010"
		    ee.Value=dose.StudyID
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Series Number
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0020"
		    ee.Tag_b="0011"
		    ee.Value=dose.SeriesNumber
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Instance Number
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0020"
		    ee.Tag_b="0013"
		    ee.Value=dose.InstanceNumber
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Image Position Patient
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0020"
		    ee.Tag_b="0032"
		    ee.Value=dose.ImagePositionPatient
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Image Orientation Patient
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0020"
		    ee.Tag_b="0037"
		    ee.Value=dose.ImageOrientationPatient
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Frame of reference UID
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0020"
		    ee.Tag_b="0052"
		    ee.Value=dose.FrameOfReferenceUID
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Images in acquistion
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0020"
		    ee.Tag_b="1002"
		    ee.Value=CStr(dose.ImagesInAcquistion)
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // PositionReferenceIndicator
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0020"
		    ee.Tag_b="1040"
		    ee.Value=dose.PositionReferenceIndicator
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Slice Location
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0020"
		    ee.Tag_b="1041"
		    ee.Value=Format(dose.SliceLocation,"-0.0")
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    //-----------------------------------------------
		    // Image Presentation Group length
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0028"
		    ee.Tag_b="0000"
		    ee.Value=CStr(dose.Image_Presentation_Group_Length)
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // SamplesPerPixel
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0028"
		    ee.Tag_b="0002"
		    ee.Value=dose.SamplesPerPixel
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Photometric
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0028"
		    ee.Tag_b="0004"
		    ee.Value=dose.PhotometrixInter
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Number of Frames
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0028"
		    ee.Tag_b="0008"
		    ee.Value=Format(dose.NumberofFrames,"#")
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Frame Pointer
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0028"
		    ee.Tag_b="0009"
		    ee.Value=dose.FrameIncrementPointer
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Rows
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0028"
		    ee.Tag_b="0010"
		    ee.Value=Format(dose.rows,"#")
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Columns
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0028"
		    ee.Tag_b="0011"
		    ee.Value=Format(dose.columns,"#")
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Pixel Spacing
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0028"
		    ee.Tag_b="0030"
		    ee.Value=dose.PixelSpacing
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // BitsAllocated
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0028"
		    ee.Tag_b="0100"
		    ee.Value=Format(dose.BitsAllocated,"#")
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // BitsStored
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0028"
		    ee.Tag_b="0101"
		    ee.Value=Format(dose.BitsStored,"#")
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // HighBit
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0028"
		    ee.Tag_b="0102"
		    ee.Value=Format(dose.HighBit,"#")
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // PixelRepresentation
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0028"
		    ee.Tag_b="0103"
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Smallest Image Pixel Value
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0028"
		    ee.Tag_b="0106"
		    ee.Value=Format(dose.Smallest_Image_Pixel_Value,"-#")
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    //-----------------------------------------------
		    // DoseUnits
		    ee= new Class_DICOM_Element
		    ee.Tag_a="3004"
		    ee.Tag_b="0002"
		    ee.Value=dose.DoseUnits
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // DoseTypes
		    ee= new Class_DICOM_Element
		    ee.Tag_a="3004"
		    ee.Tag_b="0004"
		    ee.Value=dose.DoseType
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // DoseComment
		    ee= new Class_DICOM_Element
		    ee.Tag_a="3004"
		    ee.Tag_b="0006"
		    ee.Value=dose.DoseComment
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // DoseSummationType
		    ee= new Class_DICOM_Element
		    ee.Tag_a="3004"
		    ee.Tag_b="000A"
		    ee.Value=dose.DoseSummationType
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // GridFrameOfffset Vector
		    ee= new Class_DICOM_Element
		    ee.Tag_a="3004"
		    ee.Tag_b="000C"
		    ee.VM=InStr(dose.GridFrameOffsetVector,"\")+1
		    ee.Value=dose.GridFrameOffsetVector
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // DoseGridScaling
		    ee= new Class_DICOM_Element
		    ee.Tag_a="3004"
		    ee.Tag_b="000E"
		    ee.Value=Format(dose.DoseGridScaling,"-#.##########")
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Reference plan sequence
		    if UBound(dose.ReferencedRTPSequence)>-1 Then
		      ee= new Class_DICOM_Element
		      ee.Tag_a="300C"
		      ee.Tag_b="0002"
		      ee.Value="1"
		      File.Elements.Append ee
		      level1_index=UBound(File.Elements)
		      length_level1=0
		      cc=ee.Update
		      
		      for k=0 to UBound(dose.ReferencedRTPSequence)
		        //New item in Referenced sequence
		        ee= new Class_DICOM_Element
		        ee.Tag_a="FFFE"
		        ee.Tag_b="E000"
		        File.Elements.Append ee
		        cc=ee.Update
		        item_level1_length=0
		        item_level1_index=UBound(File.Elements)
		        
		        ee= new Class_DICOM_Element
		        ee.Tag_a="0008"
		        ee.Tag_b="1150"
		        ee.Value=dose.ReferencedRTPSequence(k).ReferencedSOPClassUID
		        cc=ee.Update
		        File.Elements.Append ee
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        ee= new Class_DICOM_Element
		        ee.Tag_a="0008"
		        ee.Tag_b="1155"
		        ee.Value=dose.ReferencedRTPSequence(k).ReferencedSOPInstanceUID
		        cc=ee.Update
		        File.Elements.Append ee
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        File.Elements(item_level1_index).length=item_level1_length
		        length_level1=length_level1+item_level1_length+8
		      Next
		      File.Elements(level1_index).length=length_level1
		    end
		    
		    
		    if UBound(dose.ReferencedStructureSetSeq)>-1 Then
		      // Reference Structure Set sequence
		      ee= new Class_DICOM_Element
		      ee.Tag_a="300C"
		      ee.Tag_b="0060"
		      ee.Value="1"
		      cc=ee.Update
		      File.Elements.Append ee
		      level1_index=UBound(File.Elements)
		      length_level1=0
		      
		      for k=0 to UBound(dose.ReferencedStructureSetSeq)
		        //New item in Referenced sequence
		        ee= new Class_DICOM_Element
		        ee.Tag_a="FFFE"
		        ee.Tag_b="E000"
		        File.Elements.Append ee
		        cc=ee.Update
		        
		        item_level1_length=0
		        item_level1_index=UBound(File.Elements)
		        
		        ee= new Class_DICOM_Element
		        ee.Tag_a="0008"
		        ee.Tag_b="1150"
		        ee.Value=dose.ReferencedStructureSetSeq(k).ReferencedSOPClassUID
		        cc=ee.Update
		        File.Elements.Append ee
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        ee= new Class_DICOM_Element
		        ee.Tag_a="0008"
		        ee.Tag_b="1155"
		        ee.Value=dose.ReferencedStructureSetSeq(k).ReferencedSOPInstanceUID
		        cc=ee.Update
		        File.Elements.Append ee
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        File.Elements(item_level1_index).length=item_level1_length
		        length_level1=length_level1+item_level1_length+8
		      Next
		      File.Elements(level1_index).length=length_level1
		      
		    end
		    
		    // PixelData
		    // (7FE0,0010)    PixelData    OW|OB    1    00\00\00\00\00\00\00\00\00\00\00\00...
		    ee= new Class_DICOM_Element
		    ee.Tag_a="7FE0"
		    ee.Tag_b="0010"
		    ReDim ee.PixelData(UBound(dose.PixelData))
		    for k=0 to UBound(ee.PixelData)
		      ee.PixelData(k)=dose.PixelData(k)
		    next
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    File.UID_Name=dose.SOPInstanceUID
		    File.TempName="RTDOSE_"+File.UID_Name
		    File.file=MainFolder.Child(file.TempName)
		    File.Write_DICOM
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_DICOM_Elements_Image()
		  //------------------------------------------------------
		  // DICOM Write Image file
		  //
		  //-------------------------------------------------------
		  dim i,j,k,pos as integer
		  dim found,signed as boolean
		  Dim Image as Class_DICOM_Image
		  Dim tmpf as Class_DICOM_File
		  Dim ee as Class_DICOM_Element
		  //================================================
		  
		  if MainFolder=Nil Then
		    Return
		  end
		  
		  for i=0 to UBound(RT_Images) // look for Image .dcm files
		    File=new Class_DICOM_File
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0000"
		    ee.Value=RT_Images(i).IdentifyingGroupLength
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0008"
		    ee.Value=RT_Images(i).Image_Type
		    found=ee.Update 
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0012"
		    ee.Value=str(RT_Images(i).InstanceCreationDate)
		    found=ee.Update 
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0013"
		    ee.Value=RT_Images(i).InstanceCreationTime
		    found=ee.Update 
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0016"
		    ee.Value=RT_Images(i).SOPClassUID
		    found=ee.Update
		     
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0018"
		    ee.Value=RT_Images(i).SOPInstanceUID
		    found=ee.Update
		     
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0020"
		    ee.Value=RT_Images(i).StudyDate
		    found=ee.Update 
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0021"
		    ee.Value=RT_Images(i).SeriesDate
		    found=ee.Update
		     
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0022"
		    ee.Value=RT_Images(i).AcquisitionDate
		    found=ee.Update
		     
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0030"
		    ee.Value=RT_Images(i).StudyTime
		    found=ee.Update
		     
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0031"
		    ee.Value=RT_Images(i).SeriesTime
		    found=ee.Update 
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0032"
		    ee.Value=RT_Images(i).AcquisitionTime
		    found=ee.Update
		     
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0050"
		    ee.Value=RT_Images(i).AccessionNumber
		    found=ee.Update 
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0060"
		    ee.Value=RT_Images(i).Modality
		    found=ee.Update
		     
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0070"
		    ee.Value=RT_Images(i).Manufacturer
		    found=ee.Update
		     
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0090"
		    ee.Value=RT_Images(i).ReferringPhysician
		    found=ee.Update
		     
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="1030"
		    ee.Value=RT_Images(i).StudyDescription
		    found=ee.Update 
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="103E"
		    ee.Value=RT_Images(i).SeriesDescription
		    found=ee.Update 
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="1048"
		    ee.Value=RT_Images(i).Physician
		    found=ee.Update 
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="2111"
		    ee.Value=RT_Images(i).DerivationDescription
		    found=ee.Update
		     
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0010"
		    ee.Tag_b="0000"
		    ee.Value=str(RT_Images(i).PatientGroupLength)
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0010"
		    ee.Tag_b="0010"
		    ee.Value=RT_Images(i).PatientName
		    found=ee.Update 
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0010"
		    ee.Tag_b="0020"
		    ee.Value=RT_Images(i).PatientID
		    found=ee.Update 
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0010"
		    ee.Tag_b="0030"
		    ee.Value=RT_Images(i).PatientBirthDate
		    found=ee.Update 
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0010"
		    ee.Tag_b="0040"
		    ee.Value=RT_Images(i).sex
		    found=ee.Update
		     
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0010"
		    ee.Tag_b="1010"
		    ee.Value=RT_Images(i).Age
		    found=ee.Update
		     
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0018"
		    ee.Tag_b="0000"
		    ee.Value=RT_Images(i).AcquisitionGroupLength
		    found=ee.Update
		     
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0018"
		    ee.Tag_b="0050"
		    ee.Value=Format(RT_Images(i).SliceThickness,"-0.0")
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0018"
		    ee.Tag_b="0060"
		    ee.Value=RT_Images(i).Kvp
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0018"
		    ee.Tag_b="1020"
		    ee.Value=RT_Images(i).SoftwareVersions
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0018"
		    ee.Tag_b="5100"
		    ee.Value=RT_Images(i).patient_position
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0020"
		    ee.Tag_b="0000"
		    ee.Value=RT_Images(i).RelationshipGroupLength
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0020"
		    ee.Tag_b="000D"
		    ee.Value=RT_Images(i).StudyInstanceUID
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0020"
		    ee.Tag_b="000E"
		    ee.Value=RT_Images(i).SeriesInstanceUID
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0020"
		    ee.Tag_b="0010"
		    ee.Value=RT_Images(i).StudyID
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0020"
		    ee.Tag_b="0011"
		    ee.Value=RT_Images(i).SeriesNumber
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0020"
		    ee.Tag_b="0012"
		    ee.Value=str(RT_Images(i).AcquisitionNumber,"#")
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0020"
		    ee.Tag_b="0013"
		    ee.Value=str(RT_Images(i).InstanceNumber,"#")
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0020"
		    ee.Tag_b="0032"
		    ee.Value=RT_Images(i).ImagePositionPatient
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0020"
		    ee.Tag_b="0037"
		    ee.Value=RT_Images(i).ImageOrientationPatient
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0020"
		    ee.Tag_b="0052"
		    ee.Value=RT_Images(i).FrameOfReferenceUID
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0020"
		    ee.Tag_b="1002"
		    ee.Value=Str(RT_Images(i).ImagesinAcquisition,"#")
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0020"
		    ee.Tag_b="1040"
		    ee.Value=(RT_Images(i).PositionReferenceIndicator)
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0020"
		    ee.Tag_b="1041"
		    ee.Value=Format(RT_Images(i).SliceLocation,"-0.0")
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0028"
		    ee.Tag_b="0000"
		    ee.Value=Format(RT_Images(i).ImagePresenatationGroupLength,"#")
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0028"
		    ee.Tag_b="0002"
		    ee.Value=RT_Images(i).SampleperPixel
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0028"
		    ee.Tag_b="0004"
		    ee.Value=RT_Images(i).PhotometricInterpretation
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0028"
		    ee.Tag_b="0010"
		    ee.Value=Format(RT_Images(i).row,"#")
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0028"
		    ee.Tag_b="0011"
		    ee.Value=Format(RT_Images(i).Columns,"#")
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0028"
		    ee.Tag_b="0030"
		    ee.Value=RT_Images(i).PixelSpacing
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0028"
		    ee.Tag_b="0100"
		    ee.Value=Format(RT_Images(i).BitsAllocated,"#")
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0028"
		    ee.Tag_b="0101"
		    ee.Value=Format(RT_Images(i).BitsStored,"#")
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0028"
		    ee.Tag_b="0102"
		    ee.Value=Format(RT_Images(i).highbit,"#")
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0028"
		    ee.Tag_b="0103"
		    ee.Value=Format(RT_Images(i).PixelRepresentation,"#")
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0028"
		    ee.Tag_b="0106"
		    ee.Value=Format(RT_Images(i).SmallestImagePixelValue,"#")
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0028"
		    ee.Tag_b="1052"
		    ee.Value=Format(RT_Images(i).rescaleintercept,"-#.0")
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0028"
		    ee.Tag_b="1053"
		    ee.Value=Format(RT_Images(i).rescaleslope,"0.0")
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="7FE0"
		    ee.Tag_b="0000"
		    ee.Value=Format(RT_Images(i).PixelDataGroupLength,"#")
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="7FE0"
		    ee.Tag_b="0010"
		    ReDim ee.PixelData(UBound(RT_Images(i).PixelData))
		    for k=0 to UBound(ee.PixelData)
		      ee.PixelData(k)=RT_Images(i).PixelData(k)
		    next
		    found=ee.Update
		    
		    File.UID_Name=RT_Images(i).SOPInstanceUID
		    if gPref.DICOM_FileStructure=2 Then
		      //XiO format
		      File.TempName=Replace(RT_Images(i).PatientName,"^","_")
		      File.TempName="CTI."+RT_Images(i).PatientID+"."+RT_Images(i).StudyID+"."+str(RT_Images(i).InstanceNumber)+"."+File.TempName
		    else
		      File.TempName="CT_"+File.UID_Name
		    end
		    
		    File.file=MainFolder.Child(file.TempName)
		    
		    File.Write_DICOM
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_DICOM_Elements_Plan()
		  //-------------------------------------
		  // Transfer DICOM data from dicom class
		  // to DICOM elements
		  // Model DICOM format was a Tomotherapy plan file
		  //
		  // Created Feb 2013 by A Alexander
		  //-------------------------------------
		  Dim k,j,i,c,templength ,tt,level1_index, level2_index,level3_index,item_level1_index,item_level2_index as Integer
		  Dim level1_length,level2_length,level3_length,item_level1_length,item_level2_length,item_level3_length,item_level3_index as Integer
		  Dim ee as Class_DICOM_Element
		  Dim planclass as Class_DICOM_Plan
		  Dim cps as Class_DICOM_Plan_ControlPointSequence
		  Dim cc as Boolean
		  //-------------------------------------
		  
		  
		  for i=0 to UBound(RT_Plan)
		    file=new Class_DICOM_File
		    planclass=RT_Plan(i)
		    
		    // Identifying group length
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0000"
		    ee.Value="340"
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Instance Creation Date
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0012"
		    ee.Value=planclass.InstanceCreationDate
		    cc=ee.Update
		    File.Elements.Append ee
		    
		    // Instance creation time
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0013"
		    ee.Value=planclass.InstanceCreationTime
		    cc=ee.Update
		    File.Elements.Append ee
		    
		    // SOPClassUID
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0016"
		    ee.Value=planclass.SOPClassUID
		    cc=ee.Update
		    File.Elements.Append ee
		    
		    // SOPInstanceUID
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0018"
		    ee.Value=planclass.SOPInstanceUID
		    cc=ee.Update
		    File.Elements.Append ee
		    File.UID_Name=planclass.SOPInstanceUID
		    
		    // StudyDate
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0020"
		    ee.Value=planclass.StudyDate
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Accession Date
		    'ee= new Class_DICOM_Element
		    'ee.Tag_a="0008"
		    'ee.Tag_b="0022"
		    'ee.Value=CStr(dose.AcquistionDate)
		    'File.Elements.Append ee
		    
		    // StudyTime
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0030"
		    ee.Value=planclass.StudyTime
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    '// Acq time
		    'ee= new Class_DICOM_Element
		    'ee.Tag_a="0008"
		    'ee.Tag_b="0032"
		    'ee.Value=CStr(dose.AcquistionTime)
		    'File.Elements.Append ee
		    
		    // AccessionNumber
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0050"
		    ee.Value=planclass.AccessionNumber
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Modality
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0060"
		    ee.Value=planclass.Modality
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Manufacutre
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0070"
		    ee.Value=planclass.Manufacturer
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // RP name
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="0090"
		    ee.Value=planclass.ReferringPhysicianName
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Station name
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="1010"
		    ee.Value=planclass.StationName
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Study Description name
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="1030"
		    ee.Value=planclass.StudyDescription
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Series Description name
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="103E"
		    ee.Value=planclass.SeriesDescription
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Series Description name
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="1048"
		    ee.Value=planclass.PhysicianofRecord
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Operator Name
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="1070"
		    ee.Value=planclass.OperatorsName
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Manufacture's Model Name
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0008"
		    ee.Tag_b="1090"
		    ee.Value=planclass.Manufacturer_Model_Name
		    File.Elements.Append ee
		    cc=ee.Update
		    //----------------------------------------------------
		    
		    // Patient Group Length
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0010"
		    ee.Tag_b="0000"
		    ee.Value="80"
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Patient Name
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0010"
		    ee.Tag_b="0010"
		    ee.Value=planclass.PatientName
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Patient ID
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0010"
		    ee.Tag_b="0020"
		    ee.Value=planclass.PatientID
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Patient Birthdate
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0010"
		    ee.Tag_b="0030"
		    ee.Value=planclass.Birthdate
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Patient Sex
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0010"
		    ee.Tag_b="0040"
		    ee.Value=planclass.Sex
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Patient Age
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0010"
		    ee.Tag_b="1010"
		    ee.Value=planclass.Age
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    //-----------------------------------------------
		    // Acquistion Group Length
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0018"
		    ee.Tag_b="0000"
		    ee.Value=str(32)
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Software Version
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0018"
		    ee.Tag_b="1020"
		    ee.Value=planclass.SoftwareVersions
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    //-----------------------------------------------------
		    // Relationship Group length
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0020"
		    ee.Tag_b="0000"
		    ee.Value=planclass.RelationshipGroupLength
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Study Instance UID
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0020"
		    ee.Tag_b="000D"
		    ee.Value=planclass.StudyInstanceUID
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Series Instance UID
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0020"
		    ee.Tag_b="000E"
		    ee.Value=planclass.SeriesInstanceUID
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Study ID
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0020"
		    ee.Tag_b="0010"
		    ee.Value=planclass.StudyID
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Series Number
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0020"
		    ee.Tag_b="0011"
		    ee.Value=planclass.SeriesNumber
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Instance Number
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0020"
		    ee.Tag_b="0013"
		    ee.Value=planclass.InstanceNumber
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    '// Image Position Patient
		    'ee= new Class_DICOM_Element
		    'ee.Tag_a="0020"
		    'ee.Tag_b="0032"
		    '
		    'ee.Value=planclass.ImagePositionPatient
		    'File.Elements.Append ee
		    
		    '// Image Orientation Patient
		    'ee= new Class_DICOM_Element
		    'ee.Tag_a="0020"
		    'ee.Tag_b="0037"
		    '
		    'ee.Value=dose.ImageOrientationPatient
		    'File.Elements.Append ee
		    
		    // Frame of reference UID
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0020"
		    ee.Tag_b="0052"
		    ee.Value=planclass.FrameOfReferenceUID
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // PositionReferenceIndicator
		    ee= new Class_DICOM_Element
		    ee.Tag_a="0020"
		    ee.Tag_b="1040"
		    ee.Value=planclass.PositionReferenceIndicator
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    //-----------------------------------------------
		    // Length Tomo Proprietary
		    ee= new Class_DICOM_Element
		    ee.Tag_a="300A"
		    ee.Tag_b="0000"
		    ee.Value="8   "
		    ee.length=LenB(ee.Value)
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Plan Label
		    ee= new Class_DICOM_Element
		    ee.Tag_a="300A"
		    ee.Tag_b="0002"
		    ee.Value=planclass.RTPlan_Label
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Plan Name
		    ee= new Class_DICOM_Element
		    ee.Tag_a="300A"
		    ee.Tag_b="0003"
		    ee.Value=planclass.RTPlan_Name
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Plan RTPlan_Description
		    ee= new Class_DICOM_Element
		    ee.Tag_a="300A"
		    ee.Tag_b="0004"
		    ee.Value=planclass.RTPlan_Description
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Plan RTPlan_Description
		    ee= new Class_DICOM_Element
		    ee.Tag_a="300A"
		    ee.Tag_b="0006"
		    ee.Value=planclass.RTPlan_Date
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Plan RTPlan_Description
		    ee= new Class_DICOM_Element
		    ee.Tag_a="300A"
		    ee.Tag_b="0007"
		    ee.Value=planclass.RTPlan_Time
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Plan RTPlan_Description
		    ee= new Class_DICOM_Element
		    ee.Tag_a="300A"
		    ee.Tag_b="000C"
		    ee.Value=planclass.RTPlan_Geometry
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    // Plan RTPlan_Description
		    ee= new Class_DICOM_Element
		    ee.Tag_a="300A"
		    ee.Tag_b="000E"
		    ee.Value=planclass.Prescription_Description
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    //---------------------------------------------------------------------------------------------------
		    // Plan Dose Reference Sequence
		    if UBound(planclass.DoseReferenceSequence)>-1 Then
		      ee= new Class_DICOM_Element
		      ee.Tag_a="300A"
		      ee.Tag_b="0010"
		      ee.Value="1"
		      File.Elements.Append ee
		      cc=ee.Update
		      level1_index=UBound(File.Elements)
		      level1_length=0
		      
		      
		      for k=0 to UBound(planclass.DoseReferenceSequence)
		        // New Item
		        ee= new Class_DICOM_Element
		        ee.Tag_a="FFFE"
		        ee.Tag_b="E000"
		        File.Elements.Append ee
		        cc=ee.Update
		        item_level1_length=0
		        item_level1_index=UBound(File.Elements)
		        
		        // Referenced ROI number
		        ee= new Class_DICOM_Element
		        ee.Tag_a="3006"
		        ee.Tag_b="0084"
		        File.Elements.Append ee
		        cc=ee.Update
		        ee.Value=Str(planclass.DoseReferenceSequence(k).ReferencedROINumb)
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        // Dose Referenced number
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="0012"
		        
		        File.Elements.Append ee
		        ee.Value=Str(planclass.DoseReferenceSequence(k).DoseReferenceNumber)
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        // Dose Referenced Stru Type
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="0014"
		        File.Elements.Append ee
		        ee.Value=(planclass.DoseReferenceSequence(k).DoseReferenceStructureType)
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        // Dose Referenced Description
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="0016"
		        File.Elements.Append ee
		        ee.Value=(planclass.DoseReferenceSequence(k).DoseReferenceDescription)
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        
		        // Dose Referenced Type
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="0020"
		        File.Elements.Append ee
		        ee.Value=(planclass.DoseReferenceSequence(k).DoseReferenceType)
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        // Constraint Weight 
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="0021"
		        File.Elements.Append ee
		        ee.Value=Format(planclass.DoseReferenceSequence(k).ConstraintWeight,"0.0")
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        
		        if planclass.DoseReferenceSequence(k).DoseReferenceType="ORGAN_AT_RISK" Then
		          // Constraint OrganatRiskFullVolumeDose
		          ee= new Class_DICOM_Element
		          ee.Tag_a="300A"
		          ee.Tag_b="002A"
		          File.Elements.Append ee
		          ee.Value=Format(planclass.DoseReferenceSequence(k).OrganatRiskFullVolumeDose,"0.0")
		          cc=ee.Update  
		          item_level1_length=item_level1_length+ee.Element_Length
		          
		          // Constraint OrganatRisk maximum dose
		          ee= new Class_DICOM_Element
		          ee.Tag_a="300A"
		          ee.Tag_b="002C"
		          File.Elements.Append ee
		          ee.Value=Format(planclass.DoseReferenceSequence(k).OrganatRiskMaximumDose,"0.0")
		          cc=ee.Update  
		          item_level1_length=item_level1_length+ee.Element_Length
		          
		          // Constraint OrganatRisk Overdose volume fraction
		          ee= new Class_DICOM_Element
		          ee.Tag_a="300A"
		          ee.Tag_b="002D"
		          File.Elements.Append ee
		          ee.Value=Format(planclass.DoseReferenceSequence(k).OrganatRiskOverdoseVolumeFraction,"0.00")
		          cc=ee.Update  
		          item_level1_length=item_level1_length+ee.Element_Length
		          
		          
		          if gPref.DICOM_FileStructure=1 Then
		            // Tomo tags
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300D"
		            ee.Tag_b="0010"
		            File.Elements.Append ee
		            ee.Value="TOMO_HA_01"
		            cc=ee.Update  
		            item_level1_length=item_level1_length+ee.Element_Length
		            
		            // Tomo tags
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300D"
		            ee.Tag_b="1010"
		            File.Elements.Append ee
		            ee.Value=(planclass.DoseReferenceSequence(k).Tomo_Blocked)
		            cc=ee.Update  
		            item_level1_length=item_level1_length+ee.Element_Length
		            
		            // Tomo tags
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300D"
		            ee.Tag_b="1012"
		            File.Elements.Append ee
		            ee.Value=Str(planclass.DoseReferenceSequence(k).Tomo_Overlap_Prio,"0")
		            cc=ee.Update  
		            item_level1_length=item_level1_length+ee.Element_Length
		            
		            // Tomo tags
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300D"
		            ee.Tag_b="1018"
		            File.Elements.Append ee
		            ee.Value=Str(planclass.DoseReferenceSequence(k).Tomo_DV_Pen,"0")
		            cc=ee.Update  
		            item_level1_length=item_level1_length+ee.Element_Length
		            
		            // Tomo tags
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300D"
		            ee.Tag_b="1019"
		            File.Elements.Append ee
		            ee.Value=Str(planclass.DoseReferenceSequence(k).Tomo_MaxDose_Pen,"0")
		            cc=ee.Update  
		            item_level1_length=item_level1_length+ee.Element_Length
		            
		          end
		          
		        else 
		          // For target arrays
		          // Target Min dose
		          ee= new Class_DICOM_Element
		          ee.Tag_a="300A"
		          ee.Tag_b="0025"
		          File.Elements.Append ee
		          ee.Value=Format(planclass.DoseReferenceSequence(k).TargetMinDose,"0.0")
		          cc=ee.Update  
		          item_level1_length=item_level1_length+ee.Element_Length
		          
		          // Target Px dose
		          ee= new Class_DICOM_Element
		          ee.Tag_a="300A"
		          ee.Tag_b="0026"
		          File.Elements.Append ee
		          ee.Value=Format(planclass.DoseReferenceSequence(k).TargetPxDose,"0.0")
		          cc=ee.Update  
		          item_level1_length=item_level1_length+ee.Element_Length
		          
		          // Target max dose
		          ee= new Class_DICOM_Element
		          ee.Tag_a="300A"
		          ee.Tag_b="0027"
		          File.Elements.Append ee
		          ee.Value=Format(planclass.DoseReferenceSequence(k).TargetMaxDose,"0.0")
		          cc=ee.Update  
		          item_level1_length=item_level1_length+ee.Element_Length
		          
		          // Target Undose volume limit
		          ee= new Class_DICOM_Element
		          ee.Tag_a="300A"
		          ee.Tag_b="0028"
		          File.Elements.Append ee
		          ee.Value=Format(planclass.DoseReferenceSequence(k).TargetUnderDoseVolume,"0.000")
		          cc=ee.Update  
		          item_level1_length=item_level1_length+ee.Element_Length
		          
		          if gPref.DICOM_FileStructure=1 Then
		            // Tomo tags
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300D"
		            ee.Tag_b="0010"
		            File.Elements.Append ee
		            ee.Value="TOMO_HA_01"
		            cc=ee.Update  
		            item_level1_length=item_level1_length+ee.Element_Length
		            
		            // Tomo tags
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300D"
		            ee.Tag_b="1010"
		            File.Elements.Append ee
		            ee.Value=(planclass.DoseReferenceSequence(k).Tomo_Blocked)
		            cc=ee.Update  
		            item_level1_length=item_level1_length+ee.Element_Length
		            
		            // Tomo tags
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300D"
		            ee.Tag_b="1012"
		            File.Elements.Append ee
		            ee.Value=Str(planclass.DoseReferenceSequence(k).Tomo_Overlap_Prio,"0")
		            cc=ee.Update  
		            item_level1_length=item_level1_length+ee.Element_Length
		            
		            // Tomo tags min dose pen.
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300D"
		            ee.Tag_b="1016"
		            File.Elements.Append ee
		            ee.Value=Str(planclass.DoseReferenceSequence(k).Tomo_MinDose_Pen,"0")
		            cc=ee.Update  
		            item_level1_length=item_level1_length+ee.Element_Length
		            
		            // Tomo tags
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300D"
		            ee.Tag_b="1017"
		            File.Elements.Append ee
		            ee.Value=Str(planclass.DoseReferenceSequence(k).Tomo_MaxDose_Pen,"0")
		            cc=ee.Update  
		            item_level1_length=item_level1_length+ee.Element_Length
		            
		            // Tomo tags
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300D"
		            ee.Tag_b="101B"
		            File.Elements.Append ee
		            ee.Value=planclass.DoseReferenceSequence(k).Tomo_101B
		            cc=ee.Update
		            item_level1_length=item_level1_length+ee.Element_Length
		            
		          end
		        end
		        
		        // Attach final length to item
		        File.Elements(item_level1_index).length=item_level1_length
		        
		        level1_length=level1_length+item_level1_length+8
		      Next
		      // Asign level 1 length to element
		      File.Elements(level1_index).length=level1_length
		    end
		    
		    //---------------------------------------------------------------------------------------------------
		    // Fraction group sequence
		    if UBound(planclass.FractionGroupSequence)>-1 Then
		      level1_length=0
		      ee= new Class_DICOM_Element
		      ee.Tag_a="300A"
		      ee.Tag_b="0070"
		      File.Elements.Append ee
		      level1_index=UBound(File.Elements)
		      cc=ee.Update
		      
		      for k=0 to UBound(planclass.FractionGroupSequence)
		        // New Item
		        ee= new Class_DICOM_Element
		        ee.Tag_a="FFFE"
		        ee.Tag_b="E000"
		        cc=ee.Update
		        File.Elements.Append ee
		        item_level1_length=0 
		        item_level1_index=UBound(File.Elements)
		        
		        // Fraction group number
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="0071"
		        ee.Value=Str(planclass.FractionGroupSequence(k).fractiongroupnumber)
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        // number of fractions planned
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="0078"
		        ee.Value=Str(planclass.FractionGroupSequence(k).numberoffractionsplanned)
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        // Number of beams
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="0080"
		        ee.Value=Str(planclass.FractionGroupSequence(k).numberofbeams)
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        // Number of brachy application
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="00A0"
		        ee.Value=Str(planclass.FractionGroupSequence(k).NumberofBrachyApp)
		        cc=ee.Update  
		        File.Elements.Append ee
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        //Referemced beam sequence
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300C"
		        ee.Tag_b="0004"
		        File.Elements.Append ee
		        level2_index=UBound(file.Elements)
		        level2_length=0
		        cc=ee.Update
		        
		        
		        for tt=0 to UBound(planclass.FractionGroupSequence(k).Referencedbeamsequence)
		          //  New Item 
		          ee= new Class_DICOM_Element
		          ee.Tag_a="FFFE"
		          ee.Tag_b="E000"
		          cc=ee.Update  
		          File.Elements.Append ee
		          item_level2_index=UBound(File.Elements)
		          item_level2_length=0
		          
		          
		          //  beam dose weight point
		          ee= new Class_DICOM_Element
		          ee.Tag_a="300A"
		          ee.Tag_b="0082"
		          ee.Value=planclass.FractionGroupSequence(k).Referencedbeamsequence(tt).Beam_Dose_Point
		          cc=ee.Update
		          File.Elements.Append ee
		          item_level2_length=item_level2_length+ee.Element_Length
		          
		          //  beam dose
		          ee= new Class_DICOM_Element
		          ee.Tag_a="300A"
		          ee.Tag_b="0084"
		          ee.Value=Format(planclass.FractionGroupSequence(k).Referencedbeamsequence(tt).Beamdose,"-0.000")
		          cc=ee.Update  
		          File.Elements.Append ee
		          item_level2_length=item_level2_length+ee.Element_Length
		          
		          //  beam meterset
		          ee= new Class_DICOM_Element
		          ee.Tag_a="300A"
		          ee.Tag_b="0086"
		          ee.Value=Str(planclass.FractionGroupSequence(k).Referencedbeamsequence(tt).BeamMeterset)
		          cc=ee.Update  
		          File.Elements.Append ee
		          item_level2_length=item_level2_length+ee.Element_Length
		          
		          //  beam Referencedbeamnumber
		          ee= new Class_DICOM_Element
		          ee.Tag_a="300C"
		          ee.Tag_b="0006"
		          ee.Value=Str(planclass.FractionGroupSequence(k).Referencedbeamsequence(tt).Referencedbeamnumber)
		          cc=ee.Update  
		          File.Elements.Append ee
		          item_level2_length=item_level2_length+ee.Element_Length
		          
		          if gPref.DICOM_FileStructure=1 Then
		            //  beam Tomo tag
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300D"
		            ee.Tag_b="0010"
		            ee.Value="TOMO_HA_01"
		            cc=ee.Update  
		            File.Elements.Append ee
		            item_level2_length=item_level2_length+ee.Element_Length
		            
		            //  beam Tomo tag
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300D"
		            ee.Tag_b="1040"
		            ee.Value="15.0"
		            cc=ee.Update  
		            File.Elements.Append ee
		            item_level2_length=item_level2_length+ee.Element_Length
		            
		            //  beam Tomo tag
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300D"
		            ee.Tag_b="1080"
		            ee.Value="0.478333"
		            cc=ee.Update  
		            File.Elements.Append ee
		            item_level2_length=item_level2_length+ee.Element_Length
		            
		          end
		          // Add final length to item
		          File.Elements(item_level2_index).length=item_level2_length
		          // Add item length to level length 
		          level2_length=level2_length+item_level2_length+8
		        Next
		        // Asign level 2 length to sequence
		        File.Elements(level2_index).length=level2_length
		        // Add level 2 length to level 1
		        item_level1_length=item_level1_length+level2_length+8
		        
		        // Add final le
		        File.Elements(item_level1_index).length=item_level1_length
		        level1_length=level1_length+item_level1_length+8
		      Next
		      // Asign level 1 length to element
		      File.Elements(level1_index).length=level1_length
		    end
		    
		    
		    
		    
		    //---------------Beam Sequence------------------------------------------------------------------------------------
		    // Beam Sequence
		    if UBound(planclass.BeamSequence)>-1 Then
		      ee= new Class_DICOM_Element
		      ee.Tag_a="300A"
		      ee.Tag_b="00B0"
		      File.Elements.Append ee
		      cc=ee.Update
		      level1_length=0
		      level1_index=UBound(File.Elements)
		      
		      for k=0 to UBound(planclass.BeamSequence)
		        // New Beam sequence
		        ee= new Class_DICOM_Element
		        ee.Tag_a="FFFE"
		        ee.Tag_b="E000"
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=0
		        item_level1_index=UBound(File.Elements)
		        
		        // Manufacturer
		        ee= new Class_DICOM_Element
		        ee.Tag_a="0008"
		        ee.Tag_b="0070"
		        ee.Value=planclass.Manufacturer
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        // Manufacturer's model name
		        ee= new Class_DICOM_Element
		        ee.Tag_a="0008"
		        ee.Tag_b="1090"
		        ee.Value=planclass.Manufacturer_Model_Name
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        // Manufacturer's model name
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="00B2"
		        ee.Value=planclass.BeamSequence(k).TreatmentMachineName
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        // Primary Dos Unit 
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="00B3"
		        ee.Value=planclass.BeamSequence(k).PrimaryDosimeterUnit
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        // Source - Axis Distance
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="00B4"
		        ee.Value=Format(planclass.BeamSequence(k).SAD,"-0.0")
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        
		        //---------------Beam Limiting Device Sequence------------------------------------------------------------------------------------
		        // Beam Sequence
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="00B6"
		        ee.Value="1"
		        cc=ee.Update
		        ee.length=templength
		        File.Elements.Append ee
		        level2_length=0
		        level2_index=UBound(File.Elements)
		        
		        
		        for c=0 to UBound(planclass.BeamSequence(k).BeamLimitingDevice)
		          // RT beam limiting device type
		          ee= new Class_DICOM_Element
		          ee.Tag_a="FFFE"
		          ee.Tag_b="E000"
		          File.Elements.Append ee
		          cc=ee.Update  
		          item_level2_length=0
		          item_level2_index=UBound(File.Elements)
		          
		          ee= new Class_DICOM_Element
		          ee.Tag_a="300A"
		          ee.Tag_b="00B8"
		          ee.Value=planclass.BeamSequence(k).BeamLimitingDevice(c).RTBeamLimitingDeviceType
		          File.Elements.Append ee
		          cc=ee.Update  
		          item_level2_length=ee.Element_Length+item_level2_length
		          
		          
		          // RT beam limiting device type
		          ee= new Class_DICOM_Element
		          ee.Tag_a="300A"
		          ee.Tag_b="00BA"
		          ee.Value=(planclass.BeamSequence(k).BeamLimitingDevice(c).SourceToBeamLimitingDeviceDistance)
		          File.Elements.Append ee
		          cc=ee.Update
		          item_level2_length=ee.Element_Length+item_level2_length
		          
		          
		          // RT beam limiting device type
		          ee= new Class_DICOM_Element
		          ee.Tag_a="300A"
		          ee.Tag_b="00BC"
		          ee.Value=(planclass.BeamSequence(k).BeamLimitingDevice(c).NumberofLeafjawPairs)
		          File.Elements.Append ee
		          cc=ee.Update  
		          item_level2_length=ee.Element_Length+item_level2_length
		          
		          if InStr(planclass.BeamSequence(k).BeamLimitingDevice(c).RTBeamLimitingDeviceType,"MLC")>0 Then
		            // RT beam limiting Leaf Position Boundaries
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300A"
		            ee.Tag_b="00BE"
		            ee.Value=(planclass.BeamSequence(k).BeamLimitingDevice(c).LeafPositionBoundaries)
		            File.Elements.Append ee
		            cc=ee.Update
		            item_level2_length=ee.Element_Length+item_level2_length
		          end
		          
		          // Assign value length to item, and update level 2 length
		          File.Elements(item_level2_index).length=item_level2_length
		          level2_length=level2_length+item_level2_length+8
		        Next
		        File.Elements(level2_index).length=level2_length
		        item_level1_length=item_level1_length+level2_length+8
		        
		        // Beam number
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="00C0"
		        ee.Value=Str(planclass.BeamSequence(k).BeamNumber,"0")
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        // Beam Name
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="00C2"
		        ee.Value=planclass.BeamSequence(k).BeamName
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        // Beam Description
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="00C3"
		        ee.Value=planclass.BeamSequence(k).BeamDescrip
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        // Beam Type
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="00C4"
		        ee.Value=planclass.BeamSequence(k).BeamType
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        // Radiation Type
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="00C6"
		        ee.Value=planclass.BeamSequence(k).RadiationType
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        // Treatmetn Delivery Type
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="00CE"
		        ee.Value=planclass.BeamSequence(k).TreatmentDeliveryType
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        // Number of wedge
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="00D0"
		        ee.Value=Format(planclass.BeamSequence(k).NumberofWedges,"0")
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        // Number of Compensators
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="00E0"
		        ee.Value=Format(planclass.BeamSequence(k).NumberofCompensators,"#")
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        // Number of Boli
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="00ED"
		        ee.Value=Format(planclass.BeamSequence(k).NumberofBoli,"#")
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        // Number of Blocks
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="00F0"
		        ee.Value=Format(planclass.BeamSequence(k).NumberofBlocks,"#")
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        // Final CMW
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="010E"
		        ee.Value=Format(planclass.BeamSequence(k).FinalCimulativeMetersetWeight,"0.0")
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        // Final Number of control points
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="0110"
		        ee.Value=Format(planclass.BeamSequence(k).NumberofControlPoints,"0")
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        
		        //---------------Control Point Sequence ------------------------------------------------------------------------------------
		        // Control Point Sequence
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="0111"
		        cc=ee.Update
		        File.Elements.Append ee
		        level2_length=0
		        level2_index=UBound(File.Elements)
		        for c=0 to UBound(planclass.BeamSequence(k).ControlPointSequence)
		          //New item in control point sequence
		          ee= new Class_DICOM_Element
		          ee.Tag_a="FFFE"
		          ee.Tag_b="E000"
		          
		          File.Elements.Append ee
		          cc=ee.Update  
		          item_level2_length=0
		          item_level2_index=UBound(File.Elements)
		          cps=planclass.BeamSequence(k).ControlPointSequence(c)
		          
		          //--------Control point index
		          ee= new Class_DICOM_Element
		          ee.Tag_a="300A"
		          ee.Tag_b="0112"
		          ee.Value=Format(cps.ControlPointIndex,"#")
		          
		          File.Elements.Append ee
		          cc=ee.Update  
		          item_level2_length=ee.Element_Length+item_level2_length
		          
		          
		          if c=0 Then
		            //--------Nominal beam energy
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300A"
		            ee.Tag_b="0114"
		            ee.Value=Format(cps.NominalBeamEnergy,"0.0")
		            File.Elements.Append ee
		            cc=ee.Update  
		            item_level2_length=ee.Element_Length+item_level2_length
		          end
		          
		          
		          if UBound(cps.BeamLimitingDevicePositionSequence)>0 Then
		            //---------------Beam limiting Device Position Sequence ------------------------------------------------------------------------------------
		            // Beam limiting Device Position Sequence
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300A"
		            ee.Tag_b="011A"
		            ee.Value="1"
		            cc=ee.Update
		            File.Elements.Append ee
		            level3_length=0
		            level3_index=UBound(File.Elements)
		            
		            for j=0 to UBound(cps.BeamLimitingDevicePositionSequence)
		              //New item in control point sequence
		              ee= new Class_DICOM_Element
		              ee.Tag_a="FFFE"
		              ee.Tag_b="E000"
		              File.Elements.Append ee
		              cc=ee.Update  
		              item_level3_length=0
		              item_level3_index=UBound(File.Elements)
		              
		              //--------RT beam limiting device type
		              ee= new Class_DICOM_Element
		              ee.Tag_a="300A"
		              ee.Tag_b="00B8"
		              ee.Value=cps.BeamLimitingDevicePositionSequence(j).RTBeamLimitingDevice
		              File.Elements.Append ee
		              cc=ee.Update  
		              item_level3_length=ee.Element_Length+item_level3_length
		              
		              //--------RT beam limiting device type
		              ee= new Class_DICOM_Element
		              ee.Tag_a="300A"
		              ee.Tag_b="011C"
		              ee.Value=cps.BeamLimitingDevicePositionSequence(j).LeafjawPositions
		              File.Elements.Append ee
		              cc=ee.Update  
		              item_level3_length=ee.Element_Length+item_level3_length
		              
		              
		              // Assign value length to item, and update level 3 length
		              File.Elements(item_level3_index).length=item_level3_length
		              level3_length=level3_length+item_level3_length+8
		              
		            Next
		            
		            File.Elements(level3_index).length=level3_length
		            item_level2_length=item_level2_length+level3_length+8
		          end
		          
		          
		          if gPref.DICOM_FileStructure=1 or c=0 Then
		            //--------Gantry Angle
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300A"
		            ee.Tag_b="011E"
		            ee.Value=Format(cps.GantryAngle,"-#.000000")
		            File.Elements.Append ee
		            cc=ee.Update  
		            item_level2_length=ee.Element_Length+item_level2_length
		          end
		          
		          
		          if c=0 Then
		            
		            //--------Gantry Rotation
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300A"
		            ee.Tag_b="011F"
		            ee.Value=cps.GantryRotationDirection
		            File.Elements.Append ee
		            cc=ee.Update  
		            item_level2_length=ee.Element_Length+item_level2_length
		            
		            
		            //--------Beam limiting device angle 
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300A"
		            ee.Tag_b="0120"
		            ee.Value=Format(cps.Beamlimitngdeviceangle,"0.0")
		            File.Elements.Append ee
		            cc=ee.Update  
		            item_level2_length=ee.Element_Length+item_level2_length
		            
		            
		            //--------Beam limiting device rotation direction
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300A"
		            ee.Tag_b="0121"
		            ee.Value=cps.BeamLimitingDeviceRotationDirection
		            File.Elements.Append ee
		            cc=ee.Update  
		            item_level2_length=ee.Element_Length+item_level2_length
		            
		            
		            //--------Patient support angle
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300A"
		            ee.Tag_b="0122"
		            ee.Value=Format(cps.PatientSupportAngle,"0.0")
		            File.Elements.Append ee
		            cc=ee.Update  
		            item_level2_length=ee.Element_Length+item_level2_length
		            
		            
		            //--------Patient support rotation direction
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300A"
		            ee.Tag_b="0123"
		            ee.Value=cps.PatientSupportRotationDirection
		            
		            File.Elements.Append ee
		            cc=ee.Update  
		            item_level2_length=ee.Element_Length+item_level2_length
		            
		            //-------Table top Eccentric angle
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300A"
		            ee.Tag_b="0125"
		            ee.Value=cps.TableTopEccentricAngle
		            
		            File.Elements.Append ee
		            cc=ee.Update  
		            item_level2_length=ee.Element_Length+item_level2_length
		            
		            //--------Patient support rotation direction
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300A"
		            ee.Tag_b="0126"
		            ee.Value=cps.TableTopEccentricRotationDirection
		            
		            File.Elements.Append ee
		            cc=ee.Update  
		            item_level2_length=ee.Element_Length+item_level2_length
		            
		            //--------Table Top vertical position 
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300A"
		            ee.Tag_b="0128"
		            ee.Value=cps.TableTopVerticalPosition
		            File.Elements.Append ee
		            cc=ee.Update  
		            item_level2_length=ee.Element_Length+item_level2_length
		            
		            
		            //--------Table Top vertical position
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300A"
		            ee.Tag_b="0129"
		            ee.Value=cps.TableTopLongitudinalPosition
		            File.Elements.Append ee
		            cc=ee.Update  
		            item_level2_length=ee.Element_Length+item_level2_length
		            
		            
		            
		            //--------Table Top lateral position
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300A"
		            ee.Tag_b="012A"
		            ee.Value=cps.TableTopLateralPosition
		            
		            File.Elements.Append ee
		            cc=ee.Update  
		            item_level2_length=ee.Element_Length+item_level2_length
		            
		          end
		          
		          
		          if gPref.DICOM_FileStructure=1 or c=0 Then
		            //--------Iso
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300A"
		            ee.Tag_b="012C"
		            ee.Value=cps.IsocenterPosition
		            File.Elements.Append ee
		            cc=ee.Update  
		            item_level2_length=ee.Element_Length+item_level2_length
		          end
		          
		          if gPref.DICOM_FileStructure<>1 Then
		            if c=0 Then
		              //--------SSD
		              ee= new Class_DICOM_Element
		              ee.Tag_a="300A"
		              ee.Tag_b="0130"
		              ee.Value=Format(cps.SSD,"0.0##")
		              File.Elements.Append ee
		              cc=ee.Update
		              item_level2_length=ee.Element_Length+item_level2_length
		            end
		          end
		          
		          
		          //-------Weight Meterset
		          ee= new Class_DICOM_Element
		          ee.Tag_a="300A"
		          ee.Tag_b="0134"
		          ee.Value=Format(cps.CumulativeMetersetWeight,"0.0000000000")
		          File.Elements.Append ee
		          cc=ee.Update  
		          item_level2_length=ee.Element_Length+item_level2_length
		          
		          
		          if gPref.DICOM_FileStructure=1 Then
		            //-------Tomo Tags 
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300D"
		            ee.Tag_b="0010"
		            ee.Value="TOMO_HA_01"
		            File.Elements.Append ee
		            cc=ee.Update  
		            item_level2_length=ee.Element_Length+item_level2_length
		            
		            
		            //-------Tomo Tags Sinogram
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300D"
		            ee.Tag_b="10A7"
		            ee.Value=cps.TomoSinogram
		            File.Elements.Append ee
		            cc=ee.Update  
		            item_level2_length=ee.Element_Length+item_level2_length
		          end
		          
		          // Assign value length to item, and update level 2 length
		          File.Elements(item_level2_index).length=item_level2_length
		          level2_length=level2_length+item_level2_length+8
		        Next
		        File.Elements(level2_index).length=level2_length
		        item_level1_length=item_level1_length+level2_length+8
		        
		        
		        // Referenced Patient Setup Number 
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300C"
		        ee.Tag_b="006A"
		        ee.Value="1"
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        
		        if gPref.DICOM_FileStructure=1 Then
		          // Tomo Tag
		          ee= new Class_DICOM_Element
		          ee.Tag_a="300D"
		          ee.Tag_b="0010"
		          ee.Value="TOMO_HA_01"
		          File.Elements.Append ee
		          cc=ee.Update  
		          item_level1_length=item_level1_length+ee.Element_Length
		          
		          
		          // Tomo Tag
		          ee= new Class_DICOM_Element
		          ee.Tag_a="300D"
		          ee.Tag_b="1060"
		          ee.Value="0.287"
		          File.Elements.Append ee
		          cc=ee.Update  
		          item_level1_length=item_level1_length+ee.Element_Length
		        end
		        
		        // Add final value length of item level 1 to element
		        File.Elements(item_level1_index).length=item_level1_length
		        level1_length=level1_length+item_level1_length+8
		      Next
		      File.Elements(level1_index).length=level1_length
		    end
		    //--------------End -Beam Sequence------------------------------------------------------------------------------------
		    
		    
		    
		    
		    
		    //--------------Patient Setup Sequence------------------------------------------------------------------------------------
		    if UBound(planclass.PatientSetupSequence)>-1 Then
		      ee= new Class_DICOM_Element
		      ee.Tag_a="300A"
		      ee.Tag_b="0180"
		      cc=ee.Update
		      File.Elements.Append ee
		      level1_length=0
		      level1_index=UBound(File.Elements)
		      
		      for k=0 to  UBound(planclass.PatientSetupSequence)
		        //New item in control point sequence
		        ee= new Class_DICOM_Element
		        ee.Tag_a="FFFE"
		        ee.Tag_b="E000"
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=0
		        item_level1_index=UBound(File.Elements)
		        
		        // Patient Position
		        ee= new Class_DICOM_Element
		        ee.Tag_a="0018"
		        ee.Tag_b="5100"
		        ee.Value=planclass.PatientSetupSequence(k).PatientPosition
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        //  Patient Setup Number
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="0182"
		        ee.Value=str(planclass.PatientSetupSequence(k).PatientSetupNumber)
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        //  Patient Setup Technique
		        ee= new Class_DICOM_Element
		        ee.Tag_a="300A"
		        ee.Tag_b="01B0"
		        ee.Value=planclass.PatientSetupSequence(k).SetupTechnique
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        if UBound(planclass.PatientSetupSequence(k).SetupDeviceSequence)>-1 Then
		          ee= new Class_DICOM_Element
		          ee.Tag_a="300A"
		          ee.Tag_b="01B4"
		          ee.Value="1"
		          cc=ee.Update
		          File.Elements.Append ee
		          level2_length=0
		          level2_index=UBound(File.Elements)
		          
		          for c=0 to UBound(planclass.PatientSetupSequence(k).SetupDeviceSequence) 
		            //New item in control point sequence
		            ee= new Class_DICOM_Element
		            ee.Tag_a="FFFE"
		            ee.Tag_b="E000"
		            File.Elements.Append ee
		            cc=ee.Update  
		            item_level2_length=0
		            item_level2_index=UBound(File.Elements)
		            
		            //  Setup  Device Type
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300A"
		            ee.Tag_b="01B6"
		            ee.Value=planclass.PatientSetupSequence(k).SetupDeviceSequence(c).SetupDeviceType
		            File.Elements.Append ee
		            cc=ee.Update  
		            item_level2_length=item_level2_length+ee.Element_Length
		            
		            //  Setup  Device Label
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300A"
		            ee.Tag_b="01B8"
		            ee.Value=planclass.PatientSetupSequence(k).SetupDeviceSequence(c).SetupDevicelabel
		            File.Elements.Append ee
		            cc=ee.Update  
		            item_level2_length=item_level2_length+ee.Element_Length
		            
		            //  Setup  Device Type
		            ee= new Class_DICOM_Element
		            ee.Tag_a="300A"
		            ee.Tag_b="01BC"
		            ee.Value=planclass.PatientSetupSequence(k).SetupDeviceSequence(c).SetupDeviceParameter
		            File.Elements.Append ee
		            cc=ee.Update  
		            item_level2_length=item_level2_length+ee.Element_Length
		            
		            File.Elements(item_level2_index).length=item_level2_length
		            level2_length=level2_length+item_level2_length+8
		          Next
		          File.Elements(level2_index).length=level2_length
		          item_level1_length=item_level1_length+level2_length+8
		        end
		        
		        File.Elements(item_level1_index).length=item_level1_length
		        level1_length=level1_length+item_level1_length+8
		      Next
		      File.Elements(level1_index).length=level1_length
		    end
		    //--------------End Patient Setup Sequence------------------------------------------------------------------------------------
		    
		    
		    // Tomo Proprietary Tag
		    ee= new Class_DICOM_Element
		    ee.Tag_a="300C"
		    ee.Tag_b="0000"
		    ee.Value="    "
		    cc=ee.Update
		    File.Elements.Append ee
		    
		    //---------------------------------------------------------------------------------------------------
		    // Reference Structure Set sequence
		    if UBound(planclass.ReferencedStructureSetSequence)>-1 Then
		      ee= new Class_DICOM_Element
		      ee.Tag_a="300C"
		      ee.Tag_b="0060"
		      cc=ee.Update
		      File.Elements.Append ee
		      level1_length=0
		      level1_index=UBound(File.Elements)
		      
		      for c=0 to UBound(planclass.ReferencedStructureSetSequence) 
		        //New item in Referenced sequence
		        ee= new Class_DICOM_Element
		        ee.Tag_a="FFFE"
		        ee.Tag_b="E000"
		        File.Elements.Append ee
		        cc=ee.Update  
		        
		        item_level1_length=0
		        item_level1_index=UBound(File.Elements)
		        
		        ee= new Class_DICOM_Element
		        ee.Tag_a="0008"
		        ee.Tag_b="1150"
		        ee.Value=planclass.ReferencedStructureSetSequence(0).ReferencedSOPClassUID
		        cc=ee.Update  
		        File.Elements.Append ee
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        ee= new Class_DICOM_Element
		        ee.Tag_a="0008"
		        ee.Tag_b="1155"
		        ee.Value=planclass.ReferencedStructureSetSequence(0).ReferencedSOPInstanceUID
		        cc=ee.Update  
		        File.Elements.Append ee
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        File.Elements(item_level1_index).length=item_level1_length
		        level1_length=level1_length+item_level1_length+8
		      Next
		      File.Elements(level1_index).length=level1_length
		    end
		    
		    //---------------------------------------------------------------------------------------------------
		    // Reference Dose Set sequence
		    if UBound(planclass.ReferencedDoseSequence)>-1 Then
		      ee= new Class_DICOM_Element
		      ee.Tag_a="300C"
		      ee.Tag_b="0080"
		      cc=ee.Update
		      File.Elements.Append ee
		      level1_length=0
		      level1_index=UBound(File.Elements)
		      
		      for c=0 to UBound(planclass.ReferencedDoseSequence)
		        //New item in Referenced sequence
		        ee= new Class_DICOM_Element
		        ee.Tag_a="FFFE"
		        ee.Tag_b="E000"
		        File.Elements.Append ee
		        cc=ee.Update  
		        item_level1_length=0
		        item_level1_index=UBound(File.Elements)
		        
		        ee= new Class_DICOM_Element
		        ee.Tag_a="0008"
		        ee.Tag_b="1150"
		        ee.Value=planclass.ReferencedDoseSequence(0).ReferencedSOPClassUID
		        cc=ee.Update  
		        File.Elements.Append ee
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        ee= new Class_DICOM_Element
		        ee.Tag_a="0008"
		        ee.Tag_b="1155"
		        ee.Value=planclass.ReferencedDoseSequence(0).ReferencedSOPInstanceUID
		        cc=ee.Update  
		        File.Elements.Append ee
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        File.Elements(item_level1_index).length=item_level1_length
		        level1_length=level1_length+item_level1_length+8
		      Next
		      File.Elements(level1_index).length=level1_length
		    end
		    
		    //---------------------------------------------------------------------------------------------------
		    
		    if gPref.DICOM_FileStructure=1 Then
		      // Tomo crap
		      ee= new Class_DICOM_Element
		      ee.Tag_a="300D"
		      ee.Tag_b="0000"
		      ee.Value="T   "
		      cc=ee.Update
		      File.Elements.Append ee
		      
		      ee= new Class_DICOM_Element
		      ee.Tag_a="300D"
		      ee.Tag_b="0010"
		      ee.Value="TOMO_HA_01"
		      cc=ee.Update
		      File.Elements.Append ee
		      
		      ee= new Class_DICOM_Element
		      ee.Tag_a="300D"
		      ee.Tag_b="1014"
		      ee.Value="2.4 "
		      cc=ee.Update
		      File.Elements.Append ee
		      
		      ee= new Class_DICOM_Element
		      ee.Tag_a="300D"
		      ee.Tag_b="10A4"
		      ee.Value="HELICAL "
		      cc=ee.Update
		      File.Elements.Append ee
		      
		      ee= new Class_DICOM_Element
		      ee.Tag_a="300D"
		      ee.Tag_b="10A9"
		      ee.Value="-0.34179688\69.6582\-52.500004"
		      cc=ee.Update
		      File.Elements.Append ee
		      
		      ee= new Class_DICOM_Element
		      ee.Tag_a="300E"
		      ee.Tag_b="0000"
		      ee.Value="F   "
		      cc=ee.Update
		      File.Elements.Append ee
		    end
		    //--------------------------------------------------------------------------------------------------
		    
		    ee= new Class_DICOM_Element
		    ee.Tag_a="300E"
		    ee.Tag_b="0002"
		    ee.Value=planclass.ApprovalStatus
		    cc=ee.Update
		    File.Elements.Append ee
		    
		    ee= new Class_DICOM_Element
		    ee.Tag_a="300E"
		    ee.Tag_b="0004"
		    ee.Value=planclass.ReviewDate
		    cc=ee.Update
		    File.Elements.Append ee
		    
		    ee= new Class_DICOM_Element
		    ee.Tag_a="300E"
		    ee.Tag_b="0005"
		    ee.Value=planclass.ReviewTime
		    cc=ee.Update
		    File.Elements.Append ee
		    
		    ee= new Class_DICOM_Element
		    ee.Tag_a="300E"
		    ee.Tag_b="0008"
		    ee.Value=planclass.ReviewerName
		    cc=ee.Update
		    File.Elements.Append ee
		    
		    File.UID_Name=planclass.SOPInstanceUID
		    File.TempName="RTPLAN_"+File.UID_Name
		    File.file=MainFolder.Child(file.TempName)
		    File.Write_DICOM
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_DICOM_Elements_Structure()
		  //------------------------------------------------------
		  // DICOM Write Structure file
		  //
		  //-------------------------------------------------------
		  dim i,j,k,x,y,pos,level1_index, level2_index,level3_index,item_level1_index,item_level2_index,item_level3_index,item_level4_index,level4_index  as integer
		  Dim level1_length,level2_length,level3_length,level4_length,item_level1_length,item_level2_length,item_level3_length,item_level4_length as Integer
		  dim found,signed as boolean
		  Dim Image as Class_DICOM_Image
		  Dim tmpf as Class_DICOM_File
		  Dim ee as Class_DICOM_Element
		  Dim rstudys as Class_DICOM_Referenced_Study_Sequence
		  Dim cs as Class_DICOM_Structure_ContourSequence
		  //================================================
		  
		  if MainFolder=Nil Then
		    Return
		  end
		  
		  
		  for i=0 to UBound(RT_Structures) // look for Image .dcm files
		    File=new Class_DICOM_File
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0000"
		    ee.Value=RT_Structures(i).IdentifyingGroupLength
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0012"
		    ee.Value=RT_Structures(i).InstanceCreationDate
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0013"
		    ee.Value=RT_Structures(i).InstanceCreationTime
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0016"
		    ee.Value=RT_Structures(i).SOPClassUID
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0018"
		    ee.Value=RT_Structures(i).SOPInstanceUID
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0020"
		    ee.Value=RT_Structures(i).StudyDate
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0030"
		    ee.Value=RT_Structures(i).StudyTime
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0050"
		    ee.Value=RT_Structures(i).AcquisitionTime
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0060"
		    ee.Value=RT_Structures(i).Modality
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0070"
		    ee.Value=RT_Structures(i).Manufacturer
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="0090"
		    ee.Value=RT_Structures(i).ReferringPhysician
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="1030"
		    ee.Value=RT_Structures(i).StudyDescription
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="103E"
		    ee.Value=RT_Structures(i).SeriesDescription
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0008"
		    ee.Tag_b="1048"
		    ee.Value=RT_Structures(i).Physician
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0010"
		    ee.Tag_b="0000"
		    ee.Value=str(RT_Structures(i).PatientGroupLength)
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0010"
		    ee.Tag_b="0010"
		    ee.Value=RT_Structures(i).PatientName
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0010"
		    ee.Tag_b="0020"
		    ee.Value=RT_Structures(i).PatientID
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0010"
		    ee.Tag_b="0030"
		    ee.Value=RT_Structures(i).PatientBirthDate
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0010"
		    ee.Tag_b="0040"
		    ee.Value=RT_Structures(i).sex
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0010"
		    ee.Tag_b="1010"
		    ee.Value=RT_Structures(i).Age
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0018"
		    ee.Tag_b="0000"
		    ee.Value=RT_Structures(i).AcquisitionGroupLength
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0018"
		    ee.Tag_b="1020"
		    ee.Value=RT_Structures(i).SoftwareVersion
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0020"
		    ee.Tag_b="0000"
		    ee.Value=RT_Structures(i).RelationshipGroupLength
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0020"
		    ee.Tag_b="000D"
		    ee.Value=RT_Structures(i).StudyInstanceUID
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0020"
		    ee.Tag_b="000E"
		    ee.Value=RT_Structures(i).SeriesInstanceUID
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0020"
		    ee.Tag_b="0010"
		    ee.Value=RT_Structures(i).StudyID
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0020"
		    ee.Tag_b="0011"
		    ee.Value=RT_Structures(i).SeriesNumber
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="0020"
		    ee.Tag_b="0013"
		    ee.Value=str(RT_Structures(i).InstanceNumber,"#")
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="3006"
		    ee.Tag_b="0000"
		    ee.Value=RT_Structures(i).Tomo3006
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="3006"
		    ee.Tag_b="0002"
		    ee.Value=RT_Structures(i).StructureSetLabel
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="3006"
		    ee.Tag_b="0004"
		    ee.Value=RT_Structures(i).StructureSetName
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="3006"
		    ee.Tag_b="0006"
		    ee.Value=RT_Structures(i).StructureSetDescription
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="3006"
		    ee.Tag_b="0008"
		    ee.Value=RT_Structures(i).StrutureSetDate
		    found=ee.Update
		    
		    ee=new Class_DICOM_Element
		    File.Elements.Append ee
		    ee.Tag_a="3006"
		    ee.Tag_b="0009"
		    ee.Value=RT_Structures(i).StrutureSetTime
		    found=ee.Update
		    
		    if UBound(RT_Structures(i).RFORS)>-1 Then
		      ee=new Class_DICOM_Element
		      File.Elements.Append ee
		      ee.Tag_a="3006"
		      ee.Tag_b="0010"
		      ee.Value="1"
		      found=ee.Update
		      level1_index=UBound(File.Elements)
		      level1_length=0
		      
		      for k=0 to UBound(RT_Structures(i).RFORS)
		        ee=new Class_DICOM_Element
		        File.Elements.Append ee
		        ee.Tag_a="FFFE"
		        ee.Tag_b="E000"
		        ee.Value="1"
		        found=ee.Update
		        item_level1_index=UBound(File.Elements)
		        item_level1_length=0
		        
		        ee=new Class_DICOM_Element
		        File.Elements.Append ee
		        ee.Tag_a="0020"
		        ee.Tag_b="0052"
		        ee.Value=RT_Structures(i).RFORS(k).FrameofReferenceUID
		        found=ee.Update
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        
		        if UBound(RT_Structures(i).RFORS(k).ReferencedStudySequence)>-1 Then
		          ee=new Class_DICOM_Element
		          File.Elements.Append ee
		          ee.Tag_a="3006"
		          ee.Tag_b="0012"
		          ee.Value=RT_Structures(i).StrutureSetTime
		          found=ee.Update
		          level2_index=UBound(File.Elements)
		          level2_length=0
		          
		          for j=0 to UBound(RT_Structures(i).RFORS(k).ReferencedStudySequence)
		            ee=new Class_DICOM_Element
		            File.Elements.Append ee
		            ee.Tag_a="FFFE"
		            ee.Tag_b="E000"
		            ee.Value="1"
		            found=ee.Update
		            item_level2_index=UBound(File.Elements)
		            item_level2_length=0
		            rstudys=RT_Structures(i).RFORS(k).ReferencedStudySequence(j)
		            
		            ee=new Class_DICOM_Element
		            File.Elements.Append ee
		            ee.Tag_a="0008"
		            ee.Tag_b="1150"
		            ee.Value=rstudys.ReferencedSOPClassUID
		            found=ee.Update
		            item_level2_length=item_level2_length+ee.Element_Length
		            
		            ee=new Class_DICOM_Element
		            File.Elements.Append ee
		            ee.Tag_a="0008"
		            ee.Tag_b="1155"
		            ee.Value=rstudys.ReferencedSOPInstanceUID
		            found=ee.Update
		            item_level2_length=item_level2_length+ee.Element_Length
		            
		            
		            if UBound(rstudys.RTReferencedSeriesSequence)>-1 Then
		              ee=new Class_DICOM_Element
		              File.Elements.Append ee
		              ee.Tag_a="3006"
		              ee.Tag_b="0014"
		              ee.Value="1"
		              found=ee.Update
		              level3_index=UBound(File.Elements)
		              level3_length=0
		              
		              for x=0 to UBound(rstudys.RTReferencedSeriesSequence)
		                ee=new Class_DICOM_Element
		                File.Elements.Append ee
		                ee.Tag_a="FFFE"
		                ee.Tag_b="E000"
		                ee.Value="1"
		                found=ee.Update
		                item_level3_index=UBound(File.Elements)
		                item_level3_length=0
		                
		                ee=new Class_DICOM_Element
		                File.Elements.Append ee
		                ee.Tag_a="0020"
		                ee.Tag_b="000E"
		                ee.Value=rstudys.RTReferencedSeriesSequence(x).SeriesInstanceUID
		                found=ee.Update
		                item_level3_length=item_level3_length+ee.Element_Length
		                
		                
		                if UBound(rstudys.RTReferencedSeriesSequence(x).ContourImageSequence)>-1 Then
		                  ee=new Class_DICOM_Element
		                  File.Elements.Append ee
		                  ee.Tag_a="3006"
		                  ee.Tag_b="0016"
		                  ee.Value="1"
		                  found=ee.Update
		                  level4_index=UBound(File.Elements)
		                  level4_length=0
		                  
		                  for y=0 to UBound(rstudys.RTReferencedSeriesSequence(x).ContourImageSequence)
		                    ee=new Class_DICOM_Element
		                    File.Elements.Append ee
		                    ee.Tag_a="FFFE"
		                    ee.Tag_b="E000"
		                    ee.Value="1"
		                    found=ee.Update
		                    item_level4_index=UBound(File.Elements)
		                    item_level4_length=0
		                    
		                    ee=new Class_DICOM_Element
		                    File.Elements.Append ee
		                    ee.Tag_a="0008"
		                    ee.Tag_b="1150"
		                    ee.Value=rstudys.RTReferencedSeriesSequence(x).ContourImageSequence(y).ReferencedSOPClassUID
		                    found=ee.Update
		                    item_level4_length=item_level4_length+ee.Element_Length
		                    
		                    ee=new Class_DICOM_Element
		                    File.Elements.Append ee
		                    ee.Tag_a="0008"
		                    ee.Tag_b="1155"
		                    ee.Value=rstudys.RTReferencedSeriesSequence(x).ContourImageSequence(y).ReferencedSOPInstanceUID
		                    found=ee.Update
		                    item_level4_length=item_level4_length+ee.Element_Length
		                    
		                    File.Elements(item_level4_index).length=item_level4_length
		                    level4_length=level4_length+item_level4_length+8
		                  Next
		                  File.Elements(level4_index).length=level4_length
		                  item_level3_length=item_level3_length+level4_length+8
		                end
		                File.Elements(item_level3_index).length=item_level3_length
		                level3_length=level3_length+item_level3_length+8
		              Next
		              File.Elements(level3_index).length=level3_length
		              item_level2_length=item_level2_length+level3_length+8
		            end
		            File.Elements(item_level2_index).length=item_level2_length
		            level2_length=level2_length+item_level2_length+8
		          Next
		          File.Elements(level2_index).length=level2_length
		          item_level1_length=item_level1_length+level2_length+8
		        end
		        File.Elements(item_level1_index).length=item_level1_length
		        level1_length=level1_length+item_level1_length+8
		      Next
		      File.Elements(level1_index).length=level1_length
		    end
		    
		    
		    
		    
		    if UBound(RT_Structures(i).SetROISequence)>-1 Then
		      ee=new Class_DICOM_Element
		      File.Elements.Append ee
		      ee.Tag_a="3006"
		      ee.Tag_b="0020"
		      ee.Value="1"
		      found=ee.Update
		      level1_index=UBound(File.Elements)
		      level1_length=0
		      
		      for x=0 to UBound(RT_Structures(i).SetROISequence)
		        ee=new Class_DICOM_Element
		        File.Elements.Append ee
		        ee.Tag_a="FFFE"
		        ee.Tag_b="E000"
		        ee.Value="1"
		        found=ee.Update
		        item_level1_index=UBound(File.Elements)
		        item_level1_length=0
		        
		        ee=new Class_DICOM_Element
		        File.Elements.Append ee
		        ee.Tag_a="3006"
		        ee.Tag_b="0022"
		        ee.Value=str(RT_Structures(i).SetROISequence(x).ROI_num)
		        found=ee.Update
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        ee=new Class_DICOM_Element
		        File.Elements.Append ee
		        ee.Tag_a="3006"
		        ee.Tag_b="0024"
		        ee.Value=RT_Structures(i).SetROISequence(x).ReferencedFrameofRefUID
		        found=ee.Update
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        ee=new Class_DICOM_Element
		        File.Elements.Append ee
		        ee.Tag_a="3006"
		        ee.Tag_b="0026"
		        ee.Value=RT_Structures(i).SetROISequence(x).ROIname
		        found=ee.Update
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        ee=new Class_DICOM_Element
		        File.Elements.Append ee
		        ee.Tag_a="3006"
		        ee.Tag_b="0036"
		        ee.Value=(RT_Structures(i).SetROISequence(x).ROI_Algorithm)
		        found=ee.Update
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        File.Elements(item_level1_index).length=item_level1_length
		        level1_length=level1_length+item_level1_length+8
		      Next
		      File.Elements(level1_index).length=level1_length
		    end
		    
		    
		    
		    
		    
		    
		    if UBound(RT_Structures(i).ROIContourSequence)>-1 Then
		      ee=new Class_DICOM_Element
		      File.Elements.Append ee
		      ee.Tag_a="3006"
		      ee.Tag_b="0039"
		      ee.Value="1"
		      found=ee.Update
		      level1_index=UBound(File.Elements)
		      level1_length=0
		      
		      for x=0 to UBound(RT_Structures(i).ROIContourSequence)
		        ee=new Class_DICOM_Element
		        File.Elements.Append ee
		        ee.Tag_a="FFFE"
		        ee.Tag_b="E000"
		        ee.Value="1"
		        found=ee.Update
		        item_level1_index=UBound(File.Elements)
		        item_level1_length=0
		        
		        ee=new Class_DICOM_Element
		        File.Elements.Append ee
		        ee.Tag_a="3006"
		        ee.Tag_b="002A"
		        ee.Value=str(RT_Structures(i).ROIContourSequence(x).ROIColour.red)+"\"+str(RT_Structures(i).ROIContourSequence(x).ROIColour.green)+"\"+str(RT_Structures(i).ROIContourSequence(x).ROIColour.blue)
		        found=ee.Update
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        if UBound(RT_Structures(i).ROIContourSequence(x).ContourSequence)>-1 Then
		          ee=new Class_DICOM_Element
		          File.Elements.Append ee
		          ee.Tag_a="3006"
		          ee.Tag_b="0040"
		          ee.Value="1"
		          found=ee.Update
		          level2_index=UBound(File.Elements)
		          level2_length=0
		          
		          for j=0 to UBound(RT_Structures(i).ROIContourSequence(x).ContourSequence)
		            cs=RT_Structures(i).ROIContourSequence(x).ContourSequence(j)
		            ee=new Class_DICOM_Element
		            File.Elements.Append ee
		            ee.Tag_a="FFFE"
		            ee.Tag_b="E000"
		            ee.Value="1"
		            found=ee.Update
		            item_level2_index=UBound(File.Elements)
		            item_level2_length=0
		            
		            if UBound(cs.contourimagesequence)>-1 Then
		              ee=new Class_DICOM_Element
		              File.Elements.Append ee
		              ee.Tag_a="3006"
		              ee.Tag_b="0016"
		              ee.Value="1"
		              found=ee.Update
		              level3_index=UBound(File.Elements)
		              level3_length=0
		              
		              for k=0 to UBound(cs.contourimagesequence)
		                ee=new Class_DICOM_Element
		                File.Elements.Append ee
		                ee.Tag_a="FFFE"
		                ee.Tag_b="E000"
		                ee.Value="1"
		                found=ee.Update
		                item_level3_index=UBound(File.Elements)
		                item_level3_length=0
		                
		                ee=new Class_DICOM_Element
		                File.Elements.Append ee
		                ee.Tag_a="0008"
		                ee.Tag_b="1150"
		                ee.Value=cs.contourimagesequence(k).ReferencedSOPClassUID
		                found=ee.Update
		                item_level3_length=item_level3_length+ee.Element_Length
		                
		                ee=new Class_DICOM_Element
		                File.Elements.Append ee
		                ee.Tag_a="0008"
		                ee.Tag_b="1155"
		                ee.Value=cs.contourimagesequence(k).ReferencedSOPInstanceUID
		                found=ee.Update
		                item_level3_length=item_level3_length+ee.Element_Length
		                
		                File.Elements(item_level3_index).length=item_level3_length
		                level3_length=level3_length+item_level3_length+8
		              Next
		              File.Elements(level3_index).length=level3_length
		              item_level2_length=item_level2_length+level3_length+8
		            end
		            
		            ee=new Class_DICOM_Element
		            File.Elements.Append ee
		            ee.Tag_a="3006"
		            ee.Tag_b="0042"
		            ee.Value=cs.GeometricType
		            found=ee.Update
		            item_level2_length=item_level2_length+ee.Element_Length
		            
		            ee=new Class_DICOM_Element
		            File.Elements.Append ee
		            ee.Tag_a="3006"
		            ee.Tag_b="0044"
		            ee.Value=cs.SlabThickness
		            found=ee.Update
		            item_level2_length=item_level2_length+ee.Element_Length
		            
		            ee=new Class_DICOM_Element
		            File.Elements.Append ee
		            ee.Tag_a="3006"
		            ee.Tag_b="0045"
		            ee.Value=cs.OffsetVector
		            found=ee.Update
		            item_level2_length=item_level2_length+ee.Element_Length
		            
		            ee=new Class_DICOM_Element
		            File.Elements.Append ee
		            ee.Tag_a="3006"
		            ee.Tag_b="0046"
		            ee.Value=str(cs.numberofcontourpoints)
		            found=ee.Update
		            item_level2_length=item_level2_length+ee.Element_Length
		            
		            ee=new Class_DICOM_Element
		            File.Elements.Append ee
		            ee.Tag_a="3006"
		            ee.Tag_b="0050"
		            ee.Value=cs.data
		            found=ee.Update
		            item_level2_length=item_level2_length+ee.Element_Length
		            
		            
		            File.Elements(item_level2_index).length=item_level2_length
		            level2_length=level2_length+item_level2_length+8
		          Next
		          File.Elements(level2_index).length=level2_length
		          item_level1_length=item_level1_length+level2_length+8
		        end
		        
		        
		        ee=new Class_DICOM_Element
		        File.Elements.Append ee
		        ee.Tag_a="3006"
		        ee.Tag_b="0084"
		        ee.Value=RT_Structures(i).ROIContourSequence(x).ReferencedROINumber
		        found=ee.Update
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        
		        File.Elements(item_level1_index).length=item_level1_length
		        level1_length=level1_length+item_level1_length+8
		      Next
		      File.Elements(level1_index).length=level1_length
		    end
		    
		    
		    if UBound(RT_Structures(i).ROI_Obs_Seq)>-1 Then
		      ee=new Class_DICOM_Element
		      File.Elements.Append ee
		      ee.Tag_a="3006"
		      ee.Tag_b="0080"
		      ee.Value="1"
		      found=ee.Update
		      level1_index=UBound(File.Elements)
		      level1_length=0
		      
		      for k=0 to UBound(RT_Structures(i).ROI_Obs_Seq)
		        ee=new Class_DICOM_Element
		        File.Elements.Append ee
		        ee.Tag_a="FFFE"
		        ee.Tag_b="E000"
		        ee.Value="1"
		        found=ee.Update
		        item_level1_index=UBound(File.Elements)
		        item_level1_length=0
		        
		        ee=new Class_DICOM_Element
		        File.Elements.Append ee
		        ee.Tag_a="3006"
		        ee.Tag_b="0082"
		        ee.Value=str(RT_Structures(i).ROI_Obs_Seq(k).Ob_num)
		        found=ee.Update
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        ee=new Class_DICOM_Element
		        File.Elements.Append ee
		        ee.Tag_a="3006"
		        ee.Tag_b="0084"
		        ee.Value=(RT_Structures(i).ROI_Obs_Seq(k).ReferencedROI_Num)
		        found=ee.Update
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        ee=new Class_DICOM_Element
		        File.Elements.Append ee
		        ee.Tag_a="3006"
		        ee.Tag_b="00A4"
		        ee.Value=(RT_Structures(i).ROI_Obs_Seq(k).RT_ROI_Inter_Type)
		        found=ee.Update
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        ee=new Class_DICOM_Element
		        File.Elements.Append ee
		        ee.Tag_a="3006"
		        ee.Tag_b="00A6"
		        ee.Value=(RT_Structures(i).ROI_Obs_Seq(k).ROI_Inter)
		        found=ee.Update
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        
		        if UBound(RT_Structures(i).ROI_Obs_Seq(k).ROI_Phys_Prop_Sequ)>-1 Then
		          ee=new Class_DICOM_Element
		          File.Elements.Append ee
		          ee.Tag_a="3006"
		          ee.Tag_b="00B0"
		          ee.Value="1"
		          found=ee.Update
		          level2_index=UBound(File.Elements)
		          level2_length=0
		          
		          for x=0 to UBound(RT_Structures(i).ROI_Obs_Seq(k).ROI_Phys_Prop_Sequ)
		            ee=new Class_DICOM_Element
		            File.Elements.Append ee
		            ee.Tag_a="FFFE"
		            ee.Tag_b="E000"
		            ee.Value="1"
		            found=ee.Update
		            item_level2_index=UBound(File.Elements)
		            item_level2_length=0
		            
		            ee=new Class_DICOM_Element
		            File.Elements.Append ee
		            ee.Tag_a="3006"
		            ee.Tag_b="00B2"
		            ee.Value=(RT_Structures(i).ROI_Obs_Seq(k).ROI_Phys_Prop_Sequ(x).ROI_Phys_Prop)
		            found=ee.Update
		            item_level2_length=item_level2_length+ee.Element_Length
		            
		            ee=new Class_DICOM_Element
		            File.Elements.Append ee
		            ee.Tag_a="3006"
		            ee.Tag_b="00B4"
		            ee.Value=(RT_Structures(i).ROI_Obs_Seq(k).ROI_Phys_Prop_Sequ(x).ROI_Phys_Prop_Value)
		            found=ee.Update
		            item_level2_length=item_level2_length+ee.Element_Length
		            
		            File.Elements(item_level2_index).length=item_level2_length
		            level2_length=level2_length+item_level2_length+8
		          Next
		          
		          File.Elements(level2_index).length=level2_length
		          item_level1_length=item_level1_length+level2_length+8
		          
		        end
		        
		        File.Elements(item_level1_index).length=item_level1_length
		        level1_length=level1_length+item_level1_length+8
		      Next
		      File.Elements(level1_index).length=level1_length
		    end
		    
		    
		    File.UID_Name=RT_Structures(i).SOPInstanceUID
		    File.TempName="RTSTRUCT_"+File.UID_Name
		    File.file=MainFolder.Child(file.TempName)
		    File.Write_DICOM
		  Next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Counter As Int64 = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		dictionary(1719,3) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		File As Class_DICOM_File
	#tag EndProperty

	#tag Property, Flags = &h0
		Import_ID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Import_Name As String
	#tag EndProperty

	#tag Property, Flags = &h0
		MainFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		RT_Doses(-1) As Class_DICOM_RTDose
	#tag EndProperty

	#tag Property, Flags = &h0
		RT_Images(-1) As Class_DICOM_Image
	#tag EndProperty

	#tag Property, Flags = &h0
		RT_Plan(-1) As Class_DICOM_Plan
	#tag EndProperty

	#tag Property, Flags = &h0
		RT_Structures(-1) As Class_DICOM_Structures
	#tag EndProperty

	#tag Property, Flags = &h0
		TaskNum As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Dear Andrew Alexander
			
			I have pleasure in enclosing your UID prefix as promised.  It is:
			
			1.2.826.0.1.3680043.9.5692.
			
			You are hereby granted full permission to use this UID prefix as your own subject only to the following minimal conditions:
			
			1) You agree to operate a policy to ensure that UIDs subordinate to this prefix cannot be duplicated.
			
			2) You may sub-delegate ranges using your prefix, providing this is either on a not-for-profit basis, or as part of another product.
			i.e. you may not sell numbering space itself
			
			I hope that this facility is useful to you, but if you have any questions, please ask.
			
			Yours sincerely
			
			David Harvey
			Managing Director
			Medical Connections Ltd
			www.medicalconnections.co.uk
			Company Tel: +44-1792-390209
			Fax No: +44-1792-390495
			
			Medical Connections Ltd is registered in England & Wales as Company Number 3680043
			Medical Connections Ltd, The Old Pharmacy, Monksland Road, Scurlage, Swansea, SA3 1AY
		#tag EndNote
		UID_root As string = "1.2.826.0.1.3680043.9.5692."
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Counter"
			Group="Behavior"
			InitialValue="0"
			Type="Int64"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Import_ID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Import_Name"
			Group="Behavior"
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
			Name="TaskNum"
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UID_root"
			Group="Behavior"
			InitialValue="1.2.826.0.1.3680043.9.5692."
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
