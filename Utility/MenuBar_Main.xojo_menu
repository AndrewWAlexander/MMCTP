#tag Menu
Begin Menu MenuBar_Main
   Begin MenuItem FileMenu
      SpecialMenu = 0
      Text = "&File"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem File_Open_Patient
         SpecialMenu = 0
         Text = "Open Patient"
         Index = -2147483648
         ShortcutKey = "O"
         Shortcut = "Cmd+O"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator2
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem File_Import
         SpecialMenu = 0
         Text = "Import"
         Index = -2147483648
         AutoEnable = True
         SubMenu = True
         Visible = True
         Begin MenuItem File_ImportPatient
            SpecialMenu = 0
            Text = "RT Patient"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem UntitledSeparator5
            SpecialMenu = 0
            Text = "-"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_Import_McGillRTDose
            SpecialMenu = 0
            Text = "McGill RT Dose"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_Import3ddose
            SpecialMenu = 0
            Text = "DOSXYZnrc 3ddose"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_Import_DICOMStrutures
            SpecialMenu = 0
            Text = "DICOM Structures"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_Import_DICOMRTPlanD
            SpecialMenu = 0
            Text = "DICOM RT Plans + Doses"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_Import_DICOMRTPlan
            SpecialMenu = 0
            Text = "DICOM RT Plan"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_Import_DICOMRTDose
            SpecialMenu = 0
            Text = "DICOM RT Dose"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_ImportTomoXMLFile
            SpecialMenu = 0
            Text = "Tomo-XML File"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem UntitledSeparator6
            SpecialMenu = 0
            Text = "-"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_ImportProfile
            SpecialMenu = 0
            Text = "McGill RT Profile"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_ImportRFAdata
            SpecialMenu = 0
            Text = "RFA Data"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_Import_EclipseData
            SpecialMenu = 0
            Text = "Eclipse Data"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_ImportXiOProfile
            SpecialMenu = 0
            Text = "XiO Profile"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_ImportExceldata
            SpecialMenu = 0
            Text = "Excel data"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_Importcsvprofiles
            SpecialMenu = 0
            Text = ".csv profiles"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
      End
      Begin MenuItem UntitledSeparator4
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileExport
         SpecialMenu = 0
         Text = "Export"
         Index = -2147483648
         AutoEnable = True
         SubMenu = True
         Visible = True
         Begin MenuItem ExportExportRTOGPatient
            SpecialMenu = 0
            Text = "Export RTOG Patient"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_Export_DosePlane
            SpecialMenu = 0
            Text = "Export Dose Plane"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_Export_DICOM
            SpecialMenu = 0
            Text = "Export DICOM files"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
      End
      Begin MenuItem UntitledSeparator
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileConfigurations
         SpecialMenu = 0
         Text = "Configurations"
         Index = -2147483648
         AutoEnable = True
         SubMenu = True
         Visible = True
         Begin MenuItem FileConfigurationsBeammodels
            SpecialMenu = 0
            Text = "Beam models"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem FileConfigurationsCTmodels
            SpecialMenu = 0
            Text = "CT models"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem FileConfigurationsAdminsettings
            SpecialMenu = 0
            Text = "System admin settings"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem FileConfigurationsRemoteShell
            SpecialMenu = 0
            Text = "Remote shell connections"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem FileConfigurationsBeamnrc
            SpecialMenu = 0
            Text = "Beamnrc settings"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem FileConfigurationsDOSXYZnrcsettings
            SpecialMenu = 0
            Text = "DOSXYZnrc settings"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem FileConfigurationsVMCsettings
            SpecialMenu = 0
            Text = "VMC settings"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
      End
      Begin MenuItem UntitledSeparator0
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem File_Patientinfo
         SpecialMenu = 0
         Text = "Patient Information"
         Index = -2147483648
         ShortcutKey = "P"
         Shortcut = "Cmd+P"
         MenuModifier = True
         Style = 1
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FileImageInformation
         SpecialMenu = 0
         Text = "Image Information"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem File_DoseInformation
         SpecialMenu = 0
         Text = "Dose Information"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FilePlanInformation
         SpecialMenu = 0
         Text = "Plan Information"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator7
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem File_Save_Contours
         SpecialMenu = 0
         Text = "Save Contours"
         Index = -2147483648
         ShortcutKey = "C"
         Shortcut = "Cmd+C"
         MenuModifier = True
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem File_Save_Plans
         SpecialMenu = 0
         Text = "Save Plans"
         Index = -2147483648
         ShortcutKey = "S"
         Shortcut = "Cmd+S"
         MenuModifier = True
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem File_Save_DoseDistributions
         SpecialMenu = 0
         Text = "Save Dose Distributions"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileSaveProfiles
         SpecialMenu = 0
         Text = "Save Profiles"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator1
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem File_Quit
         SpecialMenu = 0
         Text = "Quit"
         Index = -2147483648
         ShortcutKey = "Q"
         Shortcut = "Cmd+Q"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledMenu4
         SpecialMenu = 0
         Text = ""
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem UntitledMenu1
      SpecialMenu = 0
      Text = ""
      Index = -2147483648
      AutoEnable = True
      Visible = True
   End
   Begin MenuItem EditMenu
      SpecialMenu = 0
      Text = "&Edit"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem EditUndo
         SpecialMenu = 0
         Text = "&Undo"
         Index = -2147483648
         ShortcutKey = "Z"
         Shortcut = "Cmd+Z"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator3
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditCut
         SpecialMenu = 0
         Text = "Cu&t"
         Index = -2147483648
         ShortcutKey = "X"
         Shortcut = "Cmd+X"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditCopy
         SpecialMenu = 0
         Text = "&Copy"
         Index = -2147483648
         ShortcutKey = "C"
         Shortcut = "Cmd+C"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditPaste
         SpecialMenu = 0
         Text = "&Paste"
         Index = -2147483648
         ShortcutKey = "V"
         Shortcut = "Cmd+V"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditClear
         SpecialMenu = 0
         Text = "Clear"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledMenu3
         SpecialMenu = 0
         Text = ""
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin AppleMenuItem UntitledMenu2
         SpecialMenu = 0
         Text = ""
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem UntitledMenu0
      SpecialMenu = 0
      Text = ""
      Index = -2147483648
      AutoEnable = True
      Visible = True
   End
   Begin MenuItem TaskMenu
      SpecialMenu = 0
      Text = "Task"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem Task_Contour
         SpecialMenu = 0
         Text = "Structure Editor"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem Task_TreatmentPlanning
         SpecialMenu = 0
         Text = "Treatment Planning"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem TaskMERT
         SpecialMenu = 0
         Text = "Inverse Tools"
         Index = -2147483648
         AutoEnable = True
         SubMenu = True
         Visible = True
         Begin MenuItem TaskPrescription
            SpecialMenu = 0
            Text = "Prescription"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem MERTSetupFields
            SpecialMenu = 0
            Text = "Setup Fields"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem MERTInversePlanning
            SpecialMenu = 0
            Text = "Inverse Planning"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem MERTOutputDB
            SpecialMenu = 0
            Text = "Output DB"
            Index = -2147483648
            AutoEnable = True
            Visible = True
         End
      End
      Begin MenuItem TaskCommissioningData
         SpecialMenu = 0
         Text = "Commissioning Data"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem Task_DICOMHeader
         SpecialMenu = 0
         Text = "DICOM Header"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem TaskGamma
         SpecialMenu = 0
         Text = "Gamma map"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem Task_AddDose
         SpecialMenu = 0
         Text = "Add Dose"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem Task_3DViewer
         SpecialMenu = 0
         Text = "3D Viewer"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem TaskCreatDoseDistribution
         SpecialMenu = 0
         Text = "Create Dose Distribution"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem HelpMenu
      SpecialMenu = 0
      Text = "Help"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem Help_Manual
         SpecialMenu = 0
         Text = "User Manual"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem Help_Licence
         SpecialMenu = 0
         Text = "MMCTP Licence"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem Help_About
         SpecialMenu = 0
         Text = "About..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
   End
End
#tag EndMenu
