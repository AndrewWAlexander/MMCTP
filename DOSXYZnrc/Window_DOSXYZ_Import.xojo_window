#tag Window
Begin Window Window_DOSXYZ_Import
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   562
   ImplicitInstance=   True
   LiveResize      =   "True"
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
   Title           =   "DOSXYZnrc 3ddose import"
   Visible         =   True
   Width           =   1041
   Begin GroupBox GroupBox1
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "3ddose file properties"
      Enabled         =   True
      Height          =   151
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   1001
      Begin Label StaticText_X
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
         Left            =   34
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
         Text            =   "Untitled"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   42
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   482
      End
      Begin Label StaticText_Y
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
         Left            =   34
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
         Text            =   "Untitled"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   74
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   482
      End
      Begin Label StaticText_Z
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
         Left            =   34
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
         Text            =   "Untitled"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   106
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   482
      End
   End
   Begin GroupBox GroupBox2
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "McGill RT dose properties"
      Enabled         =   True
      Height          =   365
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
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   177
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   1001
      Begin GroupBox GroupBox3
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "X axis"
         Enabled         =   True
         Height          =   205
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   34
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
         Top             =   287
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   300
         Begin PopupMenu PopupMenu_x_3ddose
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            InitialValue    =   ""
            Italic          =   False
            Left            =   172
            ListIndex       =   0
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
            Top             =   323
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   132
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
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   44
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
            Text            =   "3ddose axis"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   324
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   107
         End
         Begin TextField EditField_X_Grid
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
            Left            =   172
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
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "1"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   433
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   132
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
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   44
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
            Text            =   "Grid Spacing"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   433
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   93
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
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   44
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
            Text            =   "Position offset"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   402
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin TextField EditField_X_offset
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
            Left            =   172
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
            Text            =   "0"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   401
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   132
         End
         Begin TextField EditField_X_coord
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
            Left            =   172
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
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "0"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   369
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   132
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
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   44
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
            Text            =   "1st Coord"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   370
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
      End
      Begin GroupBox GroupBox4
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Y axis"
         Enabled         =   True
         Height          =   205
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   366
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
         Top             =   287
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   300
         Begin TextField EditField_Y_Grid
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
            Left            =   514
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
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "1"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   431
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   132
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
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   386
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
            Text            =   "Grid Spacing"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   431
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   93
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
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   386
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
            Text            =   "Position offset"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   399
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin TextField EditField_Y_offset
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
            Left            =   514
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
            Text            =   "0"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   398
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   132
         End
         Begin PopupMenu PopupMenu_y_3ddose
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            InitialValue    =   ""
            Italic          =   False
            Left            =   514
            ListIndex       =   0
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
            Top             =   323
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   132
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
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   386
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
            Text            =   "3ddose axis"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   324
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   107
         End
         Begin TextField EditField_Y_coord
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
            Left            =   514
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
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "0"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   364
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   132
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
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   386
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
            Text            =   "1st Coord"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   365
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
      End
      Begin GroupBox GroupBox5
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Z axis"
         Enabled         =   True
         Height          =   205
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   701
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
         Top             =   287
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   300
         Begin TextField EditField_Z_Grid
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
            InitialParent   =   "GroupBox5"
            Italic          =   False
            Left            =   849
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
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "1"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   431
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   132
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
            InitialParent   =   "GroupBox5"
            Italic          =   False
            Left            =   721
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
            Text            =   "Grid Spacing"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   431
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   93
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
            InitialParent   =   "GroupBox5"
            Italic          =   False
            Left            =   721
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
            Text            =   "Position offset"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   398
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin TextField EditField_Z_offset
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
            InitialParent   =   "GroupBox5"
            Italic          =   False
            Left            =   849
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
            Text            =   "0"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   398
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   132
         End
         Begin PopupMenu PopupMenu_z_3ddose
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox5"
            InitialValue    =   ""
            Italic          =   False
            Left            =   849
            ListIndex       =   0
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
            Top             =   323
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   132
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
            InitialParent   =   "GroupBox5"
            Italic          =   False
            Left            =   721
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
            Text            =   "3ddose axis"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   324
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   107
         End
         Begin TextField EditField_z_coord
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
            InitialParent   =   "GroupBox5"
            Italic          =   False
            Left            =   849
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
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "0"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   363
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   132
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
            InitialParent   =   "GroupBox5"
            Italic          =   False
            Left            =   721
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
            Text            =   "1st Coord"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   364
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
      End
      Begin TextField EditField_Name
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
         Left            =   172
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
         Top             =   211
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   132
      End
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
         Left            =   34
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
         Text            =   "Name"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   211
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin TextField EditField_Dose_Norm
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
         Left            =   172
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
         Text            =   "1"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   243
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   132
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
         Left            =   34
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
         Text            =   "Dose normalization"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   243
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   126
      End
      Begin PushButton PushButton_Import
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   0
         Cancel          =   False
         Caption         =   "Import"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   480
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
         Top             =   514
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  dddose= new Class_DOSXYZ_3ddose
		  mcgill_dose=new RTOG_Dose_Distribution
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Read()
		  Dim bb as Boolean
		  
		  bb=dddose.read(f)
		  
		  
		  if UBound(dddose.boundaryX)<2 Then
		    Window_DOSXYZ_Import.Close
		  end
		  
		  StaticText_X.value = "X axis : nx = "+str(dddose.Nx)+ ", dx = "+Format(dddose.dx,"-#.#####")+", boundaries = "+Format(dddose.boundaryX(0),"-#.#####")+" : "+Format(dddose.boundaryX(UBound(dddose.boundaryX)),"-#.#####")
		  
		  StaticText_y.value = "Y axis : ny = "+str(dddose.Ny)+ ", dy = "+Format(dddose.dy,"-#.#####")+", boundaries = "+Format(dddose.boundaryy(0),"-#.#####")+" : "+Format(dddose.boundaryy(UBound(dddose.boundaryy)),"-#.#####")
		  
		  StaticText_z.value = "Z axis : nz = "+str(dddose.Nz)+ ", dz = "+Format(dddose.dz,"-#.#####")+", boundaries = "+Format(dddose.boundaryz(0),"-#.#####")+" : "+Format(dddose.boundaryz(UBound(dddose.boundaryz)),"-#.#####")
		  
		  EditField_Name.value = f.Name
		  
		  PopupMenu_x_3ddose.AddRow "x"
		  PopupMenu_x_3ddose.AddRow "y"
		  PopupMenu_x_3ddose.AddRow "z"
		  
		  PopupMenu_y_3ddose.AddRow "x"
		  PopupMenu_y_3ddose.AddRow "y"
		  PopupMenu_y_3ddose.AddRow "z"
		  
		  PopupMenu_z_3ddose.AddRow "x"
		  PopupMenu_z_3ddose.AddRow "y"
		  PopupMenu_z_3ddose.AddRow "z"
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		dddose As class_DOSXYZ_3ddose
	#tag EndProperty

	#tag Property, Flags = &h0
		f As folderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		mcgill_dose As RTOG_Dose_Distribution
	#tag EndProperty

	#tag Property, Flags = &h0
		X_off As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Y_off As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Z_off As single
	#tag EndProperty


