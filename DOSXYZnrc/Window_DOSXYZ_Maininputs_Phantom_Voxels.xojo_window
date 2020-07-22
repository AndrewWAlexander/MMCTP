#tag Window
Begin Window Window_DOSXYZ_Maininputs_Phantom_Voxels
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   564
   ImplicitInstance=   True
   LiveResize      =   "False"
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
   Title           =   "Define Voxels"
   Visible         =   True
   Width           =   686
   Begin PushButton PushButton_Close
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Ok"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   275
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   524
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   135
   End
   Begin GroupBox GroupBox1
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Untitled"
      Enabled         =   True
      Height          =   204
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
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   302
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   313
      Begin Label StaticText3
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
         Left            =   31
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
         Text            =   "Minimum Value (cm):"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   341
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   119
      End
      Begin TextField EditField_1_Min
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
         Left            =   168
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
         Top             =   341
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   80
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
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   31
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
         Text            =   "Low side (cm):"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   375
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   119
      End
      Begin TextField EditField_1_Low
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
         Left            =   168
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
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   375
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   80
      End
      Begin TextField EditField_1_high
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
         Left            =   168
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
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   409
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   80
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
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   31
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "High size (cm):"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   409
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   119
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
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   31
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
         Text            =   "Max Value (cm):"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   441
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   119
      End
      Begin TextField EditField_1_Max
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
         Left            =   168
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
         Top             =   441
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   80
      End
   End
   Begin GroupBox GroupBox2
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Untitled"
      Enabled         =   True
      Height          =   204
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   354
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
      Top             =   302
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   312
      Begin Label StaticText10
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
         Left            =   368
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
         Text            =   "Minimum Value (cm):"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   340
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   119
      End
      Begin TextField EditField_2_Min
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
         Left            =   505
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
         Top             =   340
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   80
      End
      Begin TextField EditField_2_Low
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
         Left            =   505
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
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   374
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   80
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
         Left            =   368
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
         Text            =   "Low side (cm):"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   374
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   119
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
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   368
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
         Text            =   "High size (cm):"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   408
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   119
      End
      Begin TextField EditField_2_high
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
         Left            =   505
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
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   408
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   80
      End
      Begin TextField EditField_2_Max
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
         Left            =   505
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
         Top             =   440
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   80
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
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   368
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
         Text            =   "Max Value (cm):"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   440
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   119
      End
   End
   Begin GroupBox GroupBox3
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Untitled"
      Enabled         =   True
      Height          =   286
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   4
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   646
      Begin Listbox Listbox_Voxels
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
         Height          =   196
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         InitialValue    =   ""
         Italic          =   False
         Left            =   31
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
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   85
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   629
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin TextField EditField_Num_Groups
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
         Left            =   162
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
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   50
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   79
      End
      Begin TextField EditField_Min
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
         Left            =   371
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
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   50
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   80
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
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   243
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
         Text            =   "Minimum Value (cm):"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   50
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   119
      End
      Begin TextField EditField_Max
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
         Left            =   576
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
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   50
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   80
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
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   455
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
         Text            =   "Maximum Value (cm):"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   50
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   109
      End
      Begin Label StaticText11
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   31
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
         Text            =   "Number of Groups"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   50
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   119
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  Window_DOSXYZ_Maininputs_Phantom.WindowOpen
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  //---------------------------
		  //
		  // 2015 Update labeling and 3rd precision  point after decimal
		  //---------------------------
		  Dim i as Integer
		  Dim s,min as Single
		  //---------------------------
		  
		  
		  do_nothing=True
		  
		  dosxyz_input=gDOSXYZ.DOSXYZ(Window_DOSXYZ_Properties.egsphant).DOSXYZ_Input(Window_DOSXYZ_Properties.beam)
		  
		  if dosxyz_input.iMAX<0 Then
		    X_Pro=True
		    GroupBox3.Caption="X Voxels"
		    EditField_Num_Groups.value = str(abs(dosxyz_input.iMAX))
		    
		    
		    GroupBox1.Caption="Y Voxels"
		    EditField_1_high.value = Format(dosxyz_input.jMAX_Bound(2),"-#.###")
		    EditField_1_Low.value = Format(dosxyz_input.jMAX_Bound(1),"-#.###")
		    EditField_1_Max.value = Format(dosxyz_input.jMAX_Bound(3),"-#.###")
		    EditField_1_Min.value = Format(dosxyz_input.jMAX_Bound(0),"-#.###")
		    
		    
		    GroupBox2.Caption="Z Voxels"
		    EditField_2_high.value = Format(dosxyz_input.kMAX_Bound(2),"-#.###")
		    EditField_2_Low.value = Format(dosxyz_input.kMAX_Bound(1),"-#.###")
		    EditField_2_Max.value = Format(dosxyz_input.kMAX_Bound(3),"-#.###")
		    EditField_2_Min.value = Format(dosxyz_input.kMAX_Bound(0),"-#.###")
		    
		    
		  elseif dosxyz_input.jMAX<0 Then
		    Y_Pro=True
		    EditField_Num_Groups.value = str(abs(dosxyz_input.jMAX))
		    
		    GroupBox3.Caption="Y Voxels"
		    
		    
		    GroupBox1.Caption="X Voxels"
		    EditField_1_high.value = Format(dosxyz_input.iMAX_Bound(2),"-#.###")
		    EditField_1_Low.value = Format(dosxyz_input.iMAX_Bound(1),"-#.###")
		    EditField_1_Max.value = Format(dosxyz_input.iMAX_Bound(3),"-#.###")
		    EditField_1_Min.value = Format(dosxyz_input.iMAX_Bound(0),"-#.###")
		    
		    
		    GroupBox2.Caption="Z Voxels"
		    EditField_2_high.value = Format(dosxyz_input.kMAX_Bound(2),"-#.###")
		    EditField_2_Low.value = Format(dosxyz_input.kMAX_Bound(1),"-#.###")
		    EditField_2_Max.value = Format(dosxyz_input.kMAX_Bound(3),"-#.###")
		    EditField_2_Min.value = Format(dosxyz_input.kMAX_Bound(0),"-#.###")
		    
		    
		    
		  elseif dosxyz_input.kMAX<0 Then
		    Z_Pro=True
		    GroupBox3.Caption="Z Voxels"
		    EditField_Num_Groups.value = str(abs(dosxyz_input.KMAX))
		    
		    
		    GroupBox1.Caption="X Voxels"
		    EditField_1_high.value = Format(dosxyz_input.iMAX_Bound(2),"-#.###")
		    EditField_1_Low.value = Format(dosxyz_input.iMAX_Bound(1),"-#.###")
		    EditField_1_Max.value = Format(dosxyz_input.iMAX_Bound(3),"-#.###")
		    EditField_1_Min.value = Format(dosxyz_input.iMAX_Bound(0),"-#.###")
		    
		    
		    GroupBox2.Caption="Y Voxels"
		    EditField_2_high.value = Format(dosxyz_input.jMAX_Bound(2),"-#.###")
		    EditField_2_Low.value = Format(dosxyz_input.jMAX_Bound(1),"-#.###")
		    EditField_2_Max.value = Format(dosxyz_input.jMAX_Bound(3),"-#.###")
		    EditField_2_Min.value = Format(dosxyz_input.jMAX_Bound(0),"-#.###")
		  end
		  
		  
		  Pop_Listbox
		  
		  
		  do_nothing=False
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Find_Max_Value()
		  Dim s,min as Single
		  Dim i as Integer
		  
		  
		  if Z_Pro Then
		    
		    s=dosxyz_input.KMAX_Group_Min
		    for i=1 to abs(dosxyz_input.kMAX)
		      s=s+dosxyz_input.kMAX_Group(i-1)*dosxyz_input.KMAX_Group_Num(i-1)
		    next
		    
		  elseif x_Pro Then
		    
		    s=dosxyz_input.IMAX_Group_Min
		    for i=1 to abs(dosxyz_input.iMAX)
		      s=s+dosxyz_input.iMAX_Group(i-1)*dosxyz_input.iMAX_Group_Num(i-1)
		    next
		    
		    
		  elseif y_Pro Then
		    
		    s=dosxyz_input.jMAX_Group_Min
		    for i=1 to abs(dosxyz_input.jMAX)
		      s=s+dosxyz_input.jMAX_Group(i-1)*dosxyz_input.jMAX_Group_Num(i-1)
		    next
		    
		    
		  end
		  
		  EditField_Max.value = Format(s,"-#.###")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Pop_Listbox()
		  Dim s,min as Single
		  Dim i as Integer
		  
		  Listbox_Voxels.HeaderAt(0)="Width"
		  Listbox_Voxels.HeaderAt(1)="Number in group"
		  Listbox_Voxels.DeleteAllRows
		  
		  
		  if Z_Pro Then
		    for i=1 to abs(dosxyz_input.kMAX)
		      Listbox_Voxels.AddRow str(dosxyz_input.kMAX_Group(i-1))
		      Listbox_Voxels.CellValueAt(i-1,1) =str(dosxyz_input.KMAX_Group_Num(i-1))
		      Listbox_Voxels.CellType(i-1,0) =3
		      Listbox_Voxels.CellType(i-1,1) =3
		    next
		    min=dosxyz_input.KMAX_Group_Min
		    
		    s=min
		    for i=1 to abs(dosxyz_input.kMAX)
		      s=s+dosxyz_input.kMAX_Group(i-1)*dosxyz_input.KMAX_Group_Num(i-1)
		    next
		    
		    
		    
		    
		    
		    
		    
		  elseif x_Pro Then
		    for i=1 to abs(dosxyz_input.iMAX)
		      Listbox_Voxels.AddRow str(dosxyz_input.iMAX_Group(i-1))
		      Listbox_Voxels.CellValueAt(i-1,1) =str(dosxyz_input.iMAX_Group_Num(i-1))
		      Listbox_Voxels.CellType(i-1,0) =3
		      Listbox_Voxels.CellType(i-1,1) =3
		    next
		    
		    s=dosxyz_input.IMAX_Group_Min
		    for i=1 to abs(dosxyz_input.iMAX)
		      s=s+dosxyz_input.iMAX_Group(i-1)*dosxyz_input.iMAX_Group_Num(i-1)
		    next
		    min=dosxyz_input.IMAX_Group_Min
		    
		  elseif y_Pro Then
		    for i=1 to abs(dosxyz_input.jMAX)
		      Listbox_Voxels.AddRow str(dosxyz_input.jMAX_Group(i-1))
		      Listbox_Voxels.CellValueAt(i-1,1) =str(dosxyz_input.jMAX_Group_Num(i-1))
		      Listbox_Voxels.CellType(i-1,0) =3
		      Listbox_Voxels.CellType(i-1,1) =3
		    next
		    
		    
		    s=dosxyz_input.jMAX_Group_Min
		    for i=1 to abs(dosxyz_input.jMAX)
		      s=s+dosxyz_input.jMAX_Group(i-1)*dosxyz_input.jMAX_Group_Num(i-1)
		    next
		    
		    min=dosxyz_input.jMAX_Group_Min
		  end
		  
		  EditField_Max.value = Format(s,"-#.###")
		  EditField_Min.value = Format(min,"-#.###")
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		dosxyz_input As class_dosxyZ_input
	#tag EndProperty

	#tag Property, Flags = &h0
		do_nothing As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		egsphant_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		X_Pro As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Y_Pro As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Z_Pro As boolean = false
	#tag EndProperty


