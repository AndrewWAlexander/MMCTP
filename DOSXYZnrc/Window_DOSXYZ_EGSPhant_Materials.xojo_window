#tag Window
Begin Window Window_DOSXYZ_EGSPhant_Materials
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   3
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   699
   ImplicitInstance=   True
   LiveResize      =   "False"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   False
   Title           =   "EGSPhant Materials & Densities"
   Visible         =   True
   Width           =   850
   Begin TabPanel TabPanel1
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   665
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   False
      TabDefinition   =   "Contour Settings\rCT Settings\rManual Settings\rEGSPhant"
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Value           =   3
      Visible         =   True
      Width           =   810
      Begin GroupBox GroupBox3
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Contour Fill"
         Enabled         =   True
         Height          =   449
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   31
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   23
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   56
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   788
         Begin ListBox ListBox_ContourFill
            AutoDeactivate  =   True
            AutoHideScrollbars=   True
            Bold            =   False
            Border          =   True
            ColumnCount     =   5
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
            Height          =   382
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            InitialValue    =   ""
            Italic          =   False
            Left            =   56
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            RequiresSelection=   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollBarVertical=   True
            SelectionType   =   0
            TabIndex        =   22
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   82
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   752
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin UpDownArrows UpDownArrows1
            AcceptFocus     =   False
            AutoDeactivate  =   True
            Enabled         =   True
            Height          =   382
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            Left            =   37
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   82
            Transparent     =   False
            Visible         =   True
            Width           =   11
         End
         Begin Label StaticText1
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   21
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            Italic          =   True
            Left            =   56
            LockBottom      =   True
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
            Text            =   "www.webelements.com"
            TextAlign       =   0
            TextColor       =   &c0003CB00
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   476
            Transparent     =   False
            Underline       =   True
            Visible         =   True
            Width           =   155
         End
      End
      Begin GroupBox GroupBox2
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Clean External Contour"
         Enabled         =   True
         Height          =   144
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   31
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   517
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   788
         Begin PopupMenu PopupMenu_CleanContour
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            InitialValue    =   ""
            Italic          =   False
            Left            =   286
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   5
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   563
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   249
         End
         Begin Checkbox Checkbox_dosxyz_Clean_Contours
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Clean to Contour"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   60
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
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
            Top             =   563
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   151
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
            Left            =   60
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Material Outside Contour"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   598
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   214
         End
         Begin TextField EditField_Clean_density
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
            Left            =   286
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
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
            Top             =   628
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   249
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
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   60
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   3
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Density Outside Contour (g/cc)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   629
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   214
         End
         Begin PopupMenu PopupMenu_MediumOutside
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            InitialValue    =   ""
            Italic          =   False
            Left            =   286
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   7
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   596
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   249
         End
      End
      Begin GroupBox GroupBox5
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "EGSPhant Properties"
         Enabled         =   True
         Height          =   387
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   31
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   274
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   788
         Begin TextField EditField_egsphantname
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
            Left            =   183
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   304
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   153
         End
         Begin Label StaticText3
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   "40 char limit, this includes patient ID and study ID"
            Index           =   -2147483648
            InitialParent   =   "GroupBox5"
            Italic          =   False
            Left            =   45
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "EGSPhant Name"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   305
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin PushButton PushButton_Make_EGSPHANT
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   0
            Cancel          =   False
            Caption         =   "Generate"
            Default         =   False
            Enabled         =   True
            Height          =   39
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox5"
            Italic          =   False
            Left            =   45
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   513
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   210
         End
         Begin RadioButton RadioButton_CT
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "CT Phantom"
            Enabled         =   True
            Height          =   31
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox5"
            Italic          =   False
            Left            =   45
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   5
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   383
            Transparent     =   False
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   100
         End
         Begin RadioButton RadioButton_Non
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Non-CT Phantom (profiles/output)"
            Enabled         =   True
            Height          =   31
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox5"
            Italic          =   False
            Left            =   45
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   6
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   433
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   218
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
            InitialParent   =   "GroupBox5"
            Italic          =   False
            Left            =   45
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Default Pegs file"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   338
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   133
         End
         Begin TextField EditField_Pegs4
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
            Left            =   183
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   338
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   151
         End
         Begin Listbox Listbox_Materials
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
            Height          =   344
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "GroupBox5"
            InitialValue    =   ""
            Italic          =   False
            Left            =   378
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
            TabIndex        =   21
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   304
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   427
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
      End
      Begin GroupBox GroupBox7
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Auto Fill"
         Enabled         =   True
         Height          =   116
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   31
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
         Top             =   77
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   788
         Begin PopupMenu PopupMenu_CTModel
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox7"
            InitialValue    =   ""
            Italic          =   False
            Left            =   168
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   150
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   186
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
            InitialParent   =   "GroupBox7"
            Italic          =   False
            Left            =   56
            LockBottom      =   False
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
            Text            =   "CT Model"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   150
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin RadioButton RadioButton_ContourCT
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Use Contour/CT data and pegs file"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox7"
            Italic          =   False
            Left            =   56
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   118
            Transparent     =   False
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   267
         End
      End
      Begin RadioButton RadioButton_Manual
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Manual assignment of voxels"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   42
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   57
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   353
      End
      Begin Listbox Listbox_Manual
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   8
         ColumnsResizable=   False
         ColumnWidths    =   ""
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         DropIndicatorVisible=   False
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   2
         GridLinesVertical=   2
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   541
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   42
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   True
         ScrollBarVertical=   True
         SelectionType   =   0
         TabIndex        =   1
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   122
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   766
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin TextField EditField_outsidemedium
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
         Left            =   301
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "AIR700ICRU"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   89
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   249
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
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   42
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Medium of region outside phantom "
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   90
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   238
      End
      Begin GroupBox GroupBox6
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "EGSPhant limits"
         Enabled         =   True
         Height          =   176
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   31
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   71
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   788
         Begin TextField EditField_Xmin
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   175
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   100
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
         End
         Begin TextField EditField_Xmax
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   175
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   134
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   57
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   8
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "X min (cm)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   101
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   57
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "X max (cm)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   136
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   305
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Y max (cm)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   136
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin TextField EditField_Ymax
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   423
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   134
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
         End
         Begin TextField EditField_Ymin
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   423
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   100
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   543
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Z min (cm)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   101
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin TextField EditField_Zmin
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   661
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   100
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
         End
         Begin TextField EditField_Zmax
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   661
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   133
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   543
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Z max (cm)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   136
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin TextField EditField_Zdel
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   661
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   168
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   543
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Z del (cm)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   170
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin TextField EditField_YDel
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   423
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   168
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   305
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Y del (cm)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   170
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin TextField EditField_Xdel
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   175
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   168
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText16
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   57
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "X del (cm)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   170
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   305
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Y min (cm)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   101
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  app.which_window_DOSXYZ_EGSphant=False
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  //------------------------
		  //
		  //
		  //------------------------
		  Dim i as Integer
		  Dim mm,md as String
		  //------------------------
		  
		  app.which_window_DOSXYZ_EGSphant=True
		  egsphant=gDOSXYZ.EGSPhantSettings
		  
		  load_listbox
		  
		  PopupMenu_CTModel.DeleteAllRows
		  
		  for i=0 to UBound(gCT.All_CT)
		    PopupMenu_CTModel.AddRow gCT.All_CT(i).Model_name
		  next
		  
		  PopupMenu_CTModel.SelectedRowIndex=gDOSXYZ.EGSPhantSettings.CT_model
		  
		  for i=0 to UBound(grtog.Structures.Structures)
		    PopupMenu_CleanContour.AddRow grtog.Structures.Structures(i).Structure_Name
		  next
		  
		  PopupMenu_CleanContour.SelectedRowIndex=gDOSXYZ.EGSPhantSettings.Cleancontour_index
		  
		  Checkbox_dosxyz_Clean_Contours.Value=gDOSXYZ.EGSPhantSettings.Cleancontours
		  
		  mm=gDOSXYZ.EGSPhantSettings.Clean_material
		  md=gDOSXYZ.EGSPhantSettings.Clean_density
		  PopupMenu_MediumOutside.DeleteAllRows
		  for i=0 to UBound(gDOSXYZ.dosxyz_materials)
		    PopupMenu_MediumOutside.AddRow gDOSXYZ.dosxyz_materials(i).Material_Name
		  next
		  for i=0 to UBound(gDOSXYZ.dosxyz_materials)
		    if mm=gDOSXYZ.dosxyz_materials(i).Material_Name Then
		      PopupMenu_MediumOutside.SelectedRowIndex=i
		      exit
		    end
		  next
		  
		  
		  EditField_Clean_density.value = md
		  EditField_Pegs4.value = gDOSXYZ.EGSPhantSettings.Pegsfile
		  EditField_Xdel.value = Format(gDOSXYZ.EGSPhantSettings.Del_X,"-#.###")
		  EditField_Xmax.value = Format(gDOSXYZ.EGSPhantSettings.X_Max,"-#.###")
		  EditField_Xmin.value = Format(gDOSXYZ.EGSPhantSettings.X_min,"-#.###")
		  EditField_ydel.value = Format(gDOSXYZ.EGSPhantSettings.Del_y,"-#.###")
		  EditField_ymax.value = Format(gDOSXYZ.EGSPhantSettings.y_Max,"-#.###")
		  EditField_ymin.value = Format(gDOSXYZ.EGSPhantSettings.y_min,"-#.###")
		  EditField_zdel.value = Format(gDOSXYZ.EGSPhantSettings.Del_z,"-#.###")
		  EditField_zmax.value = Format(gDOSXYZ.EGSPhantSettings.z_Max,"-#.###")
		  EditField_zmin.value = Format(gDOSXYZ.EGSPhantSettings.z_min,"-#.###")
		  EditField_egsphantname.value = gDOSXYZ.EGSPhantSettings.Name
		  EditField_outsidemedium.value = egsphant.media_of_outside
		  
		  Listbox_Materials.HeaderAt(0)="Index"
		  Listbox_Materials.HeaderAt(1)="Material"
		  
		  UpDate_Manual_List
		  egsphant.Update_MaterialsUD
		  Materials_Listbox
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Load_listbox()
		  dim i,x as integer
		  dim s as String
		  '=================
		  
		  ListBox_ContourFill.DeleteAllRows
		  
		  ListBox_ContourFill.HeaderAt(0)="Fill Order Large->Small"
		  ListBox_ContourFill.HeaderAt(1)="Structure Name"
		  
		  ListBox_ContourFill.HeaderAt(3)="Material Name"
		  ListBox_ContourFill.HeaderAt(2)="Use this Material and Density else autofill"
		  ListBox_ContourFill.HeaderAt(4)="Density g/cm^3"
		  
		  
		  ListBox_ContourFill.columntype(0)=1
		  ListBox_ContourFill.columntype(1)=1
		  ListBox_ContourFill.columntype(2)=2
		  ListBox_ContourFill.columntype(3)=3
		  ListBox_ContourFill.columntype(4)=3
		  
		  
		  for i=0 to ubound(gDOSXYZ.EGSPhantSettings.Contous)
		    ListBox_ContourFill.addrow str(i+1)
		    x=gDOSXYZ.EGSPhantSettings.Contous(i).RTOG_Contour_Index
		    ListBox_ContourFill.CellValueAt(i,1)=grtog.Structures.Structures(x).Structure_Name
		    ListBox_ContourFill.CellValueAt(i,3)=gDOSXYZ.EGSPhantSettings.Contous(i).materials
		    ListBox_ContourFill.CellCheck(i,2)=gDOSXYZ.EGSPhantSettings.Contous(i).Use_Material
		    ListBox_ContourFill.CellValueAt(i,4)=Format(gDOSXYZ.EGSPhantSettings.Contous(i).density,"#.###")
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Materials_Listbox()
		  Dim i as Integer
		  
		  Listbox_Materials.DeleteAllRows
		  for i=0 to UBound(gDOSXYZ.EGSPhantSettings.Materials)
		    Listbox_Materials.AddRow str(i)
		    Listbox_Materials.CellValueAt(i,1)=gDOSXYZ.EGSPhantSettings.Materials(i)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpDate_Manual_List()
		  Dim i as Integer
		  Dim vv as Class_DOSXYZ_EGSPhant_Voxels
		  
		  Listbox_Manual.DeleteAllRows
		  
		  Listbox_Manual.HeaderAt(0)="Material"
		  Listbox_Manual.HeaderAt(1)="X from"
		  Listbox_Manual.HeaderAt(2)="X to"
		  Listbox_Manual.HeaderAt(3)="Y from"
		  Listbox_Manual.HeaderAt(4)="Y to"
		  Listbox_Manual.HeaderAt(5)="Z from"
		  Listbox_Manual.HeaderAt(6)="Z to"
		  Listbox_Manual.HeaderAt(7)="Density (g/cc)"
		  
		  if egsphant.Del_X>0 Then
		    egsphant.Nx=Round((gDOSXYZ.EGSPhantSettings.X_Max-gDOSXYZ.EGSPhantSettings.X_min)/gDOSXYZ.EGSPhantSettings.Del_X)
		  end
		  if egsphant.Del_z>0 Then
		    egsphant.Nz=Round((gDOSXYZ.EGSPhantSettings.z_Max-gDOSXYZ.EGSPhantSettings.z_min)/gDOSXYZ.EGSPhantSettings.Del_z)
		  end
		  if egsphant.Del_y>0 Then
		    egsphant.Ny=Round((gDOSXYZ.EGSPhantSettings.y_Max-gDOSXYZ.EGSPhantSettings.y_min)/gDOSXYZ.EGSPhantSettings.Del_y)
		  end
		  
		  if UBound(egsphant.Voxels)=-1 Then
		    vv=new Class_DOSXYZ_EGSPhant_Voxels
		    vv.X_From=1
		    vv.X_To=egsphant.Nx
		    vv.Y_From=1
		    vv.Y_To=egsphant.NY
		    vv.Z_From=1
		    vv.Z_To=egsphant.NZ
		    egsphant.Voxels.Append vv
		  end
		  
		  //Check that voxels still have the right bounds
		  for i=0 to UBound(egsphant.Voxels)
		    if egsphant.Voxels(i).X_From > egsphant.Nx Then
		      egsphant.Voxels(i).X_From=egsphant.Nx
		    end
		    if egsphant.Voxels(i).X_To > egsphant.Nx Then
		      egsphant.Voxels(i).X_To=egsphant.Nx
		    end
		    if egsphant.Voxels(i).X_From < 1 Then
		      egsphant.Voxels(i).X_From =1
		    end
		    
		    if egsphant.Voxels(i).Y_From > egsphant.NY Then
		      egsphant.Voxels(i).Y_From=egsphant.NY
		    end
		    if egsphant.Voxels(i).Y_To > egsphant.NY Then
		      egsphant.Voxels(i).Y_To=egsphant.NY
		    end
		    if egsphant.Voxels(i).Y_From < 1 Then
		      egsphant.Voxels(i).Y_From =1
		    end
		    
		    
		    if egsphant.Voxels(i).Z_From > egsphant.NY Then
		      egsphant.Voxels(i).Z_From=egsphant.NY
		    end
		    if egsphant.Voxels(i).Z_To > egsphant.NZ Then
		      egsphant.Voxels(i).Z_To=egsphant.NZ
		    end
		    if egsphant.Voxels(i).Z_From < 1 Then
		      egsphant.Voxels(i).Z_From =1
		    end
		    
		  next
		  
		  
		  for i=UBound(egsphant.Voxels) DownTo 0
		    if egsphant.Voxels(i).X_To < egsphant.Nx Then
		      egsphant.Voxels(i).X_To=egsphant.Nx
		      Exit for i
		    end 
		  next
		  
		  
		  for i=UBound(egsphant.Voxels) DownTo 0
		    if egsphant.Voxels(i).y_to < egsphant.Ny Then
		      egsphant.Voxels(i).Y_To=egsphant.Ny
		      Exit for i
		    end
		  next
		  
		  
		  for i=UBound(egsphant.Voxels) DownTo 0
		    if egsphant.Voxels(i).Z_To < egsphant.Nz Then
		      egsphant.Voxels(i).Z_To=egsphant.Nz
		      Exit for i
		    end
		  next
		  
		  
		  Listbox_Manual.ColumnType(0)=3
		  Listbox_Manual.ColumnType(7)=3
		  for i=0 to UBound(egsphant.Voxels)
		    Listbox_Manual.AddRow egsphant.Voxels(i).Material
		    
		    Listbox_Manual.CellValueAt(i,1)=Str(egsphant.Voxels(i).X_From)
		    Listbox_Manual.CellValueAt(i,2)=Str(egsphant.Voxels(i).X_To)
		    
		    Listbox_Manual.CellValueAt(i,3)=Str(egsphant.Voxels(i).Y_From)
		    Listbox_Manual.CellValueAt(i,4)=Str(egsphant.Voxels(i).Y_To)
		    
		    
		    Listbox_Manual.CellValueAt(i,5)=Str(egsphant.Voxels(i).Z_From)
		    Listbox_Manual.CellValueAt(i,6)=Str(egsphant.Voxels(i).Z_To)
		    Listbox_Manual.CellValueAt(i,7)=Format(egsphant.Voxels(i).density,"-#.######")
		  next
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		egsphant As Class_DOSXYZ_EGSPhantSettings
	#tag EndProperty


