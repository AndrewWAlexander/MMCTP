#tag Window
Begin Window Window_CreatBox
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   508
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
   Resizeable      =   False
   Title           =   "Physics Box"
   Visible         =   True
   Width           =   572
   Begin PushButton PushButton_Make
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Creat patient"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   214
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   468
      Underline       =   False
      Visible         =   True
      Width           =   144
   End
   Begin Label StaticText14
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   25
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
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "This windows allows the user to creat a mock McGill RT patient based on the values below"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   532
   End
   Begin TabPanel TabPanel1
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   403
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
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   False
      TabDefinition   =   "Patient Info\rImage Size\rHU values"
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   53
      Underline       =   False
      Value           =   1
      Visible         =   True
      Width           =   532
      Begin GroupBox GroupBox1
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Patient Info"
         Enabled         =   True
         Height          =   348
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   29
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
         Top             =   90
         Underline       =   False
         Visible         =   True
         Width           =   514
         Begin Label StaticText12
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   68
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Patient Name"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   123
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   168
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   68
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Patient Surname"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   157
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   168
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   68
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Patient ID"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   191
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   168
         End
         Begin TextField EditField_ID
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   308
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
            Text            =   "00000001"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   189
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   106
         End
         Begin TextField EditField_PSName
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   308
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
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Box"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   155
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   106
         End
         Begin TextField EditField_PName
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   308
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
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Physics"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   121
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   106
         End
         Begin Label StaticText31111
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   68
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   True
            Scope           =   0
            Selectable      =   False
            TabIndex        =   6
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Patient Position"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   223
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   158
         End
         Begin TextField EditField_PatientP
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   308
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
            TabIndex        =   7
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "HFS"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   224
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   106
         End
      End
      Begin TextField EditField_HU
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
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   251
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
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "0"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   117
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   77
      End
      Begin GroupBox GroupBox2
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Mock image Info"
         Enabled         =   True
         Height          =   299
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   90
         Underline       =   False
         Visible         =   True
         Width           =   512
         Begin Label StaticText1
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   43
            LockBottom      =   False
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
            Text            =   "nz (Number of voxels in z)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   117
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   146
         End
         Begin TextField EditField1_slices
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
            Left            =   201
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
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "120"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   116
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   48
         End
         Begin TextField EditField_nx
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
            Left            =   201
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
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "256"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   150
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   48
         End
         Begin TextField EditField_ny
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
            Left            =   201
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
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "256"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   183
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   48
         End
         Begin TextField EditField_dz
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
            Left            =   380
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
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "0.3"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   115
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   68
         End
         Begin TextField EditField_dx
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
            Left            =   380
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
            TabIndex        =   7
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "0.15"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   150
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   68
         End
         Begin TextField EditField_dy
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
            Left            =   380
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
            TabIndex        =   8
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "0.15"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   181
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   68
         End
         Begin Label StaticText2
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   43
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
            Text            =   "ny (Number of voxels in y)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   184
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   146
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
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   43
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   10
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "nx (Number of voxels in x)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   151
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   146
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
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   269
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   11
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "dy (voxel size cm)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   183
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   99
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
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   269
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   12
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "dx (voxel size cm)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   150
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   99
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
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   269
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   13
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "dz (voxel size cm)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   117
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   99
         End
         Begin TextField EditField_ny1
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
            Left            =   447
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
            TabIndex        =   14
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "10"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   286
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   48
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
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   289
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
            Text            =   "coordiante 1st y (cm)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   287
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   146
         End
         Begin Label StaticText31
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   289
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   16
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "coordiante 1st x (cm)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   254
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   146
         End
         Begin TextField EditField_nx1
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
            Left            =   447
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
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "-10"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   253
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   48
         End
         Begin TextField EditField1_slices1
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
            Left            =   447
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
            TabIndex        =   18
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "0"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   219
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   48
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
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   289
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   19
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "coordiante 1st z (cm)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   220
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   146
         End
      End
      Begin RadioButton RadioButton_Uniform
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Uniform CT number all pixels (HU)"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   39
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   117
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   200
      End
      Begin RadioButton RadioButton_Gradient
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Gradient CT numbers"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   39
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   184
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   200
      End
      Begin Listbox Listbox_Gradient
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
         Height          =   137
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   39
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
         TabIndex        =   5
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   222
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   494
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Listbox_Gradient.DeleteAllRows
		  
		  Listbox_Gradient.Heading(0)= "Parameter"
		  Listbox_Gradient.Heading(1)= "Value"
		  
		  Listbox_Gradient.ColumnType(1)=3
		  Listbox_Gradient.AddRow "Initial HU value","-1000"
		  Listbox_Gradient.AddRow "Voxel step size","50"
		  Listbox_Gradient.AddRow "HU step size","100"
		  
		  
		  EditField1_slices.Text=Str(nz)
		  EditField_nx.Text=Str(nx)
		  EditField_ny.Text=Str(ny)
		  EditField_dz.Text=Str(dz)
		  EditField_dx.Text=Str(dx)
		  EditField_dy.Text=Str(dy)
		  EditField1_slices1.Text=Str(z1)
		  EditField_nx1.Text=Str(x1)
		  EditField_ny1.Text=Str(y1)
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		dx As single = 0.078125
	#tag EndProperty

	#tag Property, Flags = &h0
		dy As single = 0.078125
	#tag EndProperty

	#tag Property, Flags = &h0
		dz As single = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		McGillRT As Thread_RTOG
	#tag EndProperty

	#tag Property, Flags = &h0
		nx As Integer = 512
	#tag EndProperty

	#tag Property, Flags = &h0
		ny As Integer = 512
	#tag EndProperty

	#tag Property, Flags = &h0
		nz As Integer = 40
	#tag EndProperty

	#tag Property, Flags = &h0
		x1 As single = -20
	#tag EndProperty

	#tag Property, Flags = &h0
		y1 As single = -20
	#tag EndProperty

	#tag Property, Flags = &h0
		z1 As single = -20
	#tag EndProperty


