#tag Menu
Begin Menu File
   Begin MenuItem FileMenu
      SpecialMenu = 0
      Value = "&File"
      Index = -2147483648
      Text = "&File"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem File_Open_Patient
         SpecialMenu = 0
         Value = "Open Patient"
         Index = -2147483648
         Text = "Open Patient"
         ShortcutKey = "O"
         Shortcut = "Cmd+O"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem File_Close_Patient
         SpecialMenu = 0
         Value = "Close Patient"
         Index = -2147483648
         Text = "Close Patient"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator2
         SpecialMenu = 0
         Value = "-"
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem File_Import
         SpecialMenu = 0
         Value = "Import"
         Index = -2147483648
         Text = "Import"
         AutoEnabled = True
         AutoEnable = True
         SubMenu = True
         Visible = True
         Begin MenuItem File_ImportPatient
            SpecialMenu = 0
            Value = "RT Patient"
            Index = -2147483648
            Text = "RT Patient"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem UntitledSeparator5
            SpecialMenu = 0
            Value = "-"
            Index = -2147483648
            Text = "-"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_Import_McGillRTDose
            SpecialMenu = 0
            Value = "McGill RT Dose"
            Index = -2147483648
            Text = "McGill RT Dose"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_Import3ddose
            SpecialMenu = 0
            Value = "DOSXYZnrc 3ddose"
            Index = -2147483648
            Text = "DOSXYZnrc 3ddose"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_Import_DICOMStrutures
            SpecialMenu = 0
            Value = "DICOM Structures"
            Index = -2147483648
            Text = "DICOM Structures"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_Import_DICOMRTPlanD
            SpecialMenu = 0
            Value = "DICOM RT Plans + Doses"
            Index = -2147483648
            Text = "DICOM RT Plans + Doses"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_Import_DICOMRTPlan
            SpecialMenu = 0
            Value = "DICOM RT Plan"
            Index = -2147483648
            Text = "DICOM RT Plan"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_Import_DICOMRTDose
            SpecialMenu = 0
            Value = "DICOM RT Dose"
            Index = -2147483648
            Text = "DICOM RT Dose"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_ImportTomoXMLFile
            SpecialMenu = 0
            Value = "Tomo-XML File"
            Index = -2147483648
            Text = "Tomo-XML File"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem UntitledSeparator6
            SpecialMenu = 0
            Value = "-"
            Index = -2147483648
            Text = "-"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_ImportProfile
            SpecialMenu = 0
            Value = "McGill RT Profile"
            Index = -2147483648
            Text = "McGill RT Profile"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_ImportRFAdata
            SpecialMenu = 0
            Value = "RFA Data"
            Index = -2147483648
            Text = "RFA Data"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_Import_EclipseData
            SpecialMenu = 0
            Value = "Eclipse Data"
            Index = -2147483648
            Text = "Eclipse Data"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_ImportXiOProfile
            SpecialMenu = 0
            Value = "XiO Profile"
            Index = -2147483648
            Text = "XiO Profile"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_ImportExceldata
            SpecialMenu = 0
            Value = "Excel data"
            Index = -2147483648
            Text = "Excel data"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_Importcsvprofiles
            SpecialMenu = 0
            Value = ".csv profiles"
            Index = -2147483648
            Text = ".csv profiles"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_ImportMEDPHYSTOmcc
            SpecialMenu = 0
            Value = "MEDPHYSTO mcc"
            Index = -2147483648
            Text = "MEDPHYSTO mcc"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
      End
      Begin MenuItem UntitledSeparator4
         SpecialMenu = 0
         Value = "-"
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileExport
         SpecialMenu = 0
         Value = "Export"
         Index = -2147483648
         Text = "Export"
         AutoEnabled = True
         AutoEnable = True
         SubMenu = True
         Visible = True
         Begin MenuItem ExportExportRTOGPatient
            SpecialMenu = 0
            Value = "Export RTOG Patient"
            Index = -2147483648
            Text = "Export RTOG Patient"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_Export_DosePlane
            SpecialMenu = 0
            Value = "Export Dose Plane"
            Index = -2147483648
            Text = "Export Dose Plane"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem File_Export_DICOM
            SpecialMenu = 0
            Value = "Export DICOM files"
            Index = -2147483648
            Text = "Export DICOM files"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
      End
      Begin MenuItem UntitledSeparator
         SpecialMenu = 0
         Value = "-"
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileConfigurations
         SpecialMenu = 0
         Value = "Configurations"
         Index = -2147483648
         Text = "Configurations"
         AutoEnabled = True
         AutoEnable = True
         SubMenu = True
         Visible = True
         Begin MenuItem FileConfigurationsBeammodels
            SpecialMenu = 0
            Value = "Beam models"
            Index = -2147483648
            Text = "Beam models"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem FileConfigurationsCTmodels
            SpecialMenu = 0
            Value = "CT models"
            Index = -2147483648
            Text = "CT models"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem FileConfigurationsAdminsettings
            SpecialMenu = 0
            Value = "System admin settings"
            Index = -2147483648
            Text = "System admin settings"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem FileConfigurationsRemoteShell
            SpecialMenu = 0
            Value = "Remote shell connections"
            Index = -2147483648
            Text = "Remote shell connections"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem FileConfigurationsBeamnrc
            SpecialMenu = 0
            Value = "BEAMnrc settings"
            Index = -2147483648
            Text = "BEAMnrc settings"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem FileConfigurationsDOSXYZnrcsettings
            SpecialMenu = 0
            Value = "DOSXYZnrc settings"
            Index = -2147483648
            Text = "DOSXYZnrc settings"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem FileConfigurationsVMCsettings
            SpecialMenu = 0
            Value = "VMC settings"
            Index = -2147483648
            Text = "VMC settings"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
      End
      Begin MenuItem UntitledSeparator0
         SpecialMenu = 0
         Value = "-"
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem File_Patientinfo
         SpecialMenu = 0
         Value = "Patient Information"
         Index = -2147483648
         Text = "Patient Information"
         ShortcutKey = "P"
         Shortcut = "Cmd+P"
         MenuModifier = True
         Style = 1
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FileImageInformation
         SpecialMenu = 0
         Value = "Image Information"
         Index = -2147483648
         Text = "Image Information"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem File_DoseInformation
         SpecialMenu = 0
         Value = "Dose Information"
         Index = -2147483648
         Text = "Dose Information"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FilePlanInformation
         SpecialMenu = 0
         Value = "Plan Information"
         Index = -2147483648
         Text = "Plan Information"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator7
         SpecialMenu = 0
         Value = "-"
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem File_Save_Contours
         SpecialMenu = 0
         Value = "Save Contours"
         Index = -2147483648
         Text = "Save Contours"
         ShortcutKey = "C"
         Shortcut = "Cmd+C"
         MenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem File_Save_Plans
         SpecialMenu = 0
         Value = "Save Plans"
         Index = -2147483648
         Text = "Save Plans"
         ShortcutKey = "S"
         Shortcut = "Cmd+S"
         MenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem File_Save_DoseDistributions
         SpecialMenu = 0
         Value = "Save Dose Distributions"
         Index = -2147483648
         Text = "Save Dose Distributions"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileSaveProfiles
         SpecialMenu = 0
         Value = "Save Profiles"
         Index = -2147483648
         Text = "Save Profiles"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator1
         SpecialMenu = 0
         Value = "-"
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem File_Quit
         SpecialMenu = 0
         Value = "Quit"
         Index = -2147483648
         Text = "Quit"
         ShortcutKey = "Q"
         Shortcut = "Cmd+Q"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem EditMenu
      SpecialMenu = 0
      Value = "&Edit"
      Index = -2147483648
      Text = "&Edit"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem EditUndo
         SpecialMenu = 0
         Value = "&Undo"
         Index = -2147483648
         Text = "&Undo"
         ShortcutKey = "Z"
         Shortcut = "Cmd+Z"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator3
         SpecialMenu = 0
         Value = "-"
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditCut
         SpecialMenu = 0
         Value = "Cu&t"
         Index = -2147483648
         Text = "Cu&t"
         ShortcutKey = "X"
         Shortcut = "Cmd+X"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditCopy
         SpecialMenu = 0
         Value = "&Copy"
         Index = -2147483648
         Text = "&Copy"
         ShortcutKey = "C"
         Shortcut = "Cmd+C"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditPaste
         SpecialMenu = 0
         Value = "&Paste"
         Index = -2147483648
         Text = "&Paste"
         ShortcutKey = "V"
         Shortcut = "Cmd+V"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditClear
         SpecialMenu = 0
         Value = "Clear"
         Index = -2147483648
         Text = "Clear"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem TaskMenu
      SpecialMenu = 0
      Value = "Task"
      Index = -2147483648
      Text = "Task"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem Task_Contour
         SpecialMenu = 0
         Value = "Structure Editor"
         Index = -2147483648
         Text = "Structure Editor"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem Task_TreatmentPlanning
         SpecialMenu = 0
         Value = "Treatment Planning"
         Index = -2147483648
         Text = "Treatment Planning"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem TaskMERT
         SpecialMenu = 0
         Value = "Inverse Tools"
         Index = -2147483648
         Text = "Inverse Tools"
         AutoEnabled = True
         AutoEnable = True
         SubMenu = True
         Visible = True
         Begin MenuItem TaskPrescription
            SpecialMenu = 0
            Value = "Prescription"
            Index = -2147483648
            Text = "Prescription"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem MERTSetupFields
            SpecialMenu = 0
            Value = "Setup Fields"
            Index = -2147483648
            Text = "Setup Fields"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem MERTInversePlanning
            SpecialMenu = 0
            Value = "Inverse Planning"
            Index = -2147483648
            Text = "Inverse Planning"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem MERTOutputDB
            SpecialMenu = 0
            Value = "Output DB"
            Index = -2147483648
            Text = "Output DB"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
      End
      Begin MenuItem TaskCommissioningData
         SpecialMenu = 0
         Value = "Commissioning Data"
         Index = -2147483648
         Text = "Commissioning Data"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem Task_DICOMHeader
         SpecialMenu = 0
         Value = "DICOM Header"
         Index = -2147483648
         Text = "DICOM Header"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem TaskGamma
         SpecialMenu = 0
         Value = "Gamma map"
         Index = -2147483648
         Text = "Gamma map"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem Task_AddDose
         SpecialMenu = 0
         Value = "Add Dose"
         Index = -2147483648
         Text = "Add Dose"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem Task_3DViewer
         SpecialMenu = 0
         Value = "3D Viewer"
         Index = -2147483648
         Text = "3D Viewer"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem TaskCreatDoseDistribution
         SpecialMenu = 0
         Value = "Create Dose Distribution"
         Index = -2147483648
         Text = "Create Dose Distribution"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem HelpMenu
      SpecialMenu = 0
      Value = "Help"
      Index = -2147483648
      Text = "Help"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem Help_Manual
         SpecialMenu = 0
         Value = "User Manual"
         Index = -2147483648
         Text = "User Manual"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem Help_Licence
         SpecialMenu = 0
         Value = "MMCTP Licence"
         Index = -2147483648
         Text = "MMCTP Licence"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem Help_About
         SpecialMenu = 0
         Value = "About..."
         Index = -2147483648
         Text = "About..."
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
End
#tag EndMenu
