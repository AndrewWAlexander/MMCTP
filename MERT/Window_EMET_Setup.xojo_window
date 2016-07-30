#tag Window
Begin Window Window_EMET_Setup
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   759
   ImplicitInstance=   True
   LiveResize      =   True
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
   Title           =   "Optimization Window - BeamSetup"
   Visible         =   True
   Width           =   1212
   Begin TabPanel TabPanel_Top
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   725
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
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   True
      TabDefinition   =   "External Beam Positions\rDepth Projections\rSliding Couch\rFLEC Openings and Logic\rPhoton\rMono-Source\rBatch Change"
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Underline       =   False
      Value           =   3
      Visible         =   True
      Width           =   1172
      Begin GroupBox GroupBox_BeamLogic
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Raster and Feathered Beam Logic"
         Enabled         =   True
         Height          =   670
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   241
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   11
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   48
         Underline       =   False
         Visible         =   True
         Width           =   945
         Begin ListBox ListBox_Linac_Energies
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
            Enabled         =   True
            EnableDrag      =   False
            EnableDragReorder=   False
            GridLinesHorizontal=   2
            GridLinesVertical=   0
            HasHeading      =   True
            HeadingIndex    =   -1
            Height          =   365
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "GroupBox_BeamLogic"
            InitialValue    =   ""
            Italic          =   False
            Left            =   252
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            RequiresSelection=   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollBarVertical=   True
            SelectionType   =   0
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   75
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   928
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin TextField EditField_RayX
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
            InitialParent   =   "GroupBox_BeamLogic"
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
            TabIndex        =   0
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   530
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
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
            InitialParent   =   "GroupBox_BeamLogic"
            Italic          =   False
            Left            =   367
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
            Text            =   "del Y (cm)"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   620
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   65
         End
         Begin TextField EditField_Ray_delY
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
            InitialParent   =   "GroupBox_BeamLogic"
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
            ReadOnly        =   True
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   619
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
         End
         Begin TextField EditField_Ray_delX
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
            InitialParent   =   "GroupBox_BeamLogic"
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
            ReadOnly        =   True
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   589
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
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
            InitialParent   =   "GroupBox_BeamLogic"
            Italic          =   False
            Left            =   367
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
            Text            =   "del X (cm)"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   590
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   65
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
            InitialParent   =   "GroupBox_BeamLogic"
            Italic          =   False
            Left            =   278
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
            Text            =   "Number of Y quadrants"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   562
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   157
         End
         Begin TextField EditField_RayY
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
            InitialParent   =   "GroupBox_BeamLogic"
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
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   562
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
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
            InitialParent   =   "GroupBox_BeamLogic"
            Italic          =   False
            Left            =   278
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
            Text            =   "Number of X quadrants"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   532
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   157
         End
         Begin TextField EditField_Feathered_Number_X
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
            InitialParent   =   "GroupBox_BeamLogic"
            Italic          =   False
            Left            =   711
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "1"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   531
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
         End
         Begin TextField EditField_Feathered_Number_Y
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
            InitialParent   =   "GroupBox_BeamLogic"
            Italic          =   False
            Left            =   711
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
            TabIndex        =   5
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "1"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   561
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText38
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_BeamLogic"
            Italic          =   False
            Left            =   539
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
            Text            =   "Number of Y fields"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   562
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   157
         End
         Begin Label StaticText37
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_BeamLogic"
            Italic          =   False
            Left            =   551
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
            Text            =   "field X movement (cm)"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   592
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   145
         End
         Begin TextField EditField_fea_X_move
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
            InitialParent   =   "GroupBox_BeamLogic"
            Italic          =   False
            Left            =   711
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
            Text            =   "0.5"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   591
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
         End
         Begin TextField EditField_fea_Y_move
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
            InitialParent   =   "GroupBox_BeamLogic"
            Italic          =   False
            Left            =   711
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "0.5"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   622
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText36
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_BeamLogic"
            Italic          =   False
            Left            =   551
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
            Text            =   "field Y movement (cm)"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   624
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   145
         End
         Begin PushButton PushButton_Make_Feathered_Beams
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Generate Feathered Beams"
            Default         =   False
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_BeamLogic"
            Italic          =   False
            Left            =   803
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   587
            Underline       =   False
            Visible         =   True
            Width           =   195
         End
         Begin PushButton PushButton_Make_Raybeams
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Generate Raster Beams"
            Default         =   False
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_BeamLogic"
            Italic          =   False
            Left            =   803
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   616
            Underline       =   False
            Visible         =   True
            Width           =   195
         End
         Begin Label StaticText41
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_BeamLogic"
            Italic          =   False
            Left            =   819
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
            Text            =   "del y (cm)"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   561
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   65
         End
         Begin TextField EditField_fea_delY
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
            InitialParent   =   "GroupBox_BeamLogic"
            Italic          =   False
            Left            =   890
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
            Text            =   "1"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   560
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
         End
         Begin TextField EditField_fea_delX
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
            InitialParent   =   "GroupBox_BeamLogic"
            Italic          =   False
            Left            =   890
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
            Text            =   "1"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   531
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText40
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_BeamLogic"
            Italic          =   False
            Left            =   819
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
            Text            =   "del x (cm)"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   532
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   65
         End
         Begin Label StaticText39
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_BeamLogic"
            Italic          =   False
            Left            =   539
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
            Text            =   "Number of X fields"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   532
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   157
         End
         Begin ProgressBar ProgressBar_BeamLogic
            AutoDeactivate  =   True
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_BeamLogic"
            Left            =   990
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Maximum         =   100
            Scope           =   0
            TabIndex        =   "23"
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   542
            Value           =   0
            Visible         =   True
            Width           =   179
         End
      End
      Begin TextField TextField_Photon_xmin
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
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   143
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
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "10"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   66
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   125
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
         InitialParent   =   "TabPanel_Top"
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
         TabIndex        =   2
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "X min"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   66
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin TextField TextField_Photon_Xmax
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
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   143
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
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "10"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   98
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   125
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
         InitialParent   =   "TabPanel_Top"
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
         TabIndex        =   4
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "X max"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   98
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin TextField TextField_Photon_Ymin
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
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   143
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
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "10"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   130
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   125
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
         InitialParent   =   "TabPanel_Top"
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
         TabIndex        =   6
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "Y min"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   130
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin TextField TextField_Photon_Ymax
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
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   143
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
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "10"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   162
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   125
      End
      Begin Label StaticText64
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
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
         TabIndex        =   8
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "Y max"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   162
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label StaticText65
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
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
         TabIndex        =   9
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "del X"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   226
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin TextField TextField_Photon_delX
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
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   143
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
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "1"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   226
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   125
      End
      Begin TextField TextField_Photon_dely
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   "05"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   143
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
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "1"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   194
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   125
      End
      Begin Label StaticText66
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
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
         TabIndex        =   12
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "del Y"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   194
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin PopupMenu PopupMenu_Photon_Beam
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   27
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         InitialValue    =   ""
         Italic          =   False
         Left            =   280
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   13
         TabPanelIndex   =   5
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   71
         Underline       =   False
         Visible         =   True
         Width           =   194
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
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   280
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   14
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "Beam #"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Arial"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   50
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   68
      End
      Begin PushButton PushButton_MakeBeamlets_old
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Use old Beamlets"
         Default         =   False
         Enabled         =   True
         Height          =   32
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   516
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   15
         TabPanelIndex   =   5
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   61
         Underline       =   False
         Visible         =   True
         Width           =   194
      End
      Begin Label StaticText68
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   175
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Target"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   52
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   67
      End
      Begin PopupMenu PopupMenu_SC_Target
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         InitialValue    =   ""
         Italic          =   False
         Left            =   32
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   52
         Underline       =   False
         Visible         =   True
         Width           =   128
      End
      Begin CheckBox CheckBox_SC_E6
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "6 MeV"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   261
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   2
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   52
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin CheckBox CheckBox_SC_E9
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "9 MeV"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   261
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   3
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   84
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin CheckBox CheckBox_SC_E12
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "12 MeV"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   261
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   4
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   116
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin CheckBox CheckBox_SC_E16
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "16 MeV"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   261
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   5
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   148
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin CheckBox CheckBox_SC_E20
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "20 MeV"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   261
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   6
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   180
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin TextField TextField_SC_Iso_X
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
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   32
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
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "0"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   108
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   128
      End
      Begin Label StaticText69
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   175
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Iso X"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   109
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   67
      End
      Begin Label StaticText70
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   175
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   9
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Iso Y"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   142
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   67
      End
      Begin TextField TextField_SC_Iso_Y
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
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   32
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
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "23"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   141
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   128
      End
      Begin Label StaticText71
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   175
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   11
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Del Z"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   213
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   67
      End
      Begin TextField TextField_SC_delZ
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
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   32
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
         TabIndex        =   12
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "0.5"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   212
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   128
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
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   175
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   13
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Max Gradient "
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   261
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   118
      End
      Begin TextField TextField_SC_Grad_Max
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
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   32
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
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "5"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   260
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   128
      End
      Begin PushButton PushButton_Cal_SlidingCouch
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Calculate Beams"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   342
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   15
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   53
         Underline       =   False
         Visible         =   True
         Width           =   155
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
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   172
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   16
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "External"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   77
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin PopupMenu PopupMenu_SC_External
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         InitialValue    =   ""
         Italic          =   False
         Left            =   32
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   17
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   77
         Underline       =   False
         Visible         =   True
         Width           =   128
      End
      Begin Label StaticText74
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   175
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   18
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Gantry"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   176
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   67
      End
      Begin TextField TextField_SC_Gantry
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
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   32
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
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "180"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   175
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   128
      End
      Begin PushButton PushButton_DOS_Source1
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "DOSXYZnrc Source 1"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   80
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   6
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   72
         Underline       =   False
         Visible         =   True
         Width           =   240
      End
      Begin PushButton PushButton_VMC_Source0
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "VMC Source 0"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   80
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   6
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   110
         Underline       =   False
         Visible         =   True
         Width           =   240
      End
      Begin GroupBox GroupBox_Depth_Cal
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Calculate Depths"
         Enabled         =   True
         Height          =   357
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   31
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   19
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   47
         Underline       =   False
         Visible         =   True
         Width           =   465
         Begin PopupMenu PopupMenu_Depth_Beam
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   27
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Depth_Cal"
            InitialValue    =   ""
            Italic          =   False
            Left            =   40
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   78
            Underline       =   False
            Visible         =   True
            Width           =   446
         End
         Begin ProgressBar ProgressBar_Depths
            AutoDeactivate  =   True
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Depth_Cal"
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Maximum         =   100
            Scope           =   0
            TabIndex        =   "1"
            TabPanelIndex   =   2
            TabStop         =   True
            Top             =   383
            Value           =   0
            Visible         =   True
            Width           =   446
         End
         Begin Listbox Listbox_Depths
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
            Height          =   184
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Depth_Cal"
            InitialValue    =   ""
            Italic          =   False
            Left            =   40
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
            TabIndex        =   13
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   158
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   446
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin PushButton PushButton_Cal_Depth_at_Projection
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Calculate"
            Default         =   False
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Depth_Cal"
            Italic          =   False
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   14
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   354
            Underline       =   False
            Visible         =   True
            Width           =   113
         End
         Begin Label StaticText_Depth_Progress
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Depth_Cal"
            Italic          =   False
            Left            =   165
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
            Text            =   "doing"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   354
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   321
         End
         Begin Label StaticText_Depth_OneBeam
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   39
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Depth_Cal"
            Italic          =   False
            Left            =   46
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   True
            Scope           =   0
            Selectable      =   False
            TabIndex        =   16
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Untitled"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   107
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   440
         End
      End
      Begin GroupBox GroupBox_FLEC1
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "FLEC Positions"
         Enabled         =   True
         Height          =   282
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   31
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   12
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   48
         Underline       =   False
         Visible         =   True
         Width           =   201
         Begin TextField EditField_FLEC_FieldX
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
            InitialParent   =   "GroupBox_FLEC1"
            Italic          =   False
            Left            =   117
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
            Top             =   123
            Underline       =   False
            UseFocusRing    =   False
            Visible         =   True
            Width           =   50
         End
         Begin TextField EditField_FLEC_FieldY
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
            InitialParent   =   "GroupBox_FLEC1"
            Italic          =   False
            Left            =   117
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
            Top             =   215
            Underline       =   False
            UseFocusRing    =   False
            Visible         =   True
            Width           =   50
         End
         Begin TextField EditField_FLEC_X1
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
            InitialParent   =   "GroupBox_FLEC1"
            Italic          =   False
            Left            =   117
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
            Top             =   156
            Underline       =   False
            UseFocusRing    =   False
            Visible         =   True
            Width           =   50
         End
         Begin TextField EditField_FLEC_X2
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
            InitialParent   =   "GroupBox_FLEC1"
            Italic          =   False
            Left            =   116
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
            Top             =   188
            Underline       =   False
            UseFocusRing    =   False
            Visible         =   True
            Width           =   50
         End
         Begin TextField EditField_FLEC_Y1
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
            InitialParent   =   "GroupBox_FLEC1"
            Italic          =   False
            Left            =   117
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
            Top             =   247
            Underline       =   False
            UseFocusRing    =   False
            Visible         =   True
            Width           =   50
         End
         Begin TextField EditField_FLEC_Y2
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
            InitialParent   =   "GroupBox_FLEC1"
            Italic          =   False
            Left            =   117
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
            Top             =   279
            Underline       =   False
            UseFocusRing    =   False
            Visible         =   True
            Width           =   50
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
            InitialParent   =   "GroupBox_FLEC1"
            Italic          =   False
            Left            =   42
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   6
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Field X"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   124
            Transparent     =   False
            Underline       =   False
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
            InitialParent   =   "GroupBox_FLEC1"
            Italic          =   False
            Left            =   42
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   7
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "X 1"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   156
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   68
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
            InitialParent   =   "GroupBox_FLEC1"
            Italic          =   False
            Left            =   42
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
            Text            =   "X 2"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   188
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   68
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
            InitialParent   =   "GroupBox_FLEC1"
            Italic          =   False
            Left            =   42
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   9
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Field Y"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   217
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   46
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
            InitialParent   =   "GroupBox_FLEC1"
            Italic          =   False
            Left            =   42
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   10
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Y 1"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   249
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   46
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
            InitialParent   =   "GroupBox_FLEC1"
            Italic          =   False
            Left            =   42
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   11
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Y 2"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   279
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   46
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
            InitialParent   =   "GroupBox_FLEC1"
            Italic          =   False
            Left            =   179
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   12
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "cm"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   279
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   35
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
            InitialParent   =   "GroupBox_FLEC1"
            Italic          =   False
            Left            =   179
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   14
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "cm"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   217
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   35
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
            InitialParent   =   "GroupBox_FLEC1"
            Italic          =   False
            Left            =   179
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   15
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "cm"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   189
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   35
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
            InitialParent   =   "GroupBox_FLEC1"
            Italic          =   False
            Left            =   179
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   16
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "cm"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   158
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   35
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
            InitialParent   =   "GroupBox_FLEC1"
            Italic          =   False
            Left            =   179
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   17
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "cm"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   124
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   35
         End
         Begin PopupMenu PopupMenu_FLEC_Beam
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   27
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_FLEC1"
            InitialValue    =   ""
            Italic          =   False
            Left            =   42
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   18
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   92
            Underline       =   False
            Visible         =   True
            Width           =   183
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
            InitialParent   =   "GroupBox_FLEC1"
            Italic          =   False
            Left            =   42
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   19
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Beam #"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   68
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   68
         End
         Begin BevelButton BevelButton_FLEC_Search_PSDB
            AcceptFocus     =   False
            AutoDeactivate  =   True
            BackColor       =   &c00000000
            Bevel           =   0
            Bold            =   False
            ButtonType      =   0
            Caption         =   "Research PhsP DB"
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
            InitialParent   =   "GroupBox_FLEC1"
            Italic          =   False
            Left            =   42
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            MenuValue       =   0
            Scope           =   0
            TabIndex        =   20
            TabPanelIndex   =   4
            TabStop         =   True
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   303
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   172
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
            InitialParent   =   "GroupBox_FLEC1"
            Italic          =   False
            Left            =   179
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   13
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "cm"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   247
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   35
         End
      End
      Begin PushButton PushButton_Photon_MakeBeamlets
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Cal new Beamlet"
         Default         =   False
         Enabled         =   True
         Height          =   32
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   16
         TabPanelIndex   =   5
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   401
         Underline       =   False
         Visible         =   True
         Width           =   151
      End
      Begin GroupBox GroupBox1
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Make Map"
         Enabled         =   True
         Height          =   58
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   31
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   64
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   47
         Underline       =   False
         Visible         =   True
         Width           =   1150
         Begin PopupMenu PopupMenu_Target
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            InitialValue    =   ""
            Italic          =   False
            Left            =   106
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   70
            Underline       =   False
            Visible         =   True
            Width           =   128
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   36
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
            Text            =   "Target"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   70
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   58
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   283
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
            Text            =   "External"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   70
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   76
         End
         Begin PopupMenu PopupMenu_External
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            InitialValue    =   ""
            Italic          =   False
            Left            =   358
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   70
            Underline       =   False
            Visible         =   True
            Width           =   128
         End
         Begin PushButton PushButton_Cal_Angles
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Calculate Angle Map"
            Default         =   False
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   650
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   4
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   70
            Underline       =   False
            Visible         =   True
            Width           =   155
         End
         Begin TextField EditField_Angle_nx
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
            Left            =   551
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
            Text            =   "256"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   70
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   72
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   509
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   6
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "nx"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   70
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   39
         End
         Begin ProgressBar ProgressBar_Angles
            AutoDeactivate  =   True
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Left            =   839
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Maximum         =   100
            Scope           =   0
            TabIndex        =   "7"
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   70
            Value           =   0
            Visible         =   True
            Width           =   327
         End
      End
      Begin TextField EditField_batch_iso_z
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
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   814
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
         TabPanelIndex   =   7
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   133
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   72
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
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   748
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   7
         TabStop         =   True
         Text            =   "iso z"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   135
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   54
      End
      Begin TextField EditField_batch_iso_x
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
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   814
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
         TabPanelIndex   =   7
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   70
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   72
      End
      Begin Label StaticText50
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   748
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   7
         TabStop         =   True
         Text            =   "iso x"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   71
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   54
      End
      Begin TextField EditField_batch_iso_y
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
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   814
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
         TabPanelIndex   =   7
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   103
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   72
      End
      Begin Label StaticText35
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   748
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   7
         TabStop         =   True
         Text            =   "iso y"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   104
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   54
      End
      Begin PushButton PushButton_Positions_Apply
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Apply settings to all beams"
         Default         =   False
         Enabled         =   True
         Height          =   35
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   745
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   7
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   9.0
         TextUnit        =   0
         Top             =   311
         Underline       =   False
         Visible         =   True
         Width           =   141
      End
      Begin TextField EditField_batch_Gantry
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
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   814
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
         TabPanelIndex   =   7
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   165
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   72
      End
      Begin Label StaticText75
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   714
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   9
         TabPanelIndex   =   7
         TabStop         =   True
         Text            =   "Gantry angle"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   166
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   88
      End
      Begin TextField EditField_batch_Collang
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
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   814
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
         TabPanelIndex   =   7
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   196
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   72
      End
      Begin Label StaticText76
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   714
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   11
         TabPanelIndex   =   7
         TabStop         =   True
         Text            =   "Coll angle"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   197
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   88
      End
      Begin TextField EditField_batch_Couchang
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
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   814
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
         TabIndex        =   12
         TabPanelIndex   =   7
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   229
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   72
      End
      Begin Label StaticText108
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   714
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   13
         TabPanelIndex   =   7
         TabStop         =   True
         Text            =   "Couch angle"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   230
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   88
      End
      Begin GroupBox GroupBox2
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Results"
         Enabled         =   True
         Height          =   601
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   31
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   65
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   117
         Underline       =   False
         Visible         =   True
         Width           =   1135
         Begin Listbox Listbox_Map
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
            Height          =   556
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            InitialValue    =   ""
            Italic          =   False
            Left            =   36
            LockBottom      =   False
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
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   146
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   645
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin Canvas Canvas_Projection
            AcceptFocus     =   True
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   368
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            Left            =   702
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   219
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   447
         End
         Begin PushButton PushButton_angles_Beam
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Generate New Beam"
            Default         =   False
            Enabled         =   True
            Height          =   35
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   702
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   158
            Underline       =   False
            Visible         =   True
            Width           =   141
         End
      End
      Begin GroupBox GroupBox3
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Results"
         Enabled         =   True
         Height          =   315
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   31
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   33
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   410
         Underline       =   False
         Visible         =   True
         Width           =   465
         Begin PushButton PushButton_Deptp_MakeBeams
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Make Beams"
            Default         =   False
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   39
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   695
            Underline       =   False
            Visible         =   True
            Width           =   165
         End
         Begin Listbox Listbox_Depths_Results
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
            Height          =   246
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            InitialValue    =   ""
            Italic          =   False
            Left            =   39
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
            TabIndex        =   2
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   437
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   447
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin PushButton PushButton_Deptp_ExportText
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Export Text"
            Default         =   False
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   222
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   695
            Underline       =   False
            Visible         =   True
            Width           =   165
         End
      End
      Begin GroupBox GroupBox4
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "View Results"
         Enabled         =   True
         Height          =   678
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   508
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   34
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   47
         Underline       =   False
         Visible         =   True
         Width           =   665
         Begin Canvas Canvas_Projection_Iso
            AcceptFocus     =   True
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   541
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Left            =   520
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            Top             =   134
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   639
         End
         Begin TextField EditField_Depth_Plot_Zoom
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
            Left            =   563
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
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "500"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   74
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   60
         End
         Begin Label StaticText104
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
            Left            =   520
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
            Text            =   "Zoom"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   75
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   44
         End
         Begin RadioButton RadioButton_Depth_1
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "MaxDepth"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   628
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   74
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   88
         End
         Begin RadioButton RadioButton_Depth_2
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Rect Fields by Depth"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   719
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   4
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   73
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   152
         End
         Begin CheckBox CheckBox_Plot_Point
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Points"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   874
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   5
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   75
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   65
         End
         Begin CheckBox CheckBox_Plot_Grid
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Grid"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   945
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   6
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   75
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   53
         End
         Begin CheckBox CheckBox_Plot_Iso
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Iso"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   1003
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   1
            TabIndex        =   7
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   75
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   55
         End
         Begin CheckBox CheckBox_Plot_Isodose
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "DepthLines"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   1055
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   8
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   75
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   104
         End
         Begin TextField EditField_PP_X
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
            Left            =   576
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
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "0.5"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   695
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   109
         End
         Begin Label StaticText105
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
            Left            =   520
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
            Text            =   "X (cm)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   696
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   50
         End
         Begin TextField EditField_PP_Y
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
            Left            =   753
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
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "0.5"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   695
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   109
         End
         Begin Label StaticText106
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
            Left            =   697
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
            Text            =   "Y (cm)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   695
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   50
         End
         Begin Label StaticText_Depth_Pixel
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
            Left            =   874
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
            Text            =   "1"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   695
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   285
         End
         Begin RadioButton RadioButton_Depth_3
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "None"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   628
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   14
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   105
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   69
         End
         Begin TextField TextField_Y
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
            HelpTag         =   "Y resolution"
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   801
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
            TabIndex        =   15
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "0.1"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   103
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
         End
         Begin TextField TextField_X
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
            HelpTag         =   "X resolution"
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   709
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
            TabIndex        =   16
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "0.1"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   103
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
         End
         Begin CheckBox CheckBox_Plot_Legend
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Legend"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   893
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   17
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   105
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   75
         End
         Begin CheckBox CheckBox_Plot_Cross_Box
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Cross and box"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   974
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   18
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   103
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   144
         End
         Begin TextField TextField_Line_Thickness
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
            HelpTag         =   "X resolution"
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   526
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
            TabIndex        =   19
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "1"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   103
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   38
         End
         Begin TextField TextField_TextSize
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
            HelpTag         =   "X resolution"
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   576
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
            TabIndex        =   20
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "40"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   103
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   38
         End
      End
      Begin GroupBox GroupBox_FLEC11
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Copy FLEC Beams"
         Enabled         =   True
         Height          =   154
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   31
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   13
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   358
         Underline       =   False
         Visible         =   True
         Width           =   201
         Begin Label StaticText14
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_FLEC11"
            Italic          =   False
            Left            =   42
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   18
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Beam from #"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   441
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   86
         End
         Begin TextField EditField_FLEC_Copy2
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
            InitialParent   =   "GroupBox_FLEC11"
            Italic          =   False
            Left            =   148
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
            TabIndex        =   21
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "1"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   471
            Underline       =   False
            UseFocusRing    =   False
            Visible         =   True
            Width           =   50
         End
         Begin TextField EditField_FLEC_Copy1
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
            InitialParent   =   "GroupBox_FLEC11"
            Italic          =   False
            Left            =   148
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
            TabIndex        =   22
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "1"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   439
            Underline       =   False
            UseFocusRing    =   False
            Visible         =   True
            Width           =   50
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
            InitialParent   =   "GroupBox_FLEC11"
            Italic          =   False
            Left            =   42
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   23
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Beam to #"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   473
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   86
         End
         Begin CheckBox CheckBox_FLEC_Batch
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Batch generate "
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_FLEC11"
            Italic          =   False
            Left            =   42
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   24
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   386
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   162
         End
      End
      Begin GroupBox GroupBox_FLEC111
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Copy Photon Beams"
         Enabled         =   True
         Height          =   136
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   280
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   18
         TabPanelIndex   =   5
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   110
         Underline       =   False
         Visible         =   True
         Width           =   194
         Begin Label StaticText141
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_FLEC111"
            Italic          =   False
            Left            =   291
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "Beam from #"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   174
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   86
         End
         Begin TextField EditField_Photon_Copy2
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
            InitialParent   =   "GroupBox_FLEC111"
            Italic          =   False
            Left            =   397
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
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "1"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   204
            Underline       =   False
            UseFocusRing    =   False
            Visible         =   True
            Width           =   50
         End
         Begin TextField EditField_Photon_Copy1
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
            InitialParent   =   "GroupBox_FLEC111"
            Italic          =   False
            Left            =   397
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
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "1"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   172
            Underline       =   False
            UseFocusRing    =   False
            Visible         =   True
            Width           =   50
         End
         Begin Label StaticText151
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_FLEC111"
            Italic          =   False
            Left            =   291
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   3
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "Beam to #"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   206
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   86
         End
         Begin CheckBox CheckBox_Photon_Batch
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Batch generate "
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_FLEC111"
            Italic          =   False
            Left            =   291
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
            Top             =   138
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   162
         End
      End
      Begin GroupBox GroupBox_FLEC1111
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Arc Photon Beams"
         Enabled         =   True
         Height          =   155
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   280
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   19
         TabPanelIndex   =   5
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   267
         Underline       =   False
         Visible         =   True
         Width           =   194
         Begin Label StaticText1411
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_FLEC1111"
            Italic          =   False
            Left            =   291
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "from angle"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   331
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   86
         End
         Begin TextField EditField_Photon_arc2
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
            InitialParent   =   "GroupBox_FLEC1111"
            Italic          =   False
            Left            =   397
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
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "1"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   361
            Underline       =   False
            UseFocusRing    =   False
            Visible         =   True
            Width           =   50
         End
         Begin TextField EditField_Photon_arc1
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
            InitialParent   =   "GroupBox_FLEC1111"
            Italic          =   False
            Left            =   397
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
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "1"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   329
            Underline       =   False
            UseFocusRing    =   False
            Visible         =   True
            Width           =   50
         End
         Begin Label StaticText1511
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_FLEC1111"
            Italic          =   False
            Left            =   291
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   3
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "to angle"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   363
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   86
         End
         Begin CheckBox CheckBox_Photon_Arc_Batch
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Arc generate "
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_FLEC1111"
            Italic          =   False
            Left            =   291
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
            Top             =   297
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   162
         End
         Begin TextField EditField_Photon_Arc_delta
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
            InitialParent   =   "GroupBox_FLEC1111"
            Italic          =   False
            Left            =   397
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
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "1"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   395
            Underline       =   False
            UseFocusRing    =   False
            Visible         =   True
            Width           =   50
         End
         Begin Label StaticText15111
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_FLEC1111"
            Italic          =   False
            Left            =   291
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   6
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "delta angle"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   397
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   86
         End
      End
      Begin GroupBox GroupBox_FLEC1112
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "ARC FLEC Beams"
         Enabled         =   True
         Height          =   154
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   31
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   14
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   542
         Underline       =   False
         Visible         =   True
         Width           =   201
         Begin Label StaticText1412
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_FLEC1112"
            Italic          =   False
            Left            =   42
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Gantry from #"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   604
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   86
         End
         Begin TextField EditField_FLEC_ARC_To
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
            InitialParent   =   "GroupBox_FLEC1112"
            Italic          =   False
            Left            =   148
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
            Text            =   "1"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   634
            Underline       =   False
            UseFocusRing    =   False
            Visible         =   True
            Width           =   50
         End
         Begin TextField EditField_FLEC_ARC_From
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
            InitialParent   =   "GroupBox_FLEC1112"
            Italic          =   False
            Left            =   148
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
            Text            =   "1"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   602
            Underline       =   False
            UseFocusRing    =   False
            Visible         =   True
            Width           =   50
         End
         Begin Label StaticText1512
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_FLEC1112"
            Italic          =   False
            Left            =   42
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   3
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Gantry to #"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   635
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   86
         End
         Begin CheckBox CheckBox_FLEC_Batch_ARC
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Batch ARC generate "
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_FLEC1112"
            Italic          =   False
            Left            =   42
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   4
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   570
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   162
         End
         Begin TextField EditField_FLEC_ARC_Delta
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
            InitialParent   =   "GroupBox_FLEC1112"
            Italic          =   False
            Left            =   148
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
            Text            =   "10"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   668
            Underline       =   False
            UseFocusRing    =   False
            Visible         =   True
            Width           =   50
         End
         Begin Label StaticText15121
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_FLEC1112"
            Italic          =   False
            Left            =   42
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   6
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Delta"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   670
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   86
         End
      End
      Begin PushButton PushButton_VMC_Source01
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "VMC Source Sepctrum"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   80
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   6
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   161
         Underline       =   False
         Visible         =   True
         Width           =   240
      End
      Begin RadioButton RadioButton_Photon_Jaw
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Jaw"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   20
         TabPanelIndex   =   5
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   265
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin RadioButton RadioButton_Photon_MLC
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "MLC"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Top"
         Italic          =   False
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   21
         TabPanelIndex   =   5
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   297
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  if App.which_window_TreatmentPlanning Then
		    Window_Treatment.Beam_update_beam
		  End
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Window_Open
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Depth_Iso()
		  Dim ilb as Integer
		  
		  Iso_Values=NEW Class_Iso_Dose_Settings
		  
		  ReDim Iso_Values.colours(-1)
		  ReDim Iso_Values.values(-1)
		  ReDim Iso_Values.each_show(-1)
		  
		  Listbox_Depths.Heading(0)="Depth (cm)"
		  Listbox_Depths.ColumnType(0)=3
		  Listbox_Depths.Heading(1)="Colour"
		  Listbox_Depths.DeleteAllRows
		  
		  
		  for ilb=0 to 40
		    Iso_Values.colours.Append gVis.Make_Clour
		    Iso_Values.values.Append (ilb*(0.5))
		    
		    Iso_Values.each_show.Append True
		    Listbox_Depths.AddRow Format(Iso_Values.values(ilb),"00.#")
		  next
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Determine_Angles()
		  //-----------------------------------
		  // Determine which Gantry angles to use
		  // For each image,
		  // 1 Calculate center of mass  contour
		  // 2 Determine limiting gantry angles
		  //-----------------------------------
		  Dim i,k,j,m ,pixx,pixy,pwidth,d,poly_cmx,poly_cmy,poly_cmx_2,poly_cmy_2,p_index,pix_app_x,pix_app_end1_x,pix_app_y,_
		  a,pix_app_end2_x,pix_app_end2_y,pix_app_end1_y, z_start, z_end as Integer
		  Dim Normal,New_Picture,MaxSetting,view_pic as Picture
		  Dim x,y,x_cm,x_cm_new,y_cm,y_cm_new,del_x,ex_distance,length,cang,ang,ang_2, _
		  ssd_length,ang_ssd,iso_app_x,iso_app_y,z_depth_start,z_depth_end,max_x1,max_x2,max_y1,max_y2 as Single
		  Dim gg as Graphics
		  Dim file,file_ex,file2 as RTOG_Structure_One_Structure
		  Dim poly_target(-1),poly_external(-1),p3 as Class_Polygon
		  Dim pp as Class_Optimization_Projections_One
		  Dim exitBoo as Boolean
		  //--------------------------------
		  
		  ReDim poly_external(UBound(gRTOG.Scan))
		  ReDim poly_target(UBound(gRTOG.Scan))
		  ReDim Projections(-1)
		  
		  
		  del_x=gvis.scale_width*gvis.nx/nx
		  
		  
		  Normal=New Picture(nx,nx,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		  file = new RTOG_Structure_One_Structure
		  
		  if Normal=nil Then
		    Return
		  end
		  
		  // Progress bar
		  ProgressBar_Angles.Maximum=UBound(gRTOG.Scan)+1
		  
		  if external_index=target_index Then
		    Return
		  end
		  
		  
		  for i=0 to UBound(gRTOG.Scan)
		    file = gRTOG.structures(target_index).structure_Data(i)
		    
		    poly_target(i) = new class_polygon
		    poly_external(i) = new Class_Polygon
		    
		    // Get Target contour
		    if UBound(file.Segments)>-1 Then
		      for k =0 to ubound(file.segments(0).Points)
		        x=Round((file.segments(0).Points(k).x-gVis.xoff_set)/del_x )
		        y=Round((file.segments(0).Points(k).y-gVis.yoff_set)/del_x)
		        pixx=x
		        pixy=y
		        poly_target(i).AddPoint pixx,pixy
		      next
		    end
		    
		    
		    
		    // Get external contour
		    file_ex = new RTOG_Structure_One_Structure
		    file_ex = gRTOG.structures(external_index).structure_Data(i)
		    for j = 0 to ubound(file_ex.segments)
		      
		      for k =0 to ubound(file_ex.segments(j).Points)
		        x=Round((file_ex.segments(j).Points(k).x-gVis.xoff_set)/del_x )
		        y=Round((file_ex.segments(j).Points(k).y-gVis.yoff_set)/del_x)
		        pixx=x
		        pixy=y
		        poly_external(i).AddPoint pixx,pixy
		      next
		    next
		    
		  next
		  
		  
		  
		  // Loop for all scans in x-y plane
		  for i=0 to UBound(gRTOG.Scan)
		    
		    ProgressBar_Angles.Value=i+1
		    ProgressBar_Angles.Refresh
		    
		    gg=Normal.Graphics
		    if gg=nil Then
		      Return
		    end
		    //gg.UseOldRenderer=True
		    gg.ForeColor=RGB(0,0,0)
		    gg.FillRect(0,0,gg.Width,gg.Height)
		    
		    file = gRTOG.structures(target_index).structure_Data(i)
		    
		    if UBound(file.Segments)>-1 Then
		      if UBound(file.Segments(0).Points)>0 Then
		        // If we have points
		        
		        
		        // Draw target contour
		        gg.foreColor =RGB(150,0,0)
		        gg.FillPolygon poly_target(i).Points
		        
		        
		        //Draw external lines
		        gg.PenWidth =1
		        gg.PenHeight=1
		        gg.foreColor =RGB(0,200,0)
		        // Get external contour
		        file_ex = new RTOG_Structure_One_Structure
		        file_ex = gRTOG.structures(external_index).structure_Data(i)
		        for j = 0 to ubound(file_ex.segments)
		          p3=new Class_Polygon
		          for k =0 to ubound(file_ex.segments(j).Points)
		            x=(file_ex.segments(j).Points(k).x-gVis.xoff_set)/del_x 
		            y=(file_ex.segments(j).Points(k).y-gVis.yoff_set)/del_x
		            pixx=Round(x)
		            pixy=Round(y)
		            p3.AddPoint pixx,pixy
		          next
		          gg.DrawPolygon p3.Points
		        next
		        
		        
		        
		        
		        
		        
		        //Find center of mass
		        poly_cmx=poly_target(i).XCenter
		        poly_cmy=poly_target(i).YCenter
		        
		        // Draw center of mass point
		        gg.foreColor =RGB(255,0,255)
		        gg.DrawLine poly_cmx,poly_cmy ,poly_cmx,poly_cmy 
		        
		        
		        x_cm = gVis.xoff_set+poly_cmx*del_x
		        y_cm = gVis.yoff_set+ poly_cmy*del_x
		        
		        // What is this for?
		        length=Sqrt(x_cm*x_cm+y_cm*y_cm)
		        
		        
		        
		        
		        // For all points along the external contour, 
		        // Determine the distance from center mass
		        // Determine the projection width
		        for k=0 to nx -1 // x values
		          for j=0 to nx -1 // y values
		            if gg.Pixel(k,j).Green=200 Then
		              // Calculate distance
		              
		              pp=new Class_Optimization_Projections_One
		              pp.iso_Z=gRTOG.Scan(i).Z_Value
		              
		              pp.iso_x=k*del_x + gVis.xoff_set
		              pp.iso_y=j*del_x + gVis.yoff_set
		              
		              pp.External_Distance=Sqrt((pp.iso_x-x_cm)^2+(pp.iso_y-y_cm)^2)
		              if pp.External_Distance>10 Then 
		                Exit
		              end
		              
		              New_Picture=New Picture(nx,nx,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		              if New_Picture=nil Then
		                New_Picture=New Picture(nx,nx,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		                
		              end
		              
		              
		              
		              New_Picture.Graphics.DrawPicture Normal,0,0
		              New_Picture.Graphics.ForeColor=rgb(255,255,255)
		              New_Picture.Graphics.DrawLine k,j,poly_cmx,poly_cmy
		              
		              // Determine Angle
		              cang=(pp.iso_y-y_cm)/pp.External_Distance
		              ang=acos(cang)
		              
		              iso_app_x=5*sin(ang)
		              iso_app_y=5*cos(ang)
		              
		              
		              
		              
		              
		              if pp.iso_x-x_cm<0 Then
		                pp.Gantry_Angle=180+ang*180/PI
		                iso_app_x=-iso_app_x
		              else
		                pp.Gantry_Angle=180 -ang*180/PI
		              end
		              pp.Gantry_Angle=Round(pp.Gantry_Angle)
		              iso_app_x=iso_app_x+pp.iso_x
		              iso_app_y=iso_app_y+pp.iso_y
		              
		              
		              
		              // Draw Applicator end
		              pix_app_x=(iso_app_x-gVis.xoff_set)/del_x
		              pix_app_y=(iso_app_y-gVis.yoff_set)/del_x
		              New_Picture.Graphics.ForeColor=rgb(255,255,255)
		              New_Picture.Graphics.DrawLine k,j,pix_app_x,pix_app_y
		              
		              
		              // Draw Applicator width
		              New_Picture.Graphics.ForeColor=rgb(0,0,255)
		              if  pp.iso_x-x_cm<0 Then
		                pix_app_end1_x=pix_app_x+10/del_x*cos(ang)
		                pix_app_end1_y=pix_app_y+10/del_x*sin(ang)
		                pix_app_end2_x=pix_app_x-10/del_x*cos(ang)
		                pix_app_end2_y=pix_app_y-10/del_x*sin(ang)
		              else
		                pix_app_end1_x=pix_app_x+10/del_x*cos(ang)
		                pix_app_end1_y=pix_app_y-10/del_x*sin(ang)
		                pix_app_end2_x=pix_app_x-10/del_x*cos(ang)
		                pix_app_end2_y=pix_app_y+10/del_x*sin(ang)
		              end
		              New_Picture.Graphics.DrawLine pix_app_x,pix_app_y,pix_app_end1_x,pix_app_end1_y
		              New_Picture.Graphics.DrawLine pix_app_x,pix_app_y,pix_app_end2_x,pix_app_end2_y
		              
		              // Determine if applicator is within external contour
		              exitBoo=False
		              for m=10 DownTo 0
		                if  pp.iso_x-x_cm<0 Then
		                  pix_app_end1_x=pix_app_x-m/del_x*cos(ang)
		                  pix_app_end1_y=pix_app_y+m/del_x*sin(ang)
		                  pix_app_end2_x=pix_app_x+m/del_x*cos(ang)
		                  pix_app_end2_y=pix_app_y-m/del_x*sin(ang)
		                else
		                  pix_app_end1_x=pix_app_x-m/del_x*cos(ang)
		                  pix_app_end1_y=pix_app_y-m/del_x*sin(ang)
		                  pix_app_end2_x=pix_app_x+m/del_x*cos(ang)
		                  pix_app_end2_y=pix_app_y+m/del_x*sin(ang)
		                end
		                
		                if poly_external(i).IsWithin(pix_app_end1_x,pix_app_end1_y) or poly_external(i).IsWithin(pix_app_end2_x,pix_app_end2_y) Then
		                  exitBoo=True
		                  exit
		                end
		              next
		              
		              if exitBoo Then
		                exit
		              end
		              
		              // Determine Projection width
		              pp.Max_X_Field_Width=poly_target(i).CrossSectionWidth(pp.Gantry_Angle)
		              pp.Max_X_Field_Width=Abs(pp.Max_X_Field_Width*del_x)
		              
		              
		              
		              // Determine Z target Projection width
		              // Not sure what this is doing? DEC 2010
		              z_start=Round(-4/gvis.scale_thickness+i)
		              z_end=Round(4/gvis.scale_thickness+i)
		              for m=z_start to z_end
		                if m>-1 and m<=UBound(gRTOG.Scan) Then
		                  if UBound(poly_target(m).Points)>2 Then
		                    z_depth_start=gRTOG.Scan(m).Z_Value
		                    Exit
		                  end
		                end
		              next
		              for m=z_end DownTo z_start
		                if m>-1 and m<=UBound(gRTOG.Scan) Then
		                  if UBound(poly_target(m).Points)>2 Then
		                    z_depth_end=gRTOG.Scan(m).Z_Value
		                    Exit
		                  end
		                end
		              next
		              pp.Max_Z_Field_Opening=z_depth_end-z_depth_start
		              
		              
		              // Determine the amount of target in Z+1,Z+2... and Z-1,Z-2...
		              // Determine if beam is centered over target Volume
		              for m=0 to i-1
		                file2 = gRTOG.structures(target_index).structure_Data(m)
		                if UBound(file2.Segments)>-1 Then
		                  if UBound(file2.Segments(0).Points)>0 Then
		                    pp.Target_Z_Minus=pp.Target_Z_Minus+gVis.scale_thickness
		                  end
		                end
		              next
		              
		              for m=i+1 to UBound(gRTOG.Scan)
		                file2 = gRTOG.structures(target_index).structure_Data(m)
		                if UBound(file2.Segments)>-1 Then
		                  if UBound(file2.Segments(0).Points)>0 Then
		                    pp.Target_Z_Pluse=pp.Target_Z_Pluse+gVis.scale_thickness
		                  end
		                end
		              Next
		              
		              
		              
		              
		              // Determine the max field size setttings
		              
		              for m=0 to UBound(gRTOG.Scan)
		                file2 = gRTOG.structures(target_index).structure_Data(m)
		                if UBound(file2.Segments)>-1 Then
		                  if UBound(file2.Segments(0).Points)>0 Then
		                    //MaxSetting=New Picture(nx,nx,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		                    max_y1=pp.iso_Z- gRTOG.Scan(m).Z_Value
		                    exit for m
		                  end
		                end
		              Next
		              
		              
		              for m= UBound(gRTOG.Scan) DownTo 0
		                file2 = gRTOG.structures(target_index).structure_Data(m)
		                if UBound(file2.Segments)>-1 Then
		                  if UBound(file2.Segments(0).Points)>0 Then
		                    //MaxSetting=NewPicture(nx,nx,32)
		                    max_y2=gRTOG.Scan(m).Z_Value-pp.iso_Z
		                    exit for m
		                  end
		                end
		              Next
		              
		              
		              max_x2=0
		              for m=0 to UBound(gRTOG.Scan)
		                // Determine Projection width
		                file2 = gRTOG.structures(target_index).structure_Data(m)
		                if UBound(file2.Segments)>-1 Then
		                  if UBound(file2.Segments(0).Points)>0 Then
		                    max_x1=poly_target(m).CrossSectionWidth(pp.Gantry_Angle)
		                    max_x1=Abs(max_x1*del_x)
		                    if max_x1> max_x2 Then
		                      max_x2=max_x1
		                    end
		                  end
		                end
		              Next
		              
		              pp.Max_x1=max_x2/2
		              pp.Max_x2=max_x2/2
		              pp.Max_y1=max_y1
		              pp.Max_y2=max_y2
		              
		              view_pic=New Picture(256,256,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		              view_pic.Graphics.DrawPicture New_Picture,0,0,256,256,0,0,nx,nx
		              pp.Projection=view_pic
		              
		              Projections.Append pp
		              
		            end // If point is Green=200 external contour
		          next // for all y
		        next // for all x
		        
		      end // if we have points
		      
		    end // If we have a segment
		    
		  next //next i, image
		  
		  
		  
		  
		  // Find the best angles
		  
		  
		  // Sort by center width
		  // find max width for each loop, decrease loop by one each time
		  for i=0 to UBound(Projections)
		    x=100
		    for k= 0+i to UBound(Projections)
		      if Abs(Projections(k).Target_Z_Minus-Projections(k).Target_Z_Pluse)<x Then
		        x=Abs(Projections(k).Target_Z_Minus-Projections(k).Target_Z_Pluse)
		        p_index=k
		      end
		      if k=UBound(Projections) Then
		        Projections(p_index).weight_center=100*(UBound(Projections)+1-i)/(UBound(Projections)+1)
		        Projections.Insert(i,Projections(p_index))
		        Projections.Remove(p_index+1)
		      end
		    next
		  next
		  
		  
		  
		  // Sort by largest width
		  // find max width for each loop, decrease loop by one each time
		  for i=0 to UBound(Projections)
		    x=0
		    for k= 0+i to UBound(Projections)
		      if Projections(k).Max_X_Field_Width>x Then
		        x=Projections(k).Max_X_Field_Width
		        p_index=k
		      end
		      if k=UBound(Projections) Then
		        Projections(p_index).weight_X_Field_Size=100*(UBound(Projections)+1-i)/(UBound(Projections)+1)
		        Projections.Insert(i,Projections(p_index))
		        Projections.Remove(p_index+1)
		      end
		    next
		  next
		  
		  
		  // Sort by smallest distance
		  // find max width for each loop, decrease loop by one each time
		  for i=0 to UBound(Projections)
		    x=10
		    for k= 0+i to UBound(Projections)
		      if Projections(k).External_Distance<x Then
		        x=Projections(k).External_Distance
		        p_index=k
		      end
		      if k=UBound(Projections) Then
		        Projections(p_index).weight_distance=100*(UBound(Projections)+1-i)/(UBound(Projections)+1)
		        Projections.Insert(i,Projections(p_index))
		        Projections.Remove(p_index+1)
		      end
		    next
		  next
		  
		  // Sort by Z field opening
		  // find max width for each loop, decrease loop by one each time
		  for i=0 to UBound(Projections)
		    x=0
		    for k= 0+i to UBound(Projections)
		      if Projections(k).Max_Z_Field_Opening>x Then
		        x=Projections(k).Max_Z_Field_Opening
		        p_index=k
		      end
		      if k=UBound(Projections) Then
		        Projections(p_index).weight_Z_Field_Size=100*(UBound(Projections)+1-i)/(UBound(Projections)+1)
		        Projections.Insert(i,Projections(p_index))
		        Projections.Remove(p_index+1)
		      end
		    next
		  next
		  
		  
		  
		  // Sort by best score 
		  // find max width for each loop, decrease loop by one each time
		  for i=0 to UBound(Projections)
		    x=0
		    for k= 0+i to UBound(Projections)
		      if Projections(k).weight_Z_Field_Size*Projections(k).weight_distance*Projections(k).weight_X_Field_Size*Projections(k).weight_center>x Then
		        x=Projections(k).weight_distance*Projections(k).weight_X_Field_Size*Projections(k).weight_Z_Field_Size*Projections(k).weight_center
		        p_index=k
		      end
		      if k=UBound(Projections) Then
		        Projections.Insert(i,Projections(p_index))
		        Projections.Remove(p_index+1)
		      end
		    next
		  next
		  
		  Update_BEAM_Map
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Determine_Depth_at_Projection()
		  //-----------------------------------
		  // Determine depth at a projection
		  // for each image and the target contour
		  //
		  // 1 Use isocenter
		  // 2 Use gantry angle
		  //
		  // Author
		  // Andrew Alexander
		  //-----------------------------------
		  Dim temp_min as Single
		  Dim Normal,Rot,isoshift as Picture
		  Dim i,pixx,pixy,k,j,y,x,rotation_x,rotation_y ,y_lower, a,x1,x2,y1,y2,y_higher as Integer
		  Dim file,file_ex as RTOG_Structure_One_Structure
		  Dim poly_target,poly_external as Class_Polygon
		  Dim px as PixmapShape
		  Dim ff as Class_MERT_Field_One
		  Dim subff as Class_MERT_Field_Sub
		  Dim temp as RGBSurface
		  Dim pstrip as Picture
		  //-----------------------------------
		  
		  
		  ff=new Class_MERT_Field_One
		  ff.del_x=gvis.scale_width*gvis.nx/nx
		  ff.Del_Y=gVis.scale_thickness
		  ff.nx=nx
		  ff.Gantry=Beam.Collimator.Fields(0).Gantry_Angle
		  ff.isoX=Beam.Collimator.Fields(0).isocenter.x
		  ff.isoy=Beam.Collimator.Fields(0).isocenter.y
		  ff.isoz=Beam.Collimator.Fields(0).isocenter.z
		  
		  
		  rotation_x=Round((ff.isoX-gVis.xoff_set)/ff.del_x )
		  rotation_y=Round((ff.isoy-gVis.yoff_set)/ff.del_x)
		  
		  
		  // Check that the target and external contours only have one segment
		  for i=0 to UBound(gVis.scans)
		    file = new RTOG_Structure_One_Structure
		    file = gRTOG.structures(target_index).structure_Data(i)
		    file_ex = new RTOG_Structure_One_Structure
		    file_ex = gRTOG.structures(external_index).structure_Data(i)
		    
		    // Get Target contour
		    if UBound(file.Segments)>0 Then
		      MsgBox "Error! More than one target segment at slice "+str(i+1)
		      Return
		    end
		    
		    // Get external contour
		    if  UBound(file_ex.segments)>0 Then
		      MsgBox "Error! More than one external segment at slice "+str(i+1)
		      Return
		    end
		  next
		  
		  
		  
		  StaticText_Depth_Progress.Text="Making axial and rotated images"
		  ProgressBar_Depths.Maximum=UBound(gVis.scans)
		  for i=0 to UBound(gVis.scans)
		    ProgressBar_Depths.Value=i
		    ProgressBar_Depths.Refresh
		    
		    
		    file = new RTOG_Structure_One_Structure
		    file = gRTOG.structures(target_index).structure_Data(i)
		    
		    poly_target = new class_polygon
		    poly_external = new Class_Polygon
		    
		    // Get Target contour
		    if UBound(file.Segments)>-1 Then
		      if ubound(file.segments(0).Points)>-1 Then
		        for k =0 to ubound(file.segments(0).Points)
		          x=Round((file.segments(0).Points(k).x-gVis.xoff_set)/ff.del_x )
		          y=Round((file.segments(0).Points(k).y-gVis.yoff_set)/ff.del_x)
		          pixx=x
		          pixy=y
		          poly_target.AddPoint pixx,pixy
		        next
		        
		        // Get external contour
		        file_ex = new RTOG_Structure_One_Structure
		        file_ex = gRTOG.structures(external_index).structure_Data(i)
		        for j = 0 to ubound(file_ex.segments)
		          for k =0 to ubound(file_ex.segments(j).Points)
		            x=Round((file_ex.segments(j).Points(k).x-gVis.xoff_set)/ff.del_x )
		            y=Round((file_ex.segments(j).Points(k).y-gVis.yoff_set)/ff.del_x)
		            pixx=x
		            pixy=y
		            poly_external.AddPoint pixx,pixy
		          next
		        next
		        
		        Normal=New Picture(nx,nx,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		        Normal.Graphics.UseOldRenderer=True
		        
		        Normal.Graphics.ForeColor=rgb(255,255,255)
		        Normal.Graphics.FillRect(0,0,nx,nx)
		        
		        Normal.Graphics.ForeColor=rgb(0,0,0)
		        Normal.Graphics.FillPolygon poly_external.Points
		        
		        Normal.Graphics.ForeColor=rgb(255,0,0)
		        Normal.Graphics.FillPolygon poly_target.Points
		        
		        // Draw Isocenter
		        Normal.Graphics.ForeColor=rgb(0,0,255)
		        Normal.Graphics.FillOval(rotation_x-1,rotation_y-1,2,2)
		        
		        isoshift=New Picture(nx,nx,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		        isoshift.Graphics.UseOldRenderer=True
		        isoshift.Graphics.DrawPicture(Normal, nx/2-rotation_x,nx/2-rotation_y,nx,nx,0,0,nx,nx)
		        
		        px =new PixmapShape(isoshift)
		        px.Rotation =-PI*ff.Gantry/180
		        px.X=nx/2
		        px.y=nx/2
		        Rot=New Picture(nx,nx,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		        Rot.Graphics.UseOldRenderer=True
		        x1=0
		        y1=0
		        Rot.Graphics.DrawObject(px,x1,y1)
		        ff.Normal_Slices.Append Normal
		        ff.Rotated_Slices.Append Rot
		        ff.Y.Append gRTOG.Scan(i).Z_Value
		      end
		    end
		  next
		  // Why the last term!!!!
		  ff.X_offset=-nx/2*ff.del_x+ff.Del_x/2
		  ff.nz=UBound(ff.Rotated_Slices)+1
		  // Sort Z values for slice position
		  ff.Y.Sort
		  
		  ReDim ff.X(nx-1)
		  for x=0 to nx-1
		    ff.x(x)=ff.X_offset+x*ff.del_x
		  next
		  
		  // Arrange the Y array, Y(0) = Largest Value
		  // Y goes from Largest to smallest
		  // This method will have problems with discontinuous targets
		  ff.Y(0)=ff.Y(UBound(ff.Y))
		  ff.Y_offset=ff.Y(0)
		  for y=1 to ff.nz-1
		    ff.y(y)=ff.Y_offset -y*gVis.scale_thickness
		  next
		  
		  
		  //--------------------------------------------------------------
		  StaticText_Depth_Progress.Text="Filter depth range on rotated images in Y pixels"
		  ProgressBar_Depths.Maximum=nx*2
		  ProgressBar_Depths.Refresh
		  y_lower=0
		  for y=(nx-1) DownTo 0
		    ProgressBar_Depths.Value=nx-y
		    ProgressBar_Depths.Refresh
		    for x=0 to (nx-1)
		      for i=0 to UBound(ff.Rotated_Slices)
		        temp=ff.Rotated_Slices(i).RGBSurface
		        if temp.pixel(x,y)=RGB(255,0,0) Then
		          if y>y_lower Then
		            y_lower=y
		          end
		        end
		      next
		    next
		  next
		  
		  
		  
		  y_higher=nx
		  for y=(nx-1) DownTo 0
		    ProgressBar_Depths.Value=nx-y
		    ProgressBar_Depths.Refresh
		    for x=0 to (nx-1)
		      for i=0 to UBound(ff.Rotated_Slices)
		        temp=ff.Rotated_Slices(i).RGBSurface
		        if temp.pixel(x,y)=RGB(255,0,0) Then
		          if y<y_higher Then
		            y_higher=y
		          end
		        end
		      next
		    next
		  next
		  
		  
		  //--------------------------------------------------------------
		  StaticText_Depth_Progress.Text="Calculate depth for each target pixel on rotated images"
		  ProgressBar_Depths.Maximum=-1
		  ProgressBar_Depths.Refresh
		  for y=y_lower DownTo y_higher // Seach within y range to speed things up
		    for x=0 to (nx-1)
		      for i=0 to UBound(ff.Rotated_Slices)
		        temp=ff.Rotated_Slices(i).RGBSurface
		        if temp.pixel(x,y)=RGB(255,0,0) Then
		          subff=new Class_MERT_Field_Sub
		          subff.X_Pic=x
		          subff.Y_Pic=y
		          subff.Z_Pic=i
		          for a=y DownTo 0 // Seach for the distance between point and external contour
		            if temp.pixel(x,a)=RGB(255,255,255) Then
		              subff.Depth=(y-a)*ff.del_x
		              exit
		            end
		          next
		          ff.Fields.Append subff
		        end
		      next
		    next
		  next
		  
		  
		  // Get max and min distal depth
		  ff.MaxDistalDepth=-111111
		  for i=0 to UBound(ff.Fields)
		    if ff.Fields(i).Depth>ff.MaxDistalDepth Then
		      ff.MaxDistalDepth=ff.Fields(i).Depth
		    end
		  next
		  ff.MinDistalDepth=100000
		  for i=0 to UBound(ff.Fields)
		    if ff.Fields(i).Depth<ff.MinDistalDepth Then
		      ff.MinDistalDepth=ff.Fields(i).Depth
		    end
		  next
		  
		  
		  
		  
		  
		  // Calculate distal depth at each pixel 
		  ReDim ff.Max_D(nx-1,ff.nz-1)
		  for x=0 to (nx-1)
		    for y=0 to (ff.nz-1)
		      temp_min=0
		      for i=0 to UBound(ff.Fields)
		        if ff.Fields(i).Depth>temp_min and ff.Fields(i).X_Pic=x and ff.Fields(i).Z_Pic=y Then
		          temp_min=ff.Fields(i).Depth
		        end
		      next
		      ff.Distal_Depth.Append temp_min
		      ff.Max_D(x,y)=temp_min
		    next
		  next
		  
		  //Make Max depth plot
		  Determine_Make_MaxDepth_Image(ff)
		  
		  // Make Isodose plot
		  ff.Depth_IsoValues(ff.Max_D,ff.X,ff.Y)
		  
		  //Calculate Average Depth
		  ff.AvgDistDepth=0
		  for i=0 to UBound(ff.Distal_Depth)
		    ff.AvgDistDepth=ff.AvgDistDepth+ff.Distal_Depth(i)
		  Next
		  ff.AvgDistDepth=ff.AvgDistDepth/(UBound(ff.Distal_Depth)+1)
		  
		  
		  // Make new plot of polygon isodose lines
		  ff.PolyIso
		  
		  Depth_Fields.All.Append ff
		  Update_Depth_Results
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Determine_Make_Isodepth_Images(ff as Class_MERT_Field_One)
		  '//-----------------------------------
		  '// Determine depth at a projection
		  '// for each image and the target contour
		  '//
		  '// 1 Use isocenter
		  '// 2 Use gantry angle
		  '//
		  '// Author
		  '// Andrew Alexander
		  '//-----------------------------------
		  'Dim max_z,min_z ,temp_min as Single
		  'Dim Normal,Rot,isoshift as Picture
		  'Dim i,pixx,pixy,k,j,y,x,rotation_x,rotation_y ,y_lower, a,x1,x2,y1,y2,y_higher as Integer
		  'Dim file,file_ex as RTOG_Structure_One_Structure
		  'Dim poly_target,poly_external as Class_Polygon
		  'Dim px as PixmapShape
		  'Dim subff as Class_MERT_Field_Sub
		  'Dim temp as RGBSurface
		  'Dim pstrip as Picture
		  '//-----------------------------------
		  '
		  '
		  '
		  'StaticText_Depth_Progress.Text="Making depth plot"
		  'ProgressBar_Depths.Maximum=-1
		  'ProgressBar_Depths.Refresh
		  '
		  '//Make Iso plots at each Depth
		  'for y=y_higher to y_lower
		  'Normal=NewPicture(nx,ff.nz,32)
		  'Normal.Graphics.UseOldRenderer=True
		  '
		  'for a=0 to UBound(ff.Rotated_Slices)
		  'pstrip=NewPicture(nx,1,32)
		  'pstrip.Graphics.UseOldRenderer=True
		  'pstrip.Graphics.DrawPicture(ff.Rotated_Slices(ff.nz-1-a),0,-y)
		  'Normal.Graphics.DrawPicture pstrip,0,a
		  'next
		  'ff.Coronal_Slices.Append Normal
		  'ff.Coronal_Depths.Append ((y-nx/2)*ff.del_x+100)
		  'next
		  '
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Determine_Make_MaxDepth_Image(ff as Class_MERT_Field_One)
		  //-----------------------------------
		  // Determine depth at a projection
		  // for each image and the target contour
		  //
		  // 1 Use isocenter
		  // 2 Use gantry angle
		  //
		  // Author
		  // Andrew Alexander
		  //-----------------------------------
		  Dim Normal as Picture
		  Dim i,x,y,a as Integer
		  Dim temp as RGBSurface
		  Dim temp_min as Single
		  //-----------------------------------
		  
		  
		  
		  //Summarize into one plot
		  Normal=New Picture(ff.nx,ff.nz,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		  Normal.Graphics.UseOldRenderer=True
		  Normal.Graphics.ForeColor=RGB(0,0,0)
		  Normal.Graphics.FillRect(0,0,ff.nx,ff.nz)
		  temp=Normal.RGBSurface
		  
		  
		  
		  StaticText_Depth_Progress.Text="Making depth plot"
		  ProgressBar_Depths.Maximum=ff.nx-1
		  ProgressBar_Depths.Refresh
		  
		  for x=0 to (nx-1)
		    ProgressBar_Depths.Value=x
		    ProgressBar_Depths.Refresh
		    for y=0 to (ff.nz-1)
		      temp_min=ff.Max_D(x,y)
		      
		      if temp_min=0 Then
		        temp.Pixel(x,y)=RGB(255,255,255)
		        
		      else
		        temp_min=(temp_min-ff.MinDistalDepth)/(ff.MaxDistalDepth-ff.MinDistalDepth)
		        a=abs(Round(255*temp_min))
		        temp.Pixel(x,y)=gvis.colour_map_jet(a)
		      end
		    next
		  next
		  
		  
		  ff.Plot=new Picture(Normal.Width,Normal.Height,32)
		  ff.Plot.Graphics.UseOldRenderer=True
		  ff.Plot.Graphics.DrawPicture Normal,0,0
		  
		  ff.Plot.Graphics.ForeColor=RGB(0,255,0)
		  ff.Plot.Graphics.DrawLine(nx,0,nx,Normal.Height)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Determine_SlidingCouch_beams()
		  //-----------------------------------
		  // Determine which Gantry angles to use
		  // For each image,
		  // 1 Calculate center of mass  contour
		  // 2 Determine limiting gantry angles
		  //-----------------------------------
		  Dim i,k,j,pixx,pixy,z_index as Integer
		  Dim Normal,Rotated as Picture
		  Dim iso_x,iso_y,iso_ypri,iso_xpri,iso_z,x_off,y_off,y,x,gantry,del_x,low_side,high_side,z_low,z_high,z_current,del_z as Single
		  Dim gg as Graphics
		  Dim file,file_ex,file2 as RTOG_Structure_One_Structure
		  Dim poly_target(-1),poly_external(-1),p3 as Class_Polygon
		  Dim pp(-1),onep as Class_Optimization_Target_Projection
		  Dim points(-1),onepoint as Class_Points
		  Dim exitBoo as Boolean
		  Dim bb as RTOG_Beam_Geometry
		  Const PI=3.14159265358979323846264338327950
		  Dim energy(-1) as String
		  Dim px as PixmapShape
		  //--------------------------------
		  
		  ReDim poly_external(UBound(gRTOG.Scan))
		  ReDim poly_target(UBound(gRTOG.Scan))
		  ReDim Projections(-1)
		  
		  if external_index=target_index Then
		    Return
		  end
		  
		  iso_x=val(TextField_SC_Iso_X.Text)
		  iso_y=val(TextField_SC_Iso_Y.Text)
		  gantry=Val(TextField_SC_Gantry.Text)
		  del_x=gvis.scale_width
		  
		  Normal=New Picture(nx,nx,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		  file = new RTOG_Structure_One_Structure
		  
		  del_z=val(TextField_SC_delZ.Text)
		  
		  
		  if Normal=nil Then
		    Return
		  end
		  
		  
		  if CheckBox_sc_E6.Value Then
		    energy.Append "6 MeV"
		  end
		  
		  if CheckBox_sc_E9.Value Then
		    energy.Append "9 MeV"
		  end
		  
		  if CheckBox_sc_E12.Value Then
		    energy.Append "12 MeV"
		  end
		  
		  if CheckBox_sc_E16.Value Then
		    energy.Append "16 MeV"
		  end
		  
		  if CheckBox_sc_E20.Value Then
		    energy.Append "20 MeV"
		  end
		  
		  
		  
		  
		  // Progress bar
		  ProgressBar_Angles.Maximum=UBound(gRTOG.Scan)+1
		  
		  for i=0 to UBound(gRTOG.Scan)
		    file = gRTOG.structures(target_index).structure_Data(i)
		    poly_target(i) = new class_polygon
		    //poly_external(i) = new Class_Polygon
		    
		    // Get Target contour
		    if UBound(file.Segments)>-1 Then
		      for k =0 to ubound(file.segments(0).Points)
		        x=Round((file.segments(0).Points(k).x-gVis.xoff_set)/del_x )
		        y=Round((file.segments(0).Points(k).y-gVis.yoff_set)/del_x)
		        pixx=x
		        pixy=y
		        poly_target(i).AddPoint pixx,pixy
		      next
		    end
		  next
		  
		  
		  
		  
		  // Loop for all scans in x-y plane
		  for i=0 to UBound(gRTOG.Scan)
		    
		    ProgressBar_Angles.Value=i+1
		    ProgressBar_Angles.Refresh
		    
		    gg=Normal.Graphics
		    if gg=nil Then
		      Return
		    end
		    //gg.UseOldRenderer=True
		    gg.ForeColor=RGB(0,0,0)
		    gg.FillRect(0,0,gg.Width,gg.Height)
		    
		    file = gRTOG.structures(target_index).structure_Data(i)
		    
		    if UBound(file.Segments)>-1 Then
		      if UBound(file.Segments(0).Points)>0 Then
		        // If we have points
		        
		        
		        // Draw target contour
		        gg.foreColor =RGB(150,0,0)
		        gg.DrawPolygon poly_target(i).Points
		        
		        
		        ReDim points(-1)
		        
		        
		        // For all points with the contour, 
		        // Determine the x,y poistion
		        for k=0 to nx -1 // x values
		          for j=0 to nx -1 // y values
		            if gg.Pixel(k,j).Red=150 Then
		              onepoint=new Class_Points
		              onepoint.X_cm=k*del_x + gVis.xoff_set
		              onepoint.Y_cm=j*del_x + gVis.yoff_set
		              points.Append onepoint
		            end // If point is red=150 target
		          next // for all y
		        next // for all x
		        
		        //Rotated=New Picture(normal.Width*2,Normal.Height*2,32)
		        
		        //px=New PixmapShape(Normal)
		        //px.rotation = 45/57.2958 //45 Degrees in radians
		        
		        
		        //Rotated.graphics.drawObject(px,normal.Width,normal.Height)
		        
		        
		        
		        
		        
		        // Rotate all points about the iso center with an angle
		        
		        for k=0 to UBound(points)
		          x=points(k).X_cm
		          y=points(k).y_cm
		          x_off=-iso_x+points(k).X_cm
		          y_off=-iso_y+points(k).y_cm
		          points(k).X_cm=cos(gantry*PI/180)*x_off-sin(gantry*PI/180)*y_off+iso_x
		          points(k).y_cm=sin(gantry*PI/180)*x_off+cos(gantry*PI/180)*y_off+iso_y
		        next
		        
		        onep= new Class_Optimization_Target_Projection
		        
		        onep.Gantry_Angle=gantry
		        onep.Iso_X=iso_x
		        onep.Iso_Y=iso_y
		        onep.Iso_Z=gRTOG.Scan(i).Z_Value
		        
		        
		        
		        // Find max values
		        low_side=10000
		        high_side=-1000
		        for k=0 to UBound(points)
		          if Points(k).X_cm<low_side Then
		            low_side=Points(k).X_cm
		          end
		          if Points(k).X_cm>high_side Then
		            high_side=Points(k).X_cm
		          end
		        next
		        onep.Max_field_X=high_side-low_side
		        
		        
		        
		        
		        // Find max values
		        low_side=10000
		        high_side=-1000
		        for k=0 to UBound(points)
		          if Points(k).y_cm<low_side Then
		            low_side=Points(k).y_cm
		          end
		          if Points(k).y_cm>high_side Then
		            high_side=Points(k).y_cm
		          end
		        next
		        
		        
		        onep.Max_field_y=high_side-low_side
		        onep.Max_depth=high_side-iso_y
		        
		        pp.Append onep
		      end // if we have points
		    end // If we have a segment
		  next //next i, image
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  // Now Generate BEAMS
		  z_current=pp(0).Iso_Z
		  
		  While z_current<=pp(UBound(pp)).Iso_Z
		    z_index=-1
		    
		    // Find Max_z, and field sizes
		    for i=0 to UBound(pp)
		      onep=pp(i)
		      if onep.Iso_Z=z_current or abs(onep.Iso_Z-z_current)<0.1 Then
		        z_index=i
		        exit
		      end
		    next
		    
		    if z_index>-1 Then
		      
		      
		      // Find Z_low
		      x=0
		      for i=z_index DownTo 0
		        if (onep.Iso_Z-pp(i).Iso_Z)<=4 Then
		          z_low=onep.Iso_Z-pp(i).Iso_Z
		          if pp(i).Max_field_X>x Then
		            x=pp(i).Max_field_X
		          end
		        else
		          exit
		        end
		      next
		      
		      
		      if i=-1 and z_low<4 Then
		        z_low=z_low+0.5
		      end
		      
		      
		      // Find Z_high
		      for i=z_index To UBound(pp)
		        if (pp(i).Iso_Z-onep.Iso_Z)<=4 Then
		          z_high=pp(i).Iso_Z-onep.Iso_Z
		          if pp(i).Max_field_X>x Then
		            x=pp(i).Max_field_X
		          end
		        else
		          exit For i
		        end
		      next
		      
		      if i=(UBound(pp)+1) and z_high<4 Then
		        z_high=z_high+0.5
		      end
		      
		      z_high=Round(z_high*10)
		      z_low=Round(z_low*10)
		      z_low=z_low/10
		      z_high=z_high/10
		      
		      
		      x=x*1.15
		      
		      
		      for k=0 to UBound(energy)
		        
		        gRTOG.Plan(Plan_Index).Add_Beam
		        
		        bb=gRTOG.Plan(Plan_Index).Beam(UBound(gRTOG.Plan(Plan_Index).Beam))
		        
		        
		        bb.FLEC.y1=z_low
		        bb.FLEC.y2=z_high
		        bb.RT_name="CL21X"
		        bb.Aperture_ID="15x15"
		        bb.FLEC.x1=Ceil(x*10/2)/10
		        bb.FLEC.x2=Ceil(x*10/2)/10
		        bb.Beam_Mode="FLEC"
		        
		        bb.Beam_Energy=energy(k)
		        bb.Collimator.Fields(0).isocenter.X=iso_x
		        bb.Collimator.Fields(0).isocenter.y=iso_y
		        bb.Collimator.Fields(0).isocenter.z=z_current
		        bb.Collimator.fields(0).X1=bb.FLEC.x1+.5
		        bb.Collimator.fields(0).X2=bb.FLEC.x2+.5
		        bb.Collimator.fields(0).Y1=bb.FLEC.y1+.5
		        bb.Collimator.fields(0).Y2=bb.FLEC.y2+.5
		        bb.Beam_Num=(UBound(gRTOG.Plan(Plan_Index).Beam)+2)
		        bb.Collimator.Fields(0).Gantry_Angle=gantry
		        MC_Get_Linac_Properties(UBound(gRTOG.Plan(Plan_Index).Beam))
		      next
		    end
		    z_current=z_current+del_z
		  Wend
		  Window_Treatment.Beam_Update_Beam
		  Window_Treatment.Save_Beams=True
		  gRTOG.Plan(Plan_Index).Save_Plan=True
		  ProgressBar_Angles.Value=0
		  ProgressBar_Angles.Refresh
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FLEC_Beam_different(a as rtog_Beam_Geometry) As boolean
		  Dim i as Integer
		  Dim bb as RTOG_Beam_Geometry
		  
		  
		  for i=0 to UBound(gRTOG.Plan(Plan_Index).Beam)
		    bb=gRTOG.Plan(Plan_Index).Beam(i)
		    
		    if bb.RT_name=a.RT_name and _
		      bb.Beam_Energy=a.Beam_Energy and _
		      bb.FLEC.x1=a.FLEC.x1 and _
		      bb.FLEC.x2=a.FLEC.x2 and _
		      bb.FLEC.y1=a.FLEC.y1 and _
		      bb.FLEC.y2=a.FLEC.y2 and _
		      bb.Collimator.Fields(0).Gantry_Angle=a.Collimator.Fields(0).Gantry_Angle  and _
		      bb.Collimator.Fields(0).Collimator_Angle=a.Collimator.Fields(0).Collimator_Angle and _
		      bb.Collimator.Fields(0).isocenter.x=a.Collimator.Fields(0).isocenter.x and _
		      bb.Collimator.Fields(0).isocenter.y=a.Collimator.Fields(0).isocenter.y and _
		      bb.Collimator.Fields(0).isocenter.z=a.Collimator.Fields(0).isocenter.z  then
		      
		      
		      Return False
		      
		    end
		  next
		  
		  
		  Return True
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FLEC_Generate_Feathered_beams()
		  //-------------------------------------------------------------
		  // Method to generate new McGill RT beams with the same
		  // gantry angle, isocenter, collimator angle, 
		  // but different openings
		  //
		  //
		  //-------------------------------------------------------------
		  Dim i,x,y as integer
		  Dim temp_beam as RTOG_Beam_Geometry
		  Dim collimator as Class_Collimator
		  Dim iso as Class_isocenter
		  Dim FLEC_a as Class_FLEC
		  Dim mm as Class_MLC
		  //-------------------------------------------------------------
		  
		  FLEC_a=new Class_FLEC
		  
		  
		  
		  ProgressBar_BeamLogic.Maximum=Feather_Number_X*Feather_Number_Y
		  
		  
		  for x=1 to Feather_Number_X
		    
		    FLEC_a.x1=FLEC.x1-(x-1)*Feather_Move_X
		    FLEC_a.x1=Round(1000*FLEC_a.x1)/1000
		    FLEC_a.x2=(-FLEC_a.x1)+Feather_OpenX
		    FLEC_a.x2=Round(1000*FLEC_a.x2)/1000
		    
		    for y=1 to Feather_Number_Y
		      FLEC_a.y1=FLEC.y1-(y-1)*Feather_Move_y
		      FLEC_a.y2=(-FLEC_a.y1)+Feather_OpenY
		      FLEC_a.y1=Round(1000*FLEC_a.y1)/1000
		      FLEC_a.y2=Round(1000*FLEC_a.y2)/1000
		      
		      
		      ProgressBar_BeamLogic.Value=(x-1)*Feather_Number_y+y
		      ProgressBar_BeamLogic.Refresh
		      
		      for i=0 to ListBox_Linac_Energies.ListCount-1
		        if ListBox_Linac_Energies.CellCheck(i,2)=True then
		          
		          temp_beam=new RTOG_Beam_Geometry
		          temp_beam.Make_New
		          temp_beam.Beam_Description=Beam.Beam_Description+" - Feathered"
		          
		          
		          
		          temp_beam.FLEC.x1=flec_a.x1
		          temp_beam.FLEC.x2=flec_a.x2
		          temp_beam.FLEC.y1=flec_a.y1
		          temp_beam.FLEC.y2=flec_a.y2
		          
		          temp_beam.RT_name= ListBox_Linac_Energies.Cell(i,0)
		          temp_beam.Beam_Energy= ListBox_Linac_Energies.Cell(i,1)
		          temp_beam.Beam_Mode="FLEC"
		          temp_beam.Nominal_Isocenter=100
		          temp_beam.Beam_Num=UBound(gRTOG.Plan(Plan_Index).Beam)+2
		          
		          temp_beam.Collimator.Fields(0).isocenter=Beam.Collimator.Fields(0).isocenter
		          
		          temp_beam.MLC=Beam.MLC
		          temp_beam.Collimator.Fields(0).Gantry_Angle=Beam.Collimator.Fields(0).Gantry_Angle
		          temp_beam.Collimator.Fields(0).Collimator_Angle=Beam.Collimator.Fields(0).Collimator_Angle
		          temp_beam.Collimator.Fields(0).Couch_Angle=Beam.Collimator.Fields(0).Couch_Angle
		          
		          temp_beam.Number_of_Tx=1
		          temp_beam.Aperture_ID=Beam.Aperture_ID
		          
		          temp_beam.Collimator.fields(0).X1=flec_a.X1+0.5
		          temp_beam.Collimator.fields(0).X2=flec_a.X2+0.5
		          temp_beam.Collimator.fields(0).Y1=flec_a.y1+0.5
		          temp_beam.Collimator.fields(0).Y2=flec_a.y2+0.5
		          
		          
		          if FLEC_Beam_different(temp_beam) Then
		            gRTOG.Plan(Plan_Index).Beam.append temp_beam
		            MC_AddBeam_FLEC
		          end
		          
		        end
		      next
		    next
		  next
		  
		  ProgressBar_BeamLogic.Value=0
		  ProgressBar_BeamLogic.Refresh
		  
		  MC_Open_settings(Plan_Index)
		  Window_Treatment.Save_Beams=True
		  gRTOG.Plan(Plan_Index).Save_Plan=True
		  FLEC_Open
		  Window_Treatment.Beam_Update_Beam
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FLEC_Generate_Raster_beams()
		  //-------------------------------------------------------------
		  // Method to generate new McGill RT beams with the same
		  // gantry angle, isocenter, collimator angle, 
		  // but different openings
		  //
		  //
		  //-------------------------------------------------------------
		  Dim i,x,y,zz as integer
		  Dim temp_beam as RTOG_Beam_Geometry
		  Dim collimator as Class_Collimator
		  Dim iso as Class_isocenter
		  Dim flec_a as Class_FLEC
		  Dim mm as Class_MLC
		  Dim beami(-1),arcnum,aa as Integer
		  Dim rt_name(-1) as String
		  Dim rt_eng(-1) as String
		  Dim gantry(-1),arc1,arc2,deltaarc as Single
		  //-------------------------------------------------------------
		  
		  flec_a=new Class_FLEC
		  
		  
		  for i=0 to ListBox_Linac_Energies.ListCount-1
		    if ListBox_Linac_Energies.CellCheck(i,2)=True then
		      rt_eng.Append ListBox_Linac_Energies.Cell(i,1)
		      rt_name.Append ListBox_Linac_Energies.Cell(i,0)
		    end
		  Next
		  
		  
		  if CheckBox_FLEC_Batch.Value Then
		    x=val(EditField_FLEC_Copy1.Text)
		    y=val(EditField_FLEC_Copy2.Text)
		    for i= x to y
		      beami.Append i
		    Next
		  else
		    beami.Append PopupMenu_FLEC_Beam.ListIndex
		  end
		  
		  if CheckBox_FLEC_Batch_ARC.Value Then
		    arc1=val(EditField_FLEC_ARC_From.Text)
		    arc2=val(EditField_FLEC_ARC_To.Text)
		    deltaarc=val(EditField_FLEC_ARC_Delta.Text)
		    arcnum=(arc2-arc1)/deltaarc
		    
		    for i=0 to arcnum
		      gantry.Append (arc1+deltaarc*(i))
		    Next
		    
		  else
		    arcnum=0
		  end
		  
		  
		  
		  
		  for i=0 to UBound(beami)
		    
		    Beam=gRTOG.Plan(Plan_Index).Beam(beami(i))
		    FLEC=Beam.FLEC
		    for aa=0 to arcnum
		      
		      for zz=0 to UBound(rt_eng)
		        for x=1 to Ray_X_Quad
		          flec_a.x1=FLEC.x1-(x-1)*Ray_delx
		          FLEC_a.x2=FLEC.x2-(Ray_X_Quad-x)*Ray_delx
		          
		          for y=1 to Ray_Y_Quad
		            flec_a.y1=FLEC.y1-(y-1)*Ray_dely
		            FLEC_a.y2=FLEC.y2-(Ray_y_Quad-y)*Ray_dely
		            
		            
		            
		            temp_beam=new RTOG_Beam_Geometry
		            temp_beam.Make_New
		            temp_beam.Beam_Description=Beam.Beam_Description+" - Subfield"
		            
		            
		            
		            temp_beam.FLEC.x1=flec_a.x1
		            temp_beam.FLEC.x2=flec_a.x2
		            temp_beam.FLEC.y1=flec_a.y1
		            temp_beam.FLEC.y2=flec_a.y2
		            
		            temp_beam.RT_name= rt_name(zz)
		            temp_beam.Beam_Energy= rt_eng(zz)
		            temp_beam.Beam_Mode="FLEC"
		            temp_beam.Nominal_Isocenter=100
		            temp_beam.Beam_Num=UBound(gRTOG.Plan(Plan_Index).Beam)+2
		            
		            temp_beam.Collimator.Fields(0).isocenter=Beam.Collimator.Fields(0).isocenter
		            
		            temp_beam.MLC=Beam.MLC
		            
		            if CheckBox_FLEC_Batch_ARC.Value Then
		              temp_beam.Collimator.Fields(0).Gantry_Angle=gantry(aa)
		            else
		              temp_beam.Collimator.Fields(0).Gantry_Angle=Beam.Collimator.Fields(0).Gantry_Angle
		            end
		            temp_beam.Collimator.Fields(0).Collimator_Angle=Beam.Collimator.Fields(0).Collimator_Angle
		            temp_beam.Collimator.Fields(0).Couch_Angle=Beam.Collimator.Fields(0).Couch_Angle
		            temp_beam.Number_of_Tx=1
		            temp_beam.Aperture_ID=Beam.Aperture_ID
		            
		            temp_beam.Collimator.fields(0).X1=flec_a.X1+0.5
		            temp_beam.Collimator.fields(0).X2=flec_a.X2+0.5
		            temp_beam.Collimator.fields(0).Y1=flec_a.y1+0.5
		            temp_beam.Collimator.fields(0).Y2=flec_a.y2+0.5
		            
		            
		            if FLEC_Beam_different(temp_beam) Then
		              gRTOG.Plan(Plan_Index).Beam.append temp_beam
		              MC_AddBeam_FLEC
		            end
		          Next
		        next
		      next
		    Next // For ARCS
		  Next
		  
		  
		  FLEC_Open
		  Window_Treatment.Save_Beams=True
		  gRTOG.Plan(Plan_Index).Save_Plan=True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FLEC_Open()
		  Dim j,x as integer
		  '==================================
		  
		  
		  
		  '======FLEC Populate=====
		  ListBox_Linac_Energies.DeleteAllRows
		  ListBox_Linac_Energies.ColumnWidths="33%,33%,33%"
		  ListBox_Linac_Energies.heading(0)="Linac"
		  ListBox_Linac_Energies.heading(1)="Energy"
		  ListBox_Linac_Energies.heading(2)="yes/no"
		  ListBox_Linac_Energies.ColumnType(2)=2
		  
		  j=-1
		  for x=0 to UBound(gLinacs.all_linacs)
		    if "FLEC"=gLinacs.all_linacs(x).Mode then
		      j=j+1
		      ListBox_Linac_Energies.AddRow gLinacs.all_linacs(x).RT_name
		      ListBox_Linac_Energies.Cell(j,1)=gLinacs.all_linacs(x).Energy
		    end
		  next
		  
		  
		  
		  Update_Beams
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FLEC_Populate_Beam()
		  EditField_FLEC_x1.Text=str(FLEC.x1)
		  EditField_FLEC_x2.Text=str(FLEC.x2)
		  EditField_FLEC_Y1.Text=str(FLEC.y1)
		  EditField_FLEC_Y2.Text=str(FLEC.y2)
		  EditField_FLEC_FieldX.Text=str(FLEC.x1+FLEC.x2)
		  EditField_FLEC_FieldY.Text=str(FLEC.y1+FLEC.y2)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Make_Depth_Beams()
		  //------------------------------------------
		  //
		  //
		  //------------------------------------------
		  Dim i,x,k,m,o,ffindex as Integer
		  Dim xmin,xmax,ymin,ymax as Single
		  Dim bb as RTOG_Beam_Geometry
		  Dim model_beam as RTOG_Beam_Geometry
		  //------------------------------------------
		  
		  ffindex=Listbox_Depths_Results.ListIndex
		  
		  
		  if RadioButton_Depth_1.Value Then
		    for i=0 to UBound(Iso_Values.colours)
		      xmin=1000
		      xmax=-1000
		      ymin=1000
		      ymax=-1000
		      
		      for x=0 to UBound(Depth_Fields.All(ffindex).Isolines_Main)
		        if Iso_Values.colours(i)=Depth_Fields.All(ffindex).Isolines_Main(x).Colour Then
		          
		          if Depth_Fields.All(ffindex).Isolines_Main(x).x1<xmin Then
		            xmin= Depth_Fields.All(ffindex).Isolines_Main(x).x1
		          end
		          if Depth_Fields.All(ffindex).Isolines_Main(x).x2<xmin Then
		            xmin= Depth_Fields.All(ffindex).Isolines_Main(x).x2
		          end
		          if Depth_Fields.All(ffindex).Isolines_Main(x).y1<ymin Then
		            ymin= Depth_Fields.All(ffindex).Isolines_Main(x).y1
		          end
		          if Depth_Fields.All(ffindex).Isolines_Main(x).y2<ymin Then
		            ymin= Depth_Fields.All(ffindex).Isolines_Main(x).y2
		          end
		          
		          //------------------------------
		          
		          if Depth_Fields.All(ffindex).Isolines_Main(x).x1>xmax Then
		            xmax= Depth_Fields.All(ffindex).Isolines_Main(x).x1
		          end
		          if Depth_Fields.All(ffindex).Isolines_Main(x).x2>xmax Then
		            xmax= Depth_Fields.All(ffindex).Isolines_Main(x).x2
		          end
		          if Depth_Fields.All(ffindex).Isolines_Main(x).y1>ymax Then
		            ymax= Depth_Fields.All(ffindex).Isolines_Main(x).y1
		          end
		          if Depth_Fields.All(ffindex).Isolines_Main(x).y2>ymax Then
		            ymax= Depth_Fields.All(ffindex).Isolines_Main(x).y2
		          end
		          
		        end
		      next
		      
		      if xmin<>1000 Then
		        
		        for o=0 to ListBox_Linac_Energies.ListCount-1
		          if ListBox_Linac_Energies.CellCheck(o,2)=True then
		            gRTOG.Plan(Plan_Index).Add_Beam
		            k=UBound(gRTOG.Plan(Plan_Index).Beam)
		            bb=gRTOG.Plan(Plan_Index).Beam(k)
		            bb.RT_name= ListBox_Linac_Energies.Cell(o,0)
		            bb.Beam_Energy= ListBox_Linac_Energies.Cell(o,1)
		            bb.Beam_Mode="FLEC"
		            bb.Aperture_ID=Beam.Aperture_ID
		            m=Listbox_Depths_Results.ListIndex
		            bb.Collimator.Fields(0).Gantry_Angle=Depth_Fields.All(m).Gantry
		            bb.Collimator.Fields(0).isocenter.X=Depth_Fields.All(m).isox
		            bb.Collimator.Fields(0).isocenter.y=Depth_Fields.All(m).isoy
		            bb.Collimator.Fields(0).isocenter.z=Depth_Fields.All(m).isoZ
		            bb.FLEC.x1=-xmin+.25
		            bb.FLEC.x2=xmax+.25
		            bb.FLEC.y1=Depth_Fields.All(m).isoZ-ymin+.25
		            bb.FLEC.y2=ymax-Depth_Fields.All(m).isoZ+.25
		            bb.Collimator.Fields(0).X1=bb.FLEC.x1+.5
		            bb.Collimator.Fields(0).X2=bb.FLEC.x2+.5
		            bb.Collimator.Fields(0).Y1=bb.FLEC.y1+.5
		            bb.Collimator.Fields(0).Y2=bb.FLEC.y2+.5
		          end
		        next
		      end
		    next
		    
		  else
		    
		    m=Listbox_Depths_Results.ListIndex
		    
		    for i=0 to UBound(Depth_Fields.All(m).Rect_Depth_Fields)
		      for o=0 to ListBox_Linac_Energies.ListCount-1
		        if ListBox_Linac_Energies.CellCheck(o,2)=True then
		          gRTOG.Plan(Plan_Index).Add_Beam
		          k=UBound(gRTOG.Plan(Plan_Index).Beam)
		          bb=gRTOG.Plan(Plan_Index).Beam(k)
		          bb.RT_name= ListBox_Linac_Energies.Cell(o,0)
		          bb.Beam_Energy= ListBox_Linac_Energies.Cell(o,1)
		          bb.Beam_Mode="FLEC"
		          bb.Aperture_ID=Beam.Aperture_ID
		          bb.Collimator.Fields(0).Gantry_Angle=Depth_Fields.All(m).Gantry
		          bb.Collimator.Fields(0).isocenter.X=Depth_Fields.All(m).isox
		          bb.Collimator.Fields(0).isocenter.y=Depth_Fields.All(m).isoy
		          bb.Collimator.Fields(0).isocenter.z=Depth_Fields.All(m).isoZ
		          bb.FLEC.x1=Depth_Fields.All(m).Rect_Depth_Fields(i).x1+.5
		          bb.FLEC.x2=Depth_Fields.All(m).Rect_Depth_Fields(i).x2+.5
		          bb.FLEC.y1=Depth_Fields.All(m).Rect_Depth_Fields(i).y1+.5
		          bb.FLEC.y2=Depth_Fields.All(m).Rect_Depth_Fields(i).y2+.5
		          bb.Collimator.Fields(0).X1=bb.FLEC.x1+.5
		          bb.Collimator.Fields(0).X2=bb.FLEC.x2+.5
		          bb.Collimator.Fields(0).Y1=bb.FLEC.y1+.5
		          bb.Collimator.Fields(0).Y2=bb.FLEC.y2+.5
		        end
		      next
		    next
		  end
		  Window_Treatment.Beam_Update_Beam
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Beams()
		  Dim j as Integer
		  
		  
		  if Plan_Index>-1 Then
		    PopupMenu_FLEC_Beam.DeleteAllRows
		    PopupMenu_Depth_Beam.DeleteAllRows
		    
		    for j=0 to UBound(gRTOG.Plan(Plan_Index).Beam)
		      PopupMenu_Depth_Beam.AddRow "Beam ("+str(j+1)+") - "+gRTOG.Plan(Plan_Index).Beam(j).RT_Name+", "+gRTOG.Plan(Plan_Index).Beam(j).beam_energy
		      PopupMenu_FLEC_Beam.AddRow "Beam ("+str(j+1)+") - "+gRTOG.Plan(Plan_Index).Beam(j).RT_Name+", "+gRTOG.Plan(Plan_Index).Beam(j).beam_energy
		    next
		    PopupMenu_Depth_Beam.ListIndex=0
		    PopupMenu_FLEC_Beam.ListIndex=0
		  end
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_BEAM_Map()
		  dim i as Integer
		  //--------------------------------
		  
		  
		  me.SetFocus
		  Canvas_Projection.Refresh
		  
		  i=Listbox_Map.ListIndex
		  projection_index=i
		  
		  Listbox_Map.DeleteAllRows
		  Listbox_Map.ColumnCount=15
		  Listbox_Map.ColumnWidths="10%,20%,20%,20%,20%,20%,20%,20%,20%,20%,20%,20%,20%,20%,20%"
		  
		  Listbox_Map.Heading(0)="Number"
		  
		  Listbox_Map.Heading(1)="Angle Score"
		  
		  Listbox_Map.Heading(2)="Target Z/Y Width"
		  Listbox_Map.Heading(3)="Target X Width"
		  Listbox_Map.Heading(4)="Distance from CM to Body"
		  
		  Listbox_Map.Heading(5)="Iso X"
		  Listbox_Map.Heading(6)="Iso Y"
		  Listbox_Map.Heading(7)="Iso Z"
		  
		  Listbox_Map.Heading(8)="T above"
		  Listbox_Map.Heading(9)="T below"
		  
		  Listbox_Map.Heading(10)="FX1"
		  Listbox_Map.Heading(11)="FX2"
		  Listbox_Map.Heading(12)="FY1"
		  Listbox_Map.Heading(13)="FY2"
		  
		  Listbox_Map.Heading(14)="Gantry Angle"
		  
		  
		  for i=0 to UBound(Projections)
		    Listbox_Map.AddRow str(i+1)
		    
		    Listbox_Map.Cell(i,1)=Format(projections(i).weight_Z_Field_Size*projections(i).weight_center*Projections(i).weight_distance*Projections(i).weight_X_Field_Size/100000000,"#.###")
		    Listbox_Map.Cell(i,2)=Format(projections(i).Max_Z_Field_Opening,"#.###")
		    Listbox_Map.Cell(i,3)=Format(projections(i).Max_X_Field_Width,"#.###")
		    Listbox_Map.Cell(i,4)=Format(projections(i).External_Distance,"#.###")
		    
		    Listbox_Map.Cell(i,5)=Format(projections(i).iso_x,"-#.##")
		    Listbox_Map.Cell(i,6)=Format(projections(i).iso_y,"-#.##")
		    Listbox_Map.Cell(i,7)=Format(projections(i).iso_Z,"-#.##")
		    
		    Listbox_Map.Cell(i,8)=Format(projections(i).Target_Z_Pluse,"-#.##")
		    Listbox_Map.Cell(i,9)=Format(projections(i).Target_Z_Minus,"-#.##")
		    
		    Listbox_Map.Cell(i,10)=Format(projections(i).Max_x1,"-#.##")
		    Listbox_Map.Cell(i,11)=Format(projections(i).Max_x2,"-#.##")
		    Listbox_Map.Cell(i,12)=Format(projections(i).Max_y1,"-#.##")
		    Listbox_Map.Cell(i,13)=Format(projections(i).Max_y2,"-#.##")
		    
		    Listbox_Map.Cell(i,14)=Format(projections(i).Gantry_Angle,"-000.##")
		    
		    
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Depth_Results()
		  Dim i as Integer
		  
		  Listbox_Depths_Results.DeleteAllRows
		  Listbox_Depths_Results.ColumnCount=6
		  Listbox_Depths_Results.Heading(0)="Num"
		  Listbox_Depths_Results.Heading(1)="Min Depth (cm)"
		  Listbox_Depths_Results.Heading(2)="Max Depth (cm)"
		  Listbox_Depths_Results.Heading(3)="Avg Depth (cm)"
		  Listbox_Depths_Results.Heading(4)="Res X (cm)"
		  Listbox_Depths_Results.Heading(5)="Res Y (cm)"
		  
		  
		  for  i=0 to UBound(Depth_Fields.All)  
		    Listbox_Depths_Results.AddRow str(i+1)
		    Listbox_Depths_Results.Cell(i,1)=Format(Depth_Fields.All(i).MinDistalDepth,"-#.###")
		    Listbox_Depths_Results.Cell(i,2)=Format(Depth_Fields.All(i).MaxDistalDepth,"-#.###")
		    Listbox_Depths_Results.Cell(i,3)=Format(Depth_Fields.All(i).AvgDistDepth,"-#.###")
		    Listbox_Depths_Results.Cell(i,4)=Format(Depth_Fields.All(i).Del_x,"-#.###")
		    Listbox_Depths_Results.Cell(i,5)=Format(Depth_Fields.All(i).Del_Y,"-#.###")
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Window_Open()
		  //-----------------------------------------------------------------
		  //
		  //
		  //
		  //-----------------------------------------------------------------
		  Dim i,k,dmx_index,egsphant_index,q,beam_val as Integer
		  Dim cc as RTOG_Plan_Struture_Constraint
		  Dim pp as Class_Profile_One
		  Dim rand as Random
		  Dim pxy as Class_Points
		  Dim f as FolderItem
		  Dim onefield as Class_Optimization_FIELD
		  Dim temp as String
		  Dim found as Boolean
		  //----------------------------------------------------------------
		  
		  
		  rand= new Random
		  FLEC=new Class_FLEC
		  FLEC_Open
		  
		  
		  Open_Plan_Index=Plan_Index
		  
		  me.Title=gRTOG.Patient_Name+" "+gRTOG.Patient_Surname+" MERT Setup Window : "+gRTOG.Plan(Open_Plan_Index).Plan_Name
		  
		  
		  
		  Depth_Iso
		  
		  
		  
		  
		  
		  //---------------------------------Ray Beam Settings--------------------------------
		  
		  EditField_RayX.Text=str(1)
		  EditField_RayY.Text=str(1)
		  
		  EditField_Ray_delX.Text=str((FLEC.x1+FLEC.x2)/val(EditField_RayX.Text))
		  EditField_Ray_delY.Text=str((FLEC.y1+FLEC.y2)/val(EditField_Rayy.Text))
		  
		  
		  //---------------------------------Ray Beam Settings--------------------------------
		  
		  
		  // ---------------------------------Angles---------------------------------
		  
		  nx=gVis.nx
		  PopupMenu_Target.DeleteAllRows
		  PopupMenu_External.DeleteAllRows
		  PopupMenu_SC_Target.DeleteAllRows
		  
		  for i=0 to UBound(gRTOG.Structures)
		    PopupMenu_Target.AddRow gRTOG.Structures(i).Structure_Name
		    PopupMenu_External.AddRow gRTOG.Structures(i).Structure_Name
		    PopupMenu_SC_Target.AddRow gRTOG.Structures(i).Structure_Name
		    if InStr(gRTOG.Structures(i).Structure_Name,"Body")> 0 Then
		      external_index=i
		    end
		    if InStr(gRTOG.Structures(i).Structure_Name,"PTV")> 0 Then
		      target_index=i
		    end
		  next
		  PopupMenu_SC_Target.ListIndex=target_index
		  PopupMenu_Target.ListIndex=target_index
		  PopupMenu_External.ListIndex=external_index
		  EditField_Angle_nx.Text=str(nx)
		  
		  
		  
		  // ---------------------------------End Angles---------------------------------
		  
		  
		  
		  Depth_Fields=new Class_MERT_Fields
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Beam As rtoG_Beam_Geometry
	#tag EndProperty

	#tag Property, Flags = &h0
		Beam_Index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		constraint_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Depth_Fields As Class_MERT_Fields
	#tag EndProperty

	#tag Property, Flags = &h0
		external_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Feather_Move_X As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Feather_Move_Y As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Feather_Number_X As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Feather_Number_Y As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Feather_OpenX As single = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		Feather_OpenY As single = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		FLEC As class_FLEC
	#tag EndProperty

	#tag Property, Flags = &h0
		Iso_Values As Class_Iso_Dose_Settings
	#tag EndProperty

	#tag Property, Flags = &h0
		Map_Grad As picture
	#tag EndProperty

	#tag Property, Flags = &h0
		nx As Integer = 256
	#tag EndProperty

	#tag Property, Flags = &h0
		Open_Plan_Index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		organ_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Projections(-1) As Class_Optimization_Projections_One
	#tag EndProperty

	#tag Property, Flags = &h0
		projection_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Ray_delx As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Ray_dely As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Ray_X_Quad As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Ray_Y_Quad As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		target_index As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events ListBox_Linac_Energies
	#tag Event
		Function HeaderPressed(column as Integer) As Boolean
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events EditField_RayX
	#tag Event
		Sub TextChange()
		  Ray_X_Quad=val(me.Text)
		  
		  
		  Ray_delx=(fLEC.X1+FLEC.x2)/Ray_X_Quad
		  
		  
		  
		  EditField_Ray_delX.Text=str(Ray_delx)
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_RayY
	#tag Event
		Sub TextChange()
		  Ray_Y_Quad=val(me.Text)
		  
		  Ray_dely=(fLEC.y1+FLEC.y2)/Ray_y_Quad
		  EditField_Ray_dely.Text=str(Ray_dely)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_fea_X_move
	#tag Event
		Sub TextChange()
		  
		  
		  Feather_Move_X=val(me.Text)
		  
		  if Feather_Move_X<=0 Then
		    Feather_Number_X=1
		  else
		    Feather_Number_X=(fLEC.X1+FLEC.x2-Feather_OpenX)/Feather_Move_X
		    Feather_Number_X=Floor(Feather_Number_X)+1
		    if Feather_Number_X<=0 Then
		      Feather_Number_X=1
		    end
		  end
		  
		  EditField_Feathered_Number_X.Text=Format(Feather_Number_X,"#")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_fea_Y_move
	#tag Event
		Sub TextChange()
		  Feather_Move_y=val(me.Text)
		  
		  
		  if Feather_Move_Y<= 0 Then
		    Feather_Number_y=1
		  else
		    Feather_Number_y=Floor((fLEC.y1+FLEC.y2-Feather_OpenY)/Feather_Move_Y)
		    Feather_Number_y=Feather_Number_Y+1
		    if Feather_Number_y<=0 Then
		      Feather_Number_y=1
		    end
		  end
		  EditField_Feathered_Number_y.Text=Format(Feather_Number_Y,"-#")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Make_Feathered_Beams
	#tag Event
		Sub Action()
		  FLEC_Generate_feathered_beams
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Make_Raybeams
	#tag Event
		Sub Action()
		  FLEC_Generate_Raster_beams
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_fea_delY
	#tag Event
		Sub TextChange()
		  Feather_OpenY=Val(me.Text)
		  
		  if Feather_Move_Y<= 0 Then
		    Feather_Number_y=1
		  else
		    Feather_Number_y=Floor((fLEC.y1+FLEC.y2-Feather_OpenY)/Feather_Move_Y)
		    Feather_Number_y=Feather_Number_Y+1
		    if Feather_Number_y<=0 Then
		      Feather_Number_y=1
		    end
		  end
		  EditField_Feathered_Number_y.Text=Format(Feather_Number_Y,"-#")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_fea_delX
	#tag Event
		Sub TextChange()
		  Feather_OpenX=Val(me.Text)
		  
		  
		  if Feather_Move_X<=0 Then
		    Feather_Number_X=1
		  else
		    Feather_Number_X=(fLEC.X1+FLEC.x2-Feather_OpenX)/Feather_Move_X
		    Feather_Number_X=Floor(Feather_Number_X)+1
		    if Feather_Number_X<=0 Then
		      Feather_Number_X=1
		    end
		  end
		  
		  EditField_Feathered_Number_X.Text=Format(Feather_Number_X,"#")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Photon_Beam
	#tag Event
		Sub Open()
		  Dim i as Integer
		  
		  PopupMenu_Photon_Beam.DeleteAllRows
		  
		  
		  for i=0 to UBound(gRTOG.Plan(Plan_Index).Beam)
		    PopupMenu_Photon_Beam.AddRow str(i+1)+" "+gRTOG.Plan(Plan_Index).Beam(i).Beam_Description
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_MakeBeamlets_old
	#tag Event
		Sub Action()
		  //-------------------------------------------
		  //
		  //
		  'MODE RW The Ô¨Åle mode: it can be either ‚ÄôMODE0‚Äô or ‚ÄôMODE2‚Äô depending on whether 'ZLAST is included in the phase-space parameters.
		  'NPPHSP The total number of particles in the Ô¨Åle.
		  'NPHOTPHSP The total number of photons in the Ô¨Åle.
		  'EKMAXPHSP The maximum kinetic energy of the particles stored in the Ô¨Åle.
		  'EKMINPHSPE The minimum electron kinetic energy (MeV).
		  'NINCPHSP The number of particles incident from the original (non-phase space) source used to generate the phase space Ô¨Åle.
		  //LATCH, E, X, Y, U, V, WT, (ZLAST)
		  //-------------------------------------------
		  
		  Dim g,f,desktopfolder as FolderItem
		  Dim bs as BinaryStream
		  Dim xx,yy,xlow,xhigh,ylow,yhigh,bot,xmax,ymax,xmin,ymin,delx,dely as Single
		  Dim ff as Boolean
		  Dim pp,phspname,user as String
		  Dim text as TextOutputStream
		  Dim ss as Shell
		  Dim x,y,i as Integer
		  Dim beam as RTOG_Beam_Geometry
		  
		  
		  desktopfolder=SpecialFolder.Desktop
		  desktopfolder=desktopfolder.Parent
		  user=desktopfolder.Name
		  
		  if Beam_Index>-1 and Beam_Index<= UBound(gRTOG.Plan(Plan_Index).Beam) Then
		    
		    ff=gBEAM.egs_Get_Directory(Beam_Index)
		    
		    
		    pp="/Users/"+user+"/egsnrc/"+gBEAM.Beams(Beam_Index).egs_BEAMnrc_dir
		    
		    f=new FolderItem(pp, FolderItem.PathTypeShell)
		    f=f.Child(gBEAM.Beams(Beam_Index).egs_Phsp_name)
		    
		    
		    
		    
		    xx=Round(xmax-xmin)/delx
		    yy=Round(ymax-ymin)/dely
		    
		    
		    
		    for x=1 to xx
		      for y=1 to yy
		        
		        xlow=xmin+delx*(x-1)
		        ylow=ymin+dely*(y-1)
		        
		        xhigh=xmin+delx*(x)
		        yhigh=ymin+dely*(y)
		        
		        phspname="beamlet"+str(x)+"-"+str(y)+".egsphsp1"
		        
		        
		        beam= new RTOG_Beam_Geometry
		        beam.Collimator= new Class_Collimator
		        beam.Collimator.Fields(0).isocenter=new Class_isocenter
		        beam.mlc= new Class_MLC
		        
		        
		        
		        gRTOG.Plan(Plan_Index).Beam.append beam
		        MC_AddBeam
		        
		        i=UBound(gRTOG.Plan(Plan_Index).Beam)
		        beam=gRTOG.Plan(Plan_Index).Beam(i)
		        
		        beam.Beam_Mode=gRTOG.Plan(Plan_Index).Beam(Beam_Index).beam_mode
		        beam.Beam_Num=i+1
		        beam.Collimator.fields(0).X1=-xlow
		        beam.Collimator.fields(0).X2=xhigh
		        beam.Collimator.fields(0).Y1=-ylow
		        beam.Collimator.fields(0).Y2=yhigh
		        
		        beam.Beam_Energy=gRTOG.Plan(Plan_Index).Beam(Beam_Index).beam_energy
		        beam.RT_name=gRTOG.Plan(Plan_Index).Beam(Beam_Index).RT_name
		        
		        beam.Collimator.Fields(0).isocenter.X=gRTOG.Plan(Plan_Index).Beam(Beam_Index).Collimator.Fields(0).isocenter.X
		        beam.Collimator.Fields(0).isocenter.y=gRTOG.Plan(Plan_Index).Beam(Beam_Index).Collimator.Fields(0).isocenter.y
		        beam.Collimator.Fields(0).isocenter.z=gRTOG.Plan(Plan_Index).Beam(Beam_Index).Collimator.Fields(0).isocenter.z
		        
		        beam.Collimator.Fields(0).Collimator_Angle=gRTOG.Plan(Plan_Index).Beam(Beam_Index).Collimator.Fields(0).Collimator_Angle
		        beam.Collimator.Fields(0).Gantry_Angle=gRTOG.Plan(Plan_Index).Beam(Beam_Index).Collimator.Fields(0).Gantry_Angle
		        beam.Beam_Description=gRTOG.Plan(Plan_Index).Beam(Beam_Index).Beam_Description
		        
		        
		        
		        
		        
		        gBEAM.Beams(i).egs_progress=100
		        gBEAM.Beams(i).egs_Phsp_name=phspname
		        gBEAM.Beams(i).egs_Shell=gBEAM.Beams(Beam_Index).egs_Shell
		        gBEAM.Beams(i).egs_Shell_Index=gBEAM.Beams(Beam_Index).egs_Shell_Index
		        gBEAM.Beams(i).egs_Phsp_link=True
		        gBEAM.Beams(i).egs_BEAMnrc_dir=gBEAM.Beams(Beam_Index).egs_BEAMnrc_dir
		        gBEAM.Beams(i).egs_AddPhsp_Finished=True
		        
		      next
		    next
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_SC_Target
	#tag Event
		Sub Change()
		  target_index=me.ListIndex
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Cal_SlidingCouch
	#tag Event
		Sub Action()
		  Determine_SlidingCouch_beams
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_SC_External
	#tag Event
		Sub Change()
		  external_index=me.ListIndex
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_DOS_Source1
	#tag Event
		Sub Action()
		  Dim i,k as Integer
		  Dim temp as Class_DOSXYZ_Input
		  Dim isox,isoy,isoz,x as Single
		  
		  Beam=new RTOG_Beam_Geometry
		  
		  for i=0 to UBound(gDOSXYZ.DOSXYZ)
		    for k=0 to UBound(gDOSXYZ.DOSXYZ(i).DOSXYZ_Input)
		      temp=gDOSXYZ.DOSXYZ(i).DOSXYZ_Input(k)
		      Beam=gRTOG.Plan(Plan_Index).Beam(k)
		      
		      
		      temp.IQIN=-1
		      temp.isource=1
		      temp.enflag=0
		      temp.ein=val(Beam.Beam_Energy)
		      
		      
		      // Determine new FIELD positions, must be symmetric
		      temp.xcol=Beam.FLEC.x1+Beam.FLEC.x2
		      temp.ycol=Beam.FLEC.y1+Beam.FLEC.y2
		      
		      
		      // Determine new ISO center
		      x=Beam.FLEC.x2-Beam.FLEC.x1
		      x=x/2
		      
		      
		      isox=Beam.Collimator.Fields(0).isocenter.X+x*cos(Beam.Collimator.Fields(0).Gantry_Angle*PI/180)
		      isoy=Beam.Collimator.Fields(0).isocenter.y+x*sin(Beam.Collimator.Fields(0).Gantry_Angle*PI/180)
		      isoz=Beam.Collimator.Fields(0).isocenter.z+(Beam.FLEC.y2-Beam.FLEC.y1)/2
		      
		      
		      Beam.Collimator.Fields(0).isocenter.X=isox
		      Beam.Collimator.Fields(0).isocenter.y=isoy
		      Beam.Collimator.Fields(0).isocenter.z=isoz
		      
		      Beam.FLEC.x1=temp.xcol/2
		      Beam.FLEC.x2=temp.xcol/2
		      Beam.FLEC.y1=temp.ycol/2
		      Beam.FLEC.y2=temp.ycol/2
		      
		      
		      Beam.Collimator.fields(0).X1=Beam.FLEC.x1+0.5
		      Beam.Collimator.fields(0).X2=Beam.FLEC.x1+0.5
		      Beam.Collimator.fields(0).Y1=Beam.FLEC.y1+0.5
		      Beam.Collimator.fields(0).Y2=Beam.FLEC.y1+0.5
		      //exit
		      
		    next
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_VMC_Source0
	#tag Event
		Sub Action()
		  Dim i,k as Integer
		  
		  
		  for i=0 to UBound(gVMC.VMC)
		    for k=0 to UBound(gVMC.VMC(i).BEAMS)
		      gVMC.vmc_Make_Monoenergetic(i,k)
		    next
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Depth_Beam
	#tag Event
		Sub Change()
		  if me.ListIndex>-1 Then
		    Beam=gRTOG.Plan(Plan_Index).Beam(me.ListIndex)
		    StaticText_Depth_OneBeam.Text="Isocenter X,Y,Z : ("+Format(Beam.Collimator.Fields(0).isocenter.X,"-#.###")+", "+Format(Beam.Collimator.Fields(0).isocenter.y,"-#.###")+", "+Format(Beam.Collimator.Fields(0).isocenter.z,"-#.###")+")"
		    StaticText_Depth_OneBeam.Text=StaticText_Depth_OneBeam.Text+chr(10)+"Gantry angle : "+Format(Beam.Collimator.Fields(0).Gantry_Angle,"-#.###")
		    
		  end
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_Depths
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  Dim i as Integer
		  
		  if column=1 Then
		    if row>-1 and row<=UBound(Iso_Values.values) Then
		      g.ForeColor=Iso_Values.colours(row)
		      g.FillRect(0,0,g.Width,g.Height)
		    end
		    
		  end
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  dim tmpcolor as color
		  dim i As  integer
		  
		  if column=1 then
		    tmpcolor=Iso_Values.colours(row)
		    if(selectcolor(tmpcolor,"Select a color")) then
		      Iso_Values.colours(row)=tmpcolor
		    end
		  end
		  
		  for i =0 to UBound(Depth_Fields.All)
		    Depth_Fields.All(i).Depth_IsoValues(Depth_Fields.all(i).Max_D,Depth_Fields.all(i).X,Depth_Fields.all(i).Y)
		    Depth_Fields.All(i).PolyIso
		  Next
		  
		  Canvas_Projection_Iso.Refresh(False)
		End Function
	#tag EndEvent
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  if column=0 Then
		    if row>-1 and row<=UBound(Iso_Values.values) Then
		      
		      Iso_Values.values(row)=Val(me.Cell(row,column))
		      
		    end
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  dim MI as MenuItem
		  
		  MI = New MenuItem
		  MI.Text = "Add Depth"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "Remove Depth"
		  base.Append MI
		  
		  
		  Return True
		  
		  
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Dim i as Integer
		  
		  Select Case hitItem.Text
		  Case "Add Depth"
		    
		    
		  Case "Remove Depth"
		    i=me.ListIndex
		    if i>=0 and i<=UBound(Iso_Values.values) Then
		      Iso_Values.values.Remove i
		      Iso_Values.colours.Remove i
		      Iso_Values.each_show.Remove i
		    end
		    me.RemoveRow(i)
		    
		  End Select
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Cal_Depth_at_Projection
	#tag Event
		Sub Action()
		  Determine_Depth_at_Projection
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_FLEC_FieldX
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key=chr(13) or key=chr(9) then
		    FLEC.x1=val(me.text)/2
		    FLEC.x2=val(me.text)/2
		    EditField_FLEC_x1.Text=str(FLEC.x1)
		    EditField_FLEC_x2.Text=str(FLEC.x2)
		    Beam.Collimator.fields(0).X1=val(me.text)/2+0.5
		    Beam.Collimator.fields(0).X2=val(me.text)/2+0.5
		    
		    
		    
		  end
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events EditField_FLEC_FieldY
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key=chr(13) or key=chr(9) then
		    FLEC.y1=val(me.text)/2
		    FLEC.y2=val(me.text)/2
		    
		    EditField_FLEC_Y1.Text=str(FLEC.y1)
		    EditField_FLEC_Y2.Text=str(FLEC.y2)
		    
		    Beam.Collimator.fields(0).Y1=val(me.text)/2+0.5
		    Beam.Collimator.fields(0).Y2=val(me.text)/2+0.5
		    
		  end
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events EditField_FLEC_X1
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key=chr(13) or key=chr(9) then // chr(13) or key=chr(9) = Carriage return
		    
		    FLEC.x1=Val(me.Text)
		    EditField_FLEC_FieldX.Text=str(FLEC.x1+FLEC.x2)
		    Beam.Collimator.fields(0).X1=val(me.text)+0.5
		    
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events EditField_FLEC_X2
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key=chr(13) or key=chr(9) then // chr(13) or key=chr(9) = Carriage return
		    
		    FLEC.x2=Val(me.Text)
		    EditField_FLEC_FieldX.Text=str(FLEC.x1+FLEC.x2)
		    Beam.Collimator.fields(0).X2=val(me.text)+0.5
		    
		    
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events EditField_FLEC_Y1
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key=chr(13) or key=chr(9) then // chr(13) or key=chr(9) = Carriage return
		    FLEC.y1=Val(me.Text)
		    
		    EditField_FLEC_FieldY.Text=str(FLEC.y1+FLEC.y2)
		    
		    Beam.Collimator.fields(0).Y1=val(me.text)+0.5
		    
		    
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events EditField_FLEC_Y2
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key=chr(13) or key=chr(9) then // chr(13) or key=chr(9) = Carriage return
		    
		    FLEC.y2=Val(me.Text)
		    EditField_FLEC_FieldY.Text=str(FLEC.y1+FLEC.y2)
		    Beam.Collimator.fields(0).Y2=val(me.text)+0.5
		    
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_FLEC_Beam
	#tag Event
		Sub Change()
		  if me.ListIndex>-1 Then
		    Beam=gRTOG.Plan(Plan_Index).Beam(me.ListIndex)
		    FLEC=Beam.FLEC
		    FLEC_Populate_Beam
		  end
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_FLEC_Search_PSDB
	#tag Event
		Sub Action()
		  Dim i as Integer
		  
		  for i=0 to UBound(gBEAM.Beams)
		    if gBEAM.Beams(i).egs_progress=0 Then
		      gBEAM.Beams(i).egs_Phsp_Search=False
		    End
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Photon_MakeBeamlets
	#tag Event
		Sub Action()
		  //--------------------------------------------------------------
		  // Method to make new photon beams
		  //
		  //--------------------------------------------------------------
		  Dim i,startnum, finnum,x,y ,kk,mlcnum,mlcnumk,count_index as Integer
		  Dim dely,delx,ymin,ymax,xmin,xmax,Ray_delx_Photon,Ray_dely_Photon,arc1,arc2,dela_arc,current_angle,arcs(-1),arc_num,mlc_top,mlc_bot as Single
		  Dim temp_beam,beam as RTOG_Beam_Geometry
		  Dim cc as Class_Collimator_Fields
		  //--------------------------------------------------------------
		  
		  
		  if CheckBox_Photon_Batch.Value Then
		    startnum=val(EditField_Photon_Copy1.Text)-1
		    finnum=val(EditField_Photon_Copy2.Text)-1
		  else
		    startnum=PopupMenu_Photon_Beam.ListIndex
		    finnum=PopupMenu_Photon_Beam.ListIndex
		  end
		  
		  dely=val(TextField_Photon_dely.Text)
		  ymin=val(TextField_Photon_Ymin.Text)
		  ymax=val(TextField_Photon_Ymax.Text)
		  
		  delx=val(TextField_Photon_delX.Text)
		  xmin=val(TextField_Photon_xmin.Text)
		  xmax=val(TextField_Photon_Xmax.Text)
		  beam_index=PopupMenu_Photon_Beam.ListIndex
		  
		  
		  if CheckBox_Photon_Arc_Batch.Value Then
		    arc1=val(EditField_Photon_arc1.Text)
		    arc2=val(EditField_Photon_arc2.Text)
		    dela_arc=val(EditField_Photon_Arc_delta.Text)
		    
		    arc_num=(-arc1+arc2)/dela_arc
		    for kk=1 to arc_num
		      arcs.Append (arc1+(kk-1)*dela_arc)
		    Next
		  else
		    arcs.Append 0
		  end
		  
		  
		  Ray_dely_Photon=(ymin+ymax)/dely
		  Ray_delx_Photon=(xmin+xmax)/delx
		  
		  cc=new Class_Collimator_Fields
		  for i =startnum to finnum
		    for kk=0 to UBound(arcs)
		      Beam=gRTOG.Plan(Plan_Index).Beam(i)
		      for x=1 to Ray_delx_Photon
		        cc.x1=xmin -(x-1)*delx
		        cc.x2=xmax-(Ray_delx_Photon-x)*delx
		        
		        for y=1 to Ray_dely_Photon
		          cc.y1=ymin-(y-1)*dely
		          cc.y2=ymax-(Ray_dely_Photon-y)*dely
		          
		          temp_beam=new RTOG_Beam_Geometry
		          temp_beam.Make_New
		          temp_beam.Beam_Description=Beam.Beam_Description+" - Subfield"
		          
		          temp_beam.RT_name=Beam.RT_name
		          temp_beam.Beam_Energy= Beam.Beam_Energy
		          temp_beam.Beam_Mode="Photon"
		          temp_beam.Nominal_Isocenter=100
		          temp_beam.Beam_Num=UBound(gRTOG.Plan(Plan_Index).Beam)+2
		          
		          temp_beam.Collimator.Fields(0).isocenter=Beam.Collimator.Fields(0).isocenter
		          
		          //temp_beam.MLC=Beam.MLC
		          
		          temp_beam.MLC.Model=Beam.MLC.Model
		          temp_beam.MLC.Model_Type=Beam.MLC.Model_Type
		          temp_beam.MLC.NumberofLeafPairs=Beam.MLC.NumberofLeafPairs
		          temp_beam.MLC.NumberofFields=Beam.MLC.NumberofFields
		          temp_beam.MLC.MLC_Type=Beam.MLC.MLC_Type
		          temp_beam.MLC.MLC_Direction=Beam.MLC.MLC_Direction
		          
		          
		          ReDim temp_beam.MLC.LeafBoundaries(UBound(Beam.MLC.LeafBoundaries))
		          for mlcnum=0 to UBound(Beam.MLC.LeafBoundaries)
		            temp_beam.MLC.LeafBoundaries(mlcnum)=beam.MLC.LeafBoundaries(mlcnum)
		          Next
		          
		          ReDim temp_beam.MLC.Fields(UBound(Beam.MLC.Fields))
		          
		          for mlcnum=0 to UBound(Beam.MLC.Fields)
		            temp_beam.MLC.Fields(mlcnum)=new Class_MLC_Positions
		            ReDim temp_beam.MLC.Fields(mlcnum).Leaf_A(UBound(beam.MLC.Fields(mlcnum).Leaf_A))
		            ReDim temp_beam.MLC.Fields(mlcnum).Leaf_B(UBound(beam.MLC.Fields(mlcnum).Leaf_B))
		            // Initialize mlc
		            for mlcnumk=0 to UBound(Beam.MLC.Fields(mlcnum).Leaf_A)
		              temp_beam.MLC.Fields(mlcnum).Leaf_A(mlcnumk)=Beam.MLC.Fields(mlcnum).Leaf_A(mlcnumk)
		              temp_beam.MLC.Fields(mlcnum).Leaf_B(mlcnumk)=Beam.MLC.Fields(mlcnum).Leaf_B(mlcnumk)
		            Next
		            
		          Next
		          
		          
		          
		          
		          if CheckBox_Photon_Arc_Batch.Value Then
		            temp_beam.Collimator.Fields(0).Gantry_Angle=arcs(kk)
		          else
		            temp_beam.Collimator.Fields(0).Gantry_Angle=Beam.Collimator.Fields(0).Gantry_Angle
		          end
		          temp_beam.Collimator.Fields(0).Collimator_Angle=Beam.Collimator.Fields(0).Collimator_Angle
		          temp_beam.Collimator.Fields(0).Couch_Angle=Beam.Collimator.Fields(0).Couch_Angle
		          temp_beam.Number_of_Tx=1
		          temp_beam.Aperture_ID=Beam.Aperture_ID
		          
		          
		          if RadioButton_Photon_Jaw.Value Then
		            
		            temp_beam.Collimator.fields(0).X1=cc.X1
		            temp_beam.Collimator.fields(0).X2=cc.X2
		            temp_beam.Collimator.fields(0).Y1=cc.y1
		            temp_beam.Collimator.fields(0).Y2=cc.y2
		            
		          elseif RadioButton_Photon_MLC.Value Then
		            //Make MLC photon beams
		            temp_beam.Collimator.fields(0).X1=beam.Collimator.fields(0).X1
		            temp_beam.Collimator.fields(0).X2=beam.Collimator.fields(0).X2
		            temp_beam.Collimator.fields(0).Y1=beam.Collimator.fields(0).y1
		            temp_beam.Collimator.fields(0).Y2=beam.Collimator.fields(0).y2
		            temp_beam.MLC.NumberofFields=1
		            
		            temp_beam.MLC.MLC_Type="Static"
		            
		            
		            // Find which leaves to open
		            for count_index=0 to (UBound(Beam.MLC.LeafBoundaries)-1)
		              
		              mlc_top =Beam.MLC.LeafBoundaries(count_index)
		              mlc_bot =Beam.MLC.LeafBoundaries(count_index+1)
		              
		              if Beam.MLC.LeafBoundaries(count_index)>=(-cc.y2) then
		                
		                if Beam.MLC.LeafBoundaries(count_index+1)<=cc.y1 then 
		                  
		                  temp_beam.MLC.Fields(0).Leaf_A(count_index)=cc.x1
		                  temp_beam.MLC.Fields(0).Leaf_b(count_index)=cc.x2
		                end
		                
		                
		              end
		            Next
		          end
		          
		          gRTOG.Plan(Plan_Index).Beam.append temp_beam
		          MC_AddBeam_FLEC
		          
		        Next
		      Next
		    Next
		  Next
		  
		  Window_Treatment.Save_Beams=True
		  gRTOG.Plan(Plan_Index).Save_Plan=True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Target
	#tag Event
		Sub Change()
		  target_index=me.ListIndex
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_External
	#tag Event
		Sub Change()
		  external_index=me.ListIndex
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Cal_Angles
	#tag Event
		Sub Action()
		  Determine_Angles
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Angle_nx
	#tag Event
		Sub TextChange()
		  nx=Val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Positions_Apply
	#tag Event
		Sub Action()
		  //------------------------------------------------------------
		  //
		  //
		  //------------------------------------------------------------
		  Dim i,k as Integer
		  Dim bb as RTOG_Beam_Geometry
		  Dim x,y,z,gga,cola,coucha as Single
		  //------------------------------------------------------------
		  
		  
		  gRTOG.Plan(Plan_Index).Save_Plan=True
		  
		  x=val(EditField_batch_iso_x.Text)
		  y=val(EditField_batch_iso_y.Text)
		  z=val(EditField_batch_iso_z.Text)
		  gga=val(EditField_batch_Gantry.Text)
		  cola=val(EditField_batch_Collang.Text)
		  coucha=val(EditField_batch_Couchang.Text)
		  
		  
		  
		  for i =0 to UBound(gRTOG.Plan(Plan_Index).Beam)
		    bb=gRTOG.Plan(Plan_Index).Beam(i)
		    
		    bb.Collimator.Fields(0).isocenter.X=x
		    bb.Collimator.Fields(0).isocenter.y=y
		    bb.Collimator.Fields(0).isocenter.z=z
		    bb.Collimator.Fields(0).Gantry_Angle=gga
		    bb.Collimator.Fields(0).Couch_Angle=coucha
		    bb.Collimator.Fields(0).Collimator_Angle=cola
		    
		    for k=0 to UBound(gDOSXYZ.DOSXYZ)
		      gDOSXYZ.DOSXYZ(k).DOSXYZ_Input(i).dos_progress=0
		      gDOSXYZ.DOSXYZ(k).DOSXYZ_Input(i).dos_start_Date=""
		      gDOSXYZ.DOSXYZ(k).DOSXYZ_Input(i).run_started=False
		      gDOSXYZ.DOSXYZ(k).DOSXYZ_Input(i).dos_CPU_time=0
		      gDOSXYZ.DOSXYZ(k).DOSXYZ_Input(i).dos_error_math_error=0
		    next
		    
		  next
		  
		  
		  gRTOG.Plan(Plan_Index).Write_McGill_Beam
		  PW_Show=false
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_Map
	#tag Event
		Sub Change()
		  Dim lbindex as Integer
		  Dim realindex as Integer
		  
		  lbindex=me.ListIndex
		  
		  if lbindex>-1 And lbindex<=UBound(Projections) Then
		    realindex=val(Listbox_Map.Cell(lbindex,0))-1
		    projection_index=realindex
		  end
		  
		  
		  Canvas_Projection.Refresh(False)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Canvas_Projection
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  dim i as integer
		  dim pp as Picture
		  
		  
		  i=projection_index
		  
		  
		  if i>-1 and i<= UBound(Projections) Then
		    pp=Projections(i).Projection
		    //g.UseOldRenderer=True
		    g.DrawPicture pp,0,0,g.Width,g.Height,0,0,pp.Width,pp.Height
		    
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  me.SetFocus
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_angles_Beam
	#tag Event
		Sub Action()
		  Dim i as Integer
		  Dim bb as RTOG_Beam_Geometry
		  
		  gRTOG.Plan(Plan_Index).Add_Beam
		  
		  i=UBound(gRTOG.Plan(Plan_Index).Beam)
		  
		  bb=gRTOG.Plan(Plan_Index).Beam(i)
		  bb.Beam_Mode="FLEC"
		  
		  bb.Collimator.Fields(0).Gantry_Angle=Projections(projection_index).Gantry_Angle
		  bb.Collimator.Fields(0).isocenter.X=Projections(projection_index).iso_x
		  bb.Collimator.Fields(0).isocenter.y=Projections(projection_index).iso_y
		  bb.Collimator.Fields(0).isocenter.z=Projections(projection_index).iso_Z
		  bb.FLEC.x1=Projections(projection_index).Max_x1
		  bb.FLEC.x2=Projections(projection_index).Max_x2
		  bb.FLEC.y1=Projections(projection_index).Max_y1
		  bb.FLEC.y2=Projections(projection_index).Max_y2
		  bb.Collimator.Fields(0).X1=bb.FLEC.x1+.5
		  bb.Collimator.Fields(0).X2=bb.FLEC.x2+.5
		  bb.Collimator.Fields(0).Y1=bb.FLEC.y1+.5
		  bb.Collimator.Fields(0).Y2=bb.FLEC.y2+.5
		  
		  
		  
		  
		  gRTOG.Plan(Plan_Index).Write_McGill_Beam
		  Update_Beams
		  PW_Show=false
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Deptp_MakeBeams
	#tag Event
		Sub Action()
		  Make_Depth_Beams
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Deptp_ExportText
	#tag Event
		Sub Action()
		  Dim f,s as FolderItem
		  Dim ts as TextOutputStream
		  Dim gg as Class_MERT_Field_One
		  Dim i,b,a as Integer
		  
		  f=GetSaveFolderItem("","text")
		  
		  f=f.Parent
		  
		  i=Listbox_Depths_Results.ListIndex
		  
		  
		  if i>=0 and i<=UBound(Depth_Fields.All)  then
		    gg=Depth_Fields.All(i)
		    
		    
		    s=f.Child("X-Values.text")
		    ts=TextOutputStream.Create(s)
		    
		    if ts=nil Then
		      Return
		    end
		    for b=0 to UBound(gg.X)
		      if b=UBound(gg.X) Then
		        ts.Write(Format(gg.X(b),"-#.###"))
		      else
		        ts.Write(Format(gg.X(b),"-#.###")+", ")
		      end
		    Next
		    ts.Close
		    
		    
		    s=f.Child("Y-Values.text")
		    ts=TextOutputStream.Create(s)
		    if ts=nil Then
		      Return
		    end
		    for b=0 to UBound(gg.Y)
		      if b=UBound(gg.Y) Then
		        ts.Write(Format(gg.Y(b),"-#.###"))
		      else
		        ts.Write(Format(gg.Y(b),"-#.###")+", ")
		      end
		    Next
		    ts.Close
		    
		    
		    s=f.Child("Depth-Values.text")
		    ts=TextOutputStream.Create(s)
		    
		    if ts=nil Then
		      Return
		    end
		    for a=0 to UBound(gg.Max_D,1)
		      for b=0 to UBound(gg.Max_D,2)
		        if b=UBound(gg.Max_D,2) Then
		          ts.WriteLine(Format(gg.Max_D(a,b),"-#.###"))
		        else
		          ts.Write(Format(gg.Max_D(a,b),"-#.###")+", ")
		        end
		      Next
		    Next
		    ts.Close
		    
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Canvas_Projection_Iso
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  '//----------------------------------------------------------
		  '// Paint projection image and include option details
		  '//
		  '//----------------------------------------------------------
		  'dim i,sx,ex,sy,ey,buffer_offx,buffer_offy,x1,x2,y1,y2,j,legend_y as integer
		  'dim zoom,zoomx,zoomy,del_x,del_y as Single
		  '//----------------------------------------------------------
		  '
		  '
		  'Zoom=Val(EditField_Depth_Plot_Zoom.Text)
		  'zoom=Zoom/100
		  'del_x=val(TextField_X.Text)
		  'del_y=val(TextField_y.Text)
		  '
		  'i=Listbox_Depths_Results.ListIndex
		  'g.UseOldRenderer=True
		  '
		  'if i>=0 and i<=UBound(Depth_Fields.All)  then
		  'zoomy=zoom*Depth_Fields.All(i).Del_Y/del_y
		  'zoomx=Zoom*Depth_Fields.All(i).Del_x/del_x
		  '
		  'buffer_offx=round((me.Graphics.Width-Depth_Fields.All(i).Plot.Width*zoomx)/2)
		  'buffer_offy=round((me.Graphics.Height-Depth_Fields.All(i).Plot.height*zoomy)/2)
		  '
		  '
		  'ex=Round(Depth_Fields.All(i).Plot.Width*zoomx)
		  'ey=Round(Depth_Fields.All(i).Plot.height*zoomy)
		  '
		  'if RadioButton_Depth_1.Value Then
		  'g.ForeColor=RGB(255,255,255)
		  'g.FillRect(0,0,g.Width,g.Height)
		  'g.DrawPicture Depth_Fields.All(i).Plot,buffer_offx,buffer_offy,ex,ey,0,0,Depth_Fields.All(i).Plot.Width,Depth_Fields.All(i).Plot.height
		  'if CheckBox_Plot_Legend.Value Then
		  'legend_y=g.Height/2-128
		  '//Draw legend
		  'for j=0 to 255
		  'g.ForeColor=gvis.colour_map_jet(j)
		  'g.DrawLine(10, legend_y+j,25,legend_y+j)
		  'if j=0 Then
		  'g.ForeColor=RGB(255,255,255)
		  'g.TextSize=val(TextField_TextSize.Text)
		  'g.DrawString(Format(Depth_Fields.All(i).MinDistalDepth,"-#.##")+" cm", 30,legend_y)
		  'g.fillRect(25, legend_y+j,5,5)
		  'elseif j=255 Then
		  'g.ForeColor=RGB(255,255,255)
		  'g.DrawString(Format(Depth_Fields.All(i).MaxDistalDepth,"-#.##") +" cm", 30,legend_y+j)
		  'g.fillRect(25, legend_y+j,5,5)
		  'elseif j=128 Then
		  'g.ForeColor=RGB(255,255,255)
		  'g.fillRect(25, legend_y+j,5,5)
		  'g.DrawString(Format(Depth_Fields.All(i).MinDistalDepth+(Depth_Fields.All(i).MaxDistalDepth-Depth_Fields.All(i).MinDistalDepth)/2,"-#.##")+" cm", 30,legend_y+j)
		  'end
		  'next
		  'end
		  '
		  '
		  'elseif RadioButton_Depth_2.Value Then
		  'g.DrawPicture Depth_Fields.All(i).Plot_PolyIso,buffer_offx,buffer_offy,ex,ey,0,0,Depth_Fields.All(i).Plot.Width,Depth_Fields.All(i).Plot.height
		  'end
		  '
		  '
		  'if CheckBox_Plot_Isodose.Value Then
		  'for j=0 to UBound(Depth_Fields.All(i).Isolines_Main)
		  'g.ForeColor=Depth_Fields.All(i).Isolines_Main(j).Colour
		  'g.PenHeight=1
		  'g.PenWidth=1
		  'x1=Round((Depth_Fields.All(i).Isolines_Main(j).x1-(Depth_Fields.All(i).X_offset-Depth_Fields.All(i).Del_x/2))*zoomx/Depth_Fields.All(i).Del_x+buffer_offx)
		  'x2=Round((Depth_Fields.All(i).Isolines_Main(j).x2-(Depth_Fields.All(i).X_offset-Depth_Fields.All(i).Del_x/2))*zoomx/Depth_Fields.All(i).Del_x+buffer_offx)
		  'y2=Round( (-Depth_Fields.All(i).Isolines_Main(j).y2+(Depth_Fields.All(i).Y_offset+gVis.scale_thickness/2))*zoomy/gvis.scale_thickness+buffer_offy)
		  'y1=Round((-Depth_Fields.All(i).Isolines_Main(j).y1+(Depth_Fields.All(i).Y_offset+gVis.scale_thickness/2))*zoomy/gvis.scale_thickness+buffer_offy)
		  'g.DrawLine x1,y1,x2,y2
		  'next
		  'end
		  '
		  '
		  'if CheckBox_Plot_Iso.Value or CheckBox_Plot_Cross_Box.Value Then
		  'x1=Round(buffer_offx+nx/2*zoomx)
		  'y1=Round( (-Depth_Fields.All(i).isoZ+(Depth_Fields.All(i).Y_offset+gVis.scale_thickness/2))*zoomy/gvis.scale_thickness+buffer_offy)
		  'if CheckBox_Plot_Iso.Value Then
		  'g.ForeColor=RGB(255,0,0)
		  'g.PenHeight=val(TextField_Line_Thickness.Text)
		  'g.PenWidth=val(TextField_Line_Thickness.Text)
		  'g.DrawOval(x1-2,y1-2,5,5)
		  'end
		  'if CheckBox_Plot_Cross_Box.Value Then
		  '// Draw cross hairs
		  'g.ForeColor=RGB(0,255,0)
		  'g.DrawLine(x1,0,x1,g.Height)
		  'g.DrawLine(0,y1,g.Width,y1)
		  '// Draw 8x8 box for Max field edges around isocenter
		  'g.ForeColor=RGB(0,0,255)
		  'g.DrawRect(x1-4*zoom/del_x,y1-zoom*4/del_y,zoom*8/del_x,zoom*8/del_x)
		  'end
		  'end
		  '
		  'if CheckBox_Plot_Grid.Value Then
		  'for j=0 to UBound(Depth_Fields.All(i).Y)
		  'g.ForeColor=RGB(0,255,0)
		  'g.PenHeight=1
		  'g.PenWidth=1
		  'x1=75
		  'y1=Round((-Depth_Fields.All(i).Y(j)+(Depth_Fields.All(i).Y_offset+gVis.scale_thickness/2))*zoomy/gvis.scale_thickness+buffer_offy)
		  'g.DrawString(Format(Depth_Fields.All(i).Y(j),"-#.###"), x1,y1)
		  'g.DrawLine 0,y1,70,y1
		  'j=j+5
		  'next
		  'end
		  '
		  '
		  'end
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  me.SetFocus
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  'dim buffer_offx,buffer_offy,i as integer
		  'dim zoom,xcm,ycm,zoomy,del_y,del_x,zoomx as Single
		  '
		  'Zoom=Val(EditField_Depth_Plot_Zoom.Text)
		  'zoom=Zoom/100
		  '
		  'del_x=val(TextField_X.Text)
		  'del_y=val(TextField_y.Text)
		  '
		  'i=Listbox_Depths_Results.ListIndex
		  '
		  '
		  'if i>=0 and i<=UBound(Depth_Fields.All)  then
		  'zoomy=zoom*Depth_Fields.All(i).Del_Y/del_y
		  'zoomx=Zoom*Depth_Fields.All(i).Del_x/del_x
		  '
		  'buffer_offx=round((me.Graphics.Width-Depth_Fields.All(i).Plot.Width*zoomx)/2)
		  'buffer_offy=round((me.Graphics.Height-Depth_Fields.All(i).Plot.height*zoomy)/2)
		  '
		  '
		  'xcm=(x-buffer_offx)*Depth_Fields.All(i).Del_x/zoomx+(Depth_Fields.All(i).X_offset-Depth_Fields.All(i).Del_x/2)
		  'ycm=Depth_Fields.All(i).Y_offset+gVis.scale_thickness/2-(y-buffer_offy)*gVis.scale_thickness/zoomy
		  '
		  '
		  '
		  'EditField_PP_X.Text=Format(xcm,"-#.##") 
		  'EditField_PP_y.Text=Format(ycm,"-#.##")
		  '
		  'StaticText_Depth_Pixel.Text="Offset Pixel X : "+Format((x-buffer_offx)/zoomx,"#")+" Y: "+Format((y-buffer_offy)/zoomy,"#")
		  '
		  'if CheckBox_Plot_Point.Value Then
		  'me.Refresh
		  'me.Graphics.ForeColor=RGB(0,0,255)
		  'me.Graphics.PenHeight=1
		  'me.Graphics.PenWidth=1
		  'me.Graphics.DrawLine (x,0,x,me.Height)
		  'me.Graphics.DrawLine (0,y,me.Width,y)
		  'end
		  '
		  'end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Depth_Plot_Zoom
	#tag Event
		Sub TextChange()
		  Canvas_Projection_Iso.Refresh
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Depth_1
	#tag Event
		Sub Action()
		  Canvas_Projection_Iso.Refresh
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Depth_2
	#tag Event
		Sub Action()
		  Canvas_Projection_Iso.Refresh
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Plot_Point
	#tag Event
		Sub Action()
		  Canvas_Projection_Iso.Refresh(False)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Plot_Grid
	#tag Event
		Sub Action()
		  Canvas_Projection_Iso.Refresh(False)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Plot_Iso
	#tag Event
		Sub Action()
		  Canvas_Projection_Iso.Refresh(False)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Plot_Isodose
	#tag Event
		Sub Action()
		  Canvas_Projection_Iso.Refresh(False)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Depth_3
	#tag Event
		Sub Action()
		  Canvas_Projection_Iso.Refresh
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_Y
	#tag Event
		Sub TextChange()
		  Canvas_Projection_Iso.Refresh
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_X
	#tag Event
		Sub TextChange()
		  Canvas_Projection_Iso.Refresh
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Plot_Legend
	#tag Event
		Sub Action()
		  Canvas_Projection_Iso.Refresh(False)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Plot_Cross_Box
	#tag Event
		Sub Action()
		  Canvas_Projection_Iso.Refresh(False)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_Line_Thickness
	#tag Event
		Sub TextChange()
		  Canvas_Projection_Iso.Refresh
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_TextSize
	#tag Event
		Sub TextChange()
		  Canvas_Projection_Iso.Refresh
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_FLEC_Copy2
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key=chr(13) or key=chr(9) then // chr(13) or key=chr(9) = Carriage return
		    
		    FLEC.x1=Val(me.Text)
		    EditField_FLEC_FieldX.Text=str(FLEC.x1+FLEC.x2)
		    Beam.Collimator.fields(0).X1=val(me.text)+0.5
		    
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events EditField_FLEC_Copy1
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key=chr(13) or key=chr(9) then
		    FLEC.x1=val(me.text)/2
		    FLEC.x2=val(me.text)/2
		    EditField_FLEC_x1.Text=str(FLEC.x1)
		    EditField_FLEC_x2.Text=str(FLEC.x2)
		    Beam.Collimator.fields(0).X1=val(me.text)/2+0.5
		    Beam.Collimator.fields(0).X2=val(me.text)/2+0.5
		    
		    
		    
		  end
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Photon_Copy2
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key=chr(13) or key=chr(9) then // chr(13) or key=chr(9) = Carriage return
		    
		    FLEC.x1=Val(me.Text)
		    EditField_FLEC_FieldX.Text=str(FLEC.x1+FLEC.x2)
		    Beam.Collimator.fields(0).X1=val(me.text)+0.5
		    
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Photon_Copy1
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key=chr(13) or key=chr(9) then
		    FLEC.x1=val(me.text)/2
		    FLEC.x2=val(me.text)/2
		    EditField_FLEC_x1.Text=str(FLEC.x1)
		    EditField_FLEC_x2.Text=str(FLEC.x2)
		    Beam.Collimator.fields(0).X1=val(me.text)/2+0.5
		    Beam.Collimator.fields(0).X2=val(me.text)/2+0.5
		    
		    
		    
		  end
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Photon_arc2
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key=chr(13) or key=chr(9) then // chr(13) or key=chr(9) = Carriage return
		    
		    FLEC.x1=Val(me.Text)
		    EditField_FLEC_FieldX.Text=str(FLEC.x1+FLEC.x2)
		    Beam.Collimator.fields(0).X1=val(me.text)+0.5
		    
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Photon_arc1
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key=chr(13) or key=chr(9) then
		    FLEC.x1=val(me.text)/2
		    FLEC.x2=val(me.text)/2
		    EditField_FLEC_x1.Text=str(FLEC.x1)
		    EditField_FLEC_x2.Text=str(FLEC.x2)
		    Beam.Collimator.fields(0).X1=val(me.text)/2+0.5
		    Beam.Collimator.fields(0).X2=val(me.text)/2+0.5
		    
		    
		    
		  end
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Photon_Arc_delta
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key=chr(13) or key=chr(9) then // chr(13) or key=chr(9) = Carriage return
		    
		    FLEC.x1=Val(me.Text)
		    EditField_FLEC_FieldX.Text=str(FLEC.x1+FLEC.x2)
		    Beam.Collimator.fields(0).X1=val(me.text)+0.5
		    
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events EditField_FLEC_ARC_To
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key=chr(13) or key=chr(9) then // chr(13) or key=chr(9) = Carriage return
		    
		    FLEC.x1=Val(me.Text)
		    EditField_FLEC_FieldX.Text=str(FLEC.x1+FLEC.x2)
		    Beam.Collimator.fields(0).X1=val(me.text)+0.5
		    
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events EditField_FLEC_ARC_From
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key=chr(13) or key=chr(9) then
		    FLEC.x1=val(me.text)/2
		    FLEC.x2=val(me.text)/2
		    EditField_FLEC_x1.Text=str(FLEC.x1)
		    EditField_FLEC_x2.Text=str(FLEC.x2)
		    Beam.Collimator.fields(0).X1=val(me.text)/2+0.5
		    Beam.Collimator.fields(0).X2=val(me.text)/2+0.5
		    
		    
		    
		  end
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events EditField_FLEC_ARC_Delta
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key=chr(13) or key=chr(9) then // chr(13) or key=chr(9) = Carriage return
		    
		    FLEC.x1=Val(me.Text)
		    EditField_FLEC_FieldX.Text=str(FLEC.x1+FLEC.x2)
		    Beam.Collimator.fields(0).X1=val(me.text)+0.5
		    
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_VMC_Source01
	#tag Event
		Sub Action()
		  Dim i,k as Integer
		  
		  
		  for i=0 to UBound(gVMC.VMC)
		    for k=0 to UBound(gVMC.VMC(i).BEAMS)
		      gVMC.vmc_Make_Spectrum(i,k)
		    next
		  next
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
		Name="Beam_Index"
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
		Name="constraint_index"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="external_index"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Feather_Move_X"
		Group="Behavior"
		InitialValue="0"
		Type="single"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Feather_Move_Y"
		Group="Behavior"
		InitialValue="0"
		Type="single"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Feather_Number_X"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Feather_Number_Y"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Feather_OpenX"
		Group="Behavior"
		InitialValue="0"
		Type="single"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Feather_OpenY"
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
		Name="Map_Grad"
		Group="Behavior"
		InitialValue="0"
		Type="picture"
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
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Open_Plan_Index"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="organ_index"
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
		Name="projection_index"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Ray_delx"
		Group="Behavior"
		InitialValue="0"
		Type="single"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Ray_dely"
		Group="Behavior"
		InitialValue="0"
		Type="single"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Ray_X_Quad"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Ray_Y_Quad"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
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
		Name="target_index"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
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