#tag EndWindowCode

#tag Events PushButton_Make
	#tag Event
		Sub Action()
		  //---------------------------------------------
		  // Make new image dataset
		  //
		  //---------------------------------------------
		  Dim i,j,k,hu,hu_s,hu_del,v_del as Integer
		  Dim b as Boolean
		  Dim image as RTOG_Scan
		  Dim dd as date
		  //---------------------------------------------
		  
		  dd=new Date
		  McGillRT=nil
		  McGillRT= new Thread_RTOG
		  McGillrt.Patient_Name=EditField_PName.Text
		  McGillrt.Patient_Surname=EditField_PsName.Text
		  McGillRT.PatientPosition=EditField_PatientP.Text
		  McGillRT.Patient_ID=EditField_id.Text
		  McGillRT.DICOM_Study_Date=str(dd.Year)+Format(dd.Month,"00")+Format(dd.Day,"00")
		  McGillRT.DICOM_Study_Time=Format(dd.Hour,"00")+Format(dd.Minute,"00")+Format(dd.Second,"00")
		  McGillRT.StudyID="test"
		  McGillRT.DICOM_Study_Description="HUtest"
		  McGillRT.SeriesNumber="1"
		  McGillRT.seriesdescription="MMCTP Image Set"
		  McGillRT.DICOM_Birthdate=McGillRT.DICOM_Study_Date
		  McGillRT.DICOM_Sex="F"
		  
		  
		  
		  
		  hu=val(EditField_HU.Text)
		  
		  McGillRT.SeriesInstanceUID=gDICOM.UID_Make
		  McGillRT.StudyInstanceUID=gDICOM.UID_Make
		  
		  
		  for i=1 to nz
		    image=new RTOG_Scan
		    image.DICOM_SOP_Instance_UID=McGillRT.SeriesInstanceUID+"."+str(i)
		    Image.Scan_date =McGillRT.DICOM_Study_Date
		    Image.Slice_Thickness=dz
		    Image.Grid_Units_Height=dy
		    Image.Grid_Units_Width=dx
		    Image.Size_of_Dimension1=nx
		    Image.Size_of_Dimension2=ny
		    Image.Image_Modality="CT"
		    Image.scan_type="Axial"
		    Image.Image_Type="Axial"
		    Image.Bytes_per_Pixel=2
		    Image.Z_Value=dz*(i-1)+z1
		    Image.X_Offset=x1
		    Image.y_Offset=y1
		    
		    if RadioButton_Uniform.Value Then
		      for j=1 to nx*ny
		        Image.voxel.Append hu
		      next
		    else
		      hu_s=val(Listbox_Gradient.Cell(0,1))
		      hu_del=val(Listbox_Gradient.Cell(2,1))
		      v_del=val(Listbox_Gradient.Cell(1,1))
		      hu=hu_s
		      for j=1 to ny
		        if  (j mod v_del) =0 Then
		          hu=hu+hu_del
		        end
		        for k=1 to nx
		          Image.voxel.Append hu
		        Next
		      Next
		    end
		    McGillRT.Scan.Append Image
		  next
		  
		  
		  if UBound(McGillRT.Scan)>-1 Then
		    if RadioButton_Uniform.Value Then
		      if UBound(McGillRT.Scan(0).voxel)>-1 Then
		        McGillRT.Scan(0).voxel(0)=1
		      end
		    end
		  end
		  
		  b=McGillRT.Write_McGill
		  Window_CreatBox.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_PatientP
	#tag Event
		Sub TextChange()
		  gRTOG.PatientPosition=Trim(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField1_slices
	#tag Event
		Sub TextChange()
		  nz=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_nx
	#tag Event
		Sub TextChange()
		  nx=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_ny
	#tag Event
		Sub TextChange()
		  ny=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_dz
	#tag Event
		Sub TextChange()
		  dz=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_dx
	#tag Event
		Sub TextChange()
		  dx=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_dy
	#tag Event
		Sub TextChange()
		  dy=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_ny1
	#tag Event
		Sub TextChange()
		  y1=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_nx1
	#tag Event
		Sub TextChange()
		  x1=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField1_slices1
	#tag Event
		Sub TextChange()
		  z1=val(me.Text)
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
		Name="dx"
		Group="Behavior"
		InitialValue="0"
		Type="single"
	#tag EndViewProperty
	#tag ViewProperty
		Name="dy"
		Group="Behavior"
		InitialValue="0"
		Type="single"
	#tag EndViewProperty
	#tag ViewProperty
		Name="dz"
		Group="Behavior"
		InitialValue="0"
		Type="single"
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
		Name="nx"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ny"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="nz"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
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
	#tag ViewProperty
		Name="x1"
		Group="Behavior"
		InitialValue="-20"
		Type="single"
	#tag EndViewProperty
	#tag ViewProperty
		Name="y1"
		Group="Behavior"
		InitialValue="-20"
		Type="single"
	#tag EndViewProperty
	#tag ViewProperty
		Name="z1"
		Group="Behavior"
		InitialValue="-20"
		Type="single"
	#tag EndViewProperty
#tag EndViewBehavior
