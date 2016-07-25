#tag Window
Begin Window Window_RFA_Import
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   809
   ImplicitInstance=   True
   LiveResize      =   False
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
   Title           =   "RFA Data"
   Visible         =   True
   Width           =   863
   Begin GroupBox GroupBox1
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "RFA Version"
      Enabled         =   True
      Height          =   70
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
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Underline       =   False
      Visible         =   True
      Width           =   823
      Begin RadioButton RadioButton_RFA_Old
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Old RFA Format (asc)"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   457
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
         Top             =   41
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   132
      End
      Begin RadioButton RadioButton_NewRFA
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "New RFA Format"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   608
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
         Top             =   41
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   126
      End
      Begin PushButton PushButton_OK
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Read file"
         Default         =   False
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   746
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
         Top             =   40
         Underline       =   False
         Visible         =   True
         Width           =   81
      End
      Begin TextField EditField_RFA_File
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
         Left            =   164
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
         Top             =   41
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   281
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
         Text            =   "File Name"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   42
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
   End
   Begin GroupBox GroupBox2
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Raw RFA Properties"
      Enabled         =   True
      Height          =   456
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
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   96
      Underline       =   False
      Visible         =   True
      Width           =   823
      Begin Listbox Listbox_Points
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   5
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
         Height          =   225
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         InitialValue    =   ""
         Italic          =   False
         Left            =   36
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
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   313
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   791
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin PopupMenu PopupMenu_list
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
         Left            =   28
         ListIndex       =   0
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
         Top             =   120
         Underline       =   False
         Visible         =   True
         Width           =   93
      End
      Begin TextField EditField_axis
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   "X, Y, or Z"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
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
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   180
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   122
      End
      Begin TextField EditField_Date
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
         Left            =   438
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
         TabIndex        =   10
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   113
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   122
      End
      Begin TextField EditField_SSD
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
         Left            =   117
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
         TabIndex        =   11
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   209
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   122
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
         Left            =   34
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   12
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Comment"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   152
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   63
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
         Left            =   363
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   14
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Date"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   114
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   63
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
         Left            =   34
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   15
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Axis"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   181
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   63
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
         Left            =   34
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   16
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "SSD (mm)"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   210
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   63
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
         TabIndex        =   17
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Field (mm)"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   242
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   63
      End
      Begin TextField EditField_Field
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
         TabIndex        =   18
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   241
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   122
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
         TabIndex        =   19
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Depth (mm)"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   276
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   71
      End
      Begin TextField EditField_Depth
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
         Left            =   117
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
         TabIndex        =   20
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   276
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   122
      End
      Begin TextField EditField_BMTY
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
         Left            =   438
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
         TabIndex        =   21
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   145
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   122
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
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   363
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   22
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "BMTY"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   145
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   63
      End
      Begin TextField EditField_Energy
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
         Left            =   668
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
         TabIndex        =   27
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   126
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   122
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
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   593
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   28
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Energy"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   126
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   63
      End
      Begin TextField EditField_DETY
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
         Left            =   668
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
         TabIndex        =   36
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   160
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   122
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
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   593
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   37
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "DETY"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   160
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   63
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
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   593
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   38
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "TYPE"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   192
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   63
      End
      Begin TextField EditField_TYPE
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
         Left            =   668
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
         TabIndex        =   39
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   192
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   122
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
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   363
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   40
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Operator"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   177
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   69
      End
      Begin TextField EditField_Operator
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
         Left            =   438
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
         TabIndex        =   41
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   177
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   122
      End
      Begin TextField EditField_Detector
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
         Left            =   668
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
         TabIndex        =   42
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   226
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   122
      End
      Begin Label StaticText19
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
         Left            =   593
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   43
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Detector"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   227
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   63
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
         Left            =   363
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   44
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "WDGL"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   210
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   63
      End
      Begin TextField EditField_WDGL
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
         Left            =   438
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
         TabIndex        =   45
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   210
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   122
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
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   363
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   46
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "WDGD"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   244
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   63
      End
      Begin TextField EditField_WDGD
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
         Left            =   438
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
         TabIndex        =   47
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   244
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   122
      End
      Begin TextField EditField_Comment
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
         Left            =   109
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
         TabIndex        =   48
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   151
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   130
      End
      Begin TextField EditField_AddOn
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
         Left            =   668
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
         TabIndex        =   49
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   259
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   122
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
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   593
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   50
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "AddOn"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   260
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   63
      End
      Begin TextField EditField_Linac
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
         Left            =   438
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
         TabIndex        =   51
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   279
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   122
      End
      Begin Label StaticText221
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
         Left            =   363
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   52
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Linac"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   279
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   63
      End
      Begin PushButton PushButton_Import
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Import Current"
         Default         =   True
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   139
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   53
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   120
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin PushButton PushButton_Import1
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Import all"
         Default         =   False
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   245
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   54
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   120
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
   End
   Begin GroupBox GroupBox3
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Modify Profile Options"
      Enabled         =   True
      Height          =   205
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
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   564
      Underline       =   False
      Visible         =   True
      Width           =   807
      Begin PushButton PushButton_PDI1
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "PDI to PDD (Burns)"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   "Uses Burns Equation"
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   73
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
         Top             =   676
         Underline       =   False
         Visible         =   True
         Width           =   132
      End
      Begin Label StaticText16
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   62
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   217
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   True
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "cylindrical ion chambers\rI50  =\rR50 =1.029I50-0.06\rR50 =1.059I50-0.37"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   678
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   173
      End
      Begin TextField EditField_R50
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
         Left            =   402
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
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   718
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   137
      End
      Begin TextField EditField_I50
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
         Left            =   402
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
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   691
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   137
      End
      Begin PushButton PushButton_Shift
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Shift"
         Default         =   False
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   717
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
         Top             =   676
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin TextField EditField_Z
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
         Left            =   717
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
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   642
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   80
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
         Left            =   593
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
         Text            =   "Z offset (cm)"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   644
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
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
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   593
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
         Text            =   "Y offset (cm)"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   621
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
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
         Left            =   717
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
         TabPanelIndex   =   0
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
         Left            =   717
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
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   596
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
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   593
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   10
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "X offset (cm)"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   596
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin TextField EditField_Gradient
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
         Left            =   329
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
         TabIndex        =   11
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   594
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   137
      End
      Begin Label StaticText15
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   54
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   200
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   True
         Scope           =   0
         Selectable      =   False
         TabIndex        =   12
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "cylindrical chambers\r0.6 r for photon\r0.5 r for electron\r"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   596
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   137
      End
      Begin PushButton PushButton_PDI
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Gradient Shift"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   "Uses Burns Equation"
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   73
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   13
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   596
         Underline       =   False
         Visible         =   True
         Width           =   115
      End
      Begin RadioButton RadioButton_XY_Swap
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Swap X and Y"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   624
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   14
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   710
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   121
      End
      Begin RadioButton RadioButton2
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Maintain RFA X and Y "
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   624
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
         Top             =   742
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   138
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  RFA= new Class_RFAData
		  
		  
		  f=gPref.McGillfi
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub OpenWin()
		  EditField_RFA_File.Text=f.Name
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PDIPDD()
		  //----------------------------
		  //
		  //
		  //----------------------------
		  Dim i,k as integer
		  Dim r50,a,b,c,d,e,f,g,h,d50norm,I50,D50 as Single
		  Dim pp as new Class_Profile_One
		  Dim pointpp,kk(-1) as Class_Points
		  //----------------------------
		  
		  
		  
		  k=PopupMenu_list.ListIndex
		  
		  ReDim pp.Points(UBound(RFA.Graphs(k).Points))
		  
		  for i=0 to UBound(RFA.Graphs(k).Points)
		    pp.Points(i)=new Class_Points
		    pp.Points(i).Value=rfa.Graphs(k).Points(i).value
		    pp.Points(i).Z_cm=rfa.Graphs(k).Points(i).z_cm
		    if pp.Points(i).Value> pp.Normalize_value Then
		      pp.Normalize_value=pp.Points(i).Value
		    end
		  next
		  
		  d50norm=pp.Normalize_value/2
		  kk=pp.Get_Point_at_Value(d50norm)
		  pointpp=new Class_Points
		  Pointpp=kk(0)
		  
		  I50=pointpp.Z_cm
		  
		  Window_RFA_Import.EditField_I50.Text=str(I50)
		  
		  
		  if I50<=10 Then
		    D50=1.029*I50-0.06
		  else
		    D50=1.059*I50-0.37
		  end
		  
		  r50=D50
		  
		  
		  
		  EditField_R50.Text=str(r50)
		  
		  
		  
		  a  =   1.075200
		  b  =    -0.508670
		  c =     0.088670
		  d =     -0.084020
		  e  =    -0.428060
		  f =     0.064627
		  g =     0.003085
		  h =     -0.124600
		  
		  
		  for i=0 to UBound(RFA.Graphs(k).Points)
		    rfa.Graphs(k).Points(i).value=rfa.Graphs(k).Points(i).value*(a+b*Log(r50)+c*(Log(r50))^2+d*rfa.Graphs(k).Points(i).z_cm/r50)/_
		    (1+e*log(r50)+f*(Log(r50))^2+g*(Log(r50))^3+h*rfa.Graphs(k).Points(i).z_cm/r50)
		  next
		  
		  Pop_Info
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PDI_Gradient()
		  Dim i,k as integer
		  Dim GRAD,a,b,c,d,e,f,g,h as Single
		  Dim pp as new Class_Profile_One
		  
		  k=PopupMenu_list.ListIndex
		  grad=val(EditField_Gradient.Text)
		  
		  for i=0 to UBound(RFA.Graphs(k).Points)
		    rfa.Graphs(k).Points(i).z_CM=rfa.Graphs(k).Points(i).z_CM-GRAD
		  next
		  Pop_Info
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Pop_Graphs()
		  Dim i as Integer
		  
		  PopupMenu_list.DeleteAllRows
		  
		  for i=0 to UBound(rfa.Graphs)
		    PopupMenu_list.AddRow str(i+1)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Pop_Info()
		  Dim k,i as Integer
		  
		  k=PopupMenu_list.ListIndex
		  
		  
		  
		  
		  if k>-1 and k<=UBound(rfa.Graphs) Then
		    
		    Index_g=k
		    gg=rfa.Graphs(k)
		    Listbox_Points.DeleteAllRows
		    
		    Listbox_Points.Heading(0)="Point"
		    Listbox_Points.Heading(1)="X"
		    Listbox_Points.Heading(2)="Y"
		    Listbox_Points.Heading(3)="Z"
		    Listbox_Points.Heading(4)="Value"
		    
		    for i=0 to UBound(rfa.Graphs(k).Points)
		      Listbox_Points.AddRow str(i+1)
		      Listbox_Points.Cell(i,1)=str(rfa.Graphs(k).Points(i).x_cm)
		      Listbox_Points.Cell(i,2)=str(rfa.Graphs(k).Points(i).y_cm)
		      Listbox_Points.Cell(i,3)=str(rfa.Graphs(k).Points(i).z_cm)
		      Listbox_Points.Cell(i,4)=str(rfa.Graphs(k).Points(i).value)
		    next
		    
		    EditField_Date.Text=RFA.Graphs(k).Date
		    EditField_Comment.Text=RFA.Graphs(k).Comment
		    EditField_ssd.Text=str(RFA.Graphs(k).SSD)
		    EditField_axis.Text=RFA.Graphs(k).AXIS
		    EditField_Field.Text=RFA.Graphs(k).FLSZ
		    EditField_Depth.text=str(RFA.Graphs(k).DPTH)
		    EditField_Energy.Text=str(rfa.Graphs(k).Energy)
		    EditField_BMTY.text=RFA.Graphs(k).BMTY
		    EditField_TYPE.text=RFA.Graphs(k).Type
		    EditField_DETY.text=RFA.Graphs(k).DETY
		    EditField_AddOn.Text=rfa.Graphs(k).addon
		    EditField_Detector.Text=RFA.Graphs(k).Detector
		    EditField_Operator.Text=RFA.Graphs(k).Operator
		    
		    EditField_WDGD.Text=RFA.Graphs(k).WDGD
		    EditField_WDGL.Text=RFA.Graphs(k).WDGL
		    
		    
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RFA_Import(k as Integer)
		  //------------------------------
		  // Import RFA data into profile data format
		  //
		  //------------------------------
		  Dim i as Integer
		  Dim pp as Class_Profile_One
		  dim point as Class_Points
		  //------------------------------
		  
		  pp = new Class_Profile_One
		  pp.New_Profile
		  pp.Value_Label="Dose"
		  pp.Label="RFA Data : "+RFA.Graphs(k).Date
		  pp.Comment=RFA.Graphs(k).Comment
		  pp.Value_Units="%"
		  pp.X_label="Position"
		  pp.Z_label="Position"
		  pp.Y_label="Position"
		  pp.Algorithm="RFA"
		  pp.Units_x="cm"
		  pp.Units_z="cm"
		  pp.Units_y="cm"
		  pp.Source_TYPE=0
		  pp.Field_X=val(NthField(RFA.Graphs(k).FLSZ,"*",1))/10
		  pp.Field_Y=val(NthField(RFA.Graphs(k).FLSZ,"*",2))/10
		  pp.Energy=rfa.Graphs(k).Energy
		  
		  if pp.Energy=0 Then
		    pp.Energy=val(EditField_Energy.Text)
		  end
		  
		  
		  // Fix June 2014 by A Alexander,
		  // Update depth to divide by 10
		  // Not sure why I had to divide by 100 in the past?
		  //pp.Depth=rfa.Graphs(k).DPTH/100
		  pp.Depth=rfa.Graphs(k).DPTH/10
		  
		  
		  pp.Date=RFA.Graphs(k).Date
		  pp.AddOn=RFA.Graphs(k).addon
		  pp.SSD=RFA.Graphs(k).SSD/10
		  pp.Linac=Trim(EditField_Linac.Text)
		  if rfa.Graphs(k).AXIS="Z" Then
		    pp.TYPE=1
		  elseif rfa.Graphs(k).AXIS="X" Then
		    pp.TYPE=2
		  elseif rfa.Graphs(k).AXIS="Y" Then
		    pp.TYPE=3
		  else 
		    pp.TYPE=0
		  end
		  
		  for i=0 to UBound(RFA.Graphs(k).Points)
		    Point=new Class_Points
		    Point.X_cm=RFA.Graphs(k).Points(i).x_cm
		    Point.Y_cm=RFA.Graphs(k).Points(i).y_cm
		    Point.Z_cm=RFA.Graphs(k).Points(i).z_cm
		    Point.Value=RFA.Graphs(k).Points(i).value
		    pp.Points.Append Point
		  next
		  
		  if RadioButton_XY_Swap.Value Then
		    pp.Swap_XY_Profile
		  end
		  pp.Update_Profile
		  gProfiles.One_Profile.Append pp
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RFA_New()
		  //------------------------------
		  //
		  //
		  //------------------------------
		  Dim i, num_meas as Integer
		  Dim pp as Class_Profile_One
		  Dim ts as TextInputStream
		  Dim temp as String
		  dim point as Class_Points
		  dim x,y,z as Single
		  dim graph as Class_RFA_Graph
		  //------------------------------
		  
		  
		  if f.Exists=False Then
		    Return
		  end
		  
		  ts=f.OpenAsTextFile
		  if ts=Nil Then
		    Return
		  end
		  
		  temp=ts.ReadLine
		  num_meas=val(NthField(Temp," ",2))
		  RFA.Num_Graphs=num_meas
		  
		  
		  While ts.EOF=False
		    temp=ts.ReadLine
		    
		    if InStr(Temp, "$STOM")>0 Then
		      // Start of end Profile
		      graph= new Class_RFA_Graph
		      RFA.Graphs.Append Graph
		      
		      
		    elseif InStr(Temp, "Comment:")>0 Then
		      graph.Comment=Trim(NthField(Temp,"Comment:",2))
		      
		      
		    elseif InStr(Temp, "Detector:")>0 Then
		      graph.Detector=Trim(NthField(Temp,"Detector:",2))
		      
		    elseif InStr(Temp, "Operator:")>0 Then
		      graph.Operator=Trim(NthField(Temp,"Operator:",2))
		      
		      
		      
		    elseif InStr(Temp, "%DATE")>0 Then // Readin Date
		      While InStr(Temp,"  ")>0
		        Temp=Replace(Temp,"  "," ")
		      Wend
		      graph.Date=Trim(NthField(Temp," ",2))
		      
		    elseif InStr(Temp, "%TYPE")>0 Then
		      While InStr(Temp,"  ")>0
		        Temp=Replace(Temp,"  "," ")
		      Wend
		      graph.Type=Trim(NthField(Temp," ",2))
		      
		      
		      
		      // Readin DMTY
		    elseif InStr(Temp, "%BMTY")>0 Then
		      While InStr(Temp,"  ")>0
		        Temp=Replace(Temp,"  "," ")
		      Wend
		      graph.BMTY=Trim(NthField(Temp," ",2))
		      
		      
		      // Readin FS
		    elseif InStr(Temp, "%FLSZ")>0 Then
		      While InStr(Temp,"  ")>0
		        Temp=Replace(Temp,"  "," ")
		      Wend
		      graph.FLSZ=Trim(NthField(Temp," ",2))
		      
		      
		      // Readin Axis
		    elseif InStr(Temp, "%AXIS")>0 Then
		      While InStr(Temp,"  ")>0
		        Temp=Replace(Temp,"  "," ")
		      Wend
		      graph.AXIS=Trim(NthField(Temp," ",2))
		      
		      // Readin DETY
		    elseif InStr(Temp, "%DETY")>0 Then
		      graph.DETY=Trim(NthField(temp,"%DETY",2))
		      
		      // Readin Type
		    elseif InStr(Temp, "%TYPE")>0 Then
		      graph.Type=Trim(NthField(temp,"%TYPE",2))
		      
		      // Readin WDGL
		    elseif InStr(Temp, "WDGL")>0 Then
		      graph.WDGL=Trim(NthField(temp,"WDGL",2))
		      
		      
		      // Readin WDGD
		    elseif InStr(Temp, "WDGD")>0 Then
		      graph.WDGD=Trim(NthField(temp,"WDGD",2))
		      
		      // Readin PNTS
		    elseif InStr(Temp, "PNTS")>0 Then
		      graph.PNTS=Trim(NthField(temp,"PNTS",2))
		      
		      // Readin STEP
		    elseif InStr(Temp, "STEP")>0 Then
		      graph.steps=Val(NthField(temp,"STEP",2))
		      
		      
		      
		      // Readin Depth
		    elseif InStr(Temp,"%DPTH")>0 Then
		      While InStr(Temp,"  ")>0
		        Temp=Replace(Temp,"  "," ")
		      Wend
		      graph.DPTH=val(NthField(Temp," ",2))
		      
		      
		      // Readin SSD
		    elseif InStr(Temp,"%SSD")>0 Then
		      While InStr(Temp,"  ")>0
		        Temp=Replace(Temp,"  "," ")
		      Wend
		      graph.SSD=val(NthField(Temp," ",2))
		      
		      
		      // Readin Point values
		    elseif InStr(Temp, "<")>0 Then
		      temp=trim(NthField(Temp,"<",2))
		      While InStr(Temp,"  ")>0
		        Temp=Replace(Temp,"  "," ")
		      Wend
		      Point=new Class_Points
		      Point.X_cm=val(NthField(Temp," ",1))/10
		      Point.Y_cm=val(NthField(Temp," ",2))/10
		      Point.Z_cm=val(NthField(Temp," ",3))/10
		      Point.Value=val(NthField(Temp," ",4))
		      
		      if graph=nil Then
		        Return
		      end
		      
		      graph.Points.Append Point
		      
		      
		    elseif InStr(Temp, "$ENOM")>0 then
		      
		    end
		  wend
		  ts.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RFA_Old()
		  //------------------------------
		  //
		  //------------------------------
		  Dim i, num_meas as Integer
		  Dim pp as Class_Profile_One
		  Dim ts as TextInputStream
		  Dim temp as String
		  dim point as Class_Points
		  dim x,y,z as Single
		  dim graph as Class_RFA_Graph
		  //------------------------------
		  
		  graph= new Class_RFA_Graph
		  
		  if f.Exists<>False Then
		    ts=f.OpenAsTextFile
		    if ts<>Nil Then
		      temp=ts.ReadLine
		      num_meas=val(NthField(Temp," ",2))
		      RFA.Num_Graphs=num_meas
		      
		      While ts.EOF=False
		        temp=ts.ReadLine
		        if InStr(Temp, "Measurement number")>0 Then
		          graph= new Class_RFA_Graph
		          RFA.Graphs.Append Graph
		          Graph.Comment=Temp
		          
		          
		          //Readin Depth
		        elseif InStr(Temp, "%PRD ")>0 Then
		          While InStr(Temp,"  ")>0
		            Temp=Replace(Temp,"  "," ")
		          Wend
		          graph.DPTH=val(NthField(Temp," ",2))
		          
		          
		          //Readin SSD
		        elseif InStr(Temp, "%SSD ")>0 Then
		          While InStr(Temp,"  ")>0
		            Temp=Replace(Temp,"  "," ")
		          Wend
		          graph.SSD=val(NthField(Temp," ",2))
		          
		          
		          
		          //Readin Date
		        elseif InStr(Temp, "%DAT ")>0 Then
		          While InStr(Temp,"  ")>0
		            Temp=Replace(Temp,"  "," ")
		          Wend
		          graph.Date=Trim(NthField(Temp," ",2))
		          
		          
		          //Readin Time
		        elseif InStr(Temp, "%TIM ")>0 Then
		          While InStr(Temp,"  ")>0
		            Temp=Replace(Temp,"  "," ")
		          Wend
		          graph.Date=graph.Date+" , "+Trim(NthField(Temp," ",2))
		          
		          
		          //Readin Energy
		        elseif InStr(Temp, "%BMT ")>0 Then
		          While InStr(Temp,"  ")>0
		            Temp=Replace(Temp,"  "," ")
		          Wend
		          temp=Trim(NthField(Temp,"%BMT",2))
		          graph.BMTY=Temp
		          graph.Energy=val(NthField(Temp,chr(9),2))
		          
		          //Readin Field Size
		        elseif InStr(Temp, "%FSZ ")>0 Then
		          While InStr(Temp,"  ")>0
		            Temp=Replace(Temp,"  "," ")
		          Wend
		          temp=Trim(NthField(Temp,"%FSZ",2))
		          Temp=Replace(Temp,chr(9),"*")
		          graph.FLSZ=Temp
		          
		          // Readin Point values
		        elseif InStr(Temp, "= ")>0 Then
		          temp=trim(NthField(Temp,"=",2))
		          While InStr(Temp,"  ")>0
		            Temp=Replace(Temp,"  "," ")
		          Wend
		          
		          Point=new Class_Points
		          Point.X_cm=val(NthField(Temp," ",1))/10
		          Point.Y_cm=val(NthField(Temp," ",2))/10
		          Point.Z_cm=val(NthField(Temp," ",3))/10
		          Point.Value=val(NthField(Temp," ",4))
		          graph.Points.Append Point
		          
		          
		        elseif InStr(Temp, ":EOM")>0 then
		          graph.Pointa=new Class_Points
		          graph.Pointb=new Class_Points
		          
		          graph.Pointa.X_cm=graph.Points(0).X_cm
		          graph.Pointa.y_cm=graph.Points(0).y_cm
		          graph.Pointa.z_cm=graph.Points(0).z_cm
		          
		          
		          graph.Pointb.X_cm=graph.Points(UBound(graph.Points)).X_cm
		          graph.Pointb.y_cm=graph.Points(UBound(graph.Points)).y_cm
		          graph.Pointb.z_cm=graph.Points(UBound(graph.Points)).z_cm
		          
		          if graph.Pointa.X_cm=graph.Pointb.X_cm and _
		            graph.Pointa.z_cm=graph.Pointb.z_cm then
		            graph.AXIS="Y"
		          elseif graph.Pointa.Y_cm=graph.Pointb.Y_cm and _
		            graph.Pointa.z_cm=graph.Pointb.z_cm then
		            graph.AXIS="X"
		          elseif graph.Pointa.Y_cm=graph.Pointb.Y_cm and _
		            graph.Pointa.x_cm=graph.Pointb.x_cm then
		            graph.AXIS="Z"
		            
		          end
		          
		        end
		      wend
		      ts.Close
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RFA_Shift()
		  Dim i,k as integer
		  Dim x,y,z as Single
		  Dim pp as new Class_Profile_One
		  
		  k=PopupMenu_list.ListIndex
		  
		  z=val(EditField_Z.Text)
		  
		  x=val(EditField_x.Text)
		  y=val(EditField_y.Text)
		  
		  
		  for i=0 to UBound(RFA.Graphs(k).Points)
		    rfa.Graphs(k).Points(i).z_CM=rfa.Graphs(k).Points(i).z_CM+z
		    rfa.Graphs(k).Points(i).x_CM=rfa.Graphs(k).Points(i).x_CM+x
		    rfa.Graphs(k).Points(i).y_CM=rfa.Graphs(k).Points(i).y_CM+y
		  next
		  Pop_Info
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		f As folderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		GG As Class_RFA_Graph
	#tag EndProperty

	#tag Property, Flags = &h0
		Index_g As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		RFA As Class_RFAData
	#tag EndProperty

	#tag Property, Flags = &h0
		x_off As single
	#tag EndProperty

	#tag Property, Flags = &h0
		y_off As single
	#tag EndProperty

	#tag Property, Flags = &h0
		z_off As single
	#tag EndProperty