#tag EndWindowCode

#tag Events PushButton_Close
	#tag Event
		Sub Action()
		  Window_DOSXYZ_Maininputs_Phantom_Voxels.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_1_Min
	#tag Event
		Sub TextChange()
		  if do_nothing = False Then
		    
		    if X_Pro Then
		      dosxyz_input.jMAX_Bound(0)=val(me.Text)
		    Elseif Y_Pro Then
		      dosxyz_input.iMAX_Bound(0)=val(me.Text)
		    elseif Z_Pro Then
		      dosxyz_input.iMAX_Bound(0)=val(me.Text)
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_1_Low
	#tag Event
		Sub TextChange()
		  if do_nothing = False Then
		    
		    if X_Pro Then
		      dosxyz_input.jMAX_Bound(1)=val(me.Text)
		    Elseif Y_Pro Then
		      dosxyz_input.iMAX_Bound(1)=val(me.Text)
		    elseif Z_Pro Then
		      dosxyz_input.iMAX_Bound(1)=val(me.Text)
		    end
		    
		    
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_1_high
	#tag Event
		Sub TextChange()
		  if do_nothing = False Then
		    if X_Pro Then
		      dosxyz_input.jMAX_Bound(2)=val(me.Text)
		    Elseif Y_Pro Then
		      dosxyz_input.iMAX_Bound(2)=val(me.Text)
		    elseif Z_Pro Then
		      dosxyz_input.iMAX_Bound(2)=val(me.Text)
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_1_Max
	#tag Event
		Sub TextChange()
		  if do_nothing = False Then
		    
		    if X_Pro Then
		      dosxyz_input.jMAX_Bound(3)=val(me.Text)
		    Elseif Y_Pro Then
		      dosxyz_input.iMAX_Bound(3)=val(me.Text)
		    elseif Z_Pro Then
		      dosxyz_input.iMAX_Bound(3)=val(me.Text)
		    end
		    
		    
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_2_Min
	#tag Event
		Sub TextChange()
		  if do_nothing = False Then
		    if X_Pro Then
		      dosxyz_input.kMAX_Bound(0)=val(me.Text)
		    Elseif Y_Pro Then
		      dosxyz_input.kMAX_Bound(0)=val(me.Text)
		    elseif Z_Pro Then
		      dosxyz_input.jMAX_Bound(0)=val(me.Text)
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_2_Low
	#tag Event
		Sub TextChange()
		  if do_nothing = False Then
		    if X_Pro Then
		      dosxyz_input.kMAX_Bound(1)=val(me.Text)
		    Elseif Y_Pro Then
		      dosxyz_input.kMAX_Bound(1)=val(me.Text)
		    elseif Z_Pro Then
		      dosxyz_input.jMAX_Bound(1)=val(me.Text)
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_2_high
	#tag Event
		Sub TextChange()
		  if do_nothing = False Then
		    if X_Pro Then
		      dosxyz_input.kMAX_Bound(2)=val(me.Text)
		    Elseif Y_Pro Then
		      dosxyz_input.kMAX_Bound(2)=val(me.Text)
		    elseif Z_Pro Then
		      dosxyz_input.jMAX_Bound(2)=val(me.Text)
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_2_Max
	#tag Event
		Sub TextChange()
		  if do_nothing = False Then
		    if X_Pro Then
		      dosxyz_input.kMAX_Bound(3)=val(me.Text)
		    Elseif Y_Pro Then
		      dosxyz_input.kMAX_Bound(3)=val(me.Text)
		    elseif Z_Pro Then
		      dosxyz_input.jMAX_Bound(3)=val(me.Text)
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_Voxels
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  //----------------------------
		  //
		  //
		  //----------------------------
		  Dim i as integer
		  Dim s as Single
		  //----------------------------
		  
		  
		  
		  if column=0 Then
		    
		    if X_Pro Then
		      dosxyz_input.iMAX_Group(row)=val(me.CellValueAt(row,column))
		    elseif Y_Pro Then
		      dosxyz_input.jMAX_Group(row)=val(me.CellValueAt(row,column))
		    elseif Z_Pro Then
		      dosxyz_input.KMAX_Group(row)=val(me.CellValueAt(row,column))
		    end
		    
		    
		  elseif column=1 Then
		    if X_Pro Then
		      dosxyz_input.iMAX_Group_Num(row)=val(me.CellValueAt(row,column))
		    elseif Y_Pro Then
		      dosxyz_input.jMAX_Group_Num(row)=val(me.CellValueAt(row,column))
		    elseif Z_Pro Then
		      dosxyz_input.KMAX_Group_Num(row)=val(me.CellValueAt(row,column))
		    end
		  end
		  
		  
		  
		  
		  
		  
		  
		  
		  if X_Pro Then
		    dosxyz_input.iU=0
		    for i=1 to abs(dosxyz_input.iMAX)
		      dosxyz_input.iU=dosxyz_input.iU+dosxyz_input.iMAX_Group_Num(i-1)
		    next
		    
		  elseif Y_Pro then
		    dosxyz_input.jU=0
		    
		    for i=1 to abs(dosxyz_input.jMAX)
		      dosxyz_input.jU=dosxyz_input.jU+dosxyz_input.jMAX_Group_Num(i-1)
		    next
		    
		  elseif z_Pro then
		    dosxyz_input.KU=0
		    for i=1 to abs(dosxyz_input.kMAX)
		      dosxyz_input.KU=dosxyz_input.KU+dosxyz_input.KMAX_Group_Num(i-1)
		    next
		    
		  end
		  
		  Find_Max_Value
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Num_Groups
	#tag Event
		Sub TextChange()
		  if do_nothing=False Then
		    
		    if X_Pro Then
		      dosxyz_input.iMAX=-val(me.Text)
		      ReDim dosxyz_input.iMAX_Group(Abs(dosxyz_input.iMAX)-1)
		      ReDim dosxyz_input.iMAX_Group_Num(abs(dosxyz_input.iMAX)-1)
		    Elseif Y_Pro Then
		      dosxyz_input.jMAX=-val(me.Text)
		      ReDim dosxyz_input.jMAX_Group(Abs(dosxyz_input.jMAX)-1)
		      ReDim dosxyz_input.jMAX_Group_Num(abs(dosxyz_input.jMAX)-1)
		      
		    elseif Z_Pro Then
		      dosxyz_input.KMAX=-val(me.Text)
		      ReDim dosxyz_input.kMAX_Group(Abs(dosxyz_input.kMAX)-1)
		      ReDim dosxyz_input.kMAX_Group_Num(abs(dosxyz_input.kMAX)-1)
		    end
		    Pop_Listbox
		    Find_Max_Value
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Min
	#tag Event
		Sub TextChange()
		  if X_Pro Then
		    dosxyz_input.IMAX_Group_Min=val(me.Text)
		  Elseif Y_Pro Then
		    dosxyz_input.jMAX_Group_Min=val(me.Text)
		    
		  elseif Z_Pro Then
		    dosxyz_input.kMAX_Group_Min=val(me.Text)
		    
		  end
		  
		  Find_Max_Value
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
		Name="do_nothing"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="egsphant_index"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
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
		Name="X_Pro"
		Visible=false
		Group="Behavior"
		InitialValue="false"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Y_Pro"
		Visible=false
		Group="Behavior"
		InitialValue="false"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Z_Pro"
		Visible=false
		Group="Behavior"
		InitialValue="false"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
