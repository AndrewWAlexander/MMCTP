#tag Window
Begin Window Window_DOSXYZ_Properties
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   592
   ImplicitInstance=   True
   LiveResize      =   False
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
   Title           =   "DOSXYZnrc"
   Visible         =   True
   Width           =   1125
   Begin GroupBox GroupBox_Beam
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "BEAMnrc Simulation"
      Enabled         =   True
      Height          =   84
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
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Underline       =   False
      Visible         =   True
      Width           =   569
      Begin Label StaticText_phsp_pho
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   23
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Beam"
         Italic          =   False
         Left            =   259
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
         Text            =   "Untitled"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   72
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   263
      End
      Begin RadioButton RadioButton_phsp
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Use phase space?"
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Beam"
         Italic          =   False
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   50
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   142
      End
      Begin RadioButton RadioButton_lib
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Use lib source?"
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Beam"
         Italic          =   False
         Left            =   180
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   50
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   121
      End
      Begin Label StaticText_phsp_par
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   23
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Beam"
         Italic          =   False
         Left            =   33
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         Text            =   "Untitled"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   72
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   182
      End
      Begin RadioButton RadioButton_other
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Other source?"
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Beam"
         Italic          =   False
         Left            =   325
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   10
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   50
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   163
      End
   End
   Begin GroupBox GroupBox_dosxyz
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "DOSXYZnrc Simulation"
      Enabled         =   True
      Height          =   235
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
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   113
      Underline       =   False
      Visible         =   True
      Width           =   569
      Begin CheckBox CheckBox_Queue_Auto
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Auto queue"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_dosxyz"
         Italic          =   False
         Left            =   32
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
         Top             =   305
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin TextField EditField_pegs
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
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_dosxyz"
         Italic          =   False
         Left            =   178
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
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   140
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   182
      End
      Begin Label StaticText8
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_dosxyz"
         Italic          =   False
         Left            =   32
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
         Text            =   "PEGS file"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   141
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin TextField EditField_jobs
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
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_dosxyz"
         Italic          =   False
         Left            =   494
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
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   170
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   72
      End
      Begin TextField EditField_des_error
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
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_dosxyz"
         Italic          =   False
         Left            =   494
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
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   140
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   72
      End
      Begin Label statictext_cpu_total
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_dosxyz"
         Italic          =   False
         Left            =   32
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
         Text            =   "Total CPU time estimate"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   204
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   282
      End
      Begin TextField EditField_dose
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
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_dosxyz"
         Italic          =   False
         Left            =   178
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
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   235
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   180
      End
      Begin TextField EditField_dosetowater
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
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_dosxyz"
         Italic          =   False
         Left            =   494
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
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   235
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   72
      End
      Begin Label StaticText5
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_dosxyz"
         Italic          =   False
         Left            =   368
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   13
         TabPanelIndex   =   0
         Text            =   "Number of jobs"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   171
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   103
      End
      Begin Label StaticText6
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_dosxyz"
         Italic          =   False
         Left            =   368
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   14
         TabPanelIndex   =   0
         Text            =   "Desired Uncer (%)"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   139
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   114
      End
      Begin TextField EditField_queue
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
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_dosxyz"
         Italic          =   False
         Left            =   144
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
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   304
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   115
      End
      Begin Label StaticText7
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_dosxyz"
         Italic          =   False
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   15
         TabPanelIndex   =   0
         Text            =   "Calibration dose"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   236
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   116
      End
      Begin Label StaticText17
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_dosxyz"
         Italic          =   False
         Left            =   368
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   20
         TabPanelIndex   =   0
         Text            =   "Dose to water"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   236
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   103
      End
      Begin PushButton PushButton_DOSxyz_Options
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Advanced Options"
         Default         =   False
         Enabled         =   True
         Height          =   31
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_dosxyz"
         Italic          =   False
         Left            =   271
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
         Top             =   301
         Underline       =   False
         Visible         =   True
         Width           =   305
      End
      Begin TextField EditField_histories
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
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_dosxyz"
         Italic          =   False
         Left            =   178
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
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   171
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   180
      End
      Begin Label StaticText18
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_dosxyz"
         Italic          =   False
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   23
         TabPanelIndex   =   0
         Text            =   "Number of histories"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   172
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   134
      End
      Begin PopupMenu PopupMenu_Shell
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_dosxyz"
         InitialValue    =   ""
         Italic          =   False
         Left            =   417
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   28
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   272
         Underline       =   False
         Visible         =   True
         Width           =   159
      End
      Begin TextField EditField_MU_BS
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
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_dosxyz"
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
         TabIndex        =   33
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   272
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   70
      End
      Begin Label StaticText22
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_dosxyz"
         Italic          =   False
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   34
         TabPanelIndex   =   0
         Text            =   "MU backscatter correction %"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   273
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   183
      End
      Begin CheckBox CheckBox_AutoShell
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Auto Shell"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_dosxyz"
         Italic          =   False
         Left            =   305
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   36
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   272
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
   End
   Begin PushButton PushButton_Close
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Close"
      Default         =   False
      Enabled         =   True
      Height          =   19
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   522
      LockBottom      =   True
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
      Top             =   557
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin GroupBox GroupBox_TestRun
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "DOSXYZnrc Test Run"
      Enabled         =   True
      Height          =   524
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   601
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Underline       =   False
      Visible         =   True
      Width           =   504
      Begin Label StaticText14
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_TestRun"
         Italic          =   False
         Left            =   611
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         Text            =   "Number of test histories"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   50
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   158
      End
      Begin TextField EditField_temp_his
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
         InitialParent   =   "GroupBox_TestRun"
         Italic          =   False
         Left            =   781
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
         Text            =   "20000"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   50
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   158
      End
      Begin PushButton PushButton_Runexbeam
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Run"
         Default         =   False
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_TestRun"
         Italic          =   False
         Left            =   951
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
         Top             =   50
         Underline       =   False
         Visible         =   True
         Width           =   101
      End
      Begin TextArea EditField_dosxyz_out
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   True
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   452
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "GroupBox_TestRun"
         Italic          =   False
         Left            =   611
         LimitText       =   0
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Multiline       =   True
         ReadOnly        =   False
         Scope           =   0
         ScrollbarHorizontal=   True
         ScrollbarVertical=   True
         Styled          =   False
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   84
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   494
      End
   End
   Begin GroupBox GroupBox_RunStats
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Previous Run Stats"
      Enabled         =   True
      Height          =   183
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
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   353
      Underline       =   False
      Visible         =   True
      Width           =   569
      Begin Label StaticText_JobTimeReal
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_RunStats"
         Italic          =   False
         Left            =   31
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
         Text            =   "Total CPU time estimate"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   442
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   243
      End
      Begin Label StaticText_AvgError
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_RunStats"
         Italic          =   False
         Left            =   31
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
         Text            =   "Average % error of doses >  0.500 of max dose:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   506
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   363
      End
      Begin CheckBox CheckBox_Downloaded
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "3ddose downloaded"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_RunStats"
         Italic          =   False
         Left            =   416
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   506
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   160
      End
      Begin CheckBox CheckBox_Detected
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "3ddose detected"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_RunStats"
         Italic          =   False
         Left            =   31
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   410
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   545
      End
      Begin Label StaticText_Pre_hist
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_RunStats"
         Italic          =   False
         Left            =   32
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
         Text            =   "Number of histories"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   474
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   293
      End
      Begin Label StaticText_cpu_time_per_hist
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_RunStats"
         Italic          =   False
         Left            =   332
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
         Text            =   "CPU time per history (s)"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   474
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   244
      End
      Begin CheckBox CheckBox_Simulation_Start
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Started"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_RunStats"
         Italic          =   False
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   378
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   354
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  // write new settings
		  dosxyz.Write_DOSXYZ
		  Window_Treatment.MC_dosxyz_beam_progress
		  
		  app.which_window_DOSYXZ_Options=False
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Dim k as Integer
		  
		  app.which_window_DOSYXZ_Options=True
		  
		  
		  PopupMenu_Shell.DeleteAllRows
		  for k=0 to UBound(gShells.Shells)
		    PopupMenu_Shell.AddRow gShells.Shells(k).title
		  next
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function Calculate_Real_Time() As String
		  Dim i as Single
		  Dim gg as String
		  
		  i=DOSXYZ.DOSXYZ_Input(beam).TotalTime
		  
		  if i=0 Then
		    Return ""
		  end
		  
		  if i>60 Then
		    i=i/60
		    if i>90 Then
		      i=i/60
		      gg= Format(i,"###.##") +" (hr)"
		    else
		      gg= Format(i,"###.##")+" (min)"
		    end
		  else
		    
		    gg= Format(i,"###.##")+" (sec)"
		  end
		  
		  Return "Total CPU time for run "+gg
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Calculate_Time() As String
		  Dim i as Single
		  Dim gg as String
		  
		  i=DOSXYZ.DOSXYZ_Input(beam).dos_CPU_time*gDOSXYZ.DOSXYZ(egsphant).DOSXYZ_Input(beam).dos_num_histories/(gDOSXYZ.DOSXYZ(egsphant).DOSXYZ_Input(beam).dos_jobs)
		  
		  if i>60 Then
		    i=i/60
		    if i>90 Then
		      i=i/60
		      if i>30 Then
		        i=i/24
		        gg= Format(i,"###.##") +" (days)"
		      else
		        gg= Format(i,"###.##") +" (hr)"
		      end
		    else
		      gg= Format(i,"###.##")+" (min)"
		    end
		  else
		    gg= Format(i,"###.##")+" (sec)"
		  end
		  
		  Return gg
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Refresh_List()
		  //--------------------------------
		  //
		  //--------------------------------
		  Dim c as Single
		  //--------------------------------
		  
		  do_nothing=True
		  
		  
		  gDOSXYZ.dosxyz_Update_BS_norm(egsphant,beam)
		  
		  Title="DOSXYZnrc Properties, EGPhant : "+DOSXYZ.EGSPhantSettings.name+ ", Beam : "+str(beam+1)
		  c=gBEAM.beams(beam).egs_phsp_num_photons/gBEAM.Beams(beam).egs_phsp_num_particles
		  if  gBEAM.Beams(beam).egs_phsp_num_particles=0 Then
		    c=0
		  end
		  StaticText_phsp_pho.Text="Phsp # Photon :"+Format(gBEAM.beams(beam).egs_phsp_num_photons,"###,###,###")+", "+Format(100*c,"#.##")+"%" 
		  StaticText_phsp_par.Text="Phsp # Particles :"+Format(gBEAM.beams(beam).egs_phsp_num_particles,"###,###,###")  
		  statictext_cpu_total.Text="Total CPU time estimate "+Calculate_Time
		  StaticText_JobTimeReal.Text=Calculate_Real_Time
		  
		  StaticText_cpu_time_per_hist.Text="CPU time per history (s) "+Format(DOSXYZ.DOSXYZ_Input(beam).dos_CPU_time,"###.#####")
		  CheckBox_Simulation_Start.Caption="Started "+DOSXYZ.DOSXYZ_Input(beam).dos_start_Date+" active jobs "+str(DOSXYZ.DOSXYZ_Input(beam).dos_num_active_jobs)
		  
		  StaticText_AvgError.Text="Average % error of doses >  0.5 of max dose: "
		  if dosxyz.DOSXYZ_Input(beam).dos_average_error>0.001 Then
		    StaticText_AvgError.Text=StaticText_AvgError.Text+Format(dosxyz.DOSXYZ_Input(beam).dos_average_error,"-#.###")+"%"
		  else
		    StaticText_AvgError.Text=StaticText_AvgError.Text+Format(dosxyz.DOSXYZ_Input(beam).dos_average_error,"-#.###e")+"%"
		  end
		  
		  StaticText_Pre_hist.Text="Number of histories: " +Format(dosxyz.DOSXYZ_Input(beam).dos_error_math_hist,"-#")
		  
		  EditField_histories.Text=Format(DOSXYZ.DOSXYZ_Input(beam).dos_num_histories,"###,###,###,###")
		  EditField_queue.Text=DOSXYZ.DOSXYZ_Input(beam).dos_queue
		  EditField_dose.Text=Format(DOSXYZ.DOSXYZ_Input(beam).dos_dose,"#.#######e")
		  EditField_jobs.Text=Format(DOSXYZ.DOSXYZ_Input(beam).dos_jobs,"#")
		  EditField_pegs.Text=DOSXYZ.DOSXYZ_Input(beam).dos_pegs_file
		  
		  EditField_des_error.Text=Format(DOSXYZ.DOSXYZ_Input(beam).dos_desired_average_error,"#.##")
		  EditField_dosetowater.Text=Format(DOSXYZ.DOSXYZ_Input(beam).dose_to_water,"#.###")
		  EditField_temp_his.Text=Format(DOSXYZ.DOSXYZ_Input(beam).dos_test_histories,"#")
		  EditField_MU_BS.Text=Format(dosxyz.DOSXYZ_Input(beam).dos_MU_BS,"-#.###")
		  
		  
		  PopupMenu_Shell.ListIndex=dosxyz.DOSXYZ_Input(beam).dos_Shell_Index
		  dosxyz.DOSXYZ_Input(beam).dos_Shell=PopupMenu_Shell.Text
		  
		  CheckBox_Detected.Value=dosxyz.DOSXYZ_Input(beam).dos_3ddose_detected
		  
		  CheckBox_Detected.Caption="3ddose created on "+dosxyz.DOSXYZ_Input(beam).dos_3ddose_finish_Time
		  
		  CheckBox_Downloaded.Value=dosxyz.DOSXYZ_Input(beam).dos_3ddose_downloaded
		  CheckBox_AutoShell.Value=dosxyz.DOSXYZ_Input(beam).AutoShell
		  
		  if DOSXYZ.DOSXYZ_Input(beam).isource=9 or  _
		    DOSXYZ.DOSXYZ_Input(beam).isource=11 or _
		    DOSXYZ.DOSXYZ_Input(beam).isource=21 or _
		    DOSXYZ.DOSXYZ_Input(beam).isource=10 or _
		    (DOSXYZ.DOSXYZ_Input(beam).isource=20 and gDOSXYZ.dosxyz_defaultsource20_as_phasespace=False) Then
		    RadioButton_lib.Value=True
		  elseif DOSXYZ.DOSXYZ_Input(beam).isource=2  or DOSXYZ.DOSXYZ_Input(beam).isource=8 or (DOSXYZ.DOSXYZ_Input(beam).isource=20 and gDOSXYZ.dosxyz_defaultsource20_as_phasespace=True)Then
		    RadioButton_phsp.Value=True
		  else
		    RadioButton_other.Value=True
		  end
		  
		  if dosxyz.DOSXYZ_Input(beam).run_started Then
		    CheckBox_Simulation_Start.Value=True
		  else
		    CheckBox_Simulation_Start.Value=False
		  end
		  
		  CheckBox_Queue_Auto.Value=dosxyz.DOSXYZ_Input(beam).dos_auto_queue
		  
		  do_nothing=False
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		beam As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		dosxyz As Class_dosXYZ
	#tag EndProperty

	#tag Property, Flags = &h0
		do_nothing As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		egsphant As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		UpdateInterface As Boolean = false
	#tag EndProperty


