#tag Class
Protected Class Thread_DICOM_Object
Inherits Thread
	#tag Event
		Sub Run()
		  if TaskNum=1 Then
		    DICOM_Import
		  elseif TaskNum=0 Then
		    DICOM_Transfer
		  elseif TaskNum=3 Then
		    
		    
		    if Export_Images Then
		      gRTOG.Convert_McGillRT2DICOM_RTImage
		    end
		    
		    if Export_Plan Then
		      if Plan_Index>=0 Then
		        if UBound(gRTOG.Plan)>=Plan_Index Then
		          if gRTOG.Plan(Plan_Index).DICOM_SOPInstanceUID="" Then
		            gRTOG.Plan(Plan_Index).DICOM_SOPInstanceUID=gDICOM.UID_Make
		          end
		          gRTOG.Convert_McGillRT2DICOM_RTPlan(Plan_Index)
		        end
		      end
		    end
		    
		    if Export_Dose Then
		      if Window_Treatment.dose_index>=0 and Plan_Index>=0 Then
		        if UBound(gRTOG.Plan)>=Plan_Index Then
		          if UBound(gRTOG.Plan(Plan_Index).Dose)>=Window_Treatment.dose_index Then
		            gRTOG.Convert_McGillRT2DICOM_RTDose(Plan_Index,gRTOG.plan(plan_index).dose(Window_Treatment.dose_index))
		          end
		        end
		      end
		      
		    end
		    
		    if Export_Structures Then
		      if UBound(gRTOG.Structures)>=0 Then
		        gRTOG.Convert_McGillRT2DICOM_RTStructures
		      end
		    end
		    
		    Write
		    
		    ReDim RT_Doses(-1)
		    ReDim RT_Images(-1)
		    ReDim RT_Plan(-1)
		    ReDim RT_Structures(-1)
		    
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
		Sub Export()
		  Get_Dir
		  if MainFolder=nil Then
		    Return
		  end
		  
		  TaskNum=3
		  Run
		  
		  
		  
		  
		  
		  
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
		  Dim line, wholefile as String
		  Dim i as Integer
		  
		  
		  
		  
		  
		  wholefile="00000000,3,UL,1,GroupLength,"+ EndOfLine + _
		  "00000001,2,UL,1,CommandLengthToEnd,"+ EndOfLine + _
		  "00000002,3,UI,1,AffectedSOPClassUID,"+ EndOfLine + _
		  "00000003,3,UI,1,RequestedSOPClassUID,"+ EndOfLine + _
		  "00000010,2,LT,1,CommandRecognitionCode,"+ EndOfLine + _
		  "00000100,3,US,1,CommandField,"+ EndOfLine + _
		  "00000110,3,US,1,MessageID,"+ EndOfLine + _
		  "00000120,3,US,1,MessageIDBeingRespondedTo,"+ EndOfLine + _
		  "00000200,2,AE,1,Initiator,"+ EndOfLine + _
		  "00000300,2,AE,1,Receiver,"+ EndOfLine + _
		  "00000400,2,AE,1,FindLocation,"+ EndOfLine + _
		  "00000600,3,AE,1,MoveDestination,"+ EndOfLine + _
		  "00000700,3,US,1,Priority,"+ EndOfLine + _
		  "00000800,3,US,1,DataSetType,"+ EndOfLine + _
		  "00000850,2,US,1,NumberOfMatches,"+ EndOfLine + _
		  "00000860,2,US,1,ResponseSequenceNumber,"+ EndOfLine + _
		  "00000900,3,US,1,Status,"+ EndOfLine + _
		  "00000901,3,AT,1-n,OffendingElement,"+ EndOfLine + _
		  "00000902,3,LO,1,ErrorComment,"+ EndOfLine + _
		  "00000903,3,US,1,ErrorID,"+ EndOfLine + _
		  "00001000,3,UI,1,AffectedSOPInstanceUID,"+ EndOfLine + _
		  "00001001,3,UI,1,RequestedSOPInstanceUID,"+ EndOfLine + _
		  "00001002,3,US,1,EventTypeID,"+ EndOfLine + _
		  "00001005,3,AT,1-n,AttributeIdentifierList,"+ EndOfLine + _
		  "00001008,3,US,1,ActionTypeID,"+ EndOfLine + _
		  "00001020,3,US,1,NumberOfRemainingSuboperations,"+ EndOfLine + _
		  "00001021,3,US,1,NumberOfCompletedSuboperations,"+ EndOfLine + _
		  "00001022,3,US,1,NumberOfFailedSuboperations,"+ EndOfLine + _
		  "00001023,3,US,1,NumberOfWarningSuboperations,"+ EndOfLine + _
		  "00001030,3,AE,1,MoveOriginatorApplicationEntityTitle,"+ EndOfLine + _
		  "00001031,3,US,1,MoveOriginatorMessageID,"+ EndOfLine + _
		  "00004000,2,LT,1,DialogReceiver,"+ EndOfLine + _
		  "00004010,2,LT,1,TerminalType,"+ EndOfLine + _
		  "00005010,3,SH,1,MessageSetID,"+ EndOfLine + _
		  "00005020,3,SH,1,EndMessageSet,"+ EndOfLine + _
		  "00005110,2,LT,1,DisplayFormat,"+ EndOfLine + _
		  "00005120,2,LT,1,PagePositionID,"+ EndOfLine + _
		  "00005130,2,LT,1,TextFormatID,"+ EndOfLine + _
		  "00005140,2,LT,1,NormalReverse,"+ EndOfLine + _
		  "00005150,2,LT,1,AddGrayScale,"+ EndOfLine + _
		  "00005160,2,LT,1,Borders,"+ EndOfLine + _
		  "00005170,2,IS,1,Copies,"+ EndOfLine + _
		  "00005180,2,LT,1,OldMagnificationType,"+ EndOfLine + _
		  "00005190,2,LT,1,Erase,"+ EndOfLine + _
		  "000051A0,2,LT,1,Print,"+ EndOfLine + _
		  "000051B0,2,US,1-n,Overlays,"+ EndOfLine + _
		  "00020000,3,UL,1,MetaElementGroupLength,"+ EndOfLine + _
		  "00020001,3,OB,1,FileMetaInformationVersion,"+ EndOfLine + _
		  "00020002,3,UI,1,MediaStorageSOPClassUID,"+ EndOfLine + _
		  "00020003,3,UI,1,MediaStorageSOPInstanceUID,"+ EndOfLine + _
		  "00020010,3,UI,1,TransferSyntaxUID,"+ EndOfLine + _
		  "00020012,3,UI,1,ImplementationClassUID,"+ EndOfLine + _
		  "00020013,3,SH,1,ImplementationVersionName,"+ EndOfLine + _
		  "00020016,3,AE,1,SourceApplicationEntityTitle,"+ EndOfLine + _
		  "00020100,3,UI,1,PrivateInformationCreatorUID,"+ EndOfLine + _
		  "00020102,3,OB,1,PrivateInformation,"+ EndOfLine + _
		  "00040000,3,UL,1,FileSetGroupLength,"+ EndOfLine + _
		  "00041130,3,CS,1,FileSetID,"+ EndOfLine + _
		  "00041141,3,CS,08-Jan,FileSetDescriptorFileID,"+ EndOfLine + _
		  "00041142,3,CS,1,FileSetCharacterSet,"+ EndOfLine + _
		  "00041200,3,UL,1,RootDirectoryFirstRecord,"+ EndOfLine + _
		  "00041202,3,UL,1,RootDirectoryLastRecord,"+ EndOfLine + _
		  "00041212,3,US,1,FileSetConsistencyFlag,"+ EndOfLine + _
		  "00041220,3,SQ,1,DirectoryRecordSequence,"+ EndOfLine + _
		  "00041400,3,UL,1,NextDirectoryRecordOffset,"+ EndOfLine + _
		  "00041410,3,US,1,RecordInUseFlag,"+ EndOfLine + _
		  "00041420,3,UL,1,LowerLevelDirectoryOffset,"+ EndOfLine + _
		  "00041430,3,CS,1,DirectoryRecordType,"+ EndOfLine + _
		  "00041432,3,UI,1,PrivateRecordUID,"+ EndOfLine + _
		  "00041500,3,CS,08-Jan,ReferencedFileID,"+ EndOfLine + _
		  "00041504,3,UL,1,MRDRDirectoryRecordOffset,"+ EndOfLine + _
		  "00041510,3,UI,1,ReferencedSOPClassUIDInFile,"+ EndOfLine + _
		  "00041511,3,UI,1,ReferencedSOPInstanceUIDInFile,"+ EndOfLine + _
		  "00041512,3,UI,1,ReferencedTransferSyntaxUIDInFile,"+ EndOfLine + _
		  "00041600,3,UL,1,NumberOfReferences,"+ EndOfLine + _
		  "00080000,3,UL,1,IdentifyingGroupLength,"+ EndOfLine + _
		  "00080001,2,UL,1,LengthToEnd,"+ EndOfLine + _
		  "00080005,3,CS,1-n,SpecificCharacterSet,"+ EndOfLine + _
		  "00080008,3,CS,1-n,ImageType,"+ EndOfLine + _
		  "00080010,2,LO,1,RecognitionCode,"+ EndOfLine + _
		  "00080012,3,DA,1,InstanceCreationDate,"+ EndOfLine + _
		  "00080013,3,TM,1,InstanceCreationTime,"+ EndOfLine + _
		  "00080014,3,UI,1,InstanceCreatorUID,"+ EndOfLine + _
		  "00080016,3,UI,1,SOPClassUID,"+ EndOfLine + _
		  "00080018,3,UI,1,SOPInstanceUID,"+ EndOfLine + _
		  "00080020,3,DA,1,StudyDate,"+ EndOfLine + _
		  "00080021,3,DA,1,SeriesDate,"+ EndOfLine + _
		  "00080022,3,DA,1,AcquisitionDate,"+ EndOfLine + _
		  "00080023,3,DA,1,ContentDate,"+ EndOfLine + _
		  "00080024,3,DA,1,OverlayDate,"+ EndOfLine + _
		  "00080025,3,DA,1,CurveDate,"+ EndOfLine + _
		  "0008002A,3WAV,DT,1,AcquisitionDateTime,"+ EndOfLine + _
		  "00080030,3,TM,1,StudyTime,"+ EndOfLine + _
		  "00080031,3,TM,1,SeriesTime,"+ EndOfLine + _
		  "00080032,3,TM,1,AcquisitionTime,"+ EndOfLine + _
		  "00080033,3,TM,1,ContentTime,"+ EndOfLine + _
		  "00080034,3,TM,1,OverlayTime,"+ EndOfLine + _
		  "00080035,3,TM,1,CurveTime,"+ EndOfLine + _
		  "00080040,2,US,1,OldDataSetType,"+ EndOfLine + _
		  "00080041,2,LO,1,OldDataSetSubtype,"+ EndOfLine + _
		  "00080042,3RET,CS,1,NuclearMedicineSeriesType,"+ EndOfLine + _
		  "00080050,3,SH,1,AccessionNumber,"+ EndOfLine + _
		  "00080052,3,CS,1,QueryRetrieveLevel,"+ EndOfLine + _
		  "00080054,3,AE,1-n,RetrieveAETitle,"+ EndOfLine + _
		  "00080058,3,UI,1-n,FailedSOPInstanceUIDList,"+ EndOfLine + _
		  "00080060,3,CS,1,Modality,"+ EndOfLine + _
		  "00080061,3CP,CS,1-n,ModalitiesInStudy,"+ EndOfLine + _
		  "00080064,3,CS,1,ConversionType,"+ EndOfLine + _
		  "00080068,3DX,CS,1,PresentationIntentType,"+ EndOfLine + _
		  "00080070,3,LO,1,Manufacturer,"+ EndOfLine + _
		  "00080080,3,LO,1,InstitutionName,"+ EndOfLine + _
		  "00080081,3,ST,1,InstitutionAddress,"+ EndOfLine + _
		  "00080082,3,SQ,1,InstitutionCodeSequence,"+ EndOfLine + _
		  "00080090,3,PN,1,ReferringPhysicianName,"+ EndOfLine + _
		  "00080092,3,ST,1,ReferringPhysicianAddress,"+ EndOfLine + _
		  "00080094,3,SH,1-n,ReferringPhysicianTelephoneNumber,"+ EndOfLine + _
		  "00080100,3,SH,1,CodeValue,"+ EndOfLine + _
		  "00080102,3,SH,1,CodingSchemeDesignator,"+ EndOfLine + _
		  "00080103,3COD,SH,1,CodingSchemeVersion,"+ EndOfLine + _
		  "00080104,3,LO,1,CodeMeaning,"+ EndOfLine + _
		  "00080105,3COD,CS,1,MappingResource,"+ EndOfLine + _
		  "00080106,3COD,DT,1,ContextGroupVersion,"+ EndOfLine + _
		  "00080107,3COD,DT,1,ContextGroupLocalVersion,"+ EndOfLine + _
		  "0008010B,3COD,CS,1,CodeSetExtensionFlag,"+ EndOfLine + _
		  "0008010C,3COD,UI,1,PrivateCodingSchemeCreatorUID,"+ EndOfLine + _
		  "0008010D,3COD,UI,1,CodeSetExtensionCreatorUID,"+ EndOfLine + _
		  "0008010F,3COD,CS,1,ContextIdentifier,"+ EndOfLine + _
		  "00081000,2,LT,1,NetworkID,"+ EndOfLine + _
		  "00081010,3,SH,1,StationName,"+ EndOfLine + _
		  "00081030,3,LO,1,StudyDescription,"+ EndOfLine + _
		  "00081032,3,SQ,1,ProcedureCodeSequence,"+ EndOfLine + _
		  "0008103E,3,LO,1,SeriesDescription,"+ EndOfLine + _
		  "00081040,3,LO,1,InstitutionalDepartmentName,"+ EndOfLine + _
		  "00081048,3,PN,1-n,PhysicianOfRecord,"+ EndOfLine + _
		  "00081050,3,PN,1-n,PerformingPhysicianName,"+ EndOfLine + _
		  "00081060,3,PN,1-n,PhysicianReadingStudy,"+ EndOfLine + _
		  "00081070,3,PN,1-n,OperatorName,"+ EndOfLine + _
		  "00081080,3,LO,1-n,AdmittingDiagnosisDescription,"+ EndOfLine + _
		  "00081084,3,SQ,1,AdmittingDiagnosisCodeSequence,"+ EndOfLine + _
		  "00081090,3,LO,1,ManufacturerModelName,"+ EndOfLine + _
		  "00081100,3,SQ,1,ReferencedResultsSequence,"+ EndOfLine + _
		  "00081110,3,SQ,1,ReferencedStudySequence,"+ EndOfLine + _
		  "00081111,3,SQ,1,ReferencedStudyComponentSequence,"+ EndOfLine + _
		  "00081115,3,SQ,1,ReferencedSeriesSequence,"+ EndOfLine + _
		  "00081120,3,SQ,1,ReferencedPatientSequence,"+ EndOfLine + _
		  "00081125,3,SQ,1,ReferencedVisitSequence,"+ EndOfLine + _
		  "00081130,3,SQ,1,ReferencedOverlaySequence,"+ EndOfLine + _
		  "00081140,3,SQ,1,ReferencedImageSequence,"+ EndOfLine + _
		  "00081145,3,SQ,1,ReferencedCurveSequence,"+ EndOfLine + _
		  "0008114A,3WAV,SQ,1,ReferencedInstanceSequence,"+ EndOfLine + _
		  "0008114B,3WAV,LO,1,ReferenceDescription,"+ EndOfLine + _
		  "00081150,3,UI,1,ReferencedSOPClassUID,"+ EndOfLine + _
		  "00081155,3,UI,1,ReferencedSOPInstanceUID,"+ EndOfLine + _
		  "0008115A,3???,UI,1-n,SOPClassesSupported,"+ EndOfLine + _
		  "00081160,3,IS,1,ReferencedFrameNumber,"+ EndOfLine + _
		  "00081195,3,UI,1,TransactionUID,"+ EndOfLine + _
		  "00081197,3,US,1,FailureReason,"+ EndOfLine + _
		  "00081198,3,SQ,1,FailedSOPSequence,"+ EndOfLine + _
		  "00081199,3,SQ,1,ReferencedSOPSequence,"+ EndOfLine + _
		  "00082110,3RET,CS,1,OldLossyImageCompression,"+ EndOfLine + _
		  "00082111,3,ST,1,DerivationDescription,"+ EndOfLine + _
		  "00082112,3,SQ,1,SourceImageSequence,"+ EndOfLine + _
		  "00082120,3,SH,1,StageName,"+ EndOfLine + _
		  "00082122,3,IS,1,StageNumber,"+ EndOfLine + _
		  "00082124,3,IS,1,NumberOfStages,"+ EndOfLine + _
		  "00082128,3,IS,1,ViewNumber,"+ EndOfLine + _
		  "00082129,3,IS,1,NumberOfEventTimers,"+ EndOfLine + _
		  "0008212a,3,IS,1,NumberOfViewsInStage,"+ EndOfLine + _
		  "00082130,3,DS,1-n,EventElapsedTime,"+ EndOfLine + _
		  "00082132,3,LO,1-n,EventTimerName,"+ EndOfLine + _
		  "00082142,3,IS,1,StartTrim,"+ EndOfLine + _
		  "00082143,3,IS,1,StopTrim,"+ EndOfLine + _
		  "00082144,3,IS,1,RecommendedDisplayFrameRate,"+ EndOfLine + _
		  "00082200,3RET,CS,1,TransducerPosition,"+ EndOfLine + _
		  "00082204,3RET,CS,1,TransducerOrientation,"+ EndOfLine + _
		  "00082208,3RET,CS,1,AnatomicStructure,"+ EndOfLine + _
		  "00082218,3,SQ,1,AnatomicRegionSequence,"+ EndOfLine + _
		  "00082220,3,SQ,1,AnatomicRegionModifierSequence,"+ EndOfLine + _
		  "00082228,3,SQ,1,PrimaryAnatomicStructureSequence,"+ EndOfLine + _
		  "00082229,3???,SQ,1,AnatomicStructureSpaceOrRegionSequence,"+ EndOfLine + _
		  "00082230,3,SQ,1,PrimaryAnatomicStructureModifierSequence,"+ EndOfLine + _
		  "00082240,3,SQ,1,TransducerPositionSequence,"+ EndOfLine + _
		  "00082242,3,SQ,1,TransducerPositionModifierSequence,"+ EndOfLine + _
		  "00082244,3,SQ,1,TransducerOrientationSequence,"+ EndOfLine + _
		  "00082246,3,SQ,1,TransducerOrientationModifierSequence,"+ EndOfLine + _
		  "00084000,2,LT,1-n,IdentifyingComments,"+ EndOfLine + _
		  "00100000,3,UL,1,PatientGroupLength,"+ EndOfLine + _
		  "00100010,3,PN,1,PatientName,"+ EndOfLine + _
		  "00100020,3,LO,1,PatientID,"+ EndOfLine + _
		  "00100021,3,LO,1,IssuerOfPatientID,"+ EndOfLine + _
		  "00100030,3,DA,1,PatientBirthDate,"+ EndOfLine + _
		  "00100032,3,TM,1,PatientBirthTime,"+ EndOfLine + _
		  "00100040,3,CS,1,PatientSex,"+ EndOfLine + _
		  "00100050,3,SQ,1,PatientInsurancePlanCodeSequence,"+ EndOfLine + _
		  "00101000,3,LO,1-n,OtherPatientID,"+ EndOfLine + _
		  "00101001,3,PN,1-n,OtherPatientName,"+ EndOfLine + _
		  "00101005,3,PN,1,PatientBirthName,"+ EndOfLine + _
		  "00101010,3,AS,1,PatientAge,"+ EndOfLine + _
		  "00101020,3,DS,1,PatientSize,"+ EndOfLine + _
		  "00101030,3,DS,1,PatientWeight,"+ EndOfLine + _
		  "00101040,3,LO,1,PatientAddress,"+ EndOfLine + _
		  "00101050,2,LT,1-n,InsurancePlanIdentification,"+ EndOfLine + _
		  "00101060,3,PN,1,PatientMotherBirthName,"+ EndOfLine + _
		  "00101080,3,LO,1,MilitaryRank,"+ EndOfLine + _
		  "00101081,3,LO,1,BranchOfService,"+ EndOfLine + _
		  "00101090,3,LO,1,MedicalRecordLocator,"+ EndOfLine + _
		  "00102000,3,LO,1-n,MedicalAlerts,"+ EndOfLine + _
		  "00102110,3,LO,1-n,ContrastAllergies,"+ EndOfLine + _
		  "00102150,3,LO,1,CountryOfResidence,"+ EndOfLine + _
		  "00102152,3,LO,1,RegionOfResidence,"+ EndOfLine + _
		  "00102154,3,SH,1-n,PatientTelephoneNumber,"+ EndOfLine + _
		  "00102160,3,SH,1,EthnicGroup,"+ EndOfLine + _
		  "00102180,3,SH,1,Occupation,"+ EndOfLine + _
		  "001021A0,3,CS,1,SmokingStatus,"+ EndOfLine + _
		  "001021B0,3,LT,1,AdditionalPatientHistory,"+ EndOfLine + _
		  "001021C0,3,US,1,PregnancyStatus,"+ EndOfLine + _
		  "001021D0,3,DA,1,LastMenstrualDate,"+ EndOfLine + _
		  "001021F0,3,LO,1,PatientReligiousPreference,"+ EndOfLine + _
		  "00104000,3,LT,1,PatientComments,"+ EndOfLine + _
		  "00180000,3,UL,1,AcquisitionGroupLength,"+ EndOfLine + _
		  "00180010,3,LO,1,ContrastBolusAgent,"+ EndOfLine + _
		  "00180012,3,SQ,1,ContrastBolusAgentSequence,"+ EndOfLine + _
		  "00180014,3,SQ,1,ContrastBolusAdministrationRouteSequence,"+ EndOfLine + _
		  "00180015,3,CS,1,BodyPartExamined,"+ EndOfLine + _
		  "00180020,3,CS,1-n,ScanningSequence,"+ EndOfLine + _
		  "00180021,3,CS,1-n,SequenceVariant,"+ EndOfLine + _
		  "00180022,3,CS,1-n,ScanOptions,"+ EndOfLine + _
		  "00180023,3,CS,1,MRAcquisitionType,"+ EndOfLine + _
		  "00180024,3,SH,1,SequenceName,"+ EndOfLine + _
		  "00180025,3,CS,1,AngioFlag,"+ EndOfLine + _
		  "00180026,3,SQ,1,InterventionDrugInformationSequence,"+ EndOfLine + _
		  "00180027,3,TM,1,InterventionDrugStopTime,"+ EndOfLine + _
		  "00180028,3,DS,1,InterventionDrugDose,"+ EndOfLine + _
		  "00180029,3,SQ,1,InterventionDrugCodeSequence,"+ EndOfLine + _
		  "0018002a,3,SQ,1,AdditionalDrugSequence,"+ EndOfLine + _
		  "00180030,3RET,LO,1-n,Radionuclide,"+ EndOfLine + _
		  "00180031,3,LO,1-n,Radiopharmaceutical,"+ EndOfLine + _
		  "00180032,3RET,DS,1,EnergyWindowCenterline,"+ EndOfLine + _
		  "00180033,3RET,DS,1-n,EnergyWindowTotalWidth,"+ EndOfLine + _
		  "00180034,3,LO,1,InterventionDrugName,"+ EndOfLine + _
		  "00180035,3,TM,1,InterventionDrugStartTime,"+ EndOfLine + _
		  "00180036,3,SQ,1,InterventionTherapySequence,"+ EndOfLine + _
		  "00180037,3,CS,1,TherapyType,"+ EndOfLine + _
		  "00180038,3,CS,1,InterventionStatus,"+ EndOfLine + _
		  "00180039,3,CS,1,TherapyDescription,"+ EndOfLine + _
		  "00180040,3,IS,1,CineRate,"+ EndOfLine + _
		  "00180050,3,DS,1,SliceThickness,"+ EndOfLine + _
		  "00180060,3,DS,1,KVP,"+ EndOfLine + _
		  "00180070,3,IS,1,CountsAccumulated,"+ EndOfLine + _
		  "00180071,3,CS,1,AcquisitionTerminationCondition,"+ EndOfLine + _
		  "00180072,3,DS,1,EffectiveSeriesDuration,"+ EndOfLine + _
		  "00180073,3PET,CS,1,AcquisitionStartCondition,"+ EndOfLine + _
		  "00180074,3PET,IS,1,AcquisitionStartConditionData,"+ EndOfLine + _
		  "00180075,3PET,IS,1,AcquisitionTerminationConditionData,"+ EndOfLine + _
		  "00180080,3,DS,1,RepetitionTime,"+ EndOfLine + _
		  "00180081,3,DS,1,EchoTime,"+ EndOfLine + _
		  "00180082,3,DS,1,InversionTime,"+ EndOfLine + _
		  "00180083,3,DS,1,NumberOfAverages,"+ EndOfLine + _
		  "00180084,3,DS,1,ImagingFrequency,"+ EndOfLine + _
		  "00180085,3,SH,1,ImagedNucleus,"+ EndOfLine + _
		  "00180086,3,IS,1-n,EchoNumber,"+ EndOfLine + _
		  "00180087,3,DS,1,MagneticFieldStrength,"+ EndOfLine + _
		  "00180088,3,DS,1,SpacingBetweenSlices,"+ EndOfLine + _
		  "00180089,3,IS,1,NumberOfPhaseEncodingSteps,"+ EndOfLine + _
		  "00180090,3,DS,1,DataCollectionDiameter,"+ EndOfLine + _
		  "00180091,3,IS,1,EchoTrainLength,"+ EndOfLine + _
		  "00180093,3,DS,1,PercentSampling,"+ EndOfLine + _
		  "00180094,3,DS,1,PercentPhaseFieldOfView,"+ EndOfLine + _
		  "00180095,3,DS,1,PixelBandwidth,"+ EndOfLine + _
		  "00181000,3,LO,1,DeviceSerialNumber,"+ EndOfLine + _
		  "00181004,3,LO,1,PlateID,"+ EndOfLine + _
		  "00181010,3,LO,1,SecondaryCaptureDeviceID,"+ EndOfLine + _
		  "00181011,3STP,LO,1,HardcopyCreationDeviceID,"+ EndOfLine + _
		  "00181012,3,DA,1,DateOfSecondaryCapture,"+ EndOfLine + _
		  "00181014,3,TM,1,TimeOfSecondaryCapture,"+ EndOfLine + _
		  "00181016,3,LO,1,SecondaryCaptureDeviceManufacturer,"+ EndOfLine + _
		  "00181017,3STP,LO,1,HardcopyDeviceManufacturer,"+ EndOfLine + _
		  "00181018,3,LO,1,SecondaryCaptureDeviceManufacturerModelName,"+ EndOfLine + _
		  "00181019,3,LO,1-n,SecondaryCaptureDeviceSoftwareVersion,"+ EndOfLine + _
		  "0018101A,3STP,LO,1-n,HardcopyDeviceSoftwareVersion,"+ EndOfLine + _
		  "0018101B,3STP,LO,1,HardcopyDeviceManufacturerModelName,"+ EndOfLine + _
		  "00181020,3,LO,1-n,SoftwareVersion,"+ EndOfLine + _
		  "00181022,3,SH,1,VideoImageFormatAcquired,"+ EndOfLine + _
		  "00181023,3,LO,1,DigitalImageFormatAcquired,"+ EndOfLine + _
		  "00181030,3,LO,1,ProtocolName,"+ EndOfLine + _
		  "00181040,3,LO,1,ContrastBolusRoute,"+ EndOfLine + _
		  "00181041,3,DS,1,ContrastBolusVolume,"+ EndOfLine + _
		  "00181042,3,TM,1,ContrastBolusStartTime,"+ EndOfLine + _
		  "00181043,3,TM,1,ContrastBolusStopTime,"+ EndOfLine + _
		  "00181044,3,DS,1,ContrastBolusTotalDose,"+ EndOfLine + _
		  "00181045,3,IS,1-n,SyringeCounts,"+ EndOfLine + _
		  "00181046,3,DS,1-n,ContrastFlowRate,"+ EndOfLine + _
		  "00181047,3,DS,1-n,ContrastFlowDuration,"+ EndOfLine + _
		  "00181048,3,CS,1,ContrastBolusIngredient,"+ EndOfLine + _
		  "00181049,3,DS,1,ContrastBolusIngredientConcentration,"+ EndOfLine + _
		  "00181050,3,DS,1,SpatialResolution,"+ EndOfLine + _
		  "00181060,3,DS,1,TriggerTime,"+ EndOfLine + _
		  "00181061,3,LO,1,TriggerSourceOrType,"+ EndOfLine + _
		  "00181062,3,IS,1,NominalInterval,"+ EndOfLine + _
		  "00181063,3,DS,1,FrameTime,"+ EndOfLine + _
		  "00181064,3,LO,1,FramingType,"+ EndOfLine + _
		  "00181065,3,DS,1-n,FrameTimeVector,"+ EndOfLine + _
		  "00181066,3,DS,1,FrameDelay,"+ EndOfLine + _
		  "00181067,3WAV,DS,1,ImageTriggerDelay,"+ EndOfLine + _
		  "00181068,3WAV,DS,1,MultiplexGroupTimeOffset,"+ EndOfLine + _
		  "00181069,3WAV,DS,1,TriggerTimeOffset,"+ EndOfLine + _
		  "0018106A,3WAV,CS,1,SynchronizationTrigger,"+ EndOfLine + _
		  "0018106C,3WAV,US,2,SynchronizationChannel,"+ EndOfLine + _
		  "0018106E,3WAV,UL,1,TriggerSamplePosition,"+ EndOfLine + _
		  "00181070,3,LO,1,RadiopharmaceuticalRoute,"+ EndOfLine + _
		  "00181071,3,DS,1,RadiopharmaceuticalVolume,"+ EndOfLine + _
		  "00181072,3,TM,1,RadiopharmaceuticalStartTime,"+ EndOfLine + _
		  "00181073,3,TM,1,RadiopharmaceuticalStopTime,"+ EndOfLine + _
		  "00181074,3,DS,1,RadionuclideTotalDose,"+ EndOfLine + _
		  "00181075,3PET,DS,1,RadionuclideHalfLife,"+ EndOfLine + _
		  "00181076,3PET,DS,1,RadionuclidePositronFraction,"+ EndOfLine + _
		  "00181077,3PET,DS,1,RadiopharmaceuticalSpecificActivity,"+ EndOfLine + _
		  "00181080,3,CS,1,BeatRejectionFlag,"+ EndOfLine + _
		  "00181081,3,IS,1,LowRRValue,"+ EndOfLine + _
		  "00181082,3,IS,1,HighRRValue,"+ EndOfLine + _
		  "00181083,3,IS,1,IntervalsAcquired,"+ EndOfLine + _
		  "00181084,3,IS,1,IntervalsRejected,"+ EndOfLine + _
		  "00181085,3,LO,1,PVCRejection,"+ EndOfLine + _
		  "00181086,3,IS,1,SkipBeats,"+ EndOfLine + _
		  "00181088,3,IS,1,HeartRate,"+ EndOfLine + _
		  "00181090,3,IS,1,CardiacNumberOfImages,"+ EndOfLine + _
		  "00181094,3,IS,1,TriggerWindow,"+ EndOfLine + _
		  "00181100,3,DS,1,ReconstructionDiameter,"+ EndOfLine + _
		  "00181110,3,DS,1,DistanceSourceToDetector,"+ EndOfLine + _
		  "00181111,3,DS,1,DistanceSourceToPatient,"+ EndOfLine + _
		  "00181114,3,DS,1,EstimatedRadiographicMagnificationFactor,"+ EndOfLine + _
		  "00181120,3,DS,1,GantryDetectorTilt,"+ EndOfLine + _
		  "00181121,3PET,DS,1,GantryDetectorSlew,"+ EndOfLine + _
		  "00181130,3,DS,1,TableHeight,"+ EndOfLine + _
		  "00181131,3,DS,1,TableTraverse,"+ EndOfLine + _
		  "00181134,3,CS,1,TableMotion,"+ EndOfLine + _
		  "00181135,3,DS,1-n,TableVerticalIncrement,"+ EndOfLine + _
		  "00181136,3,DS,1-n,TableLateralIncrement,"+ EndOfLine + _
		  "00181137,3,DS,1-n,TableLongitudinalIncrement,"+ EndOfLine + _
		  "00181138,3,DS,1,TableAngle,"+ EndOfLine + _
		  "0018113A,3DX,CS,1,TableType,"+ EndOfLine + _
		  "00181140,3,CS,1,RotationDirection,"+ EndOfLine + _
		  "00181141,3,DS,1,AngularPosition,"+ EndOfLine + _
		  "00181142,3,DS,1-n,RadialPosition,"+ EndOfLine + _
		  "00181143,3,DS,1,ScanArc,"+ EndOfLine + _
		  "00181144,3,DS,1,AngularStep,"+ EndOfLine + _
		  "00181145,3,DS,1,CenterOfRotationOffset,"+ EndOfLine + _
		  "00181146,3RET,DS,1-n,RotationOffset,"+ EndOfLine + _
		  "00181147,3,CS,1,FieldOfViewShape,"+ EndOfLine + _
		  "00181149,3,IS,02-Jan,FieldOfViewDimensions,"+ EndOfLine + _
		  "00181150,3,IS,1,ExposureTime,"+ EndOfLine + _
		  "00181151,3,IS,1,XrayTubeCurrent,"+ EndOfLine + _
		  "00181152,3,IS,1,Exposure,"+ EndOfLine + _
		  "00181153,3,IS,1,ExposureInuAs,"+ EndOfLine + _
		  "00181154,3,DS,1,AveragePulseWidth,"+ EndOfLine + _
		  "00181155,3,CS,1,RadiationSetting,"+ EndOfLine + _
		  "00181156,3DX,CS,1,RectificationType,"+ EndOfLine + _
		  "0018115a,3,CS,1,RadiationMode,"+ EndOfLine + _
		  "0018115e,3,DS,1,ImageAreaDoseProduct,"+ EndOfLine + _
		  "00181160,3,SH,1,FilterType,"+ EndOfLine + _
		  "00181161,3,LO,1-n,TypeOfFilters,"+ EndOfLine + _
		  "00181162,3,DS,1,IntensifierSize,"+ EndOfLine + _
		  "00181164,3,DS,2,ImagerPixelSpacing,"+ EndOfLine + _
		  "00181166,3,CS,1-n,Grid,"+ EndOfLine + _
		  "00181170,3,IS,1,GeneratorPower,"+ EndOfLine + _
		  "00181180,3,SH,1,CollimatorGridName,"+ EndOfLine + _
		  "00181181,3,CS,1,CollimatorType,"+ EndOfLine + _
		  "00181182,3,IS,02-Jan,FocalDistance,"+ EndOfLine + _
		  "00181183,3,DS,02-Jan,XFocusCenter,"+ EndOfLine + _
		  "00181184,3,DS,02-Jan,YFocusCenter,"+ EndOfLine + _
		  "00181190,3,DS,1-n,FocalSpot,"+ EndOfLine + _
		  "00181191,3DX,CS,1,AnodeTargetMaterial,"+ EndOfLine + _
		  "001811A0,3DX,DS,1,BodyPartThickness,"+ EndOfLine + _
		  "001811A2,3DX,DS,1,CompressionForce,"+ EndOfLine + _
		  "00181200,3,DA,1-n,DateOfLastCalibration,"+ EndOfLine + _
		  "00181201,3,TM,1-n,TimeOfLastCalibration,"+ EndOfLine + _
		  "00181210,3,SH,1-n,ConvolutionKernel,"+ EndOfLine + _
		  "00181240,2,IS,1-n,UpperLowerPixelValues,"+ EndOfLine + _
		  "00181242,3,IS,1,ActualFrameDuration,"+ EndOfLine + _
		  "00181243,3,IS,1,CountRate,"+ EndOfLine + _
		  "00181244,3,US,1,PreferredPlaybackSequencing,"+ EndOfLine + _
		  "00181250,3,SH,1,ReceivingCoil,"+ EndOfLine + _
		  "00181251,3,SH,1,TransmittingCoil,"+ EndOfLine + _
		  "00181260,3,SH,1,PlateType,"+ EndOfLine + _
		  "00181261,3,LO,1,PhosphorType,"+ EndOfLine + _
		  "00181300,3,DS,1,ScanVelocity,"+ EndOfLine + _
		  "00181301,3,CS,1-n,WholeBodyTechnique,"+ EndOfLine + _
		  "00181302,3,IS,1,ScanLength,"+ EndOfLine + _
		  "00181310,3,US,4,AcquisitionMatrix,"+ EndOfLine + _
		  "00181312,3,CS,1,PhaseEncodingDirection,"+ EndOfLine + _
		  "00181314,3,DS,1,FlipAngle,"+ EndOfLine + _
		  "00181315,3,CS,1,VariableFlipAngleFlag,"+ EndOfLine + _
		  "00181316,3,DS,1,SAR,"+ EndOfLine + _
		  "00181318,3,DS,1,dBdt,"+ EndOfLine + _
		  "00181400,3,LO,1,AcquisitionDeviceProcessingDescription,"+ EndOfLine + _
		  "00181401,3,LO,1,AcquisitionDeviceProcessingCode,"+ EndOfLine + _
		  "00181402,3,CS,1,CassetteOrientation,"+ EndOfLine + _
		  "00181403,3,CS,1,CassetteSize,"+ EndOfLine + _
		  "00181404,3,US,1,ExposuresOnPlate,"+ EndOfLine + _
		  "00181405,3,IS,1,RelativeXrayExposure,"+ EndOfLine + _
		  "00181450,3,DS,1,ColumnAngulation,"+ EndOfLine + _
		  "00181460,3,DS,1,TomoLayerHeight,"+ EndOfLine + _
		  "00181470,3,DS,1,TomoAngle,"+ EndOfLine + _
		  "00181480,3,DS,1,TomoTime,"+ EndOfLine + _
		  "00181490,3DX,CS,1,TomoType,"+ EndOfLine + _
		  "00181491,3DX,CS,1,TomoClass,"+ EndOfLine + _
		  "00181495,3DX,IS,1,NumberOfTomosynthesisSourceImages,"+ EndOfLine + _
		  "00181500,3,CS,1,PositionerMotion,"+ EndOfLine + _
		  "00181508,3DX,CS,1,PositionerType,"+ EndOfLine + _
		  "00181510,3,DS,1,PositionerPrimaryAngle,"+ EndOfLine + _
		  "00181511,3,DS,1,PositionerSecondaryAngle,"+ EndOfLine + _
		  "00181520,3,DS,1-n,PositionerPrimaryAngleIncrement,"+ EndOfLine + _
		  "00181521,3,DS,1-n,PositionerSecondaryAngleIncrement,"+ EndOfLine + _
		  "00181530,3,DS,1,DetectorPrimaryAngle,"+ EndOfLine + _
		  "00181531,3,DS,1,DetectorSecondaryAngle,"+ EndOfLine + _
		  "00181600,3,CS,03-Jan,ShutterShape,"+ EndOfLine + _
		  "00181602,3,IS,1,ShutterLeftVerticalEdge,"+ EndOfLine + _
		  "00181604,3,IS,1,ShutterRightVerticalEdge,"+ EndOfLine + _
		  "00181606,3,IS,1,ShutterUpperHorizontalEdge,"+ EndOfLine + _
		  "00181608,3,IS,1,ShutterLowerHorizontalEdge,"+ EndOfLine + _
		  "00181610,3,IS,2,CenterOfCircularShutter,"+ EndOfLine + _
		  "00181612,3,IS,1,RadiusOfCircularShutter,"+ EndOfLine + _
		  "00181620,3,IS,1-n,VerticesOfPolygonalShutter,"+ EndOfLine + _
		  "00181622,3SCP,US,1,ShutterPresentationValue,"+ EndOfLine + _
		  "00181623,3SCP,US,1,ShutterOverlayGroup,"+ EndOfLine + _
		  "00181700,3,CS,03-Jan,CollimatorShape,"+ EndOfLine + _
		  "00181702,3,IS,1,CollimatorLeftVerticalEdge,"+ EndOfLine + _
		  "00181704,3,IS,1,CollimatorRightVerticalEdge,"+ EndOfLine + _
		  "00181706,3,IS,1,CollimatorUpperHorizontalEdge,"+ EndOfLine + _
		  "00181708,3,IS,1,CollimatorLowerHorizontalEdge,"+ EndOfLine + _
		  "00181710,3,IS,2,CenterOfCircularCollimator,"+ EndOfLine + _
		  "00181712,3,IS,1,RadiusOfCircularCollimator,"+ EndOfLine + _
		  "00181720,3,IS,1-n,VerticesOfPolygonalCollimator,"+ EndOfLine + _
		  "00181800,3WAV,CS,1,AcquisitionTimeSynchronized,"+ EndOfLine + _
		  "00181801,3WAV,SH,1,TimeSource,"+ EndOfLine + _
		  "00181802,3WAV,CS,1,TimeDistributionProtocol,"+ EndOfLine + _
		  "00184000,2,LO,1-n,AcquisitionComments,"+ EndOfLine + _
		  "00185000,3,SH,1-n,OutputPower,"+ EndOfLine + _
		  "00185010,3,LO,3,TransducerData,"+ EndOfLine + _
		  "00185012,3,DS,1,FocusDepth,"+ EndOfLine + _
		  "00185020,3,LO,1,ProcessingFunction,"+ EndOfLine + _
		  "00185021,3,LO,1,PostprocessingFunction,"+ EndOfLine + _
		  "00185022,3,DS,1,MechanicalIndex,"+ EndOfLine + _
		  "00185024,3,DS,1,ThermalIndex,"+ EndOfLine + _
		  "00185026,3,DS,1,CranialThermalIndex,"+ EndOfLine + _
		  "00185027,3,DS,1,SoftTissueThermalIndex,"+ EndOfLine + _
		  "00185028,3,DS,1,SoftTissueFocusThermalIndex,"+ EndOfLine + _
		  "00185029,3,DS,1,SoftTissueSurfaceThermalIndex,"+ EndOfLine + _
		  "00185030,2,DS,1,DynamicRange,"+ EndOfLine + _
		  "00185040,2,DS,1,TotalGain,"+ EndOfLine + _
		  "00185050,3,IS,1,DepthOfScanField,"+ EndOfLine + _
		  "00185100,3,CS,1,PatientPosition,"+ EndOfLine + _
		  "00185101,3,CS,1,ViewPosition,"+ EndOfLine + _
		  "00185104,3DX,SQ,1,ProjectionEponymousNameCodeSequence,"+ EndOfLine + _
		  "00185210,3,DS,6,ImageTransformationMatrix,"+ EndOfLine + _
		  "00185212,3,DS,3,ImageTranslationVector,"+ EndOfLine + _
		  "00186000,3,DS,1,Sensitivity,"+ EndOfLine + _
		  "00186011,3,SQ,1,SequenceOfUltrasoundRegions,"+ EndOfLine + _
		  "00186012,3,US,1,RegionSpatialFormat,"+ EndOfLine + _
		  "00186014,3,US,1,RegionDataType,"+ EndOfLine + _
		  "00186016,3,UL,1,RegionFlags,"+ EndOfLine + _
		  "00186018,3,UL,1,RegionLocationMinX0,"+ EndOfLine + _
		  "0018601a,3,UL,1,RegionLocationMinY0,"+ EndOfLine + _
		  "0018601c,3,UL,1,RegionLocationMaxX1,"+ EndOfLine + _
		  "0018601e,3,UL,1,RegionLocationMaxY1,"+ EndOfLine + _
		  "00186020,3,SL,1,ReferencePixelX0,"+ EndOfLine + _
		  "00186022,3,SL,1,ReferencePixelY0,"+ EndOfLine + _
		  "00186024,3,US,1,PhysicalUnitsXDirection,"+ EndOfLine + _
		  "00186026,3,US,1,PhysicalUnitsYDirection,"+ EndOfLine + _
		  "00186028,3,FD,1,ReferencePixelPhysicalValueX,"+ EndOfLine + _
		  "0018602a,3,FD,1,ReferencePixelPhysicalValueY,"+ EndOfLine + _
		  "0018602c,3,FD,1,PhysicalDeltaX,"+ EndOfLine + _
		  "0018602e,3,FD,1,PhysicalDeltaY,"+ EndOfLine + _
		  "00186030,3,UL,1,TransducerFrequency,"+ EndOfLine + _
		  "00186031,3,CS,1,TransducerType,"+ EndOfLine + _
		  "00186032,3,UL,1,PulseRepetitionFrequency,"+ EndOfLine + _
		  "00186034,3,FD,1,DopplerCorrectionAngle,"+ EndOfLine + _
		  "00186036,3,FD,1,SteeringAngle,"+ EndOfLine + _
		  "00186038,3,UL,1,DopplerSampleVolumeXPosition,"+ EndOfLine + _
		  "0018603a,3,UL,1,DopplerSampleVolumeYPosition,"+ EndOfLine + _
		  "0018603c,3,UL,1,TMLinePositionX0,"+ EndOfLine + _
		  "0018603e,3,UL,1,TMLinePositionY0,"+ EndOfLine + _
		  "00186040,3,UL,1,TMLinePositionX1,"+ EndOfLine + _
		  "00186042,3,UL,1,TMLinePositionY1,"+ EndOfLine + _
		  "00186044,3,US,1,PixelComponentOrganization,"+ EndOfLine + _
		  "00186046,3,UL,1,PixelComponentMask,"+ EndOfLine + _
		  "00186048,3,UL,1,PixelComponentRangeStart,"+ EndOfLine + _
		  "0018604a,3,UL,1,PixelComponentRangeStop,"+ EndOfLine + _
		  "0018604c,3,US,1,PixelComponentPhysicalUnits,"+ EndOfLine + _
		  "0018604e,3,US,1,PixelComponentDataType,"+ EndOfLine + _
		  "00186050,3,UL,1,NumberOfTableBreakPoints,"+ EndOfLine + _
		  "00186052,3,UL,1-n,TableOfXBreakPoints,"+ EndOfLine + _
		  "00186054,3,FD,1-n,TableOfYBreakPoints,"+ EndOfLine + _
		  "00186056,3,UL,1,NumberOfTableEntries,"+ EndOfLine + _
		  "00186058,3,UL,1-n,TableOfPixelValues,"+ EndOfLine + _
		  "0018605a,3,FL,1-n,TableOfParameterValues,"+ EndOfLine + _
		  "00187000,3DX,CS,1,DetectorConditionsNominalFlag,"+ EndOfLine + _
		  "00187001,3DX,DS,1,DetectorTemperature,"+ EndOfLine + _
		  "00187004,3DX,CS,1,DetectorType,"+ EndOfLine + _
		  "00187005,3DX,CS,1,DetectorConfiguration,"+ EndOfLine + _
		  "00187006,3DX,LT,1,DetectorDescription,"+ EndOfLine + _
		  "00187008,3DX,LT,1,DetectorMode,"+ EndOfLine + _
		  "0018700A,3DX,SH,1,DetectorID,"+ EndOfLine + _
		  "0018700C,3DX,DA,1,DateOfLastDetectorCalibration,"+ EndOfLine + _
		  "0018700E,3DX,TM,1,TimeOfLastDetectorCalibration,"+ EndOfLine + _
		  "00187010,3DX,IS,1,ExposuresOnDetectorSinceLastCalibration,"+ EndOfLine + _
		  "00187011,3DX,IS,1,ExposuresOnDetectorSinceManufactured,"+ EndOfLine + _
		  "00187012,3DX,DS,1,DetectorTimeSinceLastExposure,"+ EndOfLine + _
		  "00187014,3DX,DS,1,DetectorActiveTime,"+ EndOfLine + _
		  "00187016,3DX,DS,1,DetectorActivationOffsetFromExposure,"+ EndOfLine + _
		  "0018701A,3DX,DS,2,DetectorBinning,"+ EndOfLine + _
		  "00187020,3DX,DS,2,DetectorElementPhysicalSize,"+ EndOfLine + _
		  "00187022,3DX,DS,2,DetectorElementSpacing,"+ EndOfLine + _
		  "00187024,3DX,CS,1,DetectorActiveShape,"+ EndOfLine + _
		  "00187026,3DX,DS,02-Jan,DetectorActiveDimensions,"+ EndOfLine + _
		  "00187028,3DX,DS,2,DetectorActiveOrigin,"+ EndOfLine + _
		  "00187030,3DX,DS,2,FieldOfViewOrigin,"+ EndOfLine + _
		  "00187032,3DX,DS,1,FieldOfViewRotation,"+ EndOfLine + _
		  "00187034,3DX,CS,1,FieldOfViewHorizontalFlip,"+ EndOfLine + _
		  "00187040,3DX,LT,1,GridAbsorbingMaterial,"+ EndOfLine + _
		  "00187041,3DX,LT,1,GridSpacingMaterial,"+ EndOfLine + _
		  "00187042,3DX,DS,1,GridThickness,"+ EndOfLine + _
		  "00187044,3DX,DS,1,GridPitch,"+ EndOfLine + _
		  "00187046,3DX,IS,2,GridAspectRatio,"+ EndOfLine + _
		  "00187048,3DX,DS,1,GridPeriod,"+ EndOfLine + _
		  "0018704C,3DX,DS,1,GridFocalDistance,"+ EndOfLine + _
		  "00187050,3DX,LT,1-n,FilterMaterial,"+ EndOfLine + _
		  "00187052,3DX,DS,1-n,FilterThicknessMinimum,"+ EndOfLine + _
		  "00187054,3DX,DS,1-n,FilterThicknessMaximum,"+ EndOfLine + _
		  "00187060,3DX,CS,1,ExposureControlMode,"+ EndOfLine + _
		  "00187062,3DX,LT,1,ExposureControlModeDescription,"+ EndOfLine + _
		  "00187064,3DX,CS,1,ExposureStatus,"+ EndOfLine + _
		  "00187065,3DX,DS,1,PhototimerSetting,"+ EndOfLine + _
		  "00200000,3,UL,1,RelationshipGroupLength,"+ EndOfLine + _
		  "0020000d,3,UI,1,StudyInstanceUID,"+ EndOfLine + _
		  "0020000e,3,UI,1,SeriesInstanceUID,"+ EndOfLine + _
		  "00200010,3,SH,1,StudyID,"+ EndOfLine + _
		  "00200011,3,IS,1,SeriesNumber,"+ EndOfLine + _
		  "00200012,3,IS,1,AcquisitionNumber,"+ EndOfLine + _
		  "00200013,3,IS,1,InstanceNumber,"+ EndOfLine + _
		  "00200014,3RET,IS,1,IsotopeNumber,"+ EndOfLine + _
		  "00200015,3RET,IS,1,PhaseNumber,"+ EndOfLine + _
		  "00200016,3RET,IS,1,IntervalNumber,"+ EndOfLine + _
		  "00200017,3RET,IS,1,TimeSlotNumber,"+ EndOfLine + _
		  "00200018,3RET,IS,1,AngleNumber,"+ EndOfLine + _
		  "00200019,3???,IS,1,ItemNumber,"+ EndOfLine + _
		  "00200020,3,CS,2,PatientOrientation,"+ EndOfLine + _
		  "00200022,3,IS,1,OverlayNumber,"+ EndOfLine + _
		  "00200024,3,IS,1,CurveNumber,"+ EndOfLine + _
		  "00200026,3,IS,1,LUTNumber,"+ EndOfLine + _
		  "00200030,2,DS,3,ImagePosition,"+ EndOfLine + _
		  "00200032,3,DS,3,ImagePositionPatient,"+ EndOfLine + _
		  "00200035,2,DS,6,ImageOrientation,"+ EndOfLine + _
		  "00200037,3,DS,6,ImageOrientationPatient,"+ EndOfLine + _
		  "00200050,2,DS,1,Location,"+ EndOfLine + _
		  "00200052,3,UI,1,FrameOfReferenceUID,"+ EndOfLine + _
		  "00200060,3,CS,1,Laterality,"+ EndOfLine + _
		  "00200062,3DX,CS,1,ImageLaterality,"+ EndOfLine + _
		  "00200070,2,LT,1,ImageGeometryType,"+ EndOfLine + _
		  "00200080,2,LT,1-n,MaskingImage,"+ EndOfLine + _
		  "00200100,3,IS,1,TemporalPositionIdentifier,"+ EndOfLine + _
		  "00200105,3,IS,1,NumberOfTemporalPositions,"+ EndOfLine + _
		  "00200110,3,DS,1,TemporalResolution,"+ EndOfLine + _
		  "00200200,3WAV,UI,1,SynchronizationFrameOfReferenceUID,"+ EndOfLine + _
		  "00201000,3,IS,1,SeriesInStudy,"+ EndOfLine + _
		  "00201001,2,IS,1,AcquisitionsInSeries,"+ EndOfLine + _
		  "00201002,3,IS,1,ImagesInAcquisition,"+ EndOfLine + _
		  "00201003,2,IS,1,ImagesInSeries,"+ EndOfLine + _
		  "00201004,3,IS,1,AcquisitionsInStudy,"+ EndOfLine + _
		  "00201005,2,IS,1,ImagesInStudy,"+ EndOfLine + _
		  "00201020,2,LT,1-n,Reference,"+ EndOfLine + _
		  "00201040,3,LO,1,PositionReferenceIndicator,"+ EndOfLine + _
		  "00201041,3,DS,1,SliceLocation,"+ EndOfLine + _
		  "00201070,3,IS,1-n,OtherStudyNumbers,"+ EndOfLine + _
		  "00201200,3,IS,1,NumberOfPatientRelatedStudies,"+ EndOfLine + _
		  "00201202,3,IS,1,NumberOfPatientRelatedSeries,"+ EndOfLine + _
		  "00201204,3,IS,1,NumberOfPatientRelatedImages,"+ EndOfLine + _
		  "00201206,3,IS,1,NumberOfStudyRelatedSeries,"+ EndOfLine + _
		  "00201208,3,IS,1,NumberOfStudyRelatedImages,"+ EndOfLine + _
		  "00201209,3???,IS,1,NumberOfStudyRelatedInstances,"+ EndOfLine + _
		  "002031xx,2,LT,1-n,SourceImageID,"+ EndOfLine + _
		  "00203401,2,LT,1,ModifyingDeviceID,"+ EndOfLine + _
		  "00203402,2,LO,1,ModifiedImageID,"+ EndOfLine + _
		  "00203403,2,DA,1,ModifiedImageDate,"+ EndOfLine + _
		  "00203404,2,LT,1,ModifyingDeviceManufacturer,"+ EndOfLine + _
		  "00203405,2,TM,1,ModifiedImageTime,"+ EndOfLine + _
		  "00203406,2,LT,1,ModifiedImageDescription,"+ EndOfLine + _
		  "00204000,3,LT,1,ImageComments,"+ EndOfLine + _
		  "00205000,2,AT,1-n,OriginalImageIdentification,"+ EndOfLine + _
		  "00205002,2,LT,1-n,OriginalImageIdentificationNomenclature,"+ EndOfLine + _
		  "00280000,3,UL,1,ImagePresentationGroupLength,"+ EndOfLine + _
		  "00280002,3,US,1,SamplesPerPixel,"+ EndOfLine + _
		  "00280004,3,CS,1,PhotometricInterpretation,"+ EndOfLine + _
		  "00280005,2,US,1,ImageDimensions,"+ EndOfLine + _
		  "00280006,3,US,1,PlanarConfiguration,"+ EndOfLine + _
		  "00280008,3,IS,1,NumberOfFrames,"+ EndOfLine + _
		  "00280009,3,AT,1-n,FrameIncrementPointer,"+ EndOfLine + _
		  "00280010,3,US,1,Rows,"+ EndOfLine + _
		  "00280011,3,US,1,Columns,"+ EndOfLine + _
		  "00280012,3,US,1,Planes,"+ EndOfLine + _
		  "00280014,3,US,1,UltrasoundColorDataPresent,"+ EndOfLine + _
		  "00280030,3,DS,2,PixelSpacing,"+ EndOfLine + _
		  "00280031,3,DS,2,ZoomFactor,"+ EndOfLine + _
		  "00280032,3,DS,2,ZoomCenter,"+ EndOfLine + _
		  "00280034,3,IS,2,PixelAspectRatio,"+ EndOfLine + _
		  "00280040,2,LT,1,ImageFormat,"+ EndOfLine + _
		  "00280050,2,LO,1-n,ManipulatedImage,"+ EndOfLine + _
		  "00280051,3,CS,1-n,CorrectedImage,"+ EndOfLine + _
		  "0028005f,2C,LO,1,CompressionRecognitionCode,"+ EndOfLine + _
		  "00280060,2,LO,1,CompressionCode,"+ EndOfLine + _
		  "00280061,2C,SH,1,CompressionOriginator,"+ EndOfLine + _
		  "00280062,2C,SH,1,CompressionLabel,"+ EndOfLine + _
		  "00280063,2C,SH,1,CompressionDescription,"+ EndOfLine + _
		  "00280065,2C,LO,1-n,CompressionSequence,"+ EndOfLine + _
		  "00280066,2C,AT,1-n,CompressionStepPointers,"+ EndOfLine + _
		  "00280068,2C,US,1,RepeatInterval,"+ EndOfLine + _
		  "00280069,2C,US,1,BitsGrouped,"+ EndOfLine + _
		  "00280070,2C,US,1-n,PerimeterTable,"+ EndOfLine + _
		  "00280071,2C,US or SS,1,PerimeterValue,"+ EndOfLine + _
		  "00280080,2C,US,1,PredictorRows,"+ EndOfLine + _
		  "00280081,2C,US,1,PredictorColumns,"+ EndOfLine + _
		  "00280082,2C,US,1-n,PredictorConstants,"+ EndOfLine + _
		  "00280090,2C,LO,1,BlockedPixels,"+ EndOfLine + _
		  "00280091,2C,US,1,BlockRows,"+ EndOfLine + _
		  "00280092,2C,US,1,BlockColumns,"+ EndOfLine + _
		  "00280093,2C,US,1,RowOverlap,"+ EndOfLine + _
		  "00280094,2C,US,1,ColumnOverlap,"+ EndOfLine + _
		  "00280100,3,US,1,BitsAllocated,"+ EndOfLine + _
		  "00280101,3,US,1,BitsStored,"+ EndOfLine + _
		  "00280102,3,US,1,HighBit,"+ EndOfLine + _
		  "00280103,3,US,1,PixelRepresentation,"+ EndOfLine + _
		  "00280104,2,XS,1,SmallestValidPixelValue,"+ EndOfLine + _
		  "00280105,2,XS,1,LargestValidPixelValue,"+ EndOfLine + _
		  "00280106,3,XS,1,SmallestImagePixelValue,"+ EndOfLine + _
		  "00280107,3,XS,1,LargestImagePixelValue,"+ EndOfLine + _
		  "00280108,3,XS,1,SmallestPixelValueInSeries,"+ EndOfLine + _
		  "00280109,3,XS,1,LargestPixelValueInSeries,"+ EndOfLine + _
		  "00280110,3,XS,1,SmallestPixelValueInPlane,"+ EndOfLine + _
		  "00280111,3,XS,1,LargestPixelValueInPlane,"+ EndOfLine + _
		  "00280120,3,XS,1,PixelPaddingValue,"+ EndOfLine + _
		  "00280200,2,US,1,ImageLocation,"+ EndOfLine + _
		  "00280300,3DX,CS,1,QualityControlImage,"+ EndOfLine + _
		  "00280301,3DX,CS,1,BurnedInAnnotation,"+ EndOfLine + _
		  "00280400,2C,LO,1,TransformLabel,"+ EndOfLine + _
		  "00280401,2C,LO,1,TransformVersionNumber,"+ EndOfLine + _
		  "00280402,2C,US,1,NumberOfTransformSteps,"+ EndOfLine + _
		  "00280403,2C,LO,1-n,SequenceOfCompressedData,"+ EndOfLine + _
		  "00280404,2C,AT,1-n,DetailsOfCoefficients,"+ EndOfLine + _
		  "002804x0,2C,US,1,RowsForNthOrderCoefficients,"+ EndOfLine + _
		  "002804x1,2C,US,1,ColumnsForNthOrderCoefficients,"+ EndOfLine + _
		  "002804x2,2C,LO,1-n,CoefficientCoding,"+ EndOfLine + _
		  "002804x3,2C,AT,1-n,CoefficientCodingPointers,"+ EndOfLine + _
		  "00280700,2C,LO,1,DCTLabel,"+ EndOfLine + _
		  "00280701,2C,LO,1-n,DataBlockDescription,"+ EndOfLine + _
		  "00280702,2C,AT,1-n,DataBlock,"+ EndOfLine + _
		  "00280710,2C,US,1,NormalizationFactorFormat,"+ EndOfLine + _
		  "00280720,2C,US,1,ZonalMapNumberFormat,"+ EndOfLine + _
		  "00280721,2C,AT,1-n,ZonalMapLocation,"+ EndOfLine + _
		  "00280722,2C,US,1,ZonalMapFormat,"+ EndOfLine + _
		  "00280730,2C,US,1,AdaptiveMapFormat,"+ EndOfLine + _
		  "00280740,2C,US,1,CodeNumberFormat,"+ EndOfLine + _
		  "002808x0,2C,LO,1-n,CodeLabel,"+ EndOfLine + _
		  "002808x2,2C,US,1,NumberOfTables,"+ EndOfLine + _
		  "002808x3,2C,AT,1-n,CodeTableLocation,"+ EndOfLine + _
		  "002808x4,2C,US,1,BitsForCodeWord,"+ EndOfLine + _
		  "002808x8,2C,AT,1-n,ImageDataLocation,"+ EndOfLine + _
		  "00281040,3,CS,1,PixelIntensityRelationship,"+ EndOfLine + _
		  "00281041,3DX,SS,1,PixelIntensityRelationshipSign,"+ EndOfLine + _
		  "00281050,3,DS,1-n,WindowCenter,"+ EndOfLine + _
		  "00281051,3,DS,1-n,WindowWidth,"+ EndOfLine + _
		  "00281052,3,DS,1,RescaleIntercept,"+ EndOfLine + _
		  "00281053,3,DS,1,RescaleSlope,"+ EndOfLine + _
		  "00281054,3,LO,1,RescaleType,"+ EndOfLine + _
		  "00281055,3,LO,1-n,WindowCenterWidthExplanation,"+ EndOfLine + _
		  "00281080,2,LT,1,GrayScale,"+ EndOfLine + _
		  "00281090,3,CS,1,RecommendedViewingMode,"+ EndOfLine + _
		  "00281100,2,XS,3,GrayLookupTableDescriptor,"+ EndOfLine + _
		  "00281101,3,XS,3,RedPaletteColorLookupTableDescriptor,"+ EndOfLine + _
		  "00281102,3,XS,3,GreenPaletteColorLookupTableDescriptor,"+ EndOfLine + _
		  "00281103,3,XS,3,BluePaletteColorLookupTableDescriptor,"+ EndOfLine + _
		  "00281111,3DFT,XS,4,LargeRedPaletteColorLookupTableDescriptor,"+ EndOfLine + _
		  "00281112,3DFT,XS,4,LargeGreenPaletteColorLookupTableDescriptor,"+ EndOfLine + _
		  "00281113,3DFT,XS,4,LargeBluePaletteColorLookupTableDescriptor,"+ EndOfLine + _
		  "00281199,3,UI,1,PaletteColorLookupTableUID,"+ EndOfLine + _
		  "00281200,2,XS,1-n,GrayLookupTableData,"+ EndOfLine + _
		  "00281201,3,OW,1-n,RedPaletteColorLookupTableData,"+ EndOfLine + _
		  "00281202,3,OW,1-n,GreenPaletteColorLookupTableData,"+ EndOfLine + _
		  "00281203,3,OW,1-n,BluePaletteColorLookupTableData,"+ EndOfLine + _
		  "00281211,3DFT,OW,1,LargeRedPaletteColorLookupTableData,"+ EndOfLine + _
		  "00281212,3DFT,OW,1,LargeGreenPaletteColorLookupTableData,"+ EndOfLine + _
		  "00281213,3DFT,OW,1,LargeBluePaletteColorLookupTableData,"+ EndOfLine + _
		  "00281214,3DFT,UI,1,LargePaletteColorLookupTableUID,"+ EndOfLine + _
		  "00281221,3,OW,1,SegmentedRedPaletteColorLookupTableData,"+ EndOfLine + _
		  "00281222,3,OW,1,SegmentedGreenPaletteColorLookupTableData,"+ EndOfLine + _
		  "00281223,3,OW,1,SegmentedBluePaletteColorLookupTableData,"+ EndOfLine + _
		  "00281300,3DX,CS,1,ImplantPresent,"+ EndOfLine + _
		  "00282110,3,CS,1,LossyImageCompression,"+ EndOfLine + _
		  "00282112,3DX,DS,1-n,LossyImageCompressionRatio,"+ EndOfLine + _
		  "00283000,3,SQ,1,ModalityLUTSequence,"+ EndOfLine + _
		  "00283002,3,US,3,LUTDescriptor,"+ EndOfLine + _
		  "00283003,3,LO,1,LUTExplanation,"+ EndOfLine + _
		  "00283004,3,LO,1,ModalityLUTType,"+ EndOfLine + _
		  "00283006,3,US,1-n,LUTData,"+ EndOfLine + _
		  "00283010,3,SQ,1,VOILUTSequence,"+ EndOfLine + _
		  "00283110,3SCP,SQ,1,SoftcopyVOILUTSequence,"+ EndOfLine + _
		  "00284000,2,LT,1-n,ImagePresentationComments,"+ EndOfLine + _
		  "00285000,3,SQ,1,BiplaneAcquisitionSequence,"+ EndOfLine + _
		  "00286010,3,US,1,RepresentativeFrameNumber,"+ EndOfLine + _
		  "00286020,3,US,1-n,FrameNumbersOfInterest,"+ EndOfLine + _
		  "00286022,3,LO,1-n,FrameOfInterestDescription,"+ EndOfLine + _
		  "00286030,3,US,1-n,MaskPointer,"+ EndOfLine + _
		  "00286040,3,US,1-n,RWavePointer,"+ EndOfLine + _
		  "00286100,3,SQ,1,MaskSubtractionSequence,"+ EndOfLine + _
		  "00286101,3,CS,1,MaskOperation,"+ EndOfLine + _
		  "00286102,3,US,1-n,ApplicableFrameRange,"+ EndOfLine + _
		  "00286110,3,US,1-n,MaskFrameNumbers,"+ EndOfLine + _
		  "00286112,3,US,1,ContrastFrameAveraging,"+ EndOfLine + _
		  "00286114,3,FL,2,MaskSubPixelShift,"+ EndOfLine + _
		  "00286120,3,SS,1,TIDOffset,"+ EndOfLine + _
		  "00286190,3,ST,1,MaskOperationExplanation,"+ EndOfLine + _
		  "00320000,3,UL,1,StudyGroupLength,"+ EndOfLine + _
		  "0032000a,3,CS,1,StudyStatusID,"+ EndOfLine + _
		  "0032000c,3,CS,1,StudyPriorityID,"+ EndOfLine + _
		  "00320012,3,LO,1,StudyIDIssuer,"+ EndOfLine + _
		  "00320032,3,DA,1,StudyVerifiedDate,"+ EndOfLine + _
		  "00320033,3,TM,1,StudyVerifiedTime,"+ EndOfLine + _
		  "00320034,3,DA,1,StudyReadDate,"+ EndOfLine + _
		  "00320035,3,TM,1,StudyReadTime,"+ EndOfLine + _
		  "00321000,3,DA,1,ScheduledStudyStartDate,"+ EndOfLine + _
		  "00321001,3,TM,1,ScheduledStudyStartTime,"+ EndOfLine + _
		  "00321010,3,DA,1,ScheduledStudyStopDate,"+ EndOfLine + _
		  "00321011,3,TM,1,ScheduledStudyStopTime,"+ EndOfLine + _
		  "00321020,3,LO,1,ScheduledStudyLocation,"+ EndOfLine + _
		  "00321021,3,AE,1-n,ScheduledStudyLocationAETitle,"+ EndOfLine + _
		  "00321030,3,LO,1,ReasonForStudy,"+ EndOfLine + _
		  "00321032,3,PN,1,RequestingPhysician,"+ EndOfLine + _
		  "00321033,3,LO,1,RequestingService,"+ EndOfLine + _
		  "00321040,3,DA,1,StudyArrivalDate,"+ EndOfLine + _
		  "00321041,3,TM,1,StudyArrivalTime,"+ EndOfLine + _
		  "00321050,3,DA,1,StudyCompletionDate,"+ EndOfLine + _
		  "00321051,3,TM,1,StudyCompletionTime,"+ EndOfLine + _
		  "00321055,3,CS,1,StudyComponentStatusID,"+ EndOfLine + _
		  "00321060,3,LO,1,RequestedProcedureDescription,"+ EndOfLine + _
		  "00321064,3,SQ,1,RequestedProcedureCodeSequence,"+ EndOfLine + _
		  "00321070,3,LO,1,RequestedContrastAgent,"+ EndOfLine + _
		  "00324000,3,LT,1,StudyComments,"+ EndOfLine + _
		  "00380000,3,UL,1,VisitGroupLength,"+ EndOfLine + _
		  "00380004,3,SQ,1,ReferencedPatientAliasSequence,"+ EndOfLine + _
		  "00380008,3,CS,1,VisitStatusID,"+ EndOfLine + _
		  "00380010,3,LO,1,AdmissionID,"+ EndOfLine + _
		  "00380011,3,LO,1,IssuerOfAdmissionID,"+ EndOfLine + _
		  "00380016,3,LO,1,RouteOfAdmissions,"+ EndOfLine + _
		  "0038001a,3,DA,1,ScheduledAdmissionDate,"+ EndOfLine + _
		  "0038001b,3,TM,1,ScheduledAdmissionTime,"+ EndOfLine + _
		  "0038001c,3,DA,1,ScheduledDischargeDate,"+ EndOfLine + _
		  "0038001d,3,TM,1,ScheduledDischargeTime,"+ EndOfLine + _
		  "0038001e,3,LO,1,ScheduledPatientInstitutionResidence,"+ EndOfLine + _
		  "00380020,3,DA,1,AdmittingDate,"+ EndOfLine + _
		  "00380021,3,TM,1,AdmittingTime,"+ EndOfLine + _
		  "00380030,3,DA,1,DischargeDate,"+ EndOfLine + _
		  "00380032,3,TM,1,DischargeTime,"+ EndOfLine + _
		  "00380040,3,LO,1,DischargeDiagnosisDescription,"+ EndOfLine + _
		  "00380044,3,SQ,1,DischargeDiagnosisCodeSequence,"+ EndOfLine + _
		  "00380050,3,LO,1,SpecialNeeds,"+ EndOfLine + _
		  "00380300,3,LO,1,CurrentPatientLocation,"+ EndOfLine + _
		  "00380400,3,LO,1,PatientInstitutionResidence,"+ EndOfLine + _
		  "00380500,3,LO,1,PatientState,"+ EndOfLine + _
		  "00384000,3,LT,1,VisitComments,"+ EndOfLine + _
		  "003A0004,3WAV,CS,1,WaveformOriginality,"+ EndOfLine + _
		  "003A0005,3WAV,US,1,NumberOfWaveformChannels,"+ EndOfLine + _
		  "003A0010,3WAV,UL,1,NumberOfWaveformSamples,"+ EndOfLine + _
		  "003A001A,3WAV,DS,1,SamplingFrequency,"+ EndOfLine + _
		  "003A0020,3WAV,SH,1,MultiplexGroupLabel,"+ EndOfLine + _
		  "003A0200,3WAV,SQ,1,ChannelDefinitionSequence,"+ EndOfLine + _
		  "003A0202,3WAV,IS,1,WaveformChannelNumber,"+ EndOfLine + _
		  "003A0203,3WAV,SH,1,ChannelLabel,"+ EndOfLine + _
		  "003A0205,3WAV,CS,1-n,ChannelStatus,"+ EndOfLine + _
		  "003A0208,3WAV,SQ,1,ChannelSourceSequence,"+ EndOfLine + _
		  "003A0209,3WAV,SQ,1,ChannelSourceModifiersSequence,"+ EndOfLine + _
		  "003A020A,3WAV,SQ,1,SourceWaveformSequence,"+ EndOfLine + _
		  "003A020C,3WAV,LO,1,ChannelDerivationDescription,"+ EndOfLine + _
		  "003A0210,3WAV,DS,1,ChannelSensitivity,"+ EndOfLine + _
		  "003A0211,3WAV,SQ,1,ChannelSensitivityUnitsSequence,"+ EndOfLine + _
		  "003A0212,3WAV,DS,1,ChannelSensitivityCorrectionFactor,"+ EndOfLine + _
		  "003A0213,3WAV,DS,1,ChannelBaseline,"+ EndOfLine + _
		  "003A0214,3WAV,DS,1,ChannelTimeSkew,"+ EndOfLine + _
		  "003A0215,3WAV,DS,1,ChannelSampleSkew,"+ EndOfLine + _
		  "003A0218,3WAV,DS,1,ChannelOffset,"+ EndOfLine + _
		  "003A021A,3WAV,US,1,WaveformBitsStored,"+ EndOfLine + _
		  "003A0220,3WAV,DS,1,FilterLowFrequency,"+ EndOfLine + _
		  "003A0221,3WAV,DS,1,FilterHighFrequency,"+ EndOfLine + _
		  "003A0222,3WAV,DS,1,NotchFilterFrequency,"+ EndOfLine + _
		  "003A0223,3WAV,DS,1,NotchFilterBandwidth,"+ EndOfLine + _
		  "00400001,3,AE,1,ScheduledStationAETitle,"+ EndOfLine + _
		  "00400002,3,DA,1,ScheduledProcedureStepStartDate,"+ EndOfLine + _
		  "00400003,3,TM,1,ScheduledProcedureStepStartTime,"+ EndOfLine + _
		  "00400004,3,DA,1,ScheduledProcedureStepEndDate,"+ EndOfLine + _
		  "00400005,3,TM,1,ScheduledProcedureStepEndTime,"+ EndOfLine + _
		  "00400006,3,PN,1,ScheduledPerformingPhysicianName,"+ EndOfLine + _
		  "00400007,3,LO,1,ScheduledProcedureStepDescription,"+ EndOfLine + _
		  "00400008,3,SQ,1,ScheduledActionItemCodeSequence,"+ EndOfLine + _
		  "00400009,3,SH,1,ScheduledProcedureStepID,"+ EndOfLine + _
		  "00400010,3,SH,1,ScheduledStationName,"+ EndOfLine + _
		  "00400011,3,SH,1,ScheduledProcedureStepLocation,"+ EndOfLine + _
		  "00400012,3,LO,1,PreMedication,"+ EndOfLine + _
		  "00400020,3,CS,1,ScheduledProcedureStepStatus,"+ EndOfLine + _
		  "00400100,3,SQ,1,ScheduledProcedureStepSequence,"+ EndOfLine + _
		  "00400220,3PPS,SQ,1,ReferencedStandaloneSOPInstanceSequence,"+ EndOfLine + _
		  "00400241,3PPS,AE,1,PerformedStationAETitle,"+ EndOfLine + _
		  "00400242,3PPS,SH,1,PerformedStationName,"+ EndOfLine + _
		  "00400243,3PPS,SH,1,PerformedLocation,"+ EndOfLine + _
		  "00400244,3PPS,DA,1,PerformedProcedureStepStartDate,"+ EndOfLine + _
		  "00400245,3PPS,TM,1,PerformedProcedureStepStartTime,"+ EndOfLine + _
		  "00400250,3PPS,DA,1,PerformedProcedureStepEndDate,"+ EndOfLine + _
		  "00400251,3PPS,TM,1,PerformedProcedureStepEndTime,"+ EndOfLine + _
		  "00400252,3PPS,CS,1,PerformedProcedureStepStatus,"+ EndOfLine + _
		  "00400253,3PPS,SH,1,PerformedProcedureStepID,"+ EndOfLine + _
		  "00400254,3PPS,LO,1,PerformedProcedureStepDescription,"+ EndOfLine + _
		  "00400255,3PPS,LO,1,PerformedProcedureTypeDescription,"+ EndOfLine + _
		  "00400260,3PPS,SQ,1,PerformedActionItemSequence,"+ EndOfLine + _
		  "00400270,3PPS,SQ,1,ScheduledStepAttributesSequence,"+ EndOfLine + _
		  "00400275,3PPS,SQ,1,RequestAttributesSequence,"+ EndOfLine + _
		  "00400280,3PPS,ST,1,CommentsOnThePerformedProcedureSteps,"+ EndOfLine + _
		  "00400293,3PPS,SQ,1,QuantitySequence,"+ EndOfLine + _
		  "00400294,3PPS,DS,1,Quantity,"+ EndOfLine + _
		  "00400295,3PPS,SQ,1,MeasuringUnitsSequence,"+ EndOfLine + _
		  "00400296,3PPS,SQ,1,BillingItemSequence,"+ EndOfLine + _
		  "00400300,3PPS,US,1,TotalTimeOfFlouroscopy,"+ EndOfLine + _
		  "00400302,3PPS,US,1,EntranceDose,"+ EndOfLine + _
		  "00400303,3PPS,US,02-Jan,ExposedArea,"+ EndOfLine + _
		  "00400306,3DX,DS,1,DistanceSourceToEntrance,"+ EndOfLine + _
		  "00400307,3DX,DS,1,DistanceSourceToSupport,"+ EndOfLine + _
		  "00400310,3PPS,ST,1,CommentsOnRadiationDose,"+ EndOfLine + _
		  "00400312,3DX,DS,1,XRayOutput,"+ EndOfLine + _
		  "00400314,3DX,DS,1,HalfValueLayer,"+ EndOfLine + _
		  "00400316,3DX,DS,1,OrganDose,"+ EndOfLine + _
		  "00400318,3DX,CS,1,OrganExposed,"+ EndOfLine + _
		  "00400320,3PPS,SQ,1,BillingProcedureStepSequence,"+ EndOfLine + _
		  "00400321,3PPS,SQ,1,FilmConsumptionSequence,"+ EndOfLine + _
		  "00400324,3PPS,SQ,1,BillingSuppliesAndDevicesSequence,"+ EndOfLine + _
		  "00400330,3PPS,SQ,1,ReferencedProcedureStepSequence,"+ EndOfLine + _
		  "00400340,3PPS,SQ,1,PerformedSeriesSequence,"+ EndOfLine + _
		  "00400400,3,LT,1,CommentsOnScheduledProcedureStep,"+ EndOfLine + _
		  "0040050A,3DX,LO,1,SpecimenAccessionNumber,"+ EndOfLine + _
		  "00400550,3DX,SQ,1,SpecimenSequence,"+ EndOfLine + _
		  "00400551,3DX,LO,1,SpecimenIdentifier,"+ EndOfLine + _
		  "00400555,3DX,SQ,1,AcquisitionContextSequence,"+ EndOfLine + _
		  "00400556,3DX,ST,1,AcquisitionContextDescription,"+ EndOfLine + _
		  "0040059A,3DX,SQ,1,SpecimenTypeCodeSequence,"+ EndOfLine + _
		  "004006FA,3DX,LO,1,SlideIdentifier,"+ EndOfLine + _
		  "0040071A,3VLI,SQ,1,ImageCenterPointCoordinatesSequence,"+ EndOfLine + _
		  "0040072A,3VLI,DS,1,XOffsetInSlideCoordinateSystem,"+ EndOfLine + _
		  "0040073A,3VLI,DS,1,YOffsetInSlideCoordinateSystem,"+ EndOfLine + _
		  "0040074A,3VLI,DS,1,ZOffsetInSlideCoordinateSystem,"+ EndOfLine + _
		  "004008D8,3VLI,SQ,1,PixelSpacingSequence,"+ EndOfLine + _
		  "004008DA,3VLI,SQ,1,CoordinateSystemAxisCodeSequence,"+ EndOfLine + _
		  "004008EA,3DX,SQ,1,MeasurementUnitsCodeSequence,"+ EndOfLine + _
		  "00401001,3,SH,1,RequestedProcedureID,"+ EndOfLine + _
		  "00401002,3,LO,1,ReasonForRequestedProcedure,"+ EndOfLine + _
		  "00401003,3,SH,1,RequestedProcedurePriority,"+ EndOfLine + _
		  "00401004,3,LO,1,PatientTransportArrangements,"+ EndOfLine + _
		  "00401005,3,LO,1,RequestedProcedureLocation,"+ EndOfLine + _
		  "00401006,3RET,SH,1,PlacerOrderNumberOfProcedure,"+ EndOfLine + _
		  "00401007,3RET,SH,1,FillerOrderNumberOfProcedure,"+ EndOfLine + _
		  "00401008,3,LO,1,ConfidentialityCode,"+ EndOfLine + _
		  "00401009,3,SH,1,ReportingPriority,"+ EndOfLine + _
		  "00401010,3,PN,1-n,NamesOfIntendedRecipientsOfResults,"+ EndOfLine + _
		  "00401400,3,LT,1,RequestedProcedureComments,"+ EndOfLine + _
		  "00402001,3,LO,1,ReasonForImagingServiceRequest,"+ EndOfLine + _
		  "00402004,3,DA,1,IssueDateOfImagingServiceRequest,"+ EndOfLine + _
		  "00402005,3,TM,1,IssueTimeOfImagingServiceRequest,"+ EndOfLine + _
		  "00402006,3RET,SH,1,PlacerOrderNumberOfImagingServiceRequestRetired,"+ EndOfLine + _
		  "00402007,3RET,SH,1,FillerOrderNumberOfImagingServiceRequestRetired,"+ EndOfLine + _
		  "00402008,3,PN,1,OrderEnteredBy,"+ EndOfLine + _
		  "00402009,3,SH,1,OrderEntererLocation,"+ EndOfLine + _
		  "00402010,3,SH,1,OrderCallbackPhoneNumber,"+ EndOfLine + _
		  "00402016,3,LO,1,PlacerOrderNumberOfImagingServiceRequest,"+ EndOfLine + _
		  "00402017,3,LO,1,FillerOrderNumberOfImagingServiceRequest,"+ EndOfLine + _
		  "00402400,3,LT,1,ImagingServiceRequestComments,"+ EndOfLine + _
		  "00403001,3,LO,1,ConfidentialityConstraintOnPatientData,"+ EndOfLine + _
		  "0040A010,3STR,CS,1,RelationshipType,"+ EndOfLine + _
		  "0040A027,3STR,LO,1,VerifyingOrganization,"+ EndOfLine + _
		  "0040A030,3STR,DT,1,VerificationDateTime,"+ EndOfLine + _
		  "0040A032,3STR,DT,1,ObservationDateTime,"+ EndOfLine + _
		  "0040A040,3STR,CS,1,ValueType,"+ EndOfLine + _
		  "0040A043,3DX,SQ,1,ConceptNameCodeSequence,"+ EndOfLine + _
		  "0040A043,3STR,SQ,1,ConceptNameCodeSequence,"+ EndOfLine + _
		  "0040A050,3STR,CS,1,ContinuityOfContent,"+ EndOfLine + _
		  "0040A073,3STR,SQ,1,VerifyingObserverSequence,"+ EndOfLine + _
		  "0040A075,3STR,PN,1,VerifyingObserverName,"+ EndOfLine + _
		  "0040A088,3STR,SQ,1,VerifyingObserverIdentificationCodeSequence,"+ EndOfLine + _
		  "0040A0B0,3WAV,US,1-n,ReferencedWaveformChannels,"+ EndOfLine + _
		  "0040A120,3STR,DT,1,DateTime,"+ EndOfLine + _
		  "0040A121,3DX,DA,1,Date,"+ EndOfLine + _
		  "0040A122,3DX,TM,1,Time,"+ EndOfLine + _
		  "0040A123,3DX,PN,1,PersonName,"+ EndOfLine + _
		  "0040A124,3STR,UI,1,UID,"+ EndOfLine + _
		  "0040A130,3WAV,CS,1,TemporalRangeType,"+ EndOfLine + _
		  "0040A132,3WAV,UL,1-n,ReferencedSamplePositions,"+ EndOfLine + _
		  "0040A136,3DX,US,1-n,ReferencedFrameNumbers,"+ EndOfLine + _
		  "0040A138,3WAV,DS,1-n,ReferencedTimeOffsets,"+ EndOfLine + _
		  "0040A13A,3WAV,DT,1-n,ReferencedDateTime,"+ EndOfLine + _
		  "0040A160,3DX,UT,1,TextValue,"+ EndOfLine + _
		  "0040A168,3DX,SQ,1,ConceptCodeSequence,"+ EndOfLine + _
		  "0040A180,3WAV,US,1,AnnotationGroupNumber,"+ EndOfLine + _
		  "0040A195,3WAV,SQ,1,ModifierCodeSequence,"+ EndOfLine + _
		  "0040A300,3STR,SQ,1,MeasuredValueSequence,"+ EndOfLine + _
		  "0040A30A,3DX,DS,1-n,NumericValue,"+ EndOfLine + _
		  "0040A360,3STR,SQ,1,PredecessorDocumentsSequence,"+ EndOfLine + _
		  "0040A370,3STR,SQ,1,ReferencedRequestSequence,"+ EndOfLine + _
		  "0040A372,3STR,SQ,1,PerformedProcedureCodeSequence,"+ EndOfLine + _
		  "0040A375,3STR,SQ,1,CurrentRequestedProcedureEvidenceSequence,"+ EndOfLine + _
		  "0040A385,3STR,SQ,1,PertinentOtherEvidenceSequence,"+ EndOfLine + _
		  "0040A491,3STR,CS,1,CompletionFlag,"+ EndOfLine + _
		  "0040A492,3STR,LO,1,CompletionFlagDescription,"+ EndOfLine + _
		  "0040A493,3STR,CS,1,VerificationFlag,"+ EndOfLine + _
		  "0040A504,3STR,SQ,1,ContentTemplateSequence,"+ EndOfLine + _
		  "0040A525,3STR,SQ,1,IdenticalDocumentsSequence,"+ EndOfLine + _
		  "0040A730,3STR,SQ,1,ContentSequence,"+ EndOfLine + _
		  "0040B020,3WAV,SQ,1,AnnotationSequence,"+ EndOfLine + _
		  "0040DB00,3STR,CS,1,TemplateIdentifier,"+ EndOfLine + _
		  "0040DB06,3STR,DT,1,TemplateVersion,"+ EndOfLine + _
		  "0040DB07,3STR,DT,1,TemplateLocalVersion,"+ EndOfLine + _
		  "0040DB0B,3STR,CS,1,TemplateExtensionFlag,"+ EndOfLine + _
		  "0040DB0C,3STR,UI,1,TemplateExtensionOrganizationUID,"+ EndOfLine + _
		  "0040DB0D,3STR,UI,1,TemplateExtensionCreatorUID,"+ EndOfLine + _
		  "0040DB73,3STR,UL,1-n,ReferencedContentItemIdentifier,"+ EndOfLine + _
		  "00500000,3,UL,1,CalibrationGroupLength,"+ EndOfLine + _
		  "00500004,3,CS,1,CalibrationObject,"+ EndOfLine + _
		  "00500010,3,SQ,1,DeviceSequence,"+ EndOfLine + _
		  "00500014,3,DS,1,DeviceLength,"+ EndOfLine + _
		  "00500016,3,DS,1,DeviceDiameter,"+ EndOfLine + _
		  "00500017,3,CS,1,DeviceDiameterUnits,"+ EndOfLine + _
		  "00500018,3,DS,1,DeviceVolume,"+ EndOfLine + _
		  "00500019,3,DS,1,InterMarkerDistance,"+ EndOfLine + _
		  "00500020,3,LO,1,DeviceDescription,"+ EndOfLine + _
		  "00500030,3,SQ,1,CodedInterventionDeviceSequence,"+ EndOfLine + _
		  "00540000,3,UL,1,NuclearAcquisitionGroupLength,"+ EndOfLine + _
		  "00540010,3,US,1-n,EnergyWindowVector,"+ EndOfLine + _
		  "00540011,3,US,1,NumberOfEnergyWindows,"+ EndOfLine + _
		  "00540012,3,SQ,1,EnergyWindowInformationSequence,"+ EndOfLine + _
		  "00540013,3,SQ,1,EnergyWindowRangeSequence,"+ EndOfLine + _
		  "00540014,3,DS,1,EnergyWindowLowerLimit,"+ EndOfLine + _
		  "00540015,3,DS,1,EnergyWindowUpperLimit,"+ EndOfLine + _
		  "00540016,3,SQ,1,RadiopharmaceuticalInformationSequence,"+ EndOfLine + _
		  "00540017,3,IS,1,ResidualSyringeCounts,"+ EndOfLine + _
		  "00540018,3,SH,1,EnergyWindowName,"+ EndOfLine + _
		  "00540020,3,US,1-n,DetectorVector,"+ EndOfLine + _
		  "00540021,3,US,1,NumberOfDetectors,"+ EndOfLine + _
		  "00540022,3,SQ,1,DetectorInformationSequence,"+ EndOfLine + _
		  "00540030,3,US,1-n,PhaseVector,"+ EndOfLine + _
		  "00540031,3,US,1,NumberOfPhases,"+ EndOfLine + _
		  "00540032,3,SQ,1,PhaseInformationSequence,"+ EndOfLine + _
		  "00540033,3,US,1,NumberOfFramesInPhase,"+ EndOfLine + _
		  "00540036,3,IS,1,PhaseDelay,"+ EndOfLine + _
		  "00540038,3,IS,1,PauseBetweenFrames,"+ EndOfLine + _
		  "00540050,3,US,1-n,RotationVector,"+ EndOfLine + _
		  "00540051,3,US,1,NumberOfRotations,"+ EndOfLine + _
		  "00540052,3,SQ,1,RotationInformationSequence,"+ EndOfLine + _
		  "00540053,3,US,1,NumberOfFramesInRotation,"+ EndOfLine + _
		  "00540060,3,US,1-n,RRIntervalVector,"+ EndOfLine + _
		  "00540061,3,US,1,NumberOfRRIntervals,"+ EndOfLine + _
		  "00540062,3,SQ,1,GatedInformationSequence,"+ EndOfLine + _
		  "00540063,3,SQ,1,DataInformationSequence,"+ EndOfLine + _
		  "00540070,3,US,1-n,TimeSlotVector,"+ EndOfLine + _
		  "00540071,3,US,1,NumberOfTimeSlots,"+ EndOfLine + _
		  "00540072,3,SQ,1,TimeSlotInformationSequence,"+ EndOfLine + _
		  "00540073,3,DS,1-n,TimeSlotTime,"+ EndOfLine + _
		  "00540080,3,US,1-n,SliceVector,"+ EndOfLine + _
		  "00540081,3,US,1,NumberOfSlices,"+ EndOfLine + _
		  "00540090,3,US,1-n,AngularViewVector,"+ EndOfLine + _
		  "00540100,3,US,1-n,TimeSliceVector,"+ EndOfLine + _
		  "00540101,3PET,US,1,NumberOfTimeSlices,"+ EndOfLine + _
		  "00540200,3,DS,1,StartAngle,"+ EndOfLine + _
		  "00540202,3,CS,1,TypeOfDetectorMotion,"+ EndOfLine + _
		  "00540210,3,IS,1-n,TriggerVector,"+ EndOfLine + _
		  "00540211,3,US,1,NumberOfTriggersInPhase,"+ EndOfLine + _
		  "00540220,3,SQ,1,ViewCodeSequence,"+ EndOfLine + _
		  "00540222,3,SQ,1,ViewModifierCodeSequence,"+ EndOfLine + _
		  "00540300,3,SQ,1,RadionuclideCodeSequence,"+ EndOfLine + _
		  "00540302,3,SQ,1,RadiopharmaceuticalRouteCodeSequence,"+ EndOfLine + _
		  "00540304,3,SQ,1,RadiopharmaceuticalCodeSequence,"+ EndOfLine + _
		  "00540306,3,SQ,1,CalibrationDataSequence,"+ EndOfLine + _
		  "00540308,3,US,1,EnergyWindowNumber,"+ EndOfLine + _
		  "00540400,3,SH,1,ImageID,"+ EndOfLine + _
		  "00540410,3,SQ,1,PatientOrientationCodeSequence,"+ EndOfLine + _
		  "00540412,3,SQ,1,PatientOrientationModifierCodeSequence,"+ EndOfLine + _
		  "00540414,3,SQ,1,PatientGantryRelationshipCodeSequence,"+ EndOfLine + _
		  "00541000,3PET,CS,2,PositronEmissionTomographySeriesType,"+ EndOfLine + _
		  "00541001,3PET,CS,1,PositronEmissionTomographyUnits,"+ EndOfLine + _
		  "00541002,3PET,CS,1,CountsSource,"+ EndOfLine + _
		  "00541004,3PET,CS,1,ReprojectionMethod,"+ EndOfLine + _
		  "00541100,3PET,CS,1,RandomsCorrectionMethod,"+ EndOfLine + _
		  "00541101,3PET,LO,1,AttenuationCorrectionMethod,"+ EndOfLine + _
		  "00541102,3PET,CS,1,DecayCorrection,"+ EndOfLine + _
		  "00541103,3PET,LO,1,ReconstructionMethod,"+ EndOfLine + _
		  "00541104,3PET,LO,1,DetectorLinesOfResponseUsed,"+ EndOfLine + _
		  "00541105,3PET,LO,1,ScatterCorrectionMethod,"+ EndOfLine + _
		  "00541200,3PET,DS,1,AxialAcceptance,"+ EndOfLine + _
		  "00541201,3PET,IS,2,AxialMash,"+ EndOfLine + _
		  "00541202,3PET,IS,1,TransverseMash,"+ EndOfLine + _
		  "00541203,3PET,DS,2,DetectorElementSize,"+ EndOfLine + _
		  "00541210,3PET,DS,1,CoincidenceWindowWidth,"+ EndOfLine + _
		  "00541220,3PET,CS,1-n,SecondaryCountsType,"+ EndOfLine + _
		  "00541300,3PET,DS,1,FrameReferenceTime,"+ EndOfLine + _
		  "00541310,3PET,IS,1,PrimaryPromptsCountsAccumulated,"+ EndOfLine + _
		  "00541311,3PET,IS,1-n,SecondaryCountsAccumulated,"+ EndOfLine + _
		  "00541320,3PET,DS,1,SliceSensitivityFactor,"+ EndOfLine + _
		  "00541321,3PET,DS,1,DecayFactor,"+ EndOfLine + _
		  "00541322,3PET,DS,1,DoseCalibrationFactor,"+ EndOfLine + _
		  "00541323,3PET,DS,1,ScatterFractionFactor,"+ EndOfLine + _
		  "00541324,3PET,DS,1,DeadTimeFactor,"+ EndOfLine + _
		  "00541330,3PET,US,1,ImageIndex,"+ EndOfLine + _
		  "00541400,3PET,CS,1-n,CountsIncluded,"+ EndOfLine + _
		  "00541401,3PET,CS,1,DeadTimeCorrectionFlag,"+ EndOfLine + _
		  "00603000,3DX,SQ,1,HistogramSequence,"+ EndOfLine + _
		  "00603002,3DX,US,1,HistogramNumberOfBins,"+ EndOfLine + _
		  "00603004,3DX,XS,1,HistogramFirstBinValue,"+ EndOfLine + _
		  "00603006,3DX,XS,1,HistogramLastBinValue,"+ EndOfLine + _
		  "00603008,3DX,US,1,HistogramBinWidth,"+ EndOfLine + _
		  "00603010,3DX,LO,1,HistogramExplanation,"+ EndOfLine + _
		  "00603020,3DX,UL,1-n,HistogramData,"+ EndOfLine + _
		  "00700001,3SCP,SQ,1,GraphicAnnotationSequence,"+ EndOfLine + _
		  "00700002,3SCP,CS,1,GraphicLayer,"+ EndOfLine + _
		  "00700003,3SCP,CS,1,BoundingBoxAnnotationUnits,"+ EndOfLine + _
		  "00700004,3SCP,CS,1,AnchorPointAnnotationUnits,"+ EndOfLine + _
		  "00700005,3SCP,CS,1,GraphicAnnotationUnits,"+ EndOfLine + _
		  "00700006,3SCP,ST,1,UnformattedTextValue,"+ EndOfLine + _
		  "00700008,3SCP,SQ,1,TextObjectSequence,"+ EndOfLine + _
		  "00700009,3SCP,SQ,1,GraphicObjectSequence,"+ EndOfLine + _
		  "00700010,3SCP,FL,2,BoundingBoxTLHC,"+ EndOfLine + _
		  "00700011,3SCP,FL,2,BoundingBoxBRHC,"+ EndOfLine + _
		  "00700012,3SCP,CS,1,BoundingBoxTextHorizontalJustification,"+ EndOfLine + _
		  "00700014,3SCP,FL,2,AnchorPoint,"+ EndOfLine + _
		  "00700015,3SCP,CS,1,AnchorPointVisibility,"+ EndOfLine + _
		  "00700020,3SCP,US,1,GraphicDimensions,"+ EndOfLine + _
		  "00700021,3SCP,US,1,NumberOfGraphicPoints,"+ EndOfLine + _
		  "00700022,3SCP,FL,1-n,GraphicData,"+ EndOfLine + _
		  "00700023,3SCP,CS,1,GraphicType,"+ EndOfLine + _
		  "00700024,3SCP,CS,1,GraphicFilled,"+ EndOfLine + _
		  "00700040,3SCP,IS,1,ImageRotationFrozenDraftRetired,"+ EndOfLine + _
		  "00700041,3SCP,CS,1,ImageHorizontalFlip,"+ EndOfLine + _
		  "00700042,3SCP,US,1,ImageRotation,"+ EndOfLine + _
		  "00700050,3SCP,US,2,DisplayedAreaTLHCFrozenDraftRetired,"+ EndOfLine + _
		  "00700051,3SCP,US,2,DisplayedAreaBRHCFrozenDraftRetired,"+ EndOfLine + _
		  "00700052,3SCP,SL,2,DisplayedAreaTLHC,"+ EndOfLine + _
		  "00700053,3SCP,SL,2,DisplayedAreaBRHC,"+ EndOfLine + _
		  "0070005A,3SCP,SQ,1,DisplayedAreaSelectionSequence,"+ EndOfLine + _
		  "00700060,3SCP,SQ,1,GraphicLayerSequence,"+ EndOfLine + _
		  "00700062,3SCP,IS,1,GraphicLayerOrder,"+ EndOfLine + _
		  "00700066,3SCP,US,1,GraphicLayerRecommendedDisplayGrayscaleValue,"+ EndOfLine + _
		  "00700067,3SCP,US,3,GraphicLayerRecommendedDisplayRGBValue,"+ EndOfLine + _
		  "00700068,3SCP,LO,1,GraphicLayerDescription,"+ EndOfLine + _
		  "00700080,3SCP,CS,1,PresentationLabel,"+ EndOfLine + _
		  "00700081,3SCP,LO,1,PresentationDescription,"+ EndOfLine + _
		  "00700082,3SCP,DA,1,PresentationCreationDate,"+ EndOfLine + _
		  "00700083,3SCP,TM,1,PresentationCreationTime,"+ EndOfLine + _
		  "00700084,3SCP,PN,1,PresentationCreatorsName,"+ EndOfLine + _
		  "00700100,3SCP,CS,1,PresentationSizeMode,"+ EndOfLine + _
		  "00700101,3SCP,DS,2,PresentationPixelSpacing,"+ EndOfLine + _
		  "00700102,3SCP,IS,2,PresentationPixelAspectRatio,"+ EndOfLine + _
		  "00700103,3SCP,FL,1,PresentationPixelMagnificationRatio,"+ EndOfLine + _
		  "00880000,3,UL,1,StorageGroupLength,"+ EndOfLine + _
		  "00880130,3,SH,1,StorageMediaFileSetID,"+ EndOfLine + _
		  "00880140,3,UI,1,StorageMediaFileSetUID,"+ EndOfLine + _
		  "00880200,3,SQ,1,IconImageSequence,"+ EndOfLine + _
		  "00880904,3,LO,1,TopicTitle,"+ EndOfLine + _
		  "00880906,3,ST,1,TopicSubject,"+ EndOfLine + _
		  "00880910,3,LO,1,TopicAuthor,"+ EndOfLine + _
		  "00880912,3,LO,1-32,TopicKeyWords,"+ EndOfLine + _
		  "10000000,2C,UL,1,CodeTableGroupLength,"+ EndOfLine + _
		  "100000x0,2C,US,3,EscapeTriplet,"+ EndOfLine + _
		  "100000x1,2C,US,3,RunLengthTriplet,"+ EndOfLine + _
		  "100000x2,2C,US,1,HuffmanTableSize,"+ EndOfLine + _
		  "100000x3,2C,US,3,HuffmanTableTriplet,"+ EndOfLine + _
		  "100000x4,2C,US,1,ShiftTableSize,"+ EndOfLine + _
		  "100000x5,2C,US,3,ShiftTableTriplet,"+ EndOfLine + _
		  "10100000,2C,UL,1,ZonalMapGroupLength,"+ EndOfLine + _
		  "1010xxxx,2C,US,1-n,ZonalMap,"+ EndOfLine + _
		  "20000000,3,UL,1,FilmSessionGroupLength,"+ EndOfLine + _
		  "20000010,3,IS,1,NumberOfCopies,"+ EndOfLine + _
		  "2000001E,3PCF,SQ,1,PrinterConfigurationSequence,"+ EndOfLine + _
		  "20000020,3,CS,1,PrintPriority,"+ EndOfLine + _
		  "20000030,3,CS,1,MediumType,"+ EndOfLine + _
		  "20000040,3,CS,1,FilmDestination,"+ EndOfLine + _
		  "20000050,3,LO,1,FilmSessionLabel,"+ EndOfLine + _
		  "20000060,3,IS,1,MemoryAllocation,"+ EndOfLine + _
		  "20000061,3PCF,IS,1,MaximumMemoryAllocation,"+ EndOfLine + _
		  "20000062,3PCF,CS,1,ColorImagePrintingFlag,"+ EndOfLine + _
		  "20000063,3PCF,CS,1,CollationFlag,"+ EndOfLine + _
		  "20000065,3PCF,CS,1,AnnotationFlag,"+ EndOfLine + _
		  "20000067,3PCF,CS,1,ImageOverlayFlag,"+ EndOfLine + _
		  "20000069,3PCF,CS,1,PresentationLUTFlag,"+ EndOfLine + _
		  "2000006A,3PCF,CS,1,ImageBoxPresentationLUTFlag,"+ EndOfLine + _
		  "200000A0,3PCF,US,1,MemoryBitDepth,"+ EndOfLine + _
		  "200000A1,3PCF,US,1,PrintingBitDepth,"+ EndOfLine + _
		  "200000A2,3PCF,SQ,1,MediaInstalledSequence,"+ EndOfLine + _
		  "200000A4,3PCF,SQ,1,OtherMediaAvailableSequence,"+ EndOfLine + _
		  "200000A8,3PCF,SQ,1,SupportedImageDisplayFormatsSequence,"+ EndOfLine + _
		  "20000500,3,SQ,1,ReferencedFilmBoxSequence,"+ EndOfLine + _
		  "20000510,3STP,SQ,1,ReferencedStoredPrintSequence,"+ EndOfLine + _
		  "20100000,3,UL,1,FilmBoxGroupLength,"+ EndOfLine + _
		  "20100010,3,ST,1,ImageDisplayFormat,"+ EndOfLine + _
		  "20100030,3,CS,1,AnnotationDisplayFormatID,"+ EndOfLine + _
		  "20100040,3,CS,1,FilmOrientation,"+ EndOfLine + _
		  "20100050,3,CS,1,FilmSizeID,"+ EndOfLine + _
		  "20100052,3PCF,CS,1,PrinterResolutionID,"+ EndOfLine + _
		  "20100054,3PCF,CS,1,DefaultPrinterResolutionID,"+ EndOfLine + _
		  "20100060,3,CS,1,MagnificationType,"+ EndOfLine + _
		  "20100080,3,CS,1,SmoothingType,"+ EndOfLine + _
		  "201000A6,3PCF,CS,1,DefaultMagnificationType,"+ EndOfLine + _
		  "201000A7,3PCF,CS,1-n,OtherMagnificationTypesAvailable,"+ EndOfLine + _
		  "201000A8,3PCF,CS,1,DefaultSmoothingType,"+ EndOfLine + _
		  "201000A9,3PCF,CS,1-n,OtherSmoothingTypesAvailable,"+ EndOfLine + _
		  "20100100,3,CS,1,BorderDensity,"+ EndOfLine + _
		  "20100110,3,CS,1,EmptyImageDensity,"+ EndOfLine + _
		  "20100120,3,US,1,MinDensity,"+ EndOfLine + _
		  "20100130,3,US,1,MaxDensity,"+ EndOfLine + _
		  "20100140,3,CS,1,Trim,"+ EndOfLine + _
		  "20100150,3,ST,1,ConfigurationInformation,"+ EndOfLine + _
		  "20100152,3PCF,LT,1,ConfigurationInformationDescription,"+ EndOfLine + _
		  "20100154,3PCF,IS,1,MaximumCollatedFilms,"+ EndOfLine + _
		  "2010015E,3LUT,US,1,Illumination,"+ EndOfLine + _
		  "20100160,3LUT,US,1,ReflectedAmbientLight,"+ EndOfLine + _
		  "20100376,3PCF,DS,2,PrinterPixelSpacing,"+ EndOfLine + _
		  "20100500,3,SQ,1,ReferencedFilmSessionSequence,"+ EndOfLine + _
		  "20100510,3,SQ,1,ReferencedImageBoxSequence,"+ EndOfLine + _
		  "20100520,3,SQ,1,ReferencedBasicAnnotationBoxSequence,"+ EndOfLine + _
		  "20200000,3,UL,1,ImageBoxGroupLength,"+ EndOfLine + _
		  "20200010,3,US,1,ImageBoxPosition,"+ EndOfLine + _
		  "20200020,3,CS,1,Polarity,"+ EndOfLine + _
		  "20200030,3,DS,1,RequestedImageSize,"+ EndOfLine + _
		  "20200040,3PCF,CS,1,RequestedDecimateCropBehavior,"+ EndOfLine + _
		  "20200050,3PCF,CS,1,RequestedResolutionID,"+ EndOfLine + _
		  "202000A0,3PCF,CS,1,RequestedImageSizeFlag,"+ EndOfLine + _
		  "202000A2,3PCF,CS,1,DecimateCropResult,"+ EndOfLine + _
		  "20200110,3,SQ,1,BasicGrayscaleImageSequence,"+ EndOfLine + _
		  "20200111,3,SQ,1,BasicColorImageSequence,"+ EndOfLine + _
		  "20200130,3RET,SQ,1,ReferencedImageOverlayBoxSequence,"+ EndOfLine + _
		  "20200140,3RET,SQ,1,ReferencedVOILUTBoxSequence,"+ EndOfLine + _
		  "20300000,3,UL,1,AnnotationGroupLength,"+ EndOfLine + _
		  "20300010,3,US,1,AnnotationPosition,"+ EndOfLine + _
		  "20300020,3,LO,1,TextString,"+ EndOfLine + _
		  "20400000,3,UL,1,OverlayBoxGroupLength,"+ EndOfLine + _
		  "20400010,3,SQ,1,ReferencedOverlayPlaneSequence,"+ EndOfLine + _
		  "20400011,3,US,1-99,ReferencedOverlayPlaneGroups,"+ EndOfLine + _
		  "20400020,3OVL,SQ,1,OverlayPixelDataSequence,"+ EndOfLine + _
		  "20400060,3,CS,1,OverlayMagnificationType,"+ EndOfLine + _
		  "20400070,3,CS,1,OverlaySmoothingType,"+ EndOfLine + _
		  "20400072,3,CS,1,OverlayOrImageMagnification,"+ EndOfLine + _
		  "20400074,3,US,1,MagnifyToNumberOfColumns,"+ EndOfLine + _
		  "20400080,3,CS,1,OverlayForegroundDensity,"+ EndOfLine + _
		  "20400082,3,CS,1,OverlayBackgroundDensity,"+ EndOfLine + _
		  "20400090,3RET,CS,1,OverlayMode,"+ EndOfLine + _
		  "20400100,3RET,CS,1,ThresholdDensity,"+ EndOfLine + _
		  "20400500,3RET,SQ,1,ReferencedOverlayImageBoxSequence,"+ EndOfLine + _
		  "20500010,3PLT,SQ,1,PresentationLUTSequence,"+ EndOfLine + _
		  "20500020,3,CS,1,PresentationLUTShape,"+ EndOfLine + _
		  "20500500,3???,SQ,1,ReferencedPresentationLUTSequence,"+ EndOfLine + _
		  "21000000,3,UL,1,PrintJobGroupLength,"+ EndOfLine + _
		  "21000010,3PQ,SH,1,PrintJobID,"+ EndOfLine + _
		  "21000020,3,CS,1,ExecutionStatus,"+ EndOfLine + _
		  "21000030,3,CS,1,ExecutionStatusInfo,"+ EndOfLine + _
		  "21000040,3,DA,1,CreationDate,"+ EndOfLine + _
		  "21000050,3,TM,1,CreationTime,"+ EndOfLine + _
		  "21000070,3,AE,1,Originator,"+ EndOfLine + _
		  "21000140,3PQ,AE,1,DestinationAE,"+ EndOfLine + _
		  "21000160,3PQ,SH,1,OwnerID,"+ EndOfLine + _
		  "21000170,3PQ,IS,1,NumberOfFilms,"+ EndOfLine + _
		  "21000500,3,SQ,1,ReferencedPrintJobSequence,"+ EndOfLine + _
		  "21100000,3,UL,1,PrinterGroupLength,"+ EndOfLine + _
		  "21100010,3,CS,1,PrinterStatus,"+ EndOfLine + _
		  "21100020,3,CS,1,PrinterStatusInfo,"+ EndOfLine + _
		  "21100030,3,LO,1,PrinterName,"+ EndOfLine + _
		  "21100099,3,SH,1,PrintQueueID,"+ EndOfLine + _
		  "21200010,3PQ,CS,1,QueueStatus,"+ EndOfLine + _
		  "21200050,3PQ,SQ,1,PrintJobDescriptionSequence,"+ EndOfLine + _
		  "21200070,3PQ,SQ,1,ReferencedPrintJobSequenceNew,"+ EndOfLine + _
		  "21300010,3???,SQ,1,PrintManagementCapabilitiesSequence,"+ EndOfLine + _
		  "21300015,3???,SQ,1,PrinterCharacteristicsSequence,"+ EndOfLine + _
		  "21300030,3???,SQ,1,FilmBoxContentSequence,"+ EndOfLine + _
		  "21300040,3???,SQ,1,ImageBoxContentSequence,"+ EndOfLine + _
		  "21300050,3???,SQ,1,AnnotationContentSequence,"+ EndOfLine + _
		  "21300060,3???,SQ,1,ImageOverlayBoxContentSequence,"+ EndOfLine + _
		  "21300080,3???,SQ,1,PresentationLUTContentSequence,"+ EndOfLine + _
		  "213000A0,3???,SQ,1,ProposedStudySequence,"+ EndOfLine + _
		  "213000C0,3???,SQ,1,OriginalImageSequence,"+ EndOfLine + _
		  "30020002,3RT,SH,1,RTImageLabel,"+ EndOfLine + _
		  "30020003,3RT,LO,1,RTImageName,"+ EndOfLine + _
		  "30020004,3RT,ST,1,RTImageDescription,"+ EndOfLine + _
		  "3002000A,3RT,CS,1,ReportedValuesOrigin,"+ EndOfLine + _
		  "3002000C,3RT,CS,1,RTImagePlane,"+ EndOfLine + _
		  "3002000D,3RT,DS,1,XRayImageReceptorTranslation,"+ EndOfLine + _
		  "3002000E,3RT,DS,1,XRayImageReceptorAngle,"+ EndOfLine + _
		  "30020010,3RT,DS,6,RTImageOrientation,"+ EndOfLine + _
		  "30020011,3RT,DS,2,ImagePlanePixelSpacing,"+ EndOfLine + _
		  "30020012,3RT,DS,2,RTImagePosition,"+ EndOfLine + _
		  "30020020,3RT,SH,1,RadiationMachineName,"+ EndOfLine + _
		  "30020022,3RT,DS,1,RadiationMachineSAD,"+ EndOfLine + _
		  "30020024,3RT,DS,1,RadiationMachineSSD,"+ EndOfLine + _
		  "30020026,3RT,DS,1,RTImageSID,"+ EndOfLine + _
		  "30020028,3RT,DS,1,SourceToReferenceObjectDistance,"+ EndOfLine + _
		  "30020029,3RT,IS,1,FractionNumber,"+ EndOfLine + _
		  "30020030,3RT,SQ,1,ExposureSequence,"+ EndOfLine + _
		  "30020032,3RT,DS,1,MetersetExposure,"+ EndOfLine + _
		  "30040001,3RT,CS,1,DVHType,"+ EndOfLine + _
		  "30040002,3RT,CS,1,DoseUnits,"+ EndOfLine + _
		  "30040004,3RT,CS,1,DoseType,"+ EndOfLine + _
		  "30040006,3RT,LO,1,DoseComment,"+ EndOfLine + _
		  "30040008,3RT,DS,3,NormalizationPoint,"+ EndOfLine + _
		  "3004000A,3RT,CS,1,DoseSummationType,"+ EndOfLine + _
		  "3004000C,3RT,DS,2-n,GridFrameOffsetVector,"+ EndOfLine + _
		  "3004000E,3RT,DS,1,DoseGridScaling,"+ EndOfLine + _
		  "30040010,3RT,SQ,1,RTDoseROISequence,"+ EndOfLine + _
		  "30040012,3RT,DS,1,DoseValue,"+ EndOfLine + _
		  "30040040,3RT,DS,3,DVHNormalizationPoint,"+ EndOfLine + _
		  "30040042,3RT,DS,1,DVHNormalizationDoseValue,"+ EndOfLine + _
		  "30040050,3RT,SQ,1,DVHSequence,"+ EndOfLine + _
		  "30040052,3RT,DS,1,DVHDoseScaling,"+ EndOfLine + _
		  "30040054,3RT,CS,1,DVHVolumeUnits,"+ EndOfLine + _
		  "30040056,3RT,IS,1,DVHNumberOfBins,"+ EndOfLine + _
		  "30040058,3RT,DS,2-n,DVHData,"+ EndOfLine + _
		  "30040060,3RT,SQ,1,DVHReferencedROISequence,"+ EndOfLine + _
		  "30040062,3RT,CS,1,DVHROIContributionType,"+ EndOfLine + _
		  "30040070,3RT,DS,1,DVHMinimumDose,"+ EndOfLine + _
		  "30040072,3RT,DS,1,DVHMaximumDose,"+ EndOfLine + _
		  "30040074,3RT,DS,1,DVHMeanDose,"+ EndOfLine + _
		  "30060002,3RT,SH,1,StructureSetLabel,"+ EndOfLine + _
		  "30060004,3RT,LO,1,StructureSetName,"+ EndOfLine + _
		  "30060006,3RT,ST,1,StructureSetDescription,"+ EndOfLine + _
		  "30060008,3RT,DA,1,StructureSetDate,"+ EndOfLine + _
		  "30060009,3RT,TM,1,StructureSetTime,"+ EndOfLine + _
		  "30060010,3RT,SQ,1,ReferencedFrameOfReferenceSequence,"+ EndOfLine + _
		  "30060012,3RT,SQ,1,RTReferencedStudySequence,"+ EndOfLine + _
		  "30060014,3RT,SQ,1,RTReferencedSeriesSequence,"+ EndOfLine + _
		  "30060016,3RT,SQ,1,ContourImageSequence,"+ EndOfLine + _
		  "30060020,3RT,SQ,1,StructureSetROISequence,"+ EndOfLine + _
		  "30060022,3RT,IS,1,ROINumber,"+ EndOfLine + _
		  "30060024,3RT,UI,1,ReferencedFrameOfReferenceUID,"+ EndOfLine + _
		  "30060026,3RT,LO,1,ROIName,"+ EndOfLine + _
		  "30060028,3RT,ST,1,ROIDescription,"+ EndOfLine + _
		  "3006002A,3RT,IS,3,ROIDisplayColor,"+ EndOfLine + _
		  "3006002C,3RT,DS,1,ROIVolume,"+ EndOfLine + _
		  "30060030,3RT,SQ,1,RTRelatedROISequence,"+ EndOfLine + _
		  "30060033,3RT,CS,1,RTROIRelationship,"+ EndOfLine + _
		  "30060036,3RT,CS,1,ROIGenerationAlgorithm,"+ EndOfLine + _
		  "30060038,3RT,LO,1,ROIGenerationDescription,"+ EndOfLine + _
		  "30060039,3RT,SQ,1,ROIContourSequence,"+ EndOfLine + _
		  "30060040,3RT,SQ,1,ContourSequence,"+ EndOfLine + _
		  "30060042,3RT,CS,1,ContourGeometricType,"+ EndOfLine + _
		  "30060044,3RT,DS,1,ContourSlabThickness,"+ EndOfLine + _
		  "30060045,3RT,DS,3,ContourOffsetVector,"+ EndOfLine + _
		  "30060046,3RT,IS,1,NumberOfContourPoints,"+ EndOfLine + _
		  "30060050,3RT,DS,3-n,ContourData,"+ EndOfLine + _
		  "30060080,3RT,SQ,1,RTROIObservationsSequence,"+ EndOfLine + _
		  "30060082,3RT,IS,1,ObservationNumber,"+ EndOfLine + _
		  "30060084,3RT,IS,1,ReferencedROINumber,"+ EndOfLine + _
		  "30060085,3RT,SH,1,ROIObservationLabel,"+ EndOfLine + _
		  "30060086,3RT,SQ,1,RTROIIdentificationCodeSequence,"+ EndOfLine + _
		  "30060088,3RT,ST,1,ROIObservationDescription,"+ EndOfLine + _
		  "300600A0,3RT,SQ,1,RelatedRTROIObservationsSequence,"+ EndOfLine + _
		  "300600A4,3RT,CS,1,RTROIInterpretedType,"+ EndOfLine + _
		  "300600A6,3RT,PN,1,ROIInterpreter,"+ EndOfLine + _
		  "300600B0,3RT,SQ,1,ROIPhysicalPropertiesSequence,"+ EndOfLine + _
		  "300600B2,3RT,CS,1,ROIPhysicalProperty,"+ EndOfLine + _
		  "300600B4,3RT,DS,1,ROIPhysicalPropertyValue,"+ EndOfLine + _
		  "300600C0,3RT,SQ,1,FrameOfReferenceRelationshipSequence,"+ EndOfLine + _
		  "300600C2,3RT,UI,1,RelatedFrameOfReferenceUID,"+ EndOfLine + _
		  "300600C4,3RT,CS,1,FrameOfReferenceTransformationType,"+ EndOfLine + _
		  "300600C6,3RT,DS,16,FrameOfReferenceTransformationMatrix,"+ EndOfLine + _
		  "300600C8,3RT,LO,1,FrameOfReferenceTransformationComment,"+ EndOfLine + _
		  "30080010,3RT,SQ,1,dummy,"+ EndOfLine + _
		  "30080012,3RT,ST,1,dummy,"+ EndOfLine + _
		  "30080014,3RT,CS,1,dummy,"+ EndOfLine + _
		  "30080016,3RT,DS,1,dummy,"+ EndOfLine + _
		  "30080020,3RT,SQ,1,dummy,"+ EndOfLine + _
		  "30080022,3RT,IS,1,dummy,"+ EndOfLine + _
		  "30080024,3RT,DA,1,dummy,"+ EndOfLine + _
		  "30080025,3RT,TM,1,dummy,"+ EndOfLine + _
		  "3008002A,3RT,CS,1,dummy,"+ EndOfLine + _
		  "3008002B,3RT,SH,1,dummy,"+ EndOfLine + _
		  "3008002C,3RT,CS,1,dummy,"+ EndOfLine + _
		  "30080030,3RT,SQ,1,dummy,"+ EndOfLine + _
		  "30080032,3RT,DS,1,dummy,"+ EndOfLine + _
		  "30080033,3RT,DS,1,dummy,"+ EndOfLine + _
		  "30080036,3RT,DS,1,dummy,"+ EndOfLine + _
		  "30080037,3RT,DS,1,dummy,"+ EndOfLine + _
		  "3008003A,3RT,DS,1,dummy,"+ EndOfLine + _
		  "3008003B,3RT,DS,1,dummy,"+ EndOfLine + _
		  "30080040,3RT,SQ,1,dummy,"+ EndOfLine + _
		  "30080042,3RT,DS,1,dummy,"+ EndOfLine + _
		  "30080044,3RT,DS,1,dummy,"+ EndOfLine + _
		  "30080048,3RT,DS,1,dummy,"+ EndOfLine + _
		  "30080050,3RT,SQ,1,dummy,"+ EndOfLine + _
		  "30080052,3RT,DS,1,dummy,"+ EndOfLine + _
		  "30080054,3RT,DA,1,dummy,"+ EndOfLine + _
		  "30080056,3RT,DA,1,dummy,"+ EndOfLine + _
		  "3008005A,3RT,IS,1,dummy,"+ EndOfLine + _
		  "30080060,3RT,SQ,1,dummy,"+ EndOfLine + _
		  "30080062,3RT,AT,1,dummy,"+ EndOfLine + _
		  "30080064,3RT,IS,1,dummy,"+ EndOfLine + _
		  "30080066,3RT,ST,1,dummy,"+ EndOfLine + _
		  "30080070,3RT,SQ,1,dummy,"+ EndOfLine + _
		  "30080072,3RT,IS,1,dummy,"+ EndOfLine + _
		  "30080074,3RT,ST,1,dummy,"+ EndOfLine + _
		  "30080076,3RT,DS,1,dummy,"+ EndOfLine + _
		  "30080078,3RT,DS,1,dummy,"+ EndOfLine + _
		  "3008007A,3RT,DS,1,dummy,"+ EndOfLine + _
		  "30080080,3RT,SQ,1,dummy,"+ EndOfLine + _
		  "30080082,3RT,IS,1,dummy,"+ EndOfLine + _
		  "30080090,3RT,SQ,1,dummy,"+ EndOfLine + _
		  "30080092,3RT,IS,1,dummy,"+ EndOfLine + _
		  "300800A0,3RT,SQ,1,dummy,"+ EndOfLine + _
		  "300800B0,3RT,SQ,1,dummy,"+ EndOfLine + _
		  "300800C0,3RT,SQ,1,dummy,"+ EndOfLine + _
		  "300800D0,3RT,SQ,1,dummy,"+ EndOfLine + _
		  "00300800,3RT,SQ,1,dummy,"+ EndOfLine + _
		  "30080100,3RT,SQ,1,dummy,"+ EndOfLine + _
		  "30080105,3RT,LO,1,dummy,"+ EndOfLine + _
		  "30080110,3RT,SQ,1,dummy,"+ EndOfLine + _
		  "30080116,3RT,CS,1,dummy,"+ EndOfLine + _
		  "30080120,3RT,SQ,1,dummy,"+ EndOfLine + _
		  "30080122,3RT,IS,1,dummy,"+ EndOfLine + _
		  "30080130,3RT,SQ,1,dummy,"+ EndOfLine + _
		  "30080132,3RT,DS,1,dummy,"+ EndOfLine + _
		  "30080134,3RT,DS,1,dummy,"+ EndOfLine + _
		  "30080136,3RT,IS,1,dummy,"+ EndOfLine + _
		  "30080138,3RT,IS,1,dummy,"+ EndOfLine + _
		  "3008013A,3RT,DS,1,dummy,"+ EndOfLine + _
		  "3008013C,3RT,DS,1,dummy,"+ EndOfLine + _
		  "30080140,3RT,SQ,1,dummy,"+ EndOfLine + _
		  "30080142,3RT,IS,1,dummy,"+ EndOfLine + _
		  "30080150,3RT,SQ,1,dummy,"+ EndOfLine + _
		  "30080152,3RT,IS,1,dummy,"+ EndOfLine + _
		  "30080160,3RT,SQ,1,dummy,"+ EndOfLine + _
		  "30080162,3RT,DA,1,dummy,"+ EndOfLine + _
		  "30080164,3RT,TM,1,dummy,"+ EndOfLine + _
		  "30080166,3RT,DA,1,dummy,"+ EndOfLine + _
		  "30080168,3RT,TM,1,dummy,"+ EndOfLine + _
		  "30080200,3RT,CS,1,dummy,"+ EndOfLine + _
		  "30080202,3RT,ST,1,dummy,"+ EndOfLine + _
		  "30080220,3RT,SQ,1,dummy,"+ EndOfLine + _
		  "30080223,3RT,IS,1,dummy,"+ EndOfLine + _
		  "30080224,3RT,CS,1,dummy,"+ EndOfLine + _
		  "30080250,3RT,DA,1,dummy,"+ EndOfLine + _
		  "30080251,3RT,TM,1,dummy,"+ EndOfLine + _
		  "300A0002,3RT,SH,1,RTPlanLabel,"+ EndOfLine + _
		  "300A0003,3RT,LO,1,RTPlanName,"+ EndOfLine + _
		  "300A0004,3RT,ST,1,RTPlanDescription,"+ EndOfLine + _
		  "300A0006,3RT,DA,1,RTPlanDate,"+ EndOfLine + _
		  "300A0007,3RT,TM,1,RTPlanTime,"+ EndOfLine + _
		  "300A0009,3RT,LO,1-n,TreatmentProtocols,"+ EndOfLine + _
		  "300A000A,3RT,CS,1,TreatmentIntent,"+ EndOfLine + _
		  "300A000B,3RT,LO,1-n,TreatmentSites,"+ EndOfLine + _
		  "300A000C,3RT,CS,1,RTPlanGeometry,"+ EndOfLine + _
		  "300A000E,3RT,ST,1,PrescriptionDescription,"+ EndOfLine + _
		  "300A0010,3RT,SQ,1,DoseReferenceSequence,"+ EndOfLine + _
		  "300A0012,3RT,IS,1,DoseReferenceNumber,"+ EndOfLine + _
		  "300A0014,3RT,CS,1,DoseReferenceStructureType,"+ EndOfLine + _
		  "300A0016,3RT,LO,1,DoseReferenceDescription,"+ EndOfLine + _
		  "300A0018,3RT,DS,3,DoseReferencePointCoordinates,"+ EndOfLine + _
		  "300A001A,3RT,DS,1,NominalPriorDose,"+ EndOfLine + _
		  "300A0020,3RT,CS,1,DoseReferenceType,"+ EndOfLine + _
		  "300A0021,3RT,DS,1,ConstraintWeight,"+ EndOfLine + _
		  "300A0022,3RT,DS,1,DeliveryWarningDose,"+ EndOfLine + _
		  "300A0023,3RT,DS,1,DeliveryMaximumDose,"+ EndOfLine + _
		  "300A0025,3RT,DS,1,TargetMinimumDose,"+ EndOfLine + _
		  "300A0026,3RT,DS,1,TargetPrescriptionDose,"+ EndOfLine + _
		  "300A0027,3RT,DS,1,TargetMaximumDose,"+ EndOfLine + _
		  "300A0028,3RT,DS,1,TargetUnderdoseVolumeFraction,"+ EndOfLine + _
		  "300A002A,3RT,DS,1,OrganAtRiskFullVolumeDose,"+ EndOfLine + _
		  "300A002B,3RT,DS,1,OrganAtRiskLimitDose,"+ EndOfLine + _
		  "300A002C,3RT,DS,1,OrganAtRiskMaximumDose,"+ EndOfLine + _
		  "300A002D,3RT,DS,1,OrganAtRiskOverdoseVolumeFraction,"+ EndOfLine + _
		  "300A0040,3RT,SQ,1,ToleranceTableSequence,"+ EndOfLine + _
		  "300A0042,3RT,IS,1,ToleranceTableNumber,"+ EndOfLine + _
		  "300A0043,3RT,SH,1,ToleranceTableLabel,"+ EndOfLine + _
		  "300A0044,3RT,DS,1,GantryAngleTolerance,"+ EndOfLine + _
		  "300A0046,3RT,DS,1,BeamLimitingDeviceAngleTolerance,"+ EndOfLine + _
		  "300A0048,3RT,SQ,1,BeamLimitingDeviceToleranceSequence,"+ EndOfLine + _
		  "300A004A,3RT,DS,1,BeamLimitingDevicePositionTolerance,"+ EndOfLine + _
		  "300A004C,3RT,DS,1,PatientSupportAngleTolerance,"+ EndOfLine + _
		  "300A004E,3RT,DS,1,TableTopEccentricAngleTolerance,"+ EndOfLine + _
		  "300A0051,3RT,DS,1,TableTopVerticalPositionTolerance,"+ EndOfLine + _
		  "300A0052,3RT,DS,1,TableTopLongitudinalPositionTolerance,"+ EndOfLine + _
		  "300A0053,3RT,DS,1,TableTopLateralPositionTolerance,"+ EndOfLine + _
		  "300A0055,3RT,CS,1,RTPlanRelationship,"+ EndOfLine + _
		  "300A0070,3RT,SQ,1,FractionGroupSequence,"+ EndOfLine + _
		  "300A0071,3RT,IS,1,FractionGroupNumber,"+ EndOfLine + _
		  "300A0078,3RT,IS,1,NumberOfFractionsPlanned,"+ EndOfLine + _
		  "300A0079,3RT,IS,1,NumberOfFractionsPerDay,"+ EndOfLine + _
		  "300A007A,3RT,IS,1,RepeatFractionCycleLength,"+ EndOfLine + _
		  "300A007B,3RT,LT,1,FractionPattern,"+ EndOfLine + _
		  "300A0080,3RT,IS,1,NumberOfBeams,"+ EndOfLine + _
		  "300A0082,3RT,DS,3,BeamDoseSpecificationPoint,"+ EndOfLine + _
		  "300A0084,3RT,DS,1,BeamDose,"+ EndOfLine + _
		  "300A0086,3RT,DS,1,BeamMeterset,"+ EndOfLine + _
		  "300A00A0,3RT,IS,1,NumberOfBrachyApplicationSetups,"+ EndOfLine + _
		  "300A00A2,3RT,DS,3,BrachyApplicationSetupDoseSpecificationPoint,"+ EndOfLine + _
		  "300A00A4,3RT,DS,1,BrachyApplicationSetupDose,"+ EndOfLine + _
		  "300A00B0,3RT,SQ,1,BeamSequence,"+ EndOfLine + _
		  "300A00B2,3RT,SH,1,TreatmentMachineName,"+ EndOfLine + _
		  "300A00B3,3RT,CS,1,PrimaryDosimeterUnit,"+ EndOfLine + _
		  "300A00B4,3RT,DS,1,SourceAxisDistance,"+ EndOfLine + _
		  "300A00B6,3RT,SQ,1,BeamLimitingDeviceSequence,"+ EndOfLine + _
		  "300A00B8,3RT,CS,1,RTBeamLimitingDeviceType,"+ EndOfLine + _
		  "300A00BA,3RT,DS,1,SourceToBeamLimitingDeviceDistance,"+ EndOfLine + _
		  "300A00BC,3RT,IS,1,NumberOfLeafJawPairs,"+ EndOfLine + _
		  "300A00BE,3RT,DS,3-n,LeafPositionBoundaries,"+ EndOfLine + _
		  "300A00C0,3RT,IS,1,BeamNumber,"+ EndOfLine + _
		  "300A00C2,3RT,LO,1,BeamName,"+ EndOfLine + _
		  "300A00C3,3RT,ST,1,BeamDescription,"+ EndOfLine + _
		  "300A00C4,3RT,CS,1,BeamType,"+ EndOfLine + _
		  "300A00C6,3RT,CS,1,RadiationType,"+ EndOfLine + _
		  "300A00C8,3RT,IS,1,ReferenceImageNumber,"+ EndOfLine + _
		  "300A00CA,3RT,SQ,1,PlannedVerificationImageSequence,"+ EndOfLine + _
		  "300A00CC,3RT,LO,1-n,ImagingDeviceSpecificAcquisitionParameters,"+ EndOfLine + _
		  "300A00CE,3RT,CS,1,TreatmentDeliveryType,"+ EndOfLine + _
		  "300A00D0,3RT,IS,1,NumberOfWedges,"+ EndOfLine + _
		  "300A00D1,3RT,SQ,1,WedgeSequence,"+ EndOfLine + _
		  "300A00D2,3RT,IS,1,WedgeNumber,"+ EndOfLine + _
		  "300A00D3,3RT,CS,1,WedgeType,"+ EndOfLine + _
		  "300A00D4,3RT,SH,1,WedgeID,"+ EndOfLine + _
		  "300A00D5,3RT,IS,1,WedgeAngle,"+ EndOfLine + _
		  "300A00D6,3RT,DS,1,WedgeFactor,"+ EndOfLine + _
		  "300A00D8,3RT,DS,1,WedgeOrientation,"+ EndOfLine + _
		  "300A00DA,3RT,DS,1,SourceToWedgeTrayDistance,"+ EndOfLine + _
		  "300A00E0,3RT,IS,1,NumberOfCompensators,"+ EndOfLine + _
		  "300A00E1,3RT,SH,1,MaterialID,"+ EndOfLine + _
		  "300A00E2,3RT,DS,1,TotalCompensatorTrayFactor,"+ EndOfLine + _
		  "300A00E3,3RT,SQ,1,CompensatorSequence,"+ EndOfLine + _
		  "300A00E4,3RT,IS,1,CompensatorNumber,"+ EndOfLine + _
		  "300A00E5,3RT,SH,1,CompensatorID,"+ EndOfLine + _
		  "300A00E6,3RT,DS,1,SourceToCompensatorTrayDistance,"+ EndOfLine + _
		  "300A00E7,3RT,IS,1,CompensatorRows,"+ EndOfLine + _
		  "300A00E8,3RT,IS,1,CompensatorColumns,"+ EndOfLine + _
		  "300A00E9,3RT,DS,2,CompensatorPixelSpacing,"+ EndOfLine + _
		  "300A00EA,3RT,DS,2,CompensatorPosition,"+ EndOfLine + _
		  "300A00EB,3RT,DS,1-n,CompensatorTransmissionData,"+ EndOfLine + _
		  "300A00EC,3RT,DS,1-n,CompensatorThicknessData,"+ EndOfLine + _
		  "300A00ED,3RT,IS,1,NumberOfBoli,"+ EndOfLine + _
		  "300A00F0,3RT,IS,1,NumberOfBlocks,"+ EndOfLine + _
		  "300A00F2,3RT,DS,1,TotalBlockTrayFactor,"+ EndOfLine + _
		  "300A00F4,3RT,SQ,1,BlockSequence,"+ EndOfLine + _
		  "300A00F5,3RT,SH,1,BlockTrayID,"+ EndOfLine + _
		  "300A00F6,3RT,DS,1,SourceToBlockTrayDistance,"+ EndOfLine + _
		  "300A00F8,3RT,CS,1,BlockType,"+ EndOfLine + _
		  "300A00FA,3RT,CS,1,BlockDivergence,"+ EndOfLine + _
		  "300A00FC,3RT,IS,1,BlockNumber,"+ EndOfLine + _
		  "300A00FE,3RT,LO,1,BlockName,"+ EndOfLine + _
		  "300A0100,3RT,DS,1,BlockThickness,"+ EndOfLine + _
		  "300A0102,3RT,DS,1,BlockTransmission,"+ EndOfLine + _
		  "300A0104,3RT,IS,1,BlockNumberOfPoints,"+ EndOfLine + _
		  "300A0106,3RT,DS,2-n,BlockData,"+ EndOfLine + _
		  "300A0107,3RT,SQ,1,ApplicatorSequence,"+ EndOfLine + _
		  "300A0108,3RT,SH,1,ApplicatorID,"+ EndOfLine + _
		  "300A0109,3RT,CS,1,ApplicatorType,"+ EndOfLine + _
		  "300A010A,3RT,LO,1,ApplicatorDescription,"+ EndOfLine + _
		  "300A010C,3RT,DS,1,CumulativeDoseReferenceCoefficient,"+ EndOfLine + _
		  "300A010E,3RT,DS,1,FinalCumulativeMetersetWeight,"+ EndOfLine + _
		  "300A0110,3RT,IS,1,NumberOfControlPoints,"+ EndOfLine + _
		  "300A0111,3RT,SQ,1,ControlPointSequence,"+ EndOfLine + _
		  "300A0112,3RT,IS,1,ControlPointIndex,"+ EndOfLine + _
		  "300A0114,3RT,DS,1,NominalBeamEnergy,"+ EndOfLine + _
		  "300A0115,3RT,DS,1,DoseRateSet,"+ EndOfLine + _
		  "300A0116,3RT,SQ,1,WedgePositionSequence,"+ EndOfLine + _
		  "300A0118,3RT,CS,1,WedgePosition,"+ EndOfLine + _
		  "300A011A,3RT,SQ,1,BeamLimitingDevicePositionSequence,"+ EndOfLine + _
		  "300A011C,3RT,DS,2-n,LeafJawPositions,"+ EndOfLine + _
		  "300A011E,3RT,DS,1,GantryAngle,"+ EndOfLine + _
		  "300A011F,3RT,CS,1,GantryRotationDirection,"+ EndOfLine + _
		  "300A0120,3RT,DS,1,BeamLimitingDeviceAngle,"+ EndOfLine + _
		  "300A0121,3RT,CS,1,BeamLimitingDeviceRotationDirection,"+ EndOfLine + _
		  "300A0122,3RT,DS,1,PatientSupportAngle,"+ EndOfLine + _
		  "300A0123,3RT,CS,1,PatientSupportRotationDirection,"+ EndOfLine + _
		  "300A0124,3RT,DS,1,TableTopEccentricAxisDistance,"+ EndOfLine + _
		  "300A0125,3RT,DS,1,TableTopEccentricAngle,"+ EndOfLine + _
		  "300A0126,3RT,CS,1,TableTopEccentricRotationDirection,"+ EndOfLine + _
		  "300A0128,3RT,DS,1,TableTopVerticalPosition,"+ EndOfLine + _
		  "300A0129,3RT,DS,1,TableTopLongitudinalPosition,"+ EndOfLine + _
		  "300A012A,3RT,DS,1,TableTopLateralPosition,"+ EndOfLine + _
		  "300A012C,3RT,DS,3,IsocenterPosition,"+ EndOfLine + _
		  "300A012E,3RT,DS,3,SurfaceEntryPoint,"+ EndOfLine + _
		  "300A0130,3RT,DS,1,SourceToSurfaceDistance,"+ EndOfLine + _
		  "300A0134,3RT,DS,1,CumulativeMetersetWeight,"+ EndOfLine + _
		  "300A0180,3RT,SQ,1,PatientSetupSequence,"+ EndOfLine + _
		  "300A0182,3RT,IS,1,PatientSetupNumber,"+ EndOfLine + _
		  "300A0184,3RT,LO,1,PatientAdditionalPosition,"+ EndOfLine + _
		  "300A0190,3RT,SQ,1,FixationDeviceSequence,"+ EndOfLine + _
		  "300A0192,3RT,CS,1,FixationDeviceType,"+ EndOfLine + _
		  "300A0194,3RT,SH,1,FixationDeviceLabel,"+ EndOfLine + _
		  "300A0196,3RT,ST,1,FixationDeviceDescription,"+ EndOfLine + _
		  "300A0198,3RT,SH,1,FixationDevicePosition,"+ EndOfLine + _
		  "300A01A0,3RT,SQ,1,ShieldingDeviceSequence,"+ EndOfLine + _
		  "300A01A2,3RT,CS,1,ShieldingDeviceType,"+ EndOfLine + _
		  "300A01A4,3RT,SH,1,ShieldingDeviceLabel,"+ EndOfLine + _
		  "300A01A6,3RT,ST,1,ShieldingDeviceDescription,"+ EndOfLine + _
		  "300A01A8,3RT,SH,1,ShieldingDevicePosition,"+ EndOfLine + _
		  "300A01B0,3RT,CS,1,SetupTechnique,"+ EndOfLine + _
		  "300A01B2,3RT,ST,1,SetupTechniqueDescription,"+ EndOfLine + _
		  "300A01B4,3RT,SQ,1,SetupDeviceSequence,"+ EndOfLine + _
		  "300A01B6,3RT,CS,1,SetupDeviceType,"+ EndOfLine + _
		  "300A01B8,3RT,SH,1,SetupDeviceLabel,"+ EndOfLine + _
		  "300A01BA,3RT,ST,1,SetupDeviceDescription,"+ EndOfLine + _
		  "300A01BC,3RT,DS,1,SetupDeviceParameter,"+ EndOfLine + _
		  "300A01D0,3RT,ST,1,SetupReferenceDescription,"+ EndOfLine + _
		  "300A01D2,3RT,DS,1,TableTopVerticalSetupDisplacement,"+ EndOfLine + _
		  "300A01D4,3RT,DS,1,TableTopLongitudinalSetupDisplacement,"+ EndOfLine + _
		  "300A01D6,3RT,DS,1,TableTopLateralSetupDisplacement,"+ EndOfLine + _
		  "300A0200,3RT,CS,1,BrachyTreatmentTechnique,"+ EndOfLine + _
		  "300A0202,3RT,CS,1,BrachyTreatmentType,"+ EndOfLine + _
		  "300A0206,3RT,SQ,1,TreatmentMachineSequence,"+ EndOfLine + _
		  "300A0210,3RT,SQ,1,SourceSequence,"+ EndOfLine + _
		  "300A0212,3RT,IS,1,SourceNumber,"+ EndOfLine + _
		  "300A0214,3RT,CS,1,SourceType,"+ EndOfLine + _
		  "300A0216,3RT,LO,1,SourceManufacturer,"+ EndOfLine + _
		  "300A0218,3RT,DS,1,ActiveSourceDiameter,"+ EndOfLine + _
		  "300A021A,3RT,DS,1,ActiveSourceLength,"+ EndOfLine + _
		  "300A0222,3RT,DS,1,SourceEncapsulationNominalThickness,"+ EndOfLine + _
		  "300A0224,3RT,DS,1,SourceEncapsulationNominalTransmission,"+ EndOfLine + _
		  "300A0226,3RT,LO,1,SourceIsotopeName,"+ EndOfLine + _
		  "300A0228,3RT,DS,1,SourceIsotopeHalfLife,"+ EndOfLine + _
		  "300A022A,3RT,DS,1,ReferenceAirKermaRate,"+ EndOfLine + _
		  "300A022C,3RT,DA,1,AirKermaRateReferenceDate,"+ EndOfLine + _
		  "300A022E,3RT,TM,1,AirKermaRateReferenceTime,"+ EndOfLine + _
		  "300A0230,3RT,SQ,1,ApplicationSetupSequence,"+ EndOfLine + _
		  "300A0232,3RT,CS,1,ApplicationSetupType,"+ EndOfLine + _
		  "300A0234,3RT,IS,1,ApplicationSetupNumber,"+ EndOfLine + _
		  "300A0236,3RT,LO,1,ApplicationSetupName,"+ EndOfLine + _
		  "300A0238,3RT,LO,1,ApplicationSetupManufacturer,"+ EndOfLine + _
		  "300A0240,3RT,IS,1,TemplateNumber,"+ EndOfLine + _
		  "300A0242,3RT,SH,1,TemplateType,"+ EndOfLine + _
		  "300A0244,3RT,LO,1,TemplateName,"+ EndOfLine + _
		  "300A0250,3RT,DS,1,TotalReferenceAirKerma,"+ EndOfLine + _
		  "300A0260,3RT,SQ,1,BrachyAccessoryDeviceSequence,"+ EndOfLine + _
		  "300A0262,3RT,IS,1,BrachyAccessoryDeviceNumber,"+ EndOfLine + _
		  "300A0263,3RT,SH,1,BrachyAccessoryDeviceID,"+ EndOfLine + _
		  "300A0264,3RT,CS,1,BrachyAccessoryDeviceType,"+ EndOfLine + _
		  "300A0266,3RT,LO,1,BrachyAccessoryDeviceName,"+ EndOfLine + _
		  "300A026A,3RT,DS,1,BrachyAccessoryDeviceNominalThickness,"+ EndOfLine + _
		  "300A026C,3RT,DS,1,BrachyAccessoryDeviceNominalTransmission,"+ EndOfLine + _
		  "300A0280,3RT,SQ,1,ChannelSequence,"+ EndOfLine + _
		  "300A0282,3RT,IS,1,ChannelNumber,"+ EndOfLine + _
		  "300A0284,3RT,DS,1,ChannelLength,"+ EndOfLine + _
		  "300A0286,3RT,DS,1,ChannelTotalTime,"+ EndOfLine + _
		  "300A0288,3RT,CS,1,SourceMovementType,"+ EndOfLine + _
		  "300A028A,3RT,IS,1,NumberOfPulses,"+ EndOfLine + _
		  "300A028C,3RT,DS,1,PulseRepetitionInterval,"+ EndOfLine + _
		  "300A0290,3RT,IS,1,SourceApplicatorNumber,"+ EndOfLine + _
		  "300A0291,3RT,SH,1,SourceApplicatorID,"+ EndOfLine + _
		  "300A0292,3RT,CS,1,SourceApplicatorType,"+ EndOfLine + _
		  "300A0294,3RT,LO,1,SourceApplicatorName,"+ EndOfLine + _
		  "300A0296,3RT,DS,1,SourceApplicatorLength,"+ EndOfLine + _
		  "300A0298,3RT,LO,1,SourceApplicatorManufacturer,"+ EndOfLine + _
		  "300A029C,3RT,DS,1,SourceApplicatorWallNominalThickness,"+ EndOfLine + _
		  "300A029E,3RT,DS,1,SourceApplicatorWallNominalTransmission,"+ EndOfLine + _
		  "300A02A0,3RT,DS,1,SourceApplicatorStepSize,"+ EndOfLine + _
		  "300A02A2,3RT,IS,1,TransferTubeNumber,"+ EndOfLine + _
		  "300A02A4,3RT,DS,1,TransferTubeLength,"+ EndOfLine + _
		  "300A02B0,3RT,SQ,1,ChannelShieldSequence,"+ EndOfLine + _
		  "300A02B2,3RT,IS,1,ChannelShieldNumber,"+ EndOfLine + _
		  "300A02B3,3RT,SH,1,ChannelShieldID,"+ EndOfLine + _
		  "300A02B4,3RT,LO,1,ChannelShieldName,"+ EndOfLine + _
		  "300A02B8,3RT,DS,1,ChannelShieldNominalThickness,"+ EndOfLine + _
		  "300A02BA,3RT,DS,1,ChannelShieldNominalTransmission,"+ EndOfLine + _
		  "300A02C8,3RT,DS,1,FinalCumulativeTimeWeight,"+ EndOfLine + _
		  "300A02D0,3RT,SQ,1,BrachyControlPointSequence,"+ EndOfLine + _
		  "300A02D2,3RT,DS,1,ControlPointRelativePosition,"+ EndOfLine + _
		  "300A02D4,3RT,DS,3,ControlPoint3DPosition,"+ EndOfLine + _
		  "300A02D6,3RT,DS,1,CumulativeTimeWeight,"+ EndOfLine + _
		  "300C0002,3RT,SQ,1,ReferencedRTPlanSequence,"+ EndOfLine + _
		  "300C0004,3RT,SQ,1,ReferencedBeamSequence,"+ EndOfLine + _
		  "300C0006,3RT,IS,1,ReferencedBeamNumber,"+ EndOfLine + _
		  "300C0007,3RT,IS,1,ReferencedReferenceImageNumber,"+ EndOfLine + _
		  "300C0008,3RT,DS,1,StartCumulativeMetersetWeight,"+ EndOfLine + _
		  "300C0009,3RT,DS,1,EndCumulativeMetersetWeight,"+ EndOfLine + _
		  "300C000A,3RT,SQ,1,ReferencedBrachyApplicationSetupSequence,"+ EndOfLine + _
		  "300C000C,3RT,IS,1,ReferencedBrachyApplicationSetupNumber,"+ EndOfLine + _
		  "300C000E,3RT,IS,1,ReferencedSourceNumber,"+ EndOfLine + _
		  "300C0020,3RT,SQ,1,ReferencedFractionGroupSequence,"+ EndOfLine + _
		  "300C0022,3RT,IS,1,ReferencedFractionGroupNumber,"+ EndOfLine + _
		  "300C0040,3RT,SQ,1,ReferencedVerificationImageSequence,"+ EndOfLine + _
		  "300C0042,3RT,SQ,1,ReferencedReferenceImageSequence,"+ EndOfLine + _
		  "300C0050,3RT,SQ,1,ReferencedDoseReferenceSequence,"+ EndOfLine + _
		  "300C0051,3RT,IS,1,ReferencedDoseReferenceNumber,"+ EndOfLine + _
		  "300C0055,3RT,SQ,1,BrachyReferencedDoseReferenceSequence,"+ EndOfLine + _
		  "300C0060,3RT,SQ,1,ReferencedStructureSetSequence,"+ EndOfLine + _
		  "300C006A,3RT,IS,1,ReferencedPatientSetupNumber,"+ EndOfLine + _
		  "300C0080,3RT,SQ,1,ReferencedDoseSequence,"+ EndOfLine + _
		  "300C00A0,3RT,IS,1,ReferencedToleranceTableNumber,"+ EndOfLine + _
		  "300C00B0,3RT,SQ,1,ReferencedBolusSequence,"+ EndOfLine + _
		  "300C00C0,3RT,IS,1,ReferencedWedgeNumber,"+ EndOfLine + _
		  "300C00D0,3RT,IS,1,ReferencedCompensatorNumber,"+ EndOfLine + _
		  "300C00E0,3RT,IS,1,ReferencedBlockNumber,"+ EndOfLine + _
		  "300C00F0,3RT,IS,1,ReferencedControlPoint,"+ EndOfLine + _
		  "00030000,3RT,CS,1,ApprovalStatus,"+ EndOfLine + _
		  "03000000,3RT,DA,1,ReviewDate,"+ EndOfLine + _
		  "30000000,3RT,TM,1,ReviewTime,"+ EndOfLine + _
		  "30000000000,3RT,PN,1,ReviewerName,"+ EndOfLine + _
		  "40000000,2,UL,1,TextGroupLength,"+ EndOfLine + _
		  "40000010,2,LT,1-n,TextArbitrary,"+ EndOfLine + _
		  "40004000,2,LT,1-n,TextComments,"+ EndOfLine + _
		  "40080000,3,UL,1,ResultsGroupLength,"+ EndOfLine + _
		  "40080040,3,SH,1,ResultsID,"+ EndOfLine + _
		  "40080042,3,LO,1,ResultsIDIssuer,"+ EndOfLine + _
		  "40080050,3,SQ,1,ReferencedInterpretationSequence,"+ EndOfLine + _
		  "40080100,3,DA,1,InterpretationRecordedDate,"+ EndOfLine + _
		  "40080101,3,TM,1,InterpretationRecordedTime,"+ EndOfLine + _
		  "40080102,3,PN,1,InterpretationRecorder,"+ EndOfLine + _
		  "40080103,3,LO,1,ReferenceToRecordedSound,"+ EndOfLine + _
		  "40080108,3,DA,1,InterpretationTranscriptionDate,"+ EndOfLine + _
		  "40080109,3,TM,1,InterpretationTranscriptionTime,"+ EndOfLine + _
		  "4008010a,3,PN,1,InterpretationTranscriber,"+ EndOfLine + _
		  "4008010b,3,ST,1,InterpretationText,"+ EndOfLine + _
		  "4008010c,3,PN,1,InterpretationAuthor,"+ EndOfLine + _
		  "40080111,3,SQ,1,InterpretationApproverSequence,"+ EndOfLine + _
		  "40080112,3,DA,1,InterpretationApprovalDate,"+ EndOfLine + _
		  "40080113,3,TM,1,InterpretationApprovalTime,"+ EndOfLine + _
		  "40080114,3,PN,1,PhysicianApprovingInterpretation,"+ EndOfLine + _
		  "40080115,3,LT,1,InterpretationDiagnosisDescription,"+ EndOfLine + _
		  "40080117,3,SQ,1,InterpretationDiagnosisCodeSequence,"+ EndOfLine + _
		  "40080118,3,SQ,1,ResultsDistributionListSequence,"+ EndOfLine + _
		  "40080119,3,PN,1,DistributionName,"+ EndOfLine + _
		  "4008011a,3,LO,1,DistributionAddress,"+ EndOfLine + _
		  "40080200,3,SH,1,InterpretationID,"+ EndOfLine + _
		  "40080202,3,LO,1,InterpretationIDIssuer,"+ EndOfLine + _
		  "40080210,3,CS,1,InterpretationTypeID,"+ EndOfLine + _
		  "40080212,3,CS,1,InterpretationStatusID,"+ EndOfLine + _
		  "40080300,3,ST,1,Impressions,"+ EndOfLine + _
		  "40084000,3,ST,1,ResultsComments,"+ EndOfLine + _
		  "50xx0000,3,UL,1,CurveGroupLength,"+ EndOfLine + _
		  "50xx0005,3,US,1,CurveDimensions,"+ EndOfLine + _
		  "50xx0010,3,US,1,NumberOfPoints,"+ EndOfLine + _
		  "50xx0020,3,CS,1,TypeOfData,"+ EndOfLine + _
		  "50xx0022,3,LO,1,CurveDescription,"+ EndOfLine + _
		  "50xx0030,3,SH,1-n,AxisUnits,"+ EndOfLine + _
		  "50xx0040,3,SH,1-n,AxisLabels,"+ EndOfLine + _
		  "50xx0103,3,US,1,DataValueRepresentation,"+ EndOfLine + _
		  "50xx0104,3,US,1-n,MinimumCoordinateValue,"+ EndOfLine + _
		  "50xx0105,3,US,1-n,MaximumCoordinateValue,"+ EndOfLine + _
		  "50xx0106,3,SH,1-n,CurveRange,"+ EndOfLine + _
		  "50xx0110,3,US,1,CurveDataDescriptor,"+ EndOfLine + _
		  "50xx0112,3,US,1,CoordinateStartValue,"+ EndOfLine + _
		  "50xx0114,3,US,1,CoordinateStepValue,"+ EndOfLine + _
		  "50xx1001,3SCP,CS,1,CurveActivationLayer,"+ EndOfLine + _
		  "50xx2000,3,US,1,AudioType,"+ EndOfLine + _
		  "50xx2002,3,US,1,AudioSampleFormat,"+ EndOfLine + _
		  "50xx2004,3,US,1,NumberOfChannels,"+ EndOfLine + _
		  "50xx2006,3,UL,1,NumberOfSamples,"+ EndOfLine + _
		  "50xx2008,3,UL,1,SampleRate,"+ EndOfLine + _
		  "50xx200a,3,UL,1,TotalTime,"+ EndOfLine + _
		  "50xx200c,3,OX,1,AudioSampleData,"+ EndOfLine + _
		  "50xx200e,3,LT,1,AudioComments,"+ EndOfLine + _
		  "50xx2500,3,LO,1,CurveLabel,"+ EndOfLine + _
		  "50xx2600,3,SQ,1,CurveReferencedOverlaySequence,"+ EndOfLine + _
		  "50xx2610,3,US,1,CurveReferencedOverlayGroup,"+ EndOfLine + _
		  "50xx3000,3,OX,1,CurveData,"+ EndOfLine + _
		  "54000100,3WAV,SQ,1,WaveformSequence,"+ EndOfLine + _
		  "54000110,3WAV,OX,1,ChannelMinimumValue,"+ EndOfLine + _
		  "54000112,3WAV,OX,1,ChannelMaximumValue,"+ EndOfLine + _
		  "54001004,3WAV,US,1,WaveformBitsAllocated,"+ EndOfLine + _
		  "54001006,3WAV,CS,1,WaveformSampleInterpretation,"+ EndOfLine + _
		  "5400100A,3WAV,OX,1,WaveformPaddingValue,"+ EndOfLine + _
		  "54001010,3WAV,OX,1,WaveformData,"+ EndOfLine + _
		  "60xx0000,3,UL,1,OverlayGroupLength,"+ EndOfLine + _
		  "60xx0010,3,US,1,OverlayRows,"+ EndOfLine + _
		  "60xx0011,3,US,1,OverlayColumns,"+ EndOfLine + _
		  "60xx0012,3,US,1,OverlayPlanes,"+ EndOfLine + _
		  "60xx0015,3,IS,1,NumberOfFramesInOverlay,"+ EndOfLine + _
		  "60xx0022,3,LO,1,OverlayDescription,"+ EndOfLine + _
		  "60xx0040,3,CS,1,OverlayType,"+ EndOfLine + _
		  "60xx0045,3,CS,1,OverlaySubtype,"+ EndOfLine + _
		  "60xx0050,3,SS,2,OverlayOrigin,"+ EndOfLine + _
		  "60xx0051,3,US,1,ImageFrameOrigin,"+ EndOfLine + _
		  "60xx0052,3,US,1,PlaneOrigin,"+ EndOfLine + _
		  "60xx0060,2,LT,1,OverlayCompressionCode,"+ EndOfLine + _
		  "60xx0061,2C,SH,1,OverlayCompressionOriginator,"+ EndOfLine + _
		  "60xx0062,2C,SH,1,OverlayCompressionLabel,"+ EndOfLine + _
		  "60xx0063,2C,SH,1,OverlayCompressionDescription,"+ EndOfLine + _
		  "60xx0066,2C,AT,1-n,OverlayCompressionStepPointers,"+ EndOfLine + _
		  "60xx0068,2C,US,1,OverlayRepeatInterval,"+ EndOfLine + _
		  "60xx0069,2C,US,1,OverlayBitsGrouped,"+ EndOfLine + _
		  "60xx0100,3,US,1,OverlayBitsAllocated,"+ EndOfLine + _
		  "60xx0102,3,US,1,OverlayBitPosition,"+ EndOfLine + _
		  "60xx0110,2,LT,1,OverlayFormat,"+ EndOfLine + _
		  "60xx0200,2,US,1,OverlayLocation,"+ EndOfLine + _
		  "60xx0800,2C,LO,1-n,OverlayCodeLabel,"+ EndOfLine + _
		  "60xx0802,2C,US,1,OverlayNumberOfTables,"+ EndOfLine + _
		  "60xx0803,2C,AT,1-n,OverlayCodeTableLocation,"+ EndOfLine + _
		  "60xx0804,2C,US,1,OverlayBitsForCodeWord,"+ EndOfLine + _
		  "60xx1001,3SCP,CS,1,OverlayActivationLayer,"+ EndOfLine + _
		  "60xx1100,3,US,1,OverlayDescriptorGray,"+ EndOfLine + _
		  "60xx1101,3,US,1,OverlayDescriptorRed,"+ EndOfLine + _
		  "60xx1102,3,US,1,OverlayDescriptorGreen,"+ EndOfLine + _
		  "60xx1103,3,US,1,OverlayDescriptorBlue,"+ EndOfLine + _
		  "60xx1200,3,US,1-n,OverlayGray,"+ EndOfLine + _
		  "60xx1201,3,US,1-n,OverlayRed,"+ EndOfLine + _
		  "60xx1202,3,US,1-n,OverlayGreen,"+ EndOfLine + _
		  "60xx1203,3,US,1-n,OverlayBlue,"+ EndOfLine + _
		  "60xx1301,3,IS,1,ROIArea,"+ EndOfLine + _
		  "60xx1302,3,DS,1,ROIMean,"+ EndOfLine + _
		  "60xx1303,3,DS,1,ROIStandardDeviation,"+ EndOfLine + _
		  "60xx1500,3,LO,1,OverlayLabel,"+ EndOfLine + _
		  "60xx3000,3,OW,1,OverlayData,"+ EndOfLine + _
		  "60xx4000,2,LT,1-n,OverlayComments,"+ EndOfLine + _
		  "7FE00000,3,UL,1,PixelDataGroupLength,"+ EndOfLine + _
		  "7FE00010,3,OX,1,PixelData,"+ EndOfLine + _
		  "7FE00020,2C,OW,1-n,CoefficientsSDVN,"+ EndOfLine + _
		  "7FE00030,2C,OW,1-n,CoefficientsSDHN,"+ EndOfLine + _
		  "7FE00040,2C,OW,1-n,CoefficientsSDDN,"+ EndOfLine + _
		  "7Fxx0000,2C,UL,1,VariablePixelDataGroupLength,"+ EndOfLine + _
		  "7Fxx0010,2C,OX,1,VariablePixelData,"+ EndOfLine + _
		  "7Fxx0011,2C,US,1,VariableNextDataGroup,"+ EndOfLine + _
		  "7Fxx0020,2C,OW,1-n,VariableCoefficientsSDVN,"+ EndOfLine + _
		  "7Fxx0030,2C,OW,1-n,VariableCoefficientsSDHN,"+ EndOfLine + _
		  "7Fxx0040,2C,OW,1-n,VariableCoefficientsSDDN,"+ EndOfLine + _
		  "FFFCFFFc,3,OB,1,DataSetTrailingPadding,"+ EndOfLine + _
		  "FFFEE000,3,NONE,1,Item,"+ EndOfLine + _
		  "FFFEE00d,3,NONE,1,ItemDelimitationItem,"+ EndOfLine + _
		  "FFFEE0Dd,3,NONE,1,SequenceDelimitationItem,"
		  
		  
		  
		  for i = 0 to 1719
		    line = NthField(wholefile,EndOfLine,i+1)
		    dictionary(i, 0) = NthField(line, ",", 1)    // group and element
		    dictionary(i, 1) = NthField(line,",", 3)    // VR
		    dictionary(i, 2) = NthField(line, ",", 5)  // Info
		    dictionary(i, 3) = NthField(line, ",", 2)    // Supplement
		  next
		  
		  
		  
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
		          
		        elseif file.Elements(i).tag_a="300A" and file.Elements(i).tag_b="00C7"  then // High-Dose Technique Type
		          bs.High_Dose_Technique=file.Elements(i).value
		          
		          
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
		  PW_Show=true
		  Write_DICOM_Elements_Image
		  Write_DICOM_Elements_Structure
		  Write_DICOM_Elements_Plan
		  Write_DICOM_Elements_Dose
		  PW_Show=false
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
		        
		        File.Elements(item_level1_index).Sequence_Length=item_level1_length
		        cc=File.Elements(item_level1_index).Update
		        length_level1=length_level1+item_level1_length+8
		      Next
		      File.Elements(level1_index).Sequence_Length=length_level1
		      cc=File.Elements(level1_index).Update
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
		        
		        File.Elements(item_level1_index).Sequence_Length=item_level1_length
		        cc=File.Elements(item_level1_index).Update
		        length_level1=length_level1+item_level1_length+8
		      Next
		      File.Elements(level1_index).Sequence_Length=length_level1
		      cc=File.Elements(level1_index).Update
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
		    if gPref.DICOM_Bytes=16 Then // 2 bytes per point
		      // 2 bytes per point
		      ee.Value_length=2*(UBound(ee.PixelData)+1)
		    else
		      // 4 bytes per point
		      ee.Value_length=4*(UBound(ee.PixelData)+1)
		    end
		    
		    File.Elements.Append ee
		    cc=ee.Update
		    
		    File.UID_Name=dose.SOPInstanceUID
		    File.TempName="RTDOSE_"+File.UID_Name+".dcm"
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
		      File.TempName="CTI."+RT_Images(i).PatientID+"."+RT_Images(i).StudyID+"."+str(RT_Images(i).InstanceNumber)+"."+File.TempName+".dcm"
		    else
		      File.TempName="CT_"+File.UID_Name+".dcm"
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
		    ee.Value_length=LenB(ee.Value)
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
		        File.Elements(item_level1_index).Sequence_Length=item_level1_length
		        cc=File.Elements(item_level1_index).Update
		        
		        level1_length=level1_length+item_level1_length+8
		      Next
		      // Asign level 1 length to element
		      File.Elements(level1_index).Value_length=level1_length
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
		          File.Elements(item_level2_index).Sequence_Length=item_level2_length
		          cc=File.Elements(item_level2_index).Update
		          
		          // Add item length to level length 
		          level2_length=level2_length+item_level2_length+8
		        Next
		        // Asign level 2 length to sequence
		        File.Elements(level2_index).Value_length=level2_length
		        // Add level 2 length to level 1
		        item_level1_length=item_level1_length+level2_length+8
		        
		        // Add finale
		        File.Elements(item_level1_index).Sequence_Length=item_level1_length
		        cc=File.Elements(item_level1_index).Update
		        
		        level1_length=level1_length+item_level1_length+8
		      Next
		      // Asign level 1 length to element
		      File.Elements(level1_index).Sequence_Length=level1_length
		      cc=File.Elements(level1_index).Update
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
		        ee.Value_length=templength
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
		          File.Elements(item_level2_index).Sequence_Length=item_level2_length
		          cc=File.Elements(item_level2_index).Update
		          level2_length=level2_length+item_level2_length+8
		        Next
		        File.Elements(level2_index).Sequence_Length=level2_length
		        cc=File.Elements(level2_index).Update
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
		              File.Elements(item_level3_index).Sequence_Length=item_level3_length
		              cc=File.Elements(item_level3_index).Update
		              
		              level3_length=level3_length+item_level3_length+8
		              
		            Next
		            
		            File.Elements(level3_index).Sequence_Length=level3_length
		            cc=File.Elements(level3_index).Update
		            
		            
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
		          File.Elements(item_level2_index).Sequence_Length=item_level2_length
		          cc=File.Elements(item_level2_index).Update
		          
		          level2_length=level2_length+item_level2_length+8
		        Next
		        File.Elements(level2_index).Sequence_Length=level2_length
		        cc=File.Elements(level2_index).Update
		        
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
		        File.Elements(item_level1_index).Sequence_Length=item_level1_length
		        cc=File.Elements(item_level1_index).update
		        
		        level1_length=level1_length+item_level1_length+8
		      Next
		      File.Elements(level1_index).Sequence_Length=level1_length
		      cc=File.Elements(level1_index).Update
		      
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
		            
		            File.Elements(item_level2_index).Sequence_Length=item_level2_length
		            cc=File.Elements(item_level2_index).Update
		            
		            level2_length=level2_length+item_level2_length+8
		          Next
		          File.Elements(level2_index).Sequence_Length=level2_length
		          cc=File.Elements(level2_index).update
		          
		          item_level1_length=item_level1_length+level2_length+8
		        end
		        
		        File.Elements(item_level1_index).Sequence_Length=item_level1_length
		        cc=File.Elements(item_level1_index).Update
		        
		        level1_length=level1_length+item_level1_length+8
		      Next
		      File.Elements(level1_index).Sequence_Length=level1_length
		      cc=File.Elements(level1_index).Update
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
		        
		        File.Elements(item_level1_index).Sequence_Length=item_level1_length
		        cc=File.Elements(item_level1_index).Update
		        
		        level1_length=level1_length+item_level1_length+8
		        
		      Next
		      File.Elements(level1_index).Sequence_Length=level1_length
		      cc=File.Elements(level1_index).Update
		      
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
		        
		        File.Elements(item_level1_index).Sequence_Length=item_level1_length
		        cc=File.Elements(item_level1_index).Update
		        level1_length=level1_length+item_level1_length+8
		      Next
		      File.Elements(level1_index).Sequence_Length=level1_length
		      cc=File.Elements(level1_index).Update
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
		    File.TempName="RTPLAN_"+File.UID_Name+".dcm"
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
		  dim found,signed,cc as boolean
		  Dim Image as Class_DICOM_Image
		  Dim tmpf as Class_DICOM_File
		  Dim ee as Class_DICOM_Element
		  Dim rstudys as Class_DICOM_Referenced_Study_Sequence
		  Dim cs as Class_DICOM_Structure_ContourSequence
		  //================================================
		  
		  
		  
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
		                    
		                    File.Elements(item_level4_index).Sequence_Length=item_level4_length
		                    cc=File.Elements(item_level4_index).Update
		                    level4_length=level4_length+item_level4_length+8
		                  Next
		                  File.Elements(level4_index).Sequence_Length=level4_length
		                  cc=File.Elements(level4_index).Update
		                  item_level3_length=item_level3_length+level4_length+8
		                end
		                File.Elements(item_level3_index).Sequence_Length=item_level3_length
		                cc=File.Elements(item_level3_index).Update
		                
		                level3_length=level3_length+item_level3_length+8
		              Next
		              File.Elements(level3_index).Value_length=level3_length
		              item_level2_length=item_level2_length+level3_length+8
		            end
		            File.Elements(item_level2_index).Sequence_Length=item_level2_length
		            cc=File.Elements(item_level2_index).Update
		            
		            level2_length=level2_length+item_level2_length+8
		          Next
		          File.Elements(level2_index).Value_length=level2_length
		          item_level1_length=item_level1_length+level2_length+8
		        end
		        File.Elements(item_level1_index).Sequence_Length=item_level1_length
		        cc=File.Elements(item_level1_index).Update
		        level1_length=level1_length+item_level1_length+8
		      Next
		      File.Elements(level1_index).Value_length=level1_length
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
		        
		        File.Elements(item_level1_index).Sequence_Length=item_level1_length
		        cc=File.Elements(item_level1_index).Update
		        
		        level1_length=level1_length+item_level1_length+8
		      Next
		      File.Elements(level1_index).Value_length=level1_length
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
		                
		                File.Elements(item_level3_index).Sequence_Length=item_level3_length
		                cc=File.Elements(item_level3_index).Update
		                level3_length=level3_length+item_level3_length+8
		              Next
		              File.Elements(level3_index).Value_length=level3_length
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
		            
		            
		            File.Elements(item_level2_index).Sequence_Length=item_level2_length
		            cc=File.Elements(item_level2_index).Update
		            
		            level2_length=level2_length+item_level2_length+8
		          Next
		          File.Elements(level2_index).Value_length=level2_length
		          item_level1_length=item_level1_length+level2_length+8
		        end
		        
		        
		        ee=new Class_DICOM_Element
		        File.Elements.Append ee
		        ee.Tag_a="3006"
		        ee.Tag_b="0084"
		        ee.Value=RT_Structures(i).ROIContourSequence(x).ReferencedROINumber
		        found=ee.Update
		        item_level1_length=item_level1_length+ee.Element_Length
		        
		        
		        File.Elements(item_level1_index).Sequence_Length=item_level1_length
		        cc=File.Elements(item_level1_index).Update
		        
		        level1_length=level1_length+item_level1_length+8
		      Next
		      File.Elements(level1_index).Value_length=level1_length
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
		            
		            File.Elements(item_level2_index).Sequence_Length=item_level2_length
		            cc=File.Elements(item_level2_index).Update
		            
		            level2_length=level2_length+item_level2_length+8
		          Next
		          
		          File.Elements(level2_index).Value_length=level2_length
		          item_level1_length=item_level1_length+level2_length+8
		          
		        end
		        
		        File.Elements(item_level1_index).Sequence_Length=item_level1_length
		        cc=File.Elements(item_level1_index).Update
		        
		        level1_length=level1_length+item_level1_length+8
		      Next
		      File.Elements(level1_index).Value_length=level1_length
		    end
		    
		    
		    File.UID_Name=RT_Structures(i).SOPInstanceUID
		    File.TempName="RTSTRUCT_"+File.UID_Name+".dcm"
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
		Export_Dose As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		Export_Images As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		Export_Plan As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		Export_Structures As Boolean = False
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
			Name="Export_Dose"
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Export_Images"
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Export_Plan"
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Export_Structures"
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
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
