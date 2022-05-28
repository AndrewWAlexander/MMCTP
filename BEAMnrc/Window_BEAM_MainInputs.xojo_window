#tag Window
Begin Window Window_BEAM_MainInputs
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   715
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
   Resizeable      =   False
   Title           =   "Advanced BEAM Properties"
   Visible         =   True
   Width           =   1174
   Begin TextField EditField_gECUT
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
      Left            =   880
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
      Top             =   160
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   262
   End
   Begin Label StaticText1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   569
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Bremstrahlung Splitting"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   194
   End
   Begin PopupMenu PopupMenu_Brem_sp
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   880
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   262
   End
   Begin Label StaticText6
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
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
      TabStop         =   True
      Text            =   "Title"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   54
   End
   Begin Label StaticText_title
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   99
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
      Text            =   "Untitled"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   426
   End
   Begin Label StaticText9
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   569
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
      Text            =   "Global electron cutoff energy - ECUT (MeV)"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   160
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   299
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
      Left            =   520
      LockBottom      =   True
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
      Top             =   675
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
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   569
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
      Text            =   "Global photon cutoff energy - PCUT (MeV)"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   194
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   296
   End
   Begin TextField EditField_gPCUT
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
      Left            =   880
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
      Top             =   194
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   262
   End
   Begin Label StaticText14
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   569
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Electron range rejection"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   228
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   194
   End
   Begin PopupMenu PopupMenu_Erangerejection
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   880
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   228
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   262
   End
   Begin TextField EditField_gECUT_rangerejection
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
      Left            =   978
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
      Top             =   271
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   164
   End
   Begin Label StaticText16
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   569
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
      Text            =   "Z of front of 1st CM to reference plane (cm)"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   376
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   296
   End
   Begin TextField EditField_z
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
      Left            =   880
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
      Top             =   376
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   262
   End
   Begin PushButton PushButton_Reload
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
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   675
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   135
   End
   Begin TextField EditField_RNG1
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
      Left            =   174
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
      Top             =   305
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   351
   End
   Begin Label StaticText20
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   34
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Initial RNG seed 1"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   305
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   121
   End
   Begin TextField EditField_RNG2
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
      Left            =   174
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
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   342
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   351
   End
   Begin Label StaticText21
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
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
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Initial RNG seed 2"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   342
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   122
   End
   Begin Label StaticText22
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
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
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Run Options"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   142
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   212
   End
   Begin PopupMenu PopupMenu_Runoptions
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   174
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   142
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   351
   End
   Begin PushButton PushButton_EGSnrc
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
      Left            =   995
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   675
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   159
   End
   Begin PopupMenu PopupMenu_Source_Number
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   880
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   126
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   262
   End
   Begin Label StaticText2
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   569
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Source Number"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   126
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   194
   End
   Begin PopupMenu PopupMenu_ScoreLastZ
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   174
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   271
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   351
   End
   Begin Label StaticText23
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
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
      TabIndex        =   27
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Score Last Z"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   271
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   129
   End
   Begin Label StaticText24
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
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
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "IWATCH Output"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   74
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   212
   End
   Begin PopupMenu PopupMenu_IWatch
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   174
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   29
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   74
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   351
   End
   Begin PopupMenu PopupMenu_OutputOptions
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   174
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   30
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   176
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   351
   End
   Begin Label StaticText25
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
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
      TabIndex        =   31
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Output Options"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   176
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   122
   End
   Begin PopupMenu PopupMenu_IQIN
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   880
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   32
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   85
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   262
   End
   Begin Label StaticText3
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   569
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   33
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Incident particle"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   85
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   194
   End
   Begin PopupMenu PopupMenu_RNG_seed
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   174
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   34
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   108
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   351
   End
   Begin Label StaticText26
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
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
      TabIndex        =   35
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "RNG Seed Options"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   108
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   122
   End
   Begin Label StaticText27
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
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
      TabIndex        =   36
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Medium"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   46
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   404
   End
   Begin TextField EditField_Medium
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
      Left            =   174
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
      TabIndex        =   37
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   46
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   351
   End
   Begin PopupMenu PopupMenu_StoreDataArray
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   174
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   38
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   203
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   351
   End
   Begin Label StaticText28
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   "IDAT"
      Index           =   -2147483648
      InitialParent   =   ""
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
      TabIndex        =   39
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Store Data Array"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   203
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   129
   End
   Begin PopupMenu PopupMenu_Latch
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   174
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   40
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   237
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   351
   End
   Begin Label StaticText29
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
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
      TabIndex        =   41
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "LATCH Options"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   237
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   122
   End
   Begin TextField EditField_MaxCPU
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
      Left            =   174
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
      TabIndex        =   42
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   376
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   351
   End
   Begin Label StaticText30
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
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
      TabIndex        =   43
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Max CPU Hours"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   376
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   122
   End
   Begin PopupMenu PopupMenu_Split
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   880
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   43
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   54
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   262
   End
   Begin Label StaticText4
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   569
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   44
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Split electrons or photons at CM"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   54
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   245
   End
   Begin Label StaticText15
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   569
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   45
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Global electron cutoff (ESAVE_GLOBAL, range rejection, MeV)"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   271
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   391
   End
   Begin PopupMenu PopupMenu_iforce
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   880
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   46
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   305
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   262
   End
   Begin Label StaticText31
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   569
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   47
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Photon forcing"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   305
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   194
   End
   Begin PushButton PushButton_Save
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Save as default"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   174
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   48
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   675
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   135
   End
   Begin PopupMenu PopupMenu_ScoringPlanes
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
      Left            =   880
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   48
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   342
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   262
   End
   Begin Label StaticText11
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   569
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   49
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Number of scoring planes"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   342
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   178
   End
   Begin GroupBox GroupBox1
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "CMs"
      Enabled         =   True
      Height          =   244
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   33
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   51
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   410
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   1121
      Begin Listbox Listbox_CMs
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   3
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
         Height          =   184
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   47
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
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   443
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   478
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin TextArea EditField_CM
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
         Height          =   155
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   537
         LimitText       =   0
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Mask            =   ""
         Multiline       =   True
         ReadOnly        =   True
         Scope           =   0
         ScrollbarHorizontal=   True
         ScrollbarVertical=   True
         Styled          =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   443
         Transparent     =   False
         Underline       =   False
         UnicodeMode     =   0
         UseFocusRing    =   True
         Visible         =   True
         Width           =   605
      End
      Begin BevelButton BevelButton_BEAMnrc_Edit
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Edit"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   ""
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   537
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   605
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   70
      End
   End
   Begin PushButton PushButton_egslst
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Open egslst file"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   321
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   52
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   675
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   135
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Win_Open
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Win_Open()
		  Dim i as Integer
		  
		  popupbrem=False
		  BEAM=gBEAM.Beams(Window_BEAM_Options.beam_num).Inputfile
		  
		  PopupMenu_Brem_sp.DeleteAllRows
		  PopupMenu_Brem_sp.AddRow "none"
		  PopupMenu_Brem_sp.AddRow "uniform"
		  PopupMenu_Brem_sp.AddRow "selective"
		  PopupMenu_Brem_sp.AddRow "directional"
		  
		  
		  
		  PopupMenu_Source_Number.DeleteAllRows
		  PopupMenu_Source_Number.AddRow "0: Parallel Beam from front"
		  PopupMenu_Source_Number.AddRow "1: Point Source"
		  PopupMenu_Source_Number.AddRow "3: UNIFORM ISOTROPICALLY RADIATING SOURCE"
		  PopupMenu_Source_Number.AddRow "5: NRC Swept BEAM"
		  PopupMenu_Source_Number.AddRow "6: Parallel Rectangular Beam"
		  PopupMenu_Source_Number.AddRow "7: Scanning Sawtooth Beam"
		  PopupMenu_Source_Number.AddRow "8: Scanned Point Source for MM50–Uniform"
		  PopupMenu_Source_Number.AddRow "9: Scanned Point Source for MM50–Discrete"
		  PopupMenu_Source_Number.AddRow "10: Parallel Circular Beam Incident from Side"
		  PopupMenu_Source_Number.AddRow "13: Parallel Rectangular Beam Incident from Side"
		  PopupMenu_Source_Number.AddRow "15: NRC Swept Beam (Radial Variation, Divergence) "
		  PopupMenu_Source_Number.AddRow "19: Elliptical Beam with Gaussian Distributions in X and Y, Parallel or with Angular Spread"
		  PopupMenu_Source_Number.AddRow "21: Phase Space Source"
		  PopupMenu_Source_Number.AddRow "24: Phase Space Source Incident from User-speciﬁed Angle"
		  PopupMenu_Source_Number.AddRow "23: BEAM Simulation Source Incident from User-speciﬁed Angle"
		  PopupMenu_Source_Number.AddRow "31: Phase Space Reconstructed Using Beam"
		  
		  
		  
		  
		  
		  
		  if BEAM.ISOURC=0 Then
		    PopupMenu_Source_Number.ListIndex=0
		  elseif BEAM.ISOURC=1 Then
		    PopupMenu_Source_Number.ListIndex=1
		  elseif BEAM.ISOURC=3 Then
		    PopupMenu_Source_Number.ListIndex=2
		  elseif BEAM.ISOURC=19 Then
		    PopupMenu_Source_Number.ListIndex=11
		  elseif BEAM.ISOURC=21 Then
		    PopupMenu_Source_Number.ListIndex=12
		  end
		  
		  
		  
		  if BEAM.IBRSPL=2 Then
		    PopupMenu_Brem_sp.ListIndex=3
		  elseif BEAM.IBRSPL=29 Then
		    PopupMenu_Brem_sp.ListIndex=2
		  else
		    PopupMenu_Brem_sp.ListIndex=BEAM.IBRSPL
		  end
		  
		  
		  PopupMenu_Runoptions.DeleteAllRows
		  PopupMenu_Runoptions.AddRow "first time"
		  PopupMenu_Runoptions.AddRow "restart"
		  PopupMenu_Runoptions.AddRow "analyze previous"
		  PopupMenu_Runoptions.AddRow "analyze parellel"
		  PopupMenu_Runoptions.ListIndex=BEAM.IRESTART
		  
		  
		  
		  PopupMenu_Erangerejection.DeleteAllRows
		  PopupMenu_Erangerejection.AddRow "off"
		  PopupMenu_Erangerejection.AddRow "on with varying ECUTRR"
		  PopupMenu_Erangerejection.AddRow "on with set ECUTRR"
		  i=BEAM.range_rejection
		  if i<0 Then
		    i=Abs(i)
		  end
		  
		  if i<PopupMenu_Erangerejection.ListCount Then
		    PopupMenu_Erangerejection.ListIndex=i
		  end
		  
		  
		  
		  
		  
		  
		  PopupMenu_IQIN.DeleteAllRows
		  PopupMenu_IQIN.AddRow "electron"
		  PopupMenu_IQIN.AddRow "photon"
		  PopupMenu_IQIN.AddRow "positron"
		  PopupMenu_IQIN.AddRow "phase-space"
		  
		  if BEAM.IQIN=-1 Then
		    PopupMenu_IQIN.ListIndex=0
		  elseif BEAM.IQIN=0 Then
		    PopupMenu_IQIN.ListIndex=1
		  elseif BEAM.IQIN=1 Then
		    PopupMenu_IQIN.ListIndex=2
		  else
		    PopupMenu_IQIN.ListIndex=3
		  end
		  
		  
		  
		  
		  PopupMenu_ScoreLastZ.ListIndex= BEAM.IZLAST
		  
		  
		  
		  PopupMenu_ScoreLastZ.DeleteAllRows
		  PopupMenu_ScoreLastZ.AddRow "no"
		  PopupMenu_ScoreLastZ.AddRow "last interaction"
		  PopupMenu_ScoreLastZ.AddRow "x,y,z of last interaction"
		  PopupMenu_ScoreLastZ.ListIndex= BEAM.IZLAST
		  
		  
		  PopupMenu_IWatch.DeleteAllRows
		  PopupMenu_IWatch.AddRow "none"
		  PopupMenu_IWatch.AddRow "show interactions"
		  PopupMenu_IWatch.AddRow "show each sep"
		  PopupMenu_IWatch.AddRow "for EGS_Windows"
		  PopupMenu_IWatch.AddRow "Special"
		  PopupMenu_IWatch.ListIndex= BEAM.IWATCH
		  
		  PopupMenu_OutputOptions.DeleteAllRows
		  PopupMenu_OutputOptions.AddRow "phase-space output at each scoring plane"
		  PopupMenu_OutputOptions.AddRow "no phase-space output"
		  PopupMenu_OutputOptions.AddRow "no phase-space output but do data analysis"
		  PopupMenu_OutputOptions.AddRow "phase-space output up to 100 k particle and do data analysis"
		  PopupMenu_OutputOptions.AddRow "IAEA phase-space"
		  PopupMenu_OutputOptions.ListIndex= BEAM.IO_OPT
		  
		  
		  PopupMenu_Latch.DeleteAllRows
		  PopupMenu_Latch.AddRow "non-inherited latch"
		  PopupMenu_Latch.AddRow "inherited latch - set by passage"
		  PopupMenu_Latch.AddRow "inherited latch - set by interactions"
		  PopupMenu_Latch.ListIndex= BEAM.LATCH_OPTION-1
		  
		  
		  PopupMenu_StoreDataArray.DeleteAllRows
		  PopupMenu_StoreDataArray.AddRow "yes"
		  PopupMenu_StoreDataArray.AddRow "no"
		  PopupMenu_StoreDataArray.ListIndex= BEAM.IDAT
		  
		  
		  PopupMenu_Split.DeleteAllRows
		  PopupMenu_Split.AddRow "none"
		  for i=0 to UBound(BEAM.CMs)
		    PopupMenu_Split.AddRow str(i+1)
		  next
		  PopupMenu_Split.ListIndex= BEAM.ICM_SPLIT
		  
		  
		  PopupMenu_RNG_seed.DeleteAllRows
		  PopupMenu_RNG_seed.AddRow "start run with stored RNG read in"
		  PopupMenu_RNG_seed.AddRow "store RNG at start of each batch"
		  PopupMenu_RNG_seed.AddRow "store RNG at start of each history"
		  if BEAM.ISTORE=-1 Then
		    popupMenu_RNG_seed.ListIndex=0
		  else
		    PopupMenu_RNG_seed.ListIndex= BEAM.ISTORE+1
		  end
		  
		  
		  
		  PopupMenu_iforce.DeleteAllRows
		  PopupMenu_iforce.AddRow "off"
		  PopupMenu_iforce.AddRow "on"
		  PopupMenu_iforce.ListIndex= BEAM.IFORCE
		  
		  
		  // Update Scoring Planes
		  PopupMenu_ScoringPlanes.DeleteAllRows
		  PopupMenu_ScoringPlanes.AddRow "0"
		  for i=0 to 2
		    PopupMenu_ScoringPlanes.AddRow str(i+1)
		  next
		  PopupMenu_ScoringPlanes.ListIndex=BEAM.NSC_PLANES
		  
		  
		  popupbrem=True
		  
		  
		  EditField_gECUT_rangerejection.Text=str(BEAM.ESAVE_Global)
		  EditField_gPCUT.Text=str(BEAM.PCUT)
		  EditField_gECUT.Text=str(BEAM.ECUT)
		  EditField_z.Text=BEAM.z_of_front
		  EditField_RNG1.Text=str(BEAM.RNG_1)
		  EditField_RNG2.Text=str(BEAM.RNG_2)
		  EditField_Medium.Text=BEAM.medium
		  EditField_MaxCPU.Text=str(BEAM.Max_CPU_hr)
		  StaticText_title.Text=BEAM.title
		  
		  
		  
		  // Pop CM listbox
		  Listbox_CMs.DeleteAllRows
		  Listbox_CMs.Heading(0)="CM number"
		  Listbox_CMs.Heading(1)="CM title"
		  Listbox_CMs.Heading(2)="Identifier"
		  
		  Listbox_CMs.ColumnWidths="20%,40%,40%"
		  
		  
		  for i=0 to UBound(BEAM.CMs)
		    Listbox_CMs.AddRow str(i+1)
		    Listbox_CMs.Cell(i,1)=BEAM.CMs(i).CM_Names
		    Listbox_CMs.Cell(i,2)=BEAM.CMs(i).CM_Identifier
		  next
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BEAM As Class_Beam_Inputfile
	#tag EndProperty

	#tag Property, Flags = &h0
		popupbrem As boolean = false
	#tag EndProperty


