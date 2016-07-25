#tag Window
Begin Window Window_EGSnrc_Inputs
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   558
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
   Resizeable      =   False
   Title           =   "Advanced EGSnrc Properties"
   Visible         =   True
   Width           =   793
   Begin TextField EditField_max_stepSize
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
      Left            =   511
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
      Top             =   20
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
      Left            =   20
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
      Text            =   "Boundary crossing algorithm"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   104
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   194
   End
   Begin PopupMenu PopupMenu_BcA
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
      Left            =   511
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
      Top             =   104
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
      HelpTag         =   "Global SMAX deﬁnes the maximum electron step length in cm. If the default EGSnrc electron \rstep electron algorithm (see section 11.8) and the exact boundary crossing algorithm are \rused, then no restriction on maximum step length is needed. However, if using PRESTA-I \r(the EGS4 standard) as the electron step algorithm or the boundary crossing algorithm, \rthen Global SMAX must be set to a reasonable value (eg 5 cm) to ensure proper electron \rtransport in low density materials (air). Global SMAX defaults to 5 cm when the PRESTA-I \rboundary crossing algorithm (BCA) or electron step algorithm is used is used and 1.E10 cm \rwhen the EXACT BCA and PRESTA-II electron step algorithm are used. "
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
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
      Text            =   "Maximum step size (cm)"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   249
   End
   Begin PushButton PushButton_Close
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
      Left            =   329
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
      Top             =   518
      Underline       =   False
      Visible         =   True
      Width           =   135
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
      Left            =   20
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
      Text            =   "Electron-step algorithm"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   161
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   194
   End
   Begin PopupMenu PopupMenu_EsA
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
      Left            =   511
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
      Top             =   161
      Underline       =   False
      Visible         =   True
      Width           =   262
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
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Brems angular sampling"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   249
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   194
   End
   Begin PopupMenu PopupMenu_Bremsangular
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
      Left            =   511
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   249
      Underline       =   False
      Visible         =   True
      Width           =   262
   End
   Begin PopupMenu PopupMenu_BremsCrossSections
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
      Left            =   511
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   275
      Underline       =   False
      Visible         =   True
      Width           =   262
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
      Left            =   20
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
      Text            =   "Brems cross sections"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   275
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   194
   End
   Begin PopupMenu PopupMenu_BoundComptonScattering
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
      Left            =   511
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
      Top             =   305
      Underline       =   False
      Visible         =   True
      Width           =   262
   End
   Begin Label StaticText17
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
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Bound Compton scattering"
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
   Begin PopupMenu PopupMenu_Spin
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
      Left            =   511
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   193
      Underline       =   False
      Visible         =   True
      Width           =   262
   End
   Begin Label StaticText18
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
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Spin effects"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   193
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   194
   End
   Begin PopupMenu PopupMenu_Pairangularsampling
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
      Left            =   511
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   334
      Underline       =   False
      Visible         =   True
      Width           =   262
   End
   Begin Label StaticText19
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
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Pair angular sampling"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   334
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   194
   End
   Begin TextField EditField_max_frac_loss
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
      Left            =   511
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
      Top             =   47
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   262
   End
   Begin Label StaticText7
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   "ESTEPE is the maximum fractional energy loss per electron step. For accurate electron \rtransport with default EGSnrc electron step algorithm, ESTEPE should not exceed 0.25 (the \rdefault). The value of ESTEPE should not be changed unless PRESTA-I is being used as the \relectron transport algorithm."
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
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
      Text            =   "Max fractional energy loss/step"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   47
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   249
   End
   Begin TextField EditField_XImax
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
      Left            =   511
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
      Top             =   74
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   262
   End
   Begin Label StaticText20
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   "XIMAX is the maximum ﬁrst multiple elastic scattering moment per electron step. It is equal \rto roughly half the average multiple scattering angle squared. Make sure you do not set \rXIMAX > 1, since this is beyond the range of available multiple scattering data. The default \rvalue of 0.5 should be suﬃcient for most applications."
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
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
      Text            =   "XImax"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   74
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   249
   End
   Begin PopupMenu PopupMenu_Rayleigh
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
      Left            =   511
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   391
      Underline       =   False
      Visible         =   True
      Width           =   262
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
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Rayleigh scattering"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   391
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   194
   End
   Begin TextField EditField_SkinDepth
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
      Left            =   511
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
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   134
      Underline       =   False
      UseFocusRing    =   True
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
      HelpTag         =   "If Boundary crossing algorithm= PRESTA-I, then Skin depth for BCA is the perpen- \rdicular distance (in elastic mean free paths) from the boundary at which lateral pathlength \rcorrections are turned oﬀ and the particle is transported in a straight line until it reaches \rthe boundary. By default the distance at which to switch oﬀ lateral corrections is a ﬁxed \rvalue calculated by EGSnrc to be the same as that used in the original implementation of \rPRESTA in EGS4 and depends on the value of ECUT. \rIf Boundary crossing algorithm= EXACT, then Skin depth for BCA determines the \rperpendicular distance (in elastic mean free paths) to the region boundary at which electron \rtransport will go into single elastic scattering mode. A skin depth of 3 elastic mean free \rpaths has been found to give peak eﬃciency in this case and is the default. \rIf Boundary crossing algorithm= EXACT and Skin depth for BCA is set to a very \rlarge number (eg 1e10), then the entire simulation will be done in single scattering mode. "
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Skin depth for BCA"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   134
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   194
   End
   Begin PopupMenu PopupMenu_Electron_Impact_Ionization
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
      Left            =   509
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   221
      Underline       =   False
      Visible         =   True
      Width           =   262
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
      Left            =   18
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Electron impact ionization"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   221
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   194
   End
   Begin PopupMenu PopupMenu_Photoelectron_angular
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
      Left            =   511
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   27
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   361
      Underline       =   False
      Visible         =   True
      Width           =   262
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
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Photoelectron angular sampling"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   361
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   215
   End
   Begin PopupMenu PopupMenu_atomicrelax
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
      Left            =   511
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
      Top             =   425
      Underline       =   False
      Visible         =   True
      Width           =   262
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
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   30
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Atomic relaxations"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   425
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   194
   End
   Begin PopupMenu PopupMenu_Photon_Cross_Sections
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
      Left            =   509
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   31
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   459
      Underline       =   False
      Visible         =   True
      Width           =   262
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
      Left            =   18
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   32
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Photon cross-sections"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   459
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   194
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
		  
		  if app.which_window_BEAM_Options Then
		    BEAM=gBEAM.Beams(Window_BEAM_Options.beam_num).Inputfile
		    EGSnrc=BEAM.EGSnrc
		  elseif App.which_window_DOSYXZ_Options Then
		    DOSXYZ=gDOSXYZ.DOSXYZ(Window_DOSXYZ_Properties.egsphant).DOSXYZ_Input(Window_DOSXYZ_Properties.beam)
		    EGSnrc=DOSXYZ.EGSnrc
		  end
		  
		  
		  
		  
		  PopupMenu_BcA.DeleteAllRows
		  PopupMenu_BcA.AddRow "EXACT"
		  PopupMenu_BcA.AddRow "PRESTA-I"
		  for i=0 to PopupMenu_BcA.ListCount-1
		    if EGSnrc.BcA=PopupMenu_BcA.List(i) Then
		      PopupMenu_BcA.ListIndex=i
		    end
		  next
		  
		  
		  
		  PopupMenu_EsA.DeleteAllRows
		  PopupMenu_EsA.AddRow "PRESTA-II"
		  PopupMenu_EsA.AddRow "PRESTA-I"
		  for i=0 to PopupMenu_EsA.ListCount-1
		    if EGSnrc.Electron_Step_Algorithm=PopupMenu_EsA.List(i) Then
		      PopupMenu_EsA.ListIndex=i
		    end
		  next
		  
		  
		  
		  
		  PopupMenu_Spin.DeleteAllRows
		  PopupMenu_Spin.AddRow "Off"
		  PopupMenu_Spin.AddRow "On"
		  for i=0 to PopupMenu_Spin.ListCount-1
		    if EGSnrc.Spin_effects=PopupMenu_Spin.List(i) Then
		      PopupMenu_Spin.ListIndex=i
		    end
		  next
		  
		  
		  PopupMenu_Bremsangular.DeleteAllRows
		  PopupMenu_Bremsangular.AddRow "Simple"
		  PopupMenu_Bremsangular.AddRow "KM"
		  for i=0 to PopupMenu_Bremsangular.ListCount-1
		    if EGSnrc.Brems_angular_sampling=PopupMenu_Bremsangular.List(i) Then
		      PopupMenu_Bremsangular.ListIndex=i
		    end
		  next
		  
		  
		  PopupMenu_BremsCrossSections.DeleteAllRows
		  PopupMenu_BremsCrossSections.AddRow "BH"
		  PopupMenu_BremsCrossSections.AddRow "NIST"
		  PopupMenu_BremsCrossSections.AddRow "NRC"
		  for i=0 to PopupMenu_BremsCrossSections.ListCount-1
		    if EGSnrc.Brems_cross_sections=PopupMenu_BremsCrossSections.List(i) Then
		      PopupMenu_BremsCrossSections.ListIndex=i
		    end
		  next
		  
		  
		  PopupMenu_BoundComptonScattering.DeleteAllRows
		  PopupMenu_BoundComptonScattering.AddRow "Off"
		  PopupMenu_BoundComptonScattering.AddRow "On"
		  PopupMenu_BoundComptonScattering.AddRow "On in regions"
		  PopupMenu_BoundComptonScattering.AddRow "Off in regions"
		  for i=0 to PopupMenu_BoundComptonScattering.ListCount-1
		    if EGSnrc.BoundComptonscattering=PopupMenu_BoundComptonScattering.List(i) Then
		      PopupMenu_BoundComptonScattering.ListIndex=i
		    end
		  next
		  
		  
		  PopupMenu_Electron_Impact_Ionization.DeleteAllRows
		  PopupMenu_Electron_Impact_Ionization.AddRow "Off"
		  PopupMenu_Electron_Impact_Ionization.AddRow "On"
		  PopupMenu_Electron_Impact_Ionization.AddRow "Casnati"
		  PopupMenu_Electron_Impact_Ionization.AddRow "Kolbenstvedt"
		  PopupMenu_Electron_Impact_Ionization.AddRow "Gryzinski"
		  for i=0 to PopupMenu_Electron_Impact_Ionization.ListCount-1
		    if EGSnrc.Electronimpactionization=PopupMenu_Electron_Impact_Ionization.List(i) Then
		      PopupMenu_Electron_Impact_Ionization.ListIndex=i
		    end
		  next
		  
		  
		  
		  
		  PopupMenu_Rayleigh.DeleteAllRows
		  PopupMenu_Rayleigh.AddRow "Off"
		  PopupMenu_Rayleigh.AddRow "On"
		  PopupMenu_Rayleigh.AddRow "On in regions"
		  PopupMenu_Rayleigh.AddRow "Off in regions"
		  for i=0 to PopupMenu_Rayleigh.ListCount-1
		    if EGSnrc.Rayleighscattering=PopupMenu_Rayleigh.List(i) Then
		      PopupMenu_Rayleigh.ListIndex=i
		    end
		  next
		  
		  
		  PopupMenu_Pairangularsampling.DeleteAllRows
		  PopupMenu_Pairangularsampling.AddRow "Off"
		  PopupMenu_Pairangularsampling.AddRow "Simple"
		  PopupMenu_Pairangularsampling.AddRow "KM"
		  for i=0 to PopupMenu_Pairangularsampling.ListCount-1
		    if EGSnrc.Pairangularsampling=PopupMenu_Pairangularsampling.List(i) Then
		      PopupMenu_Pairangularsampling.ListIndex=i
		    end
		  next
		  
		  
		  PopupMenu_atomicrelax.DeleteAllRows
		  PopupMenu_atomicrelax.AddRow "Off"
		  PopupMenu_atomicrelax.AddRow "On"
		  PopupMenu_atomicrelax.AddRow "On in regions"
		  PopupMenu_atomicrelax.AddRow "Off in regions"
		  for i=0 to PopupMenu_atomicrelax.ListCount-1
		    if EGSnrc.Atomicrelaxations=PopupMenu_atomicrelax.List(i) Then
		      PopupMenu_atomicrelax.ListIndex=i
		    end
		  next
		  
		  
		  PopupMenu_Photon_Cross_Sections.DeleteAllRows
		  PopupMenu_Photon_Cross_Sections.AddRow "Storm-Israel (PEGS4)"
		  PopupMenu_Photon_Cross_Sections.AddRow "epdl"
		  PopupMenu_Photon_Cross_Sections.AddRow "xcom"
		  for i=0 to PopupMenu_Photon_Cross_Sections.ListCount-1
		    if EGSnrc.Photoncrosssections=PopupMenu_Photon_Cross_Sections.List(i) Then
		      PopupMenu_Photon_Cross_Sections.ListIndex=i
		    end
		  next
		  
		  PopupMenu_Photoelectron_angular.DeleteAllRows
		  PopupMenu_Photoelectron_angular.AddRow "Off"
		  PopupMenu_Photoelectron_angular.AddRow "On"
		  PopupMenu_Photoelectron_angular.AddRow "On in regions"
		  PopupMenu_Photoelectron_angular.AddRow "Off in regions"
		  for i=0 to PopupMenu_Photoelectron_angular.ListCount-1
		    if EGSnrc.Photoelectronangularsampling=PopupMenu_Photoelectron_angular.List(i) Then
		      PopupMenu_Photoelectron_angular.ListIndex=i
		    end
		  next
		  
		  
		  
		  popupbrem=True
		  
		  EditField_max_stepSize.Text=str(EGSnrc.Global_SMAX)
		  EditField_max_frac_loss.Text=str(EGSnrc.ESTEPE)
		  EditField_XImax.Text=str(EGSnrc.XImax)
		  EditField_SkinDepth.Text=Format(EGSnrc.Skin_depth_BCA,"-#.####e")
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BEAM As Class_Beam_Inputfile
	#tag EndProperty

	#tag Property, Flags = &h0
		DOSXYZ As Class_DOSXYZ_Input
	#tag EndProperty

	#tag Property, Flags = &h0
		EGSnrc As Class_EGSnrc_Inputs
	#tag EndProperty

	#tag Property, Flags = &h0
		popupbrem As boolean = false
	#tag EndProperty


