#tag Window
Begin Window Window_IsoDose
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   3
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   486
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
   Placement       =   1
   Resizeable      =   False
   Title           =   "IsoDose"
   Visible         =   True
   Width           =   888
   Begin GroupBox GroupBox1
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "IsoDose Properties"
      Enabled         =   True
      Height          =   369
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   577
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   291
      Begin GroupBox GroupBox_Relative
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Relative Options"
         Enabled         =   True
         Height          =   128
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   586
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
         Top             =   100
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   268
         Begin TextField EditField_normalize
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
            InitialParent   =   "GroupBox_Relative"
            Italic          =   False
            Left            =   771
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
            Text            =   "100"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   190
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   68
         End
         Begin RadioButton RadioButton_iso
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Normalized to Isocenter Dose"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Relative"
            Italic          =   False
            Left            =   596
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
            Top             =   158
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   231
         End
         Begin RadioButton RadioButton_max
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Normalized to Maximum Dose"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Relative"
            Italic          =   False
            Left            =   596
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
            Top             =   126
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   213
         End
         Begin RadioButton RadioButton_todose
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Normalized to Dose ="
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Relative"
            Italic          =   False
            Left            =   596
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
            Top             =   190
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   163
         End
      End
      Begin RadioButton RadioButton_abs
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Absolute dose values"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   586
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
         Top             =   42
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   174
      End
      Begin RadioButton RadioButton_Relative
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Relative dose values"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   586
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
         Top             =   74
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   173
      End
      Begin TextField EditField_Font_Size
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
         Left            =   695
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
         Text            =   "2"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   294
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
         Left            =   596
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
         Text            =   "Fontsize:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   295
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   56
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
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   596
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
         Text            =   "Font:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   268
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   32
      End
      Begin TextField EditField_Font
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
         Left            =   695
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
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "2"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   267
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   80
      End
      Begin TextField EditField_LineThickness
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
         Left            =   695
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
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "2"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   240
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
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   596
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
         Text            =   "Lines Thickness:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   241
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   93
      End
      Begin PushButton PushButton_Save_System
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   0
         Cancel          =   False
         Caption         =   "Save Properties as Default settings"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   586
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   327
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   232
      End
      Begin PushButton PushButton_Save_Patient
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   0
         Cancel          =   False
         Caption         =   "Save Properties for Patient"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   586
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   10
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   354
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   232
      End
   End
   Begin GroupBox GroupBox2
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "IsoDose Line"
      Enabled         =   True
      Height          =   369
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
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   545
      Begin ListBox ListBox_Isodose
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
         DropIndicatorVisible=   False
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   3
         GridLinesVertical=   3
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   297
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         InitialValue    =   ""
         Italic          =   False
         Left            =   37
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
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   40
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   516
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin BevelButton DeleteBevelButton
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Delete"
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
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   37
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         MenuValue       =   "0"
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   343
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   60
      End
      Begin TextField EditField_NewValue
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
         Left            =   406
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
         Text            =   "100"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   343
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   53
      End
      Begin BevelButton AddBevelButton
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Add"
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
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   488
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         MenuValue       =   "0"
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   343
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   60
      End
   End
   Begin GroupBox GroupBox3
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Superimpose 2nd set of lines"
      Enabled         =   True
      Height          =   89
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
      Scope           =   0
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   384
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   848
      Begin TextField EditField_LineThicknessSave
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
         Left            =   478
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
         Text            =   "2"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   441
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   80
      End
      Begin RadioButton RadioButton_Solid
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Solid lines"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   478
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
         Top             =   410
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   87
      End
      Begin RadioButton RadioButton_Dashed
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Dashed lines"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   339
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
         Top             =   412
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   99
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
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   339
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Save Line Thickness:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   443
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   120
      End
      Begin PushButton PushButton_Erase
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   0
         Cancel          =   False
         Caption         =   "Erase Saved Lines"
         Default         =   False
         Enabled         =   True
         Height          =   20
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
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   443
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   215
      End
      Begin PushButton PushButton_Save
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   0
         Cancel          =   False
         Caption         =   "Save Lines For Selected Dose"
         Default         =   False
         Enabled         =   True
         Height          =   20
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
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   411
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   215
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  gVis.Iso.Calculate_Values
		  Window_Treatment.window_canvas_refresh
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  ListBox_Isodose.HeaderAt(1)="Colour"
		  ListBox_Isodose.HeaderAt(2)="Show"
		  EditField_LineThickness.value = str(gvis.Iso.thickness)
		  EditField_Font.value = (gvis.Iso.FONT)
		  EditField_Font_Size.value = str(gvis.Iso.FONT_Size)
		  EditField_LineThicknessSave.value = Str(gVis.Iso.thicknessSave)
		  
		  ListBox_Isodose.columnalignment(0)=2
		  ListBox_Isodose.columnalignment(1)=2
		  ListBox_Isodose.columnalignment(2)=2
		  
		  Refresh_Window
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Refresh_Window()
		  Dim i,size as integer
		  
		  
		  if gvis.Iso.Show_Type=1 then
		    RadioButton_abs.Value=True
		    Iso=gVis.Iso.Abs
		    ListBox_Isodose.HeaderAt(0)="Value"
		    GroupBox_Relative.Enabled=False
		    
		    RadioButton_max.Value=False
		    RadioButton_iso.Value=False
		    RadioButton_todose.Value=False
		  else
		    GroupBox_Relative.Enabled=True
		    Iso=gVis.Iso.Relative
		    ListBox_Isodose.HeaderAt(0)="%"
		    RadioButton_Relative.Value=True
		  end
		  
		  
		  if gVis.Iso.SaveType=0 Then
		    RadioButton_Dashed.Value=True
		  else
		    RadioButton_Solid.Value=True
		  end
		  
		  if RadioButton_Relative.Value Then
		    EditField_normalize.value = str(gvis.Iso.normalization_value)
		    if gvis.Iso.Show_Type=2 then
		      RadioButton_max.Value=True
		    elseif gVis.Iso.Show_Type=3 Then
		      RadioButton_iso.Value=True
		    else 
		      RadioButton_todose.Value=True
		    end
		  end
		  
		  size=ubound(Iso.values)
		  
		  ListBox_Isodose.deleteAllRows
		  
		  for i=0 to size
		    ListBox_Isodose.addrow str(Iso.values(i))
		    ListBox_Isodose.celltype(i,0)=3
		    ListBox_Isodose.celltype(i,1)=1
		    ListBox_Isodose.celltype(i,2)=2
		    ListBox_Isodose.cellcheck(i,2)=Iso.each_show(i)
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Iso As Class_Iso_Dose_Settings
	#tag EndProperty


