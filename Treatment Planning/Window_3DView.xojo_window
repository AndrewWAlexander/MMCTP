#tag Window
Begin Window Window_3DView
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   635
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   -1100839426
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   2
   Resizeable      =   True
   Title           =   "3D Viewer"
   Visible         =   True
   Width           =   745
   Begin Rb3dSpace_MMCTP Canvas_3D
      canvas_scale    =   0.0
      Enabled         =   True
      Index           =   0
      InitialParent   =   ""
      JAW_Index       =   0
      LockedInPosition=   False
      mCamAltitude    =   0.0
      mCamAngle       =   0.0
      mLastX          =   0
      mLastY          =   0
      MLC_Index       =   0
      Scope           =   0
      TabPanelIndex   =   0
      Untitled1       =   0
   End
   Begin TabPanel TabPanel1
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   260
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   False
      TabDefinition   =   "View\rEdit"
      TabIndex        =   35
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   363
      Underline       =   False
      Value           =   0
      Visible         =   True
      Width           =   705
      Begin TextField EditField_Scale
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
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   585
         LimitText       =   4
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "100"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   562
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   75
      End
      Begin Label StaticText_Scale
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   464
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Scale"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   563
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   88
      End
      Begin Slider Slider_Scale
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Left            =   464
         LineStep        =   1
         LiveScroll      =   True
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Maximum         =   1500
         Minimum         =   0
         PageStep        =   20
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         TickStyle       =   "0"
         Top             =   595
         Value           =   0
         Visible         =   True
         Width           =   242
      End
      Begin Slider Slider_Couch
         AutoDeactivate  =   True
         Enabled         =   False
         Height          =   16
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Left            =   148
         LineStep        =   1
         LiveScroll      =   True
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Maximum         =   359
         Minimum         =   0
         PageStep        =   1
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         TickStyle       =   "0"
         Top             =   512
         Value           =   180
         Visible         =   True
         Width           =   194
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
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Couch"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   508
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   57
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
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Collimator"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   469
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   76
      End
      Begin Slider Slider_Collimator
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   17
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Left            =   148
         LineStep        =   1
         LiveScroll      =   True
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Maximum         =   359
         Minimum         =   0
         PageStep        =   1
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   2
         TabStop         =   True
         TickStyle       =   "0"
         Top             =   469
         Value           =   180
         Visible         =   True
         Width           =   194
      End
      Begin Slider Slider_Gantry
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   16
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Left            =   148
         LineStep        =   1
         LiveScroll      =   True
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Maximum         =   359
         Minimum         =   0
         PageStep        =   1
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   2
         TabStop         =   True
         TickStyle       =   "0"
         Top             =   428
         Value           =   0
         Visible         =   True
         Width           =   194
      End
      Begin Label StaticText4
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   40
         LockBottom      =   True
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
         Text            =   "Gantry"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   424
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   57
      End
      Begin CheckBox CheckBox_Jaws
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "View Jaws"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   38
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   1
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   471
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   87
      End
      Begin CheckBox CheckBox_BEV
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "snap to BEV"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   150
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   501
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   102
      End
      Begin CheckBox CheckBox_Field
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "View Field Marks"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   150
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   1
         TabIndex        =   5
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   469
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   123
      End
      Begin CheckBox CheckBox_surface
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Surface Render"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   239
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   6
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   439
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   131
      End
      Begin CheckBox CheckBox_Wireframe
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Wire"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   150
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   7
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   439
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   77
      End
      Begin CheckBox CheckBox_axis
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Axis"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   38
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   8
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   533
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   71
      End
      Begin CheckBox CheckBox_show_struc
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Structures"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   38
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   1
         TabIndex        =   9
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   439
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   89
      End
      Begin CheckBox CheckBox_show_isocenter
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Isocenter"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   38
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   1
         TabIndex        =   10
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   501
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   103
      End
      Begin CheckBox CheckBox_MLC
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "View MLC"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   38
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   1
         TabIndex        =   11
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   564
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   93
      End
      Begin CheckBox CheckBox_Debug
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Debug sky"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   603
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   12
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   422
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   94
      End
      Begin CheckBox CheckBox_Ambient
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Ambient Light"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   24
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   445
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         State           =   1
         TabIndex        =   13
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   488
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   123
      End
      Begin Slider Slider_Ambient
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   16
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Left            =   568
         LineStep        =   1
         LiveScroll      =   True
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Maximum         =   100
         Minimum         =   0
         PageStep        =   20
         Scope           =   0
         TabIndex        =   14
         TabPanelIndex   =   1
         TabStop         =   True
         TickStyle       =   "0"
         Top             =   490
         Value           =   50
         Visible         =   True
         Width           =   123
      End
      Begin CheckBox CheckBox_Flood
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Flood Light"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   29
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   443
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         State           =   1
         TabIndex        =   15
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   454
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   109
      End
      Begin Slider Slider_Flood
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   16
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Left            =   585
         LineStep        =   1
         LiveScroll      =   True
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Maximum         =   100
         Minimum         =   0
         PageStep        =   20
         Scope           =   0
         TabIndex        =   16
         TabPanelIndex   =   1
         TabStop         =   True
         TickStyle       =   "0"
         Top             =   460
         Value           =   50
         Visible         =   True
         Width           =   123
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
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   603
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   17
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Sky Color"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   392
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   66
      End
      Begin Rectangle Rectangle_SkyColour
         AutoDeactivate  =   True
         BorderWidth     =   1
         BottomRightColor=   &c00000000
         Enabled         =   True
         FillColor       =   &c00000000
         Height          =   17
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Left            =   681
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   18
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   393
         TopLeftColor    =   &c00000000
         Visible         =   True
         Width           =   33
      End
      Begin Slider Slider_Image
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Left            =   143
         LineStep        =   1
         LiveScroll      =   True
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Maximum         =   10
         Minimum         =   0
         PageStep        =   1
         Scope           =   0
         TabIndex        =   19
         TabPanelIndex   =   1
         TabStop         =   True
         TickStyle       =   "0"
         Top             =   407
         Value           =   0
         Visible         =   True
         Width           =   150
      End
      Begin CheckBox CheckBox_Images
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Images"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   38
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   20
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   407
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin Slider Slider_MLC_Field
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Left            =   143
         LineStep        =   1
         LiveScroll      =   True
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Maximum         =   100
         Minimum         =   0
         PageStep        =   20
         Scope           =   0
         TabIndex        =   21
         TabPanelIndex   =   1
         TabStop         =   True
         TickStyle       =   "0"
         Top             =   562
         Value           =   0
         Visible         =   True
         Width           =   150
      End
      Begin CheckBox CheckBox_Floor
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Floor Plane"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   29
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   443
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         State           =   1
         TabIndex        =   22
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   521
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   109
      End
      Begin TextField EditField_Nz
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
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   315
         LimitText       =   4
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   23
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "0"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   406
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   75
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  app.which_window_3d=False
		  
		  if TargetWin32 Then
		    Task_3DViewer.Enabled=False
		    MsgBox "The 3D viwer on Windows is not stable, please close MMCTP before opening the 3D viewer again."
		  end
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  app.which_window_3d=True
		  Open_Settings
		  Update_Settings
		  
		  'Canvas_3D(0).Visible=True
		  'Canvas_3D(0).Enabled=True
		  'Canvas_3D(0).Refresh(False)
		  
		  DoNothing=False
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  if Canvas_3D(0)<>nil Then
		    'Canvas_3D(0).Visible=True'
		    'Canvas_3D(0).Enabled=True
		    'Canvas_3D(0).Refresh
		  end
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Open_Settings()
		  Slider_Image.Maximum=gvis.nz-1
		  Slider_Image.Minimum=0
		  Slider_Image.value=0
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Settings()
		  //------------------------------------
		  // Update BEAM settings within 3D window
		  //
		  // Alexander
		  // June 2011
		  //------------------------------------
		  
		  if Plan_Index>-1 and Plan_Index<= UBound(gRTOG.Plan) Then
		    if UBound(gRTOG.Plan(Plan_Index).Beam)>-1 and RTOGBeam_Index>-1 and UBound(gRTOG.Plan(Plan_Index).Beam)>= RTOGBeam_Index Then
		      BEAM=gRTOG.Plan(Plan_Index).Beam(RTOGBeam_Index)
		      Slider_MLC_Field.Maximum=BEAM.mlc.NumberofFields-1
		      Slider_MLC_Field.Minimum=0
		      Slider_MLC_Field.value=0
		      //Window_3dview.Slider_Gantry.Value=Beam.Collimator.Fields(JAW_Index).Gantry_Angle
		      //Window_3dview.Slider_Couch.Value=Beam.Collimator.Fields(JAW_Index).Couch_Angle+180
		      //Window_3dview.Slider_Collimator.Value=Beam.Collimator.Fields(JAW_Index).Collimator_Angle+180
		    end
		  end
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BEAM As RTOG_Beam_Geometry
	#tag EndProperty

	#tag Property, Flags = &h0
		DoNothing As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		JAW_Index As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events EditField_Scale
	#tag Event
		Sub TextChange()
		  Slider_Scale.Value=val(me.Text)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider_Scale
	#tag Event
		Sub ValueChanged()
		  Canvas_3D(0).canvas_scale=Slider_Scale.Value/10
		  Canvas_3D(0).Update_Camera_Position
		  'Canvas_3D(0).Refresh(false)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  EditField_Scale.Text=Format(Canvas_3D(0).canvas_scale,"#.##")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider_Couch
	#tag Event
		Sub ValueChanged()
		  'Dim value as Single
		  '
		  'Value=me.Value
		  '
		  'if DoNothing=False Then
		  '//if //Canvas_3D(0).Beam<>nil Then
		  '//Canvas_3D(0).Beam.Couch_Angle=value-180
		  'Window_Treatment.Beam_Update_Beam
		  '//end
		  '
		  '//Canvas_3D(0).Update_Camera_Position
		  '
		  'end
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider_Collimator
	#tag Event
		Sub ValueChanged()
		  'Dim value as Single
		  '
		  'Value=me.Value
		  '//if //Canvas_3D(0) <> nil Then
		  '
		  'if DoNothing=False Then
		  '//if //Canvas_3D(0).Beam<>nil Then
		  '//Canvas_3D(0).Beam.Collimator.Fields(0).Collimator_Angle=value-180
		  'Window_Treatment.Beam_Update_Beam
		  '//Canvas_3D(0).Update_Jaws
		  '//Canvas_3D(0).Update_MLC
		  '//Canvas_3D(0).Update_Crosshairs
		  '//end if
		  '//Canvas_3D(0).Update_Camera_Position
		  '//'Canvas_3D(0).Refresh
		  'end
		  '
		  '//end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider_Gantry
	#tag Event
		Sub ValueChanged()
		  'Dim value as Single
		  '
		  'Value=me.Value
		  '//if //Canvas_3D(0) <> nil Then
		  '
		  '
		  '//if //Canvas_3D(0).Beam<>nil Then
		  '//Canvas_3D(0).Beam.Collimator.Fields(0).Gantry_Angle=value
		  'Window_Treatment.Beam_Update_Beam
		  '//Canvas_3D(0).Update_Jaws
		  '//Canvas_3D(0).Update_Crosshairs
		  '//Canvas_3D(0).Update_FLEC
		  '//Canvas_3D(0).Update_MLC
		  '
		  '//end
		  '//Canvas_3D(0).Update_Camera_Position
		  '//'Canvas_3D(0).Refresh
		  '
		  '//end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Jaws
	#tag Event
		Sub Action()
		  Canvas_3D(0).Update_Room
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_BEV
	#tag Event
		Sub Action()
		  // Load new camera
		  
		  Canvas_3D(0).Update_Camera_Position
		  'Canvas_3D(0).Refresh
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Field
	#tag Event
		Sub Action()
		  Canvas_3D(0).Update_Room
		  'Canvas_3D(0).Refresh
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_surface
	#tag Event
		Sub Action()
		  Canvas_3D(0).update_Room
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Wireframe
	#tag Event
		Sub Action()
		  Canvas_3D(0).update_Room
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_axis
	#tag Event
		Sub Action()
		  Canvas_3D(0).Update_Room
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_show_struc
	#tag Event
		Sub Action()
		  Canvas_3D(0).Update_Room
		  //'Canvas_3D(0).Refresh
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_show_isocenter
	#tag Event
		Sub Action()
		  Canvas_3D(0).Update_Room
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_MLC
	#tag Event
		Sub Action()
		  Canvas_3D(0).Update_Room
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Debug
	#tag Event
		Sub Action()
		  //if //Canvas_3D(0) <> nil Then
		  
		  Canvas_3D(0).update_Room
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Ambient
	#tag Event
		Sub Action()
		  //if //Canvas_3D(0) <> nil Then
		  
		  Canvas_3D(0).update_Room
		  //'Canvas_3D(0).Refresh
		  //end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider_Ambient
	#tag Event
		Sub ValueChanged()
		  //if //Canvas_3D(0) <> nil Then
		  
		  if DoNothing=False Then
		    Canvas_3D(0).update_Room
		    //'Canvas_3D(0).Refresh
		  end
		  //end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Flood
	#tag Event
		Sub Action()
		  //if //Canvas_3D(0) <> nil Then
		  
		  Canvas_3D(0).update_Room
		  //'Canvas_3D(0).Refresh
		  //end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider_Flood
	#tag Event
		Sub ValueChanged()
		  //if //Canvas_3D(0) <> nil Then
		  
		  if DoNothing=False Then
		    
		    Canvas_3D(0).update_Room
		    //'Canvas_3D(0).Refresh
		  end
		  //end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Rectangle_SkyColour
	#tag Event
		Sub Open()
		  'me.FillColor= Canvas_3D(0).SkyColor
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim mycolor as color
		  dim b as Boolean
		  
		  mycolor=me.FillColor
		  
		  if (SelectColor(mycolor, "Select a color")) then
		    me.FillColor=mycolor
		    'Canvas_3D(0).SkyColor=mycolor
		    'Canvas_3D(0).Refresh
		  end if
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Slider_Image
	#tag Event
		Sub ValueChanged()
		  EditField_Nz.Text=Str(me.Value)
		  Canvas_3D(0).update_Room
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Images
	#tag Event
		Sub Action()
		  Canvas_3D(0).Update_Room
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider_MLC_Field
	#tag Event
		Sub ValueChanged()
		  Canvas_3D(0).Update_Beaminfo
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Floor
	#tag Event
		Sub Action()
		  Canvas_3D(0).update_Room
		  'Canvas_3D(0).Refresh
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Nz
	#tag Event
		Sub TextChange()
		  Slider_Image.Value=val(me.Text)
		  
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
		Name="JAW_Index"
		Group="Behavior"
		Type="Integer"
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