#tag EndWindowCode

#tag Events PopupMenu_x_3ddose
	#tag Event
		Sub Change()
		  if me.ListIndex=0 Then
		    EditField_X_Grid.value = Format(dddose.dx,"-#.#####")
		    EditField_X_coord.value = Format(dddose.Coord_X+X_off,"-#.#####")
		    
		  elseif me.ListIndex=1 Then
		    EditField_X_Grid.value = Format(dddose.dy,"-#.#####")
		    EditField_X_coord.value = Format(dddose.Coord_y+X_off,"-#.#####")
		    
		  elseif me.ListIndex=2 Then
		    EditField_X_Grid.value = Format(dddose.dz,"-#.#####")
		    EditField_X_coord.value = Format(dddose.Coord_z+X_off,"-#.#####")
		    
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_X_offset
	#tag Event
		Sub TextChange()
		  X_off=Val(me.Text)
		  
		  if PopupMenu_x_3ddose.ListIndex=0 Then
		    EditField_X_Grid.value = Format(dddose.dx,"-#.#####")
		    EditField_X_coord.value = Format(dddose.Coord_X+X_off,"-#.#####")
		    
		  elseif PopupMenu_x_3ddose.ListIndex=1 Then
		    EditField_X_Grid.value = Format(dddose.dy,"-#.#####")
		    EditField_X_coord.value = Format(dddose.Coord_y+X_off,"-#.#####")
		    
		  elseif PopupMenu_x_3ddose.ListIndex=2 Then
		    EditField_X_Grid.value = Format(dddose.dz,"-#.#####")
		    EditField_X_coord.value = Format(dddose.Coord_z+X_off,"-#.#####")
		    
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Y_offset
	#tag Event
		Sub TextChange()
		  Y_off=val(me.Text)
		  
		  if PopupMenu_y_3ddose.ListIndex=0 Then
		    EditField_y_Grid.value = Format(dddose.dx,"-#.#####")
		    EditField_y_coord.value = Format(dddose.Coord_X+y_off,"-#.#####")
		    
		  elseif PopupMenu_y_3ddose.ListIndex=1 Then
		    EditField_y_Grid.value = Format(dddose.dy,"-#.#####")
		    EditField_y_coord.value = Format(dddose.Coord_y+y_off,"-#.#####")
		    
		  elseif PopupMenu_y_3ddose.ListIndex=2 Then
		    EditField_y_Grid.value = Format(dddose.dz,"-#.#####")
		    EditField_y_coord.value = Format(dddose.Coord_z+y_off,"-#.#####")
		    
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_y_3ddose
	#tag Event
		Sub Change()
		  if me.ListIndex=0 Then
		    EditField_y_Grid.value = Format(dddose.dx,"-#.#####")
		    EditField_Y_coord.value = Format(dddose.Coord_x+Y_off,"-#.###")
		  elseif me.ListIndex=1 Then
		    EditField_y_Grid.value = Format(dddose.dy,"-#.#####")
		    EditField_Y_coord.value = Format(dddose.Coord_y+Y_off,"-#.###")
		  elseif me.ListIndex=2 Then
		    EditField_y_Grid.value = Format(dddose.dz,"-#.#####")
		    EditField_Y_coord.value = Format(dddose.Coord_z+Y_off,"-#.###")
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Z_offset
	#tag Event
		Sub TextChange()
		  Z_off=val(me.Text)
		  
		  if PopupMenu_z_3ddose.ListIndex=0 Then
		    EditField_z_Grid.value = Format(dddose.dx,"-#.#####")
		    EditField_z_coord.value = Format(dddose.Coord_X+z_off,"-#.#####")
		    
		  elseif PopupMenu_z_3ddose.ListIndex=1 Then
		    EditField_z_Grid.value = Format(dddose.dy,"-#.#####")
		    EditField_z_coord.value = Format(dddose.Coord_y+z_off,"-#.#####")
		    
		  elseif PopupMenu_z_3ddose.ListIndex=2 Then
		    EditField_z_Grid.value = Format(dddose.dz,"-#.#####")
		    EditField_z_coord.value = Format(dddose.Coord_z+z_off,"-#.#####")
		    
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_z_3ddose
	#tag Event
		Sub Change()
		  if me.ListIndex=0 Then
		    EditField_z_Grid.value = Format(dddose.dx,"-#.#####")
		    EditField_z_coord.value = Format(dddose.Coord_x+z_off,"-#.###")
		    
		  elseif me.ListIndex=1 Then
		    EditField_z_Grid.value = Format(dddose.dy,"-#.#####")
		    EditField_z_coord.value = Format(dddose.Coord_y+z_off,"-#.###")
		    
		  elseif me.ListIndex=2 Then
		    EditField_z_Grid.value = Format(dddose.dz,"-#.#####")
		    EditField_z_coord.value = Format(dddose.Coord_z+z_off,"-#.###")
		    
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Import
	#tag Event
		Sub Action()
		  //------------------------------------
		  // Transfer 3ddose to McGill RT dose
		  //
		  //------------------------------------
		  Dim i,j,k as Integer
		  Dim dose_plane as RTOG_Dose_Plane
		  Dim value,norm as Double
		  //------------------------------------
		  
		  
		  if PopupMenu_x_3ddose.ListIndex<>PopupMenu_y_3ddose.ListIndex and _ 
		    PopupMenu_x_3ddose.ListIndex<>PopupMenu_z_3ddose.ListIndex and _ 
		    PopupMenu_y_3ddose.ListIndex<>PopupMenu_z_3ddose.ListIndex then
		    
		    norm=100/val(EditField_Dose_Norm.Text)
		    
		    x_off=val(EditField_X_offset.Text)
		    y_off=Val(EditField_Y_offset.Text)
		    z_off=Val(EditField_Z_offset.Text)
		    
		    
		    // Determine which is the Z axis
		    if PopupMenu_z_3ddose.ListIndex=0 Then
		      mcgill_dose.Size_of_Dimension3=dddose.Nx
		      mcgill_dose.Depth_Grid=dddose.dx
		      mcgill_dose.Coord_3_1st_point=dddose.boundaryX(0)+mcgill_dose.Depth_Grid/2+z_off
		    elseif PopupMenu_z_3ddose.ListIndex=1 Then
		      mcgill_dose.Size_of_Dimension3=dddose.Ny
		      mcgill_dose.Depth_Grid=dddose.dy
		      mcgill_dose.Coord_3_1st_point=dddose.boundaryy(0)+mcgill_dose.Depth_Grid/2+z_off
		    elseif PopupMenu_z_3ddose.ListIndex=2 Then
		      mcgill_dose.Size_of_Dimension3=dddose.Nz
		      mcgill_dose.Depth_Grid=dddose.dz
		      mcgill_dose.Coord_3_1st_point=dddose.boundaryz(0)+mcgill_dose.Depth_Grid/2+z_off
		    end
		    
		    // Determine which is the X axis
		    if PopupMenu_x_3ddose.ListIndex=0 Then
		      mcgill_dose.Size_of_Dimension1=dddose.Nx
		      mcgill_dose.Horizontal_Grid=dddose.dx
		      mcgill_dose.Coord_1_1st_point=dddose.boundaryX(0)+mcgill_dose.Horizontal_Grid/2+x_off
		    elseif PopupMenu_x_3ddose.ListIndex=1 Then
		      mcgill_dose.Size_of_Dimension1=dddose.Ny
		      mcgill_dose.Horizontal_Grid=dddose.dy
		      mcgill_dose.Coord_1_1st_point=dddose.boundaryy(0)+mcgill_dose.Horizontal_Grid/2+x_off
		    elseif PopupMenu_x_3ddose.ListIndex=2 Then
		      mcgill_dose.Size_of_Dimension1=dddose.Nz
		      mcgill_dose.Horizontal_Grid=dddose.dz
		      mcgill_dose.Coord_1_1st_point=dddose.boundaryz(0)+mcgill_dose.Horizontal_Grid/2+x_off
		    end
		    
		    // Determine which is the Y axis
		    if PopupMenu_y_3ddose.ListIndex=0 Then
		      mcgill_dose.Size_of_Dimension2=dddose.Nx
		      mcgill_dose.Vertical_Grid=dddose.dx
		      mcgill_dose.Coord_2_1st_point=dddose.boundaryX(0)+mcgill_dose.Vertical_Grid/2+y_off
		    elseif PopupMenu_y_3ddose.ListIndex=1 Then
		      mcgill_dose.Size_of_Dimension2=dddose.Ny
		      mcgill_dose.Vertical_Grid=dddose.dy
		      mcgill_dose.Coord_2_1st_point=dddose.boundaryy(0)+mcgill_dose.Vertical_Grid/2+y_off
		    elseif PopupMenu_y_3ddose.ListIndex=2 Then
		      mcgill_dose.Size_of_Dimension2=dddose.Nz
		      mcgill_dose.Vertical_Grid=dddose.dz
		      mcgill_dose.Coord_2_1st_point=dddose.boundaryz(0)+mcgill_dose.Vertical_Grid/2+y_off
		    end
		    
		    mcgill_dose.Dose_name=EditField_Name.Text
		    
		    
		    
		    PW_Title="3ddose to McGill RT"
		    PW_Progress_Max=mcgill_dose.Size_of_Dimension3-1
		    PW_Show=true
		    
		    
		    
		    // Start transfering 3ddose to McGill RT
		    for k=0 to mcgill_dose.Size_of_Dimension3-1
		      dose_plane=new RTOG_Dose_Plane
		      dose_plane.Z=mcgill_dose.Coord_3_1st_point+k*mcgill_dose.Depth_Grid
		      PW_StaticText="Reading Z Plane :"+ str(k+1)+"/"+str(mcgill_dose.Size_of_Dimension3)
		      PW_Progress=k
		      
		      
		      ReDim dose_plane.Points(mcgill_dose.Size_of_Dimension1*mcgill_dose.Size_of_Dimension2-1)
		      //Loop for all points 
		      for i=0 to mcgill_dose.Size_of_Dimension1-1
		        for j=0 to mcgill_dose.Size_of_Dimension2-1
		          
		          // Determine which 3ddose axis is correct
		          if PopupMenu_z_3ddose.ListIndex=0 Then
		            if PopupMenu_x_3ddose.ListIndex=1 Then
		              if PopupMenu_y_3ddose.ListIndex=2 Then
		                value=dddose.dose(k,i,j)
		              end
		            elseif PopupMenu_x_3ddose.ListIndex=2 Then
		              if PopupMenu_y_3ddose.ListIndex=1 Then
		                value=dddose.dose(k,j,i)
		              end
		            end
		          elseif PopupMenu_z_3ddose.ListIndex=1 Then
		            if PopupMenu_x_3ddose.ListIndex=0 Then
		              if PopupMenu_y_3ddose.ListIndex=2 Then
		                value=dddose.dose(i,k,j)
		              end
		            elseif PopupMenu_x_3ddose.ListIndex=2 Then
		              if PopupMenu_y_3ddose.ListIndex=0 Then
		                value=dddose.dose(j,k,i)
		              end
		            end
		          elseif PopupMenu_z_3ddose.ListIndex=2 Then
		            if PopupMenu_x_3ddose.ListIndex=0 Then
		              if PopupMenu_y_3ddose.ListIndex=1 Then
		                value=dddose.dose(i,j,k)
		              end
		            elseif PopupMenu_x_3ddose.ListIndex=1 Then
		              if PopupMenu_y_3ddose.ListIndex=0 Then
		                value=dddose.dose(j,i,k)
		              end
		            end
		          end
		          
		          // Find max and min dose values
		          value=value*norm
		          if value>mcgill_dose.Dmax Then
		            mcgill_dose.Dmax=value
		          elseif value< mcgill_dose.Dmin Then
		            mcgill_dose.Dmin=value
		          end
		          
		          dose_plane.Points(i+j*(mcgill_dose.Size_of_Dimension1))=value
		        next
		      next
		      
		      //End loop for each Z plane
		      mcgill_dose.Dose_Distribution.Append dose_plane
		    next
		    
		    
		    // Save dose to disk
		    gRTOG.Plan(Plan_Index).Dose.append mcgill_dose
		    gRTOG.Plan(Plan_Index).Write_McGill_Dose(UBound(gRTOG.Plan(Plan_Index).Dose))
		    Window_Treatment.Window_Update_Plan
		    PW_Show=false
		  end if
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
	#tag ViewProperty
		Name="X_off"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="single"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Y_off"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="single"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Z_off"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="single"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
