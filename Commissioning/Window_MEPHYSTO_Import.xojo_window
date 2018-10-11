#tag Window
Begin Window Window_MEPHYSTO_Import
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   585
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
   Title           =   "mcc data import"
   Visible         =   True
   Width           =   863
   Begin GroupBox GroupBox1
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Select mcc file"
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
      Begin PushButton PushButton_ReadFile
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
         Left            =   629
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
         Width           =   198
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
      Caption         =   "Raw MCC Properties"
      Enabled         =   True
      Height          =   469
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
         Height          =   189
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         InitialValue    =   ""
         Italic          =   False
         Left            =   36
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
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
         Top             =   359
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
         Text            =   "Field In (mm)"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   242
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin TextField EditField_Field_In
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
         Text            =   "Depth (mm)"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   304
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
         Top             =   304
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
         Text            =   "Modality"
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
         Text            =   "Wedge"
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
      Begin TextField EditField_Wedge
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
      Begin PushButton PushButton_Import_Selected
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
      Begin PushButton PushButton_Import_all
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
      Begin Label Label1
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
         Left            =   36
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   55
         TabPanelIndex   =   0
         Text            =   "Field Cros (mm)"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   271
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin TextField EditField_Field_Cros
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
         Left            =   119
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
         TabIndex        =   56
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   270
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   122
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  MCC= new Class_MCCData
		  
		  
		  f=gPref.McGillfi
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub mcc_Import(k as Integer)
		  //------------------------------
		  // Import MCC data into profile data format
		  //
		  //------------------------------
		  Dim i as Integer
		  Dim pp as Class_Profile_One
		  dim point as Class_Points
		  //------------------------------
		  
		  pp = new Class_Profile_One
		  pp.New_Profile
		  pp.Value_Label="Dose"
		  pp.Label="MCC Data : "+mcc.Graphs(k).Date
		  pp.Comment=mcc.Graphs(k).Comment+" "+mcc.Graphs(k).Type
		  pp.Value_Units="%"
		  pp.X_label="Position"
		  pp.Z_label="Position"
		  pp.Y_label="Position"
		  pp.Algorithm="RFA"
		  pp.Units_x="cm"
		  pp.Units_z="cm"
		  pp.Units_y="cm"
		  pp.Source_TYPE=0
		  pp.Field_X=mcc.Graphs(k).FLSX/10
		  pp.Field_Y=mcc.Graphs(k).FLSY/10
		  pp.Energy=mcc.Graphs(k).Energy
		  pp.Radiation_Type=mcc.Graphs(k).BMTY
		  
		  if InStr(pp.Radiation_Type,"EL")>0 Then
		    pp.Radiation_Type="Electron"
		  else
		    pp.Radiation_Type="Photon"
		  end
		  
		  
		  if pp.Energy=0 Then
		    pp.Energy=val(EditField_Energy.Text)
		  end
		  
		  
		  pp.Depth=mcc.Graphs(k).DPTH/10
		  pp.Date=mcc.Graphs(k).Date
		  
		  
		  if pp.Radiation_Type="Electron" Then
		    if Len(mcc.Graphs(k).Wedge)>0 and InStr(mcc.Graphs(k).Wedge,"x")=0 Then
		      pp.AddOn=mcc.Graphs(k).Wedge+"x"+mcc.Graphs(k).Wedge
		    else
		      pp.AddOn=mcc.Graphs(k).Wedge
		    end
		  end
		  
		  
		  pp.SSD=mcc.Graphs(k).SSD/10
		  pp.Linac=mcc.Graphs(k).LinacName
		  
		  if InStr(mcc.Graphs(k).Type, "PDD")>0 Then
		    pp.TYPE=1
		  elseif InStr(mcc.Graphs(k).Type,"CROSSPLANE")>0 Then
		    pp.TYPE=2
		  elseif InStr(mcc.Graphs(k).Type,"INPLANE")>0  Then
		    pp.TYPE=3
		  else 
		    pp.TYPE=0
		  end
		  
		  for i=0 to UBound(mcc.Graphs(k).Points)
		    Point=new Class_Points
		    Point.X_cm=mcc.Graphs(k).Points(i).x_cm
		    Point.Y_cm=mcc.Graphs(k).Points(i).y_cm
		    Point.Z_cm=mcc.Graphs(k).Points(i).z_cm
		    Point.Value=mcc.Graphs(k).Points(i).value
		    pp.Points.Append Point
		  next
		  
		  
		  pp.Update_Profile
		  gProfiles.One_Profile.Append pp
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MCC_Read()
		  //------------------------------
		  //
		  //
		  //------------------------------
		  Dim i, num_meas as Integer
		  Dim pp as Class_Profile_One
		  Dim ts as TextInputStream
		  Dim temp,a,b as String
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
		  
		  temp=trim(ts.ReadLine)
		  temp=trim(ts.ReadLine)
		  temp=trim(ts.ReadLine)
		  temp=trim(ts.ReadLine)
		  
		  
		  
		  While ts.EOF=False
		    temp=trim(ts.ReadLine)
		    A=trim(NthField(Temp,"=",1))
		    B=Trim(NthField(Temp,"=",2))
		    
		    
		    if InStr(Temp, "BEGIN_SCAN")>0  Then
		      // Start of end Profile
		      graph= new Class_RFA_Graph
		      mcc.Graphs.Append Graph
		      
		    elseif InStr(Temp, "CORRECTIONS")>0 Then
		      graph.Comment=Trim(NthField(Temp,"=",2))
		      
		    elseif InStr(Temp, "DETECTOR_NAME")>0 Then
		      graph.Detector=Trim(NthField(Temp,"=",2))
		      
		    elseif InStr(Temp, "MEAS_DATE")>0 Then // Readin Date
		      While InStr(Temp,"  ")>0
		        Temp=Replace(Temp,"  "," ")
		      Wend
		      graph.Date=Trim(NthField(Temp,"=",2))
		      
		    elseif InStr(Temp, "SCAN_CURVETYPE")>0 Then
		      graph.Type=Trim(NthField(Temp,"=",2))
		      
		      // Readin DMTY
		    elseif InStr(Temp, "MODALITY")>0 Then
		      graph.BMTY=Trim(NthField(Temp,"=",2))
		      
		      
		    elseif InStr(Temp, "ENERGY")>0 Then
		      graph.Energy=val(NthField(Temp,"=",2))
		      
		      
		      
		      // Readin FS
		    elseif a="FIELD_INPLANE"  Then
		      graph.FLSY=val(b)
		      
		      // Readin FS
		    elseif a="FIELD_CROSSPLANE" Then
		      graph.FLSX=val(b)
		      
		      
		    elseif InStr(Temp, "LINAC")>0 Then
		      graph.LinacName=Trim(NthField(Temp,"=",2))
		      
		      
		      // Readin Axis
		    elseif InStr(Temp, "AXIS")>0 Then
		      While InStr(Temp,"  ")>0
		        Temp=Replace(Temp,"  "," ")
		      Wend
		      graph.AXIS=Trim(NthField(Temp,"=",2))
		      
		      // Readin DETY
		    elseif InStr(Temp, "DETY")>0 Then
		      graph.DETY=Trim(NthField(temp,"DETY",2))
		      
		      // Readin Type
		    elseif InStr(Temp, "TYPE")>0 Then
		      graph.Type=Trim(NthField(temp,"TYPE",2))
		      
		      // Readin WDGL
		    elseif InStr(Temp, "WEDGE=")>0 Then
		      graph.Wedge=Trim(NthField(temp,"=",2))
		      
		      // Readin PNTS
		    elseif InStr(Temp, "PNTS")>0 Then
		      graph.PNTS=Trim(NthField(temp,"PNTS",2))
		      
		      // Readin STEP
		    elseif InStr(Temp, "STEP")>0 Then
		      graph.steps=Val(NthField(temp,"STEP",2))
		      
		      // Readin Depth
		    elseif InStr(Temp,"SCAN_DEPTH")>0 Then
		      While InStr(Temp,"  ")>0
		        Temp=Replace(Temp,"  "," ")
		      Wend
		      graph.DPTH=val(NthField(Temp,"=",2))
		      
		      // Readin SSD
		    elseif InStr(Temp,"SSD")>0 Then
		      While InStr(Temp,"  ")>0
		        Temp=Replace(Temp,"  "," ")
		      Wend
		      graph.SSD=val(NthField(Temp,"=",2))
		      
		      // Readin Point values
		    elseif InStr(Temp, "BEGIN_DATA")>0 Then
		      temp=trim(ts.ReadLine)
		      While ts.EOF=False and InStr(Temp, "END_DATA")=0
		        While InStr(Temp,"  ")>0
		          Temp=Replace(Temp,"  "," ")
		        Wend
		        While InStr(Temp,Chr(9)+ Chr(9))>0  
		          Temp=Replace(Temp,Chr(9)+Chr(9)," ")
		        Wend
		        
		        
		        
		        Point=new Class_Points
		        
		        if InStr(graph.Type,"PDD")>0 Then
		          Point.X_cm=0
		          Point.Y_cm=0
		          Point.Z_cm=val(NthField(Temp," ",1))/10
		        else
		          Point.Z_cm=graph.DPTH/10
		          if InStr(graph.Type,"Cross")>0 Then
		            Point.X_cm=val(NthField(Temp," ",1))/10
		            Point.Y_cm=0
		          else
		            Point.X_cm=0
		            Point.Y_cm=val(NthField(Temp," ",1))/10
		          end
		        end
		        
		        
		        
		        Point.Value=val(NthField(Temp," ",2))
		        
		        if graph=nil Then
		          Return
		        end
		        graph.Points.Append Point
		        
		        temp=trim(ts.ReadLine)
		      wend
		      
		    elseif InStr(Temp, "$ENOM")>0 then
		      
		    end
		  wend
		  ts.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenWin()
		  EditField_RFA_File.Text=f.Name
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Pop_Graphs()
		  Dim i as Integer
		  
		  PopupMenu_list.DeleteAllRows
		  
		  for i=0 to UBound(mcc.Graphs)
		    PopupMenu_list.AddRow str(i+1)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Pop_Info()
		  Dim k,i as Integer
		  
		  k=PopupMenu_list.ListIndex
		  
		  
		  
		  
		  if k>-1 and k<=UBound(mcc.Graphs) Then
		    
		    Index_g=k
		    gg=mcc.Graphs(k)
		    Listbox_Points.DeleteAllRows
		    
		    Listbox_Points.Heading(0)="Point"
		    Listbox_Points.Heading(1)="X"
		    Listbox_Points.Heading(2)="Y"
		    Listbox_Points.Heading(3)="Z"
		    Listbox_Points.Heading(4)="Value"
		    
		    for i=0 to UBound(mcc.Graphs(k).Points)
		      Listbox_Points.AddRow str(i+1)
		      Listbox_Points.Cell(i,1)=str(mcc.Graphs(k).Points(i).x_cm)
		      Listbox_Points.Cell(i,2)=str(mcc.Graphs(k).Points(i).y_cm)
		      Listbox_Points.Cell(i,3)=str(mcc.Graphs(k).Points(i).z_cm)
		      Listbox_Points.Cell(i,4)=str(mcc.Graphs(k).Points(i).value)
		    next
		    
		    EditField_Date.Text=mcc.Graphs(k).Date
		    EditField_Comment.Text=mcc.Graphs(k).Comment
		    EditField_ssd.Text=str(mcc.Graphs(k).SSD)
		    EditField_Field_Cros.Text=str(mcc.Graphs(k).FLSX)
		    EditField_Field_In.Text=Str(mcc.Graphs(k).FLSY)
		    
		    EditField_Linac.Text=mcc.Graphs(k).LinacName
		    
		    
		    EditField_Depth.text=str(mcc.Graphs(k).DPTH)
		    EditField_Energy.Text=str(mcc.Graphs(k).Energy)
		    EditField_BMTY.text=mcc.Graphs(k).BMTY
		    EditField_TYPE.text=mcc.Graphs(k).Type
		    EditField_DETY.text=mcc.Graphs(k).DETY
		    EditField_Detector.Text=mcc.Graphs(k).Detector
		    EditField_Operator.Text=mcc.Graphs(k).Operator
		    
		    EditField_Wedge.Text=mcc.Graphs(k).Wedge
		    
		    
		  end
		  
		  
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
		MCC As Class_MCCData
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

#tag Events PushButton_ReadFile
	#tag Event
		Sub Action()
		  ReDim MCC.Graphs(-1)
		  
		  MCC_Read
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
		    MCC=new Class_MCCData
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
#tag Events EditField_Field_In
	#tag Event
		Sub TextChange()
		  gg.FLSY=val(me.Text)
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
#tag Events EditField_Wedge
	#tag Event
		Sub TextChange()
		  gg.Wedge=me.Text
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
#tag Events PushButton_Import_Selected
	#tag Event
		Sub Action()
		  Dim k as Integer
		  
		  
		  k=PopupMenu_list.ListIndex
		  
		  mcc_Import(k)
		  
		  if app.which_window_Commission Then
		    Window_Commisssioning.Update_Profile
		  end
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Import_all
	#tag Event
		Sub Action()
		  
		  
		  Dim i as Integer
		  
		  for i=0 to UBound(MCC.Graphs)
		    mcc_Import(i)
		  Next
		  
		  if app.which_window_Commission Then
		    Window_Commisssioning.Update_Profile
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Field_Cros
	#tag Event
		Sub TextChange()
		  gg.FLSx=val(me.Text)
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
