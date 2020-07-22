#tag Window
Begin Window Window_Configurations_Beam_Model
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   675
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
   Resizeable      =   True
   Title           =   "MMCTP Configurations for beam models"
   Visible         =   False
   Width           =   928
   Begin TabPanel TabPanel_All
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   555
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   False
      TabDefinition   =   "Basic linac settings\rMLC settings\rAccessory settings\rTreatment head calculation settings"
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   77
      Transparent     =   False
      Underline       =   False
      Value           =   1
      Visible         =   True
      Width           =   888
      Begin GroupBox GroupBox_Linac_MC
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "BEAMnrc and DOSXYZnrc Settings"
         Enabled         =   True
         Height          =   314
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   36
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   119
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   852
         Begin ListBox ListBox_Linacs_MC
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
            Height          =   192
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Linac_MC"
            InitialValue    =   ""
            Italic          =   False
            Left            =   45
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            RequiresSelection=   False
            Scope           =   0
            ScrollbarHorizontal=   True
            ScrollBarVertical=   True
            SelectionType   =   0
            TabIndex        =   0
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   231
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   830
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin TextField EditField_Linac_BEAMnrc_part_density
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
            InitialParent   =   "GroupBox_Linac_MC"
            Italic          =   False
            Left            =   233
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
            Top             =   145
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   284
         End
         Begin Label StaticText46
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Linac_MC"
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
            TabIndex        =   2
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "BEAMnrc particle density"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   146
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   157
         End
         Begin Label StaticText48
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Linac_MC"
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
            TabIndex        =   3
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "BEAMnrc input file (wth ext)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   175
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   176
         End
         Begin TextField EditField_Linac_BEAMnrc_INputfile
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
            InitialParent   =   "GroupBox_Linac_MC"
            Italic          =   False
            Left            =   233
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
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   174
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   284
         End
         Begin TextField EditField_Linac_BEAMnrc_pegs
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
            InitialParent   =   "GroupBox_Linac_MC"
            Italic          =   False
            Left            =   233
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
            Top             =   204
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   284
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
            InitialParent   =   "GroupBox_Linac_MC"
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
            TabIndex        =   6
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "BEAMnrc pegs file (no ext)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   205
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   176
         End
      End
      Begin GroupBox GroupBox_Linac_Wedges
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Physical Photon Wedges"
         Enabled         =   True
         Height          =   289
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   39
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
         Top             =   138
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   406
         Begin TextField EditField_Linac_Num_Wedge
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
            InitialParent   =   "GroupBox_Linac_Wedges"
            Italic          =   False
            Left            =   253
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
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   171
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   142
         End
         Begin Label StaticText54
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Linac_Wedges"
            Italic          =   False
            Left            =   49
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Number of Wedges"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   172
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   171
         End
         Begin Listbox Listbox_Linac_Wedge
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
            Height          =   120
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Linac_Wedges"
            InitialValue    =   ""
            Italic          =   False
            Left            =   49
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
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   297
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   383
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin TextField EditField_Linac_Wedge_Angle
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
            InitialParent   =   "GroupBox_Linac_Wedges"
            Italic          =   False
            Left            =   253
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
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   234
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   142
         End
         Begin Label StaticText55
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Linac_Wedges"
            Italic          =   False
            Left            =   51
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   4
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Number of wedge orientations"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   268
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   198
         End
         Begin PopupMenu PopupMenu_Linac_Wedge
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Linac_Wedges"
            InitialValue    =   ""
            Italic          =   False
            Left            =   253
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   5
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   202
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   142
         End
         Begin Label StaticText56
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Linac_Wedges"
            Italic          =   False
            Left            =   51
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   6
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Wedge"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   203
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   171
         End
         Begin Label StaticText57
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Linac_Wedges"
            Italic          =   False
            Left            =   51
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   7
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Wedges Angle"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   235
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   171
         End
         Begin TextField EditField_Linac_Wedge_Orientations
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
            InitialParent   =   "GroupBox_Linac_Wedges"
            Italic          =   False
            Left            =   253
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
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   267
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   142
         End
      End
      Begin GroupBox GroupBox_Linac_Electrons
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Applicators"
         Enabled         =   True
         Height          =   186
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   480
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   138
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   406
         Begin TextField EditField_Linac_App
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
            InitialParent   =   "GroupBox_Linac_Electrons"
            Italic          =   False
            Left            =   673
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
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   161
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   106
         End
         Begin Label StaticText53
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Linac_Electrons"
            Italic          =   False
            Left            =   490
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Number of Applicators"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   162
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   171
         End
         Begin Listbox Listbox_Linac_applicators
            AutoDeactivate  =   True
            AutoHideScrollbars=   True
            Bold            =   False
            Border          =   True
            ColumnCount     =   4
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
            Height          =   120
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Linac_Electrons"
            InitialValue    =   ""
            Italic          =   False
            Left            =   490
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
            TabIndex        =   2
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   192
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   383
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
      End
      Begin GroupBox GroupBox1
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Properties of configured MLCs within MMCTP"
         Enabled         =   True
         Height          =   464
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   37
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   18
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   148
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   842
         Begin GroupBox GroupBox15
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "MLC Properties"
            Enabled         =   True
            Height          =   394
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   54
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
            Top             =   203
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   803
            Begin Label StaticText69
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox15"
               Italic          =   False
               Left            =   65
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   0
               TabPanelIndex   =   2
               TabStop         =   True
               Text            =   "Number of leafpairs or binary leaves:"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   305
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   241
            End
            Begin TextField EditField_MLC_Numberofpairs
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
               InitialParent   =   "GroupBox15"
               Italic          =   False
               Left            =   325
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
               Width           =   68
            End
            Begin TextField EditField_MLC_Name
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
               InitialParent   =   "GroupBox15"
               Italic          =   False
               Left            =   158
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
               TabPanelIndex   =   2
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   224
               Transparent     =   False
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   223
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
               InitialParent   =   "GroupBox15"
               Italic          =   False
               Left            =   65
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   3
               TabPanelIndex   =   2
               TabStop         =   True
               Text            =   "MLC Name:"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   225
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   90
            End
            Begin Listbox Listbox_MLC
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
               Height          =   220
               HelpTag         =   ""
               Hierarchical    =   False
               Index           =   -2147483648
               InitialParent   =   "GroupBox15"
               InitialValue    =   ""
               Italic          =   False
               Left            =   65
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
               TabIndex        =   4
               TabPanelIndex   =   2
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   366
               Transparent     =   False
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   331
               _ScrollOffset   =   0
               _ScrollWidth    =   -1
            End
            Begin RadioButton RadioButton_MLC_leafpairs
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "Type leafpairs"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox15"
               Italic          =   False
               Left            =   65
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   0
               TabIndex        =   5
               TabPanelIndex   =   2
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   271
               Transparent     =   False
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   124
            End
            Begin RadioButton RadioButton_MLC_binary
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "Type binary leaves"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox15"
               Italic          =   False
               Left            =   207
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   0
               TabIndex        =   6
               TabPanelIndex   =   2
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   271
               Transparent     =   False
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   150
            End
            Begin TextField EditField_MLC_AirGap
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
               InitialParent   =   "GroupBox15"
               Italic          =   False
               Left            =   325
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
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   332
               Transparent     =   False
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   68
            End
            Begin Label StaticText691
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   "Defined at Plane of MLC"
               Index           =   -2147483648
               InitialParent   =   "GroupBox15"
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
               TabIndex        =   8
               TabPanelIndex   =   2
               TabStop         =   True
               Text            =   "Abutting leaf air gap (cm)"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   333
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   185
            End
            Begin GroupBox GroupBox16
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "Parse Sinogram"
               Enabled         =   True
               Height          =   90
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox15"
               Italic          =   False
               Left            =   408
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   0
               TabIndex        =   9
               TabPanelIndex   =   2
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   224
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   176
               Begin RadioButton RadioButton_MLC_DoNothing
                  AutoDeactivate  =   True
                  Bold            =   False
                  Caption         =   "Do nothing"
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "GroupBox16"
                  Italic          =   False
                  Left            =   421
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
                  Top             =   257
                  Transparent     =   False
                  Underline       =   False
                  Value           =   False
                  Visible         =   True
                  Width           =   100
               End
            End
            Begin GroupBox GroupBox17
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "Leaf Direction"
               Enabled         =   True
               Height          =   90
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox15"
               Italic          =   False
               Left            =   408
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   0
               TabIndex        =   10
               TabPanelIndex   =   2
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   329
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   176
               Begin RadioButton RadioButton_MLC_X
                  AutoDeactivate  =   True
                  Bold            =   False
                  Caption         =   "Parallel X"
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "GroupBox17"
                  Italic          =   False
                  Left            =   421
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
                  Top             =   349
                  Transparent     =   False
                  Underline       =   False
                  Value           =   False
                  Visible         =   True
                  Width           =   87
               End
               Begin RadioButton RadioButton_MLC_Y
                  AutoDeactivate  =   True
                  Bold            =   False
                  Caption         =   "Parallel Y"
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "GroupBox17"
                  Italic          =   False
                  Left            =   421
                  LockBottom      =   False
                  LockedInPosition=   False
                  LockLeft        =   True
                  LockRight       =   False
                  LockTop         =   True
                  Scope           =   0
                  TabIndex        =   1
                  TabPanelIndex   =   2
                  TabStop         =   True
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   381
                  Transparent     =   False
                  Underline       =   False
                  Value           =   False
                  Visible         =   True
                  Width           =   80
               End
            End
            Begin RadioButton RadioButton_MLC_SimpleParser
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "Simple Parser"
               Enabled         =   True
               Height          =   20
               HelpTag         =   "Readin MLC fields"
               Index           =   -2147483648
               InitialParent   =   "GroupBox15"
               Italic          =   False
               Left            =   421
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   0
               TabIndex        =   11
               TabPanelIndex   =   2
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   285
               Transparent     =   False
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   135
            End
            Begin TextField EditField_MLC_SourceDistance
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
               InitialParent   =   "GroupBox15"
               Italic          =   False
               Left            =   665
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
               TabPanelIndex   =   2
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   431
               Transparent     =   False
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   68
            End
            Begin Label Label1
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox15"
               Italic          =   False
               Left            =   405
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
               Text            =   "MLC Source to device distance (cm):"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   432
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   241
            End
         End
         Begin PopupMenu PopupMenu_MLC_All
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            InitialValue    =   ""
            Italic          =   False
            Left            =   54
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
            Top             =   169
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   293
         End
         Begin BevelButton BevelButton_Linac_MLC_Add
            AcceptFocus     =   False
            AutoDeactivate  =   True
            BackColor       =   &c00000000
            Bevel           =   0
            Bold            =   False
            ButtonType      =   0
            Caption         =   "Add new MLC"
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
            Left            =   377
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   2
            TabStop         =   True
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   169
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   131
         End
         Begin BevelButton BevelButton_Linac_MLC_Del
            AcceptFocus     =   False
            AutoDeactivate  =   True
            BackColor       =   &c00000000
            Bevel           =   0
            Bold            =   False
            ButtonType      =   0
            Caption         =   "Delete selected MLC"
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
            Left            =   531
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   2
            TabStop         =   True
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   169
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   155
         End
      End
      Begin Label StaticText52
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   37
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
         Text            =   "MLC name for linac"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   113
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   134
      End
      Begin PopupMenu PopupMenu_Linac_MLC
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         InitialValue    =   ""
         Italic          =   False
         Left            =   189
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   20
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   112
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   275
      End
      Begin PopupMenu PopupMenu_Linac_Mode
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         InitialValue    =   ""
         Italic          =   False
         Left            =   226
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
         Top             =   150
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   293
      End
      Begin Label StaticText45
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   48
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
         Text            =   "Beam Mode:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   152
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin TextField EditField_Linac_Name
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
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   226
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
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   191
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   293
      End
      Begin Label StaticText49
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   48
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Linac name:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   192
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin TextField EditField_Linac_Energy
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
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   226
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
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   224
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   293
      End
      Begin Label StaticText47
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   48
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Energy"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   225
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   166
      End
      Begin GroupBox GroupBox_Linac_Type
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Manufacturer Type "
         Enabled         =   True
         Height          =   257
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   48
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   274
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   494
         Begin RadioButton RadioButton_BEAM_Sie
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Siemens"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Linac_Type"
            Italic          =   False
            Left            =   63
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
            Top             =   391
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   76
         End
         Begin RadioButton RadioButton_BEAM_Var
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Varian"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Linac_Type"
            Italic          =   False
            Left            =   63
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   307
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   63
         End
         Begin RadioButton RadioButton_BEAM_Tomo
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Tomotherapy"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Linac_Type"
            Italic          =   False
            Left            =   63
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
            Top             =   423
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   115
         End
         Begin RadioButton RadioButton_BEAM_Other
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Other"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Linac_Type"
            Italic          =   False
            Left            =   63
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
            Top             =   455
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   69
         End
         Begin RadioButton RadioButton_BEAM_Elekta
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Elekta"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Linac_Type"
            Italic          =   False
            Left            =   63
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
            Top             =   332
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   63
         End
         Begin RadioButton RadioButton_BEAM_Cyberknife
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Cyberknife"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Linac_Type"
            Italic          =   False
            Left            =   63
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
            Top             =   359
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   110
         End
      End
      Begin GroupBox GroupBox10
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Dynamic Wedge"
         Enabled         =   True
         Height          =   81
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   39
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   448
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   406
         Begin Label StaticText66
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox10"
            Italic          =   False
            Left            =   49
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
            Text            =   "Varian 60 deg Dynamic Wedge STT file"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   476
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   259
         End
         Begin TextField EditField_Linac_Wedge_STT
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
            InitialParent   =   "GroupBox10"
            Italic          =   False
            Left            =   49
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
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   500
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   383
         End
      End
   End
   Begin PushButton PushButton_Linac_Del
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Delete"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   805
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
      Top             =   45
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton PushButton_Linac_Add
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Add"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   804
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
      Top             =   13
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PopupMenu PopupMenu_Linac_Energy
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
      Left            =   688
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
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
      Width           =   104
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   600
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
      Text            =   "Beam Energy:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   83
   End
   Begin PopupMenu PopupMenu_Linac_Name
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
      Left            =   370
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   217
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   282
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
      Text            =   "Linac Name:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   76
   End
   Begin PopupMenu PopupMenu_Linac_Mode_Top
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
      Left            =   91
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   162
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   13
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
      Text            =   "Beam Mode:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   72
   End
   Begin PushButton PushButton1
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Close"
      Default         =   False
      Enabled         =   True
      Height          =   21
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   422
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   644
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  
		  if save_linac Then
		    gLinacs.Write_Linacs
		  end
		  
		  if Save_MLC Then
		    gLinacs.Write_MLCs
		  end
		  
		  if app.which_window_TreatmentPlanning=False and app.which_window_Contouring=false Then
		    Window_OpenPatient.Show
		  end
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Dim i as Integer
		  
		  DoNothing=True
		  Linac=new Class_Linacs_One
		  Linac.MLC=new Class_Linacs_MLC
		  Linac_Open
		  MLC_Open
		  DoNothing=False
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Linac_Applicator()
		  Dim i as Integer
		  
		  Listbox_Linac_applicators.DeleteAllRows
		  
		  for i =0 to UBound(Linac.Applicator)
		    Listbox_Linac_applicators.AddRow str(i+1)
		    Listbox_Linac_applicators.CellValueAt(i,1)= Linac.Applicator(i)
		    Listbox_Linac_applicators.CellType(i,1)=3
		    Listbox_Linac_applicators.CellValueAt(i,2)= Linac.BEAMnrcApplicatorCM(i)
		    Listbox_Linac_applicators.CellType(i,2)=3
		    Listbox_Linac_applicators.CellValueAt(i,3)= Linac.BEAMnrcApplicatorLabel(i)
		    Listbox_Linac_applicators.CellType(i,3)=3
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Linac_Open()
		  //------------------------------
		  //
		  //------------------------------
		  Dim i,old_mode,old_linac_mode as Integer
		  Dim temp as String
		  Dim f as FolderItem
		  //------------------------------
		  
		  DoNothing=True
		  
		  old_mode=PopupMenu_Linac_Mode_Top.SelectedRowIndex
		  old_linac_mode=PopupMenu_Linac_Mode.SelectedRowIndex
		  
		  PopupMenu_Linac_Mode.DeleteAllRows
		  PopupMenu_Linac_Mode_Top.DeleteAllRows
		  PopupMenu_Linac_Mode_Top.AddRow "PHOTON"
		  PopupMenu_Linac_Mode_Top.AddRow "ELECTRON"
		  PopupMenu_Linac_Mode.AddRow "PHOTON"
		  PopupMenu_Linac_Mode.AddRow "ELECTRON"
		  f=gPref.Config_fi
		  f=f.Child(".EMET")
		  if f.Exists Then
		    PopupMenu_Linac_Mode_Top.AddRow "FLEC"
		    PopupMenu_Linac_Mode.AddRow "FLEC"
		  end
		  
		  
		  
		  
		  DoNothing=False
		  if Linac_Mode_Change=False Then
		    if old_mode>-1 and old_mode<=PopupMenu_Linac_Mode_Top.ListCount Then
		      PopupMenu_Linac_Mode_Top.SelectedRowIndex=old_mode
		    else
		      PopupMenu_Linac_Mode_Top.SelectedRowIndex=0
		    end
		  else
		    PopupMenu_Linac_Mode_Top.SelectedRowIndex=old_linac_mode
		    
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Linac_Open_Energy()
		  //------------------------------
		  //
		  //------------------------------
		  Dim i,k ,old_index as Integer
		  Dim temp,old_name as String
		  Dim f as FolderItem
		  Dim rep as Boolean
		  //------------------------------
		  
		  DoNothing=True
		  
		  old_name=PopupMenu_Linac_Energy.Text
		  old_index=PopupMenu_Linac_Energy.SelectedRowIndex
		  
		  PopupMenu_Linac_Energy.DeleteAllRows
		  
		  for i = 0 to UBound(gLinacs.All_Linacs)
		    if gLinacs.All_Linacs(i).Mode=Linac_Mode_Top and gLinacs.All_Linacs(i).RT_name=Linac_Name_Top Then
		      temp=gLinacs.All_Linacs(i).Energy
		      PopupMenu_Linac_Energy.AddRow temp
		    end
		  next
		  
		  
		  DoNothing=False
		  
		  if Linac_Energy_Change=False Then
		    for i = 1 to PopupMenu_Linac_Energy.ListCount
		      if PopupMenu_Linac_Energy.List(i-1)=old_name Then
		        PopupMenu_Linac_Energy.SelectedRowIndex=i-1
		        Return
		      end
		    next
		    PopupMenu_Linac_Energy.SelectedRowIndex=0
		  else
		    PopupMenu_Linac_Energy.SelectedRowIndex=old_index
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Linac_Open_Name()
		  //------------------------------
		  //
		  //------------------------------
		  Dim i,k,old_index as Integer
		  Dim temp,old_name as String
		  Dim rep as Boolean
		  //------------------------------
		  
		  DoNothing=True
		  
		  
		  // Clear forms
		  if Name_Change=False Then
		    
		    EditField_Linac_Name.value = ""
		    EditField_Linac_Energy.value = ""
		    EditField_Linac_BEAMnrc_INputfile.value = ""
		    EditField_Linac_App.value = ""
		    EditField_Linac_BEAMnrc_part_density.value = ""
		    EditField_Linac_BEAMnrc_pegs.value = ""
		  end
		  
		  
		  old_name=PopupMenu_Linac_Name.Text
		  old_index=PopupMenu_Linac_Name.SelectedRowIndex
		  
		  PopupMenu_Linac_Name.DeleteAllRows
		  
		  for i = 0 to UBound(gLinacs.All_Linacs)
		    if gLinacs.All_Linacs(i).Mode=Linac_Mode_Top Then
		      rep=False
		      temp=gLinacs.All_Linacs(i).RT_name
		      
		      for k = 1 to PopupMenu_Linac_Name.ListCount
		        if PopupMenu_Linac_Name.List(k-1)=temp Then
		          rep=True
		        end
		      next
		      
		      if rep=False Then
		        PopupMenu_Linac_Name.AddRow temp
		      end
		    end
		  next
		  
		  
		  DoNothing=False
		  
		  if Name_Change=False Then
		    for i = 1 to PopupMenu_Linac_Name.ListCount
		      if PopupMenu_Linac_Name.List(i-1)=old_name Then
		        PopupMenu_Linac_Name.SelectedRowIndex=i-1
		        Return
		      end
		    next
		    PopupMenu_Linac_Name.SelectedRowIndex=0
		    
		  else
		    PopupMenu_Linac_Name.SelectedRowIndex=old_index
		    
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Linac_Pop()
		  //---------------------------
		  // Update for BEAMnrc phsp file name
		  //
		  //---------------------------
		  Dim  i as Integer
		  Dim mlc_index as Integer
		  //---------------------------
		  
		  
		  DoNothing=True
		  // Update for BEAMnrc phsp file name
		  
		  
		  ListBox_Linacs_MC.DeleteAllRows
		  
		  ListBox_Linacs_MC.ColumnType(0)=1
		  ListBox_Linacs_MC.ColumnType(1)=3
		  ListBox_Linacs_MC.ColumnType(2)=3
		  ListBox_Linacs_MC.ColumnType(3)=3
		  ListBox_Linacs_MC.ColumnType(4)=3
		  
		  
		  ListBox_Linacs_MC.HeaderAt(0)="Shell"
		  ListBox_Linacs_MC.HeaderAt(1)="BEAMnrc folder name"
		  ListBox_Linacs_MC.HeaderAt(2)="DOSXYZnrc dose value"
		  ListBox_Linacs_MC.HeaderAt(3)="VMC dose value"
		  ListBox_Linacs_MC.HeaderAt(4)="BEAMnrc phsp file name"
		  ListBox_Linacs_MC.ColumnWidths="20%,20%,20%,20%,20%"
		  
		  if Linac<> Nil Then
		    for i=0 to UBound(Linac.MC_BEAMnrc_path)
		      ListBox_Linacs_MC.AddRow  gShells.Shells(i).title
		      ListBox_Linacs_MC.CellValueAt(i,1) = Linac.MC_BEAMnrc_path(i)
		      ListBox_Linacs_MC.CellValueAt(i,2)=Format(Linac.MC_dosxyz_dose(i),"-#.######e")
		      ListBox_Linacs_MC.CellValueAt(i,3)=Format(Linac.MC_VMC_dose(i),"-#.######e")
		      ListBox_Linacs_MC.CellValueAt(i,4)=Linac.MC_BEAMnrc_phsp_file(i)
		      
		    Next
		    
		    if Name_Change =False Then
		      EditField_Linac_Name.value = Linac.RT_name
		    end
		    
		    EditField_Linac_BEAMnrc_INputfile.value = Linac.MC_BEAMnrc_input_file
		    EditField_Linac_Energy.value = Linac.Energy
		    EditField_Linac_BEAMnrc_part_density.value = Format(Linac.MC_BEAMnrc_part_density,"###,###,###")
		    
		    for i=1 to PopupMenu_Linac_Mode.ListCount
		      if Linac.Mode=PopupMenu_Linac_Mode.List(i-1) Then
		        PopupMenu_Linac_Mode.SelectedRowIndex=i-1
		        exit for i
		      end
		    next
		    
		    
		    
		    EditField_Linac_BEAMnrc_pegs.value = Linac.MC_BEAMnrc_pegs4
		    EditField_Linac_Wedge_STT.value = Linac.STT_Table
		    
		    
		    
		    If Linac.Type=1 Then
		      RadioButton_BEAM_Var.Value=True
		    elseif Linac.Type=2 Then
		      RadioButton_BEAM_Sie.Value=True
		    elseif Linac.Type=3 Then
		      RadioButton_BEAM_Other.Value=True
		    ElseIf Linac.Type=4 Then
		      RadioButton_BEAM_Tomo.Value=True
		    ElseIf Linac.Type=5 Then
		      RadioButton_BEAM_Elekta.Value=True
		    ElseIf Linac.Type=6 Then
		      RadioButton_BEAM_Cyberknife.Value=True
		    else
		      RadioButton_BEAM_Elekta.Value=False
		      RadioButton_BEAM_Other.Value=False
		      RadioButton_BEAM_Var.Value=False
		      RadioButton_BEAM_Tomo.Value=False
		      RadioButton_BEAM_Sie.Value=False
		      RadioButton_BEAM_Cyberknife.Value=False
		    end
		    
		    
		    
		    PopupMenu_Linac_MLC.DeleteAllRows
		    PopupMenu_Linac_MLC.AddRow "None"
		    for i=0 to UBound(gLinacs.All_MLCs)
		      PopupMenu_Linac_MLC.AddRow gLinacs.All_MLCs(i).MLC_Name
		    next
		    PopupMenu_Linac_MLC.SelectedRowIndex=0
		    
		    if Linac.MLC.MLC_Use=1 Then
		      for i=0 to UBound(gLinacs.All_MLCs)
		        if Linac.MLC.MLC_Name=gLinacs.All_MLCs(i).MLC_Name Then
		          PopupMenu_Linac_MLC.SelectedRowIndex=i+1
		          exit
		        end
		      next
		    end
		    
		    
		    
		    Listbox_Linac_applicators.DeleteAllRows
		    Listbox_Linac_applicators.HeaderAt(0)="Number"
		    Listbox_Linac_applicators.HeaderAt(1)="Size #x#"
		    Listbox_Linac_applicators.HeaderAt(2)="BEAMnrc CM name"
		    Listbox_Linac_applicators.HeaderAt(3)="BEAMnrc CM label"
		    
		    EditField_Linac_App.value = str(UBound(Linac.Applicator)+1)
		    Linac_Applicator
		    
		    EditField_Linac_Num_Wedge.value = str(UBound(Linac.Wedges)+1)
		    Linac_Pop_PhotonWedges
		    PopupMenu_Linac_Wedge.SelectedRowIndex=0
		  end
		  
		  DoNothing=False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Linac_Pop_PhotonWedges()
		  //---------------------------
		  // Populate Photon Wedges
		  //
		  //---------------------------
		  Dim  i as Integer
		  Dim mlc_index as Integer
		  //---------------------------
		  
		  
		  DoNothing=True
		  PopupMenu_Linac_Wedge.DeleteAllRows
		  Listbox_Linac_Wedge.HeaderAt(0)="Index"
		  Listbox_Linac_Wedge.HeaderAt(1)="Orientation"
		  for i =0 to UBound(Linac.Wedges)
		    PopupMenu_Linac_Wedge.AddRow str(i+1)+" - "+Linac.Wedges(i).Angle
		  next
		  DoNothing=False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Linac_Pop_PhotonWedgesOri()
		  Dim i,w as Integer
		  
		  i=PopupMenu_Linac_Wedge.SelectedRowIndex
		  Listbox_Linac_Wedge.DeleteAllRows
		  
		  if i>=0 and i<=UBound(Linac.Wedges) Then
		    for w =0 to UBound(Linac.Wedges(i).Rotations)
		      Listbox_Linac_Wedge.AddRow str(w+1)
		      Listbox_Linac_Wedge.CellValueAt(w,1)= Linac.Wedges(i).Rotations(w)
		      Listbox_Linac_Wedge.CellType(w,1)= 3
		      
		    next
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MLC_Open()
		  Dim i,oldi as Integer
		  
		  
		  DoNothing=True
		  Listbox_MLC.DeleteAllRows
		  Listbox_MLC.HeaderAt(0)="Bounds"
		  Listbox_MLC.HeaderAt(1)="Value (cm)"
		  
		  MLC= new Class_Linacs_MLC
		  oldi=PopupMenu_MLC_All.SelectedRowIndex
		  
		  PopupMenu_MLC_All.DeleteAllRows
		  for i =0 to UBound(gLinacs.All_MLCs)
		    PopupMenu_MLC_All.AddRow gLinacs.All_MLCs(i).MLC_Name
		  next
		  
		  DoNothing=False
		  
		  if oldi>-1 and oldi<=UBound(gLinacs.All_MLCs) Then
		    PopupMenu_MLC_All.SelectedRowIndex=oldi
		  elseif PopupMenu_MLC_All.ListCount>=0 Then
		    PopupMenu_MLC_All.SelectedRowIndex=0
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MLC_Update_Listbox()
		  Dim i as Integer
		  
		  
		  
		  Listbox_MLC.DeleteAllRows
		  
		  if MLC.Type=0 Then
		    for i=0 to UBound(mlc.Boundaries)
		      Listbox_MLC.AddRow str(i+1)
		      Listbox_MLC.CellValueAt(i,1)=str(mlc.Boundaries(i))
		      Listbox_MLC.CellType(i,1)=3
		    next
		    
		    
		  elseif MLC.Type=1 Then // for binary leaves
		    
		    for i=0 to UBound(mlc.Boundaries)
		      Listbox_MLC.AddRow str(i+1)
		      Listbox_MLC.CellValueAt(i,1)=str(mlc.Boundaries(i))
		      Listbox_MLC.CellType(i,1)=3
		    next
		    
		    
		    
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MLC_Update_MLC()
		  DoNothing=True
		  
		  if MLC_Edit=False Then
		    EditField_MLC_Name.value = mlc.MLC_Name
		  end
		  
		  EditField_MLC_Numberofpairs.value = str(MLC.NumberofLeafPairs)
		  EditField_MLC_SourceDistance.value = Format(MLC.Source_to_Device_Distance,"-#.#####")
		  EditField_MLC_AirGap.value = Format(MLC.AbuttingGap,"-#.######")
		  
		  if MLC.LeafDirection=1 Then
		    RadioButton_MLC_Y.Value=True
		  elseif MLC.LeafDirection=0 Then
		    RadioButton_MLC_X.Value=True
		  end
		  
		  if MLC.Parser=0 Then
		    RadioButton_MLC_DoNothing.Value=True
		  elseif MLC.Parser=1 Then
		    RadioButton_MLC_SimpleParser.Value=True
		  end
		  
		  if MLC.Type=0 Then
		    RadioButton_MLC_leafpairs.Value=True
		  elseif MLC.Type=1 Then
		    RadioButton_MLC_binary.Value=True
		  end
		  
		  MLC_Update_Listbox
		  DoNothing=False
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		DoNothing As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Linac As Class_Linacs_One
	#tag EndProperty

	#tag Property, Flags = &h0
		Linac_Energy_Change As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Linac_energy_Top As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Linac_Mode_Change As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Linac_Mode_Top As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Linac_Name_Top As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Linac_Wedge_Edit As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		MC_DOSXYZ_Column As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		MLC As Class_Linacs_MLC
	#tag EndProperty

	#tag Property, Flags = &h0
		MLC_Edit As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Name_Change As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		save_linac As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Save_MLC As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Save_Model As boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events TabPanel_All
	#tag Event
		Sub Change()
		  if me.Value=1 Then
		    MLC_Open
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ListBox_Linacs_MC
	#tag Event
		Function HeaderPressed(column as Integer) As Boolean
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  // Update for source 20 phsp file 2017
		  
		  if DoNothing Then
		    Return
		  end
		  
		  if column=1 Then
		    Linac.MC_BEAMnrc_path(row)=me.CellValueAt(row,1)
		    
		  elseif column=2 Then
		    Linac.MC_dosxyz_dose(row)=val(me.CellValueAt(row,2))
		    
		    
		  elseif column=3 Then
		    Linac.MC_VMC_dose(row)=val(me.CellValueAt(row,3))
		    
		  elseif column=4 Then
		    Linac.MC_BEAMnrc_phsp_file(row)=Trim(me.CellValueAt(row,4))
		    
		    
		  end
		  
		  save_linac=True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Linac_BEAMnrc_part_density
	#tag Event
		Sub TextChange()
		  Dim s as String
		  
		  s=me.Text
		  
		  if DoNothing=False Then
		    While InStr(s,",")>0 
		      s=Replace(s,",","")
		    Wend
		    save_linac=True
		    Linac.MC_BEAMnrc_part_density=val(s)
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Linac_BEAMnrc_INputfile
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  //---------------------------------
		  // Pick new input file for selected linac
		  //
		  //---------------------------------
		  dim fi as FolderItem
		  dim opfi as new OpenDialog
		  //---------------------------------
		  
		  
		  fi = new FolderItem
		  if DoNothing=False Then
		    opfi.InitialDirectory=gPref.BEAMnrc_fi
		    opfi.Title="Select a BEAMnrc input file"
		    opfi.Filter="egsinp"
		    opfi.SuggestedFileName=Linac.MC_BEAMnrc_input_file
		    //opfi.PromptText= "What"
		    fi=opfi.ShowModal
		    if fi<>nil then //fi.Exists then
		      Linac.MC_BEAMnrc_input_file=fi.Name
		      save_linac=True
		      me.value = fi.Name
		    end if
		  end
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Linac_BEAMnrc_pegs
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    save_linac=True
		    Linac.MC_BEAMnrc_pegs4=Trim(me.Text)
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Linac_Num_Wedge
	#tag Event
		Sub TextChange()
		  Dim i as Integer
		  
		  if DoNothing=False Then
		    i=val(me.Text)
		    if i>=0 Then
		      ReDim Linac.Wedges(i-1)
		      for i=0 to UBound(Linac.Wedges)
		        if Linac.Wedges(i)=nil Then
		          Linac.Wedges(i)=new Class_Linacs_Wedge
		        end
		      Next
		      Linac_Pop_PhotonWedges
		      PopupMenu_Linac_Wedge.SelectedRowIndex=0
		    end
		    save_linac=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_Linac_Wedge
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  Dim i as Integer
		  i=PopupMenu_Linac_Wedge.SelectedRowIndex
		  
		  if i>=0 and i<=UBound(Linac.Wedges) Then
		    Linac.Wedges(i).Rotations(row)=Trim(me.CellValueAt(row,column))
		    save_linac=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Linac_Wedge_Angle
	#tag Event
		Sub TextChange()
		  Dim i as Integer
		  
		  
		  if DoNothing=False Then
		    Linac_Wedge_Edit=True
		    i=PopupMenu_Linac_Wedge.SelectedRowIndex
		    if i>=0 and i<=UBound(Linac.Wedges) Then
		      Linac.Wedges(i).Angle=Trim(me.Text)
		      Linac_Pop_PhotonWedges
		      PopupMenu_Linac_Wedge.SelectedRowIndex=i
		    end
		    Linac_Wedge_Edit=False
		    save_linac=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Linac_Wedge
	#tag Event
		Sub Change()
		  Dim w,i as Integer
		  
		  
		  w=me.SelectedRowIndex
		  if w>=0 and w<=UBound(Linac.Wedges) Then
		    EditField_Linac_Wedge_Orientations.value = str(UBound(Linac.Wedges(w).Rotations)+1)
		    if Linac_Wedge_Edit=False Then
		      EditField_Linac_Wedge_Angle.value = Linac.Wedges(w).Angle
		    end
		    Linac_Pop_PhotonWedgesOri
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Linac_Wedge_Orientations
	#tag Event
		Sub TextChange()
		  Dim i,kk as Integer
		  
		  if DoNothing=False Then
		    kk=val(me.Text)
		    i=PopupMenu_Linac_Wedge.SelectedRowIndex
		    
		    if i>=0 and i<= UBound(Linac.Wedges) Then
		      ReDim Linac.Wedges(i).Rotations(kk-1)
		      Linac_Pop_PhotonWedgesOri
		    end
		    save_linac=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Linac_App
	#tag Event
		Sub TextChange()
		  Dim i as Integer
		  
		  
		  if DoNothing=False Then
		    save_linac=True
		    i=val(me.Text)
		    i=i-1
		    if i>=0 Then
		      ReDim Linac.Applicator(i)
		      ReDim Linac.BEAMnrcApplicatorCM(i)
		      ReDim Linac.BEAMnrcApplicatorLabel(i)
		    end
		    Linac_Applicator
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_Linac_applicators
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  dim i as Integer
		  
		  i=row
		  if i>=0 and i<=UBound(Linac.Applicator) Then
		    
		    if column=1 Then
		      Linac.Applicator(i)=Trim(me.CellValueAt(row,column))
		    elseif column=2 Then
		      Linac.BEAMnrcApplicatorCM(i)=Trim(me.CellValueAt(row,column))
		    elseif column=3 Then
		      Linac.BEAMnrcApplicatorLabel(i)=Trim(me.CellValueAt(row,column))
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_MLC_Numberofpairs
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    mlc.NumberofLeafPairs=val(me.Text)
		    Save_MLC=True
		    ReDim mlc.Boundaries(mlc.NumberofLeafPairs)
		    MLC_Update_MLC
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_MLC_Name
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    mlc.MLC_Name=(me.Text)
		    MLC_Edit=True
		    MLC_Open
		    MLC_Edit=False
		    Save_MLC=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_MLC
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  if column=1 Then
		    mlc.Boundaries(row)=val(me.CellValueAt(row,column))
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_MLC_leafpairs
	#tag Event
		Sub Action()
		  if me.Value Then
		    mlc.Type=0
		  end
		  Save_MLC=True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_MLC_binary
	#tag Event
		Sub Action()
		  
		  if me.Value Then
		    MLC.Type=1
		    
		  end
		  Save_MLC=True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_MLC_AirGap
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    mlc.AbuttingGap=val(me.Text)
		    Save_MLC=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_MLC_DoNothing
	#tag Event
		Sub Action()
		  if me.Value Then
		    MLC.Parser=0
		  end
		  Save_MLC=True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_MLC_X
	#tag Event
		Sub Action()
		  if me.Value Then
		    MLC.LeafDirection=0
		  end
		  Save_MLC=True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_MLC_Y
	#tag Event
		Sub Action()
		  if me.Value Then
		    MLC.LeafDirection=1
		  end
		  Save_MLC=True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_MLC_SimpleParser
	#tag Event
		Sub Action()
		  If Me.Value Then
		    MLC.Parser=1
		  end
		  Save_MLC=True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_MLC_SourceDistance
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    mlc.Source_to_Device_Distance=val(me.Text)
		    Save_MLC=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_MLC_All
	#tag Event
		Sub Change()
		  Dim i as Integer
		  
		  i=me.SelectedRowIndex
		  if DoNothing=False Then
		    if i>-1 and i<=UBound(gLinacs.All_MLCs) Then
		      MLC=gLinacs.All_MLCs(i)
		      MLC_Update_MLC
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_Linac_MLC_Add
	#tag Event
		Sub Action()
		  Dim i as Integer
		  Dim mm as Class_Linacs_MLC
		  
		  mm=new Class_Linacs_MLC
		  gLinacs.All_MLCs.Append mm
		  mm.MLC_Name="New MLC"
		  Save_MLC=True
		  MLC_Open
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_Linac_MLC_Del
	#tag Event
		Sub Action()
		  Dim i as Integer
		  
		  i=PopupMenu_MLC_All.SelectedRowIndex
		  
		  if i>=0 and i<=UBound(gLinacs.All_MLCs) Then
		    gLinacs.All_MLCs.Remove (i)
		  end
		  Save_MLC=True
		  MLC_Open
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Linac_MLC
	#tag Event
		Sub Change()
		  Dim i as Integer
		  
		  i=me.SelectedRowIndex-1
		  if DoNothing=False Then
		    if i>-1 and i<=UBound(gLinacs.All_MLCs) Then
		      Linac.MLC.MLC_Name=gLinacs.All_MLCs(i).MLC_Name
		      Linac.MLC.NumberofLeafPairs=gLinacs.All_MLCs(i).NumberofLeafPairs
		      Linac.MLC.MLC_Use=1
		      Linac.MLC.Type=gLinacs.All_MLCs(i).Type
		      
		    else
		      Linac.MLC.MLC_Use=0
		    end
		    save_linac=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Linac_Mode
	#tag Event
		Sub Change()
		  if DoNothing=False Then
		    Linac_Mode_Change=True
		    Linac.Mode=me.Text
		    save_linac=True
		    Linac_Open
		    Linac_Mode_Change=False
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Linac_Name
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    
		    Name_Change=True
		    save_linac=True
		    Linac.RT_name=me.Text
		    Linac_Open_Name
		    
		    Name_Change=False
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Linac_Energy
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    Linac_Energy_Change=True
		    save_linac=True
		    Linac.Energy=me.Text
		    Linac_Open_Energy
		    
		    Linac_Energy_Change=False
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_BEAM_Sie
	#tag Event
		Sub Action()
		  if DoNothing=False Then
		    save_linac=True
		    Linac.Type=2
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_BEAM_Var
	#tag Event
		Sub Action()
		  if DoNothing=False Then
		    save_linac=True
		    Linac.Type=1
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_BEAM_Tomo
	#tag Event
		Sub Action()
		  if DoNothing=False Then
		    save_linac=True
		    Linac.Type=4
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_BEAM_Other
	#tag Event
		Sub Action()
		  if DoNothing=False Then
		    save_linac=True
		    Linac.Type=3
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_BEAM_Elekta
	#tag Event
		Sub Action()
		  if DoNothing=False Then
		    save_linac=True
		    Linac.Type=5
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_BEAM_Cyberknife
	#tag Event
		Sub Action()
		  if DoNothing=False Then
		    save_linac=True
		    Linac.Type=6
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Linac_Wedge_STT
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Dim fi as FolderItem
		  dim opfi as new OpenDialog
		  
		  
		  
		  if DoNothing=False Then
		    save_linac=True
		    opfi.InitialDirectory=gPref.Settings_fi
		    opfi.SuggestedFileName=Linac.STT_Table
		    opfi.Title="Select a STT File"
		    fi=opfi.ShowModal
		    
		    if fi<>nil then //fi.Exists then
		      Linac.STT_Table=fi.Name
		      if fi.Parent<>gPref.Settings_fi Then
		        fi.CopyFileTo(gPref.Settings_fi)
		        
		      end
		      
		      
		      
		    end if
		    
		    me.value = Linac.STT_Table
		    
		  end
		  
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Linac_Del
	#tag Event
		Sub Action()
		  Dim i as Integer
		  
		  
		  for i = 0 to UBound(gLinacs.All_Linacs)
		    if gLinacs.All_Linacs(i).Mode=Linac_Mode_Top and gLinacs.All_Linacs(i).RT_name=Linac_Name_Top  and gLinacs.All_Linacs(i).Energy=Linac_energy_Top Then
		      gLinacs.All_Linacs.Remove i
		      exit
		    end
		  next
		  
		  save_linac=True
		  Linac_Open
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Linac_Add
	#tag Event
		Sub Action()
		  Dim dd as Class_Linacs_One
		  
		  
		  dd=new Class_Linacs_One
		  dd.Mode=PopupMenu_Linac_Mode_Top.Text
		  dd.RT_name= "New Linac"
		  dd.MLC= new Class_Linacs_MLC
		  
		  
		  gLinacs.All_Linacs.append dd
		  gLinacs.Initialize(UBound(gLinacs.All_Linacs))
		  
		  
		  Linac_Open
		  
		  save_linac=True
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Linac_Energy
	#tag Event
		Sub Change()
		  Dim i as Integer
		  
		  
		  if DoNothing=False Then
		    Linac_energy_Top=me.Text
		    
		    
		    if Linac_Energy_Change=False and Name_Change=False Then
		      for i = 0 to UBound(gLinacs.All_Linacs)
		        if gLinacs.All_Linacs(i).Mode=Linac_Mode_Top and gLinacs.All_Linacs(i).RT_name=Linac_Name_Top and  gLinacs.All_Linacs(i).Energy=Linac_energy_Top Then
		          Linac=gLinacs.All_Linacs(i)
		          Linac_Pop
		          Exit
		        end
		      next
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Linac_Name
	#tag Event
		Sub Change()
		  if DoNothing=False Then
		    if Name_Change=False Then
		      Linac_Name_Top=me.Text
		      Linac_Open_Energy
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Linac_Mode_Top
	#tag Event
		Sub Change()
		  if DoNothing=False Then
		    Linac_Mode_Top=me.Text
		    Linac_Open_Name
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton1
	#tag Event
		Sub Action()
		  Window_Configurations_Beam_Model.Close
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
		Name="Linac_Energy_Change"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Linac_energy_Top"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Linac_Mode_Change"
		Visible=false
		Group="Behavior"
		InitialValue="false"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Linac_Mode_Top"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Linac_Name_Top"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Linac_Wedge_Edit"
		Visible=false
		Group="Behavior"
		InitialValue="false"
		Type="Boolean"
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
		Name="MLC_Edit"
		Visible=false
		Group="Behavior"
		InitialValue="false"
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
		Name="Name_Change"
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
		Name="save_linac"
		Visible=false
		Group="Behavior"
		InitialValue="false"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Save_MLC"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Save_Model"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="boolean"
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