#tag EndWindowCode

#tag Events EditField_max_stepSize
	#tag Event
		Sub TextChange()
		  EGSnrc.Global_SMAX=Val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_BcA
	#tag Event
		Sub Change()
		  if popupbrem Then
		    EGSnrc.BcA=me.Text
		    
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Close
	#tag Event
		Sub Action()
		  Window_EGSnrc_Inputs.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_EsA
	#tag Event
		Sub Change()
		  if popupbrem Then
		    EGSnrc.Electron_Step_Algorithm = me.Text
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Bremsangular
	#tag Event
		Sub Change()
		  if popupbrem Then
		    EGSnrc.Brems_angular_sampling = me.Text
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_BremsCrossSections
	#tag Event
		Sub Change()
		  if popupbrem Then
		    EGSnrc.Brems_cross_sections = me.Text
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_BoundComptonScattering
	#tag Event
		Sub Change()
		  if popupbrem Then
		    EGSnrc.BoundComptonscattering = me.Text
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Spin
	#tag Event
		Sub Change()
		  if popupbrem Then
		    EGSnrc.Spin_effects = me.Text
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Pairangularsampling
	#tag Event
		Sub Change()
		  if popupbrem Then
		    EGSnrc.Pairangularsampling = me.Text
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_max_frac_loss
	#tag Event
		Sub TextChange()
		  EGSnrc.ESTEPE=Val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_XImax
	#tag Event
		Sub TextChange()
		  EGSnrc.XImax=Val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Rayleigh
	#tag Event
		Sub Change()
		  if popupbrem Then
		    EGSnrc.Rayleighscattering = me.Text
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_SkinDepth
	#tag Event
		Sub TextChange()
		  EGSnrc.Skin_depth_BCA=Val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Electron_Impact_Ionization
	#tag Event
		Sub Change()
		  if popupbrem Then
		    EGSnrc.Electronimpactionization = me.Text
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Photoelectron_angular
	#tag Event
		Sub Change()
		  if popupbrem Then
		    EGSnrc.Photoelectronangularsampling = me.Text
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_atomicrelax
	#tag Event
		Sub Change()
		  if popupbrem Then
		    EGSnrc.Atomicrelaxations = me.Text
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Photon_Cross_Sections
	#tag Event
		Sub Change()
		  if popupbrem Then
		    EGSnrc.Photoncrosssections = me.Text
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
		Name="popupbrem"
		Group="Behavior"
		InitialValue="false"
		Type="boolean"
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
