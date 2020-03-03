#tag Window
Begin Window Window_DOSXYZ_Maininputs
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   773
   ImplicitInstance=   True
   LiveResize      =   "False"
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
   Title           =   "Advanced DOSXYZ Properties"
   Visible         =   True
   Width           =   994
   Begin GroupBox GroupBox_Phantom
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Phantom Definition"
      Enabled         =   True
      Height          =   143
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   26
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
      Top             =   89
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   948
      Begin Label StaticText8
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Phantom"
         Italic          =   False
         Left            =   494
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
         TabStop         =   True
         Text            =   "Global electron cutoff energy - ECUT (MeV)"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   120
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   289
      End
      Begin TextField EditField_ecut
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
         InitialParent   =   "GroupBox_Phantom"
         Italic          =   False
         Left            =   808
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
         Top             =   120
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   143
      End
      Begin Label StaticText9
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Phantom"
         Italic          =   False
         Left            =   494
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
         Text            =   "Global photon cutoff energy - PCUT (MeV)"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   156
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   289
      End
      Begin TextField EditField_pcut
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
         InitialParent   =   "GroupBox_Phantom"
         Italic          =   False
         Left            =   808
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
         Top             =   156
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   143
      End
      Begin PopupMenu PopupMenu_Print20Dose
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Phantom"
         InitialValue    =   ""
         Italic          =   False
         Left            =   808
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   190
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   143
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
         InitialParent   =   "GroupBox_Phantom"
         Italic          =   False
         Left            =   494
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
         Text            =   "Print 20 highest doses"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   190
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   166
      End
      Begin RadioButton RadioButton_NonCTPhantom
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Non CT phantom"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Phantom"
         Italic          =   False
         Left            =   171
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   149
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   131
      End
      Begin RadioButton RadioButton_CTPhantom
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "CT data phantom"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Phantom"
         Italic          =   False
         Left            =   171
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   181
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   161
      End
      Begin PushButton PushButton_Phantom
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   0
         Cancel          =   False
         Caption         =   "Define Phantom"
         Default         =   False
         Enabled         =   True
         Height          =   52
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Phantom"
         Italic          =   False
         Left            =   36
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
         Top             =   149
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   123
      End
   End
   Begin Label StaticText3
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   26
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
      Text            =   "Title"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   38
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin TextField EditField_title
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   138
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
      Top             =   37
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   425
   End
   Begin PushButton PushButton_Close
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Close"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   428
      LockBottom      =   True
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
      Top             =   733
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   135
   End
   Begin Label StaticText10
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   26
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
      TabStop         =   True
      Text            =   "Incident particle"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   240
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   289
   End
   Begin PopupMenu PopupMenu_incident_part
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   388
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   239
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   333
   End
   Begin Label StaticText11
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   26
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Source type"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   270
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   289
   End
   Begin PopupMenu PopupMenu_source
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   388
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   269
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   333
   End
   Begin Label StaticText12
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   26
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
      Text            =   "Maximum CPU time (hours)"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   302
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   289
   End
   Begin TextField EditField_maxtime
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   388
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
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   301
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   333
   End
   Begin Label StaticText13
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   26
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "RNG seed 1"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   332
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   289
   End
   Begin TextField EditField_rng1
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   388
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
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   331
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   333
   End
   Begin Label StaticText14
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   26
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "# times to recyle each partice in phase space source"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   461
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   329
   End
   Begin TextField EditField_nrcycl
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   388
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
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   459
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   333
   End
   Begin Label StaticText15
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   26
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
      TabStop         =   True
      Text            =   "RNG seed 2"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   365
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   289
   End
   Begin TextField EditField_rng2
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   388
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
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   364
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   333
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   26
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Incident beam size (source 2, 4 or 8)"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   494
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   329
   End
   Begin TextField EditField_beam_size
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   388
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
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   493
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   333
   End
   Begin PushButton PushButton_Reloaddefaults
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Reload default"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   24
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   733
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   135
   End
   Begin CheckBox CheckBox_auto_mmctp
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Auto Determine"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   749
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      State           =   0
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   269
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   187
   End
   Begin TextField EditField_Esave
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   388
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
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   556
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   333
   End
   Begin Label StaticText19
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   26
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "ESAVE (MeV)"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   557
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   329
   End
   Begin Label StaticText20
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   26
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
      TabStop         =   True
      Text            =   "Medium of region outside phantom"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   590
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   329
   End
   Begin PopupMenu PopupMenu_rangeR
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   388
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   524
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   333
   End
   Begin Label StaticText21
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   26
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Range rejection"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   525
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   289
   End
   Begin PopupMenu PopupMenu_mediumoutside
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   388
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   589
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   333
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   26
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Thickness of region outside phantom is"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   622
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   329
   End
   Begin PopupMenu PopupMenu_mediumthickness
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   388
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   27
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   621
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   333
   End
   Begin Label StaticText23
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   26
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Run Options"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   397
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   289
   End
   Begin PopupMenu PopupMenu_RunOptions
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   388
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   29
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   396
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   333
   End
   Begin PopupMenu PopupMenu_howfar
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   388
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   30
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   653
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   333
   End
   Begin Label StaticText24
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   26
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   31
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "'HOWFARLESS'"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   654
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   329
   End
   Begin PushButton PushButton_EGSnrc_Inputs
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Edit EGSnrc Inputs"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   808
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   32
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   733
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   159
   End
   Begin PushButton PushButton_SaveAsEgsphant
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Save as egsphant default"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   184
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   33
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   733
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   192
   End
   Begin TextField EditField_N_Split
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   388
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
      TabIndex        =   34
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   686
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   333
   End
   Begin Label StaticText25
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   26
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   35
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Photon Splitting Number"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   687
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   329
   End
   Begin PushButton PushButton_Openlst
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Open egslst"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   579
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   36
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   733
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   104
   End
   Begin PopupMenu PopupMenu_Idat
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   388
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   37
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   427
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   333
   End
   Begin Label StaticText26
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   26
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   38
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Output restart data"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   428
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   289
   End
   Begin PushButton PushButton_OpenLog
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Open egslog"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   696
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   39
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   733
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   104
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Dim i as Integer
		  
		  do_nothing=True
		  
		  dosxyz_input=gDOSXYZ.DOSXYZ(Window_DOSXYZ_Properties.egsphant).DOSXYZ_Input(Window_DOSXYZ_Properties.beam)
		  egsphant_index=Window_DOSXYZ_Properties.egsphant
		  
		  PopupMenu_source.DeleteAllRows
		  
		  PopupMenu_source.AddRow "1 - Parallel Rectangular Beam Incident from Any Direction"
		  PopupMenu_source.AddRow "2 - Full phase-space source file"
		  PopupMenu_source.AddRow "3 - Point source from front" 
		  PopupMenu_source.AddRow "8 - Phase-Space Source Incident from Multiple Directions"
		  PopupMenu_source.AddRow "9 - BEAM treatment head simulation"
		  PopupMenu_source.AddRow "10 - Full BEAMnrc Treatment Head Simulation Incident from Multiple Directions"
		  PopupMenu_source.AddRow "11 - TOMOBEAM treatment head simulation"
		  PopupMenu_source.AddRow "20 - Simulation through moving MLC with multiple variable settins"
		  PopupMenu_source.AddRow "21 - BEAM treatment head simulation through moving MLC with multiple variable settings"
		  
		  
		  PopupMenu_Idat.DeleteAllRows
		  PopupMenu_Idat.AddRow "0 output intermediate files for restarts"
		  PopupMenu_Idat.AddRow "1 do not output intermediate data files at all "
		  PopupMenu_Idat.AddRow "2 output the data file for restart at end only"
		  
		  
		  PopupMenu_incident_part.DeleteAllRows
		  
		  PopupMenu_incident_part.AddRow "electron"
		  PopupMenu_incident_part.AddRow "photon"
		  PopupMenu_incident_part.AddRow "positron"
		  PopupMenu_incident_part.AddRow "all"
		  
		  PopupMenu_howfar.DeleteAllRows
		  PopupMenu_howfar.AddRow "off"
		  PopupMenu_howfar.AddRow "on"
		  
		  
		  PopupMenu_Print20Dose.DeleteAllRows
		  PopupMenu_Print20Dose.AddRow "no"
		  PopupMenu_Print20Dose.AddRow "yes"
		  
		  PopupMenu_rangeR.DeleteAllRows
		  PopupMenu_rangeR.AddRow "off"
		  PopupMenu_rangeR.AddRow "on"
		  
		  PopupMenu_mediumthickness.DeleteAllRows
		  PopupMenu_mediumthickness.AddRow "uniform"
		  PopupMenu_mediumthickness.AddRow "non-uniform"
		  
		  //RESTART = 0 first run for this data set (the default)
		  //= 1 restart of a previous run
		  //= 2 just create the input file and exit
		  //= 3 just read in the raw data and do the statistical
		  //analysis
		  //= 4 recombine .pardose files from parallel runs
		  
		  PopupMenu_RunOptions.DeleteAllRows
		  PopupMenu_RunOptions.AddRow "first time"
		  PopupMenu_RunOptions.AddRow "restart"
		  PopupMenu_RunOptions.AddRow "create input file and exit"
		  PopupMenu_RunOptions.AddRow "read raw data do stat analysis"
		  PopupMenu_RunOptions.AddRow "recombine .pardose"
		  
		  Refresh_List
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Refresh_List()
		  //------------------------------
		  //
		  //
		  //------------------------------
		  Dim i as Integer
		  //------------------------------
		  
		  do_nothing=True
		  dosxyz_input=gDOSXYZ.DOSXYZ(Window_DOSXYZ_Properties.egsphant).DOSXYZ_Input(Window_DOSXYZ_Properties.beam)
		  
		  
		  if dosxyz_input.isource=1 Then
		    PopupMenu_source.ListIndex=0
		    
		  elseif dosxyz_input.isource=2 Then
		    PopupMenu_source.ListIndex=1
		    
		  elseif dosxyz_input.isource=3 Then
		    PopupMenu_source.ListIndex=2
		    
		  elseif dosxyz_input.isource=8 Then
		    PopupMenu_source.ListIndex=3
		    
		  elseif dosxyz_input.isource=9 Then
		    PopupMenu_source.ListIndex=4
		  elseif dosxyz_input.isource=10 Then
		    PopupMenu_source.ListIndex=5
		    
		  elseif dosxyz_input.isource=11 Then
		    PopupMenu_source.ListIndex=6
		  elseif dosxyz_input.isource=20 Then
		    PopupMenu_source.ListIndex=7
		  elseif dosxyz_input.isource=21 Then
		    PopupMenu_source.ListIndex=8
		    
		  end
		  
		  PopupMenu_Idat.ListIndex=dosxyz_input.IDAT
		  
		  
		  PopupMenu_RunOptions.ListIndex=dosxyz_input.IRESTART
		  
		  if dosxyz_input.IQIN=-1 Then
		    PopupMenu_incident_part.ListIndex=0
		  Elseif dosxyz_input.IQIN=0 Then
		    PopupMenu_incident_part.ListIndex=1
		  Elseif dosxyz_input.IQIN=1 Then
		    PopupMenu_incident_part.ListIndex=2
		  Elseif dosxyz_input.IQIN=2 Then
		    PopupMenu_incident_part.ListIndex=3
		  end
		  
		  
		  PopupMenu_howfar.ListIndex=dosxyz_input.ihowfarless
		  
		  if dosxyz_input.Max20=0 Then
		    PopupMenu_Print20Dose.ListIndex=0
		  else
		    PopupMenu_Print20Dose.ListIndex=1
		  end
		  
		  
		  PopupMenu_rangeR.ListIndex= dosxyz_input.IREJECT
		  
		  
		  if dosxyz_input.dos_Non_CT=false Then
		    RadioButton_CTPhantom.Value=True
		  else
		    RadioButton_NonCTPhantom.Value=True
		  end
		  
		  if dosxyz_input.MMCTP_auto Then
		    CheckBox_auto_mmctp.Value=True
		  else
		    CheckBox_auto_mmctp.Value=False
		  end
		  
		  PopupMenu_mediumthickness.ListIndex=dosxyz_input.dflag
		  
		  EditField_title.Text=dosxyz_input.TITLE
		  EditField_nrcycl.Text=Format(dosxyz_input.NRCYCL,"#")
		  EditField_pcut.Text=Format(dosxyz_input.PCUT,"#.###")
		  EditField_ecut.Text=Format(dosxyz_input.ECUTIN,"#.###")
		  EditField_rng1.Text=Format(dosxyz_input.INSEED1,"#")
		  EditField_rng2.Text=Format(dosxyz_input.INSEED2,"#")
		  EditField_maxtime.Text=Format(dosxyz_input.TIMMAX,"#.##")
		  EditField_beam_size.Text=Format(dosxyz_input.BEAM_SIZE,"#.##")
		  EditField_Esave.Text=Format(dosxyz_input.ESAVE_GLOBAL,"#.###")
		  EditField_N_Split.Text=Format(dosxyz_input.n_split,"#")
		  
		  
		  PopupMenu_mediumoutside.DeleteAllRows
		  
		  if DOSXYZ_Input.nmed=0 Then // If it is a CT Phantom
		    for i=0 to UBound(gDOSXYZ.DOSXYZ(egsphant_index).EGSPhantSettings.Materials)
		      PopupMenu_mediumoutside.AddRow gDOSXYZ.DOSXYZ(egsphant_index).EGSPhantSettings.Materials(i)
		    next
		  elseif DOSXYZ_Input.nmed>0 Then // User Profile Phantom
		    PopupMenu_mediumoutside.AddRow "Vacuum"
		    for i=0 to UBound(DOSXYZ_Input.NMedium)
		      PopupMenu_mediumoutside.AddRow DOSXYZ_Input.NMedium(i)
		    next
		  end
		  
		  if dosxyz_input.medsur>=0 and dosxyz_input.medsur<=PopupMenu_mediumoutside.ListCount Then
		    PopupMenu_mediumoutside.ListIndex=dosxyz_input.medsur
		  else
		    PopupMenu_mediumoutside.ListIndex=0
		  end
		  do_nothing=False
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		dosxyz_input As class_dosxyZ_input
	#tag EndProperty

	#tag Property, Flags = &h0
		do_nothing As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		egsphant_index As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events EditField_ecut
	#tag Event
		Sub TextChange()
		  dosxyz_input.ECUTIN=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_pcut
	#tag Event
		Sub TextChange()
		  dosxyz_input.PCUT=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Print20Dose
	#tag Event
		Sub Change()
		  if me.ListIndex=0 Then
		    dosxyz_input.Max20=0
		  elseif me.ListIndex=1  Then
		    dosxyz_input.Max20=1
		  end
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_NonCTPhantom
	#tag Event
		Sub Action()
		  if me.Value Then
		    dosxyz_input.dos_Non_CT=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_CTPhantom
	#tag Event
		Sub Action()
		  if me.Value Then
		    dosxyz_input.dos_Non_CT=False
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Phantom
	#tag Event
		Sub Action()
		  Window_DOSXYZ_Maininputs_Phantom.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_title
	#tag Event
		Sub TextChange()
		  dosxyz_input.TITLE=(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Close
	#tag Event
		Sub Action()
		  Window_DOSXYZ_Maininputs.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_incident_part
	#tag Event
		Sub Change()
		  if me.ListIndex=0 Then
		    dosxyz_input.IQIN=-1
		  elseif me.ListIndex=1  Then
		    dosxyz_input.IQIN=0
		  elseif me.ListIndex=2 Then
		    dosxyz_input.IQIN=1
		  elseif me.ListIndex=3 Then
		    dosxyz_input.IQIN=2
		  end
		  
		  '
		  'PopupMenu_incident_part.AddRow "electron"
		  'PopupMenu_incident_part.AddRow "photon"
		  'PopupMenu_incident_part.AddRow "positron"
		  'PopupMenu_incident_part.AddRow "all"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_source
	#tag Event
		Sub Change()
		  
		  if do_nothing=False Then
		    if me.ListIndex=0 then
		      dosxyz_input.isource=1
		      Window_DOSXYZ_Maininputs_source1.Show
		      
		      
		    ElseIf me.ListIndex=1 Then
		      //PopupMenu_source.Text="2 - Full phase-space source file" Then
		      dosxyz_input.isource=2
		      Window_DOSXYZ_Maininputs_source2.Show
		      
		      
		    ElseIf me.ListIndex=2 Then
		      //PopupMenu_source.Text="3 - Point source from front" Then
		      dosxyz_input.isource=3
		      Window_DOSXYZ_Maininputs_source3.Show
		      
		    ElseIf me.ListIndex=3 Then
		      //PopupMenu_source.Text="3 - Point source from front" Then
		      dosxyz_input.isource=8
		      Window_DOSXYZ_Maininputs_source8.Show
		      
		    elseif me.ListIndex=4 Then
		      dosxyz_input.isource=9
		      Window_DOSXYZ_Maininputs_source9.Show
		      
		    elseif me.ListIndex=5 Then
		      dosxyz_input.isource=10
		      Window_DOSXYZ_Maininputs_source10.Show
		      
		    elseif me.ListIndex=6 Then
		      dosxyz_input.isource=11
		      Window_DOSXYZ_Maininputs_source11.Show
		      
		    elseif me.ListIndex=7 Then //20 - Simulation through moving MLC with multiple variable settins"
		      dosxyz_input.isource=20
		      Window_DOSXYZ_Maininputs_source20.Show
		      
		    elseif me.ListIndex=8 Then // "21 - BEAM treatment head simulation through moving MLC with multiple variable settings"
		      dosxyz_input.isource=21
		      Window_DOSXYZ_Maininputs_source21.Show
		      
		    end
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  me.ListIndex=-1
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events EditField_maxtime
	#tag Event
		Sub TextChange()
		  dosxyz_input.TIMMAX=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_rng1
	#tag Event
		Sub TextChange()
		  dosxyz_input.INSEED1=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_nrcycl
	#tag Event
		Sub TextChange()
		  dosxyz_input.NRCYCL=val(me.Text)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_rng2
	#tag Event
		Sub TextChange()
		  dosxyz_input.INSEED2=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_beam_size
	#tag Event
		Sub TextChange()
		  dosxyz_input.BEAM_SIZE=val(me.Text)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Reloaddefaults
	#tag Event
		Sub Action()
		  //--------------------------
		  //
		  //--------------------------
		  Dim f as FolderItem
		  Dim temp as String
		  //--------------------------
		  
		  gDOSXYZ.DOSXYZ(egsphant_index).Write_DOSXYZ
		  
		  f= new FolderItem
		  f=gRTOG.Plan(Plan_Index).Path
		  
		  temp=str(Window_DOSXYZ_Properties.beam+1)
		  While Len(temp)<3
		    Temp="0"+temp
		  Wend
		  
		  
		  
		  temp=MC_file_name+temp+"_"+gDOSXYZ.DOSXYZ(egsphant_index).EGSPhantSettings.name+".egsinp"
		  f=f.Child(temp)
		  if f.Exists Then
		    f.Delete
		  end
		  
		  
		  gDOSXYZ.DOSXYZ(egsphant_index).Read_DOSXYZ
		  Refresh_List
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_auto_mmctp
	#tag Event
		Sub Action()
		  if me.Value Then
		    dosxyz_input.MMCTP_auto=True
		  else
		    dosxyz_input.MMCTP_auto=False
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Esave
	#tag Event
		Sub TextChange()
		  dosxyz_input.ESAVE_GLOBAL=val(me.Text)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_rangeR
	#tag Event
		Sub Change()
		  if do_nothing=False Then
		    dosxyz_input.IREJECT=me.ListIndex
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_mediumoutside
	#tag Event
		Sub Change()
		  if do_nothing=False Then
		    dosxyz_input.medsur=me.ListIndex
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_mediumthickness
	#tag Event
		Sub Change()
		  if do_nothing=False Then
		    dosxyz_input.dflag=me.ListIndex
		    Window_DOSXYZ_Maininputs_Thickness.Show
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_RunOptions
	#tag Event
		Sub Change()
		  if do_nothing=False Then
		    dosxyz_input.IRESTART=me.ListIndex
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_howfar
	#tag Event
		Sub Change()
		  if do_nothing=False Then
		    dosxyz_input.ihowfarless=me.ListIndex
		    
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_EGSnrc_Inputs
	#tag Event
		Sub Action()
		  Window_EGSnrc_Inputs.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_SaveAsEgsphant
	#tag Event
		Sub Action()
		  //--------------------------
		  //
		  //--------------------------
		  Dim fs as FolderItem
		  Dim temp_Name,file_name,name as String
		  Dim i as Integer
		  Dim bb as Boolean
		  //--------------------------
		  
		  i=MsgBox( "Overwrite existing template input file?" ,1)
		  
		  if i =1 Then
		    i=Window_DOSXYZ_Properties.beam
		    bb=gDOSXYZ.dosxyz_Input_file(egsphant_index,Window_DOSXYZ_Properties.beam)
		    name=str(i+1)
		    While Len(name)<3
		      name="0"+name
		    Wend
		    file_name=MC_file_name+name+"_"+gDOSXYZ.DOSXYZ(egsphant_index).EGSPhantSettings.name +".egsinp"
		    temp_Name=gDOSXYZ.DOSXYZ(egsphant_index).EGSPhantSettings.name+".default"
		    
		    fs= new FolderItem
		    fs=gRTOG.path.Child("McGill_RT")
		    fs=fs.Child(temp_Name)
		    if fs.Exists Then
		      fs.Delete
		    end
		    
		    fs= new FolderItem
		    fs=gRTOG.Plan(Plan_Index).Path.Child(temp_Name)
		    if fs.Exists Then
		      fs.Delete
		    end
		    
		    fs= new FolderItem
		    fs=gRTOG.Plan(Plan_Index).Path
		    fs=fs.Child(file_name)
		    fs.Name=temp_Name
		    
		    
		    if fs.Exists Then
		      fs.MoveFileTo gRTOG.path.Child("McGill_RT")
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_N_Split
	#tag Event
		Sub TextChange()
		  dosxyz_input.n_split=val(me.Text)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Openlst
	#tag Event
		Sub Action()
		  Dim f as FolderItem
		  Dim file_name,temp_Name,name as String
		  //-------------------------------------------
		  
		  name=str(Window_DOSXYZ_Properties.beam+1)
		  While Len(name)<3
		    name="0"+name
		  Wend
		  
		  temp_Name=MC_file_name+name+"_"+gDOSXYZ.DOSXYZ(egsphant_index).EGSPhantSettings.name +".egs"
		  file_name=temp_Name+"lst"
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child(file_name)
		  
		  
		  IF F.Exists Then
		    f.Launch
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Idat
	#tag Event
		Sub Change()
		  if do_nothing=False Then
		    dosxyz_input.IDAT=me.ListIndex
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_OpenLog
	#tag Event
		Sub Action()
		  //--------------------------------------
		  //
		  //
		  //--------------------------------------
		  Dim f as FolderItem
		  Dim file_name,temp_Name,name as String
		  //--------------------------------------
		  
		  
		  name=str(Window_DOSXYZ_Properties.beam+1)
		  While Len(name)<3
		    name="0"+name
		  Wend
		  
		  temp_Name=MC_file_name+name+"_"+gDOSXYZ.DOSXYZ(egsphant_index).EGSPhantSettings.name +".egs"
		  file_name=temp_Name+"log"
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child(file_name)
		  
		  IF F.Exists Then
		    f.Launch
		  end
		End Sub
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
		Name="do_nothing"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="egsphant_index"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
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
