#tag Window
Begin Window Window_Configurations_DOSXYZnrcSettings
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   575
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "MMCTP Configurations DOSXYZnrc Settings"
   Visible         =   False
   Width           =   891
   Begin GroupBox GroupBox4
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "MMCTP DOSXYZnrc Settings"
      Enabled         =   True
      Height          =   315
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
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
      Top             =   244
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   370
      Begin CheckBox CheckBox_MC_DOS_remove_w
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Remove w files on remote shell"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox4"
         Italic          =   False
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   422
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   265
      End
      Begin CheckBox CheckBox_MC_DOS_ImportD
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Import each 3ddose file to McGill RT"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox4"
         Italic          =   False
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   12
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   323
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   288
      End
      Begin CheckBox CheckBox_MC_DOS_MUBS
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Use MU Backscatter correction"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox4"
         Italic          =   False
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   13
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   355
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   226
      End
      Begin CheckBox CheckBox_MC_DOS_Zero
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Zero External Dose"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox4"
         Italic          =   False
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   14
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   454
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   147
      End
      Begin CheckBox CheckBox_MC_DOS_ImportPlanD
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Import and sum plan 3ddoses to McGill RT"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox4"
         Italic          =   False
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   18
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   291
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   324
      End
      Begin CheckBox CheckBox_MC_DOS_LoadEGSPhant
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Load EGSPhant voxels when patient opens"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   "Will readin whole egsphant file for visualization"
         Index           =   -2147483648
         InitialParent   =   "GroupBox4"
         Italic          =   False
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   22
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   259
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   299
      End
      Begin CheckBox CheckBox_MC_DOS_autojob
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Autojobs max time (sec)"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox4"
         Italic          =   False
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   25
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   390
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   183
      End
      Begin TextField EditField_DOSxyz_autojobtime
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
         Left            =   220
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
         TabIndex        =   26
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "2"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   390
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   77
      End
      Begin CheckBox CheckBox_MC_DOS_source20
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "isource 20 format as shared lib"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox4"
         Italic          =   False
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   27
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   486
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   265
      End
   End
   Begin GroupBox GroupBox1
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Submit jobs and check status"
      Enabled         =   True
      Height          =   51
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   12
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   370
      Begin CheckBox CheckBox_DOSXYZ_Auto
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Auto run ?"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   35
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   129
      End
      Begin CheckBox CheckBox_DOSXYZ_Refresh
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Auto refresh?"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   202
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   35
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   129
      End
   End
   Begin GroupBox GroupBox6
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "EGSPhant files"
      Enabled         =   True
      Height          =   320
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   413
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   239
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   467
      Begin Listbox Listbox_MC_DOS_Egsphant
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   2
         ColumnsResizable=   True
         ColumnWidths    =   ""
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         DropIndicatorVisible=   False
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   267
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "GroupBox6"
         InitialValue    =   ""
         Italic          =   False
         Left            =   429
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   True
         ScrollBarVertical=   True
         SelectionType   =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   273
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   440
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
   End
   Begin GroupBox GroupBox2
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Link simulations with other codes"
      Enabled         =   True
      Height          =   48
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   74
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   370
      Begin RadioButton RadioButton_MC_Dos_None
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Link None"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   270
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   96
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   86
      End
      Begin RadioButton RadioButton_MC_Dos_Cutout
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Link Cutout"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   143
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   96
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   111
      End
      Begin RadioButton RadioButton_MC_Dos_Beam
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Link BEAM"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   96
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   91
      End
   End
   Begin GroupBox GroupBox3
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Simulation settings"
      Enabled         =   True
      Height          =   110
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   128
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   370
      Begin TextField EditField_DOSxyz_Numtest_hist
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
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   320
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
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "4"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   148
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   58
      End
      Begin Label StaticText51
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   213
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Number test hist"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   148
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   95
      End
      Begin Label StaticText84
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   213
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Minimum # of jobs"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   177
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   95
      End
      Begin TextField EditField_DOSxyz_MinNumJobs
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
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   320
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
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "4"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   176
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   58
      End
      Begin TextField EditField_DOSxyz_defaultIDAT
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
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   320
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
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "1"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   207
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   58
      End
      Begin Label StaticText731
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   213
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Default Output #"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   209
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   95
      End
      Begin TextField EditField_DOSxyz_defaultSource
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
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   171
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
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "2"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   207
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   26
      End
      Begin Label StaticText73
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   29
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Default Source Num"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   209
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   130
      End
      Begin Label StaticText30
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   29
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Default # of jobs"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   177
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   123
      End
      Begin TextField EditField_DOSxyz_NumJobs
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
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   171
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
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "4"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   177
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   26
      End
      Begin TextField EditField_DOSXYZnrc_Error
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
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   171
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
         TabIndex        =   10
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "1"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   148
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   26
      End
      Begin Label StaticText28
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   29
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   11
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Average Uncer (%):"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   150
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   123
      End
   End
   Begin GroupBox GroupBox5
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "DOSXYZnrc Materials"
      Enabled         =   True
      Height          =   217
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   413
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   12
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   467
      Begin Listbox Listbox_MC_DOSMat
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
         DropIndicatorVisible=   False
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   160
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "GroupBox5"
         InitialValue    =   ""
         Italic          =   False
         Left            =   429
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   51
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   440
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  if app.which_window_TreatmentPlanning=False and app.which_window_Contouring=false Then
		    Window_OpenPatient.Show
		  end
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Dim i as Integer
		  
		  
		  DoNothing=True
		  
		  
		  
		  Listbox_MC_DOSMat.HeaderAt(0)="Material"
		  Listbox_MC_DOSMat.HeaderAt(1)="Density"
		  
		  if gDOSXYZ<> nil Then
		    Listbox_MC_DOS_Egsphant.DeleteAllRows
		    Listbox_MC_DOS_Egsphant.HeaderAt(0)="Properties"
		    Listbox_MC_DOS_Egsphant.AddRow "EGSPhant Name"
		    Listbox_MC_DOS_Egsphant.AddRow "CT Ramp Index"
		    Listbox_MC_DOS_Egsphant.AddRow "Outside Material"
		    Listbox_MC_DOS_Egsphant.AddRow "Clean Contour Label"
		    Listbox_MC_DOS_Egsphant.AddRow "Resolution X (cm)"
		    Listbox_MC_DOS_Egsphant.AddRow "Resolution Y (cm)"
		    Listbox_MC_DOS_Egsphant.AddRow "Resolution Z (cm)"
		    Listbox_MC_DOS_Egsphant.AddRow "Auto Make"
		    
		    EditField_DOSXYZnrc_Error.value = Format(gDOSXYZ.dosxyz_desired_average_error,"#.##")
		    EditField_DOSxyz_NumJobs.value = Format(gDOSXYZ.dosxyz_desired_number_of_Jobs,"#")
		    EditField_DOSxyz_defaultSource.value = Format(gDOSXYZ.dosxyz_defaultsource,"#")
		    
		    CheckBox_MC_DOS_autojob.Value=gDOSXYZ.dosxyz_autojobtimer
		    EditField_DOSxyz_autojobtime.value = Format(gDOSXYZ.dosxyz_autojobtimer_sec,"#")
		    
		    CheckBox_DOSXYZ_Auto.Value=gDOSXYZ.dosxyz_auto_run
		    CheckBox_DOSXYZ_Refresh.Value=gDOSXYZ.dosxyz_auto_refresh
		    CheckBox_MC_DOS_remove_w.Value=gDOSXYZ.dosxyz_remove_w_files
		    
		    Listbox_MC_DOSMat.DeleteAllRows
		    CheckBox_MC_DOS_ImportD.Value=gDOSXYZ.ImportDose
		    CheckBox_MC_DOS_ImportPlanD.Value=gDOSXYZ.ImportPlanDose
		    CheckBox_MC_DOS_LoadEGSPhant.Value=gDOSXYZ.LoadEGSPhant
		    CheckBox_MC_DOS_MUBS.Value=gDOSXYZ.dosxyznrc_bs_cor
		    CheckBox_MC_DOS_Zero.Value=gDOSXYZ.Zero_Dose
		    
		    
		    EditField_DOSxyz_Numtest_hist.value = Format(gDOSXYZ.dosxyz_test_histories,"#")
		    EditField_DOSxyz_MinNumJobs.value = Format(gDOSXYZ.dosxyz_min_number_of_Jobs,"#")
		    EditField_DOSxyz_defaultIDAT.value = Format(gDOSXYZ.dosxyz_defaultIDAT,"#")
		    
		    
		    if gDOSXYZ.dosxyz_defaultsource20_as_phasespace =False Then
		      CheckBox_MC_DOS_source20.Value=True
		    end
		    
		    if gDOSXYZ.dosxyznrc_link=1 Then
		      RadioButton_MC_Dos_Beam.Value=True
		    elseif gDOSXYZ.dosxyznrc_link=2 Then
		      RadioButton_MC_Dos_Cutout.Value=True
		    else
		      RadioButton_MC_Dos_None.Value=True
		    end
		    
		    
		    MC_UpdateDOSXYZ_MAterials
		    MC_UpdateDOSXYZ_EGSPhant
		  else
		    GroupBox1.Enabled=False
		    GroupBox2.Enabled=False
		    GroupBox3.Enabled=False
		    GroupBox4.Enabled=False
		    GroupBox5.Enabled=False
		    GroupBox6.Enabled=False
		    
		    
		  end
		  
		  DoNothing=False
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub MC_UpdateDOSXYZ_EGSPhant()
		  Dim i as Integer
		  Dim ss as String
		  
		  ss="33%"
		  Listbox_MC_DOS_Egsphant.ColumnCount=UBound(gDOSXYZ.Auto_EGSPhantSettings)+2
		  for i=0 to UBound(gDOSXYZ.Auto_EGSPhantSettings)
		    Listbox_MC_DOS_Egsphant.CellValueAt(0,i+1)= gDOSXYZ.Auto_EGSPhantSettings(i).Name
		    Listbox_MC_DOS_Egsphant.CellType(0,i+1)=3
		    
		    Listbox_MC_DOS_Egsphant.CellValueAt(1,i+1)= str(gDOSXYZ.Auto_EGSPhantSettings(i).CT_model+1)
		    Listbox_MC_DOS_Egsphant.CellType(1,i+1)=3
		    
		    Listbox_MC_DOS_Egsphant.CellValueAt(2,i+1)= gDOSXYZ.Auto_EGSPhantSettings(i).Clean_material
		    Listbox_MC_DOS_Egsphant.CellType(2,i+1)=3
		    
		    Listbox_MC_DOS_Egsphant.CellValueAt(3,i+1)= gDOSXYZ.Auto_EGSPhantSettings(i).Cleancontour_Name
		    Listbox_MC_DOS_Egsphant.CellType(3,i+1)=3
		    
		    Listbox_MC_DOS_Egsphant.CellValueAt(4,i+1)= Format(gDOSXYZ.Auto_EGSPhantSettings(i).Del_X,"-#.####")
		    Listbox_MC_DOS_Egsphant.CellType(4,i+1)=3
		    
		    Listbox_MC_DOS_Egsphant.CellValueAt(5,i+1)= Format(gDOSXYZ.Auto_EGSPhantSettings(i).Del_Y,"-#.####")
		    Listbox_MC_DOS_Egsphant.CellType(5,i+1)=3
		    
		    Listbox_MC_DOS_Egsphant.CellValueAt(6,i+1)= Format(gDOSXYZ.Auto_EGSPhantSettings(i).Del_Z,"-#.####")
		    Listbox_MC_DOS_Egsphant.CellType(6,i+1)=3
		    
		    Listbox_MC_DOS_Egsphant.CellCheck(7,i+1)= gDOSXYZ.Auto_EGSPhantSettings(i).Auto_Make
		    Listbox_MC_DOS_Egsphant.CellType(7,i+1)=2
		    ss=ss+",33%"
		  next
		  
		  
		  Listbox_MC_DOS_Egsphant.ColumnWidths=ss
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MC_UpdateDOSXYZ_MAterials()
		  Dim i as Integer
		  
		  Listbox_MC_DOSMat.DeleteAllRows
		  
		  for i=0 to UBound(gDOSXYZ.dosxyz_materials)
		    Listbox_MC_DOSMat.AddRow gDOSXYZ.dosxyz_materials(i).Material_Name
		    Listbox_MC_DOSMat.CellValueAt(i,1) =str(gDOSXYZ.dosxyz_materials(i).Material_Density)
		    
		    if i>0 Then
		      Listbox_MC_DOSMat.CellType(i,0)=3
		      Listbox_MC_DOSMat.CellType(i,1)=3
		    end
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		DoNothing As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		MC_DOSXYZ_Column As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events CheckBox_MC_DOS_remove_w
	#tag Event
		Sub Action()
		  if gDOSXYZ<>Nil and DoNothing=False Then
		    
		    gDOSXYZ.dosxyz_remove_w_files=me.Value
		    gDOSXYZ.Dosxyz_write
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_MC_DOS_ImportD
	#tag Event
		Sub Action()
		  if gDOSXYZ<>Nil and DoNothing=False Then
		    gDOSXYZ.ImportDose=me.Value
		    gDOSXYZ.Dosxyz_write
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_MC_DOS_MUBS
	#tag Event
		Sub Action()
		  if gDOSXYZ<>Nil and DoNothing=False Then
		    gDOSXYZ.dosxyznrc_bs_cor=me.Value
		    gDOSXYZ.Dosxyz_write
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_MC_DOS_Zero
	#tag Event
		Sub Action()
		  if gDOSXYZ<>Nil and DoNothing=False Then
		    gDOSXYZ.Zero_Dose=me.Value
		    gDOSXYZ.Dosxyz_write
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_MC_DOS_ImportPlanD
	#tag Event
		Sub Action()
		  if gDOSXYZ<>Nil and DoNothing=False Then
		    gDOSXYZ.ImportPlanDose=me.Value
		    gDOSXYZ.Dosxyz_write
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_MC_DOS_LoadEGSPhant
	#tag Event
		Sub Action()
		  if gDOSXYZ<>Nil and DoNothing=False Then
		    gDOSXYZ.LoadEGSPhant=me.Value
		    gDOSXYZ.Dosxyz_write
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_MC_DOS_autojob
	#tag Event
		Sub Action()
		  if gDOSXYZ<>Nil and DoNothing=False Then
		    gDOSXYZ.dosxyz_autojobtimer=me.Value
		    gDOSXYZ.Dosxyz_write
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_DOSxyz_autojobtime
	#tag Event
		Sub TextChange()
		  if gDOSXYZ<> nil and DoNothing = False Then
		    gDOSXYZ.dosxyz_autojobtimer_sec=Val(me.Text)
		    gDOSXYZ.Dosxyz_write
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_MC_DOS_source20
	#tag Event
		Sub Action()
		  if gDOSXYZ<>Nil and DoNothing=False Then
		    
		    if me.Value=False Then
		      gDOSXYZ.dosxyz_defaultsource20_as_phasespace=True
		    Else 
		      gDOSXYZ.dosxyz_defaultsource20_as_phasespace=False
		    end
		    gDOSXYZ.Dosxyz_write
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_DOSXYZ_Auto
	#tag Event
		Sub Action()
		  if gDOSXYZ<>Nil and DoNothing=False Then
		    gDOSXYZ.dosxyz_auto_run=me.Value
		    gDOSXYZ.Dosxyz_write
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_DOSXYZ_Refresh
	#tag Event
		Sub Action()
		  if gDOSXYZ<>Nil and DoNothing=False Then
		    gDOSXYZ.dosxyz_auto_refresh=me.Value
		    gDOSXYZ.Dosxyz_write
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_MC_DOS_Egsphant
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  
		  if gDOSXYZ<>Nil Then
		    
		    if column-1>=0 and column-1<=UBound(gDOSXYZ.Auto_EGSPhantSettings) Then
		      
		      if row=0 Then
		        gDOSXYZ.Auto_EGSPhantSettings(column-1).Name=Trim(me.CellValueAt(row,column))
		      elseif row=1 Then
		        gDOSXYZ.Auto_EGSPhantSettings(column-1).CT_model=val(me.CellValueAt(row,column))-1
		        
		      elseif row=2 Then
		        gDOSXYZ.Auto_EGSPhantSettings(column-1).Clean_material=Trim(me.CellValueAt(row,column))
		        
		      elseif row=3 Then
		        gDOSXYZ.Auto_EGSPhantSettings(column-1).Cleancontour_Name=Trim(me.CellValueAt(row,column))
		        
		      elseif row=4 Then
		        gDOSXYZ.Auto_EGSPhantSettings(column-1).Del_X=val(me.CellValueAt(row,column))
		      elseif row=5 Then
		        gDOSXYZ.Auto_EGSPhantSettings(column-1).Del_y=val(me.CellValueAt(row,column))
		      elseif row=6 Then
		        gDOSXYZ.Auto_EGSPhantSettings(column-1).Del_z=val(me.CellValueAt(row,column))
		      end
		      
		      
		      
		      gDOSXYZ.dosxyz_Write
		    end
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  
		  
		  if gDOSXYZ<>Nil Then
		    dim MI as MenuItem
		    
		    MI = New MenuItem
		    MI.Text = "Add EGSPhant"
		    base.addmenu( MI )
		    MI = New MenuItem
		    MI.Text = "Delete EGSPhant"
		    base.addmenu( MI )
		    
		    
		  end
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Dim i as Integer
		  
		  
		  Select Case hitItem.Text
		  Case "Add EGSPhant"
		    gDOSXYZ.Auto_EGSPhantSettings.append new Class_DOSXYZ_EGSPhantSettings
		  Case "Delete EGSPhant"
		    
		    i=MC_DOSXYZ_Column-1
		    
		    if i>=0 and i<=UBound(gDOSXYZ.Auto_EGSPhantSettings) Then
		      gDOSXYZ.Auto_EGSPhantSettings.Remove i
		    end
		    
		  end
		  MC_UpdateDOSXYZ_EGSPhant
		  gDOSXYZ.Dosxyz_write
		End Function
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  MC_DOSXYZ_Column=column
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  if gDOSXYZ<>Nil Then
		    
		    if column-1>=0 and column-1<=UBound(gDOSXYZ.Auto_EGSPhantSettings) Then
		      if row=7 Then
		        gDOSXYZ.Auto_EGSPhantSettings(column-1).Auto_Make=me.CellCheck(row,column)
		        gDOSXYZ.dosxyz_Write
		      end
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_MC_Dos_None
	#tag Event
		Sub Action()
		  if gDOSXYZ<>Nil and DoNothing=False Then
		    if me.Value Then
		      gDOSXYZ.dosxyznrc_link=3
		      gDOSXYZ.Dosxyz_write
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_MC_Dos_Cutout
	#tag Event
		Sub Action()
		  if gDOSXYZ<>Nil and DoNothing=False Then
		    if me.Value Then
		      gDOSXYZ.dosxyznrc_link=2
		      gDOSXYZ.Dosxyz_write
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_MC_Dos_Beam
	#tag Event
		Sub Action()
		  if gDOSXYZ<>Nil and DoNothing=False Then
		    if me.Value Then
		      gDOSXYZ.dosxyznrc_link=1
		      gDOSXYZ.Dosxyz_write
		      
		      
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_DOSxyz_Numtest_hist
	#tag Event
		Sub TextChange()
		  if gDOSXYZ<> nil and DoNothing = False Then
		    gDOSXYZ.dosxyz_test_histories=val(me.Text)
		    gDOSXYZ.Dosxyz_write
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_DOSxyz_MinNumJobs
	#tag Event
		Sub TextChange()
		  if gDOSXYZ<> nil and DoNothing = False Then
		    gDOSXYZ.dosxyz_min_number_of_Jobs=val(me.Text)
		    gDOSXYZ.Dosxyz_write
		    
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_DOSxyz_defaultIDAT
	#tag Event
		Sub TextChange()
		  if gDOSXYZ<> nil and DoNothing = False Then
		    gDOSXYZ.dosxyz_defaultIDAT=val(me.Text)
		    gDOSXYZ.Dosxyz_write
		  end
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_DOSxyz_defaultSource
	#tag Event
		Sub TextChange()
		  if gDOSXYZ<> nil and DoNothing = False Then
		    gDOSXYZ.dosxyz_defaultsource=val(me.Text)
		    gDOSXYZ.Dosxyz_write
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_DOSxyz_NumJobs
	#tag Event
		Sub TextChange()
		  if gDOSXYZ<> nil and DoNothing = False Then
		    gDOSXYZ.dosxyz_desired_number_of_Jobs=val(me.Text)
		    gDOSXYZ.Dosxyz_write
		    
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_DOSXYZnrc_Error
	#tag Event
		Sub TextChange()
		  if gDOSXYZ<> nil and DoNothing= False Then
		    gDOSXYZ.dosxyz_desired_average_error=val(me.Text)
		    gDOSXYZ.Dosxyz_write
		    
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_MC_DOSMat
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  if gDOSXYZ<>Nil Then
		    
		    if row>=0 and row<=UBound(gDOSXYZ.dosxyz_materials) Then
		      if column=0 Then
		        gDOSXYZ.dosxyz_materials(row).Material_Name=Trim(me.CellValueAt(row,column))
		      elseif column=1 Then
		        gDOSXYZ.dosxyz_materials(row).Material_Density=val(me.CellValueAt(row,column))
		      end
		      
		      gDOSXYZ.dosxyz_Writematerials
		    end
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  
		  
		  if gDOSXYZ<>Nil Then
		    dim MI as MenuItem
		    
		    MI = New MenuItem
		    MI.Text = "Add row"
		    base.addmenu( MI )
		    MI = New MenuItem
		    MI.Text = "Delete row"
		    base.addmenu( MI )
		    
		    
		  end
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Dim i as Integer
		  
		  
		  Select Case hitItem.Text
		    
		    
		  Case "Add row"
		    gDOSXYZ.dosxyz_materials.Append new Class_DOSXYZ_Material
		    
		  Case "Delete row"
		    
		    i=me.SelectedRowIndex
		    if i>0 Then
		      if me.Selected(i) Then
		        gDOSXYZ.dosxyz_materials.Remove i
		      end
		    end
		    
		    
		    
		  end
		  MC_UpdateDOSXYZ_MAterials
		  
		  gDOSXYZ.dosxyz_Writematerials
		End Function
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
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
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
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
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DoNothing"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MC_DOSXYZ_Column"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
