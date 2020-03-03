#tag Window
Begin Window Window_Cutout_Options
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   719
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
   Resizeable      =   False
   Title           =   "Cutout Beam Properties"
   Visible         =   True
   Width           =   729
   Begin PushButton PushButton_Close
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Close"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   324
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
      Top             =   687
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin GroupBox GroupBox_Gap_para
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Cut Out Materials"
      Enabled         =   True
      Height          =   156
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
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   374
      Begin PopupMenu PopupMenu_cutout_mat
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Gap_para"
         InitialValue    =   ""
         Italic          =   False
         Left            =   227
         ListIndex       =   0
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
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   65
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   150
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
         InitialParent   =   "GroupBox_Gap_para"
         Italic          =   False
         Left            =   29
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
         Text            =   "Cut Out Material:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   66
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin PopupMenu PopupMenu_Gap_Material
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Gap_para"
         InitialValue    =   ""
         Italic          =   False
         Left            =   227
         ListIndex       =   0
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
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   91
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   150
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
         InitialParent   =   "GroupBox_Gap_para"
         Italic          =   False
         Left            =   29
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
         Text            =   "Material Inside Cut Out and Gap:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   92
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   197
      End
      Begin Label StaticText77
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Gap_para"
         Italic          =   False
         Left            =   29
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
         Text            =   "Cutout Thickness (cm)"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   37
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   142
      End
      Begin TextField EditField_CutoutThickness
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
         InitialParent   =   "GroupBox_Gap_para"
         Italic          =   False
         Left            =   227
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
         Text            =   "1.5"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   36
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   121
      End
      Begin TextField EditField_airgapthickness
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
         HelpTag         =   "Air gap after cutout"
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Gap_para"
         Italic          =   False
         Left            =   227
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
         Text            =   "1"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   124
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   112
      End
      Begin Label StaticText78
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   21
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Gap_para"
         Italic          =   False
         Left            =   29
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   True
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "air gap thickness "
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   124
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   186
      End
   End
   Begin GroupBox GroupBox_Phantom_Par
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Phantom Parameters"
      Enabled         =   True
      Height          =   156
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   405
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
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   304
      Begin Label StaticText71
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Phantom_Par"
         Italic          =   False
         Left            =   414
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Phantom Material:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   38
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   111
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
         InitialParent   =   "GroupBox_Phantom_Par"
         Italic          =   False
         Left            =   414
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
         Text            =   "Scoring Region Thickness:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   94
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   172
      End
      Begin TextField EditField_scoring_thick
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
         InitialParent   =   "GroupBox_Phantom_Par"
         Italic          =   False
         Left            =   627
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
         Text            =   "0.2"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   93
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   60
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
         InitialParent   =   "GroupBox_Phantom_Par"
         Italic          =   False
         Left            =   414
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
         Text            =   "Scoring Region Radius:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   124
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   156
      End
      Begin TextField EditField_Scoring_rad
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
         InitialParent   =   "GroupBox_Phantom_Par"
         Italic          =   False
         Left            =   627
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
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "0.2"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   123
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   60
      End
      Begin PopupMenu PopupMenu_phantom_mat
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Phantom_Par"
         InitialValue    =   ""
         Italic          =   False
         Left            =   537
         ListIndex       =   0
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
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   37
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   150
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
         InitialParent   =   "GroupBox_Phantom_Par"
         Italic          =   False
         Left            =   414
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
         Text            =   "Phantom Thickness:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   64
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   145
      End
      Begin TextField EditField_phantom_thick
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
         InitialParent   =   "GroupBox_Phantom_Par"
         Italic          =   False
         Left            =   627
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
         Text            =   "10.0"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   63
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   60
      End
   End
   Begin GroupBox GroupBox_eMC
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Monte Carlo Settings"
      Enabled         =   True
      Height          =   258
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
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   171
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   689
      Begin Label StaticText62
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_eMC"
         Italic          =   False
         Left            =   29
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Histories (N):"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   282
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   81
      End
      Begin TextField EditField_histories
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
         InitialParent   =   "GroupBox_eMC"
         Italic          =   False
         Left            =   177
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
         Text            =   "10000000"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   277
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   112
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
         InitialParent   =   "GroupBox_eMC"
         Italic          =   False
         Left            =   29
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
         Text            =   "PCUT (MeV):"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   223
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   76
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
         InitialParent   =   "GroupBox_eMC"
         Italic          =   False
         Left            =   29
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
         Text            =   "Ignore BackScatter:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   252
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   119
      End
      Begin TextField EditField_ECUT
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
         InitialParent   =   "GroupBox_eMC"
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
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "0.521"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   193
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   60
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
         InitialParent   =   "GroupBox_eMC"
         Italic          =   False
         Left            =   29
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
         Text            =   "ECUT (MeV):"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   194
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   76
      End
      Begin TextField EditField_PCUT
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
         InitialParent   =   "GroupBox_eMC"
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
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "0.01"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   222
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   60
      End
      Begin PopupMenu PopupMenu_Backscatter
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_eMC"
         InitialValue    =   ""
         Italic          =   False
         Left            =   177
         ListIndex       =   0
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
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   251
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
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
         InitialParent   =   "GroupBox_eMC"
         Italic          =   False
         Left            =   195
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
         Text            =   "In Read Buffer:"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   195
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   94
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
         InitialParent   =   "GroupBox_eMC"
         Italic          =   False
         Left            =   199
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   11
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "In Write Buffer:"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   223
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   90
      End
      Begin TextField EditField_write_buff
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
         InitialParent   =   "GroupBox_eMC"
         Italic          =   False
         Left            =   301
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
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "10000"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   222
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   60
      End
      Begin TextField EditField_Read_buff
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
         InitialParent   =   "GroupBox_eMC"
         Italic          =   False
         Left            =   301
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
         TabIndex        =   13
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "1"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   193
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   60
      End
      Begin TextField EditField_jobs
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
         InitialParent   =   "GroupBox_eMC"
         Italic          =   False
         Left            =   177
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
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "2"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   307
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   112
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
         InitialParent   =   "GroupBox_eMC"
         Italic          =   False
         Left            =   29
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
         Text            =   "Number of jobs"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   307
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   107
      End
      Begin TextField EditField_pegs
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
         InitialParent   =   "GroupBox_eMC"
         Italic          =   False
         Left            =   177
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
         TabIndex        =   16
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "combination"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   334
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   112
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
         InitialParent   =   "GroupBox_eMC"
         Italic          =   False
         Left            =   29
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
         Text            =   "pegs file"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   336
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   107
      End
      Begin Label StaticText79
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_eMC"
         Italic          =   False
         Left            =   29
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   18
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "phsp source"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   368
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   90
      End
      Begin TextField EditField_phsppath
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
         InitialParent   =   "GroupBox_eMC"
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
         TabIndex        =   19
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "10000000"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   367
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   588
      End
      Begin TextField EditField_MC_Seed
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
         InitialParent   =   "GroupBox_eMC"
         Italic          =   False
         Left            =   490
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
         TabIndex        =   20
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "65"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   192
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   60
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
         InitialParent   =   "GroupBox_eMC"
         Italic          =   False
         Left            =   388
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   21
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Seed"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   193
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   90
      End
      Begin Label StaticText751
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   "Distance between input phsp at 93 cm from the source and top plate cutout (cm)"
         Index           =   -2147483648
         InitialParent   =   "GroupBox_eMC"
         Italic          =   False
         Left            =   29
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   23
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Phsp distance"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   401
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   107
      End
      Begin TextField EditField_phspdistance
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
         InitialParent   =   "GroupBox_eMC"
         Italic          =   False
         Left            =   177
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
         TabIndex        =   25
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   400
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   225
      End
   End
   Begin PushButton PushButton_Run
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Run"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   598
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   470
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   111
   End
   Begin PopupMenu PopupMenu_Shell
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
      Left            =   250
      ListIndex       =   0
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
      Top             =   537
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   160
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
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Shell:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   537
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   82
   End
   Begin CheckBox CheckBox_AutoShell
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Auto detemine"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   114
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      State           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   537
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   119
   End
   Begin PushButton PushButton_ReloadDefault
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Reload default"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   598
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   497
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   111
   End
   Begin GroupBox GroupBoxPhasespace
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Output Type"
      Enabled         =   True
      Height          =   80
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
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   448
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   151
      Begin CheckBox CheckBox_phasespace
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Phase Space File"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBoxPhasespace"
         Italic          =   False
         Left            =   29
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   493
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   122
      End
      Begin CheckBox CheckBox_Dosecalc
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Dose Calculation"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBoxPhasespace"
         Italic          =   False
         Left            =   29
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   1
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   471
         Transparent     =   False
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   122
      End
   End
   Begin CheckBox CheckBox_Started
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Started"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
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
      State           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   576
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   292
   End
   Begin Label StaticText80
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
      Left            =   20
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
      Text            =   "Progress"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   608
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   76
   End
   Begin TextField EditField_progress
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
      InitialParent   =   ""
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
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   607
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   112
   End
   Begin CheckBox CheckBox_Finished
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Simulation Finished"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
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
      State           =   0
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   647
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   183
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  if Cutout<>nil Then
		    CutOut.delete(beam_index)
		    CutOut.save(beam_index)
		  end
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Dim k as Integer
		  Dim g as Boolean
		  
		  
		  if Plan_Index>=0 Then
		    beam_index=Window_Treatment.ListBox_MC_Cutout.ListIndex
		    if beam_index >= 0 and beam_index<= UBound(gRTOG.Plan(Plan_Index).Beam) Then
		      
		    else
		      me.Close
		    end
		  else
		    me.Close
		  end
		  
		  Cutout=gCutout.Beams(beam_index)
		  
		  PopupMenu_Shell.DeleteAllRows
		  for k=0 to UBound(gShells.Shells)
		    PopupMenu_Shell.AddRow gShells.Shells(k).title
		  next
		  
		  
		  Cutout_pop
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Cutout_pop()
		  Dim i ,j,list_index as integer
		  
		  
		  '===================
		  PopupMenu_cutout_mat.DeleteAllRows
		  list_index=0
		  
		  for i =0 to UBound(gCutout.cutoutmaterial)
		    PopupMenu_cutout_mat.AddRow trim(gcutout.cutoutmaterial(i))
		    if gcutout.cutoutmaterial(i)=CutOut.CutOutMaterial then
		      list_index=i
		    end
		  next
		  PopupMenu_cutout_mat.ListIndex=list_index
		  '===================
		  
		  PopupMenu_Gap_Material.DeleteAllRows
		  list_index=0
		  for i =0 to UBound(gcutout.gapmaterial)
		    PopupMenu_Gap_Material.AddRow gcutout.gapmaterial(i)
		    if gcutout.gapmaterial(i)=CutOut.GapMaterial then
		      list_index=i
		    end
		  next
		  PopupMenu_Gap_Material.ListIndex=list_index
		  
		  //EditField_cutout_thick.Text=str(Cutout.CutOutThickness)
		  
		  
		  '===================
		  PopupMenu_phantom_mat.DeleteAllRows
		  list_index=0
		  for i =0 to UBound(gcutout.phantommaterial)
		    PopupMenu_phantom_mat.AddRow gcutout.phantommaterial(i)
		    if gcutout.phantommaterial(i)=CutOut.PhantomMaterial then
		      list_index=i
		    end
		  next
		  PopupMenu_phantom_mat.ListIndex=list_index
		  '===================
		  PopupMenu_Backscatter.DeleteAllRows
		  PopupMenu_Backscatter.AddRow "No"
		  PopupMenu_Backscatter.AddRow "Yes"
		  if Cutout.BackscatterType=0 then
		    PopupMenu_Backscatter.ListIndex=0
		  else
		    PopupMenu_Backscatter.ListIndex=1
		  end
		  '===================
		  
		  EditField_histories.Text=Format(Cutout.NHistories,"#")
		  EditField_jobs.Text=Format(Cutout.jobs,"#")
		  EditField_pegs.Text=Cutout.pegsfile
		  EditField_CutoutThickness.Text=Format(Cutout.CutOutThickness,"-#.####")
		  PopupMenu_Shell.ListIndex=Cutout.Shell_Index
		  EditField_ECUT.Text=Format(Cutout.ECUT,"-#.####")
		  EditField_PCUT.Text=Format(Cutout.PCUT,"-#.####")
		  EditField_airgapthickness.Text=Format(Cutout.GapThickness,"-#.####")
		  EditField_phsppath.Text=Cutout.InputPhaseSpaceName
		  EditField_MC_Seed.Text=Format(Cutout.seed,"#")
		  EditField_Read_buff.Text=Format(Cutout.nreadbuffer,"#")
		  EditField_write_buff.Text=Format(Cutout.nwritebuffer,"#")
		  
		  EditField_scoring_thick.Text=Format(Cutout.ScoringRegionThickness,"#.###")
		  EditField_phantom_thick.Text=Format(Cutout.phantomthickness,"#.###")
		  EditField_Scoring_rad.Text=Format(Cutout.ScoringRegionRadius,"#.###")
		  EditField_phspdistance.Text=Format(Cutout.DistInputPhsp,"#.###")
		  
		  
		  If Cutout.OutputType=1 Then
		    CheckBox_Dosecalc.Value=False
		    CheckBox_phasespace.Value=True
		  elseif Cutout.OutputType=2 Then
		    CheckBox_Dosecalc.Value=True
		    CheckBox_phasespace.Value=False
		  elseif Cutout.OutputType=3  then
		    CheckBox_Dosecalc.Value=True
		    CheckBox_phasespace.Value=True
		  end
		  
		  if Cutout.Started Then
		    CheckBox_Started.Value=True
		    CheckBox_Started.Caption="Started at : "+Cutout.startdate
		  else
		    CheckBox_Started.Value=False
		  end
		  
		  
		  
		  
		  CheckBox_Finished.Value=Cutout.Finished
		  EditField_progress.Text=Format(Cutout.progress,"#")
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		beam_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Cutout As Class_Cutout
	#tag EndProperty

	#tag Property, Flags = &h0
		pop_refresh As boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events PushButton_Close
	#tag Event
		Sub Action()
		  Window_Treatment.beam_update_beam
		  Close
		  gCutout.Writesettings
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_cutout_mat
	#tag Event
		Sub Change()
		  Cutout.CutOutMaterial=me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Gap_Material
	#tag Event
		Sub Change()
		  Cutout.GapMaterial=me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_CutoutThickness
	#tag Event
		Sub TextChange()
		  Cutout.CutOutThickness=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_airgapthickness
	#tag Event
		Sub TextChange()
		  Cutout.GapThickness=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_scoring_thick
	#tag Event
		Sub TextChange()
		  Cutout.ScoringRegionThickness=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Scoring_rad
	#tag Event
		Sub TextChange()
		  Cutout.ScoringRegionRadius=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_phantom_mat
	#tag Event
		Sub Change()
		  Cutout.PhantomMaterial=me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_phantom_thick
	#tag Event
		Sub TextChange()
		  Cutout.phantomthickness=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_histories
	#tag Event
		Sub TextChange()
		  Cutout.NHistories=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_ECUT
	#tag Event
		Sub TextChange()
		  Cutout.ECUT=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_PCUT
	#tag Event
		Sub TextChange()
		  Cutout.PCUT=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Backscatter
	#tag Event
		Sub Change()
		  Cutout.BackscatterType=me.ListIndex
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_write_buff
	#tag Event
		Sub TextChange()
		  Cutout.nwritebuffer=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Read_buff
	#tag Event
		Sub TextChange()
		  Cutout.nreadbuffer=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_jobs
	#tag Event
		Sub TextChange()
		  Cutout.jobs=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_pegs
	#tag Event
		Sub TextChange()
		  Cutout.pegsfile=Trim(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_MC_Seed
	#tag Event
		Sub TextChange()
		  Cutout.seed=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_phspdistance
	#tag Event
		Sub TextChange()
		  Cutout.DistInputPhsp=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Run
	#tag Event
		Sub Action()
		  gCutout.submitjob(beam_index)
		  Cutout_pop
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Shell
	#tag Event
		Sub Change()
		  Cutout.shell_index = me.ListIndex
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_AutoShell
	#tag Event
		Sub Action()
		  //gBEAM.Beams(beam_num).egs_auto_shell=me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_ReloadDefault
	#tag Event
		Sub Action()
		  Cutout.open_template
		  
		  Cutout_pop
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_phasespace
	#tag Event
		Sub Action()
		  Cutout.phspoutput=me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Dosecalc
	#tag Event
		Sub Action()
		  Cutout.doseoutput=me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Started
	#tag Event
		Sub Action()
		  Cutout.Started=me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_progress
	#tag Event
		Sub TextChange()
		  Cutout.progress=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Finished
	#tag Event
		Sub Action()
		  Cutout.Finished=me.Value
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
		Name="beam_index"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
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
		Name="pop_refresh"
		Visible=false
		Group="Behavior"
		InitialValue="0"
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