#tag EndWindowCode

#tag Events ListBox_ContourFill
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  dim MI as MenuItem
		  dim i as Integer
		  
		  
		  
		  if me.SelectedRowIndex>-1 then
		    for i=0 to UBound(gDOSXYZ.dosxyz_materials)
		      MI = New MenuItem
		      MI.Text = gDOSXYZ.dosxyz_materials(i).Material_Name
		      base.addmenu( MI )
		    next
		    Return True
		  end
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Dim i as integer
		  
		  
		  
		  for i=0 to UBound(gDOSXYZ.dosxyz_materials)
		    if hitItem.Text = gDOSXYZ.dosxyz_materials(i).Material_Name then
		      gDOSXYZ.EGSPhantSettings.Contous(me.SelectedRowIndex).materials=gDOSXYZ.dosxyz_materials(i).Material_Name
		      gDOSXYZ.EGSPhantSettings.Contous(me.SelectedRowIndex).density=gDOSXYZ.dosxyz_materials(i).Material_Density
		      exit
		    end
		  next
		  load_listbox
		  gDOSXYZ.EGSPhantSettings.Update_MaterialsUD
		  Materials_Listbox
		  
		  
		  Return True
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  if row <= UBound(grtog.Structures.Structures) then
		    if column=4 Then
		      gDOSXYZ.EGSPhantSettings.Contous(row).density=val(me.CellValueAt(row,4))
		    elseif column=3 then
		      gDOSXYZ.EGSPhantSettings.Contous(row).materials=trim(me.CellValueAt(row,3))
		      
		      
		    end
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  if column=2 Then
		    gDOSXYZ.EGSPhantSettings.Contous(row).Use_Material=(me.CellCheck(row,2))
		  end
		  egsphant.Update_MaterialsUD
		  Materials_Listbox
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events UpDownArrows1
	#tag Event
		Sub Up()
		  Dim i as Integer
		  Dim cc as Class_DOSXYZ_EGSPhant_Contour
		  
		  i=ListBox_ContourFill.SelectedRowIndex
		  if i>0 and i<=UBound(gDOSXYZ.EGSPhantSettings.Contous) Then
		    cc = new Class_DOSXYZ_EGSPhant_Contour
		    cc=gDOSXYZ.EGSPhantSettings.Contous(i)
		    gDOSXYZ.EGSPhantSettings.Contous.Remove i
		    gDOSXYZ.EGSPhantSettings.Contous.Insert i-1, cc
		    Load_listbox
		    ListBox_ContourFill.SelectedRowIndex=i-1
		  end
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Down()
		  Dim i as Integer
		  Dim cc as Class_DOSXYZ_EGSPhant_Contour
		  
		  i=ListBox_ContourFill.SelectedRowIndex
		  if i>=0 and i<UBound(gDOSXYZ.EGSPhantSettings.Contous) Then
		    cc = new Class_DOSXYZ_EGSPhant_Contour
		    cc=gDOSXYZ.EGSPhantSettings.Contous(i)
		    gDOSXYZ.EGSPhantSettings.Contous.Remove i
		    gDOSXYZ.EGSPhantSettings.Contous.Insert i+1, cc
		    Load_listbox
		    ListBox_ContourFill.SelectedRowIndex=i+1
		  end
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events StaticText1
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  showurl "http://www.webelements.com/"
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_CleanContour
	#tag Event
		Sub Change()
		  gDOSXYZ.EGSPhantSettings.Cleancontour_index=me.SelectedRowIndex
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Checkbox_dosxyz_Clean_Contours
	#tag Event
		Sub Action()
		  gDOSXYZ.EGSPhantSettings.Cleancontours =me.Value
		  egsphant.Update_MaterialsUD
		  Materials_Listbox
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Clean_density
	#tag Event
		Sub TextChange()
		  gDOSXYZ.EGSPhantSettings.Clean_density=me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_MediumOutside
	#tag Event
		Sub Change()
		  gDOSXYZ.EGSPhantSettings.Clean_material=me.Text
		  EditField_Clean_density.value = str(gDOSXYZ.dosxyz_materials(me.SelectedRowIndex).Material_Density)
		  egsphant.Update_MaterialsUD
		  Materials_Listbox
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_egsphantname
	#tag Event
		Sub TextChange()
		  if InStr(me.Text,"_")>0 Then
		    While  InStr(me.Text,"_")>0
		      me.value = Replace(me.Text,"_","")
		    Wend
		  end
		  
		  egsphant.Name=Trim(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Make_EGSPHANT
	#tag Event
		Sub Action()
		  //----------------------
		  //
		  //
		  //----------------------
		  Dim find, overwrite as Boolean
		  Dim name as String
		  Dim i as Integer
		  //----------------------
		  
		  
		  name=trim(EditField_egsphantname.Text)
		  
		  if Len(gRTOG.Patient_ID+"_"+gRTOG.StudyID+grtog.seriesnumber+"_"+name) < 40 then
		    find = False
		    overwrite=False
		    for i=0 to UBound(gDOSXYZ.DOSXYZ)
		      if Len(name)<1 then
		        find=True
		        MessageBox "Enter a EGSPhant name"
		        Exit
		      end
		      if name=gDOSXYZ.dosxyz(i).EGSPhantSettings.name then
		        overwrite=True
		        MessageBox "Enter a different EGSPhant name"
		        
		        Exit
		      end
		    next
		    
		    if not Find then
		      if not overwrite then
		        if RadioButton_CT.Value Then // For CT Phantoms
		          // Load EGSPhant Setting into EGSPhant Class
		          if egsphant.Del_X<=0 or egsphant.Del_Z<=0 or egsphant.Del_Y<=0 Then
		            MessageBox "Enter del values above 0!"
		            Return
		          end
		          if egsphant.X_Max<= egsphant.X_min or egsphant.Z_max<=egsphant.z_min or egsphant.y_max<=egsphant.y_min Then
		            MessageBox "Enter proper max and min values!"
		            Return
		          end
		        end
		        gDOSXYZ.dosxyz_EGSPhant_Make
		        Window_DOSXYZ_EGSPhant_Materials.Close
		      end
		    end
		  else
		    MessageBox "EGSPhant name is too long"
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_CT
	#tag Event
		Sub Action()
		  gDOSXYZ.EGSPhantSettings.Non_CT_Phantom=False
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Non
	#tag Event
		Sub Action()
		  gDOSXYZ.EGSPhantSettings.Non_CT_Phantom=True
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Pegs4
	#tag Event
		Sub TextChange()
		  gDOSXYZ.EGSPhantSettings.Pegsfile=me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_CTModel
	#tag Event
		Sub Change()
		  Dim i as Integer
		  
		  i=me.SelectedRowIndex
		  gDOSXYZ.EGSPhantSettings.CT_model=i
		  if i>-1 and i<=UBound(gCT.All_CT) Then
		    EditField_Pegs4.value = gct.All_CT(i).Pegs_file
		    egsphant.Pegsfile=gct.All_CT(i).Pegs_file
		    egsphant.Update_MaterialsUD
		    Materials_Listbox
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_ContourCT
	#tag Event
		Sub Action()
		  if me.Value Then
		    egsphant.Create_wth_CTcontours=True
		    RadioButton_Manual.Value=False
		  end
		  Materials_Listbox
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Manual
	#tag Event
		Sub Action()
		  if me.Value Then
		    egsphant.Create_wth_CTcontours=False
		    RadioButton_ContourCT.Value=False
		  end
		  egsphant.Update_MaterialsUD
		  Materials_Listbox
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_Manual
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  if row<=(UBound(egsphant.Voxels)) Then
		    if column=0 Then
		      egsphant.Voxels(row).Material=Trim(me.CellValueAt(row,0))
		    elseif column=7 Then
		      egsphant.Voxels(row).density=Val(me.CellValueAt(row,7))
		    end
		    egsphant.Update_MaterialsUD
		    Materials_Listbox
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_outsidemedium
	#tag Event
		Sub TextChange()
		  gDOSXYZ.EGSPhantSettings.media_of_outside=Trim(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Xmin
	#tag Event
		Sub TextChange()
		  gDOSXYZ.EGSPhantSettings.X_min=val(Me.Text)
		  UpDate_Manual_List
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Xmax
	#tag Event
		Sub TextChange()
		  gDOSXYZ.EGSPhantSettings.X_Max=val(Me.Text)
		  UpDate_Manual_List
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Ymax
	#tag Event
		Sub TextChange()
		  gDOSXYZ.EGSPhantSettings.Y_max=val(Me.Text)
		  UpDate_Manual_List
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Ymin
	#tag Event
		Sub TextChange()
		  gDOSXYZ.EGSPhantSettings.y_min=val(Me.Text)
		  UpDate_Manual_List
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Zmin
	#tag Event
		Sub TextChange()
		  gDOSXYZ.EGSPhantSettings.z_min=val(Me.Text)
		  UpDate_Manual_List
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Zmax
	#tag Event
		Sub TextChange()
		  gDOSXYZ.EGSPhantSettings.Z_max=val(Me.Text)
		  UpDate_Manual_List
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Zdel
	#tag Event
		Sub TextChange()
		  gDOSXYZ.EGSPhantSettings.Del_Z=val(Me.Text)
		  UpDate_Manual_List
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_YDel
	#tag Event
		Sub TextChange()
		  gDOSXYZ.EGSPhantSettings.Del_Y=val(Me.Text)
		  UpDate_Manual_List
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Xdel
	#tag Event
		Sub TextChange()
		  gDOSXYZ.EGSPhantSettings.Del_X=val(Me.Text)
		  UpDate_Manual_List
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
#tag EndViewBehavior
