#tag Window
Begin Window Window_Beam_Properties
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   3
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   755
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
   Title           =   "Beam Properties"
   Visible         =   True
   Width           =   645
   Begin TabPanel TabPanel
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   695
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   10
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   False
      TabDefinition   =   "General\rGeometry\rAccessories\rElectron"
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   40
      Underline       =   False
      Value           =   1
      Visible         =   True
      Width           =   625
      Begin GroupBox GroupBox6
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Linac Properties"
         Enabled         =   True
         Height          =   325
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel"
         Italic          =   False
         Left            =   22
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   87
         Underline       =   False
         Visible         =   True
         Width           =   603
         Begin Label StaticText13
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   76
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Treatment machine"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   163
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   125
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   76
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
            Text            =   "Beam energy"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   197
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin PopupMenu PopupMenu_BMod
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox6"
            InitialValue    =   ""
            Italic          =   False
            Left            =   264
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
            Top             =   116
            Underline       =   False
            Visible         =   True
            Width           =   265
         End
         Begin PopupMenu PopupMenu_E_RT
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox6"
            InitialValue    =   ""
            Italic          =   False
            Left            =   264
            ListIndex       =   0
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
            Top             =   161
            Underline       =   False
            Visible         =   True
            Width           =   264
         End
         Begin PopupMenu PopupMenu_E_BE
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox6"
            InitialValue    =   ""
            Italic          =   False
            Left            =   264
            ListIndex       =   0
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
            Top             =   195
            Underline       =   False
            Visible         =   True
            Width           =   264
         End
         Begin TextField EditField_BDescript
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   262
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
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   328
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   265
         End
         Begin TextField EditField_BType
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   262
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
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   370
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   265
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   76
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   13
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Beam modality"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   118
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin Label StaticText51
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   74
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   14
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Beam description"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   330
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   74
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   15
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Beam type"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   372
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   76
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   18
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Beam applicator:"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   229
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin PopupMenu PopupMenu_E_BA
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox6"
            InitialValue    =   ""
            Italic          =   False
            Left            =   264
            ListIndex       =   0
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
            Top             =   229
            Underline       =   False
            Visible         =   True
            Width           =   264
         End
         Begin TextField EditField_BAppType
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   262
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
            Top             =   286
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   265
         End
         Begin Label StaticText58
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   74
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   21
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Applicator Type"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   288
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
      End
      Begin GroupBox GroupBox2
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Wedge"
         Enabled         =   True
         Height          =   178
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel"
         Italic          =   False
         Left            =   22
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   535
         Underline       =   False
         Visible         =   True
         Width           =   592
         Begin PopupMenu PopupMenu_Wedge_Static_Ang
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   False
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            InitialValue    =   ""
            Italic          =   False
            Left            =   182
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   645
            Underline       =   False
            Visible         =   True
            Width           =   117
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
            Left            =   60
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
            Text            =   "Wedge Angle"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   647
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
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
            Left            =   60
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   2
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Wedge Orientation"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   681
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   110
         End
         Begin PopupMenu PopupMenu_Wedge_Static_Or
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   False
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            InitialValue    =   ""
            Italic          =   False
            Left            =   182
            ListIndex       =   0
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
            Top             =   679
            Underline       =   False
            Visible         =   True
            Width           =   117
         End
         Begin RadioButton RadioButton_Wedge_Dynamic
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Dynamic Wedge"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   350
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   4
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   611
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   112
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
            Left            =   60
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   5
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Wedge ID"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   562
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin TextField EditField_WedgeID
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
            Left            =   182
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
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   560
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   141
         End
         Begin TextField EditField_Wedge_Dynamic_Angle
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
            Enabled         =   False
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   350
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
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   643
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   133
         End
         Begin PopupMenu PopupMenu_Wedge_Dynamic_Or
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   False
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            InitialValue    =   ""
            Italic          =   False
            Left            =   350
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   8
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   677
            Underline       =   False
            Visible         =   True
            Width           =   133
         End
         Begin RadioButton RadioButton_Wedge_Static
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Static Wedge"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   182
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   9
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   611
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   124
         End
         Begin RadioButton RadioButton_Wedge_none
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "None"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   60
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   10
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   611
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   124
         End
      End
      Begin GroupBox GroupBox3
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "MLC"
         Enabled         =   True
         Height          =   440
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel"
         Italic          =   False
         Left            =   25
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   77
         Underline       =   False
         Visible         =   True
         Width           =   589
         Begin PushButton PushButton_mlc_import
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Import MLC file"
            Default         =   False
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   44
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   361
            Underline       =   False
            Visible         =   True
            Width           =   134
         End
         Begin Canvas Canvas_MLC
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   377
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            Left            =   190
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   3
            TabStop         =   True
            Top             =   103
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   414
         End
         Begin PushButton PushButton_mlc_delete
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Delete MLC"
            Default         =   False
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   44
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   393
            Underline       =   False
            Visible         =   True
            Width           =   134
         End
         Begin TextField EditField_mlc_type
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
            HelpTag         =   "Static, Step and Shoot, Dynamic"
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   44
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
            Top             =   184
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   134
         End
         Begin TextField EditField_mlc_fields
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
            Left            =   44
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
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   246
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   134
         End
         Begin Label StaticText54
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   "Static, Step and Shoot, Dynamic"
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   44
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   5
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Field Type"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   160
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   82
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
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   44
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
            Text            =   "Number of fields"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   222
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   134
         End
         Begin TextField EditField_mlc_field_index
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
            HelpTag         =   "The treatment ﬁeld indices, INDEX(I)’s, are numbers in the range [0,1] (with INDEX(I)>INDEX(I-1)) which determine which ﬁeld is used in a particular history.\r\rAt the beginning of each history a random number in the range [0,1], RNDM1, is compared to (INDEX(I),I=1,NFIELDS). The lowest value of I for which INDEX(I) ≥RNDM1 is the ﬁeld used in the history.\r\rNote that this means that INDEX(I)-INDEX(I-1) is a measure of the probability, or intensity, of ﬁeld"
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   44
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
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   307
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   134
         End
         Begin Label StaticText_MLC_fieldnum
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
            Left            =   44
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
            Text            =   "Index of field"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   281
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   134
         End
         Begin ScrollBar ScrollBar_mlcfields
            AcceptFocus     =   True
            AutoDeactivate  =   True
            Enabled         =   True
            Height          =   23
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            Left            =   190
            LineStep        =   1
            LiveScroll      =   True
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Maximum         =   100
            Minimum         =   0
            PageStep        =   20
            Scope           =   0
            TabIndex        =   9
            TabPanelIndex   =   3
            TabStop         =   True
            Top             =   486
            Value           =   0
            Visible         =   True
            Width           =   414
         End
         Begin PushButton PushButton_mlc_positions
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Edit Leaf positions"
            Default         =   False
            Enabled         =   True
            Height          =   31
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   44
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   11
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   468
            Underline       =   False
            Visible         =   True
            Width           =   134
         End
         Begin TextField EditField_mlc_Model
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
            Left            =   44
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
            TabIndex        =   12
            TabPanelIndex   =   3
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
            Width           =   134
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
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   44
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
            Text            =   "Model"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   103
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   82
         End
      End
      Begin GroupBox GroupBox_Angles
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Angles"
         Enabled         =   True
         Height          =   53
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel"
         Italic          =   False
         Left            =   27
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   150
         Underline       =   False
         Visible         =   True
         Width           =   593
         Begin Label StaticText9
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Angles"
            Italic          =   False
            Left            =   211
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
            Text            =   "Collimator (deg)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   174
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   92
         End
         Begin Label StaticText16
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Angles"
            Italic          =   False
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Gantry (deg)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   174
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   70
         End
         Begin Label StaticText17
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Angles"
            Italic          =   False
            Left            =   422
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
            Text            =   "Couch (deg)\r\r"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   174
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   72
         End
         Begin TextField EditField_Coll_Ang
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
            InitialParent   =   "GroupBox_Angles"
            Italic          =   False
            Left            =   315
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
            Top             =   174
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   63
         End
         Begin TextField EditField_Gantry_Ang
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
            InitialParent   =   "GroupBox_Angles"
            Italic          =   False
            Left            =   124
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
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   174
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   62
         End
         Begin TextField EditField_Couch_Ang
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
            InitialParent   =   "GroupBox_Angles"
            Italic          =   False
            Left            =   527
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
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   174
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   64
         End
      End
      Begin GroupBox GroupBox_Cut_Para
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Cut Out Parameters"
         Enabled         =   True
         Height          =   366
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel"
         Italic          =   False
         Left            =   22
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
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   82
         Underline       =   False
         Visible         =   True
         Width           =   603
         Begin PushButton PushButton_Electron_Cutout
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Edit Cut Out Shape"
            Default         =   False
            Enabled         =   True
            Height          =   24
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Cut_Para"
            Italic          =   False
            Left            =   39
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
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   131
            Underline       =   False
            Visible         =   True
            Width           =   147
         End
         Begin TextField EditField_cutout_thick
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
            InitialParent   =   "GroupBox_Cut_Para"
            Italic          =   False
            Left            =   153
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
            Text            =   "1.7"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   206
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   60
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
            InitialParent   =   "GroupBox_Cut_Para"
            Italic          =   False
            Left            =   39
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
            Text            =   "Cut Out Thicknes:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   207
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   107
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
            InitialParent   =   "GroupBox_Cut_Para"
            Italic          =   False
            Left            =   216
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
            Text            =   "cm"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   206
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   32
         End
         Begin Canvas Canvas_ecutout
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   299
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_Cut_Para"
            Left            =   253
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   4
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   131
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   361
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
            InitialParent   =   "GroupBox_Cut_Para"
            Italic          =   False
            Left            =   253
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   5
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Shape Preview:"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   108
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
      End
      Begin TextField EditField_JAW_fields
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
         InitialParent   =   "TabPanel"
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
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   116
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   75
      End
      Begin Label StaticText80
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel"
         Italic          =   False
         Left            =   27
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
         Text            =   "Number of fields"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   116
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   111
      End
      Begin TextField EditField_JAW_type
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
         HelpTag         =   "Static, Step and Shoot, Dynamic"
         Index           =   -2147483648
         InitialParent   =   "TabPanel"
         Italic          =   False
         Left            =   111
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
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   82
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   107
      End
      Begin Label StaticText81
         AutoDeactivate  =   False
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   "Static, Step and Shoot, Dynamic"
         Index           =   -2147483648
         InitialParent   =   "TabPanel"
         Italic          =   False
         Left            =   27
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Field Type"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   82
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   65
      End
      Begin ScrollBar ScrollBar_JAWfields
         AcceptFocus     =   True
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel"
         Left            =   495
         LineStep        =   1
         LiveScroll      =   True
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Maximum         =   100
         Minimum         =   0
         PageStep        =   20
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   2
         TabStop         =   True
         Top             =   116
         Value           =   0
         Visible         =   True
         Width           =   124
      End
      Begin Label StaticText_Jaw_Index
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel"
         Italic          =   False
         Left            =   234
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Index of field"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   116
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   132
      End
      Begin TextField EditField_JAW_field_index
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
         InitialParent   =   "TabPanel"
         Italic          =   False
         Left            =   403
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
         Top             =   116
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   80
      End
      Begin GroupBox GroupBox_Isocenter
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Isocenter"
         Enabled         =   True
         Height          =   59
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel"
         Italic          =   False
         Left            =   27
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   208
         Underline       =   False
         Visible         =   True
         Width           =   592
      End
      Begin GroupBox GroupBox1
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Distance"
         Enabled         =   True
         Height          =   63
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel"
         Italic          =   False
         Left            =   27
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   274
         Underline       =   False
         Visible         =   True
         Width           =   593
         Begin TextField EditField_Isoc
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
            Left            =   230
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
            TabPanelIndex   =   2
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
            Width           =   80
         End
         Begin Label StaticText18
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
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Nominal Isocenter Distance (cm)"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   304
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   178
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   538
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
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   64
         End
         Begin Label StaticText76
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
            Left            =   331
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
            Text            =   "Source to Skin distance (SSD) (cm)"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   304
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   195
         End
      End
      Begin Label StaticText45
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   "BS calculation from Helen Liu, 2000"
         Index           =   -2147483648
         InitialParent   =   "TabPanel"
         Italic          =   False
         Left            =   234
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
         Text            =   "MU Backscatter % (all fields)"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Arial"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   84
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   157
      End
      Begin TextField EditField_BS
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
         InitialParent   =   "TabPanel"
         Italic          =   False
         Left            =   403
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
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   84
         Underline       =   False
         UseFocusRing    =   False
         Visible         =   True
         Width           =   80
      End
      Begin GroupBox GroupBox_FieldSize
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Field Size"
         Enabled         =   True
         Height          =   376
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel"
         Italic          =   False
         Left            =   27
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
         Top             =   349
         Underline       =   False
         Visible         =   True
         Width           =   593
         Begin TextField EditField_X2
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
            InitialParent   =   "GroupBox_FieldSize"
            Italic          =   False
            Left            =   269
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
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   375
            Underline       =   False
            UseFocusRing    =   False
            Visible         =   True
            Width           =   50
         End
         Begin Label StaticText26
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_FieldSize"
            Italic          =   False
            Left            =   234
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   4
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "X 2"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   375
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   25
         End
         Begin TextField EditField_X1
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
            InitialParent   =   "GroupBox_FieldSize"
            Italic          =   False
            Left            =   172
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
            Top             =   375
            Underline       =   False
            UseFocusRing    =   False
            Visible         =   True
            Width           =   50
         End
         Begin Label StaticText25
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_FieldSize"
            Italic          =   False
            Left            =   146
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
            Text            =   "X 1"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   375
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   28
         End
         Begin TextField EditField_FieldX
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
            InitialParent   =   "GroupBox_FieldSize"
            Italic          =   False
            Left            =   88
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
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   375
            Underline       =   False
            UseFocusRing    =   False
            Visible         =   True
            Width           =   50
         End
         Begin Label StaticText24
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_FieldSize"
            Italic          =   False
            Left            =   38
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
            Text            =   "X (cm)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   375
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   45
         End
         Begin Label StaticText27
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_FieldSize"
            Italic          =   False
            Left            =   330
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   11
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Y (cm)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   375
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   47
         End
         Begin TextField EditField_FieldY
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
            InitialParent   =   "GroupBox_FieldSize"
            Italic          =   False
            Left            =   377
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
            Top             =   375
            Underline       =   False
            UseFocusRing    =   False
            Visible         =   True
            Width           =   50
         End
         Begin Label StaticText28
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_FieldSize"
            Italic          =   False
            Left            =   436
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   9
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Y 1"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   375
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   28
         End
         Begin TextField EditField_Y1
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
            InitialParent   =   "GroupBox_FieldSize"
            Italic          =   False
            Left            =   467
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
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   375
            Underline       =   False
            UseFocusRing    =   False
            Visible         =   True
            Width           =   50
         End
         Begin Label StaticText29
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_FieldSize"
            Italic          =   False
            Left            =   527
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   5
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Y 2"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   375
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   27
         End
         Begin TextField EditField_Y2
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
            InitialParent   =   "GroupBox_FieldSize"
            Italic          =   False
            Left            =   552
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
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   375
            Underline       =   False
            UseFocusRing    =   False
            Visible         =   True
            Width           =   50
         End
         Begin Canvas Canvas_JAWS
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   293
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox_FieldSize"
            Left            =   143
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   14
            TabPanelIndex   =   2
            TabStop         =   True
            Top             =   416
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   357
         End
      End
      Begin GroupBox GroupBox7
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Prescription"
         Enabled         =   True
         Height          =   228
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel"
         Italic          =   False
         Left            =   22
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   458
         Underline       =   False
         Visible         =   True
         Width           =   602
         Begin TextField EditField_NoTx
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
            InitialParent   =   "GroupBox7"
            Italic          =   False
            Left            =   264
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
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   586
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   265
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
            InitialParent   =   "GroupBox7"
            Italic          =   False
            Left            =   76
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
            Text            =   "Fraction number"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   588
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   138
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
            InitialParent   =   "GroupBox7"
            Italic          =   False
            Left            =   76
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
            Text            =   "MUs"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   552
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin TextField EditField_MU
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
            InitialParent   =   "GroupBox7"
            Italic          =   False
            Left            =   265
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
            Top             =   552
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   265
         End
         Begin TextField EditField_DR
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
            InitialParent   =   "GroupBox7"
            Italic          =   False
            Left            =   264
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
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   518
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   265
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
            InitialParent   =   "GroupBox7"
            Italic          =   False
            Left            =   76
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
            Text            =   "Dose rate"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   520
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin TextField EditField_BWeight
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
            InitialParent   =   "GroupBox7"
            Italic          =   False
            Left            =   264
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
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   484
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   265
         End
         Begin Label StaticText78
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox7"
            Italic          =   False
            Left            =   76
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   7
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Beam weight"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   486
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin TextField EditField_TxDose
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
            InitialParent   =   "GroupBox7"
            Italic          =   False
            Left            =   262
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
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   620
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   265
         End
         Begin Label StaticText771
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox7"
            Italic          =   False
            Left            =   74
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   9
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Fraction dose"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "Arial"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   622
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   127
         End
      End
      Begin TextField EditField_Iso_X
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
         InitialParent   =   "TabPanel"
         Italic          =   False
         Left            =   124
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
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   235
         Underline       =   False
         UseFocusRing    =   False
         Visible         =   True
         Width           =   50
      End
      Begin TextField EditField_Iso_Y
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
         InitialParent   =   "TabPanel"
         Italic          =   False
         Left            =   315
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
         TabIndex        =   15
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   235
         Underline       =   False
         UseFocusRing    =   False
         Visible         =   True
         Width           =   50
      End
      Begin TextField EditField_Iso_Z
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
         InitialParent   =   "TabPanel"
         Italic          =   False
         Left            =   541
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
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   235
         Underline       =   False
         UseFocusRing    =   False
         Visible         =   True
         Width           =   50
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
         InitialParent   =   "TabPanel"
         Italic          =   False
         Left            =   73
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   17
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "X (cm)"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Arial"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   235
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   39
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
         InitialParent   =   "TabPanel"
         Italic          =   False
         Left            =   269
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   18
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Y (cm)"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Arial"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   235
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   41
      End
      Begin Label StaticText42
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel"
         Italic          =   False
         Left            =   468
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
         Text            =   "Z (cm)"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Arial"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   235
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   47
      End
   End
   Begin PopupMenu PopupMenu_Beam
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
      Left            =   124
      ListIndex       =   0
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
      Top             =   14
      Underline       =   False
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   22
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
      Text            =   "Beam Number"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  Dim ii as Integer
		  
		  Window_Treatment.beam_update_beam
		  
		  
		  ii=StrComp(beam.MLC.MLC_Type,"STATIC",1)
		  ii=StrComp(beam.MLC.MLC_Type,"DYNAMIC",1)
		  ii=StrComp(beam.MLC.MLC_Type,"Step and Shoot",1)
		  
		  
		  if StrComp(beam.MLC.MLC_Type,"STATIC",1)=0 or StrComp(beam.MLC.MLC_Type,"DYNAMIC",1)=0 or StrComp(beam.MLC.MLC_Type,"Step and Shoot",1) =0 then
		  else
		    if beam.MLC.NumberofFields>1 Then
		      if InStr(beam.MLC.MLC_Type,"Step")<1 Then
		        beam.MLC.MLC_Type="DYNAMIC"
		      else
		        beam.MLC.MLC_Type="Step and Shoot"
		      end
		    else
		      beam.MLC.MLC_Type="STATIC"
		    end
		  end
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1000
		Sub Accessories_Jaw_Draw()
		  //-------------------------------------------------
		  // Update Jaw Pattern
		  //
		  //-------------------------------------------------
		  dim size,i,k,pixx,pixy,leaf_pix_width,y_pos_top , f_index,leaf_pix_height,y_pos as integer
		  dim xx,yy,scale_width,scale_height,leaf_width,leaf_height,start_y_cm,start_y_cm2,start_x, mlc_height_cm, starty as Single
		  dim g as Graphics
		  //-------------------------------------------------
		  
		  
		  Jaw=New Picture(Canvas_JAWS.Width,Canvas_JAWS.Height,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		  
		  g=jaw.Graphics
		  
		  scale_width=45/g.Width  //45 cm total width
		  scale_height=45/g.Height // 45 cm total height
		  
		  
		  g.foreColor = rgb(255,255,255)
		  g.FillRect 0,0,me.Width,me.Height
		  g.PenHeight=1
		  g.PenWidth=1
		  
		  
		  g.foreColor=&c00FF00
		  pixy = round(g.Height/2)
		  pixx=round(g.Width/2)
		  
		  // Draw Cross hairs
		  g.DrawLine pixx,0,pixx,g.Height
		  g.DrawLine 0,pixy,g.Width,pixy
		  g.foreColor=&c000FFF
		  pixy = round(g.Height/2)
		  for i =-20 to 20
		    xx=(i/scale_width )
		    pixx=round((xx+g.Width/2))
		    g.DrawLine pixx,pixy-5,pixx,pixy+5
		  next
		  
		  pixx=round(g.Width/2)
		  for i =-20 to 20
		    yy=(i/scale_height)
		    pixy=round((yy+g.Height/2))
		    g.DrawLine pixx-5,pixy,pixx+5,pixy
		  next
		  
		  
		  
		  // End Cross hairs
		  
		  
		  // JAW index
		  f_index=jaw_field
		  
		  if f_index>UBound(beam.Collimator.Fields) or f_index<0 Then
		    Return
		  end
		  
		  g.foreColor=RGB(255,0,0)
		  g.DrawString("(x,y : "+Format(Mouse_X,"-#.##")+", "+Format(Mouse_y,"-#.##")+ ")",7,g.Height-7)
		  
		  
		  // Draw JAW pattern
		  if UBound(beam.Collimator.Fields)>-1 and f_index>-1 Then
		    
		    // JAW X
		    g.foreColor=RGB(255,0,0)
		    
		    // Determine Y values
		    start_y_cm2=20
		    start_y_cm=-20
		    y_pos=Round((-start_y_cm+45/2)/scale_height)
		    y_pos_top=Round((-start_y_cm2+45/2)/scale_height)
		    
		    //Determine X values
		    xx=beam.Collimator.Fields(f_index).X1
		    start_x=-xx+g.Width*scale_width/2
		    leaf_pix_width=Round(start_x/scale_width)
		    
		    
		    //Draw X1
		    g.DrawLine (0,y_pos,leaf_pix_width,y_pos)
		    g.DrawLine (0,y_pos_top,leaf_pix_width,y_pos_top)
		    g.DrawLine(leaf_pix_width,y_pos,leaf_pix_width,y_pos_top)
		    g.DrawString "X1 ",10,10
		    
		    
		    //Determine X values
		    xx=beam.Collimator.Fields(f_index).X2
		    start_x=xx+g.Width*scale_width/2
		    leaf_pix_width=Round(start_x/scale_width)
		    
		    
		    //Draw X2
		    g.DrawLine (g.Width,y_pos,leaf_pix_width,y_pos)
		    g.DrawLine (g.Width,y_pos_top,leaf_pix_width,y_pos_top)
		    g.DrawLine(leaf_pix_width,y_pos,leaf_pix_width,y_pos_top)
		    g.DrawString "X2 ",g.Width-30,10
		    
		    
		    
		    
		    
		    
		    
		    // JAW Y
		    g.foreColor=RGB(0,255,255)
		    
		    
		    pixx=Round(-20/scale_width+g.Width/2)
		    leaf_pix_width=20/scale_width+g.Width/2
		    
		    
		    //Draw Y2
		    start_y_cm=beam.Collimator.Fields(f_index).y2
		    y_pos=Round((-start_y_cm+45/2)/scale_height)
		    g.DrawLine(pixx,y_pos,leaf_pix_width,y_pos)
		    g.DrawLine(pixx,0,pixx,y_pos)
		    g.DrawLine(leaf_pix_width,0,leaf_pix_width,y_pos)
		    g.DrawString "Y2",g.Width/2-5,10
		    
		    //Draw Y1
		    start_y_cm=beam.Collimator.Fields(f_index).y1
		    y_pos=Round((start_y_cm+45/2)/scale_height)
		    g.DrawLine(pixx,y_pos,leaf_pix_width,y_pos)
		    g.DrawLine(pixx,g.Height,pixx,y_pos)
		    g.DrawLine(leaf_pix_width,g.Height,leaf_pix_width,y_pos)
		    g.DrawString "Y1",g.Width/2-5,g.Height-10
		    
		    
		    
		    
		    
		  end
		  
		  Canvas_JAWS.Refresh(False)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Accessories_MLC_Draw()
		  //-------------------------------------------------
		  // Update MLC Pattern
		  //
		  //-------------------------------------------------
		  dim size,i,k,pixx,pixy,leaf_pix_width,y_pos_top , f_index,leaf_pix_height,End_x,y_width,y_pos_bot as integer
		  dim xx,yy,scale_width,scale_height,leaf_width,leaf_height,start_y_cm,start_y_cm2,start_x, mlc_height_cm, starty,start_x_cm2,start_x_cm as Single
		  Dim g as Graphics
		  Dim x_pos_bot,x_pos_top,x_width,start_y,end_y as Integer
		  //-------------------------------------------------
		  
		  MLC=New Picture(Canvas_MLC.Width,Canvas_MLC.Height,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		  
		  g=MLC.Graphics
		  scale_width=45/g.Width  //45 cm total width
		  scale_height=45/g.Height // 45 cm total height
		  
		  
		  g.foreColor = rgb(255,255,255)
		  g.FillRect 0,0,me.Width,me.Height
		  g.PenHeight=1
		  g.PenWidth=1
		  
		  
		  g.foreColor=&c00FF00
		  pixy = round(g.Height/2)
		  pixx=round(g.Width/2)
		  
		  // Draw Cross hairs
		  g.DrawLine pixx,0,pixx,g.Height
		  g.DrawLine 0,pixy,g.Width,pixy
		  g.foreColor=&c000FFF
		  pixy = round(g.Height/2)
		  for i =-20 to 20
		    xx=(i/scale_width )
		    pixx=round((xx+g.Width/2))
		    g.DrawLine pixx,pixy-5,pixx,pixy+5
		  next
		  
		  pixx=round(g.Width/2)
		  for i =-20 to 20
		    yy=(i/scale_height)
		    pixy=round((yy+g.Height/2))
		    g.DrawLine pixx-5,pixy,pixx+5,pixy
		  next
		  // End Cross hairs
		  
		  
		  // MLC index
		  f_index=ScrollBar_mlcfields.Value
		  if f_index>UBound(beam.MLC.Fields) Then
		    Return
		  end
		  
		  
		  if beam.MLC.NumberofLeafPairs<>UBound(beam.MLC.LeafBoundaries) Then
		    Return
		  end
		  
		  
		  // Draw MLC pattern
		  if UBound(beam.MLC.Fields)>-1 and f_index>-1 Then
		    if beam.MLC.Model_Type=0 Then
		      // Bank B
		      g.foreColor=RGB(255,0,0)
		      for i=UBound(beam.MLC.Fields(f_index).Leaf_B) DownTo 0
		        // Determine Y values
		        start_y_cm2=beam.MLC.LeafBoundaries(i)
		        start_y_cm=beam.MLC.LeafBoundaries(i+1)
		        y_pos_top=Round((-start_y_cm+45/2)/scale_height)
		        y_pos_bot=Round((-start_y_cm2+45/2)/scale_height)
		        
		        //Determine X values
		        xx=beam.MLC.Fields(f_index).Leaf_B(i)
		        start_x=-xx+g.Width*scale_width/2
		        leaf_pix_width=Round(start_x/scale_width)
		        
		        
		        //Draw Leaf
		        g.DrawLine (0,y_pos_bot,leaf_pix_width,y_pos_bot)
		        g.DrawLine (0,y_pos_top,leaf_pix_width,y_pos_top)
		        g.DrawLine(leaf_pix_width,y_pos_bot,leaf_pix_width,y_pos_top)
		        
		        if i=0 Then
		          g.DrawString "B "+str(beam.MLC.NumberofLeafPairs),10,10
		        end
		      next
		      
		      // Bank A
		      g.foreColor=RGB(0,255,255)
		      for i= UBound(beam.MLC.Fields(f_index).Leaf_A) DownTo 0
		        start_y_cm2=beam.MLC.LeafBoundaries(i)
		        start_y_cm=beam.MLC.LeafBoundaries(i+1)
		        y_pos_bot=Round((-start_y_cm+45/2)/scale_height)
		        y_pos_top=Round((-start_y_cm2+45/2)/scale_height)
		        xx=beam.MLC.Fields(f_index).Leaf_A(i)
		        start_x=xx/scale_width+g.Width/2
		        pixx=Round(start_x)
		        //Draw Leaf
		        g.DrawLine(pixx,y_pos_bot,g.Width,y_pos_bot)
		        g.DrawLine(pixx,y_pos_top,g.Width,y_pos_top)
		        g.DrawLine(pixx,y_pos_bot,pixx,y_pos_top)
		        if i=0 Then
		          g.DrawString "A "+str(beam.MLC.NumberofLeafPairs),g.Width/2+10,10
		        end
		      next
		      
		    Elseif beam.MLC.Model_Type=1 Then // Draw Binary MLC
		      
		      if beam.MLC.MLC_Direction=0 Then
		        // For leaves parallel to X
		        // Bank A
		        g.foreColor=RGB(255,0,0)
		        for i=UBound(beam.MLC.Fields(f_index).Leaf_A) DownTo 0
		          // Determine Y values
		          start_y_cm2=beam.MLC.LeafBoundaries(i)
		          start_y_cm=beam.MLC.LeafBoundaries(i+1)
		          y_pos_bot=Round((-start_y_cm2+45/2)/scale_height)
		          y_pos_top=Round((-start_y_cm+45/2)/scale_height)
		          y_width=y_pos_bot-y_pos_top
		          //Determine X values
		          xx=beam.MLC.Fields(f_index).Leaf_A(i)
		          start_x=Round(-2.5/scale_width+g.Width/2)
		          end_x=Round(2.5/scale_width+g.Width/2)
		          leaf_pix_width=End_x-start_x
		          if xx=0 Then
		            g.FillRect(start_x,y_pos_top,leaf_pix_width,y_width)
		            g.DrawRect(start_x,y_pos_top,leaf_pix_width,y_width)
		          Else
		            g.DrawLine(start_x,y_pos_top,start_x,y_pos_top+y_width)
		            g.DrawLine(start_x+leaf_pix_width,y_pos_top,start_x+leaf_pix_width,y_pos_top+y_width)
		          end
		          if i=0 Then
		            g.DrawString str(beam.MLC.NumberofLeafPairs) +" binary leaves",10,10
		          end
		        Next
		        
		      elseif beam.MLC.MLC_Direction=1 Then
		        // For leaves parallel to Y
		        // Bank A
		        g.foreColor=RGB(255,0,0)
		        for i=UBound(beam.MLC.Fields(f_index).Leaf_A) DownTo 0
		          // Determine Y values
		          start_x_cm2=beam.MLC.LeafBoundaries(i)
		          start_x_cm=beam.MLC.LeafBoundaries(i+1)
		          x_pos_bot=Round((start_x_cm2+45/2)/scale_width)
		          x_pos_top=Round((start_x_cm+45/2)/scale_width)
		          x_width=x_pos_bot-x_pos_top
		          //Determine X values
		          xx=beam.MLC.Fields(f_index).Leaf_A(i)
		          start_y=Round(-2.5/scale_height+g.Height/2)
		          end_y=Round(2.5/scale_height+g.Height/2)
		          leaf_pix_width=End_y-start_y
		          if xx=0 Then
		            g.FillRect(x_pos_bot,start_y,x_width,leaf_pix_width)
		            g.DrawRect(x_pos_bot,start_y,x_width,leaf_pix_width)
		          Else
		            g.DrawLine(x_pos_bot,start_y,x_pos_bot+x_width,start_y)
		            g.DrawLine(x_pos_bot,start_y+leaf_pix_width,x_pos_bot+x_width,start_y+leaf_pix_width)
		          end
		          if i=0 Then
		            g.DrawString str(beam.MLC.NumberofLeafPairs) +" binary leaves",10,10
		          end
		        Next
		      end
		    end
		  end
		  
		  g.foreColor=RGB(0,0,0)
		  g.DrawString("(x,y : "+Format(Mouse_X,"-#.##")+", "+Format(Mouse_y,"-#.##")+ ")",7,g.Height-7)
		  
		  Canvas_MLC.Refresh(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Accessories_MLC_info()
		  
		  
		  EditField_mlc_Model.Text=beam.MLC.Model
		  
		  if mlc_field>UBound(beam.MLC.Fields) Then
		    mlc_field=UBound(beam.MLC.Fields)
		  end
		  if mlc_field<0 Then
		    mlc_field=0
		  end
		  
		  
		  if UBound(beam.MLC.Fields)>-1 and mlc_field>=0 and mlc_field<=UBound(beam.MLC.Fields) Then
		    
		    if len(beam.MLC.MLC_Type)<1 Then
		      if  beam.MLC.NumberofFields<2 Then
		        beam.MLC.MLC_Type="STATIC"
		      else
		        beam.MLC.MLC_Type="DYNAMIC"
		      end
		    end
		    
		    
		    EditField_mlc_type.Text=beam.MLC.MLC_Type
		    EditField_mlc_type.Enabled=True
		    EditField_mlc_field_index.Enabled=True
		    ScrollBar_mlcfields.Minimum=0
		    ScrollBar_mlcfields.Maximum=UBound(beam.MLC.Fields)
		    EditField_mlc_field_index.Text=str(beam.MLC.Fields(mlc_field).Indexnum)
		    EditField_mlc_fields.Text=str(beam.MLC.NumberofFields)
		    ScrollBar_mlcfields.Enabled=True
		  else
		    EditField_mlc_type.Text=""
		    EditField_mlc_type.Enabled=False
		    EditField_mlc_field_index.Enabled=False
		    EditField_mlc_field_index.Text=""
		    EditField_mlc_fields.Text=""
		    ScrollBar_mlcfields.Enabled=False
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Accessories_populate()
		  Dim name, energy, app,temp,wedge,wedge_rot ,tmpstr,beam_mode as string
		  Dim i ,j ,k as integer
		  Dim n_match, e_match,w_match,wo_match as Boolean
		  Dim f as FolderItem
		  '==================================
		  
		  Accessories_MLC_info
		  
		  
		  
		  
		  
		  Wedge=Beam.Wedge_Angle
		  wedge_rot=Beam.Wedge_Rotation
		  
		  '========WEDGE POP=========
		  EditField_WedgeID.Text = beam.Wedge_ID
		  if Beam.Wedge_Type="Dynamic" then
		    PopupMenu_Wedge_Static_Ang.Enabled=False
		    PopupMenu_Wedge_Static_Or.Enabled=False
		    RadioButton_Wedge_Dynamic.Value=True
		    EditField_Wedge_Dynamic_Angle.Enabled=True
		    PopupMenu_Wedge_Dynamic_Or.Enabled=True
		    EditField_Wedge_Dynamic_Angle.Text=beam.Wedge_Angle
		    
		    Accessories_pop_wedge_dyn_rot
		    
		    
		    wo_match=False
		    for i=0 to PopupMenu_Wedge_Dynamic_Or.ListCount-1
		      if wedge_rot=PopupMenu_Wedge_Dynamic_Or.list(i) then
		        PopupMenu_Wedge_Dynamic_Or.ListIndex=i
		        wo_match=True
		        Exit
		      end
		    next
		    
		  elseif Beam.Wedge_Type="Static" then
		    RadioButton_Wedge_Dynamic.Value=False
		    
		    EditField_Wedge_Dynamic_Angle.Enabled=False
		    PopupMenu_Wedge_Dynamic_Or.Enabled=False
		    
		    PopupMenu_Wedge_Static_Ang.Enabled=True
		    PopupMenu_Wedge_Static_Or.Enabled=True
		    RadioButton_Wedge_Static.Value=True
		    
		    
		    Accessories_pop_wedge_static
		    w_match=False
		    for i=0 to PopupMenu_Wedge_static_Ang.ListCount-1
		      if wedge=PopupMenu_Wedge_static_Ang.list(i) then
		        PopupMenu_Wedge_static_Ang.ListIndex=i
		        w_match=True
		        Exit
		      end
		    next
		    
		    Accessories_pop_wedge_static_rot
		    wo_match=False
		    for i=0 to PopupMenu_Wedge_static_Or.ListCount-1
		      if wedge_rot=PopupMenu_Wedge_static_Or.list(i) then
		        PopupMenu_Wedge_static_Or.ListIndex=i
		        wo_match=True
		        Exit
		      end
		    next
		    
		  elseif Beam.Wedge_Type="" then
		    EditField_Wedge_Dynamic_Angle.Enabled=False
		    PopupMenu_Wedge_Dynamic_Or.Enabled=False
		    PopupMenu_Wedge_Static_Ang.Enabled=False
		    PopupMenu_Wedge_Static_Or.Enabled=False
		    RadioButton_Wedge_none.Value=True
		    
		    
		  end
		  '=====END WEDGE =============
		  Accessories_MLC_Draw
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Accessories_pop_wedge_dyn_rot()
		  Dim i,j,k as integer
		  
		  PopupMenu_Wedge_Dynamic_Or.DeleteAllRows
		  PopupMenu_Wedge_Dynamic_Or.AddRow ""
		  PopupMenu_Wedge_Dynamic_Or.AddRow "Y1 (IN)"
		  PopupMenu_Wedge_Dynamic_Or.AddRow "Y2 (OUT)"
		  
		  for i=0 to PopupMenu_Wedge_Dynamic_Or.ListCount-1
		    if PopupMenu_Wedge_Dynamic_Or.List(i)=beam.Wedge_Rotation Then
		      PopupMenu_Wedge_Dynamic_Or.ListIndex=i
		      Exit
		    end
		  Next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Accessories_pop_wedge_static()
		  Dim i,k as integer
		  
		  PopupMenu_Wedge_Static_Ang.DeleteAllRows
		  PopupMenu_Wedge_Static_Or.DeleteAllRows
		  
		  PopupMenu_Wedge_Static_Ang.AddRow ""
		  
		  for k=0 to UBound( gLinacs.all_linacs)
		    if  gLinacs.all_linacs(k).Mode=beam.Beam_Mode and gLinacs.All_Linacs(k).RT_name=beam.RT_name and _
		      gLinacs.all_linacs(k).Energy=beam.Beam_Energy then
		      for i =0 to UBound(gLinacs.all_linacs(k).Wedges)
		        PopupMenu_Wedge_Static_Ang.AddRow trim( gLinacs.all_linacs(k).Wedges(i).Angle)
		      next
		    end
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Accessories_pop_wedge_static_rot()
		  Dim i,j,k as integer
		  
		  PopupMenu_Wedge_Static_Or.DeleteAllRows
		  PopupMenu_Wedge_Static_Or.AddRow ""
		  
		  for k=0 to UBound( gLinacs.all_linacs)
		    if  gLinacs.all_linacs(k).Mode=beam.Beam_Mode and gLinacs.All_Linacs(k).RT_name=beam.RT_name and _
		      gLinacs.all_linacs(k).Energy=beam.Beam_Energy then
		      for i =0 to UBound(gLinacs.all_linacs(k).Wedges)
		        if gLinacs.All_Linacs(k).Wedges(i).angle=beam.Wedge_Angle Then
		          for j=0 to UBound(gLinacs.All_Linacs(k).Wedges(i).rotations)
		            PopupMenu_Wedge_Static_Or.AddRow trim( gLinacs.all_linacs(k).Wedges(i).Rotations(j))
		          next
		        end
		      next
		    end
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub General_populate()
		  Dim name, energy, app,temp,wedge,wedge_rot ,tmpstr,beam_mode,list(-1) as string
		  Dim i ,j ,k as integer
		  Dim n_match, e_match,w_match,wo_match,bb as Boolean
		  '==================================
		  
		  // General tab
		  name= beam.RT_name
		  energy= beam.beam_energy
		  beam_mode=beam.Beam_Mode
		  app=beam.Aperture_ID
		  
		  
		  
		  
		  '===============SET the linac and energy and app, if we find a match
		  Ok_beam_energy=False
		  PopupMenu_BMod.DeleteAllRows
		  
		  for i = 0 to UBound( gLinacs.All_Linacs)
		    temp=gLinacs.All_Linacs(i).Mode
		    bb=True
		    for k =0 to UBound(list)
		      if Temp=list(k) Then
		        bb=False
		      end
		    next
		    if bb Then
		      list.Append temp
		      PopupMenu_BMod.AddRow   temp
		    end
		  next
		  
		  for j=0 to PopupMenu_BMod.ListCount-1
		    if beam_mode = PopupMenu_BMod.list(j) then
		      PopupMenu_BMod.ListIndex=j
		    end
		  next
		  General_pop_linac_name
		  
		  
		  n_match=false
		  e_match=false
		  PopupMenu_E_BA.Enabled=False
		  
		  for i =0 to PopupMenu_E_RT.ListCount-1
		    temp=PopupMenu_E_RT.list(i)
		    if name=PopupMenu_E_RT.list(i) then
		      PopupMenu_E_RT.ListIndex=i
		      n_match=True
		      General_pop_beam_energy
		      for j=0 to PopupMenu_E_BE.ListCount-1
		        if energy=PopupMenu_E_BE.list(j) then
		          PopupMenu_E_BE.ListIndex=j
		          e_match=True
		          
		          PopupMenu_E_BA.Enabled=True
		          General_pop_applicator
		          // Accessories tab
		          for k=0 to PopupMenu_E_BA.ListCount-1
		            if app=PopupMenu_E_BA.List(k) then
		              PopupMenu_E_BA.ListIndex=k
		              Exit
		            end
		          next
		          
		        end
		      next
		    end
		  next
		  
		  if n_match=False then
		    PopupMenu_E_RT.ListIndex=0
		  end
		  if e_match=false then
		    PopupMenu_E_BE.ListIndex=0
		  end
		  '==============END Linac and energy set===========
		  
		  
		  
		  
		  beam.Aperture_ID=App
		  EditField_BDescript.Text = beam.Beam_Description
		  EditField_BAppType.Text = beam.Aperture_Type
		  
		  
		  
		  EditField_BType.Text = beam.Beam_Type
		  EditField_BWeight.Text = str(beam.Beam_Weight)
		  EditField_DR.Text=beam.Beam_DoseRate
		  EditField_MU.Text = Str(beam.MU)
		  EditField_NoTx.Text = str(beam.Number_of_Tx)
		  EditField_TxDose.Text = str(beam.Rx_Dose)
		  
		  Ok_beam_energy=True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub General_pop_applicator()
		  Dim k,x as integer
		  
		  PopupMenu_E_BA.DeleteAllRows
		  PopupMenu_E_BA.AddRow ""
		  for k=0 to UBound( gLinacs.All_Linacs)
		    if  gLinacs.All_Linacs(k).Mode=beam.Beam_Mode and _
		      gLinacs.All_Linacs(k).RT_name=PopupMenu_E_RT.Text and _
		      gLinacs.All_Linacs(k).Energy=PopupMenu_E_BE.Text then
		      for x=0 to UBound(gLinacs.All_Linacs(k).Applicator)
		        PopupMenu_E_BA.AddRow trim(gLinacs.All_Linacs(k).Applicator(x))
		      next
		    end
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub General_pop_beam_energy()
		  Dim k as integer
		  
		  
		  PopupMenu_E_BE.DeleteAllRows
		  
		  for k=0 to UBound( gLinacs.All_Linacs)
		    if beam.Beam_Mode= gLinacs.All_Linacs(k).Mode and _
		      gLinacs.All_Linacs(k).RT_name=PopupMenu_E_RT.Text then
		      //beam.MLC.Model=gLinacs.All_Linacs(k).MLC.MLC_Name
		      PopupMenu_E_BE.AddRow trim(gLinacs.All_Linacs(k).Energy)
		    end
		  next
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub General_pop_linac_name()
		  //-------------------------------
		  //
		  //
		  //-------------------------------
		  Dim i,k as integer
		  Dim list(-1),temp as String
		  Dim bb as Boolean
		  //-------------------------------
		  
		  
		  PopupMenu_E_RT.DeleteAllRows
		  PopupMenu_E_BE.DeleteAllRows
		  PopupMenu_E_BA.DeleteAllRows
		  
		  
		  
		  
		  for i = 0 to UBound( gLinacs.All_Linacs)
		    temp=gLinacs.All_Linacs(i).RT_name
		    if gLinacs.All_Linacs(i).Mode=beam.Beam_Mode Then
		      bb=True
		      for k =0 to UBound(list)
		        if Temp=list(k) Then
		          bb=False
		        end
		      next
		      if bb Then
		        list.Append temp
		        PopupMenu_E_RT.AddRow   temp
		      end
		    end
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Geometry_populate()
		  //-----------------------------------------------------
		  // Geometry tab
		  //
		  //-----------------------------------------------------
		  //-----------------------------------------------------
		  
		  if jaw_field>-1 and jaw_field<=UBound(beam.Collimator.Fields) Then
		  else
		    jaw_field=0
		  end
		  ScrollBar_JAWfields.Minimum=1
		  ScrollBar_JAWfields.Maximum=UBound(beam.Collimator.Fields)+1
		  EditField_JAW_fields.Text=str(UBound(beam.Collimator.Fields)+1)
		  EditField_JAW_type.Text=beam.Collimator.Type
		  Geometry_populate_Field
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Geometry_populate_Field()
		  //-----------------------------------------------------
		  // Geometry tab
		  //
		  //-----------------------------------------------------
		  //-----------------------------------------------------
		  
		  donothing=True
		  EditField_Coll_Ang.text =str(Beam.Collimator.Fields(jaw_field).Collimator_Angle, "-##.####")
		  EditField_FieldX.Text = str(beam.Collimator.fields(jaw_field).X1+beam.Collimator.fields(jaw_field).X2, "-##.####")
		  EditField_X1.Text=str(beam.Collimator.fields(jaw_field).X1, "-##.####")
		  EditField_X2.Text=str(beam.Collimator.fields(jaw_field).X2, "-##.####")
		  EditField_BS.Text=Format(beam.Collimator.BackScatter,"-#.###")
		  EditField_FieldY.Text = str(beam.Collimator.fields(jaw_field).Y1+beam.Collimator.fields(jaw_field).Y2, "-##.####")
		  EditField_Y1.Text=str(beam.Collimator.fields(jaw_field).Y1, "-##.####")
		  EditField_Y2.Text=str(beam.Collimator.fields(jaw_field).Y2, "-##.####")
		  EditField_Gantry_Ang.text  =str(Beam.Collimator.Fields(jaw_field).Gantry_Angle, "-##.####")
		  EditField_Couch_Ang.text =str(beam.Collimator.Fields(jaw_field).couch_Angle, "-##.####")
		  EditField_Iso_X.Text=str(beam.Collimator.Fields(jaw_field).isocenter.X, "-##.####")
		  EditField_Iso_Y.Text=str(beam.Collimator.Fields(jaw_field).isocenter.Y, "-##.####")
		  EditField_Iso_Z.Text=str(beam.Collimator.Fields(jaw_field).isocenter.z, "-##.####")
		  EditField_Isoc.Text=str(beam.nominal_Isocenter, "-##.####")
		  EditField_SSD.Text=str(Beam.SSD, "-##.####")
		  EditField_JAW_type.Text=beam.Collimator.Type
		  EditField_JAW_field_index.Text=Format(beam.Collimator.Fields(jaw_field).Index,"-#.######")
		  Accessories_Jaw_Draw
		  donothing=False
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub open_Now(j as integer)
		  Dim i as integer
		  
		  PopupMenu_Beam.DeleteAllRows
		  
		  for i =0 to UBound(gRTOG.Plan(Plan_Index).Beam)
		    PopupMenu_Beam.AddRow (str(gRTOG.Plan(Plan_Index).beam(i).beam_num))
		  Next
		  
		  
		  
		  
		  PopupMenu_Beam.ListIndex=j
		  
		  
		  General_populate
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		beam As rtoG_Beam_Geometry
	#tag EndProperty

	#tag Property, Flags = &h0
		beam_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		donothing As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		jaw As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		jaw_field As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		MLC As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		mlc_field As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Mouse_X As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Mouse_Y As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Ok_beam_energy As boolean = false
	#tag EndProperty


#tag EndWindowCode

#tag Events TabPanel
	#tag Event
		Sub Change()
		  if me.Value=0 then
		    General_populate
		  elseif me.Value=1 then
		    Geometry_populate
		  elseif me.Value=2 Then
		    Accessories_populate
		    
		  elseif me.Value=3 then
		    
		    
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_BMod
	#tag Event
		Sub Change()
		  if Ok_beam_energy=False Then
		    Return
		  end
		  
		  
		  beam.Beam_Mode = PopupMenu_BMod.text
		  beam.RT_name=""
		  beam.Beam_Energy=""
		  beam.Aperture_ID=""
		  General_pop_linac_name
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_E_RT
	#tag Event
		Sub Change()
		  if Ok_beam_energy=False Then
		    Return
		  end
		  
		  beam.Beam_Energy=""
		  beam.Aperture_ID=""
		  PopupMenu_E_BA.DeleteAllRows
		  beam.RT_name=PopupMenu_E_RT.Text
		  General_pop_beam_energy
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_E_BE
	#tag Event
		Sub Change()
		  //------------------------------
		  // After a new energy is selected, MMCTP has
		  // to do a few things,
		  // 1) determine the new dose calibration value
		  // 2) delete exisiting BEAM input file (file under the plan folder)
		  // 3) load a new template BEAM input file
		  //
		  //------------------------------
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  Dim n,linac,eng,xvmc,dosx,Temp,line(-1) as string
		  Dim j as integer
		  Dim jj as Boolean
		  //------------------------------
		  
		  
		  
		  if Ok_beam_energy=False Then
		    Return
		  end
		  beam.Beam_Energy=PopupMenu_E_BE.Text
		  
		  if gRTOG.Plan(Plan_Index).Beam(beam_index).beam_mode<>"PHOTON"  Then
		    PopupMenu_E_BA.Enabled=True
		    General_pop_applicator
		  end
		  beam.Aperture_ID=""
		  
		  jj=beam.Read_MLC_Model
		  f=gRTOG.Plan(Plan_Index).Path
		  Temp = str(beam_index+1)
		  While len(Temp)<3
		    temp="0"+Temp
		  wend
		  f=f.Child(temp+".MLC")
		  if jj Then
		    jj=gRTOG.Plan(Plan_Index).Read_McGill_MLC(beam_index,f)
		  end
		  
		  //update the xvmc, and dosxyz calibration number for that beam
		  MC_Get_Linac_Properties(beam_index)
		  MC_Save_settings
		  gBEAM.Beams(beam_index).egs_particle_per_history=1
		  gBEAM.Beams(beam_index).egs_Phsp_Size=0
		  gBEAM.Beams(beam_index).egs_CPU_time_per_hist=0
		  gBEAM.Beams(beam_index).egs_Phsp_Num_Photons=0
		  gBEAM.Beams(beam_index).egs_BEAMnrc_started=False
		  gBEAM.Beams(beam_index).egs_progress=0
		  
		  // Remove old BEAM files
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child(MC_file_name+str(beam_index+1)+".egsinp")
		  if f.Exists Then
		    f.Delete
		  end
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child(MC_file_name+str(beam_index+1)+".djaws")
		  if f.Exists Then
		    f.Delete
		  end
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child(MC_file_name+str(beam_index+1)+".mlc")
		  if f.Exists Then
		    f.Delete
		  end
		  
		  // Load new BEAMnrc input file, for all beams
		  gBEAM.egs_Read
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_BDescript
	#tag Event
		Sub TextChange()
		  beam.Beam_Description=me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_BType
	#tag Event
		Sub LostFocus()
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  beam.Beam_Type = me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_E_BA
	#tag Event
		Sub Change()
		  if Ok_beam_energy=False Then
		    Return
		  end
		  
		  beam.Aperture_ID=PopupMenu_E_BA.text
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_BAppType
	#tag Event
		Sub TextChange()
		  beam.Aperture_Type=me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Wedge_Static_Ang
	#tag Event
		Sub Change()
		  beam.Wedge_Rotation=""
		  beam.Wedge_Angle=me.Text
		  Accessories_pop_wedge_static_rot
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Wedge_Static_Or
	#tag Event
		Sub Change()
		  beam.Wedge_Rotation=me.Text
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Wedge_Dynamic
	#tag Event
		Sub Action()
		  Beam.Wedge_Type="Dynamic"
		  Accessories_populate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_WedgeID
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key=chr(13) or key=chr(9) then
		    
		    
		  end
		End Function
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  beam.Wedge_ID = me.text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Wedge_Dynamic_Angle
	#tag Event
		Sub TextChange()
		  beam.Wedge_Angle = me.text
		  
		  if beam.Wedge_Type="Dynamic" Then
		    beam.Calculate_DynamicJawPositions
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Wedge_Dynamic_Or
	#tag Event
		Sub Change()
		  beam.Wedge_Rotation=me.Text
		  if beam.Wedge_Type="Dynamic" Then
		    beam.Calculate_DynamicJawPositions
		  end
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Wedge_Static
	#tag Event
		Sub Action()
		  Beam.Wedge_Type="Static"
		  Accessories_populate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Wedge_none
	#tag Event
		Sub Action()
		  Beam.Wedge_Type=""
		  Accessories_populate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_mlc_import
	#tag Event
		Sub Action()
		  Dim f as FolderItem
		  
		  //==========================
		  
		  f=GetOpenFolderItem("")
		  if f<>nil then
		    beam.MLC=new Class_MLC
		    if gRTOG.Plan(Plan_Index).Read_McGill_MLC(beam_index,f) Then
		      gRTOG.Plan(Plan_Index).Write_McGill_MLC(beam_index)
		    Else
		      MsgBox "Problem with "+f.Name
		    end
		    Accessories_MLC_info
		    Canvas_MLC.Refresh
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Canvas_MLC
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  //-------------------------------------------------
		  // MLC Pattern
		  //
		  //-------------------------------------------------
		  
		  if MLC<>nil Then
		    g.DrawPicture MLC,0,0
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  Dim scale_width,scale_height as Single
		  
		  
		  scale_width=45/me.Width  //45 cm total width
		  scale_height=45/me.Height // 45 cm total height
		  
		  
		  Mouse_X=scale_width*x-45/2
		  Mouse_y=-scale_height*y+45/2
		  
		  Accessories_MLC_Draw
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_mlc_delete
	#tag Event
		Sub Action()
		  Dim f as FolderItem
		  Dim temp as String
		  //==========================
		  
		  beam.MLC.MLC_Type=""
		  ReDim beam.MLC.Fields(-1)
		  beam.MLC.NumberofFields=0
		  
		  
		  f=new FolderItem
		  f=gRTOG.Plan(Plan_Index).Path
		  
		  Temp=str(beam_index+1)
		  While Len(temp)<3
		    
		    Temp="0"+temp
		  Wend
		  
		  f=f.Child(temp+".MLC")
		  
		  if f.Exists then
		    f.Delete
		  end
		  
		  Accessories_MLC_info
		  Canvas_MLC.Refresh
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_mlc_type
	#tag Event
		Sub TextChange()
		  beam.MLC.MLC_Type = trim(me.text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_mlc_fields
	#tag Event
		Sub TextChange()
		  beam.MLC.NumberofFields=val(me.text)
		  
		  // Add new MLC fields
		  While (beam.MLC.NumberofFields-1)> UBound(beam.MLC.Fields)
		    beam.Add_MLC_Field
		  Wend
		  
		  //Remove MLC fields
		  While UBound(beam.MLC.Fields)>(beam.MLC.NumberofFields-1) and UBound(beam.MLC.Fields)>-1
		    beam.MLC.Fields.Remove UBound(beam.MLC.Fields)
		  Wend
		  
		  Accessories_MLC_info
		  Canvas_MLC.Refresh
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_mlc_field_index
	#tag Event
		Sub TextChange()
		  if UBound(beam.MLC.Fields)>-1 and mlc_field>=0 and mlc_field<=UBound(beam.MLC.Fields) Then
		    beam.MLC.Fields(mlc_field).Indexnum = val(me.text)
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ScrollBar_mlcfields
	#tag Event
		Sub ValueChanged()
		  Dim i as Integer
		  i=me.Value
		  
		  if i>-1 and i<=UBound(beam.MLC.Fields) Then
		    mlc_field=i
		    Accessories_MLC_Draw
		    StaticText_MLC_fieldnum.Text="Index of field : "+str(mlc_field+1)
		    EditField_mlc_field_index.Text=Format(beam.MLC.Fields(mlc_field).Indexnum,"#.#####")
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_mlc_positions
	#tag Event
		Sub Action()
		  Window_Beam_MLC_Properties.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Coll_Ang
	#tag Event
		Sub TextChange()
		  Beam.Collimator.Fields(jaw_field).Collimator_Angle=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Gantry_Ang
	#tag Event
		Sub TextChange()
		  Beam.Collimator.Fields(jaw_field).Gantry_Angle=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Couch_Ang
	#tag Event
		Sub TextChange()
		  beam.Collimator.Fields(jaw_field).Couch_Angle=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Electron_Cutout
	#tag Event
		Sub Action()
		  Window_Beam_Cutout.Show
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_cutout_thick
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if val(me.text)<0.001 or val(me.text)>2.0 then
		    MsgBox "cut out thickness has to be between 0.001 and 2.0 cm"
		    me.text="1.5"
		    me.refresh
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Canvas_ecutout
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  dim size,i,k as integer
		  dim xx,yy,res as Single
		  dim xpix,ypix, xpix2,ypix2  as Integer
		  
		  res=20
		  g.foreColor = rgb(255,255,255)
		  g.FillRect 0,0,me.Width,me.Height
		  
		  if UBound(beam.Block_Contours)>-1 then
		    
		    for i=0 to UBound(beam.Block_Contours)
		      if beam.Block_Contours(i).Block_Type="Cutout" Then
		        
		        for k=0 to UBound(beam.Block_Contours(i).Pair)
		          
		          //find their cm position wrt center of drawing board
		          
		          xx=beam.Block_Contours(i).Pair(k).x
		          yy=beam.Block_Contours(i).Pair(k).y
		          xpix=xx*res+me.width/2
		          ypix=yy*res+me.Height/2
		          
		          g.foreColor=rgb(0,0,255)
		          g.drawoval xpix-3, ypix-3,7 ,7
		          
		          if k<UBound(beam.Block_Contours(i).Pair)  then
		            g.foreColor=rgb(0,255,0)
		            xx=beam.Block_Contours(i).Pair(k+1).x
		            yy=beam.Block_Contours(i).Pair(k+1).y
		            xpix2=xx*res+me.width/2
		            ypix2=yy*res+me.Height/2
		            g.drawline xpix,ypix,xpix2,ypix2
		          else
		            g.foreColor=rgb(0,255,0)
		            xx=beam.Block_Contours(i).Pair(0).x
		            yy=beam.Block_Contours(i).Pair(0).y
		            xpix2=xx*res+me.width/2
		            ypix2=yy*res+me.Height/2
		            g.drawline xpix,ypix,xpix2,ypix2
		          end
		        Next
		      end
		    next
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_JAW_fields
	#tag Event
		Sub TextChange()
		  Dim i as Integer
		  
		  
		  beam.Collimator.NumFields=Val(me.Text)
		  
		  if beam.Collimator.NumFields<=0 Then
		    beam.Collimator.NumFields=1
		  end
		  
		  ReDim beam.Collimator.Fields(beam.Collimator.NumFields-1)
		  
		  for i=1 to beam.Collimator.NumFields
		    if beam.Collimator.Fields(i-1)=nil Then
		      beam.Collimator.Fields(i-1)=new Class_Collimator_Fields
		      beam.Collimator.Fields(i-1).isocenter= new Class_isocenter
		    end
		  next
		  
		  ScrollBar_JAWfields.Minimum=1
		  ScrollBar_JAWfields.Maximum=beam.Collimator.NumFields
		  //EditField_JAW_fields.Text=str(UBound(beam.Collimator.Fields)+1)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_JAW_type
	#tag Event
		Sub TextChange()
		  beam.Collimator.Type=Trim(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ScrollBar_JAWfields
	#tag Event
		Sub ValueChanged()
		  Dim i as Integer
		  i=me.Value-1
		  
		  if i>-1 and i<=UBound(beam.Collimator.Fields) Then
		    jaw_field=i
		    StaticText_Jaw_Index.Text="Index of field :"+str(i+1)
		    EditField_JAW_field_index.Text=Format(beam.Collimator.Fields(i).Index,"#.######")
		    Geometry_populate_Field
		    Canvas_JAWS.Refresh
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_JAW_field_index
	#tag Event
		Sub TextChange()
		  if UBound(beam.Collimator.Fields)>-1 and jaw_field>=0 and jaw_field<=UBound(beam.Collimator.Fields) Then
		    beam.Collimator.Fields(jaw_field).Index = val(me.text)
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Isoc
	#tag Event
		Sub TextChange()
		  beam.Nominal_Isocenter=val(me.text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_SSD
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key=chr(13) or key=chr(9) then
		    
		    
		    
		  end
		End Function
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  beam.SSD=val(me.text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_X2
	#tag Event
		Sub TextChange()
		  beam.Collimator.fields(jaw_field).X2=val(me.Text)
		  
		  
		  if jaw_field=0 Then
		    if beam.Wedge_Type="Dynamic" Then
		      beam.Calculate_DynamicJawPositions
		    end
		  end
		  beam.Calculate_MU_BS
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub LostFocus()
		  Geometry_populate_Field
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_X1
	#tag Event
		Sub TextChange()
		  beam.Collimator.fields(jaw_field).X1=val(me.text)
		  
		  
		  if jaw_field=0 Then
		    if beam.Wedge_Type="Dynamic" Then
		      beam.Calculate_DynamicJawPositions
		    end
		  end
		  beam.Calculate_MU_BS
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub LostFocus()
		  Geometry_populate_Field
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_FieldX
	#tag Event
		Sub TextChange()
		  
		  if donothing=False Then
		    
		    beam.Collimator.fields(jaw_field).X1=val(me.text)/2
		    beam.Collimator.fields(jaw_field).X2=val(me.text)/2
		    
		    if jaw_field=0 Then
		      if beam.Wedge_Type="Dynamic" Then
		        beam.Calculate_DynamicJawPositions
		      end
		    end
		    beam.Calculate_MU_BS
		    
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Sub LostFocus()
		  Geometry_populate_Field
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_FieldY
	#tag Event
		Sub TextChange()
		  if donothing=False Then
		    beam.Collimator.fields(jaw_field).Y1=val(me.text)/2
		    beam.Collimator.fields(jaw_field).Y2=val(me.text)/2
		    
		    
		    if jaw_field=0 Then
		      if beam.Wedge_Type="Dynamic" Then
		        beam.Calculate_DynamicJawPositions
		      end
		    end
		    beam.Calculate_MU_BS
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Sub LostFocus()
		  Geometry_populate_Field
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Y1
	#tag Event
		Sub TextChange()
		  beam.Collimator.fields(jaw_field).Y1=val(me.Text)
		  
		  
		  if jaw_field=0 Then
		    if beam.Wedge_Type="Dynamic" Then
		      beam.Calculate_DynamicJawPositions
		    end
		  end
		  beam.Calculate_MU_BS
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub LostFocus()
		  Geometry_populate_Field
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Y2
	#tag Event
		Sub TextChange()
		  beam.Collimator.fields(jaw_field).Y2=val(me.Text)
		  
		  
		  
		  if jaw_field=0 Then
		    if beam.Wedge_Type="Dynamic" Then
		      beam.Calculate_DynamicJawPositions
		    end
		  end
		  beam.Calculate_MU_BS
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub LostFocus()
		  Geometry_populate_Field
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Canvas_JAWS
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  //-------------------------------------------------
		  // JAW Pattern
		  //
		  //-------------------------------------------------
		  if jaw<>nil Then
		    g.DrawPicture jaw,0,0
		  end
		  //-------------------------------------------------
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  Dim scale_width,scale_height as Single
		  
		  
		  scale_width=45/me.Width  //45 cm total width
		  scale_height=45/me.Height // 45 cm total height
		  
		  
		  Mouse_X=scale_width*x-45/2
		  Mouse_y=-scale_height*y+45/2
		  
		  Accessories_Jaw_Draw
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_NoTx
	#tag Event
		Sub TextChange()
		  beam.Number_of_Tx=val(me.text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_MU
	#tag Event
		Sub TextChange()
		  beam.MU=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_DR
	#tag Event
		Sub TextChange()
		  beam.Beam_DoseRate=me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_BWeight
	#tag Event
		Sub TextChange()
		  beam.Beam_Weight = CDbl(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_TxDose
	#tag Event
		Sub TextChange()
		  beam.Rx_Dose=val(me.text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Iso_X
	#tag Event
		Sub TextChange()
		  beam.Collimator.Fields(jaw_field).isocenter.X=val(me.text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Iso_Y
	#tag Event
		Sub TextChange()
		  beam.Collimator.Fields(jaw_field).isocenter.Y=val(me.text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Iso_Z
	#tag Event
		Sub TextChange()
		  beam.Collimator.Fields(jaw_field).isocenter.z=val(me.text)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Beam
	#tag Event
		Sub Change()
		  beam = gRTOG.Plan(Plan_Index).beam(PopupMenu_Beam.ListIndex)
		  
		  beam_index=PopupMenu_Beam.ListIndex
		  
		  if TabPanel.Value=0 then
		    General_populate
		    
		  elseif TabPanel.Value=1 then
		    Geometry_populate
		    
		  elseif TabPanel.Value=2 Then
		    Accessories_populate
		    
		  elseif TabPanel.Value=3 then
		    
		    
		  end
		  
		  
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
		Name="beam_index"
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
		Name="donothing"
		Group="Behavior"
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
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="jaw"
		Group="Behavior"
		Type="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="jaw_field"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
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
		Name="MLC"
		Group="Behavior"
		Type="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="mlc_field"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Mouse_X"
		Group="Behavior"
		InitialValue="0"
		Type="Single"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Mouse_Y"
		Group="Behavior"
		InitialValue="0"
		Type="Single"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Ok_beam_energy"
		Group="Behavior"
		InitialValue="false"
		Type="boolean"
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
#tag EndViewBehavior