#tag EndWindowCode

#tag Events CheckBox_Queue_Auto
	#tag Event
		Sub Action()
		  dosxyz.DOSXYZ_Input(beam).dos_auto_queue =me.Value
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_pegs
	#tag Event
		Sub TextChange()
		  dosxyz.DOSXYZ_Input(beam).dos_pegs_file=me.Text
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_jobs
	#tag Event
		Sub TextChange()
		  gDOSXYZ.DOSXYZ(egsphant).DOSXYZ_Input(beam).dos_jobs=val(me.Text)
		  
		  
		  StaticText_cpu_total.Text="Total CPU time estimate "+Calculate_Time
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_des_error
	#tag Event
		Sub TextChange()
		  //------------------------------
		  //------------------------------
		  dim s as String
		  dim StartNohist as Int64
		  dim egs_pro as Single
		  //------------------------------
		  
		  if do_nothing=False Then
		    
		    s=me.Text
		    While InStr(s,",")>0
		      s=Replace(s,",","")
		    Wend
		    gDOSXYZ.DOSXYZ(egsphant).DOSXYZ_Input(beam).dos_desired_average_error=val(s)
		    
		    
		    if gDOSXYZ.DOSXYZ(egsphant).DOSXYZ_Input(beam).dos_error_math_error>0 and _
		      gDOSXYZ.DOSXYZ(egsphant).DOSXYZ_Input(beam).dos_desired_average_error > 0 Then
		      
		      egs_pro=gDOSXYZ.DOSXYZ(egsphant).DOSXYZ_Input(beam).dos_error_math_error / _
		      gDOSXYZ.DOSXYZ(egsphant).DOSXYZ_Input(beam).dos_desired_average_error
		      StartNohist=Round(egs_pro*egs_pro*gDOSXYZ.DOSXYZ(egsphant).DOSXYZ_Input(beam).dos_error_math_hist)
		      gDOSXYZ.DOSXYZ(egsphant).DOSXYZ_Input(beam).dos_num_histories =StartNohist
		      EditField_histories.Text=Format(DOSXYZ.DOSXYZ_Input(beam).dos_num_histories,"###,###,###,###")
		    end
		    
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_dose
	#tag Event
		Sub TextChange()
		  gDOSXYZ.DOSXYZ(egsphant).DOSXYZ_Input(beam).dos_dose=val(me.Text)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_dosetowater
	#tag Event
		Sub TextChange()
		  gDOSXYZ.DOSXYZ(egsphant).DOSXYZ_Input(beam).dose_to_water=val(me.Text)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_queue
	#tag Event
		Sub TextChange()
		  gDOSXYZ.DOSXYZ(egsphant).DOSXYZ_Input(beam).dos_queue=EditField_queue.Text
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_DOSxyz_Options
	#tag Event
		Sub Action()
		  Window_DOSXYZ_Maininputs.Show
		  Window_DOSXYZ_Maininputs.egsphant_index=Window_DOSXYZ_Properties.egsphant
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_histories
	#tag Event
		Sub TextChange()
		  dim s as String
		  s=me.Text
		  While InStr(s,",")>0
		    s=Replace(s,",","")
		  Wend
		  gDOSXYZ.DOSXYZ(egsphant).DOSXYZ_Input(beam).dos_num_histories=val(s)
		  StaticText_cpu_total.Text="Total CPU time estimate "+Calculate_Time
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Shell
	#tag Event
		Sub Change()
		  if do_nothing=False Then
		    dosxyz.DOSXYZ_Input(beam).dos_Shell = me.text
		    dosxyz.DOSXYZ_Input(beam).dos_Shell_Index = me.ListIndex
		    MC_Get_Linac_Properties_for_patientdose(beam)
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_MU_BS
	#tag Event
		Sub TextChange()
		  gDOSXYZ.DOSXYZ(egsphant).DOSXYZ_Input(beam).dos_mu_bs=val(me.Text)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_AutoShell
	#tag Event
		Sub Action()
		  dosxyz.DOSXYZ_Input(beam).AutoShell =me.Value
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Close
	#tag Event
		Sub Action()
		  Window_DOSXYZ_Properties.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_temp_his
	#tag Event
		Sub TextChange()
		  gDOSXYZ.DOSXYZ(egsphant).DOSXYZ_Input(beam).dos_test_histories=val(me.Text)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Runexbeam
	#tag Event
		Sub Action()
		  if gDOSXYZ.State<>0 then
		    gDOSXYZ.dosxyz_test_run=True
		    gDOSXYZ.Run
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_dosxyz_out
	#tag Event
		Sub TextChange()
		  me.ScrollPosition=me.LineNumAtCharPos(Len(me.text))
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Downloaded
	#tag Event
		Sub Action()
		  dosxyz.DOSXYZ_Input(beam).dos_3ddose_downloaded =me.Value
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Detected
	#tag Event
		Sub Action()
		  dosxyz.DOSXYZ_Input(beam).dos_3ddose_detected =me.Value
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Simulation_Start
	#tag Event
		Sub Action()
		  dosxyz.DOSXYZ_Input(beam).run_started =me.Value
		  
		  if me.Value=False Then
		    dosxyz.DOSXYZ_Input(beam).dos_num_active_jobs=0
		    dosxyz.DOSXYZ_Input(beam).dos_progress=0
		  end
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
		Name="beam"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
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
		Name="do_nothing"
		Group="Behavior"
		InitialValue="true"
		Type="boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="egsphant"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
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
		Name="UpdateInterface"
		Group="Behavior"
		InitialValue="false"
		Type="Boolean"
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
