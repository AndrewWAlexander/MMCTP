#tag Window
Begin Window Window_DVH_Plot
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   703
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   400
   MinimizeButton  =   True
   MinWidth        =   650
   Placement       =   0
   Resizeable      =   True
   Title           =   "DVH"
   Visible         =   True
   Width           =   1062
   Begin Canvas_Plot DVHGraph
      AcceptFocus     =   False
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
      EraseBackground =   "False"
      Errors          =   False
      Graph_Title     =   ""
      Height          =   410
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Interactive     =   False
      Interactive_index=   0
      Interactive_String=   ""
      Left            =   8
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
      Top             =   0
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   1046
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
   Begin GroupBox GroupBox1
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "DVH Type"
      Enabled         =   True
      Height          =   81
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   16
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   416
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   134
      Begin RadioButton CumuRadioButton
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Cumulative"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   24
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
         Top             =   470
         Transparent     =   False
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   100
      End
      Begin RadioButton DiffRadioButton
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Differential"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   24
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
         Top             =   441
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
   End
   Begin Listbox Listbox_Graphs
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   12
      ColumnsResizable=   True
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      DropIndicatorVisible=   False
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   2
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   186
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   8
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   True
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   508
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   1046
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin GroupBox GroupBox2
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Scale"
      Enabled         =   True
      Height          =   81
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   162
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   416
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   243
      Begin Label StaticText_maxd11
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
         Left            =   175
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Min X"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   10.0
         TextUnit        =   0
         Top             =   470
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   38
      End
      Begin TextField TextField_X_min
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
         Left            =   215
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   470
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   59
      End
      Begin TextField TextField_Xmax
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
         Left            =   215
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
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
         Top             =   439
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   59
      End
      Begin Label StaticText_maxd1
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
         Left            =   175
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Max X"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   10.0
         TextUnit        =   0
         Top             =   439
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   38
      End
      Begin Label StaticText_maxd12
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
         Left            =   286
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Max Y"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   10.0
         TextUnit        =   0
         Top             =   439
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   37
      End
      Begin TextField TextField_Ymax
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
         Left            =   335
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   439
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   59
      End
      Begin Label StaticText_maxd121
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
         Left            =   286
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Min Y"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   10.0
         TextUnit        =   0
         Top             =   470
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   37
      End
      Begin TextField TextField_Ymin
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
         Left            =   335
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
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
         Top             =   470
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   59
      End
   End
   Begin GroupBox GroupBox3
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Value"
      Enabled         =   True
      Height          =   81
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   436
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   29
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   416
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   131
      Begin Label YStaticText
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
         Left            =   447
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Y:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   470
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   23
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
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   480
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   10.0
         TextUnit        =   0
         Top             =   469
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   70
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
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   480
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
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
         TextSize        =   10.0
         TextUnit        =   0
         Top             =   437
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   70
      End
      Begin Label XStaticText
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
         Left            =   447
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "X:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   438
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   28
      End
   End
   Begin GroupBox GroupBox4
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Export"
      Enabled         =   True
      Height          =   81
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   821
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   30
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   416
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   221
      Begin BevelButton ExportButton_Export_Text
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Export text"
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
         InitialParent   =   "GroupBox4"
         Italic          =   False
         Left            =   831
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuValue       =   "0"
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   436
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   99
      End
      Begin BevelButton ExportButton_XMGR
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Export xmgr"
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
         InitialParent   =   "GroupBox4"
         Italic          =   False
         Left            =   831
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuValue       =   "0"
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   468
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   99
      End
      Begin BevelButton ExportButton_Export_DoseStat
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Export DoseStat"
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
         InitialParent   =   "GroupBox4"
         Italic          =   False
         Left            =   935
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuValue       =   "0"
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   437
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   99
      End
      Begin BevelButton ExportButton_PyPlot
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Export PyPlot"
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
         InitialParent   =   "GroupBox4"
         Italic          =   False
         Left            =   935
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuValue       =   "0"
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   468
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   99
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  app.which_window_DVH=False
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  app.which_window_DVH=True
		  me.Title="DVH - "+gRTOG.Patient_Name+" "+gRTOG.Patient_Surname
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  DVHGraph.Resize_Canvas
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  DVHGraph.Resize_Canvas
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Load_All_DVHs()
		  //------------------------------------------
		  // Load the DVHs into graph points
		  //
		  //------------------------------------------
		  Dim i ,k as Integer
		  Dim pp as Class_Profile_One
		  Dim pxy as Class_Points
		  Dim rand as Random
		  //------------------------------------------
		  
		  rand=new Random
		  
		  for k=0 to UBound(DVH)
		    pp= new Class_Profile_One
		    if DVH_index=-1 or DVH_index=k Then
		      pp.Show=True
		    else
		      pp.Show=False
		    end
		    
		    pp.X_Label="Dose " // The x label.
		    pp.Units_x=DVH(k).Dose_Units
		    pp.Value_Label="Volume" +chr(13) //Use Chr(13) followed by a space as a space on the Y_Label.
		    pp.Value_Units="%"
		    pp.Symbol=rand.InRange(1,6)
		    
		    for i=0 to DVH(k).DVH_bins-1   //n bins
		      pxy=new Class_Points
		      pxy.X_cm=DVH(k).mindose+(-DVH(k).mindose+DVH(k).maxdose)*i/DVH(k).DVH_bins
		      pxy.Value=DVH(k).DVH(i)
		      pp.Points.Append pxy
		    next
		    
		    //here do cummulative if required.
		    if CumuRadioButton.Value then
		      for i=DVH(k).DVH_bins-2 DownTo 0
		        pp.Points(i).Value=pp.Points(i).Value+pp.Points(i+1).Value
		      next
		    end if
		    
		    pp.Point_Size=3
		    pp.show_line=True
		    pp.Colour=DVH(k).stru_color
		    
		    
		    if UBound(me.DVHGraph.Profiles.One_Profile)>= k Then
		      me.DVHGraph.Profiles.One_Profile(k)=pp
		    else
		      me.DVHGraph.Profiles.One_Profile.Append pp
		    end
		    
		  next
		  DVHGraph.Default_Settings
		  DVHGraph.Redraw
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReDrawGraphs()
		  //-------------------------------------
		  // Set graphing properties
		  //get which DVH is selected and put the volumes
		  //-------------------------------------
		  Dim i as Integer
		  //-------------------------------------
		  
		  
		  DVHGraph.Default_Settings
		  DVH_index=Listbox_Graphs.ListIndex
		  
		  if Len(TextField_Xmax.Text)>0 Then
		    DVHGraph.x_Maximum=val(TextField_Xmax.Text)
		  end
		  
		  if Len(TextField_X_min.Text)>0 Then
		    DVHGraph.x_Minimum=val(TextField_X_min.Text)
		  end
		  
		  if Len(TextField_Ymax.Text)>0 Then
		    DVHGraph.Y_Maximum=val(TextField_Ymax.Text)
		  end
		  
		  if Len(TextField_Ymin.Text)>0 Then
		    DVHGraph.y_Minimum=val(TextField_Ymin.Text)
		  end
		  
		  
		  if DVH_index >-1 then
		    DVHGraph.Interactive_index=DVH_index
		    DVHGraph.Interactive=True
		    
		    for i =0 to UBound(DVHGraph.Profiles.One_Profile)
		      DVHGraph.Profiles.One_Profile(i).Show=False
		    next
		    DVHGraph.Profiles.One_Profile(DVH_index).Show=True
		    DVHGraph.Interactive=True
		    DVHGraph.Interactive_index=DVH_index
		  else
		    
		    DVHGraph.Interactive=False
		    for i =0 to UBound(DVHGraph.Profiles.One_Profile) 
		      if Listbox_Graphs.ListCount>i then
		        DVHGraph.Profiles.One_Profile(i).Show=Listbox_Graphs.CellCheck(i,2)
		      end
		    next
		    DVHGraph.Interactive=False
		    
		    
		  end if
		  
		  
		  
		  //Properties to set depending on your preferences....
		  me.DVHGraph.Box=True  // True if you want a box around the plot.
		  me.DVHGraph.Axis_Visible=True   // True if you want the axis visible.
		  me.DVHGraph.Center_Scale=False  // True if you want the scales written down the axis, not on the edges.
		  
		  me.DVHGraph.Graph_Title="DVH"
		  
		  
		  
		  
		  me.DVHGraph.drawXsub = true
		  me.DVHGraph.drawYsub = true
		  
		  // Set following to set axes ranges manually.  Ignored if xAuto or yAuto set true
		  
		  me.DVHGraph.xLabelPowerAuto = false
		  me.DVHGraph.xLabelPower = 0
		  me.DVHGraph.yLabelPowerAuto = false
		  me.DVHGraph.yLabelPower = 0
		  me.DVHGraph.ReSize_Canvas  
		  
		  // Needed to initialize the canvas size.  If you want your window to
		  //resize your plot, you need to put a call to Resize_Canvas in your resize event in the
		  
		  //window with the plot_Canvas.
		  me.DVHGraph.Redraw
		  DVHGraph.Resize_Canvas
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Window_Open()
		  // --------------------------------
		  // Method to initialize the DVH window
		  // For MMCTP DVHs
		  // ---------------------------------
		  Dim i,k,x,h as Integer
		  Dim temp_DVH as Class_DVH_One
		  
		  ReDim DVH(-1)
		  
		  for k=0 to Window_Treatment.ListBox_DVH_Graphs.ColumnCount
		    for i=0 to ubound(grtog.Structures.Structures)
		      if Window_Treatment.ListBox_DVH_Graphs.CellCheck(i,k) then
		        for x=0 to UBound(gDVH.All_DVH)
		          if gDVH.All_DVH(x).Name=Window_Treatment.ListBox_DVH_Graphs.Heading(k) and _
		            gDVH.All_DVH(x).struc_names=grtog.Structures.Structures(i).Structure_Name Then
		            temp_DVH=gDVH.All_DVH(x)
		            DVH.Append temp_DVH
		          end
		        next
		      end
		    next
		  next
		  
		  DVHGraph.Profiles=new Class_Profiles_All
		  
		  'For All DVH graphs load data into  plot functions
		  Load_All_DVHs
		  
		  DVHGraph.Default_Settings
		  
		  Listbox_Graphs.deleteAllRows
		  Listbox_Graphs.Heading(0)="Name"
		  Listbox_Graphs.Heading(1)="col"
		  Listbox_Graphs.Heading(2)="show"
		  Listbox_Graphs.Heading(3)="mean dose"
		  Listbox_Graphs.Heading(4)="mean uncer"
		  Listbox_Graphs.Heading(5)="stdev dose"
		  Listbox_Graphs.Heading(6)="min dose"
		  Listbox_Graphs.Heading(7)="max dose"
		  Listbox_Graphs.Heading(8)="D50"
		  Listbox_Graphs.Heading(9)="Unit voxel Vol cm^3"
		  Listbox_Graphs.Heading(10)="Total voxel Vol cm^3"
		  Listbox_Graphs.Heading(11)="Geo Vol cm^3"
		  
		  Listbox_Graphs.ColumnWidths="25%,5%,5%,10%,10%,10%,10%,10%,10%,10%,10%,10%"
		  
		  for i=0 to ubound(DVH)
		    Listbox_Graphs.addRow DVH(i).Name +" "+DVH(i).struc_names
		    Listbox_Graphs.CellType(i,2)=2
		    DVHGraph.Profiles.One_Profile(i).Show=True
		    Listbox_Graphs.CellCheck(i,2)=DVHGraph.Profiles.One_Profile(i).Show
		    
		    if abs(DVH(i).avgdose)<0.001  Then
		      Listbox_Graphs.Cell(i,3)=Format(DVH(i).avgdose,"-0.00###e")
		    else
		      Listbox_Graphs.Cell(i,3)=Format(DVH(i).avgdose,"-0.00##")
		    end
		    
		    if abs(DVH(i).avg_error)<0.001 Then
		      Listbox_Graphs.Cell(i,4)=Format(DVH(i).avg_error,"-0.00###e")
		    else
		      Listbox_Graphs.Cell(i,4)=Format(DVH(i).avg_error,"-0.00##")
		    end
		    
		    if abs(DVH(i).stdev)<0.01 Then
		      Listbox_Graphs.Cell(i,5)=Format(DVH(i).stdev,"-0.00###e")
		    else
		      Listbox_Graphs.Cell(i,5)=Format(DVH(i).stdev,"-0.00##")
		    end
		    
		    if abs(DVH(i).mindose)<0.01 Then
		      Listbox_Graphs.Cell(i,6)=Format(DVH(i).mindose,"-0.00###e")
		    else
		      Listbox_Graphs.Cell(i,6)=Format(DVH(i).mindose,"-0.00##")
		    end
		    
		    if abs(DVH(i).maxdose)<0.001 Then
		      Listbox_Graphs.Cell(i,7)=Format(DVH(i).maxdose,"-0.00###e")
		    else
		      Listbox_Graphs.Cell(i,7)=Format(DVH(i).maxdose,"-0.00##")
		    end
		    
		    if abs(DVH(i).D50)<0.001 Then
		      Listbox_Graphs.Cell(i,8)=Format(DVH(i).D50,"-0.00###e")
		    else
		      Listbox_Graphs.Cell(i,8)=Format(DVH(i).D50,"-0.00##")
		    end
		    
		    if abs(DVH(i).pixelvolume)>0.001 Then
		      Listbox_Graphs.Cell(i,9)=Format(DVH(i).pixelvolume,"-0.00###")
		    else
		      Listbox_Graphs.Cell(i,9)=Format(DVH(i).pixelvolume,"-0.00###e")
		    end
		    
		    if abs(DVH(i).pixelvolume*DVH(i).NumberofPixels)>0.001 Then
		      Listbox_Graphs.Cell(i,10)=Format(DVH(i).pixelvolume*DVH(i).NumberofPixels,"-0.00###")
		    else
		      Listbox_Graphs.Cell(i,10)=Format(DVH(i).pixelvolume*DVH(i).NumberofPixels,"-0.00###e")
		    end
		    
		    if abs(DVH(i).svolume)>0.001 Then
		      Listbox_Graphs.Cell(i,11)=Format(DVH(i).svolume,"-0.00###")
		    else
		      Listbox_Graphs.Cell(i,11)=Format(DVH(i).svolume,"-0.00###e")
		    end
		    
		    
		    
		    
		  next
		  Listbox_Graphs.listIndex=-1
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		DVH(-1) As Class_DVH_One
	#tag EndProperty

	#tag Property, Flags = &h0
		DVH_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Editing_donothing_X As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Editing_donothing_Y As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		xval As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events DVHGraph
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
		  
		  if me.Interactive Then
		    me.Plotactivepoint_CalculateValue
		  end
		  //draw the position
		  me.Redraw
		  
		  Editing_donothing_X=True
		  Editing_donothing_Y=True
		  EditField_X.value = me.x_mouse_value_str
		  EditField_Y.value = me.y_mouse_value_str
		  Editing_donothing_X=False
		  Editing_donothing_Y=False
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CumuRadioButton
	#tag Event
		Sub Action()
		  Load_All_DVHs
		  ReDrawGraphs
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DiffRadioButton
	#tag Event
		Sub Action()
		  Load_All_DVHs
		  ReDrawGraphs
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_Graphs
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  Dim i as Integer
		  
		  if row>-1 and column=1 and row<=UBound(DVH)Then
		    g.ForeColor=DVH(row).stru_color
		    g.FillRect 0,0,g.Width,g.Height
		  end
		End Function
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  ReDrawGraphs
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  dim tmpcolor as color
		  dim i As  integer
		  
		  if column=1 and  row>-1 then
		    tmpcolor=DVH(row).stru_color
		    if(selectcolor(tmpcolor,"Select a color")) then
		      DVH(row).stru_color=tmpcolor
		      DVHGraph.Profiles.One_Profile(row).Colour=tmpcolor
		      gDVH.Save_DVH=True
		    end
		  end
		  ReDrawGraphs
		  
		  
		  
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  if column=2 Then
		    DVHGraph.Profiles.One_Profile(row).Show=me.CellCheck(row,column)
		  end
		  ReDrawGraphs
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  ReDrawGraphs
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_X_min
	#tag Event
		Sub TextChange()
		  DVHGraph.x_Minimum=val(me.Text)
		  DVHGraph.Redraw
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_Xmax
	#tag Event
		Sub TextChange()
		  DVHGraph.x_Maximum=val(me.Text)
		  DVHGraph.Redraw
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_Ymax
	#tag Event
		Sub TextChange()
		  DVHGraph.y_Maximum=val(me.Text)
		  DVHGraph.Redraw
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_Ymin
	#tag Event
		Sub TextChange()
		  DVHGraph.y_Minimum=val(me.Text)
		  DVHGraph.Redraw
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Y
	#tag Event
		Sub TextChange()
		  //----------------------------
		  //
		  //
		  //----------------------------
		  Dim r,gg as Single
		  Dim fff(-1) as Class_Points
		  Dim ff as new Class_Points
		  //----------------------------
		  
		  if Editing_donothing_X=False Then
		    Editing_donothing_Y=True
		    if DVHGraph.Interactive Then
		      gg=val(me.Text)
		      fff=DVHGraph.Profiles.One_Profile(DVHGraph.Interactive_index).Get_Point_at_Value(gg)
		      if UBound(fff)<0 Then
		        Return
		      end
		      ff=fff(0)
		      r=ff.X_cm
		      EditField_X.value = Format(r,"-#.###")
		      DVHGraph.x_mouse_value=r
		      DVHGraph.y_mouse_value=gg
		      DVHGraph.x_mouse=DVHGraph.XS(DVHGraph.x_mouse_value)
		      DVHGraph.y_mouse=DVHGraph.YS(DVHGraph.y_mouse_value)
		      DVHGraph.PlotactivePoint_Label
		      DVHGraph.Redraw
		    end
		    Editing_donothing_Y=False
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_X
	#tag Event
		Sub TextChange()
		  Dim r,gg as Single
		  Dim ff as new Class_Points
		  
		  if Editing_donothing_Y=False Then
		    Editing_donothing_X=True
		    if DVHGraph.Interactive Then
		      gg=val(me.Text)
		      DVHGraph.x_mouse_value=gg
		      r=DVHGraph.Profiles.One_Profile(DVHGraph.Interactive_index).Get_Value_at_Point(gg,0,0,false)
		      EditField_Y.value = Format(r,"-#.###")
		      DVHGraph.y_mouse_value=r
		      DVHGraph.x_mouse=DVHGraph.XS(DVHGraph.x_mouse_value)
		      DVHGraph.y_mouse=DVHGraph.YS(DVHGraph.y_mouse_value)
		      DVHGraph.PlotactivePoint_Label
		      DVHGraph.Redraw
		    end
		    Editing_donothing_X=False
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ExportButton_Export_Text
	#tag Event
		Sub Action()
		  //-------------------------------
		  //
		  //
		  //-------------------------------
		  Dim j as integer
		  //-------------------------------
		  
		  
		  if Listbox_Graphs.ListIndex <>-1 then
		    j=Listbox_Graphs.ListIndex 
		    if j>-1 and j<=UBound(DVH) Then
		      gDVH.Export_DVH_Text(DVH(j))
		    end
		  else
		    MsgBox "1st, select a graph"
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ExportButton_XMGR
	#tag Event
		Sub Action()
		  //---------------------------------------
		  // Export DVH data into XMGR format
		  //
		  
		  DVHGraph.Profiles.Export_DVH_XMGR
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ExportButton_Export_DoseStat
	#tag Event
		Sub Action()
		  //-------------------------------
		  //
		  //
		  //-------------------------------
		  Dim f as FolderItem
		  Dim i,j as integer
		  Dim ts as TextOutputStream
		  Dim dvh_file, line as String
		  //-------------------------------
		  
		  
		  dvh_file=""
		  f=GetSaveFolderItem("","DoseStats-"+gRTOG.Patient_Name+"-"+gRTOG.Patient_Surname)
		  if f<>nil then
		    dvh_file=dvh_file+gDoseStats.Export_Stat_Header+local_endline
		    for j=0 to UBound(DVH)
		      dvh_file=dvh_file+gDoseStats.Export_Stat(DVH(j))+local_endline
		    next
		    ts=f.CreateTextFile
		    if ts<> nil Then
		      ts.Write dvh_file
		      ts.Close
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ExportButton_PyPlot
	#tag Event
		Sub Action()
		  //---------------------------------------
		  // Export DVH data into pyplot format
		  //
		  
		  DVHGraph.Profiles.Export_DVH_PyPlot
		  
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
		Name="DVH_index"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Editing_donothing_X"
		Visible=false
		Group="Behavior"
		InitialValue="false"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Editing_donothing_Y"
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
		Name="xval"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
