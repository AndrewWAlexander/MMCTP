#tag Window
Begin Window Window_Configurations_TPS_System
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   657
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "MMCTP Configurations TPS admin"
   Visible         =   False
   Width           =   1133
   Begin TabPanel TabPanel_All
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   572
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   False
      TabDefinition   =   "Dose Calculation \rFolder location preferences\rDose Statistics\rExport Options\rImport Options\rOther"
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   8
      Transparent     =   True
      Underline       =   False
      Value           =   0
      Visible         =   True
      Width           =   1093
      Begin GroupBox GroupBox2
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "General settings to submit new calculation jobs and status checks"
         Enabled         =   True
         Height          =   82
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   47
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   47
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   1041
         Begin CheckBox CheckBox_auto_Check
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Check status of submitted jobs, period (minutes)"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   32
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   63
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   1
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   77
            Transparent     =   True
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   325
         End
         Begin TextField EditField_AutoCheck
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFFFF00
            Bold            =   False
            Border          =   True
            CueText         =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   393
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   77
            Transparent     =   True
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   50
         End
         Begin CheckBox CheckBox_auto_Run
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Allow MMCTP to submit new calculations, period (minutes)"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   32
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   532
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   77
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   355
         End
         Begin TextField EditField_AutoRun
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFFFF00
            Bold            =   False
            Border          =   True
            CueText         =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   899
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   77
            Transparent     =   True
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   50
         End
      End
      Begin Label StaticText58
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   61
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "McGill RT Folder"
         TextAlign       =   0
         TextColor       =   &cFF000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   83
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   143
      End
      Begin TextField TextField_McRT
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   254
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Mask            =   ""
         Password        =   False
         ReadOnly        =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   82
         Transparent     =   True
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   649
      End
      Begin TextField TextField_DICOM
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   254
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Mask            =   ""
         Password        =   False
         ReadOnly        =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   148
         Transparent     =   True
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   649
      End
      Begin Label StaticText59
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   61
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "DICOM Folder"
         TextAlign       =   0
         TextColor       =   &c0000FF00
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   149
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   143
      End
      Begin TextField TextField_CADPLAN
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   254
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Mask            =   ""
         Password        =   False
         ReadOnly        =   True
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   213
         Transparent     =   True
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   649
      End
      Begin Label StaticText60
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   61
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "CADPLAN Folder"
         TextAlign       =   0
         TextColor       =   &c0000FF00
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   214
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   143
      End
      Begin TextField TextField_RTOG
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   254
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Mask            =   ""
         Password        =   False
         ReadOnly        =   True
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   182
         Transparent     =   True
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   649
      End
      Begin Label StaticText61
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   61
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "RTOG Folder"
         TextAlign       =   0
         TextColor       =   &c0000FF00
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   183
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   143
      End
      Begin TextField TextField_BEAMnrc
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   254
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Mask            =   ""
         Password        =   False
         ReadOnly        =   True
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   114
         Transparent     =   True
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   649
      End
      Begin Label StaticText62
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   61
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   9
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "BEAMnrc input Folder"
         TextAlign       =   0
         TextColor       =   &cFF000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   115
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   143
      End
      Begin BevelButton BevelButton_ChangeFolder_Mc
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Change"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   20
         HelpTag         =   ""
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   1036
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   83
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   66
      End
      Begin BevelButton BevelButton_ChangeFolder_BEAM
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Change"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   20
         HelpTag         =   ""
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   1036
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   10
         TabPanelIndex   =   2
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   114
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   66
      End
      Begin BevelButton BevelButton_ChangeFolder_RTO
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Change"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   20
         HelpTag         =   ""
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   1036
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   11
         TabPanelIndex   =   2
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   182
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   66
      End
      Begin BevelButton BevelButton_ChangeFolder_CAD
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Change"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   20
         HelpTag         =   ""
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   1036
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   12
         TabPanelIndex   =   2
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   213
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   66
      End
      Begin BevelButton BevelButton_ChangeFolder_DI
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Change"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   20
         HelpTag         =   ""
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   1036
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   13
         TabPanelIndex   =   2
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   148
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   66
      End
      Begin TextField TextField_VMC
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   254
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Mask            =   ""
         Password        =   False
         ReadOnly        =   True
         Scope           =   0
         TabIndex        =   14
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   285
         Transparent     =   True
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   649
      End
      Begin Label StaticText63
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   61
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   15
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "VMC Folder"
         TextAlign       =   0
         TextColor       =   &c99663300
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   286
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   143
      End
      Begin BevelButton BevelButton_ChangeFolder_VMC
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Change"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   20
         HelpTag         =   ""
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   1036
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   16
         TabPanelIndex   =   2
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   285
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   66
      End
      Begin TextField TextField_Commission
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   254
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Mask            =   ""
         Password        =   False
         ReadOnly        =   True
         Scope           =   0
         TabIndex        =   17
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   245
         Transparent     =   True
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   649
      End
      Begin Label StaticText67
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   61
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   18
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Commissioning Data folder"
         TextAlign       =   0
         TextColor       =   &c00FF0000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   246
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   181
      End
      Begin BevelButton BevelButton_ChangeFolder_Commissioning
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Change"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   20
         HelpTag         =   ""
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   1036
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   19
         TabPanelIndex   =   2
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   245
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   66
      End
      Begin TextField TextField_McGillCutout
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   254
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Mask            =   ""
         Password        =   False
         ReadOnly        =   True
         Scope           =   0
         TabIndex        =   20
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   322
         Transparent     =   True
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   649
      End
      Begin Label StaticText72
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   61
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   21
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "McGill Cutout folder"
         TextAlign       =   0
         TextColor       =   &c99663300
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   323
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   181
      End
      Begin BevelButton BevelButton_ChangeFolder_McGill
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Change"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   20
         HelpTag         =   ""
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   1036
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   22
         TabPanelIndex   =   2
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   322
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   66
      End
      Begin Listbox Listbox_Stat_DoseatVolume
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   1
         ColumnsResizable=   True
         ColumnWidths    =   ""
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   273
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         InitialValue    =   ""
         Italic          =   False
         Left            =   37
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   0
         ShowDropIndicator=   False
         TabIndex        =   0
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   56
         Transparent     =   True
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   176
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin Listbox Listbox_Stat_VolumeatGY
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   1
         ColumnsResizable=   True
         ColumnWidths    =   ""
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   273
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         InitialValue    =   ""
         Italic          =   False
         Left            =   442
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   0
         ShowDropIndicator=   False
         TabIndex        =   1
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   56
         Transparent     =   True
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   176
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin CheckBox CheckBox_Stat_Max
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Max Dose"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   37
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   2
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   341
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   161
      End
      Begin CheckBox CheckBox_Stat_Min
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Min Dose"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   37
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   3
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   370
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   161
      End
      Begin CheckBox CheckBox_Stat_Average
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Average Dose"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   37
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   4
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   402
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   161
      End
      Begin Listbox Listbox_Stat_DoseatVolumeCC
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   1
         ColumnsResizable=   True
         ColumnWidths    =   ""
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   273
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         InitialValue    =   ""
         Italic          =   False
         Left            =   242
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   0
         ShowDropIndicator=   False
         TabIndex        =   5
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   56
         Transparent     =   True
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   176
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin CheckBox CheckBox_Stat_Sparing
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "SPIN50/10"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   21
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   37
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   6
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   437
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   130
      End
      Begin TextField TextField_Stat_SparingDose
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   165
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   436
         Transparent     =   True
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   80
      End
      Begin GroupBox GroupBox24
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Export Dose Plane"
         Enabled         =   True
         Height          =   62
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   46
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   63
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   1041
         Begin CheckBox CheckBox_Export_Text
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Export in text format"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox24"
            Italic          =   False
            Left            =   591
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   91
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   174
         End
         Begin RadioButton RadioButton_Export_Interpolate_No
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Do not Interpolate"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox24"
            Italic          =   False
            Left            =   186
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   91
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   154
         End
         Begin RadioButton RadioButton_Export_Interpolate_Yes
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Interpolate"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox24"
            Italic          =   False
            Left            =   62
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   91
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   100
         End
         Begin CheckBox CheckBox_Export_DICOM
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Export in DICOM format"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox24"
            Italic          =   False
            Left            =   363
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   0
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   91
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   190
         End
      End
      Begin GroupBox GroupBox25
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "DICOM export tag values"
         Enabled         =   True
         Height          =   282
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   46
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   220
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   1041
         Begin Listbox Listbox_DICOM_Tags
            AutoDeactivate  =   True
            AutoHideScrollbars=   True
            Bold            =   False
            Border          =   True
            ColumnCount     =   2
            ColumnsResizable=   False
            ColumnWidths    =   ""
            DataField       =   ""
            DataSource      =   ""
            DefaultRowHeight=   -1
            Enabled         =   True
            EnableDrag      =   False
            EnableDragReorder=   False
            GridLinesHorizontal=   0
            GridLinesVertical=   0
            HasHeading      =   True
            HeadingIndex    =   -1
            Height          =   241
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "GroupBox25"
            InitialValue    =   ""
            Italic          =   False
            Left            =   69
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            RequiresSelection=   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollBarVertical=   True
            SelectionType   =   0
            ShowDropIndicator=   False
            TabIndex        =   0
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   246
            Transparent     =   True
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   995
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
      End
      Begin GroupBox GroupBox26
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "DICOM File Format"
         Enabled         =   True
         Height          =   57
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   793
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   514
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   199
         Begin RadioButton RadioButton_Export_DICOM_Imp
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Implicit"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox26"
            Italic          =   False
            Left            =   899
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   539
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   78
         End
         Begin RadioButton RadioButton_Export_DICOM_Exp
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Explicit"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox26"
            Italic          =   False
            Left            =   809
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   539
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   78
         End
      End
      Begin GroupBox GroupBox27
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "DICOM File Structure"
         Enabled         =   True
         Height          =   57
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   46
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   514
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   321
         Begin RadioButton RadioButton_Export_DICOM_Tomo
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "TomoThereapy"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox27"
            Italic          =   False
            Left            =   146
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   538
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   120
         End
         Begin RadioButton RadioButton_Export_DICOM_Varian
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Varian"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox27"
            Italic          =   False
            Left            =   62
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   538
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   65
         End
         Begin RadioButton RadioButton_Export_DICOM_XiO
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "XiO"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox27"
            Italic          =   False
            Left            =   285
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   539
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   73
         End
      End
      Begin GroupBox GroupBox29
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "DICOM pixel Bytes"
         Enabled         =   True
         Height          =   57
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   444
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   514
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   162
         Begin RadioButton RadioButton_Export_DICOM_32
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "32"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox29"
            Italic          =   False
            Left            =   534
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   539
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   58
         End
         Begin RadioButton RadioButton_Export_DICOM_16
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "16"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox29"
            Italic          =   False
            Left            =   460
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   539
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   49
         End
      End
      Begin GroupBox GroupBox30
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "DICOM Import"
         Enabled         =   True
         Height          =   229
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   46
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   5
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   63
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   1041
         Begin CheckBox CheckBox_DICOMImport
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Invert contour Z position (-1*z)"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox30"
            Italic          =   False
            Left            =   65
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   0
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   94
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   249
         End
         Begin TextField TextField_DICOM_Import_Structure_Slice
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFFFF00
            Bold            =   False
            Border          =   True
            CueText         =   "0.05"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox30"
            Italic          =   False
            Left            =   704
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "0.05"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   92
            Transparent     =   True
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   123
         End
         Begin Label StaticText86
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox30"
            Italic          =   False
            Left            =   417
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   2
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "Strucutre Z slice aligment parameter (cm)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   92
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   275
         End
         Begin CheckBox CheckBox_DICOMImport_Images
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Readin CT Images"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox30"
            Italic          =   False
            Left            =   65
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   3
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   138
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   249
         End
         Begin CheckBox CheckBox_DICOMImport_Struc
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Readin RTSTRUCT"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox30"
            Italic          =   False
            Left            =   65
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   4
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   170
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   249
         End
         Begin CheckBox CheckBox_DICOMImport_RTPLAN
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Readin RTPLAN"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox30"
            Italic          =   False
            Left            =   65
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   5
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   202
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   249
         End
         Begin CheckBox CheckBox_DICOMImport_RTDose
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Readin RTDOSE"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox30"
            Italic          =   False
            Left            =   65
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   6
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   234
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   249
         End
      End
      Begin GroupBox GroupBox31
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "McGill RT endian type"
         Enabled         =   True
         Height          =   68
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   46
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   5
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   334
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   1041
         Begin RadioButton RadioButton_Endian_little
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Little endian"
            Enabled         =   True
            Height          =   20
            HelpTag         =   "Change the binary endian format for McGill RT. It is important to match the endian setting with your McGill RT file endian settings"
            Index           =   -2147483648
            InitialParent   =   "GroupBox31"
            Italic          =   False
            Left            =   65
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   367
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   118
         End
         Begin RadioButton RadioButton_Endian_big
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Big endian"
            Enabled         =   True
            Height          =   20
            HelpTag         =   "Change the binary endian format for McGill RT. It is important to match the endian setting with your McGill RT file endian settings"
            Index           =   -2147483648
            InitialParent   =   "GroupBox31"
            Italic          =   False
            Left            =   195
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   367
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   173
         End
      End
      Begin GroupBox GroupBox32
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "DICOM Conversion filters"
         Enabled         =   True
         Height          =   57
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   46
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   137
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   1041
         Begin CheckBox CheckBox_Export_DICOM_ConvertTomo
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Convert to TomoTherapy format"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox32"
            Italic          =   False
            Left            =   62
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   0
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   164
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   183
         End
         Begin CheckBox CheckBox_Export_DICOM_anonymize
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Anonymize"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox32"
            Italic          =   False
            Left            =   292
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   164
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   90
         End
      End
      Begin GroupBox GroupBox28
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "DICOM Invert Z axis"
         Enabled         =   True
         Height          =   57
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   617
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   514
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   157
         Begin RadioButton RadioButton_Export_DICOM_Invert_N
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "no"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox28"
            Italic          =   False
            Left            =   706
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   540
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   54
         End
         Begin RadioButton RadioButton_Export_DICOM_Invert_Y
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "yes"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox28"
            Italic          =   False
            Left            =   637
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   540
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   57
         End
      End
      Begin CheckBox CheckBox_DVH_Delete
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "delete DVH graphs with the deletion of the associated dose, EGSPhant, or DMX file"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   46
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   0
         TabPanelIndex   =   6
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   71
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   644
      End
      Begin CheckBox CheckBox_McGillRTDoseload
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "McGill RT load options - do not load dose files"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   46
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   1
         TabPanelIndex   =   6
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   125
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   644
      End
      Begin CheckBox CheckBox_McGillRTProfileLoad
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "McGill RT load options - skip profiles during initialization of MMCTP"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   46
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   1
         TabIndex        =   2
         TabPanelIndex   =   6
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   166
         Transparent     =   True
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   644
      End
      Begin GroupBox GroupBox3
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "DVH Calculation Algorithm Options"
         Enabled         =   True
         Height          =   68
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   47
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   169
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   1041
         Begin RadioButton RadioButton_DVH_IsWithinandG
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Use Graphics and Is Within Routine"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   265
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   197
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   273
         End
         Begin RadioButton RadioButton_DVH_UseGraphics
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Use Graphics"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   63
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   197
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   165
         End
         Begin RadioButton RadioButton_DVH_IsWithin
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Use Only Is Within Routine"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   579
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   197
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   221
         End
      End
      Begin GroupBox GroupBox4
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "DVH Calculation Grid Size"
         Enabled         =   True
         Height          =   68
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   47
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   249
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   1034
         Begin RadioButton RadioButton_DVH_Grid_Dose
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Use Dose Distribution grid"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   265
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   277
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   209
         End
         Begin RadioButton RadioButton_DVH_Grid_CT
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Use CT grid"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   63
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   277
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   165
         End
         Begin RadioButton RadioButton_DVH_Grid_User
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Use this grid size (cm)"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   515
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   277
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   152
         End
         Begin TextField EditField_DVH_grid
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFFFF00
            Bold            =   False
            Border          =   True
            CueText         =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   688
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   276
            Transparent     =   True
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   125
         End
      End
   End
   Begin PushButton PushButton1
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Close"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   526
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   607
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  app.MMCTP_WriteConfig
		  if Save_DoseStat Then
		    gDoseStats.write
		  end
		  if app.which_window_TreatmentPlanning=False and app.which_window_Contouring=false Then
		    Window_OpenPatient.Show
		  end
		  
		  gPref.Write_Pref
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Dim i as Integer
		  
		  DoNothing=True
		  CheckBox_auto_Check.Value=MC_Auto_Check
		  CheckBox_auto_Run.Value=MC_Run_Logic
		  EditField_AutoCheck.Text=str(gTimer_Refresh.Check_Period/(60*1000))
		  EditField_AutoRun.Text=str(gTimer_Run.Check_Period/(60*1000))
		  Update_Preferences
		  CheckBox_McGillRTDoseload.Value=gPref.McGillRT_Dose_Skip
		  CheckBox_McGillRTProfileLoad.Value=gPref.McGillRT_Profile_Skip
		  
		  DoNothing=False
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  TextField_McRT.Text=gPref.mcgillfi.ShellPath
		  TextField_DICOM.Text=gPref.DICOMfi.ShellPath
		  TextField_CADPLAN.Text=gPref.cadplanfi.ShellPath
		  TextField_RTOG.Text=gPref.rtogfi.ShellPath
		  TextField_BEAMnrc.Text=gPref.BEAMnrc_fi.ShellPath
		  TextField_VMC.Text=gPref.VMC_fi.ShellPath
		  TextField_Commission.Text=gPref.Commission_fi.ShellPath
		  TextField_McGillCutout.Text=gPref.McGillCUtout.ShellPath
		  
		  if gPref.endian Then
		    RadioButton_Endian_little.Value=True
		  else
		    RadioButton_Endian_big.Value=True
		  end
		  
		  if gPref.EXPORT_DICOM_Plane Then
		    CheckBox_Export_DICOM.Value=True
		  else
		    CheckBox_Export_DICOM.Value=False
		  end
		  
		  if gPref.EXPORT_text_Plane Then
		    CheckBox_Export_Text.Value=True
		  else
		    CheckBox_Export_Text.Value=False
		  end
		  
		  if gPref.Dose_Interpolate=0 Then
		    RadioButton_Export_Interpolate_No.Value=True
		  elseif gPref.Dose_Interpolate=1 Then
		    RadioButton_Export_Interpolate_Yes.Value=True
		  else
		    RadioButton_Export_Interpolate_yes.Value=False
		    RadioButton_Export_Interpolate_No.Value=False
		  end
		  
		  CheckBox_DICOMImport.Value=gPref.DICOM_IN_Inverse
		  
		  if TargetWindows Then
		    RadioButton_DVH_UseGraphics.Enabled=False
		  end
		  
		  if gPref.dvh_calc=0 and not TargetWindows Then
		    RadioButton_DVH_UseGraphics.Value=True
		  elseif gPref.dvh_calc=1 Then
		    RadioButton_DVH_IsWithin.Value=True
		  elseif gPref.dvh_calc=2 Then
		    RadioButton_DVH_IsWithinandG.Value=True
		    
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Dose_Stat_Open()
		  //-----------------------------
		  //
		  //
		  //-----------------------------
		  Dim i as Integer
		  //-----------------------------
		  
		  Listbox_Stat_DoseatVolume.DeleteAllRows
		  Listbox_Stat_DoseatVolume.Heading(0)="Dose at Volume (%)"
		  
		  Listbox_Stat_DoseatVolumeCC.Heading(0)="Dose at Volume (cc)"
		  Listbox_Stat_DoseatVolumeCC.DeleteAllRows
		  
		  
		  Listbox_Stat_VolumeatGY.Heading(0)="Volume at Dose (Gy)"
		  Listbox_Stat_VolumeatGY.DeleteAllRows
		  
		  if gDoseStats.MaxDose Then
		    CheckBox_Stat_Max.Value=True
		  else
		    CheckBox_Stat_Max.Value=False
		  end
		  
		  if gDoseStats.mindose Then
		    CheckBox_Stat_Min.Value=True
		  else
		    CheckBox_Stat_Min.Value=False
		  end
		  
		  if gDoseStats.Average_Dose Then
		    CheckBox_Stat_Average.Value=True
		  else
		    CheckBox_Stat_Average.Value=False
		  end
		  
		  if gDoseStats.spin Then
		    CheckBox_Stat_Sparing.Value=True
		  else
		    CheckBox_Stat_Sparing.Value=True
		  end
		  TextField_Stat_SparingDose.Text=Format(gDoseStats.spin_dose,"-#.#####e")
		  
		  
		  for i=0 to UBound(gDoseStats.DoseVolume)
		    Listbox_Stat_DoseatVolume.AddRow Format(gDoseStats.DoseVolume(i),"-#.###")
		    Listbox_Stat_DoseatVolume.CellType(i,0)=3
		  next
		  
		  
		  for i=0 to UBound(gDoseStats.DoseatVolumeCC)
		    Listbox_Stat_DoseatVolumeCC.AddRow Format(gDoseStats.DoseatVolumeCC(i),"-#.###")
		    Listbox_Stat_DoseatVolumeCC.CellType(i,0)=3
		  next
		  
		  for i=0 to UBound(gDoseStats.VolumeDose)
		    Listbox_Stat_VolumeatGY.AddRow Format(gDoseStats.VolumeDose(i),"-#.###")
		    Listbox_Stat_VolumeatGY.CellType(i,0)=3
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Export()
		  if gPref.DICOM_Convert_Tomo Then
		    CheckBox_Export_DICOM_ConvertTomo.Value=True
		  else
		    CheckBox_Export_DICOM_ConvertTomo.Value=False
		  end
		  
		  
		  if gPref.EXPORT_DICOM_Plane Then
		    CheckBox_Export_DICOM.Value=True
		  else
		    CheckBox_Export_DICOM.Value=False
		  end
		  
		  if gPref.EXPORT_text_Plane Then
		    CheckBox_Export_Text.Value=True
		  else
		    CheckBox_Export_Text.Value=False
		  end
		  
		  if gPref.Dose_Interpolate=0 Then
		    RadioButton_Export_Interpolate_No.Value=True
		  elseif gPref.Dose_Interpolate=1 Then
		    RadioButton_Export_Interpolate_Yes.Value=True
		  else
		    RadioButton_Export_Interpolate_yes.Value=False
		    RadioButton_Export_Interpolate_No.Value=False
		  end
		  
		  Listbox_DICOM_Tags.DeleteAllRows
		  Listbox_DICOM_Tags.Heading(0)="Tag"
		  Listbox_DICOM_Tags.Heading(1)="Value"
		  Listbox_DICOM_Tags.ColumnType(1)=3
		  
		  Listbox_DICOM_Tags.AddRow("Manufacturer",gPref.Manufacturer) 
		  Listbox_DICOM_Tags.AddRow("Manufacturer Name",gPref.ManufacturerName)
		  Listbox_DICOM_Tags.AddRow("Station Name",gPref.StationName)
		  Listbox_DICOM_Tags.AddRow("Software Version",gPref.SoftwareVersion)
		  
		  
		  if gPref.DICOM_FileStructure=0 Then
		    RadioButton_Export_DICOM_Varian.Value=True
		  elseif gPref.DICOM_FileStructure=1 Then
		    RadioButton_Export_DICOM_Tomo.Value=True
		  elseif gPref.DICOM_FileStructure=2 Then
		    RadioButton_Export_DICOM_XiO.Value=True
		  end
		  
		  if gPref.DICOM_Format=0 Then
		    RadioButton_Export_DICOM_Imp.Value=True
		  else
		    RadioButton_Export_DICOM_Exp.Value=True
		  end
		  
		  if gPref.DICOM_Z_Invert Then
		    RadioButton_Export_DICOM_Invert_Y.Value=True
		  else
		    RadioButton_Export_DICOM_Invert_N.Value=True
		  end
		  
		  if gPref.DICOM_IN_CT Then
		    CheckBox_DICOMImport_Images.Value=True
		  else
		    CheckBox_DICOMImport_Images.Value=False
		  end
		  
		  
		  if gPref.DICOM_IN_STRUCT Then
		    CheckBox_DICOMImport_Struc.Value=True
		  else
		    CheckBox_DICOMImport_Struc.Value=False
		  end
		  
		  if gPref.DICOM_IN_RTPLAN Then
		    CheckBox_DICOMImport_RTPLAN.Value=True
		  else
		    CheckBox_DICOMImport_RTPLAN.Value=False
		  end
		  
		  if gPref.DICOM_IN_RTDOSE Then
		    CheckBox_DICOMImport_RTDose.Value=True
		  else
		    CheckBox_DICOMImport_RTDose.Value=False
		  end
		  
		  if gPref.DICOM_Bytes=16 Then
		    RadioButton_Export_DICOM_16.Value=True
		  elseif gPref.DICOM_Bytes=32 Then
		    RadioButton_Export_DICOM_32.Value=True
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Preferences()
		  TextField_McRT.Text=gPref.mcgillfi.ShellPath
		  TextField_DICOM.Text=gPref.DICOMfi.ShellPath
		  TextField_CADPLAN.Text=gPref.cadplanfi.ShellPath
		  TextField_RTOG.Text=gPref.rtogfi.ShellPath
		  TextField_BEAMnrc.Text=gPref.BEAMnrc_fi.ShellPath
		  TextField_VMC.Text=gPref.VMC_fi.ShellPath
		  TextField_Commission.Text=gPref.Commission_fi.ShellPath
		  TextField_McGillCutout.Text=gPref.McGillCUtout.ShellPath
		  
		  if gPref.endian Then
		    RadioButton_Endian_little.Value=True
		  else
		    RadioButton_Endian_big.Value=True
		  end
		  
		  CheckBox_DICOMImport.Value=gPref.DICOM_IN_Inverse
		  TextField_DICOM_Import_Structure_Slice.Text=Format(gPref.DICOM_In_Structure_Slice_Assigment,"-#.###e")
		  
		  
		  if TargetWindows Then
		    RadioButton_DVH_UseGraphics.Enabled=False
		  end
		  
		  if gPref.dvh_calc=0 and not TargetWindows Then
		    RadioButton_DVH_UseGraphics.Value=True
		  elseif gPref.dvh_calc=1 Then
		    RadioButton_DVH_IsWithin.Value=True
		  elseif gPref.dvh_calc=2 Then
		    RadioButton_DVH_IsWithinandG.Value=True
		  end
		  
		  if gPref.DVH_Calc_Grid=0  Then
		    RadioButton_DVH_Grid_CT.Value=True
		  elseif gPref.DVH_Calc_Grid=1 Then
		    RadioButton_DVH_Grid_Dose.Value=True
		  elseif gPref.DVH_Calc_Grid=2 Then
		    RadioButton_DVH_Grid_User.Value=True
		  end
		  
		  EditField_DVH_grid.Text=Format(gPref.DVH_Calc_Grid_Size,"#.#####")
		  
		  CheckBox_DVH_Delete.Value=gPref.DVH_clean
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		DoNothing As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Save_DoseStat As Boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events TabPanel_All
	#tag Event
		Sub Change()
		  if me.Value=1 Then
		  Elseif me.Value=2 Then
		    Dose_Stat_Open
		  ElseIf me.Value=3 or me.Value=4 Then
		    Update_Export
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_auto_Check
	#tag Event
		Sub Action()
		  if DoNothing=False Then
		    MC_Auto_Check=me.Value
		    app.MMCTP_WriteConfig
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_AutoCheck
	#tag Event
		Sub TextChange()
		  Dim i as Int64
		  
		  if DoNothing=False Then
		    i=Round(val(me.Text)*60*1000)
		    if i<> gTimer_Refresh.Check_Period Then
		      gTimer_Refresh.Check_Period=i
		      gTimer_Refresh.Period=gTimer_Refresh.Check_Period
		      gTimer_Download.Check_Period=i
		      gTimer_Download.Period=gTimer_Download.Check_Period
		      if UBound(MMCTP_Shell_Refresh.All)=-1 Then
		        gTimer_Refresh.Reset
		      end
		      if UBound(MMCTP_Download.All)=-1 Then
		        gTimer_Download.Reset
		      end
		    end
		    app.MMCTP_WriteConfig
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_auto_Run
	#tag Event
		Sub Action()
		  if DoNothing=False Then
		    MC_Run_Logic=me.Value
		    app.MMCTP_WriteConfig
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_AutoRun
	#tag Event
		Sub TextChange()
		  Dim i as Int64
		  
		  if DoNothing=False Then
		    i=Round(val(me.Text)*60*1000)
		    if i<> gTimer_Run.Check_Period Then
		      gTimer_Run.Check_Period=i
		      gTimer_Run.Period=gTimer_Run.Check_Period
		      if UBound(MMCTP_Shell_Refresh.All)=-1 Then
		        gTimer_Run.Reset
		      end
		    end
		    app.MMCTP_WriteConfig
		    
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_ChangeFolder_Mc
	#tag Event
		Sub Action()
		  dim fi as FolderItem
		  dim opfi as new SelectFolderDialog
		  
		  opfi.InitialDirectory=gPref.McGillfi
		  opfi.Title="Select McGill Folder"
		  fi=opfi.ShowModal
		  
		  
		  if fi<>nil then //fi.Exists then
		    gPref.McGillfi=fi
		    gpref.Write_Pref
		    Update_Preferences
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_ChangeFolder_BEAM
	#tag Event
		Sub Action()
		  dim fi as FolderItem
		  dim opfi as new SelectFolderDialog
		  
		  opfi.InitialDirectory=gPref.BEAMnrc_fi
		  opfi.Title="Select BEAMnrc Folder"
		  fi=opfi.ShowModal
		  
		  
		  if fi<>nil then //fi.Exists then
		    gPref.BEAMnrc_fi=fi
		    gpref.Write_Pref
		    Update_Preferences
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_ChangeFolder_RTO
	#tag Event
		Sub Action()
		  dim fi as FolderItem
		  dim opfi as new SelectFolderDialog
		  
		  opfi.InitialDirectory=gPref.rtogfi
		  opfi.Title="Select RTOG Folder"
		  fi=opfi.ShowModal
		  
		  
		  if fi<>nil then //fi.Exists then
		    gPref.rtogfi=fi
		    gpref.Write_Pref
		    Update_Preferences
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_ChangeFolder_CAD
	#tag Event
		Sub Action()
		  dim fi as FolderItem
		  dim opfi as new SelectFolderDialog
		  
		  opfi.InitialDirectory=gPref.cadplanfi
		  opfi.Title="Select CADPLAN Folder"
		  fi=opfi.ShowModal
		  
		  
		  if fi<>nil then //fi.Exists then
		    gPref.cadplanfi=fi
		    gpref.Write_Pref
		    Update_Preferences
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_ChangeFolder_DI
	#tag Event
		Sub Action()
		  dim fi as FolderItem
		  dim opfi as new SelectFolderDialog
		  
		  opfi.InitialDirectory=gPref.DICOMfi
		  opfi.Title="Select DICOM Folder"
		  fi=opfi.ShowModal
		  
		  
		  if fi<>nil then //fi.Exists then
		    gPref.DICOMfi=fi
		    gpref.Write_Pref
		    Update_Preferences
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_ChangeFolder_VMC
	#tag Event
		Sub Action()
		  dim fi as FolderItem
		  dim opfi as new SelectFolderDialog
		  
		  opfi.InitialDirectory=gPref.VMC_fi
		  opfi.Title="Select VMC Folder"
		  fi=opfi.ShowModal
		  
		  
		  if fi<>nil then //fi.Exists then
		    gPref.VMC_fi=fi
		    gpref.Write_Pref
		    Update_Preferences
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_ChangeFolder_Commissioning
	#tag Event
		Sub Action()
		  dim fi as FolderItem
		  dim opfi as new SelectFolderDialog
		  
		  opfi.InitialDirectory=gPref.Commission_fi
		  opfi.Title="Select Commission Folder"
		  fi=opfi.ShowModal
		  
		  
		  if fi<>nil then //fi.Exists then
		    gProfiles.Write_Profiles(gPref.Commission_fi)
		    gOutput.Write_Table
		    
		    gPref.Commission_fi=fi
		    gpref.Write_Pref
		    Update_Preferences
		    
		    gProfiles.Read_All_Profiles(fi)
		    gOutput.Read_All_Tables
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_ChangeFolder_McGill
	#tag Event
		Sub Action()
		  dim fi as FolderItem
		  dim opfi as new SelectFolderDialog
		  
		  opfi.InitialDirectory=gPref.McGillCUtout
		  opfi.Title="Select McGill Cutout Folder"
		  fi=opfi.ShowModal
		  
		  
		  if fi<>nil then //fi.Exists then
		    gPref.McGillCUtout=fi
		    gpref.Write_Pref
		    Update_Preferences
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_Stat_DoseatVolume
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  dim MI as MenuItem
		  
		  MI = New MenuItem
		  MI.Text = "Add Dose at Volume Point"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "Remove"
		  base.Append MI
		  
		  
		  Return True
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  
		  
		  Select Case hitItem.Text
		  Case "Add Dose at Volume Point"
		    gDoseStats.DoseVolume.append 0
		    Save_DoseStat=True
		  Case "Remove"
		    if me.ListIndex>-1 and me.ListIndex<=UBound(gDoseStats.DoseVolume) Then
		      gDoseStats.DoseVolume.remove me.ListIndex
		    end
		    
		    Save_DoseStat=True
		  End Select
		  
		  Dose_Stat_Open
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  gDoseStats.DoseVolume(row)=val(me.Cell(row,column))
		  Save_DoseStat=True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_Stat_VolumeatGY
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  dim MI as MenuItem
		  
		  MI = New MenuItem
		  MI.Text = "Add Volume at Dose Point"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "Remove"
		  base.Append MI
		  
		  
		  Return True
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Select Case hitItem.Text
		  Case "Add Volume at Dose Point"
		    gDoseStats.VolumeDose.append 0
		    Save_DoseStat=True
		  Case "Remove"
		    if me.ListIndex>-1 and me.ListIndex<=UBound(gDoseStats.VolumeDose) Then
		      gDoseStats.VolumeDose.remove me.ListIndex
		    end
		    
		    Save_DoseStat=True
		  End Select
		  
		  Dose_Stat_Open
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  gDoseStats.VolumeDose(row)=val(me.Cell(row,column))
		  Save_DoseStat=True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Stat_Max
	#tag Event
		Sub Action()
		  gDoseStats.MaxDose=me.Value
		  Save_DoseStat=True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Stat_Min
	#tag Event
		Sub Action()
		  gDoseStats.MinDose=me.Value
		  Save_DoseStat=True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Stat_Average
	#tag Event
		Sub Action()
		  gDoseStats.Average_Dose=me.Value
		  Save_DoseStat=True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_Stat_DoseatVolumeCC
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  dim MI as MenuItem
		  
		  MI = New MenuItem
		  MI.Text = "Add Dose at Volume Point"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "Remove"
		  base.Append MI
		  
		  
		  Return True
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Select Case hitItem.Text
		  Case "Add Dose at Volume Point"
		    gDoseStats.DoseatVolumecc.append 0
		    Save_DoseStat=True
		  Case "Remove"
		    if me.ListIndex>-1 and me.ListIndex<=UBound(gDoseStats.DoseatVolumecc) Then
		      gDoseStats.DoseatVolumecc.remove me.ListIndex
		    end
		    
		    Save_DoseStat=True
		  End Select
		  
		  Dose_Stat_Open
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  gDoseStats.DoseatVolumecc(row)=val(me.Cell(row,column))
		  Save_DoseStat=True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Stat_Sparing
	#tag Event
		Sub Action()
		  gDoseStats.SPIN=me.Value
		  Save_DoseStat=True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_Stat_SparingDose
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  gDoseStats.SPIN_Dose=val(me.Text)
		  Save_DoseStat=True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Export_Text
	#tag Event
		Sub Action()
		  gPref.EXPORT_text_Plane=me.Value
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Export_Interpolate_No
	#tag Event
		Sub Action()
		  if me.Value Then
		    gPref.Dose_Interpolate=0
		  else
		    gPref.Dose_Interpolate=1
		  end
		  
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Export_Interpolate_Yes
	#tag Event
		Sub Action()
		  if me.Value Then
		    gPref.Dose_Interpolate=1
		  else
		    gPref.Dose_Interpolate=0
		  end
		  
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Export_DICOM
	#tag Event
		Sub Action()
		  gPref.EXPORT_DICOM_Plane=me.Value
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_DICOM_Tags
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  if row=0 Then
		    gPref.Manufacturer=me.Cell(row,column)
		    
		  elseif row=1 Then
		    gPref.ManufacturerName=me.Cell(row,column)
		    
		  elseif row=3 Then
		    gPref.SoftwareVersion=me.Cell(row,column)
		  end
		  
		  gPref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Export_DICOM_Imp
	#tag Event
		Sub Action()
		  if me.Value Then
		    gPref.DICOM_Format=0
		  else
		    gPref.DICOM_Format=1
		  end
		  
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Export_DICOM_Exp
	#tag Event
		Sub Action()
		  if me.Value Then
		    gPref.DICOM_Format=1
		  else
		    gPref.DICOM_Format=0
		  end
		  
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Export_DICOM_Tomo
	#tag Event
		Sub Action()
		  if me.Value Then
		    gPref.DICOM_FileStructure=1
		  end
		  
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Export_DICOM_Varian
	#tag Event
		Sub Action()
		  if me.Value Then
		    gPref.DICOM_FileStructure=0
		  end
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Export_DICOM_XiO
	#tag Event
		Sub Action()
		  if me.Value Then
		    gPref.DICOM_FileStructure=2
		  end
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Export_DICOM_32
	#tag Event
		Sub Action()
		  if me.Value Then
		    gPref.DICOM_Bytes=32
		  end
		  
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Export_DICOM_16
	#tag Event
		Sub Action()
		  if me.Value Then
		    gPref.DICOM_Bytes=16
		  end
		  
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_DICOMImport
	#tag Event
		Sub Action()
		  gPref.DICOM_IN_Inverse=me.Value
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_DICOM_Import_Structure_Slice
	#tag Event
		Sub TextChange()
		  gPref.DICOM_In_Structure_Slice_Assigment=val(me.Text)
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_DICOMImport_Images
	#tag Event
		Sub Action()
		  gPref.DICOM_IN_CT=me.Value
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_DICOMImport_Struc
	#tag Event
		Sub Action()
		  gPref.DICOM_IN_STRUCT=me.Value
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_DICOMImport_RTPLAN
	#tag Event
		Sub Action()
		  gPref.DICOM_IN_RTPLAN=me.Value
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_DICOMImport_RTDose
	#tag Event
		Sub Action()
		  gPref.DICOM_IN_RTDOSE=me.Value
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Endian_little
	#tag Event
		Sub Action()
		  gPref.endian=me.Value
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Endian_big
	#tag Event
		Sub Action()
		  if me.Value Then
		    gPref.endian=False
		  else
		    gPref.endian=True
		  end
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Export_DICOM_ConvertTomo
	#tag Event
		Sub Action()
		  gPref.DICOM_Convert_Tomo=me.Value
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Export_DICOM_anonymize
	#tag Event
		Sub Action()
		  gPref.DICOM_Convert_Anonymize=me.Value
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Export_DICOM_Invert_N
	#tag Event
		Sub Action()
		  if me.Value Then
		    gPref.DICOM_Z_Invert=False
		  else
		    gPref.DICOM_Z_Invert=True
		  end
		  
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Export_DICOM_Invert_Y
	#tag Event
		Sub Action()
		  if me.Value Then
		    gPref.DICOM_Z_Invert=True
		  else
		    gPref.DICOM_Z_Invert=False
		  end
		  
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_DVH_Delete
	#tag Event
		Sub Action()
		  gPref.DVH_clean=me.Value
		  gPref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_McGillRTDoseload
	#tag Event
		Sub Action()
		  gPref.McGillRT_Dose_Skip=me.Value
		  gPref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_McGillRTProfileLoad
	#tag Event
		Sub Action()
		  gPref.McGillRT_Profile_Skip=me.Value
		  gPref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_DVH_IsWithinandG
	#tag Event
		Sub Action()
		  if me.Value Then
		    gPref.DVH_Calc=2
		  end
		  
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_DVH_UseGraphics
	#tag Event
		Sub Action()
		  if me.Value Then
		    gPref.DVH_Calc=0
		  end
		  
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_DVH_IsWithin
	#tag Event
		Sub Action()
		  if me.Value Then
		    gPref.DVH_Calc=1
		  end
		  
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_DVH_Grid_Dose
	#tag Event
		Sub Action()
		  if me.Value Then
		    gPref.DVH_Calc_Grid=1
		    gDVH.HR_struc=True
		  end
		  
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_DVH_Grid_CT
	#tag Event
		Sub Action()
		  if me.Value Then
		    gPref.DVH_Calc_Grid=0
		    gDVH.HR_struc=True
		    
		  end
		  
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_DVH_Grid_User
	#tag Event
		Sub Action()
		  if me.Value Then
		    gPref.DVH_Calc_Grid=2
		    gDVH.HR_struc=True
		    
		  end
		  
		  gpref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_DVH_grid
	#tag Event
		Sub TextChange()
		  gPref.DVH_Calc_Grid_Size=val(me.Text)
		  gDVH.HR_struc=True
		  gPref.Write_Pref
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton1
	#tag Event
		Sub Action()
		  
		  Window_Configurations_TPS_System.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Appearance"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="DoNothing"
		Group="Behavior"
		InitialValue="0"
		Type="boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Save_DoseStat"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
