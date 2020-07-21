#tag Window
Begin Window Window_Commisssioning
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   853
   ImplicitInstance=   True
   LiveResize      =   "True"
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
   Title           =   "Commissioning Data"
   Visible         =   True
   Width           =   1288
   Begin TabPanel TabPanel1
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   379
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
      SmallTabs       =   False
      TabDefinition   =   "Profiles/PDDs\rOutput"
      TabIndex        =   32
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Value           =   0
      Visible         =   True
      Width           =   1248
      Begin ListBox ListBox_Dose_Profiles
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   4
         ColumnsResizable=   True
         ColumnWidths    =   ""
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         DropIndicatorVisible=   False
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   3
         GridLinesVertical=   3
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   301
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   "Profile"
         Italic          =   False
         Left            =   27
         LockBottom      =   False
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
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   14.0
         TextUnit        =   0
         Top             =   82
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   1231
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin ListBox ListBox_Dose_OutPut
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
         DropIndicatorVisible=   False
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   3
         GridLinesVertical=   3
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   329
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   "Output Table"
         Italic          =   False
         Left            =   27
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
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   14.0
         TextUnit        =   0
         Top             =   54
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   1232
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin BevelButton BevelButton_DoseProfile_delete
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Delete Profile"
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
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   167
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuValue       =   "0"
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   48
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   128
      End
      Begin BevelButton BevelButton_Properties
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Properties"
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
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   27
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuValue       =   "0"
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   48
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   128
      End
      Begin BevelButton BevelButton_OutPut_delete
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "delete"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   14
         HelpTag         =   ""
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   27
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuValue       =   "0"
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   36
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin BevelButton BevelButton_Analyse
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Analyse Data"
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
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   307
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         MenuValue       =   "0"
         Scope           =   0
         TabIndex        =   10
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   48
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   128
      End
   End
   Begin GroupBox GroupBox1
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Graph"
      Enabled         =   True
      Height          =   438
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   9
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   35
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   405
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   1270
      Begin Canvas_Plot Canvas_Graph
         AcceptFocus     =   True
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Axis_Grid       =   True
         Axis_Visible    =   False
         Backdrop        =   0
         BG              =   &c00000000
         Box             =   False
         Center_Scale    =   False
         Display         =   0
         DoubleBuffer    =   False
         drawXsub        =   False
         drawYsub        =   False
         Enabled         =   True
         EraseBackground =   "True"
         Errors          =   False
         Graph_Title     =   ""
         Height          =   405
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Interactive     =   False
         Interactive_index=   0
         Interactive_String=   ""
         Left            =   29
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         NewScale        =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   428
         Transparent     =   True
         UseFocusRing    =   False
         Visible         =   True
         Width           =   927
         X1_Old          =   0.0
         X2_New          =   0.0
         xLabelPower     =   0
         xLabelPowerAuto =   False
         xRange          =   0.0
         xScaleMax       =   0.0
         xScaleMin       =   0.0
         xyz_index       =   0
         x_bottom        =   0
         X_Label         =   ""
         x_Maximum       =   0.0
         x_Minimum       =   0.0
         x_mouse         =   0
         x_mouse_value   =   0.0
         x_mouse_value_str=   ""
         x_Pow           =   0
         x_top           =   0
         Y1_Old          =   0.0
         Y2_New          =   0.0
         yLabelPower     =   0
         yLabelPowerAuto =   False
         yRange          =   0.0
         yScaleMax       =   0.0
         yScaleMin       =   0.0
         y_bottom        =   0
         Y_Label         =   ""
         y_Maximum       =   0.0
         y_Minimum       =   0.0
         y_mouse         =   0
         y_mouse_value   =   0.0
         y_mouse_value_str=   "0"
         y_Pow           =   0
         y_top           =   0
      End
      Begin PushButton PushButton_Export
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   0
         Cancel          =   False
         Caption         =   "Export Profile .txt"
         Default         =   False
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   1096
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   11
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   808
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   172
      End
      Begin GroupBox GroupBox2
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Graph Properties"
         Enabled         =   True
         Height          =   271
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   975
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   12
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   428
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   293
         Begin PopupMenu PopupMenu_XAxis
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
            Left            =   1125
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   451
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   133
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
            Left            =   1134
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "Y Max"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   512
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   42
         End
         Begin TextField EditField_ymax
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
            Left            =   1196
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
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
            Top             =   511
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   61
         End
         Begin TextField EditField_ymin
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
            Left            =   1045
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
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
            Top             =   512
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   64
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
            Left            =   996
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   4
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "Y Min"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   513
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   42
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
            Left            =   1134
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   5
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "X Max"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   482
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   42
         End
         Begin TextField EditField_xmax
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
            Left            =   1197
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
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
            Top             =   481
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   61
         End
         Begin TextField EditField_xmin
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
            Left            =   1044
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   7
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   481
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   64
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
            Left            =   995
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   8
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "X Min"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   482
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   42
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
            Left            =   992
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   9
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "Graph X Axis"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   451
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   77
         End
         Begin CheckBox CheckBox_Errors
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Plot MC Uncertainties"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   992
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   10
            TabPanelIndex   =   0
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   560
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   146
         End
         Begin TextField EditField_Y
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
            Left            =   1150
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
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
            Top             =   651
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   99
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
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   996
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   12
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "Y (Dose) ="
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   651
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   144
         End
         Begin TextField EditField_X
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
            Left            =   1150
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
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
            Top             =   617
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   99
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
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   1000
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   14
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "X (Position (cm)) ="
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   617
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   144
         End
      End
      Begin PushButton PushButton_Export_mcc
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   0
         Cancel          =   False
         Caption         =   "Export Profile .mcc"
         Default         =   False
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   1096
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   13
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   771
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   172
      End
      Begin PushButton PushButton_Export_pyplot
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   0
         Cancel          =   False
         Caption         =   "Export Profile .pyplot"
         Default         =   False
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   1096
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   14
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   734
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   172
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  
		  gProfiles.Write_Profiles(gPref.Commission_fi)
		  gOutput.Write_Table
		  app.which_window_Commission=False
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  app.which_window_Commission=True
		  
		  if app.which_window_Open Then
		    Window_OpenPatient.Close
		  end
		  
		  PopupMenu_XAxis.DeleteAllRows
		  PopupMenu_XAxis.AddRow "X Profile"
		  PopupMenu_XAxis.AddRow "Y Profile"
		  PopupMenu_XAxis.AddRow "Z Profile"
		  PopupMenu_XAxis.AddRow "Distance Profile"
		  
		  Dic_Algorithm=new Dictionary
		  Dic_SSD=new Dictionary
		  Dic_Depth=new Dictionary
		  Dic_TYPE=new Dictionary
		  Dic_Unit=new Dictionary
		  Dic_Energy=new Dictionary
		  Dic_FS=new Dictionary
		  Dic_Add_on=new Dictionary
		  
		  
		  Open_Listbox
		  Update_Profile
		  Open_Canvas
		  Update_Profiles_Output
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  Canvas_Graph.Resize_Canvas
		  Canvas_Graph.Refresh
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function Get_Dictionary_For_menu() As Dictionary
		  Dim dd as new Dictionary
		  
		  
		  if Results_Mouse_Column=0 Then
		    
		  elseif Results_Mouse_Column=Index_Algor Then
		    dd=Dic_Algorithm
		  elseif  Results_Mouse_Column=Index_Depth Then
		    dd=Dic_Depth
		  elseif  Results_Mouse_Column=Index_SSD Then
		    dd=Dic_SSD
		  elseif  Results_Mouse_Column=Index_Unit Then
		    dd=Dic_Unit
		  elseif  Results_Mouse_Column=Index_Type Then
		    dd=Dic_TYPE
		  elseif  Results_Mouse_Column=Index_FieldSize Then
		    dd=Dic_FS
		  elseif  Results_Mouse_Column=Index_Addon Then
		    dd=Dic_Add_on
		  elseif  Results_Mouse_Column=Index_Energy Then
		    dd=Dic_Energy
		  end
		  
		  
		  
		  
		  Return dd
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_String_Depth(pp as Class_Profile_One) As String
		  Return Format(pp.Depth,"-00.0")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_String_SSD(pp as Class_Profile_One) As String
		  Return Format(pp.SSD,"000.##")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_String_Type(pp as Class_Profile_One) As String
		  Return Format(pp.TYPE,"0")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Hex32(value As Int32) As String
		  Const prefix = "000000" // A 32-bits value is 6 digits long at max
		  
		  Return Right(prefix + Hex(value), 6)  // We always return 6 characters
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Open_Canvas()
		  //-----------------------------------------
		  //General Open
		  //-----------------------------------------
		  Dim i,j as integer
		  Dim y1 as Single
		  Dim Pp as Class_Profile_One
		  //-----------------------------------------
		  
		  Canvas_Graph.Profiles=new Class_Profiles_All
		  for i=0 to ListBox_Dose_profiles.ListCount-1
		    if ListBox_Dose_profiles.CellCheck(i,0) Then
		      j=val(ListBox_Dose_profiles.Cell(i,Index_gProfile_Index))
		      pp=new Class_Profile_One
		      pp=gProfiles.One_Profile(j)
		      pp.Show=True
		      Canvas_Graph.Profiles.One_Profile.Append pp
		    end
		  next
		  
		  Canvas_Graph.Interactive=True
		  j=0
		  for i=0 to UBound(Canvas_Graph.Profiles.One_Profile)
		    if Canvas_Graph.Profiles.One_Profile(i).Show Then
		      j=j+1
		      Canvas_Graph.Interactive_index=i
		    end
		  next
		  if j>1 Then
		    Canvas_Graph.Interactive=False
		  end
		  
		  Canvas_Graph.y_Minimum=30000000
		  Canvas_Graph.y_Maximum=-3000000
		  
		  for j=0 to UBound(Canvas_Graph.Profiles.One_Profile) // first  plot lines
		    for i=0 to UBound(Canvas_Graph.Profiles.One_Profile(j).Points)
		      y1=Canvas_Graph.Profiles.One_Profile(j).Points(i).value
		      
		      if Canvas_Graph.Profiles.One_Profile(j).Norm Then
		        y1=100*y1/Canvas_Graph.Profiles.One_Profile(j).Normalize_value
		      end
		      
		      if y1<Canvas_Graph.y_Minimum Then
		        Canvas_Graph.y_Minimum=y1
		      Elseif y1>Canvas_Graph.y_Maximum Then
		        Canvas_Graph.y_Maximum= y1
		      end
		    next
		    Canvas_Graph.Profiles.One_Profile(j).Point_Size=3
		    Canvas_Graph.Profiles.One_Profile(j).show=True
		  next
		  
		  
		  //Properties to set depending on your preferences....
		  Canvas_Graph.Box=True  // True if you want a box around the plot.
		  Canvas_Graph.Axis_Visible=true   // True if you want the axis visible.
		  Canvas_Graph.Center_Scale=false  // True if you want the scales written down the axis, not on the edges.
		  Canvas_Graph.Graph_Title="Dose Profile"
		  if UBound(Canvas_Graph.Profiles.One_Profile)>-1 Then
		    Canvas_Graph.Y_Label=Canvas_Graph.Profiles.One_Profile(0).Value_Label
		  end
		  Canvas_Graph.drawXsub = true
		  Canvas_Graph.drawYsub = true
		  
		  // Set following to set axes ranges manually.  Ignored if xAuto or yAuto set true
		  Canvas_Graph.xLabelPowerAuto = false
		  Canvas_Graph.xLabelPower = 0
		  Canvas_Graph.yLabelPowerAuto = false
		  Canvas_Graph.yLabelPower = 0
		  Canvas_Graph.ReSize_Canvas  // Needed to initialize the canvas size.  If you want your window to
		  //resize your plot, you need to put a call to Resize_Canvas in your resize event in the
		  //window with the plot_Canvas.
		  Canvas_Graph.Refresh
		  
		  EditField_xmin.value = Format(Canvas_Graph.x_Minimum,"-0.0###E")
		  EditField_xmax.value = Format(Canvas_Graph.x_Maximum,"-0.0###e")
		  EditField_YMIN.value = Format(Canvas_Graph.y_Minimum,"-0.0###e")
		  EditField_ymax.value = Format(Canvas_Graph.y_Maximum,"-0.0###e")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Open_Listbox()
		  //------------------------------------------------------------------
		  // Update the list of profiles
		  //
		  //------------------------------------------------------------------
		  Dim i as Integer
		  //-------------------------------------------------------------------
		  
		  ListBox_Dose_profiles.DeleteAllRows
		  
		  i=1
		  Index_Label=i
		  i=i+1
		  Index_Type=i
		  i=i+1
		  Index_Energy=i
		  i=i+1
		  Index_Unit=i
		  i=i+1
		  Index_SSD=i
		  i=i+1
		  Index_Depth=i
		  i=i+1
		  Index_FieldSize=i
		  i=i+1
		  Index_Algor=i
		  i=i+1
		  Index_Addon=i
		  i=i+1
		  Index_Pointa=i
		  i=i+1
		  Index_Pointb=i
		  i=i+1
		  Index_Maxvalue=i
		  i=i+1
		  Index_Norm_Value=i
		  i=i+1
		  Index_Norm=i
		  i=i+1
		  Index_Colour=i
		  i=i+1
		  Index_Show_Line=i
		  i=i+1
		  Index_Show_Points=i
		  i=i+1
		  Index_gProfile_Index=i
		  
		  ListBox_Dose_profiles.ColumnCount=i
		  ListBox_Dose_profiles.ColumnWidths="5%,10%,8%,8%,10%,10%,10%,10%,10%,10%,10%,10%,10%,10%,10%,10%,10%,10%,10%"
		  
		  ListBox_Dose_profiles.Heading(0)="Profile"
		  ListBox_Dose_profiles.Heading(Index_Label)="Label"
		  ListBox_Dose_profiles.Heading(Index_Type)="Profile Type"
		  ListBox_Dose_profiles.Heading(Index_Energy)="Energy"
		  ListBox_Dose_profiles.Heading(Index_SSD)="SSD (cm)"
		  ListBox_Dose_profiles.Heading(Index_FieldSize)="Field Size x,y (cm)"
		  ListBox_Dose_profiles.Heading(Index_Addon)="Add-on"
		  ListBox_Dose_profiles.Heading(Index_Algor)="Algorithm"
		  ListBox_Dose_profiles.Heading(Index_Pointa)="Point 1"
		  ListBox_Dose_profiles.Heading(Index_Pointb)="Point 2"
		  ListBox_Dose_profiles.Heading(Index_Norm_Value)="Norm Value"
		  ListBox_Dose_profiles.Heading(Index_Colour)="Colour"
		  ListBox_Dose_profiles.Heading(Index_Maxvalue)="Max Value"
		  ListBox_Dose_profiles.Heading(Index_Norm)="Normalize"
		  ListBox_Dose_profiles.Heading(Index_Norm_Value)="Norm Value"
		  ListBox_Dose_profiles.Heading(Index_Show_Points)="Show Points"
		  ListBox_Dose_profiles.Heading(Index_Show_Line)="Show Line"
		  ListBox_Dose_profiles.Heading(Index_gProfile_Index)="gProfileIndex"
		  ListBox_Dose_profiles.Heading(Index_Unit)="Machine"
		  ListBox_Dose_profiles.Heading(Index_Depth)="Depth (cm)"
		  
		  ListBox_Dose_profiles.ColumnType(Index_Norm)=2
		  ListBox_Dose_profiles.ColumnType(Index_Norm_Value)=3
		  ListBox_Dose_profiles.ColumnType(Index_Show_Line)=2
		  ListBox_Dose_profiles.ColumnType(Index_Show_Points)=2
		  ListBox_Dose_profiles.ColumnType(0)=2
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Dictionary_Keys()
		  // Buidl the Dictionary
		  Dim i as Integer
		  
		  
		  for i=0 to UBound(gProfiles.One_Profile)
		    if Dic_Algorithm.HasKey(gProfiles.One_Profile(i).Algorithm)=False Then
		      Dic_Algorithm.Value(gProfiles.One_Profile(i).Algorithm)=1
		    end
		    if Dic_SSD.HasKey(Get_String_SSD(gProfiles.One_Profile(i)))=False Then
		      Dic_SSD.Value(Get_String_SSD(gProfiles.One_Profile(i)))=1
		    end
		    if Dic_Depth.HasKey(Get_String_Depth(gProfiles.One_Profile(i)))=False Then
		      Dic_Depth.Value(Get_String_Depth(gProfiles.One_Profile(i)))=1
		    end
		    if Dic_TYPE.HasKey(Get_String_Type(gProfiles.One_Profile(i)))=False Then
		      Dic_TYPE.Value(Get_String_Type(gProfiles.One_Profile(i)))=1
		    end
		    if Dic_Unit.HasKey(gProfiles.One_Profile(i).Linac)=False Then
		      Dic_Unit.Value(gProfiles.One_Profile(i).Linac)=1
		    end
		    if Dic_Energy.HasKey(gProfiles.Get_String_Energy(gProfiles.One_Profile(i)))=False Then
		      Dic_Energy.Value(gProfiles.Get_String_Energy(gProfiles.One_Profile(i)))=1
		    end
		    if Dic_Add_on.HasKey(gProfiles.One_Profile(i).AddOn)=False Then
		      Dic_Add_on.Value(gProfiles.One_Profile(i).AddOn)=1
		    end
		    if Dic_FS.HasKey(gProfiles.Get_String_FS(gProfiles.One_Profile(i)))=False Then
		      Dic_FS.Value(gProfiles.Get_String_FS(gProfiles.One_Profile(i)))=1
		    end
		  Next
		  i=i
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Profile()
		  Update_Dictionary_Keys
		  Update_Profile_ShowSet
		  Update_Profiles_Listbox
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Profiles_Listbox()
		  //------------------------------------------------------------------
		  // Update the list of profiles
		  //
		  //------------------------------------------------------------------
		  Dim i,listrow as Integer
		  Dim ss as String
		  Dim pp as Class_Profile_One
		  //-------------------------------------------------------------------
		  
		  ListBox_Dose_profiles.DeleteAllRows
		  listrow=0
		  for i=0 to UBound(gProfiles.One_Profile)
		    pp=gProfiles.One_Profile(i)
		    if pp.Show_Commissioning Then
		      ListBox_Dose_profiles.AddRow Str(listrow+1)
		      ListBox_Dose_profiles.Cell(listrow,Index_Label)=gProfiles.One_Profile(i).Label
		      ListBox_Dose_profiles.Cell(listrow,Index_Energy)=gProfiles.Get_String_Energy(gProfiles.One_Profile(i))
		      ListBox_Dose_profiles.Cell(listrow,Index_FieldSize)=gProfiles.Get_String_FS(gProfiles.One_Profile(i))
		      ListBox_Dose_profiles.Cell(listrow,Index_SSD)=Get_String_SSD(gProfiles.One_Profile(i))
		      ListBox_Dose_profiles.Cell(listrow,Index_Algor)=gProfiles.One_Profile(i).Algorithm
		      ListBox_Dose_profiles.Cell(listrow,Index_Unit)=gProfiles.One_Profile(i).Linac
		      ListBox_Dose_profiles.Cell(listrow,Index_Depth)=Get_String_Depth(gProfiles.One_Profile(i))
		      ListBox_Dose_profiles.Cell(listrow,Index_Addon)=gProfiles.One_Profile(i).AddOn
		      
		      // 0 = User
		      // 1 = PDD
		      // 2 = PROFILE X
		      // 3 = Porfile Y
		      if gProfiles.One_Profile(i).TYPE=0 Then
		        ss="User (x,y,z)"
		      elseif  gProfiles.One_Profile(i).TYPE=1 Then
		        ss="z axis"
		      elseif  gProfiles.One_Profile(i).TYPE=2 Then
		        ss="x axis"
		      elseif gProfiles.One_Profile(i).TYPE=3 Then
		        ss="y axis"
		      end
		      
		      if gProfiles.One_Profile(i).MaxPoint=Nil Then
		        gProfiles.One_Profile(i).Update_Profile
		      end
		      
		      ListBox_Dose_profiles.Cell(listrow,Index_Type)=ss
		      ListBox_Dose_profiles.Cell(listrow,Index_Pointa)=Format(gProfiles.One_Profile(i).Pointa.x_cm,"-#.##")+", "+Format(gProfiles.One_Profile(i).Pointa.y_cm,"-#.##")+", "+Format(gProfiles.One_Profile(i).Pointa.z_cm,"-#.##")
		      ListBox_Dose_profiles.Cell(listrow,Index_Pointb)= Format(gProfiles.One_Profile(i).Pointb.x_cm,"-#.##")+", "+Format(gProfiles.One_Profile(i).Pointb.y_cm,"-#.##")+", "+Format(gProfiles.One_Profile(i).Pointb.z_cm,"-#.##")
		      ListBox_Dose_profiles.Cell(listrow,Index_Maxvalue)=Format(gProfiles.One_Profile(i).MaxPoint.value, "-#.#####e")
		      ListBox_Dose_profiles.Cell(listrow,Index_Norm_Value)=Format(gProfiles.One_Profile(i).Normalize_value, "-#.#####e")
		      if gProfiles.One_Profile(i).Norm Then
		        ListBox_Dose_profiles.CellCheck(listrow,Index_Norm)=True
		      end
		      ListBox_Dose_profiles.CellCheck(listrow,Index_Show_Points)=gProfiles.One_Profile(i).Show_Marker
		      ListBox_Dose_profiles.CellCheck(listrow,Index_Show_Line)=gProfiles.One_Profile(i).show_line
		      ListBox_Dose_profiles.Cell(listrow,Index_gProfile_Index)= Format(i,"#")
		      listrow=listrow+1
		    end
		  Next
		  ListBox_Dose_profiles.ListIndex=0
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Profiles_Output()
		  //-------------------------------------
		  //
		  //
		  //-------------------------------------
		  Dim i,k, e_index, type(-1),tt as Integer
		  Dim ener as Single
		  Dim found as Boolean
		  Dim energy,vv as String
		  //-------------------------------------
		  
		  ListBox_Dose_OutPut.DeleteAllRows
		  ListBox_Dose_OutPut.ColumnCount=11
		  ListBox_Dose_OutPut.Heading(0)="Linac"
		  ListBox_Dose_OutPut.Heading(1)="Energy"
		  ListBox_Dose_OutPut.Heading(2)="Algorithm"
		  ListBox_Dose_OutPut.Heading(3)="Mode"
		  ListBox_Dose_OutPut.Heading(4)="Detector Depth"
		  ListBox_Dose_OutPut.Heading(5)="SSD"
		  ListBox_Dose_OutPut.Heading(6)="Label"
		  ListBox_Dose_OutPut.Heading(7)="Add-On"
		  ListBox_Dose_OutPut.Heading(8)="Date"
		  ListBox_Dose_OutPut.Heading(9)="Normalization"
		  ListBox_Dose_OutPut.Heading(10)="Calculation Shell"
		  
		  ListBox_Dose_OutPut.ColumnType(0)=3
		  ListBox_Dose_OutPut.ColumnType(1)=3
		  ListBox_Dose_OutPut.ColumnType(2)=3
		  ListBox_Dose_OutPut.ColumnType(3)=3
		  ListBox_Dose_OutPut.ColumnType(4)=3
		  ListBox_Dose_OutPut.ColumnType(5)=3
		  ListBox_Dose_OutPut.ColumnType(6)=3
		  ListBox_Dose_OutPut.ColumnType(7)=3
		  ListBox_Dose_OutPut.ColumnType(8)=3
		  ListBox_Dose_OutPut.ColumnType(9)=3
		  ListBox_Dose_OutPut.ColumnType(10)=3
		  
		  for i=0 to UBound(gOutput.One)
		    ListBox_Dose_OutPut.AddRow gOutput.One(i).Machine
		    ListBox_Dose_OutPut.Cell(i,1)= gOutput.One(i).energy
		    ListBox_Dose_OutPut.Cell(i,2)= gOutput.One(i).Algorithm
		    ListBox_Dose_OutPut.Cell(i,3)= gOutput.One(i).Mode
		    ListBox_Dose_OutPut.Cell(i,4)= Format(gOutput.One(i).Detectordepthsurface,"-#.#####")
		    ListBox_Dose_OutPut.Cell(i,5)= Format(gOutput.One(i).SSD,"-#.###")
		    ListBox_Dose_OutPut.Cell(i,6)= gOutput.One(i).Data_Label
		    ListBox_Dose_OutPut.Cell(i,7)= gOutput.One(i).Add_On
		    ListBox_Dose_OutPut.Cell(i,8)= gOutput.One(i).Date
		    ListBox_Dose_OutPut.Cell(i,9)= Format(gOutput.One(i).Normalization,"-#.#####e")
		    ListBox_Dose_OutPut.Cell(i,10)= gOutput.One(i).Calculation_Machine
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Profile_ShowSet()
		  //------------------------------------------------------------------
		  // Update the list of profiles
		  //
		  //------------------------------------------------------------------
		  Dim i as Integer
		  Dim ss as String
		  Dim pp as Class_Profile_One
		  //-------------------------------------------------------------------
		  
		  
		  for i=0 to UBound(gProfiles.One_Profile)
		    pp=gProfiles.One_Profile(i)
		    pp.Show_Commissioning=False
		    if Dic_Algorithm.Value(pp.Algorithm)=1 Then
		      if Dic_SSD.Value(Get_String_SSD(pp))=1 Then
		        if Dic_Depth.Value(Get_String_Depth(pp))=1 Then
		          if Dic_TYPE.Value(Get_String_Type(pp))=1 Then
		            if Dic_Unit.Value(pp.Linac)=1 Then
		              if Dic_Energy.Value(gProfiles.Get_String_Energy(pp))=1 Then
		                if Dic_FS.Value(gProfiles.Get_String_FS(pp))=1 Then
		                  pp.Show_Commissioning=True
		                end
		              end
		            end
		          end
		        end
		      end
		    end
		  Next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Dic_Add_on As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		Dic_Algorithm As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		Dic_Depth As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		Dic_Energy As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		Dic_FS As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		Dic_SSD As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		Dic_TYPE As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		Dic_Unit As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		Index_Addon As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		Index_Algor As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Index_Colour As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Index_Depth As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Index_Energy As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Index_FieldSize As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Index_gProfile_Index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Index_Label As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		Index_Maxvalue As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Index_Norm As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Index_Norm_Value As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Index_Pointa As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Index_Pointb As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Index_Show_Line As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Index_Show_Points As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Index_SSD As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Index_Type As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Index_Unit As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		Linac(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NewScale As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Profile_Dic As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		Results_Mouse_Column As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		SSD(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Tables(-1) As Window_OutPut
	#tag EndProperty

	#tag Property, Flags = &h0
		WType(-1) As String
	#tag EndProperty


#tag EndWindowCode

#tag Events ListBox_Dose_Profiles
	#tag Event
		Function HeaderPressed(column as Integer) As Boolean
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  //-------------------------
		  //
		  //
		  //-------------------------
		  Dim pindex as Integer
		  
		  If row Mod 2=0 then
		    g.foreColor= RGB(170,195,245)
		    g.FillRect 0,0,g.width,g.height
		  else
		    'g.foreColor= RGB(172,255,145)
		  end if
		  
		  if me.ColumnCount>=10 and column=Index_Colour and row>=0 and row<=(me.ListCount-1)Then
		    pindex=val(me.Cell(row,Index_gProfile_Index))
		    if pindex>=0 and pindex<=UBound(gProfiles.One_Profile) Then
		      g.ForeColor=gProfiles.One_Profile(pindex).Colour
		      g.FillRect 0,0,g.Width,g.Height
		    end
		  end
		End Function
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  //-------------------------
		  //
		  //
		  // Update 
		  // 2014 July AA
		  // Update the column number for Show points and lines
		  //-------------------------
		  Dim gg,x,y,z as Single
		  Dim ff as String
		  Dim pindex as Integer
		  Dim tts as Boolean
		  //-------------------------
		  
		  pindex=val(me.Cell(row,Index_gProfile_Index))
		  if column=Index_Norm Then // Normalize Profile
		    gProfiles.One_Profile(pindex).Norm=me.CellCheck(row,column)
		    
		  elseif column=Index_Norm_Value Then // Normalize Value
		    if me.Cell(row,column)="max" Then
		      // Use max value
		      gProfiles.One_Profile(pindex).Normalize_value=val(me.Cell(row,Index_Maxvalue))
		      
		    elseif InStr(me.Cell(row,column),"=")>0 Then 
		      // Interpolate new value
		      ff=me.Cell(row,column)
		      gg=val(NthField(ff,"=",2))
		      
		      if InStr(me.Cell(row,column),"z=")>0 Then //Normalize at z=?
		        z=gg
		        x=gProfiles.One_Profile(pindex).Pointa.x_cm
		        y=gProfiles.One_Profile(pindex).Pointa.y_cm
		      elseif InStr(me.Cell(row,column),"x=")>0 Then //Normalize at x=?
		        x=gg
		        z=gProfiles.One_Profile(pindex).Pointa.z_cm
		        y=gProfiles.One_Profile(pindex).Pointa.y_cm
		      elseif InStr(me.Cell(row,column),"y=")>0 Then //Normalize at y=?
		        y=gg
		        x=gProfiles.One_Profile(pindex).Pointa.x_cm
		        z=gProfiles.One_Profile(pindex).Pointa.z_cm
		      end
		      gProfiles.One_Profile(pindex).Normalize_value=gProfiles.One_Profile(pindex).Get_Value_at_Point(x,y,z,true)
		      
		    elseif val(me.Cell(row,column))<>0 Then
		      // Use user defined value
		      gProfiles.One_Profile(pindex).Normalize_value=val(me.Cell(row,column))
		    end
		    me.Cell(row,column)=Format(gProfiles.One_Profile(pindex).Normalize_value,"-#.###e")
		    
		  elseif column=Index_Show_Points Then // Show Marker Profile
		    tts=me.CellCheck(row,column)
		    gProfiles.One_Profile(pindex).Show_Marker=me.CellCheck(row,column)
		    
		  elseif column=Index_Show_Line Then // Show Line
		    gProfiles.One_Profile(pindex).show_line=me.CellCheck(row,column)
		  end
		  
		  
		  
		  Open_Canvas
		End Sub
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  //-------------------------
		  //
		  //
		  //-------------------------
		  Dim c  as Color
		  Dim b as Boolean
		  Dim i ,pindex as Integer
		  //-------------------------
		  
		  Results_Mouse_Column=column
		  
		  pindex=val(me.Cell(row,Index_gProfile_Index))
		  
		  if column=Index_Colour and row>=0 and pindex<=UBound(gProfiles.One_Profile) Then
		    c= gProfiles.One_Profile(pindex).Colour//choose the default color shown in color picker
		    b=SelectColor(c,"Select a Color")
		    gProfiles.One_Profile(pindex).Colour=c
		    Open_Canvas
		    
		  elseif column=1 Then
		    Canvas_Graph.Redraw
		    
		  end
		  
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  //----------------------------------------------------
		  // Create the context menu for users
		  //----------------------------------------------------
		  Dim i as Integer
		  Dim dd as new Dictionary
		  Dim ss,test(-1) as String
		  Dim kk as MenuItem
		  
		  
		  dd=Get_Dictionary_For_menu
		  if dd<> Nil Then
		    kk=new MenuItem
		    kk.value = "Select all"
		    base.Append(kk)
		    
		    kk=new MenuItem
		    kk.value = "Deselect all"
		    base.Append(kk)
		    
		    for i=0 to dd.Count-1
		      ss=dd.Key(i)
		      test.Append ss
		    Next
		    
		    
		    test.Sort
		    for i=0 to UBound(test)
		      kk=new MenuItem
		      if dd.HasKey(test(i)) Then
		        if dd.Value(test(i))=1 Then
		          kk.Checked=True
		        else
		          kk.Checked=False
		        end
		      end
		      kk.value = test(i)
		      base.Append(kk)
		    Next
		  end
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  //------------------------------
		  //
		  //
		  //------------------------------
		  Dim dd as new Dictionary
		  Dim vv as Variant
		  Dim test,tt2 as String
		  Dim i as Integer
		  //------------------------------
		  
		  
		  if hitItem <> nil then 
		    test=hitItem.Text
		    vv=test
		    dd=Get_Dictionary_For_menu
		    
		    if Results_Mouse_Column= 0 Then
		      if test="Select all" Then
		        for i = 0 to ListBox_Dose_Profiles.ListCount-1
		          ListBox_Dose_profiles.CellCheck(i,0)=True 
		        Next
		      elseif test="Deselect all" Then
		        for i = 0 to ListBox_Dose_Profiles.ListCount-1
		          ListBox_Dose_profiles.CellCheck(i,0) =False
		        Next
		      end
		    else// Loop to change view status of profile type
		      
		      
		      if test="Select all" Then
		        for i = 0 to dd.Count-1
		          vv=dd.Key(i).StringValue
		          dd.Value(vv)=1
		        Next
		      elseif test="Deselect all" Then
		        for i = 0 to dd.Count -1
		          vv=dd.Key(i).StringValue
		          dd.Value(vv)=0
		        Next
		        
		      else
		        
		        if dd<>nil Then
		          if dd.HasKey(hitItem.Text) Then
		            if dd.Value(hitItem.Text)=1 Then
		              dd.Value(hitItem.Text)=0
		            else
		              dd.Value(hitItem.Text)=1
		            end
		            
		          else
		            for i=0 to dd.Count-1
		              tt2=dd.Key(i)
		              if tt2=vv Then
		                if dd.Value(dd.Key(i))=1 Then
		                  dd.Value(dd.Key(i))=0
		                else
		                  dd.Value(dd.Key(i))=1
		                end
		              end
		            Next
		          end
		          
		        end
		        
		        
		        
		        if dd.HasKey(vv) Then
		          vv=vv
		        end
		        
		        
		      end
		      
		      Update_Profile_ShowSet
		      Update_Profiles_Listbox
		    end
		  end
		  
		  
		  
		  return true
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events ListBox_Dose_OutPut
	#tag Event
		Function HeaderPressed(column as Integer) As Boolean
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  If row Mod 2=0 then
		    g.foreColor= RGB(170,195,245)
		    g.FillRect 0,0,g.width,g.height
		  else
		    'g.foreColor= RGB(172,255,145)
		  end if
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  Dim i as Integer
		  Dim ww as Window_OutPut
		  
		  i=me.ListIndex
		  
		  if i>=0 and i<=(UBound(gOutput.One)) Then
		    ww = new Window_OutPut
		    ww.one=gOutput.One(i)
		    ww.Show
		    ww.OpenTable
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  Dim i as Integer
		  
		  
		  
		  if column=0 Then
		    gOutput.One(row).Machine=me.Cell(row,column)
		  elseif column=1 Then
		    gOutput.One(row).energy=Trim(me.Cell(row,column))
		  elseif column=2 Then
		    gOutput.One(row).Algorithm=me.Cell(row,column)
		  elseif column=3 Then
		    gOutput.One(row).Mode=me.Cell(row,column)
		  elseif column=4 Then
		    gOutput.One(row).Detectordepthsurface=val(me.Cell(row,column))
		  elseif column=5 Then
		    gOutput.One(row).SSD=val(me.Cell(row,column))
		  elseif column=6 Then
		    gOutput.One(row).Data_Label=(me.Cell(row,column))
		    
		  elseif column=7 Then
		    gOutput.One(row).Add_On=(me.Cell(row,column))
		    
		  elseif column=8 Then
		    gOutput.One(row).Date=(me.Cell(row,column))
		    
		    
		    
		  elseif column=9 Then
		    gOutput.One(row).Normalization=val(me.Cell(row,column))
		    
		  elseif column=10 Then
		    gOutput.One(row).Calculation_Machine=(me.Cell(row,column))
		    
		  end
		  
		  //Profiles_Update_Output
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  dim MI as MenuItem
		  
		  
		  MI = New MenuItem
		  MI.Text = "Add Table"
		  base.Append MI
		  
		  Return True
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Dim ff as Class_OutPut_Table
		  Dim i as Integer
		  
		  Select Case hitItem.Text
		  Case "Add Table"
		    
		    ff =new Class_OutPut_Table
		    ff.Machine="New Table"
		    
		    //num=39
		    
		    
		    ReDim ff.OutPut(39,39)
		    ReDim ff.FSX(39)
		    ReDim ff.FSY(39)
		    
		    for i=0 to UBound(ff.FSX)
		      ff.FSX(i)=i+1
		      ff.FSY(i)=i+1
		    Next
		    
		    
		    gOutput.One.Append ff
		    Update_Profiles_Output
		    
		    
		  end
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_DoseProfile_delete
	#tag Event
		Sub Action()
		  Dim k,i as Integer
		  
		  
		  for i=ListBox_Dose_Profiles.ListCount-1 DownTo 0
		    if ListBox_Dose_profiles.CellCheck(i,0) Then
		      k=val(ListBox_Dose_Profiles.Cell(i,Index_gProfile_Index) )
		      gProfiles.One_Profile.Remove k
		    end
		  next
		  
		  Update_Profile
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_Properties
	#tag Event
		Sub Action()
		  Dim p_index,i as Integer
		  
		  p_index=-1
		  for i =0 to Window_Commisssioning.ListBox_Dose_Profiles.ListCount-1
		    if Window_Commisssioning.ListBox_Dose_Profiles.CellCheck(i,0) Then
		      p_index=val(Window_Commisssioning.ListBox_Dose_Profiles.Cell(i,Index_gProfile_Index))
		      Window_Profile_Properties.Show
		      Window_Profile_Properties.One=gProfiles.One_Profile(p_index)
		      Window_Profile_Properties.Open_Pro
		      Exit
		    end
		  Next
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_OutPut_delete
	#tag Event
		Sub Action()
		  Dim k,i as Integer
		  
		  
		  k=ListBox_Dose_OutPut.ListIndex
		  
		  if k>-1 and k<=UBound(gOutput.One) Then
		    gOutput.One.Remove k
		  end
		  
		  Update_Profiles_Output
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_Analyse
	#tag Event
		Sub Action()
		  Dim i as Integer
		  Dim pp as Class_Profile_One
		  
		  Canvas_Graph.Analysis = new Window_Profile_analysis
		  
		  for i=0 to UBound(Canvas_Graph.Profiles.One_Profile)
		    pp=new Class_Profile_One
		    pp=Canvas_Graph.Profiles.One_Profile(i)
		    Canvas_Graph.Analysis.Profiles.Append pp
		    Canvas_Graph.Analysis.PopupMenu_Calculated.AddRow Canvas_Graph.Profiles.One_Profile(i).Label
		    Canvas_Graph.Analysis.PopupMenu_Measured.AddRow Canvas_Graph.Profiles.One_Profile(i).Label
		  next
		  
		  if i>-1 Then
		    Canvas_Graph.Analysis.PopupMenu_Calculated.ListIndex=0
		    Canvas_Graph.Analysis.PopupMenu_Measured.ListIndex=1
		  end
		  
		  Canvas_Graph.Analysis.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Canvas_Graph
	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  if X>=me.x_bottom and X<=me.x_top then
		    me.x_mouse=X
		    me.Sx
		  end
		  if y<=me.y_bottom and y>=me.y_top Then
		    me.y_mouse=y
		    me.SY
		  end
		  
		  //draw the position
		  me.Redraw
		  
		  
		  EditField_X.value = Format(me.x_mouse_value,"-#.####")
		  
		  if me.Interactive=False Then
		    EditField_Y.value = Format(me.y_mouse_value,"-#.####e")
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Export
	#tag Event
		Sub Action()
		  //-------------------------------------
		  // Written by Ellis M and Marc M, Andrew Alexander
		  // UPDATED: Spet 6 2008
		  //
		  //-------------------------------------
		  Dim file As FolderItem
		  Dim fileStream as TextOutputStream
		  dim j as Integer
		  dim i as integer
		  Dim wantx, wanty, wantz,wante As String
		  Dim wantvalue As String
		  //-------------------------------------
		  
		  
		  file=GetSaveFolderItem("plain/text","")
		  If file<> Nil then
		    fileStream=file.CreateTextFile
		    
		    for j=0 to UBound(Canvas_Graph.Profiles.One_Profile)
		      
		      filestream.Writeline Canvas_Graph.Profiles.One_Profile(j).Label
		      
		      fileStream.write "POINT 1: "
		      fileStream.WriteLine str(Canvas_Graph.Profiles.One_Profile(j).Pointa.x_cm) + " , " + str(Canvas_Graph.Profiles.One_Profile(j).pointa.y_cm)+" , " + str(Canvas_Graph.Profiles.One_Profile(j).pointa.z_cm)
		      fileStream.write "POINT 2: "
		      fileStream.WriteLine str(Canvas_Graph.Profiles.One_Profile(j).pointb.x_cm) + " , " + str(Canvas_Graph.Profiles.One_Profile(j).pointb.y_cm)+" , " + str(Canvas_Graph.Profiles.One_Profile(j).pointb.z_cm)
		      
		      
		      fileStream.WriteLine "X, Y, Z, DOSE, ERROR "
		      for i =0 to UBound(Canvas_Graph.Profiles.One_Profile(j).Points)
		        wantx = Format(Canvas_Graph.Profiles.One_Profile(j).Points(i).x_cm,"-#.###e")
		        wanty = Format(Canvas_Graph.Profiles.One_Profile(j).Points(i).y_cm,"-#.###e")
		        wantz = Format(Canvas_Graph.Profiles.One_Profile(j).Points(i).z_cm,"-#.###e")
		        wantvalue = Format(Canvas_Graph.Profiles.One_Profile(j).Points(i).value,"-#.###e")
		        wante = Format(Canvas_Graph.Profiles.One_Profile(j).Points(i).uncertainty,"-#.###e")
		        fileStream.WriteLine wantx+", "+wanty+", "+wantz+", "+wantvalue+", "+wante
		      next
		      fileStream.WriteLine
		      fileStream.WriteLine
		      
		    next
		    fileStream.Close
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_XAxis
	#tag Event
		Sub Change()
		  
		  
		  
		  Canvas_Graph.xyz_index=me.ListIndex
		  
		  
		  
		  Canvas_Graph.Default_Settings
		  Canvas_Graph.Redraw
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_ymax
	#tag Event
		Sub TextChange()
		  Canvas_Graph.y_Maximum=val(me.Text)
		  Canvas_Graph.Redraw
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_ymin
	#tag Event
		Sub TextChange()
		  Canvas_Graph.y_Minimum=val(me.Text)
		  Canvas_Graph.Redraw
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_xmax
	#tag Event
		Sub TextChange()
		  Canvas_Graph.x_Maximum=val(me.Text)
		  Canvas_Graph.Redraw
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_xmin
	#tag Event
		Sub TextChange()
		  Canvas_Graph.x_Minimum=val(me.Text)
		  Canvas_Graph.Redraw
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Errors
	#tag Event
		Sub Action()
		  Canvas_Graph.Errors=me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_X
	#tag Event
		Sub TextChange()
		  //------------------------------
		  //------------------------------
		  Dim x,y,z as Single
		  Dim gg as String
		  Dim pp as new Class_Points
		  //------------------------------
		  
		  
		  if Canvas_Graph.Interactive  Then
		    gg= Trim(me.Text)
		    
		    if Canvas_Graph.Interactive_index>=0 and Canvas_Graph.Interactive_index<=UBound(Canvas_Graph.Profiles.One_Profile) Then
		      
		      if PopupMenu_XAxis.ListIndex=0 Then
		        x=Val(gg)
		        y=Canvas_Graph.Profiles.One_Profile(Canvas_Graph.Interactive_index).Get_Y_at_X(x)
		        z=Canvas_Graph.Profiles.One_Profile(Canvas_Graph.Interactive_index).Get_Z_at_X(x)
		        
		      elseif PopupMenu_XAxis.ListIndex=1 Then
		        y=Val(gg)
		        x=Canvas_Graph.Profiles.One_Profile(Canvas_Graph.Interactive_index).Get_X_at_Y(y)
		        z=Canvas_Graph.Profiles.One_Profile(Canvas_Graph.Interactive_index).Get_Z_at_Y(y)
		        
		      elseif PopupMenu_XAxis.ListIndex=2 Then
		        z=Val((gg))
		        x=Canvas_Graph.Profiles.One_Profile(Canvas_Graph.Interactive_index).Get_X_at_Z(z)
		        y=Canvas_Graph.Profiles.One_Profile(Canvas_Graph.Interactive_index).Get_Y_at_Z(x)
		        
		      elseif PopupMenu_XAxis.ListIndex=3 Then
		        pp=Canvas_Graph.Profiles.One_Profile(Canvas_Graph.Interactive_index).Get_Point_at_Distance(val(gg))
		        x=pp.X_cm
		        y=pp.Y_cm
		        z=pp.Z_cm
		        
		      end
		      
		      x=Canvas_Graph.Profiles.One_Profile(Canvas_Graph.Interactive_index).Get_Value_at_Point(x,y,z,false)
		      
		      
		      if (x<0.1 and x>-0.1) or (abs(x)>1000) Then
		        EditField_Y.value = Format(x,"-#.####e")
		      else
		        EditField_Y.value = Format(x,"-#.####")
		      end
		      
		      
		    end
		  end
		  
		  Catch err As NilObjectException
		    MsgBox("Nil Object Error within Window Commissioning")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Export_mcc
	#tag Event
		Sub Action()
		  //-------------------------------------
		  // Written by Andrew Alexander
		  // UPDATED: Feb 2018
		  //
		  //
		  //-------------------------------------
		  Dim file As FolderItem
		  Dim fileStream as TextOutputStream
		  dim k,j as Integer
		  dim i as integer
		  Dim wantx, wanty, wantz,wante,ff As String
		  Dim wantvalue As String
		  Dim d As New Date
		  //-------------------------------------
		  
		  
		  file=GetSaveFolderItem("plain/text","")
		  If file<> Nil then
		    fileStream=file.CreateTextFile
		    filestream.Writeline "BEGIN_SCAN_DATA"
		    filestream.Writeline Chr(9)+"FORMAT=CC-Export V1.9"
		    filestream.Writeline Chr(9)+"FILE_CREATION_DATE="+d.SQLDateTime
		    filestream.Writeline Chr(9)+"LAST_MODIFIED="+d.SQLDateTime
		    k=0
		    for j=0 to UBound(Canvas_Graph.Profiles.One_Profile)
		      k=k+1
		      filestream.Writeline Chr(9)+"BEGIN_SCAN  "+str(k)
		      filestream.Writeline Chr(9)+Chr(9)+"LINAC="+ Canvas_Graph.Profiles.One_Profile(j).Linac
		      
		      if InStr(Canvas_Graph.Profiles.One_Profile(j).Radiation_Type,"Electron")>0 Then
		        filestream.Writeline Chr(9)+Chr(9)+"MODALITY=EL"
		      elseif InStr(Canvas_Graph.Profiles.One_Profile(j).Radiation_Type,"Photon")>0 Then
		        filestream.Writeline Chr(9)+Chr(9)+"MODALITY=X"
		      end
		      
		      filestream.Writeline Chr(9)+Chr(9)+"ENERGY="+ Format(Canvas_Graph.Profiles.One_Profile(j).Energy,"0.00")
		      filestream.Writeline Chr(9)+Chr(9)+"SSD="+ Format(10*Canvas_Graph.Profiles.One_Profile(j).SSD,"0.00")
		      filestream.Writeline Chr(9)+Chr(9)+"FIELD_INPLANE="+ Format(10*Canvas_Graph.Profiles.One_Profile(j).Field_Y,"0.00")
		      filestream.Writeline Chr(9)+Chr(9)+"FIELD_CROSSPLANE="+ Format(10*Canvas_Graph.Profiles.One_Profile(j).Field_X,"0.00")
		      filestream.Writeline Chr(9)+Chr(9)+"DETECTOR="
		      wantx=""
		      if Canvas_Graph.Profiles.One_Profile(j).TYPE=1 Then
		        // 0 = User
		        // 1 = PDD
		        // 2 = PROFILE X
		        // 3 = Porfile Y
		        wantx="PDD"
		      elseif Canvas_Graph.Profiles.One_Profile(j).TYPE=2 Then
		        wantx="CROSSPLANE_PROFILE"
		      elseif Canvas_Graph.Profiles.One_Profile(j).TYPE=3 Then
		        wantx="INPLANE_PROFILE"
		      end
		      filestream.Writeline Chr(9)+Chr(9)+"SCAN_CURVETYPE="+ wantx
		      
		      if Canvas_Graph.Profiles.One_Profile(j).TYPE=1 Then
		        // 0 = User
		        // 1 = PDD
		        // 2 = PROFILE X
		        // 3 = Porfile Y
		      elseif Canvas_Graph.Profiles.One_Profile(j).TYPE=2 or Canvas_Graph.Profiles.One_Profile(j).TYPE=3  Then
		        filestream.Writeline Chr(9)+Chr(9)+"SCAN_DEPTH="+ Format(10*Canvas_Graph.Profiles.One_Profile(j).Depth,"-0.00")
		      end
		      
		      filestream.Writeline Chr(9)+Chr(9)+"CORRECTIONS="
		      filestream.Writeline Chr(9)+Chr(9)+"BEGIN_DATA"
		      
		      for i =0 to UBound(Canvas_Graph.Profiles.One_Profile(j).Points)
		        wantx = Format(10*Canvas_Graph.Profiles.One_Profile(j).Points(i).x_cm,"-#.###e")
		        wanty = Format(10*Canvas_Graph.Profiles.One_Profile(j).Points(i).y_cm,"-#.###e")
		        wantz = Format(10*Canvas_Graph.Profiles.One_Profile(j).Points(i).z_cm,"-#.###e")
		        wantvalue = Format(Canvas_Graph.Profiles.One_Profile(j).Points(i).value,"-#.####e")
		        wante = Format(Canvas_Graph.Profiles.One_Profile(j).Points(i).uncertainty,"-#.####e")
		        if Canvas_Graph.Profiles.One_Profile(j).TYPE=1  Then
		          ff=wantz+" "+chr(9)+wantvalue
		        elseif Canvas_Graph.Profiles.One_Profile(j).TYPE=2  Then
		          ff=wantx+" "+chr(9)+wantvalue
		        elseif Canvas_Graph.Profiles.One_Profile(j).TYPE=3  Then
		          ff=wantz+" "+chr(9)+wantvalue
		        end
		        filestream.Writeline Chr(9)+Chr(9)+Chr(9)+ff
		        
		        
		      next
		      filestream.Writeline Chr(9)+Chr(9)+"END_DATA"
		      filestream.Writeline Chr(9)+"END_SCAN  "+str(k)
		    next
		    filestream.Writeline"END_SCAN_DATA"
		    fileStream.Close
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Export_pyplot
	#tag Event
		Sub Action()
		  //-------------------------------------
		  // Written by Andrew Alexander
		  // UPDATED: June 2018
		  //
		  //
		  //-------------------------------------
		  Dim file As FolderItem
		  Dim fileStream as TextOutputStream
		  dim k,j as Integer
		  dim i as integer
		  Dim wantx, wanty, wantz,wante,ff,x,y,plota_label_array(-1),title As String
		  Dim wantvalue, plota_labelm,temp,xx,newplot,plota_label,RT_type(-1), EN_type(-1),Linac_type(-1),Al_Type(-1),SDD_Type(-1),Field_X_Type(-1),Field_Y_Type(-1) As String
		  Dim d As New Date
		  Dim cc as Color
		  Dim hexColor,hexColor_Full,label As String
		  Dim RT_type_Title,EN_type_Title,Linac_type_title,Al_Type_title,SDD_Type_title,Field_Y_Type_Title,Field_X_Type_title as Boolean
		  //-------------------------------------
		  
		  
		  file=GetSaveFolderItem("plain/text","")
		  If file<> Nil then
		    fileStream=file.CreateTextFile
		    filestream.Writeline "import numpy as np"
		    filestream.Writeline "import matplotlib.pyplot as plt"
		    filestream.Writeline "from matplotlib.ticker import (MultipleLocator, FormatStrFormatter,AutoMinorLocator)"
		    filestream.Writeline "minorLocator = AutoMinorLocator(2)"
		    
		    if Canvas_Graph.Y_Label="" Then
		      filestream.Writeline "plt.ylabel('%')"
		    else
		      filestream.Writeline "plt.ylabel('"+Canvas_Graph.Y_Label+"')"
		    end
		    filestream.Writeline "plt.xlabel('"+Canvas_Graph.x_Label+"')"
		    k=0
		    
		    
		    // Determine plot title and labels
		    for j=0 to UBound(Canvas_Graph.Profiles.One_Profile)
		      RT_type.append  Canvas_Graph.Profiles.One_Profile(j).Radiation_Type
		      EN_type.append  Format(Canvas_Graph.Profiles.One_Profile(j).Energy,"0") 
		      Linac_type.append  Canvas_Graph.Profiles.One_Profile(j).Linac
		      Al_Type.append  Canvas_Graph.Profiles.One_Profile(j).Algorithm
		      SDD_Type.append  format(Canvas_Graph.Profiles.One_Profile(j).SSD,"0")
		      Field_X_Type.append  Format(Canvas_Graph.Profiles.One_Profile(j).Field_X,"0.0")
		      Field_Y_Type.append format(Canvas_Graph.Profiles.One_Profile(j).Field_Y,"0.0") 
		    Next
		    
		    RT_type_Title=True
		    EN_type_Title=True
		    Linac_type_title=True
		    Al_Type_title=true
		    SDD_Type_title=True
		    Field_X_Type_title=True
		    Field_Y_Type_title=True
		    for j=1 to UBound(RT_type)
		      if RT_type(j-1)<>RT_type(j) Then
		        RT_type_Title=False
		      end
		      if en_type(j-1)<>en_type(j) Then
		        EN_type_Title=False
		      end
		      if Linac_type(j-1)<>Linac_type(j) Then
		        Linac_type_title=False
		      end
		      if Al_Type(j-1)<>Al_Type(j) Then
		        Al_Type_title=False
		      end
		      if SDD_Type(j-1)<>SDD_Type(j) Then
		        SDD_Type_title=False
		      end
		      if Field_X_Type(j-1)<>Field_X_Type(j) Then
		        Field_X_Type_title=False
		      end
		      if Field_Y_Type(j-1)<>Field_Y_Type(j) Then
		        Field_y_Type_title=False
		      end
		    Next
		    if RT_type_Title Then
		      title=RT_type(0)+ " "
		    end
		    if EN_type_Title Then
		      title=title+EN_type(0)+ " "
		    end
		    if Linac_type_title Then
		      title=title+Linac_type(0)+ " "
		    end
		    if Al_Type_title Then
		      title=title+Al_Type(0)+ " "
		    end
		    if SDD_Type_title Then
		      title=title+"SSD= "+SDD_Type(0)+ " "
		    end
		    if Field_X_Type_title Then
		      title=title+"FIELDX= "+Field_X_Type(0)+ " "
		    end
		    if Field_y_Type_title Then
		      title=title+"FIELDY= "+Field_Y_Type(0)+ " "
		    end
		    
		    for j=0 to UBound(Canvas_Graph.Profiles.One_Profile)
		      label=""
		      if RT_type_Title=False Then
		        label=RT_type(j)+ " "
		      end
		      if EN_type_Title=False Then
		        label=label+EN_type(j)+" "
		      end
		      if Linac_type_title=False Then
		        label=label+Linac_type(j)+" "
		      end
		      if Al_Type_title=False Then
		        label=label+Al_Type(j)+" "
		      end
		      if SDD_Type_title=False Then
		        label=label+"SSD= "+SDD_Type(j)+" "
		      end
		      if Field_x_Type_title=False Then
		        label=label+"FIELD= "+Field_x_Type(j)
		      end
		      if Field_y_Type_title=False Then
		        label=label+"x"+Field_y_Type(j)+" "
		      end
		      plota_label_array.Append Label
		    Next
		    
		    for j=0 to UBound(Canvas_Graph.Profiles.One_Profile)
		      k=k+1
		      plota_label= plota_label_array(k-1)
		      cc=Canvas_Graph.Profiles.One_Profile(j).Colour
		      hexColor_Full = Str(cc)
		      hexColor="#"+Hex32(Val(hexColor_Full))
		      x="["
		      y="["
		      
		      for i =0 to UBound(Canvas_Graph.Profiles.One_Profile(j).Points)
		        wantx = Format(Canvas_Graph.Profiles.One_Profile(j).Points(i).x_cm,"-#.###e")
		        wanty = Format(Canvas_Graph.Profiles.One_Profile(j).Points(i).y_cm,"-#.###e")
		        wantz = Format(Canvas_Graph.Profiles.One_Profile(j).Points(i).z_cm,"-#.###e")
		        wante = Format(Canvas_Graph.Profiles.One_Profile(j).Points(i).uncertainty,"-#.####e")
		        
		        if Canvas_Graph.Profiles.One_Profile(j).Norm Then
		          wantvalue = Format(100*Canvas_Graph.Profiles.One_Profile(j).Points(i).value/Canvas_Graph.Profiles.One_Profile(j).Normalize_value,"-#.####e")
		        else
		          wantvalue = Format(Canvas_Graph.Profiles.One_Profile(j).Points(i).value,"-#.####e")
		        end
		        
		        if Canvas_Graph.Profiles.One_Profile(j).TYPE=1  Then
		          xx=wantz
		        elseif Canvas_Graph.Profiles.One_Profile(j).TYPE=2  Then
		          xx=wantx
		        elseif Canvas_Graph.Profiles.One_Profile(j).TYPE=3  Then
		          xx=wanty
		        end
		        
		        if i<UBound(Canvas_Graph.Profiles.One_Profile(j).Points) Then
		          x=x+xx+", "
		          y=y+wantvalue+", "
		        else
		          x=x+xx
		          y=y+wantvalue
		        end
		      next
		      x=x+"]"
		      y=y+"]"
		      temp="plt.plot("+x+", "+y+", label='"+plota_label+"', color= '"+hexColor+"')"
		      filestream.Writeline temp
		    Next
		    
		    filestream.Writeline "plt.xlim("+EditField_xmin.Text+", "+EditField_xmax.Text+")"
		    filestream.Writeline "plt.ylim("+EditField_ymin.Text+", "+EditField_ymax.Text+")"
		    filestream.Writeline "plt.grid(b='on', which='both', axis='both')"
		    filestream.Writeline "ax = plt.gca()"
		    filestream.Writeline "ax.xaxis.set_minor_locator(minorLocator)"
		    
		    filestream.Writeline "plt.legend(loc='best')"
		    filestream.Writeline "plt.title('"+title+"')"
		    
		    filestream.Writeline "plt.show()"
		    fileStream.Close
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
		Name="Index_Addon"
		Visible=false
		Group="Behavior"
		InitialValue="1"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index_Algor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index_Colour"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index_Depth"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index_Energy"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index_FieldSize"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index_gProfile_Index"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index_Label"
		Visible=false
		Group="Behavior"
		InitialValue="1"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index_Maxvalue"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index_Norm"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index_Norm_Value"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index_Pointa"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index_Pointb"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index_Show_Line"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index_Show_Points"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index_SSD"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index_Type"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index_Unit"
		Visible=false
		Group="Behavior"
		InitialValue="1"
		Type="Integer"
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
		Name="NewScale"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Boolean"
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
		Name="Results_Mouse_Column"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
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
