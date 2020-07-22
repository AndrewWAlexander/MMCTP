#tag Window
Begin Window Window_EMET_Results
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   874
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
   Title           =   "Optimization Window Results"
   Visible         =   True
   Width           =   1300
   Begin TabPanel TabPanel_Lowers
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   600
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
      TabDefinition   =   "DVH\rFields vs MU\rPB Fields\rFluence Plot\rNotes"
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   246
      Transparent     =   False
      Underline       =   False
      Value           =   0
      Visible         =   True
      Width           =   1260
      Begin Canvas_EMET DVHGraph
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Axis_Visible    =   False
         Backdrop        =   0
         Box             =   False
         Center_Scale    =   False
         DoubleBuffer    =   False
         drawXsub        =   False
         drawYsub        =   False
         Enabled         =   True
         Graph_Title     =   ""
         Height          =   516
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Interactive     =   False
         Interactive_index=   0
         Left            =   31
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mouse_Str_X     =   ""
         Mouse_Str_Y     =   ""
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   291
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   1242
         xLabelPower     =   0
         xLabelPowerAuto =   False
         xRange          =   0.0
         xScaleMax       =   0.0
         xScaleMin       =   0.0
         x_bottom        =   0
         X_Label         =   ""
         x_Maximum       =   0.0
         x_Minimum       =   0.0
         x_mouse         =   0
         x_mouse_value   =   0.0
         x_Pow           =   0
         x_top           =   0
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
         y_Pow           =   0
         y_top           =   0
      End
      Begin Label StaticText_DVH_Stat
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   31
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "MinDose"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   10.0
         TextUnit        =   0
         Top             =   814
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   284
      End
      Begin Canvas_Plot Canvas_MU
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
         Errors          =   False
         Graph_Title     =   ""
         Height          =   356
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Interactive     =   False
         Interactive_index=   0
         Interactive_String=   ""
         Left            =   326
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         NewScale        =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         Top             =   303
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   691
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
      Begin PushButton PushButton_Calculate_MU
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   0
         Cancel          =   False
         Caption         =   "Calculate"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   45
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
         Top             =   463
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   113
      End
      Begin TextField TextField_MU_Bins
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
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   185
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
         Text            =   "20"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   313
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   80
      End
      Begin Label StaticText91
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   277
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
         Text            =   "Bins"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   314
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin RadioButton RadioButton_MU_SA
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "SA"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   45
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
         Top             =   303
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin RadioButton RadioButton_MU_Grad
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Grad"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   45
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   335
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin GroupBox GroupBox4
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   ""
         Enabled         =   True
         Height          =   27
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   1030
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   814
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   243
         Begin RadioButton DiffRadioButton
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Differential"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   1041
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
            Top             =   819
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   100
         End
         Begin RadioButton CumuRadioButton
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Cumulative"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   1153
            LockBottom      =   True
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
            Top             =   819
            Transparent     =   False
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   110
         End
      End
      Begin GroupBox GroupBox18
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Dose Distributions, Beams and Fluence"
         Enabled         =   True
         Height          =   552
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   31
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   285
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   1239
         Begin Listbox Listbox_DOSE
            AutoDeactivate  =   True
            AutoHideScrollbars=   True
            Bold            =   False
            Border          =   True
            ColumnCount     =   13
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
            Height          =   479
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "GroupBox18"
            InitialValue    =   ""
            Italic          =   False
            Left            =   48
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
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   350
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   1208
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin CheckBox CheckBox_Hide_Zero
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Hide Zero Weights"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox18"
            Italic          =   False
            Left            =   48
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   1
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   318
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   152
         End
         Begin PushButton PushButton1
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   0
            Cancel          =   False
            Caption         =   "Push PB field data back to Run Window"
            Default         =   False
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox18"
            Italic          =   False
            Left            =   212
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
            Top             =   318
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   268
         End
      End
      Begin RadioButton RadioButton_MAP_MU
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "MU Weights"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   270
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   294
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   99
      End
      Begin RadioButton RadioButton_Map_W
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "PB Weights"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   132
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
         Top             =   294
         Transparent     =   False
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   120
      End
      Begin TextArea TextArea_Input
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
         Height          =   317
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   41
         LimitText       =   0
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Mask            =   ""
         Multiline       =   True
         ReadOnly        =   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollbarVertical=   True
         Styled          =   True
         TabIndex        =   0
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   501
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   599
      End
      Begin TextArea TextArea_Output
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
         Height          =   534
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   662
         LimitText       =   0
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Multiline       =   True
         ReadOnly        =   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollbarVertical=   True
         Styled          =   True
         TabIndex        =   1
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   284
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   599
      End
      Begin Label StaticText_NumofOpenings11
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   21
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   49
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   True
         Scope           =   0
         Selectable      =   False
         TabIndex        =   9
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   "Sort by:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   294
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   71
      End
      Begin PushButton PushButton_GenerateFlec_Positionfile
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   0
         Cancel          =   False
         Caption         =   "Generate FLEC Position file"
         Default         =   False
         Enabled         =   True
         Height          =   24
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   411
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   10
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   292
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   184
      End
      Begin GroupBox GroupBox19
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Fluence per Field"
         Enabled         =   True
         Height          =   506
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   36
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   326
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   594
         Begin Canvas Canvas_Map
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            Height          =   426
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox19"
            Left            =   48
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   7
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   393
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   569
         End
         Begin CheckBox CheckBox_CrossHairs
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Show crosshairs and box"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox19"
            Italic          =   False
            Left            =   49
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   8
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   353
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   182
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
            InitialParent   =   "GroupBox19"
            Italic          =   False
            Left            =   243
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
            TabIndex        =   9
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   352
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
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
            InitialParent   =   "GroupBox19"
            Italic          =   False
            Left            =   335
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
            TabIndex        =   10
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   352
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
         End
         Begin TextField TextField_LineThickness
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
            InitialParent   =   "GroupBox19"
            Italic          =   False
            Left            =   427
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
            TabIndex        =   11
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "2"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   352
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
         End
         Begin TextField TextField_FS
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
            InitialParent   =   "GroupBox19"
            Italic          =   False
            Left            =   515
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
            TabIndex        =   12
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "9"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   351
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
         End
      End
      Begin GroupBox GroupBox20
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Summary of PB"
         Enabled         =   True
         Height          =   548
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   643
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   11
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   284
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   605
         Begin Listbox Listbox_PBSum
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
            GridLinesHorizontal=   0
            GridLinesVertical=   0
            HasHeading      =   True
            HeadingIndex    =   -1
            Height          =   506
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "GroupBox20"
            InitialValue    =   ""
            Italic          =   False
            Left            =   650
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            RequiresSelection=   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollBarVertical=   True
            SelectionType   =   0
            TabIndex        =   0
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   316
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   586
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
      End
      Begin PopupMenu PopupMenu_DVH
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         InitialValue    =   ""
         Italic          =   False
         Left            =   812
         ListIndex       =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   817
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   206
      End
      Begin CheckBox CheckBox_Norm
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Normalize"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   682
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   817
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin TextArea TextArea_Note
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
         Height          =   194
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   41
         LimitText       =   0
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Multiline       =   True
         ReadOnly        =   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollbarVertical=   True
         Styled          =   True
         TabIndex        =   3
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   284
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   599
      End
      Begin BevelButton BevelButton_DVH_Export
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Export Text DVH"
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
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   532
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   814
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   127
      End
      Begin BevelButton BevelButton_DVH_Dose_Stats
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Export dose stats for DVH"
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
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   327
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   814
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   193
      End
   End
   Begin Listbox Listbox_Results
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
      EnableDrag      =   True
      EnableDragReorder=   True
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   220
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   True
      ScrollBarVertical=   True
      SelectionType   =   1
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   1260
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  app.which_window_EMET_Results=False
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Dim i as Integer
		  
		  DVHs=new Thread_DVH
		  Window_Open
		  
		  
		  PopupMenu_DVH.deleteAllRows
		  PopupMenu_DVH.addRow "ALL"
		  
		  for i=0 to UBound(grtog.Structures.Structures)
		    PopupMenu_DVH.addRow grtog.Structures.Structures(i).Structure_Name
		  next
		  
		  PopupMenu_DVH.SelectedRowIndex=0
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  DVHGraph.Resize_Canvas
		  Map_Make
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Draw_Map(norm as single, index() as Integer, tmpsurf_grad as RGBSurface, scale_w as Single, scale_h as Single, total_Grad_W as Single, total_MU_Grad as Single)
		  //--------------------------------------------
		  // Make Fluence/Intensity  Map
		  //
		  //
		  //--------------------------------------------
		  Dim i,k,x1,x2,y1,y2,cc,newcc,v as Integer
		  DIm newc as Color
		  Dim pp as Picture
		  Dim nn as Boolean
		  //--------------------------------------------
		  
		  
		  //canvas1.Graphics.forecolor=Rgb(0,0,0) //set to black
		  //canvas1.Graphics.forecolor=Rgb(255,255,255) //set to white
		  
		  // For Map
		  for i=0 to UBound(index)
		    if RadioButton_Map_W.Value Then
		      cc=Round(norm*255*IPbeams(index(i)).Weight_Grad/total_Grad_W)
		    elseif  RadioButton_MAP_MU.Value Then
		      cc=Round(norm*255*IPbeams(index(i)).MUs_Grad/total_MU_Grad)
		    end
		    
		    newc=RGB(cc,cc,cc)
		    x1=-IPbeams(index(i)).X1/scale_w+Map_Grad.Width/2
		    x2=IPbeams(index(i)).X2/scale_w+Map_Grad.Width/2
		    y1=IPbeams(index(i)).y1/scale_h+Map_Grad.Height/2
		    y2=-IPbeams(index(i)).y2/scale_h+Map_Grad.Height/2
		    
		    for k=0 to Map_Grad.Width
		      if k>=x1 and k<=x2 Then
		        for v=0 to Map_Grad.Height
		          if v>=y2 and v<=y1 Then
		            newcc=tmpsurf_grad.Pixel(k,v).Red-cc
		            tmpsurf_grad.Pixel(k,v)=RGB(newcc,newcc,newcc)
		          end
		        next
		      end
		    next
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DVH_Default_SettingsGraphs()
		  // Set graphing properties
		  
		  //Properties to set depending on your preferences....
		  me.DVHGraph.Box=True  // True if you want a box around the plot.
		  me.DVHGraph.Axis_Visible=true   // True if you want the axis visible.
		  me.DVHGraph.Center_Scale=false  // True if you want the scales written down the axis, not on the edges.
		  me.DVHGraph.Graph_Title="DVH"
		  me.DVHGraph.X_Label="Dose Gy"  // The x label.
		  me.DVHGraph.Y_Label="Volume"+Chr(13)+" %"  //Use Chr(13) followed by a space as a space on the Y_Label.
		  me.DVHGraph.drawXsub = true
		  me.DVHGraph.drawYsub = true
		  
		  // Set following to set axes ranges manually.  Ignored if xAuto or yAuto set true
		  me.DVHGraph.xLabelPowerAuto = false
		  me.DVHGraph.xLabelPower = 0
		  me.DVHGraph.yLabelPowerAuto = false
		  me.DVHGraph.yLabelPower = 0
		  me.DVHGraph.ReSize_Canvas  // Needed to initialize the canvas size.  If you want your window to
		  //resize your plot, you need to put a call to Resize_Canvas in your resize event in the
		  //window with the plot_Canvas.
		  //me.DVHGraph.Refresh
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DVH_Load_All_DVHs()
		  //------------------------------------------
		  // Load the DVHs into graph points, to plot!
		  //
		  //------------------------------------------
		  //Dim i ,k as Integer
		  //Dim pp as Class_Profile_One
		  //Dim pxy as Class_Points
		  //Dim dvalue,vvalue as Single
		  //------------------------------------------
		  
		  DVHGraph.Profiles.One_Profile.ResizeTo( DVHs.All_DVH.LastRowIndex )
		  
		  // Load DVHs to Profile plots
		  For k As Integer = 0 To DVHs.All_DVH.LastRowIndex
		    
		    If DVHGraph.Profiles.One_Profile(k) = Nil Then
		      
		      DVHGraph.Profiles.One_Profile(k) = New Class_Profile_One
		      
		    End
		    
		    Var pp as Class_Profile_One = DVHGraph.Profiles.One_Profile(k)
		    pp.Symbol = DVHs.All_DVH(k).DVH_Symbol
		    pp.Label = DVHs.All_DVH(k).Name + " " + DVHs.All_DVH(k).struc_names
		    
		    If PopupMenu_DVH.SelectedRowValue = "ALL" Or _
		      PopupMenu_DVH.SelectedRowValue = DVHs.All_DVH(k).struc_names Then
		      
		      pp.Show=True
		      
		      If pp.Points.LastRowIndex <> _
		        DVHs.All_DVH(k).DVH_bins - 1 Then
		        
		        pp.Points.ResizeTo(DVHs.All_DVH(k).DVH_bins - 1)
		        
		      End
		      
		      StaticText_DVH_Stat.value = "Min, Avg, Max dose : " _
		      + Str(DVHs.All_DVH(k).mindose) + ", " _
		      + Str(DVHs.All_DVH(k).avgdose) + ", " _
		      + Str(DVHs.All_DVH(k).maxdose)
		      
		      For i As Integer = 0 To DVHs.All_DVH(k).DVH_bins - 1   //n bins
		        
		        If pp.Points(i)= Nil Then
		          
		          pp.Points(i)= New Class_Points
		          
		        End
		        
		        Var pxy as Class_Points = pp.Points(i)
		        pxy.X_cm= DVHs.All_DVH(k).mindose _
		        + (DVHs.All_DVH(k).maxdose - DVHs.All_DVH(k).mindose) _
		        * (i+0.5)/DVHs.All_DVH(k).DVH_bins
		        pxy.X_cm=DVHs.All_DVH(k).Normalize*pxy.X_cm
		        
		        If CumuRadioButton.Value Then
		          
		          pxy.Y_cm=DVHs.All_DVH(k).DVH_Cum(i)
		          
		        Else
		          
		          pxy.Y_cm=DVHs.All_DVH(k).DVH(i)
		          
		        End
		      Next
		    Else
		      
		      pp.Show=False
		      
		    End
		    
		    For i As Integer = 0 To grtog.Structures.Structures.LastRowIndex
		      
		      If DVHs.All_DVH(k).struc_names=grtog.Structures.Structures(i).Structure_Name Then
		        
		        pp.Colour=grtog.Structures.Structures(i).scolor
		        
		      End
		    Next
		  Next
		  
		  DVHGraph.Default_Settings
		  DVHGraph.Refresh
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Load_DVH_Strings()
		  '//----------------------------
		  '//
		  '//
		  '//----------------------------
		  'Dim i,k,x,dvhsim,normDVH(-1),dvh_dosecount as Integer
		  'Dim temp, splitf(-1) as String
		  'Dim dd as Class_DVH_One
		  'Dim norm,dvalue,vvalue,vv as Single
		  '//----------------------------
		  '
		  '
		  'dvh_dosecount=0
		  'i=Listbox_Results.SelectedRowIndex
		  'ReDim DVHs.All_DVH(-1)
		  'dvhsim=0
		  'for i=0 to Listbox_Results.ListCount
		  'if Listbox_Results.Selected(i) Then
		  'norm=1
		  'ReDim normDVH(-1)
		  'dvh_dosecount=dvh_dosecount+1
		  '
		  'dvhsim=dvhsim+1
		  'temp=Listbox_Results.CellValueAt(i,8)
		  'splitf=split(temp,"~~~")
		  'splitf.Remove UBound(splitf)
		  '
		  'for k=0 to UBound(splitf)
		  'dd=new Class_DVH_One
		  'DVHs.All_DVH.Append dd
		  'normDVH.Append UBound(DVHs.All_DVH)
		  'dd.StringFile=splitf(k)
		  'DVHs.Read_DVH_String(dd)
		  'dd.Name=Listbox_Results.CellValueAt(i,13)
		  'dd.DVH_Symbol=dvhsim
		  'dd.Dose_Name=dd.Name
		  '
		  '//Normailize to point
		  'if CheckBox_Norm.Value Then
		  'for x=0 to UBound(Oarray.organ)
		  'if Oarray.organ(x).Use_Min_Dose and Oarray.organ(x).Organ_Name=dd.struc_names Then
		  '// Normalize DVH Graphs
		  'dvalue=Oarray.organ(x).Target_Norm_Dose
		  'vvalue=Oarray.organ(x).Target_Norm_Volume
		  'if dvalue>0 and vvalue>0 Then
		  'vv=dd.Calculate_Dose_at_Volume_Percent(vvalue)
		  'dd.Normalize=dvalue/vv
		  'norm=dd.Normalize
		  'end
		  'end
		  'Next
		  'end
		  '
		  'Next
		  '
		  'for x=0 to UBound(normDVH)
		  'DVHs.All_DVH(normDVH(x)).Normalize=norm
		  'next
		  'end
		  'Next
		  '
		  'DVH_Load_All_DVHs
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Load_Inputfile()
		  Dim i as Integer
		  
		  i=Listbox_Results.SelectedRowIndex
		  
		  TextArea_Input.value = ""
		  TextArea_Output.value = ""
		  
		  
		  
		  if i>=0 and i<=Listbox_Results.ListCount Then
		    TextArea_Input.value = Listbox_Results.CellValueAt(i,5)+Chr(10)+"----Organ & Target Values ------ "+chr(10)+Listbox_Results.CellValueAt(i,9)
		    TextArea_Output.value = Listbox_Results.CellValueAt(i,6)+Chr(10)+"----Fluence File------ "+chr(10)+Listbox_Results.CellValueAt(i,7)+Chr(10)+"----DVH File------ "+chr(10)+Listbox_Results.CellValueAt(i,8)
		    TextArea_Output.value = Listbox_Results.CellValueAt(i,6)+Chr(10)+"----Fluence File------ "+chr(10)+Listbox_Results.CellValueAt(i,7)+Chr(10)+"----DVH File------ "+chr(10)+Listbox_Results.CellValueAt(i,8)
		    DoNot=True
		    TextArea_Note.value = Listbox_Results.CellValueAt(i,12)
		    DoNot=False
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Load_Oarray()
		  '//--------------------
		  '//
		  '//
		  '//--------------------
		  'Dim i as Integer
		  'Dim ostring as String
		  '//--------------------
		  '
		  'if Listbox_Results.SelectedRowIndex>=0 and Listbox_Results.SelectedRowIndex<=Listbox_Results.ListCount Then
		  'ostring=Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,9)
		  'gOpt.Read_DV_Contraints_String(Oarray, ostring)
		  'end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Load_PBs()
		  //-------------------------------
		  //
		  //
		  //-------------------------------
		  Dim i as Integer
		  Dim temp,PB_Data,line(-1) as String
		  Dim ff as Class_Optimization_FIELD
		  //-------------------------------
		  
		  ReDim IPbeams(-1)
		  
		  i=Listbox_Results.SelectedRowIndex
		  if i>=0 and i<=Listbox_Results.ListCount Then
		    PB_Data=Listbox_Results.CellValueAt(i,10)
		    line=Split(PB_Data,chr(10))
		    ReDim line(UBound(line)-1)
		    For i=0 to UBound(line)
		      ff= new Class_Optimization_FIELD
		      IPbeams.Append ff
		      ff.FIdID_Name=NthField(line(i),"~",1)
		      ff.FldID=val(NthField(line(i),"~",2))
		      ff.Norm_Value=val(NthField(line(i),"~",3))
		      ff.Energy=NthField(line(i),"~",4)
		      
		      ff.Weight_Grad=val(NthField(line(i),"~",5))
		      ff.x1=val(NthField(line(i),"~",6))
		      ff.x2=val(NthField(line(i),"~",7))
		      ff.y1=val(NthField(line(i),"~",8))
		      ff.y2=val(NthField(line(i),"~",9))
		    next
		  end
		  
		  Update_PBs
		  Update_Summary
		  Map_Make
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Map_Make()
		  //--------------------------------------------
		  // Make Fluence  Map
		  //
		  //
		  //--------------------------------------------
		  Dim x,i,k,x1,x2,y1,y2,cc,newcc,v,ppw,pph,pb_rows(-1),index(-1),min as Integer
		  Dim total_MU_Grad,total_Grad_W,scale_w,scale_h,eng,norm as Single
		  DIm newc as Color
		  Dim pp as Picture
		  Dim nn as Boolean
		  Dim field(-1),temp as String
		  //--------------------------------------------
		  
		  Map_Grad= New Picture(Canvas_Map.Width,Canvas_Map.Height,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		  scale_w=X_res
		  scale_h=Y_res
		  
		  
		  Map_Grad.Graphics.ForeColor=rgb(255,255,255)
		  Map_Grad.Graphics.FillRect(0,0,Map_Grad.Width,Map_Grad.Height)
		  total_Grad_W=0
		  total_MU_Grad=0
		  for i=0 to Listbox_PBSum.ListCount-1
		    for x=1 to Listbox_PBSum.ColumnCount
		      if Listbox_PBSum.CellCheck(i,x) Then
		        field.Append Listbox_PBSum.CellValueAt(i,0)
		        pb_rows.Append i
		        Exit
		      end
		    Next
		  next
		  for x=0 to UBound(field)
		    for k=1 to Listbox_PBSum.ColumnCount
		      if Listbox_PBSum.CellCheck(pb_rows(x),k) Then
		        temp=Listbox_PBSum.HeaderAt(k)  
		        for i=0 to UBound(IPbeams)
		          if field(x)=IPbeams(i).Beam_Description and IPbeams(i).Energy=Listbox_PBSum.HeaderAt(k) Then
		            index.Append i
		            total_MU_Grad=total_MU_Grad+IPbeams(i).MUs_Grad
		            total_Grad_W=total_Grad_W+IPbeams(i).Weight_Grad
		          end
		        next
		      end
		    next
		  next
		  
		  // For Map
		  Draw_Map(1,index,Map_Grad.rgBSurface,scale_w,scale_h,total_Grad_W,total_MU_Grad)
		  
		  
		  min=255
		  // Renormalize
		  for k=4 to Map_Grad.Width-4
		    for v=4 to Map_Grad.Height-4
		      //if tmpsurf_grad.Pixel(k,v).Red
		      newcc=Map_Grad.rgBSurface.Pixel(k,v).Red
		      if newcc<min Then
		        min=newcc
		      end
		    next
		  next
		  
		  //Rgb(0,0,0) //set to black
		  min=255-min
		  norm=255/min
		  // For Map
		  Draw_Map(norm,index,Map_Grad.rgBSurface,scale_w,scale_h,total_Grad_W,total_MU_Grad)
		  
		  Canvas_Map.Refresh
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_DataBase()
		  //---------------------------------
		  // Update the listbox of records
		  //
		  //
		  //---------------------------------
		  'Dim i as Integer
		  'Dim sql,icvalue,cvalue,ddate,mertP,infile,outfile,fluenceF,dvhf,organCon,plan,PB_Data,note,label, time as String
		  'Dim rs As RecordSet
		  'Dim bb as Boolean
		  //---------------------------------
		  
		  Listbox_Results.RemoveAllRows
		  Listbox_Results.ColumnCount=14
		  Listbox_Results.HeaderAt(0)="InitialCostValue"
		  Listbox_Results.HeaderAt(1)="FinialCostValue"
		  Listbox_Results.HeaderAt(2)="Date"
		  Listbox_Results.HeaderAt(3)="MERTProgram"
		  Listbox_Results.HeaderAt(4)="Time (min)"
		  Listbox_Results.HeaderAt(5)="InputFile"
		  Listbox_Results.HeaderAt(6)="OutputFile"
		  Listbox_Results.HeaderAt(7)="Fluence"
		  Listbox_Results.HeaderAt(8)="DVHs"
		  Listbox_Results.HeaderAt(9)="InputConstraints"
		  Listbox_Results.HeaderAt(10)="PB Data"
		  Listbox_Results.HeaderAt(11)="Plan"
		  Listbox_Results.HeaderAt(12)="Note"
		  Listbox_Results.HeaderAt(13)="Label"
		  
		  listbox_Results.ColumnWidths = "10%,10%,15%,10%,8%,0%,0%,0%,0%,0%,0%,12%,35%,10%"
		  
		  
		  Var sql As String = "select CostValue, Date, MERTProgram, " _
		  + "Time, InputFile, OutputFile, Fluence, DVHs, InputConstraints, " _
		  + "PB_Data, Plan, Note, Label, InitialScore from Results"
		  
		  If gOpt.results.Connect Then
		    Var rs As RowSet = gOpt.results.SelectSQL(sql)
		    If rs = Nil Then
		      Return
		      
		    End If
		    
		    While Not rs.AfterLastRow
		      
		      Var icvalue As String = rs.Column("InitialScore").StringValue
		      Var cvalue As String = rs.Column("CostValue").StringValue
		      Var ddate As String = rs.Column("Date").StringValue
		      Var mertP As String = rs.Column("MERTProgram").StringValue
		      Var time As String = rs.Column("Time").StringValue
		      Var infile As String = rs.Column("InputFile").StringValue
		      Var outfile As String = rs.Column("OutputFile").StringValue
		      Var fluenceF As String = rs.Column("Fluence").StringValue
		      Var dvhf As String = rs.Column("DVHs").StringValue
		      Var organCon As String =rs.Column("InputConstraints").StringValue
		      Var PB_Data As String = rs.Column("PB_Data").StringValue
		      Var Plan As String = rs.Column("Plan").StringValue
		      Var note As String = rs.Column("Note").StringValue
		      Var label As String = rs.Column("Label").StringValue
		      
		      Listbox_Results.AddRow( icvalue, cvalue, ddate, mertP, time, _
		      infile, outfile, fluenceF, dvhf, organCon, PB_Data, Plan, Note, label)
		      
		      Listbox_Results.CellTypeAt(Listbox_Results.LastRowIndex,13) = Listbox.CellTypes.TextField
		      Listbox_Results.CellTypeAt(Listbox_Results.LastRowIndex,11) = Listbox.CellTypes.TextField
		      
		      rs.MoveToNextRow
		    Wend
		    rs.Close
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_PBs()
		  //---------------------------------------------
		  //
		  //
		  //---------------------------------------------
		  Dim k,i as Integer
		  Dim temp as String
		  Dim found as Boolean
		  //---------------------------------------------
		  
		  
		  Listbox_DOSE.DeleteAllRows
		  
		  Listbox_DOSE.HeaderAt(0)="PB Num"
		  Listbox_DOSE.HeaderAt(1)="Dose Name"
		  Listbox_DOSE.HeaderAt(2)="Weight"
		  Listbox_DOSE.HeaderAt(3)="MU-Weight"
		  Listbox_DOSE.HeaderAt(4)="Energy"
		  Listbox_DOSE.HeaderAt(5)="FLEC"
		  Listbox_DOSE.HeaderAt(6)="Norm"
		  
		  temp="10%,20%,10%,10%,10%,30%,10%"
		  Listbox_DOSE.columnwidths=Temp
		  
		  for i=0 to UBound(IPbeams)
		    Listbox_DOSE.AddRow str(i+1)
		    Listbox_DOSE.CellValueAt(i,1)=IPbeams(i).FIdID_Name 
		    Listbox_DOSE.CellValueAt(i,2)=Format(IPbeams(i).Weight_Grad,"#.#####")
		    Listbox_DOSE.CellValueAt(i,3)=Format(IPbeams(i).MUs_Grad,"-#")
		    // Energy
		    Listbox_DOSE.CellValueAt(i,4)=IPbeams(i).Energy
		    //Flec open
		    Listbox_DOSE.CellValueAt(i,5)=Format(IPbeams(i).X1,"-0.0000")+" "+ Format(IPbeams(i).x2,"-0.0000")+" "+ Format(IPbeams(i).y1,"-0.0000")+" "+ Format(IPbeams(i).Y2,"-0.0000")
		    Listbox_DOSE.CellValueAt(i,6)=Format(IPbeams(i).Norm_Value,"-#.##e")
		  Next
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Summary()
		  //---------------------------------------------
		  //
		  //
		  //---------------------------------------------
		  Dim k,i,x,num,rowtotal,rtotal,ctotal as Integer
		  Dim temp,eng(-1),fields(-1) as String
		  Dim found as Boolean
		  Dim engw(-1),wtotal,fsize(-1),avgFS,FS_List(-1) as Single
		  Dim FinalBL(-1) as Class_Optimization_FIELD
		  //---------------------------------------------
		  
		  Listbox_PBSum.DeleteAllRows
		  
		  Listbox_PBSum.HeaderAt(0)="Field ID"
		  
		  for i=0 to UBound(IPbeams)
		    found=False
		    for k=0 to UBound(eng)
		      if eng(k)=IPbeams(i).Energy Then
		        found=True
		      end
		    Next
		    if found=False Then
		      eng.Append IPbeams(i).Energy
		    end
		  next
		  
		  // Make the array of energy weights the same size as number of energies
		  ReDim engw(UBound(eng))
		  
		  Listbox_PBSum.ColumnCount=UBound(eng)+3
		  
		  for i=0 to UBound(eng)
		    Listbox_PBSum.HeaderAt(i+1)=eng(i)
		    Listbox_PBSum.ColumnType(i+1)=2
		    engw(i)=0.0
		  Next
		  rowtotal=i+1
		  
		  Listbox_PBSum.HeaderAt(rowtotal)="Total"
		  
		  for i=0 to UBound(IPbeams)
		    found=False
		    for k=0 to UBound(fields)
		      if fields(k)=IPbeams(i).Beam_Description Then
		        found=True
		      end
		    Next
		    if found=False Then
		      fields.Append IPbeams(i).Beam_Description
		    end
		  next
		  
		  for i=0 to UBound(fields)
		    Listbox_PBSum.AddRow fields(i)
		    rtotal=0
		    for k=0 to UBound(eng)
		      num=0
		      for x=0 to UBound(IPbeams)
		        if IPbeams(x).Beam_Description=fields(i) and IPbeams(x).Energy=eng(k) Then
		          if IPbeams(x).Weight_Grad>0 and RadioButton_Map_W.Value Then
		            num=num+1
		            rtotal=rtotal+1
		            engw(k)=engw(k)+IPbeams(x).Weight_Grad
		            FinalBL.Append IPbeams(x)
		          elseif  IPbeams(x).MUs_Grad>0 and RadioButton_MAP_MU.Value Then
		            num=num+1
		            rtotal=rtotal+1
		            engw(k)=engw(k)+IPbeams(x).MUs_Grad
		            FinalBL.Append IPbeams(x)
		          end
		        end
		      next
		      Listbox_PBSum.CellValueAt(i,k+1)=str(num)
		    next
		    Listbox_PBSum.CellValueAt(i,rowtotal)=str(rtotal)
		  next
		  
		  // Summarize the rows for number of beamlets
		  Listbox_PBSum.AddRow "Total"
		  for i=1 to Listbox_PBSum.ColumnCount
		    ctotal=0
		    for x=0 to Listbox_PBSum.ListCount-1
		      ctotal=ctotal+val(Listbox_PBSum.CellValueAt(x,i))
		    next
		    Listbox_PBSum.CellValueAt(Listbox_PBSum.ListCount-1,i)=str(ctotal)
		  Next
		  
		  // Summarize the rows for weight of eneries
		  Listbox_PBSum.AddRow "Total weight"
		  wtotal=0
		  for i=0 to UBound(engw)
		    Listbox_PBSum.CellValueAt(Listbox_PBSum.ListCount-1,i+1)=Format(engw(i),"#.##e")
		    Listbox_PBSum.CellType(Listbox_PBSum.ListCount-1,i+1)=3
		    wtotal=engw(i)+wtotal
		  Next
		  Listbox_PBSum.CellType(Listbox_PBSum.ListCount-1,i+1)=3
		  Listbox_PBSum.CellValueAt(Listbox_PBSum.ListCount-1,i+1)=Format(wtotal,"#.##e")
		  
		  
		  // Summarize the rows for weight of eneries fraction %
		  Listbox_PBSum.AddRow "Total %"
		  for i=0 to UBound(engw)
		    Listbox_PBSum.CellValueAt(Listbox_PBSum.ListCount-1,i+1)=Format(100*engw(i)/wtotal,"#.###")
		    Listbox_PBSum.CellType(Listbox_PBSum.ListCount-1,i+1)=3
		  Next
		  
		  
		  // Summarize the rows for weight of eneries fraction %
		  Listbox_PBSum.AddRow "Min, Max, Average FS"
		  for x=0 to UBound(eng)
		    avgFS=0.0
		    ReDim FS_List(-1)
		    for i=0 to UBound(FinalBL)
		      if FinalBL(i).Energy=eng(x) Then
		        FS_List.Append ((FinalBL(i).X1+FinalBL(i).X2)*(FinalBL(i).Y1+FinalBL(i).Y2))
		      end
		    Next
		    FS_List.Sort
		    
		    for i=0 to UBound(FS_List)
		      avgFS=avgFS+FS_List(i)
		    Next
		    avgFS=avgFS/(UBound(FS_List)+1)
		    if UBound(FS_List)>-1 Then
		      Listbox_PBSum.CellValueAt(Listbox_PBSum.ListCount-1,x+1)=Format(FS_List(0),"#.###")+", "+Format(FS_List(UBound(FS_List)),"#.###")+", "+Format(avgFS,"#.###")
		    end
		    Listbox_PBSum.CellType(Listbox_PBSum.ListCount-1,x+1)=3
		    
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Window_Open()
		  'Dim i as Integer
		  '
		  '
		  'app.which_window_EMET_Results=True
		  '
		  'Oarray=new Class_Optimization_ORGANARRAY
		  '
		  'redim Oarray.Organ(UBound(grtog.Structures.Structures))
		  'ReDim IPbeams(-1)
		  '
		  'for i=0 to UBound(grtog.Structures.Structures)
		  'Oarray.Organ(i)=new Class_Optimization_ORGANDOSE
		  'Oarray.organ(i).OrganID=i
		  'Oarray.Organ(i).Organ_Name=grtog.Structures.Structures(i).Structure_Name
		  'Oarray.organ(i).DVH = new Class_DVH_One
		  'Oarray.organ(i).DVH.stru_color=grtog.Structures.Structures(i).scolor
		  'Oarray.organ(i).DVH.struc_names=grtog.Structures.Structures(i).Structure_Name
		  'Oarray.organ(i).DVH.dvh_bins=100
		  'Oarray.organ(i).Voxel_REs=128
		  'redim Oarray.organ(i).DVH.dVH(100)
		  'next
		  '
		  'me.Title=gRTOG.Patient_Name+" "+gRTOG.Patient_Surname+" MERT Optimization Results"
		  'DVHGraph.Profiles=new Class_Profiles_All
		  'Update_DataBase
		  '
		  'DVH_Default_SettingsGraphs
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		DoNot As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		DVHs As Thread_DVH
	#tag EndProperty

	#tag Property, Flags = &h0
		IPbeams(-1) As Class_Optimization_FIELD
	#tag EndProperty

	#tag Property, Flags = &h0
		Map_Grad As picture
	#tag EndProperty

	#tag Property, Flags = &h0
		Oarray As Class_Optimization_ORGANARRAY
	#tag EndProperty

	#tag Property, Flags = &h0
		rs As RecordSet
	#tag EndProperty

	#tag Property, Flags = &h0
		X_res As Single = 0.01
	#tag EndProperty

	#tag Property, Flags = &h0
		Y_res As Single = 0.01
	#tag EndProperty


#tag EndWindowCode

#tag Events DVHGraph
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  dim MI as MenuItem
		  
		  MI = New MenuItem
		  MI.Text = "Change Colour"
		  base.Append MI
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Dim c as Color
		  Dim b as Boolean
		  
		  Select Case hitItem.Text
		  Case "Change Colour"
		    c= DVHGraph.Profiles.One_Profile(DVHGraph.Interactive_index).Colour//choose the default color shown in color picker
		    b=SelectColor(c,"Select a Color")
		    DVHGraph.Profiles.One_Profile(DVHGraph.Interactive_index).Colour=c
		    //DVH(DVH_index).stru_color=c
		    
		    
		  End Select
		  me.Refresh
		  
		  Return True
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Canvas_MU
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
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Calculate_MU
	#tag Event
		Sub Action()
		  'Dim i,bins,k as Integer
		  'Dim pp as Class_Profile_One
		  'Dim max_mu, min_mu,steps,min_now,max_now  as Single
		  'Dim points as Class_Points
		  'Dim MUs(-1) as Single
		  '
		  'bins=val(TextField_MU_Bins.Text)
		  '
		  'max_mu=-1
		  'min_mu=1e10
		  '
		  'Canvas_MU.Graph_Title="MU histogram"
		  'Canvas_MU.Profiles=new Class_Profiles_All
		  'ReDim Canvas_MU.Profiles.One_Profile(0)
		  'Canvas_MU.Interactive=True
		  'Canvas_MU.Interactive_index=0
		  '
		  '
		  'pp=new Class_Profile_One
		  'pp.X_label="MUs"
		  'pp.Value_Label="Number of fields"
		  'pp.Show=True
		  'pp.show_Line=False
		  'pp.Show_Marker=True
		  'pp.Bar_graph=True
		  'Canvas_MU.Profiles.One_Profile(0)=pp
		  '
		  '
		  '
		  'for i=0 to UBound(Opt.IPbeams)
		  'if opt.IPbeams(i).Use Then
		  'if RadioButton_MU_Grad.Value Then
		  'MUs.Append opt.IPbeams(i).MUs_Grad
		  'min_mu=val(EditField_Grad_MinWeight.Text)
		  'else
		  'min_mu=val(EditField_MinWeightSA.Text)
		  'MUs.Append opt.IPbeams(i).MUs_SA
		  'end
		  'end
		  'next
		  '
		  '
		  'for i=0 to UBound(MUs)
		  'if Mus(i)>max_mu Then
		  'max_mu=MUs(i)
		  'end
		  'next
		  '
		  '
		  'steps=(max_mu-min_mu)/bins
		  'pp.Bar_width=steps
		  '
		  '
		  'ReDim pp.Points(bins-1)
		  'for k=1 to bins
		  'points=new Class_Points
		  'pp.Points(k-1)=points
		  'points.X_cm=min_now+steps/2
		  'Points.Value=0
		  'min_now=min_mu+(k-1)*steps
		  'max_now=min_mu+(k)*steps
		  'for i=0 to UBound(MUs)
		  'if MUs(i)>=min_now and MUs(i)<=max_now Then
		  'pp.Points(k-1).Value=pp.Points(k-1).Value+1
		  'end
		  'next
		  'next
		  '
		  '
		  '
		  'Canvas_MU.Resize_Canvas
		  'Canvas_MU.Default_Settings
		  '//Canvas_MU.DrawLabels
		  'Canvas_MU.Redraw
		  'Canvas_MU.Refresh
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DiffRadioButton
	#tag Event
		Sub Action()
		  DVH_Load_All_DVHs
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CumuRadioButton
	#tag Event
		Sub Action()
		  DVH_Load_All_DVHs
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Hide_Zero
	#tag Event
		Sub Action()
		  Update_PBs
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton1
	#tag Event
		Sub Action()
		  //---------------------------------------------
		  // Push data from results database back to optimization window
		  //
		  //---------------------------------------------
		  Dim k,i as Integer
		  Dim temp as String
		  Dim found as Boolean
		  //---------------------------------------------
		  
		  
		  for k=0 to UBound(gOpt.IPbeams) // loop over optimization beams
		    gOpt.IPbeams(k).Use=False
		  Next
		  
		  
		  
		  for i=0 to UBound(IPbeams)
		    for k=0 to UBound(gOpt.IPbeams) // loop over optimization beams
		      if gOpt.IPbeams(k).FIdID_Name=IPbeams(i).FIdID_Name Then
		        gOpt.IPbeams(k).Use=True
		        
		        gOpt.IPbeams(k).Weight_Grad=IPbeams(i).Weight_Grad
		        gOpt.IPbeams(k).MUs_Grad=IPbeams(i).MUs_Grad
		        
		      end
		    Next
		  Next
		  Window_EMET_Run.Update_PB_Use
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_MAP_MU
	#tag Event
		Sub Action()
		  Map_Make
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Map_W
	#tag Event
		Sub Action()
		  Map_Make
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_GenerateFlec_Positionfile
	#tag Event
		Sub Action()
		  'Opt.Write_FLEC_Position_file
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Canvas_Map
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  Dim i,x_start,y_start as Integer
		  Dim fs as Single
		  
		  fs=val(TextField_FS.Text)
		  
		  g.DrawPicture(Map_Grad,0,0)
		  
		  g.ForeColor=RGB(0,255,0)
		  g.PenWidth=val(TextField_LineThickness.Text)
		  g.PenHeight=val(TextField_LineThickness.Text)
		  
		  if CheckBox_CrossHairs.Value Then
		    g.DrawLine(g.Width/2,0,g.Width/2,g.Height)
		    g.DrawLine(0,g.Height/2,g.Width, g.Height/2)
		    
		    g.ForeColor=RGB(0,0,255)
		    x_start=g.Width/2-fs/2/X_res
		    y_start=g.Height/2-fs/2/Y_res
		    
		    g.DrawRect(x_start,y_start,fs/X_res,fs/Y_res)
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_CrossHairs
	#tag Event
		Sub Action()
		  Canvas_Map.Refresh
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_X
	#tag Event
		Sub TextChange()
		  X_res=Val(me.Text)
		  
		  Map_Make
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_Y
	#tag Event
		Sub TextChange()
		  Y_res=Val(me.Text)
		  
		  Map_Make
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_LineThickness
	#tag Event
		Sub TextChange()
		  Map_Make
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_FS
	#tag Event
		Sub TextChange()
		  Map_Make
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_PBSum
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  Map_Make
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_DVH
	#tag Event
		Sub Change()
		  Dim c,i as Integer
		  
		  
		  DVHGraph.Interactive_index=-1
		  c=0
		  for i=0 to UBound(DVHs.All_DVH)
		    if DVHs.All_DVH(i).struc_names=me.Text Then
		      c=c+1
		      DVHGraph.Interactive_index=i
		    end
		  next
		  
		  if c>1 Then
		    DVHGraph.Interactive_index=-1
		  end
		  
		  
		  DVH_Load_All_DVHs
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Norm
	#tag Event
		Sub Action()
		  Load_DVH_Strings
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextArea_Note
	#tag Event
		Sub TextChange()
		  Dim x,i as Integer
		  
		  if DoNot=False Then
		    
		    x=Listbox_Results.SelectedRowIndex
		    
		    If rs <> Nil then
		      if Listbox_Results.SelCount=1 Then
		        
		        for i=1 to rs.FieldCount
		          if rs.IdxField(i).Name="Note" Then
		            Listbox_Results.CellValueAt(x,12)=me.Text
		            rs.Edit
		            rs.IdxField(i).Value=me.Text
		            rs.Update
		            gOpt.results.Commit
		          end
		        Next
		      end
		    End if
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_DVH_Export
	#tag Event
		Sub Action()
		  Dim i as Integer
		  
		  if DVHGraph.Interactive_index<>-1 Then
		    DVHs.Export_DVH_Text(DVHs.All_DVH(DVHGraph.Interactive_index))
		    
		  else
		    if PopupMenu_DVH.Text<>"All" Then
		      for i=0 to UBound(DVHs.All_DVH)
		        if DVHs.All_DVH(i).struc_names=PopupMenu_DVH.Text Then
		          DVHs.Export_DVH_Text(DVHs.All_DVH(i))
		        end
		      next
		      
		      
		      
		    else
		      for i=0 to UBound(DVHs.All_DVH)
		        DVHs.Export_DVH_Text(DVHs.All_DVH(i))
		      next
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_DVH_Dose_Stats
	#tag Event
		Sub Action()
		  Dim i as Integer
		  
		  if DVHGraph.Interactive_index=-1 Then
		    for i=0 to UBound(DVHs.All_DVH)
		      DVHs.Export_DVH_DoseStats(DVHs.All_DVH(i))
		    next
		  else
		    DVHs.Export_DVH_DoseStats(DVHs.All_DVH(DVHGraph.Interactive_index))
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_Results
	#tag Event
		Sub Change()
		  
		  
		  Load_Oarray
		  Load_DVH_Strings
		  Load_Inputfile
		  Load_PBs
		  
		  Var found As Boolean = False
		  
		  If gOpt.results.Connect Then
		    
		    Var sql as String = "select CostValue,Date,MERTProgram,Time,InputFile," _
		    + "OutputFile,Fluence,DVHs,InputConstraints,PB_Data,Plan,Note," _
		    + "Label,InitialScore from Results"
		    Var rs As RowSet = gOpt.results.SelectSQL(sql)
		    
		    While Not rs.AfterLastRow
		      
		      If rs.Column("InitialScore").StringValue=Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,0) And _
		        rs.Column("CostValue").StringValue=Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,1) and _
		        rs.Column("Date").StringValue=Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,2) and _
		        rs.Column("MERTProgram").StringValue=Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,3) and _
		        rs.Column("Time").StringValue=Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,4) and _
		        rs.Column("InputFile").StringValue=Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,5) and _
		        rs.Column("OutputFile").StringValue=Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,6) and _
		        rs.Column("Fluence").StringValue=Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,7) and _
		        rs.Column("DVHs").StringValue=Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,8) and _
		        rs.Column("InputConstraints").StringValue=Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,9) and _
		        rs.Column("PB_Data").StringValue=Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,10) and _
		        rs.Column("Plan").StringValue=Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,11) and _
		        rs.Column("Note").StringValue=Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,12) And _
		        rs.Column("Label").StringValue=Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,13) Then
		        found=True
		        Exit
		        
		      End If
		      rs.MoveToNextRow
		    Wend
		    
		  End If
		  
		  If found = False Then
		    rs = Nil
		  End
		End Sub
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  //----------------------------------
		  // Update database
		  //----------------------------------
		  'dim resultd as Integer
		  'dim sql as String
		  'dim dr as  DatabaseRecord
		  'dim db as SQLiteDatabase //Changed to "SQLiteDatabase by William Davis after REAQLSQPDatabase was found to have  been deprecated
		  'dim rs as RecordSet
		  'dim i as Integer
		  //----------------------------------
		  
		  
		  Select Case hitItem.Text
		    
		  Case  "Refresh"
		    Update_DataBase
		    
		  Case  "Delete Record"
		    
		    Var d As New MessageDialog                  // declare the MessageDialog object
		    Var b As MessageDialogButton                // for handling the result
		    d.Icon = MessageDialog.GraphicCaution       // display warning icon
		    d.ActionButton.Caption = "Delete"
		    d.CancelButton.Visible = True               // show the Cancel button
		    d.AlternateActionButton.Visible = True      // show the "Don't Save" button
		    d.AlternateActionButton.Caption = "Don't Delete"
		    d.Message = "Do you want to remove this record?"
		    'd.Explanation = "If you don't save, your changes will be lost. "
		    
		    b = d.ShowModal                             // display the dialog
		    Select Case b                               // determine which button was pressed.
		    Case d.ActionButton
		      // usedb= new SQLiteDatabase //Changed to "SQLiteDatabase by William Davis after REAQLSQPDatabase was found to have  been deprecated
		      Var db As SQLiteDatabase = gOpt.results
		      
		      If db.Connect Then
		        
		        Var sql as String = "select CostValue,Date,MERTProgram,Time,InputFile,OutputFile," _
		        + "Fluence,DVHs,InputConstraints,PB_Data,Plan,Note,Label,InitialScore from Results"
		        
		        Var rs As RowSet = db.SelectSQL(sql)
		        
		        While Not rs.AfterLastRow
		          
		          If rs.Column("InitialScore").StringValue = _
		            Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,0) And _
		            rs.Column("CostValue").StringValue = _
		            Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,1) And _
		            rs.Column("Date").StringValue = _
		            Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,2) And _
		            rs.Column("MERTProgram").StringValue = _
		            Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,3) And _
		            rs.Column("Time").StringValue = _
		            Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,4) And _
		            rs.Column("InputFile").StringValue = _
		            Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,5) And _
		            rs.Column("OutputFile").StringValue = _
		            Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,6) And _
		            rs.Column("Fluence").StringValue = _
		            Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,7) And _
		            rs.Column("DVHs").StringValue = _
		            Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,8) And _
		            rs.Column("InputConstraints").StringValue = _
		            Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,9) And _
		            rs.Column("PB_Data").StringValue = _
		            Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,10) And _
		            rs.Column("Plan").StringValue = _
		            Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,11) And _
		            rs.Column("Note").StringValue = _
		            Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,12) And _
		            rs.Column("Label").StringValue = _
		            Listbox_Results.CellValueAt(Listbox_Results.SelectedRowIndex,13) Then
		            
		            rs.EditRow
		            If rs <> Nil Then
		              Try
		                rs.RemoveRow
		                db.CommitTransaction
		              Catch error As IOException
		                
		                MessageBox(error.Message)
		                
		              End Try
		              
		            End If
		            
		            
		          End If
		          rs.MoveToNextRow
		        Wend
		      End
		      db.Close
		      Update_DataBase
		    Case d.AlternateActionButton
		      // user pressed Don't Save
		    Case d.CancelButton
		      // user pressed Cancel
		    End Select
		    
		  End Select
		End Function
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  dim MI as MenuItem
		  
		  
		  MI = New MenuItem
		  MI.Text = "Refresh"
		  base.Append MI
		  
		  MI = New MenuItem
		  MI.Text = "Delete Record"
		  base.Append MI
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  Dim i as Integer
		  
		  
		  
		  If rs <> Nil then
		    rs.Edit
		    
		    if column=13 Then
		      for i=1 to rs.FieldCount
		        if rs.IdxField(i).Name="Label" Then
		          rs.IdxField(i).Value =me.CellValueAt(row,column)
		        end
		      Next
		    elseif column=11 Then
		      for i=1 to rs.FieldCount
		        if rs.IdxField(i).Name="Plan" Then
		          rs.IdxField(i).Value =me.CellValueAt(row,column)
		        end
		      Next
		    End if
		    
		    rs.Update
		    gOpt.results.Commit
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
		Name="DoNot"
		Visible=false
		Group="Behavior"
		InitialValue="false"
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
		Name="Map_Grad"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="picture"
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
		Name="X_res"
		Visible=false
		Group="Behavior"
		InitialValue="0.01"
		Type="Single"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Y_res"
		Visible=false
		Group="Behavior"
		InitialValue="0.01"
		Type="Single"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