#tag EndWindowCode

#tag Events EditField_normalize
	#tag Event
		Sub TextChange()
		  gVis.Iso.normalization_value=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_iso
	#tag Event
		Sub Action()
		  gVis.Iso.Show_Type=3
		  Refresh_Window
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_max
	#tag Event
		Sub Action()
		  gVis.Iso.Show_Type=2
		  Refresh_Window
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_todose
	#tag Event
		Sub Action()
		  gVis.Iso.Show_Type=4
		  Refresh_Window
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_abs
	#tag Event
		Sub Action()
		  gVis.Iso.Show_Type=1
		  Refresh_Window
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Relative
	#tag Event
		Sub Action()
		  GroupBox_Relative.Enabled=True
		  ListBox_Isodose.DeleteAllRows
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Font_Size
	#tag Event
		Sub TextChange()
		  gvis.Iso.FONT_Size=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Font
	#tag Event
		Sub TextChange()
		  gvis.Iso.FONT=(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_LineThickness
	#tag Event
		Sub TextChange()
		  gvis.Iso.thickness=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Save_System
	#tag Event
		Sub Action()
		  gVis.iso.Write_Default_IsoDoseSettins(0)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Save_Patient
	#tag Event
		Sub Action()
		  gVis.iso.Write_Default_IsoDoseSettins(1)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ListBox_Isodose
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  dim thiscolor as color
		  if column=1 then
		    thiscolor=Iso.colours(row)
		    if selectcolor(thiscolor,"select a color") then
		      Iso.colours(row)=thiscolor
		    end
		  end
		  
		  
		  
		  
		  
		  ListBox_Isodose.refresh
		End Function
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  if column=1 and row<= ubound(Iso.colours) then
		    g.foreColor=Iso.colours(row)
		    g.fillrect 0,0,g.width,g.height
		  end
		  return true
		End Function
	#tag EndEvent
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  if column=0 Then
		    Iso.values(row)=val(me.CellValueAt(row,column))
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  if column=2  then
		    Iso.each_show(row)=me.CellCheck(row,2)
		  end
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DeleteBevelButton
	#tag Event
		Sub Action()
		  dim tmpvalues(0) as string
		  dim tmpcolors(0) as color
		  dim tmpshow(0) as boolean
		  dim i,j,initialsize as integer
		  dim whichone as integer
		  
		  
		  
		  initialsize=ListBox_Isodose.listCount
		  whichone=ListBox_Isodose.SelectedRowIndex
		  if whichone<0 then
		    return
		  end
		  
		  
		  Iso.each_show.Remove whichone
		  Iso.values.Remove whichone
		  Iso.colours.Remove whichone
		  
		  
		  
		  
		  Refresh_Window
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AddBevelButton
	#tag Event
		Sub Action()
		  Dim ff as Color
		  
		  
		  ff=rgb(100,50,200)
		  
		  Iso.colours.Append ff
		  Iso.each_show.Append True
		  Iso.values.Append val(EditField_NewValue.Text)
		  
		  Refresh_Window
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_LineThicknessSave
	#tag Event
		Sub TextChange()
		  gvis.Iso.thicknessSave=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Solid
	#tag Event
		Sub Action()
		  gVis.Iso.SaveType=1
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Dashed
	#tag Event
		Sub Action()
		  gVis.Iso.SaveType=0
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Erase
	#tag Event
		Sub Action()
		  ReDim Window_Treatment.Canvas_Top.Isolines_Saved(-1)
		  ReDim Window_Treatment.Canvas_Left.Isolines_Saved(-1)
		  ReDim Window_Treatment.Canvas_Right.Isolines_Saved(-1)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Save
	#tag Event
		Sub Action()
		  //------------------------------------------
		  // Save 2nd set of Isodose line
		  //
		  // Alexander 2011
		  //------------------------------------------
		  Dim i,kk,ii as Integer
		  Dim ll as Class_Line
		  Dim add as Boolean
		  Dim distance1,regdistance,currentdistance,y1,y2,x1,x2 as Single
		  Dim newlines(-1) as Class_Line
		  //------------------------------------------
		  
		  ReDim Window_Treatment.Canvas_Top.Isolines_Saved(UBound(gVis.iso.values.colours))
		  ReDim Window_Treatment.Canvas_Left.Isolines_Saved(UBound(gVis.iso.values.colours))
		  ReDim Window_Treatment.Canvas_Right.Isolines_Saved(UBound(gVis.iso.values.colours))
		  
		  
		  
		  for kk=0 to UBound(gVis.iso.values.colours)
		    Window_Treatment.Canvas_Top.Isolines_Saved(kk)=new Class_IsoDose_Lines
		    Window_Treatment.Canvas_Right.Isolines_Saved(kk)=new Class_IsoDose_Lines
		    Window_Treatment.Canvas_Left.Isolines_Saved(kk)=new Class_IsoDose_Lines
		    
		    
		    
		    ReDim newlines(-1)
		    
		    if UBound(Window_Treatment.Canvas_Top.Isolines_Main)>=kk and kk>-1 Then
		      
		      for i=0 to UBound(Window_Treatment.Canvas_Top.Isolines_Main(kk).Line)
		        ll=new Class_Line
		        ll.Colour=Window_Treatment.Canvas_Top.Isolines_Main(kk).Line(i).Colour
		        ll.x1=Window_Treatment.Canvas_Top.Isolines_Main(kk).Line(i).x1
		        ll.x2=Window_Treatment.Canvas_Top.Isolines_Main(kk).Line(i).x2
		        ll.y1=Window_Treatment.Canvas_Top.Isolines_Main(kk).Line(i).y1
		        ll.y2=Window_Treatment.Canvas_Top.Isolines_Main(kk).Line(i).y2
		        ll.distance=Sqrt((ll.x1-ll.x2)^2+(ll.y1-ll.y2)^2)
		        newlines.Append ll
		        
		      next
		      
		      regdistance=1
		      currentdistance=0
		      
		      i=0
		      
		      for ii=0 to UBound(newlines)
		        x1=newlines(ii).x1
		        y1=newlines(ii).y1
		        
		        'While currentdistance<regdistance
		        'currentdistance=currentdistance+newlines(ii).distance
		        'ii=ii+1
		        'if ii>UBound(newlines) Then
		        'ii=UBound(newlines)
		        'exit
		        'end
		        'Wend
		        
		        currentdistance=0
		        
		        x2=newlines(ii).x2
		        y2=newlines(ii).y2
		        ll=new Class_Line
		        ll.Colour=gVis.iso.values.colours(kk)
		        ll.x1=x1
		        ll.x2=x2
		        ll.y1=y1
		        ll.y2=y2
		        
		        Window_Treatment.Canvas_Top.Isolines_Saved(kk).Line.Append ll
		      Next
		      
		    end
		    
		    
		    if UBound(Window_Treatment.Canvas_Left.Isolines_Main)>=kk Then
		      
		      for i=0 to UBound(Window_Treatment.Canvas_Left.Isolines_Main(kk).Line)
		        ll=new Class_Line
		        ll.Colour=Window_Treatment.Canvas_Left.Isolines_Main(kk).Line(i).Colour
		        ll.x1=Window_Treatment.Canvas_Left.Isolines_Main(kk).Line(i).x1
		        ll.x2=Window_Treatment.Canvas_Left.Isolines_Main(kk).Line(i).x2
		        ll.y1=Window_Treatment.Canvas_Left.Isolines_Main(kk).Line(i).y1
		        ll.y2=Window_Treatment.Canvas_Left.Isolines_Main(kk).Line(i).y2
		        Window_Treatment.Canvas_Left.Isolines_Saved(kk).Line.Append ll
		      next
		    end
		    
		    if UBound(Window_Treatment.Canvas_Right.Isolines_Main)>=kk Then
		      
		      for i=0 to UBound(Window_Treatment.Canvas_Right.Isolines_Main(kk).Line)
		        ll=new Class_Line
		        ll.Colour=Window_Treatment.Canvas_Right.Isolines_Main(kk).Line(i).Colour
		        ll.x1=Window_Treatment.Canvas_Right.Isolines_Main(kk).Line(i).x1
		        ll.x2=Window_Treatment.Canvas_Right.Isolines_Main(kk).Line(i).x2
		        ll.y1=Window_Treatment.Canvas_Right.Isolines_Main(kk).Line(i).y1
		        ll.y2=Window_Treatment.Canvas_Right.Isolines_Main(kk).Line(i).y2
		        Window_Treatment.Canvas_Right.Isolines_Saved(kk).Line.Append ll
		      next
		    end
		    
		  Next
		  
		  
		  
		  
		  
		  
		  
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