#tag EndWindowCode

#tag Events PushButton_OK
	#tag Event
		Sub Action()
		  ReDim RFA.Graphs(-1)
		  
		  if RadioButton_RFA_Old.Value Then
		    RFA_Old
		  else
		    RFA_New
		  end
		  
		  GroupBox2.Enabled=True
		  Pop_Graphs
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_RFA_File
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  //------------------------------
		  //
		  //------------------------------
		  Dim f2 as FolderItem
		  dim opfi as new OpenDialog
		  //------------------------------
		  
		  
		  opfi.InitialDirectory=f
		  opfi.Title="Select any RFA ASCII file"
		  f2=opfi.ShowModal
		  
		  
		  if f2=nil then //fi.Exists then
		    
		  else
		    RFA=new Class_RFAData
		    f=f2
		    OpenWin
		  end if
		  
		  
		  Pop_Graphs
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_list
	#tag Event
		Sub Change()
		  Pop_Info
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_axis
	#tag Event
		Sub TextChange()
		  gg.AXIS=me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Field
	#tag Event
		Sub TextChange()
		  gg.FLSZ=me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Depth
	#tag Event
		Sub TextChange()
		  gg.DPTH=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Energy
	#tag Event
		Sub TextChange()
		  gg.Energy=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_TYPE
	#tag Event
		Sub TextChange()
		  gg.Type=me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_WDGL
	#tag Event
		Sub TextChange()
		  gg.WDGL=me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_WDGD
	#tag Event
		Sub TextChange()
		  gg.WDGD=me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Comment
	#tag Event
		Sub TextChange()
		  gg.Comment=Trim(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_AddOn
	#tag Event
		Sub TextChange()
		  gg.addon=me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Import
	#tag Event
		Sub Action()
		  Dim k as Integer
		  
		  
		  k=PopupMenu_list.ListIndex
		  
		  RFA_Import(k)
		  
		  if app.which_window_Commission Then
		    Window_Commisssioning.Update_Profile
		  end
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Import1
	#tag Event
		Sub Action()
		  
		  
		  Dim i as Integer
		  
		  for i=0 to UBound(RFA.Graphs)
		    RFA_Import(i)
		  Next
		  
		  if app.which_window_Commission Then
		    Window_Commisssioning.Update_Profile
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_PDI1
	#tag Event
		Sub Action()
		  PDIPDD
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_R50
	#tag Event
		Sub TextChange()
		  x_off=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_I50
	#tag Event
		Sub TextChange()
		  x_off=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Shift
	#tag Event
		Sub Action()
		  RFA_Shift
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Z
	#tag Event
		Sub TextChange()
		  z_off=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Y
	#tag Event
		Sub TextChange()
		  y_off=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_X
	#tag Event
		Sub TextChange()
		  x_off=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Gradient
	#tag Event
		Sub TextChange()
		  x_off=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_PDI
	#tag Event
		Sub Action()
		  PDI_Gradient
		  
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
		Name="Index_g"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
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
		Name="x_off"
		Group="Behavior"
		InitialValue="0"
		Type="single"
	#tag EndViewProperty
	#tag ViewProperty
		Name="y_off"
		Group="Behavior"
		InitialValue="0"
		Type="single"
	#tag EndViewProperty
	#tag ViewProperty
		Name="z_off"
		Group="Behavior"
		InitialValue="0"
		Type="single"
	#tag EndViewProperty
#tag EndViewBehavior