#tag EndWindowCode

#tag Events EditField_gECUT
	#tag Event
		Sub TextChange()
		  BEAM.ECUT=Val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Brem_sp
	#tag Event
		Sub Change()
		  if popupbrem Then
		    if me.ListIndex=0 Then
		      Beam.IBRSPL = 0
		    elseif me.ListIndex=1 Then
		      Beam.IBRSPL = 1
		      Window_BEAM_Options_BremSplitUniform.Show
		    elseif me.ListIndex=3 Then
		      BEAM.IBRSPL=2
		      Window_BEAM_Options_DirecBremPhoto.Show
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
#tag Events PushButton_Close
	#tag Event
		Sub Action()
		  BEAM.Calculate_Bottom_Z
		  Window_BEAM_MainInputs.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_gPCUT
	#tag Event
		Sub TextChange()
		  BEAM.PCUT=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Erangerejection
	#tag Event
		Sub Change()
		  Dim i as Integer
		  
		  if popupbrem Then
		    i= me.ListIndex
		    
		    if BEAM.range_rejection<0 Then
		      Beam.range_rejection =-1*i
		    else
		      Beam.range_rejection =i
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_gECUT_rangerejection
	#tag Event
		Sub TextChange()
		  BEAM.ESAVE_Global=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_z
	#tag Event
		Sub TextChange()
		  BEAM.z_of_front=me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Reload
	#tag Event
		Sub Action()
		  Dim f as FolderItem
		  Dim temp as String
		  Dim jj as Boolean
		  
		  f= new FolderItem
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  temp=MC_file_name+str(Window_BEAM_Options.beam_num+1)+".egsinp"
		  f=f.Child(temp)
		  if f.Exists Then
		    f.Delete
		  end
		  jj=gBEAM.Beams(Window_BEAM_Options.beam_num).Get_Plan_Inputfile
		  
		  
		  Win_Open
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_RNG1
	#tag Event
		Sub TextChange()
		  BEAM.RNG_1=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_RNG2
	#tag Event
		Sub TextChange()
		  BEAM.RNG_2=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Runoptions
	#tag Event
		Sub Change()
		  if popupbrem Then
		    Beam.IRESTART = me.ListIndex
		    
		    
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_EGSnrc
	#tag Event
		Sub Action()
		  Window_EGSnrc_Inputs.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Source_Number
	#tag Event
		Sub Change()
		  
		  if popupbrem Then
		    
		    if PopupMenu_Source_Number.ListIndex=0  Then
		      BEAM.ISOURC=0
		      Window_BEAM_Options_source0.Show
		      
		    elseif  PopupMenu_Source_Number.ListIndex=1 Then
		      BEAM.ISOURC=1
		      Window_BEAM_Options_source1.Show
		      
		    elseif  PopupMenu_Source_Number.ListIndex=2 Then
		      BEAM.ISOURC=3
		      Window_BEAM_Options_source3.Show
		      
		      
		    elseif PopupMenu_Source_Number.ListIndex=11Then
		      BEAM.ISOURC=19  
		      Window_BEAM_Options_source19.Show
		      
		    elseif PopupMenu_Source_Number.ListIndex=12 Then
		      BEAM.ISOURC=21
		      Window_BEAM_Options_source21.Show
		      
		    end
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  PopupMenu_Source_Number.ListIndex=-1
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_ScoreLastZ
	#tag Event
		Sub Change()
		  if popupbrem Then
		    BEAM.IZLAST= me.ListIndex
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_IWatch
	#tag Event
		Sub Change()
		  if popupbrem Then
		    BEAM.IWATCH= me.ListIndex
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_OutputOptions
	#tag Event
		Sub Change()
		  if popupbrem Then
		    BEAM.IO_OPT= me.ListIndex
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_IQIN
	#tag Event
		Sub Change()
		  if popupbrem Then
		    
		    if me.ListIndex=0   Then
		      BEAM.IQIN=-1
		    elseif  me.ListIndex=1 Then
		      BEAM.IQIN=0
		    elseif me.ListIndex=2 Then
		      BEAM.IQIN=1
		    else
		      BEAM.IQIN=55
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_RNG_seed
	#tag Event
		Sub Change()
		  if popupbrem Then
		    BEAM.ISTORE= me.ListIndex-1
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Medium
	#tag Event
		Sub TextChange()
		  BEAM.medium=(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_StoreDataArray
	#tag Event
		Sub Change()
		  if popupbrem Then
		    BEAM.IDAT= me.ListIndex
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Latch
	#tag Event
		Sub Change()
		  if popupbrem Then
		    BEAM.LATCH_OPTION= me.ListIndex+1
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_MaxCPU
	#tag Event
		Sub TextChange()
		  BEAM.Max_CPU_hr=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Split
	#tag Event
		Sub Change()
		  if popupbrem Then
		    BEAM.ICM_SPLIT=me.ListIndex
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_iforce
	#tag Event
		Sub Change()
		  if popupbrem Then
		    Beam.IFORCE = me.ListIndex
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Save
	#tag Event
		Sub Action()
		  Dim fs as FolderItem
		  Dim file_name,temp_Name as String
		  Dim jj as Boolean
		  Dim i as Integer
		  
		  i=MsgBox( "Overwrite existing template input file?" ,1)
		  
		  if i=1 Then
		    
		    jj=gBEAM.Beams(Window_BEAM_Options.beam_num).Write_Inputfile("")
		    
		    file_name=MC_file_name+Str(Window_BEAM_Options.beam_num+1)+".egsinp"
		    
		    temp_Name=gBEAM.Beams(Window_BEAM_Options.beam_num).Get_Template_Inputfile_Name
		    
		    if jj Then
		      
		      fs= new FolderItem
		      fs=gPref.BEAMnrc_fi.Child(temp_Name)
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
		        fs.MoveFileTo gPref.BEAMnrc_fi
		      end
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_ScoringPlanes
	#tag Event
		Sub Change()
		  Dim i as Integer
		  
		  if popupbrem Then
		    BEAM.NSC_PLANES=val(me.Text)
		    ReDim BEAM.NSC(BEAM.NSC_PLANES-1)
		    for i=0 to UBound( BEAM.NSC)
		      if BEAM.NSC(i)=nil Then
		        BEAM.NSC(i)=new Class_BEAM_Inputfile_NSC_Planes
		      end
		    next
		    
		    if BEAM.NSC_PLANES>0 Then
		      Window_BEAM_Options_Scoring.Show
		    end
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  popupbrem=False
		  
		  me.ListIndex=-1
		  popupbrem=True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_CMs
	#tag Event
		Sub Change()
		  Dim k,i as Integer
		  
		  i=me.ListIndex
		  EditField_CM.Text=""
		  
		  if i>=0 and i<= UBound(BEAM.CMs) Then
		    EditField_CM.AppendText BEAM.CMs(i).CM_Names +EndOfLine.UNIX
		    
		    for k=0 to UBound(BEAM.CMs(i).text)
		      EditField_CM.AppendText BEAM.CMs(i).text(k)+EndOfLine.UNIX
		      
		      
		    next
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Function HeaderPressed(column as Integer) As Boolean
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_BEAMnrc_Edit
	#tag Event
		Sub Action()
		  Dim i as Integer
		  
		  i= Listbox_CMs.ListIndex
		  
		  if i>-1 and i<=UBound(BEAM.CMs) Then
		    if BEAM.CMs(i).CM_Names="APPLICAT" Then
		      Window_BEAM_Options_APPLICAT.Show
		    elseif BEAM.CMs(i).CM_Names="BLOCK" Then
		      Window_BEAM_Options_BLOCK.Show
		    elseif BEAM.CMs(i).CM_Names="SLABS" Then
		      Window_BEAM_Options_SLABS.Show
		    elseif BEAM.CMs(i).CM_Names="JAWS" Then
		      Window_BEAM_Options_JAWS.Show
		    elseif BEAM.CMs(i).CM_Names="DYNJAWS" or BEAM.CMs(i).CM_Names="SYNCJAWS"  Then
		      Window_BEAM_Options_DYNJAWS.Show
		    elseif BEAM.CMs(i).CM_Names="DYNVMLC" or BEAM.CMs(i).CM_Names="SYNCVMLC"  Then
		      Window_BEAM_Options_DYNVMLC.Show
		    elseif BEAM.CMs(i).CM_Names="MLC" Then
		      Window_BEAM_Options_MLC.Show
		    elseif BEAM.CMs(i).CM_Names="WEDGE" Then
		      Window_BEAM_Options_WEDGE.Show
		    elseif BEAM.CMs(i).CM_Names="TOMOMLC" Then
		      Window_BEAM_Options_TOMOMLC.Show
		      
		    end
		  end
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_egslst
	#tag Event
		Sub Action()
		  Dim fs as FolderItem
		  Dim file_name,temp_Name as String
		  Dim jj as Boolean
		  Dim i as Integer
		  
		  
		  temp_Name=str(Window_BEAM_Options.beam_num+1)
		  file_name=MC_file_name+temp_Name+".egslst"
		  
		  fs=gRTOG.Plan(Plan_Index).Path
		  fs=fs.Child(file_name)
		  
		  IF FS.Exists Then
		    fs.Launch
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
		Name="popupbrem"
		Visible=false
		Group="Behavior"
		InitialValue="false"
		Type="boolean"
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
