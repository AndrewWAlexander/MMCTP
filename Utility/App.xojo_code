#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub EnableMenuItems()
		  taskmenu.enabled=True
		  File_Save_Plans.enabled=False
		  File_Save_Contours.Enabled=False
		  File_Quit.Enabled=True
		  FileConfigurations.Enabled=True
		  Help_About.Enabled=True
		  Help_Manual.Enabled=True
		  Task_DICOMHeader.Enabled=True
		  TaskCommissioningData.Enabled=True
		  Task_Contour.Enabled=False
		  TaskMERT.Enabled=False
		  Task_TreatmentPlanning.Enabled=False
		  Task_AddDose.Enabled=False
		  Task_3DViewer.Enabled=False
		  TaskCreatDoseDistribution.Enabled=False
		  //TaskGamma.Enabled=True
		  FileSaveProfiles.Enabled=False
		  
		  File_Save_DoseDistributions.Enabled=False
		  File_Patientinfo.Enabled=False
		  FileImageInformation.Enabled=False
		  
		  
		  File_ImportPatient.Enabled=True
		  
		  File_Import_DICOMRTPlan.Enabled=False
		  File_Import_DICOMRTDose.Enabled=False
		  File_Import_DICOMStrutures.Enabled=False
		  File_Import_McGillRTDose.Enabled=False
		  File_Import3ddose.Enabled=False
		  File_ImportTomoXMLFile.Enabled=False
		  File_Import_DICOMRTPlan.Enabled=False
		  
		  File_ImportMEDPHYSTOmcc.Enabled=True
		  File_ImportRFAdata.Enabled=True
		  File_ImportProfile.Enabled=True
		  File_ImportXiOProfile.Enabled=True
		  File_Import_EclipseData.Enabled=True
		  
		  File_Export_DICOM.Enabled=False
		  File_Export_DosePlane.Enabled=False
		  FileExport.Enabled=False
		  
		  
		  FileConfigurationsAdminsettings.Enabled=True
		  FileConfigurationsBeammodels.Enabled=True
		  FileConfigurationsCTmodels.Enabled=True
		  FileConfigurationsDOSXYZnrcsettings.Enabled=True
		  FileConfigurationsRemoteShell.Enabled=True
		  FileConfigurationsBeamnrc.Enabled=True
		  FileConfigurationsVMCsettings.Enabled=True
		  
		  
		  If gRTOG<>Nil Then
		    Task_TreatmentPlanning.Enabled=True
		    Task_Contour.Enabled=True
		    Task_AddDose.Enabled=True
		    TaskMERT.Enabled=True
		    TaskCreatDoseDistribution.Enabled=True
		    
		    FileExport.Enabled=True
		    
		    FileImageInformation.Enabled=True
		    
		    If which_window_Contouring Then
		      File_Save_Contours.Enabled=True
		    End
		    
		    File_Save_DoseDistributions.Enabled=True
		    FileSaveProfiles.Enabled=True
		    File_Export_DICOM.Enabled=True
		    File_Save_Plans.Enabled=True
		    File_Import_McGillRTDose.Enabled=True
		    
		    File_Patientinfo.Enabled=True
		    File_DoseInformation.Enabled=True
		    File_Import3ddose.Enabled=True
		    File_Import_DICOMRTDose.Enabled=True
		    File_Import_DICOMRTPlan.Enabled=True
		    File_Import_DICOMRTPlanD.Enabled=True
		    File_Import_DICOMStrutures.Enabled=True
		    File_Import_DICOMRTPlan.Enabled=True
		    If which_window_TreatmentPlanning Then
		      Task_3DViewer.Enabled=True
		      File_Export_DosePlane.Enabled=True
		    Else
		      File_Export_DosePlane.Enabled=False
		    End
		  End
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Var f As FolderItem
		  
		  String_Separate=Chr(126)+Chr(126)
		  
		  AutoQuit=False
		  
		  #If TargetWindows Then
		    
		    local_endline=EndOfLine.Windows
		    App.MDIWindow.Height=720
		    App.MDIWindow.Width=1200
		    
		    If Screen(0)<>Nil Then
		      
		      App.MDIWindow.Top= Screen(0).height/2 - App.MDIWindow.height/2
		      App.MDIWindow.Left = Screen(0).Width/2 - (App.MDIWindow.Width/2)
		      
		    End
		    
		  #Else
		    
		    
		    //removed mac and unix conditions. THey are redundent.
		    //Wamied Abdel-Rahman 18 July 
		    local_endline=EndOfLine.unix
		    
		  #EndIf
		  
		  
		  gpref=New Class_Preference
		  gpref.initialize
		  
		  // Look for User license agreement
		  If MMCTP_Read_License Then
		    
		    Window_Licence.Show
		    
		  Else
		    
		    MMCTP_Open_Application
		    
		  End
		  
		  
		  BackColour=RGB(200,200,200)
		End Sub
	#tag EndEvent

	#tag Event
		Function UnhandledException(error As RuntimeException) As Boolean
		  If error IsA OutOfBoundsException Then
		    MsgBox("An OutOfBounds Exception has occurred")
		  Elseif error IsA OutOfMemoryException Then
		    MsgBox("An OutOf Memory Exception has occurred")
		  Else
		    MsgBox("An error has occured : "+error.Reason)
		  End
		End Function
	#tag EndEvent


	#tag MenuHandler
		Function FileConfigurationsAdminsettings() As Boolean Handles FileConfigurationsAdminsettings.Action
			Window_Configurations_TPS_System.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileConfigurationsBeammodels() As Boolean Handles FileConfigurationsBeammodels.Action
			Window_Configurations_Beam_Model.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileConfigurationsBeamnrc() As Boolean Handles FileConfigurationsBeamnrc.Action
			Window_Configurations_BeamnrcSettings.Show
			
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileConfigurationsCTmodels() As Boolean Handles FileConfigurationsCTmodels.Action
			Window_Configurations_CTModels.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileConfigurationsDOSXYZnrcsettings() As Boolean Handles FileConfigurationsDOSXYZnrcsettings.Action
			Window_Configurations_DOSXYZnrcSettings.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileConfigurationsRemoteShell() As Boolean Handles FileConfigurationsRemoteShell.Action
			Window_Configurations_Shell.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileConfigurationsVMCsettings() As Boolean Handles FileConfigurationsVMCsettings.Action
			Window_Configurations_VMC_Settings.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileGamma() As Boolean Handles FileGamma.Action
			
			
			Window_dose.PushButtonGamma.Push
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileImageInformation() As Boolean Handles FileImageInformation.Action
			Window_Image_Info.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FilePlanInformation() As Boolean Handles FilePlanInformation.Action
			Window_Plan_Info.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileSaveProfiles() As Boolean Handles FileSaveProfiles.Action
			
			gRTOG.Profiles.Write_Profiles(gRTOG.path)
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_Close_Patient() As Boolean Handles File_Close_Patient.Action
			
			Return app.MMCTP_Clean_up
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_DoseInformation() As Boolean Handles File_DoseInformation.Action
			Window_Dose_Info.Show
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_ExportPatient() As Boolean Handles File_ExportPatient.Action
			Dim tt as Boolean
			
			'gRTOG.McGillRT_to_RTOG
			'tt=gRTOG.Put_RTOG
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_Export_DICOM() As Boolean Handles File_Export_DICOM.Action
			Window_Export_DICOM.Show
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_Export_DosePlane() As Boolean Handles File_Export_DosePlane.Action
			if Window_Treatment.dose_index>-1 then
			Window_Treatment.Dose_Export2D
			end
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_Import3ddose() As Boolean Handles File_Import3ddose.Action
			//------------------------------
			//
			//------------------------------
			Dim f as FolderItem
			dim opfi as new OpenDialog
			//------------------------------
			
			
			
			
			
			
			
			opfi.InitialDirectory=gPref.McGillfi
			opfi.Title="Select any 3ddose ASCII file"
			f=opfi.ShowModal
			
			
			if f=nil then //fi.Exists then
			Return False
			
			
			else
			Window_DOSXYZ_Import.Show
			Window_DOSXYZ_Import.f=f
			Window_DOSXYZ_Import.Read
			Return True
			end if
			
			
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_Importcsvprofiles() As Boolean Handles File_Importcsvprofiles.Action
			Window_CSV_Import.Show
			
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_ImportExceldata() As Boolean Handles File_ImportExceldata.Action
			Window_Excel_Import.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_ImportMCCdata() As Boolean Handles File_ImportMCCdata.Action
			//------------------------------
			//
			//------------------------------
			Dim f as FolderItem
			dim opfi as new OpenDialog
			//------------------------------
			
			
			
			
			
			
			
			opfi.InitialDirectory=gPref.McGillfi
			opfi.Title="Select any RFA ASCII file"
			f=opfi.ShowModal
			
			
			if f=nil then //fi.Exists then
			Return False
			
			
			else
			
			Window_MEPHYSTO_Import.Show
			Window_MEPHYSTO_Import.f=f
			Window_MEPHYSTO_Import.OpenWin
			
			Return True
			end if
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_ImportMEDPHYSTOmcc() As Boolean Handles File_ImportMEDPHYSTOmcc.Action
			//------------------------------
			//
			//------------------------------
			Dim f as FolderItem
			dim opfi as new OpenDialog
			//------------------------------
			
			opfi.InitialDirectory=gPref.McGillfi
			opfi.Title="Select any MCC MEPHYSTO file"
			f=opfi.ShowModal
			if f=nil then //fi.Exists then
			Return False
			else
			Window_MEPHYSTO_Import.Show
			Window_MEPHYSTO_Import.f=f
			Window_MEPHYSTO_Import.OpenWin
			Return True
			end if
			Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_ImportPatient() As Boolean Handles File_ImportPatient.Action
			if which_window_Open  Then
			Window_OpenPatient.Close
			which_window_Open=False
			end
			
			Window_Transfer.show
			
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_ImportProfile() As Boolean Handles File_ImportProfile.Action
			dim fi as FolderItem
			dim opfi as new OpenDialog
			
			opfi.InitialDirectory=gPref.McGillfi
			opfi.Title="Select any profile"
			fi=opfi.ShowModal
			
			
			if fi<>nil then //fi.Exists then
			gProfiles.Read_Profile(fi)
			if App.which_window_TreatmentPlanning Then
			Window_Commisssioning.Update_Profile
			end
			end if
			
			
			
			
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_ImportRFAdata() As Boolean Handles File_ImportRFAdata.Action
			//------------------------------
			//
			//------------------------------
			Dim f as FolderItem
			dim opfi as new OpenDialog
			//------------------------------
			
			
			
			
			
			
			
			opfi.InitialDirectory=gPref.McGillfi
			opfi.Title="Select any RFA ASCII file"
			f=opfi.ShowModal
			
			
			if f=nil then //fi.Exists then
			Return False
			
			
			else
			
			Window_RFA_Import.Show
			Window_RFA_Import.f=f
			Window_RFA_Import.OpenWin
			
			Return True
			end if
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_ImportTomoXMLFile() As Boolean Handles File_ImportTomoXMLFile.Action
			//--------------------------------
			//
			//
			//--------------------------------
			Dim dd as Class_Tomo_XML
			Dim f as FolderItem
			Dim yy as Boolean
			//--------------------------------
			
			f=GetOpenFolderItem("")
			
			if f=nil Then
			Return False
			end
			
			dd=new Class_Tomo_XML
			
			dd.Open_XML(f)
			
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_ImportXiOProfile() As Boolean Handles File_ImportXiOProfile.Action
			Window_XiO_Import.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_Import_DICOMRTDose() As Boolean Handles File_Import_DICOMRTDose.Action
			//--------------------------------
			// Try to import a DICOM dose file
			//
			//--------------------------------
			Dim dd as Thread_DICOM_Object
			Dim f as FolderItem
			Dim yy as Boolean
			//--------------------------------
			
			f=GetOpenFolderItem("")
			
			if f=nil Then
			Return False
			end
			
			
			dd = new  Thread_DICOM_Object
			dd.file =new Class_DICOM_File
			
			yy=dd.file.Load_One_DICOM_file(f)
			
			yy=dd.Read_Doses
			
			if yy Then
			if UBound(dd.RT_Doses)>-1 Then
			if gRTOG.Plan(Plan_Index).Import_DICOM_Dose(dd.RT_Doses(0),cdbl(NthField(gRTOG.DICOM_ImageOrientationPatient,"\",1)),cdbl(NthField(gRTOG.DICOM_ImageOrientationPatient,"\",5))) Then
			gRTOG.Plan(Plan_Index).Write_McGill_Dose(UBound(gRTOG.Plan(Plan_Index).Dose))
			Window_Treatment.Window_Update_Plan
			end
			end
			PW_Show=false
			
			
			Return True
			
			else
			PW_Show=false
			MsgBox "Unable to import file "+f.Name+" as RTDose" 
			Return yy
			
			end
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_Import_DICOMRTPlan() As Boolean Handles File_Import_DICOMRTPlan.Action
			//--------------------------------
			// Try to import a DICOM Plan file
			//
			//--------------------------------
			Dim dd as Thread_DICOM_Object
			Dim f as FolderItem
			Dim yy as Boolean
			Dim gg as RTOG_Plan
			//--------------------------------
			
			f=GetOpenFolderItem("")
			
			if f=nil Then
			Return False
			end
			
			
			dd = new  Thread_DICOM_Object
			dd.file =new Class_DICOM_File
			
			yy=dd.file.Load_One_DICOM_file(f)
			
			yy=dd.Read_Plan
			
			if yy Then
			if UBound(dd.RT_Plan)>-1 Then
			gg=gRTOG.Add_Plan
			Plan_Index=UBound(gRTOG.Plan)
			if gRTOG.Plan(Plan_Index).Import_DICOM_Plan(dd.RT_Plan(0),cdbl(NthField(gRTOG.DICOM_ImageOrientationPatient,"\",1)),cdbl(NthField(gRTOG.DICOM_ImageOrientationPatient,"\",5)),  dd ) Then
			gRTOG.Plan(Plan_Index).Write_McGill_Plan(gRTOG.path)
			Window_Treatment.Window_Update_Plan()
			end
			end
			PW_Show=false
			
			
			Return True
			
			else
			PW_Show=false
			MsgBox "Unable to import file "+f.Name+" as RT Plan" 
			Return yy
			end
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_Import_DICOMRTPlanD() As Boolean Handles File_Import_DICOMRTPlanD.Action
			//--------------------------------
			//
			//
			//--------------------------------
			Dim dd as Thread_DICOM_Object
			Dim f as FolderItem
			Dim pp as RTOG_Plan
			Dim ok,found as Boolean
			Dim i,k,z,p as Integer
			Dim temp as String
			//--------------------------------
			
			f=SelectFolder
			
			if f=nil Then
			Return False
			end
			
			dd = new  Thread_DICOM_Object
			dd.Load_All_DICOM_files(f,gRTOG.Patient_ID,"")
			
			
			
			if UBound(dd.RT_Plan)>-1 Then
			for i=0 to UBound(dd.RT_Plan)
			pp=gRTOG.Add_Plan
			
			pp.Plan_Update_DV(grtog.Structures.Structures)
			ok=pp.Import_DICOM_Plan(dd.RT_Plan(i),1,1,dd)
			gRTOG.Plan(UBound(gRTOG.Plan)).Write_McGill_Plan(gRTOG.path)
			
			if app.which_window_TreatmentPlanning Then
			Window_Treatment.Window_Update_Plan
			end
			next
			end
			
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_Import_DICOMStrutures() As Boolean Handles File_Import_DICOMStrutures.Action
			//--------------------------------
			//
			//
			//--------------------------------
			Dim dd as Thread_DICOM_Object
			Dim f as FolderItem
			Dim i as Integer
			Dim xx, yy as Single
			Dim mm as Boolean
			//--------------------------------
			
			f=GetOpenFolderItem("")
			
			if f=nil Then
			Return False
			end
			PW_Show=true
			dd = new  Thread_DICOM_Object
			dd.file =new Class_DICOM_File
			mm=dd.file.Load_One_DICOM_file(f)
			dd.Read_Structure
			if UBound(dd.RT_Structures)>-1 Then
			Xx=cdbl(NthField(gRTOG.DICOM_ImageOrientationPatient,"\",1))
			yy=cdbl(NthField(gRTOG.DICOM_ImageOrientationPatient,"\",5))
			gRTOG.Convert_DICOM2McGillRT_Structures(dd,xx,yy)
			f=gRTOG.path
			f=f.child("McGill_RT")
			for i=0 to ubound(grtog.Structures.Structures)
			gRTOG.write_mcGill_Structures(grtog.Structures.Structures(i),f,i)
			next
			gVis.Open
			Window_Treatment.Image_Struc_Listbox
			Window_Treatment.Dose_DVH_Structures
			PW_Show=false
			Return True
			Else
			Return False
			end
			
			
			
			
			
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_Import_EclipseData() As Boolean Handles File_Import_EclipseData.Action
			//------------------------------
			// Select an Eclipse ASCII file
			//------------------------------
			Dim f as FolderItem
			dim opfi as new OpenDialog
			//------------------------------
			
			
			
			
			opfi.InitialDirectory=gPref.McGillfi
			opfi.Title="Select any Eclipse ASCII file"
			f=opfi.ShowModal
			
			
			if f=nil then //fi.Exists then
			Return False
			
			
			else
			
			Window_Eclipse_Import.Show
			Window_Eclipse_Import.f=f
			Window_Eclipse_Import.Read_File
			
			Return True
			end if
			
			
			
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_Import_McGillRTDose() As Boolean Handles File_Import_McGillRTDose.Action
			
			//--------------------------------
			//
			//
			//--------------------------------
			Dim f as FolderItem
			Dim nn as String
			//--------------------------------
			
			if Plan_Index<0 or Plan_Index>UBound(gRTOG.Plan) Then
			Return False
			end
			
			f=GetOpenFolderItem("")
			
			if f=nil Then
			Return False
			end
			
			
			gRTOG.Plan(Plan_Index).Read_McGill_Dose(f)
			gRTOG.Plan(Plan_Index).Write_McGill_Dose(UBound(gRTOG.Plan(Plan_Index).Dose))
			PW_Show=false
			Window_Treatment.Window_Update_Plan
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_InvertY() As Boolean Handles File_InvertY.Action
			Dim ss as Boolean
			Dim j,i,x,y as Integer
			
			for i=0 to UBound(grtog.Structures.Structures)
			for j=0 to UBound(grtog.Structures.Structures(i).Structure_Data)
			for x=0 to UBound(grtog.Structures.Structures(i).Structure_Data(j).segments)
			for y=0 to UBound(grtog.Structures.Structures(i).Structure_Data(j).segments(x).points)
			grtog.Structures.Structures(i).Structure_Data(j).segments(x).points(y).y=-1*grtog.Structures.Structures(i).Structure_Data(j).segments(x).points(y).y
			
			
			
			next
			next
			next
			next
			
			for i=0 to UBound(gRTOG.Plan)
			for j=0 to UBound(gRTOG.Plan(i).dose)
			
			gRTOG.Plan(i).Dose(j).vertical_grid=-1*gRTOG.Plan(i).Dose(j).vertical_grid
			gRTOG.Plan(i).Dose(j).Coord_2_1st_point=-1*gRTOG.Plan(i).Dose(j).Coord_2_1st_point
			
			next
			
			for x=0 to UBound(gRTOG.Plan(i).beam)
			gRTOG.Plan(i).Beam(x).Collimator.Fields(0).isocenter.y=-1*gRTOG.Plan(i).Beam(x).Collimator.Fields(0).isocenter.y
			next
			next
			ss=gRTOG.Write_McGill_yaxis
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_Open_Patient() As Boolean Handles File_Open_Patient.Action
			if which_window_Transfer  then
			Window_Transfer.Close
			end
			
			Window_OpenPatient.Show
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_Patientinfo() As Boolean Handles File_Patientinfo.Action
			Window_Patient_Info.Show
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_Quit() As Boolean Handles File_Quit.Action
			//clean up memory....
			Quit
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_Save_Contours() As Boolean Handles File_Save_Contours.Action
			Dim i as integer
			Dim f as FolderItem
			
			f=gRTOG.path
			f=f.Child("McGill_RT")
			
			
			if f.Exists then
			for i=0 to ubound(grtog.Structures.Structures)
			gRTOG.write_mcGill_Structures(grtog.Structures.Structures(i),f,i)
			next
			end
			PW_Show=false
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_Save_DoseDistributions() As Boolean Handles File_Save_DoseDistributions.Action
			MMCTP_Save_Dose
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function File_Save_Plans() As Boolean Handles File_Save_Plans.Action
			MMCTP_Save_Plan
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Help_About() As Boolean Handles Help_About.Action
			Window_About.ShowModal
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Help_Licence() As Boolean Handles Help_Licence.Action
			Window_Licence.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Help_Manual() As Boolean Handles Help_Manual.Action
			Dim f as FolderItem
			
			// Open pdf on local PC, if configuations folder is available
			F=gPref.Config_fi
			if f.Exists Then
			f=f.Parent
			f=f.Child("00-MMCTPUsersManual.pdf")
			if f.Exists Then
			Application.OpenDocument(f)
			f.Launch
			end
			end
			
			
			// Show MMCTP manual on webpage
			ShowURL("https://andrewwalexander.github.io/MMCTP/download/MMCTPUsersManual.pdf")
			
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ImportMcGillRTDose() As Boolean Handles ImportMcGillRTDose.Action
			//--------------------------------
			//
			//
			//--------------------------------
			Dim f as FolderItem
			Dim nn as String
			//--------------------------------
			
			if Plan_Index<0 or Plan_Index>UBound(gRTOG.Plan) Then
			Return False
			end
			
			f=GetOpenFolderItem("")
			
			if f=nil Then
			Return False
			end
			
			
			gRTOG.Plan(Plan_Index).Read_McGill_Dose(f)
			gRTOG.Plan(Plan_Index).Write_McGill_Dose(UBound(gRTOG.Plan(Plan_Index).Dose))
			PW_Show=false
			Window_Treatment.Window_Update_Plan
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function MERTInversePlanning() As Boolean Handles MERTInversePlanning.Action
			if Plan_Index>-1 Then
			gOpt.open
			Window_EMET_Run.Show
			end
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function MERTOutputDB() As Boolean Handles MERTOutputDB.Action
			if Plan_Index>-1 Then
			gOpt.open
			Window_EMET_Results.Show
			end
			
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function MERTSetupFields() As Boolean Handles MERTSetupFields.Action
			if Plan_Index>-1 Then
			Window_EMET_Setup.Show
			end
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function TaskCommissioningData() As Boolean Handles TaskCommissioningData.Action
			Window_Commisssioning.show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function TaskCreatDoseDistribution() As Boolean Handles TaskCreatDoseDistribution.Action
			Window_DrawDose.Show
			
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function TaskGamma() As Boolean Handles TaskGamma.Action
			Window_dose.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function TaskPrescription() As Boolean Handles TaskPrescription.Action
			if gRTOG<> nil then
			if UBound(gRTOG.Plan)>-1 Then
			if Plan_Index>-1 and Plan_Index<=UBound(gRTOG.Plan) Then
			Window_Prescription.Show
			end
			end
			end
			Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Task_3DViewer() As Boolean Handles Task_3DViewer.Action
			Window_3DView.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Task_AddDose() As Boolean Handles Task_AddDose.Action
			Window_AddDose.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Task_Contour() As Boolean Handles Task_Contour.Action
			if app.which_window_TreatmentPlanning  then
			Window_Treatment.Close
			end
			
			Window_Contouring.Show
			
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Task_DICOMHeader() As Boolean Handles Task_DICOMHeader.Action
			Dim dd as Class_DICOM_File
			Dim f as FolderItem
			Dim mm as Boolean
			
			f=GetOpenFolderItem("")
			
			if f=nil Then
			Return False
			end
			
			dd=new Class_DICOM_File
			
			mm=dd.Load_One_DICOM_file(f)
			dd.Header_Read_Element_Info
			
			if mm Then
			dd.Header_Display
			end
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Task_TreatmentPlanning() As Boolean Handles Task_TreatmentPlanning.Action
			if App.which_window_Contouring   then
			Window_Contouring.Close
			end
			
			
			Window_Treatment.Show
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub MMCTP_Check_Version()
		  Var magv As Integer = Val(NthField(Previous_Version,".",1))
		  Var minv As Integer = Val(NthField(Previous_Version,".",2))
		  
		  
		  If magv < 7 Then
		    
		    MMCTP_Version_Update_7
		    
		  End
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MMCTP_Clean_up() As Boolean
		  //-------------------------------
		  // Method to close current patient
		  // shut down all running scripts of current patient
		  //
		  //-------------------------------
		  MMCTP_Shell_Refresh.Close
		  MMCTP_Shell_Run.Close
		  
		  
		  MMCTP_Shell_Refresh.All.ResizeTo(-1)
		  MMCTP_Shell_Run.All.ResizeTo(-1)
		  
		  // Kill gvis runs
		  If gvis <> Nil Then
		    
		    If gVis.Contours <> Nil Then
		      
		      gVis.Contours.kill
		      gVis.contours = Nil
		      
		    End
		    
		    gvis.kill
		    gvis.scans.ResizeTo(-1)
		    gvis = Nil
		    
		  End
		  
		  gvis = New Thread_Visualization
		  
		  If App.which_window_TreatmentPlanning  Then
		    
		    Window_Treatment.Close
		    
		    If app.which_window_TreatmentPlanning=False Then
		      
		      gRTOG = Nil
		      
		    Else
		      
		      Return False
		      
		    End
		    
		  Elseif App.which_window_Contouring  Then
		    
		    Window_Contouring.Close
		    gRTOG=Nil
		    
		  End
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MMCTP_Open_Application()
		  // Open MMCTP Settings
		  
		  If MMCTP_Open Then
		    
		    Return
		    
		  End
		  
		  gShells = New Class_Shells
		  gShells.Read_login
		  
		  gLinacs = New Class_Linacs
		  gLinacs.Read_MLCs
		  gLinacs.Read_Linacs
		  
		  gDoseStats = New Class_Dose_Stats
		  gDoseStats.read
		  
		  gTimer_Refresh = New Class_MMCTP_Timer_Refresh
		  gTimer_Run = New Class_MMCTP_Timer_Run
		  gTimer_Download = New Class_MMCTP_Timer_Download
		  gTimer_PW = New Class_MMCTP_Timer_ProgressWindow
		  gTimer_Windows = New Class_MMCTP_Timer_Windows
		  gTimer_PW.Enabled = True
		  gTimer_Windows.Enabled = True
		  gTimer_Windows.Mode=Timer.ModeMultiple
		  gTimer_PW.Mode=Timer.ModeMultiple
		  
		  gDVH = New Thread_DVH
		  
		  gOpt = New Thread_Optimization
		  
		  gDICOM = New Thread_DICOM_Object
		  gDICOM.Read_Dictionary
		  
		  gCT = New Class_CT
		  gct.Read_CT_Calibration
		  
		  MMCTP_Shell_Refresh = New Shell_MMCTP_Refresh
		  MMCTP_Download = New Shell_MMCTP_Download
		  MMCTP_Shell_Run = New Shell_MMCTP_Run
		  
		  MMCTP_ReadConfig
		  MMCTP_Check_Version
		  
		  
		  gOutput = New Class_OutPut
		  gProfiles = New Class_Profiles_All
		  
		  If gPref.McGillRT_Profile_Skip = False Then
		    
		    gOutput.Read_All_Tables
		    gProfiles.Read_All_Profiles(gPref.Commission_fi)
		    
		  End
		  
		  Window_OpenPatient.Show
		  
		  MMCTP_Open =True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MMCTP_Open_Patient(f as folderItem)
		  Window_OpenPatient.Close
		  gRTOG.path=f
		  gRTOG.Run
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MMCTP_ReadConfig()
		  //-------------------------------------
		  // Read MMCTP Config file MMCTP-Settings
		  //
		  //-------------------------------------
		  
		  //Dim f As FolderItem
		  //Dim ts as TextInputStream
		  //Dim temp,ss,shell As String
		  //-------------------------------------
		  
		  
		  
		  Var f As FolderItem = gPref.Settings_fi.Child("MMCTP-Settings.txt")
		  
		  If f = Nil Then
		    
		    Return
		    
		  End
		  
		  If f.Exists = False Then
		    
		    Return
		    
		  End
		  
		  Var ts As TextInputStream = f.OpenAsTextFile
		  
		  If ts = Nil Then
		    
		    Return
		    
		  End
		  
		  While ts.EOF=False 
		    
		    Var temp as String = ts.ReadLine
		    
		    If InStr(temp,"Auto Check")>0 Then
		      
		      Temp=NthField(Temp,":=",2)
		      
		      If InStr(Temp,"no")>0 Then
		        
		        MC_Auto_Check=False
		        
		      Else
		        
		        MC_Auto_Check=True
		        
		      End
		      
		    Elseif InStr(temp,"MMCTP-Version")>0 Then
		      
		      Temp=NthField(Temp,":=",2)
		      Previous_Version=Trim(temp)
		      
		    Elseif InStr(temp,"Auto Timer")>0 Then
		      
		      Temp=NthField(Temp,":=",2)
		      gTimer_Refresh.Check_Period=Val(Temp)
		      gTimer_Download.Check_Period=gTimer_Refresh.Check_Period
		      
		    Elseif InStr(temp,"AutoRUNTIMER")>0 Then
		      
		      Temp=NthField(Temp,":=",2)
		      gTimer_Run.Check_Period=Val(Temp)
		      
		    Elseif InStr(temp,"MC Run Logic")>0 Then
		      
		      Temp=NthField(Temp,":=",2)
		      
		      If InStr(Temp,"no")>0 Then
		        
		        MC_Run_Logic=False
		        
		      Else
		        
		        MC_Run_Logic=True
		        
		      End
		      
		    Elseif InStr(temp,"Shell Online")>0 Then
		      
		      temp = NthField(Temp,"Shell Online",2)
		      Var ss As String = NthField(Temp,":=",2)
		      Var Shell As String =Trim(NthField(Temp,":=",1))
		      
		      For i As Integer = 0 To UBound(gShells.Shells)
		        
		        If Shell=gShells.Shells(i).title Then
		          
		          If InStr(ss,"no")>0 Then
		            
		            gShells.Shells(i).online=False
		            
		          Else
		            
		            gShells.Shells(i).online=True
		            
		          End
		        End
		      Next
		      
		    End
		  Wend
		  ts.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MMCTP_Read_License() As boolean
		  //---------------------------------
		  //
		  //
		  //---------------------------------
		  //Dim fi As FolderItem
		  //Dim op As Boolean
		  //Dim ts As TextInputStream
		  //Dim fileread As String
		  //---------------------------------
		  
		  
		  Var f As FolderItem = gPref.Settings_fi
		  
		  If f.Exists Then
		    
		    f=f.child(".llc")
		    Var op As Boolean = True
		    
		    If f.Exists Then
		      
		      Var ts As TextInputStream = f.OpenAsTextFile
		      Var fileread As String = ts.ReadLine
		      
		      If fileread=f.NativePath Then
		        
		        op = False
		        
		      End
		      
		      ts.Close
		      
		    End
		    
		    Return op
		    
		  Else
		    
		    MsgBox "Error, could not find User folder"+Chr(13)+"Goodbye"
		    Quit
		    
		  End
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MMCTP_Save_Dose()
		  PW_Title="Saving Dose"
		  PW_Progress_Max=0
		  PW_Show =True
		  
		  For i  As Integer = 0 To gRTOG.Plan.LastRowIndex
		    
		    For k As Integer=0 To gRTOG.Plan(i).Dose.LastRowIndex
		      
		      If gRTOG.Plan(i).Dose(k).save Then
		        
		        gRTOG.Plan(i).Write_McGill_Dose(k)
		        gRTOG.Plan(i).Dose(k).save = False
		        
		      End
		    Next
		  Next
		  
		  
		  PW_Show = False
		  
		  If app.which_window_TreatmentPlanning Then
		    
		    Window_Treatment.Window_update_plan
		    Window_Treatment.Window_canvas_refresh
		    Window_Treatment.Save_Dose = False
		    
		  End
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MMCTP_Save_Plan()
		  Var fname As String = _
		  gRTOG.Patient_Name+String_Separate + _
		  gRTOG.Patient_Surname+String_Separate+(gRTOG.Patient_ID)
		  
		  PW_Title = "Saving McGill files..."
		  PW_StaticText = fname
		  PW_Show = True
		  
		  For i As Integer =0 To gRTOG.Plan.LastRowIndex
		    
		    If gRTOG.Plan(i).Save_Plan Then
		      
		      gRTOG.Plan(i).Write_McGill_Beam
		      gRTOG.Plan(i).Save_Plan = False
		      
		    End
		  Next
		  
		  PW_Show=False
		  
		  If app.which_window_TreatmentPlanning Then
		    
		    Window_Treatment.Save_Beams=False
		    
		  End
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MMCTP_Version_Update_7()
		  //-----------------------------------
		  // Update for new string delim
		  //
		  //-----------------------------------
		  //Dim g,imageset,plans As FolderItem
		  //Dim i,k,p As Integer
		  //Dim name,temp  As String
		  //Dim exith As Boolean
		  '==================Find Strings for folder listbox
		  ' get McGill folder
		  
		  
		  Var g As FolderItem = gPref.mcgillfi
		  
		  
		  If g <> Nil Then
		    
		    For i As Integer = 1 To g.Count
		      
		      Var name As String = g.item(i).name
		      
		      If g.item(i).Visible And g.Item(i).directory =True And g.item(i).Locked = False Then
		        
		        Var exith As Boolean = False // exit condition
		        
		        While InStr(g.item(i).Name,"_")>0 And exith=False
		          
		          Var temp As String = g.item(i).Name
		          g.item(i).Name = Replace(g.item(i).Name,"_",String_Separate)
		          
		          If temp=g.item(i).Name Then
		            
		            exith =True
		            
		          End
		          
		        Wend
		        
		        Var imageset As FolderItem = g.Item(i)
		        
		        If imageset<>Nil Then
		          
		          For k As Integer =1 To imageset.count
		            
		            name=imageset.item(k).name
		            
		            If imageset.item(k).Visible And _
		              imageset.item(k).Locked = False  And _
		              imageset.item(k).Directory = True  Then
		              
		              While InStr(imageset.item(k).Name,"_") > 0
		                
		                imageset.item(k).Name=Replace(imageset.item(k).Name,"_",String_Separate)
		                
		              Wend
		              
		              Var plans as FolderItem = imageset.Item(k)
		              
		              For p As Integer = 1 To plans.count
		                
		                name=plans.item(p).name
		                
		                If name<>"McGill_RT" And _
		                  plans.Item(p).Visible And _
		                  plans.Item(p).Locked = False And _
		                  plans.Item(p).Directory =True  Then
		                  
		                  While InStr(plans.item(p).Name,"_") > 0
		                    
		                    plans.item(p).Name=Replace(plans.item(p).Name,"_",String_Separate)
		                    
		                  Wend
		                  
		                End
		                
		              Next
		              
		            End
		            
		          Next
		          
		        End
		        
		      End
		      
		    Next
		    
		  End
		  
		  MMCTP_WriteConfig
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MMCTP_WriteConfig()
		  //-------------------------------------
		  // Write MMCTP Config file MMCTP-Settings
		  //
		  //-------------------------------------
		  //Dim i as Integer
		  //Dim f as FolderItem
		  //Dim ts as TextOutputStream
		  //Dim temp as String
		  //-------------------------------------
		  
		  
		  Var f As FolderItem = gPref.Settings_fi
		  
		  f=f.Child("MMCTP-Settings.txt")
		  
		  If f.Exists Then
		    
		    f.Delete
		    
		  End
		  
		  Var ts As TextOutputStream = TextOutputStream.Create(f)
		  
		  For j As Integer = 0 To 100 
		    
		    If ts = Nil Then
		      
		      ts =TextOutputStream.Create(f)
		      
		    Else 
		      
		      Exit For
		      
		    End If
		    
		  Next
		  
		  If ts = Nil Then Return
		  
		  
		  Var Temp As String = Format(app.MajorVersion,"#")+"."+Format(app.MinorVersion,"#")
		  
		  spaces(ts,"MMCTP-Version",31,temp)
		  
		  
		  If MC_Auto_Check Then
		    
		    Temp="yes"
		    
		  Else
		    
		    Temp="no"
		    
		  End
		  
		  spaces(ts,"Auto Check",31,temp)
		  spaces(ts,"Auto Timer",31,Str(gTimer_Refresh.Check_Period))
		  spaces(ts,"AutoRUNTIMER",31,Str(gTimer_Run.Check_Period))
		  
		  If MC_Run_Logic Then
		    
		    Temp="yes"
		    
		  Else
		    
		    Temp="no"
		    
		  End
		  
		  spaces(ts,"MC Run Logic",31,temp)
		  
		  
		  For i As Integer = 0 To gShells.Shells.LastRowIndex
		    
		    If gShells.Shells(i).online Then
		      
		      Temp="yes"
		      
		    Else
		      
		      Temp="no"
		      
		    End
		    
		    spaces(ts,"Shell Online "+gShells.Shells(i).title,31,temp)
		    
		  Next
		  
		  ts.Close
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MMCTP_Write_License()
		  //------------------------------------
		  //
		  //
		  //------------------------------------
		  //Dim fi as FolderItem
		  //Dim text as String
		  //Dim ts as TextOutputStream
		  //------------------------------------
		  
		  
		  Var f As FolderItem = gPref.Settings_fi.Child(".llc")
		  //f=f.child(".llc")
		  
		  If f.Exists Then
		    
		    f.Delete
		    
		  End
		  
		  Var ts As TextOutputStream = TextOutputStream.Create(f)
		  
		  ts.WriteLine(f.NativePath)
		  ts.Close
		  Window_Licence.Close
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BackColour As color
	#tag EndProperty

	#tag Property, Flags = &h0
		Error_Msg(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		MMCTP_Open As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Previous_Version As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TodayDate As Date
	#tag EndProperty

	#tag Property, Flags = &h0
		User_Licence As string
	#tag EndProperty

	#tag Property, Flags = &h0
		which_window_3d As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		which_window_adddose As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		which_window_BEAM_Options As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		which_window_BEAM_Phsp As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		which_window_Commission As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		which_window_Contouring As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		which_window_DOSXYZ_EGSphant As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		which_window_DOSYXZ_Options As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		which_window_DVH As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		which_window_EMET_Results As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		which_window_EMET_Run As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		which_window_Open As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		which_window_planinfo As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		which_window_progress As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		which_window_shell As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		which_window_Transfer As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		which_window_TreatmentPlanning As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		which_window_TreatmentPlanning_Plan As boolean = false
	#tag EndProperty


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="BackColour"
			Visible=false
			Group="Behavior"
			InitialValue="&h000000"
			Type="color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MMCTP_Open"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Previous_Version"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="User_Licence"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="which_window_3d"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="which_window_adddose"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="which_window_BEAM_Options"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="which_window_BEAM_Phsp"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="which_window_Commission"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="which_window_Contouring"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="which_window_DOSXYZ_EGSphant"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="which_window_DOSYXZ_Options"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="which_window_DVH"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="which_window_EMET_Results"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="which_window_EMET_Run"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="which_window_Open"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="which_window_planinfo"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="which_window_progress"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="which_window_shell"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="which_window_Transfer"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="which_window_TreatmentPlanning"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="which_window_TreatmentPlanning_Plan"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
