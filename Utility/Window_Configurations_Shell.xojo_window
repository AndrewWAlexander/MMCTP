#tag Window
Begin Window Window_Configurations_Shell
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   779
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
   Title           =   "MMCTP Remote shell connections"
   Visible         =   False
   Width           =   1133
   Begin TabPanel TabPanel_All
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   745
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
      TabDefinition   =   "Shell Refresh\rShell Run\rShell Download\rShell Login"
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   8
      Transparent     =   False
      Underline       =   False
      Value           =   3
      Visible         =   True
      Width           =   1093
      Begin Label StaticText_Timer_refresh
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
         Left            =   127
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "0"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   93
         Transparent     =   False
         Underline       =   False
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
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   35
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
         Text            =   "Timer (min):"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   93
         Transparent     =   False
         Underline       =   False
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
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   35
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   10
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Shell Task:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   46
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   71
      End
      Begin Label StaticText_Task_Refresh
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   35
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   127
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   True
         Scope           =   0
         Selectable      =   False
         TabIndex        =   11
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   46
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   971
      End
      Begin TextArea EditField_ShellRefresh
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
         Height          =   562
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   129
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
         ReadOnly        =   True
         Scope           =   0
         ScrollbarHorizontal=   True
         ScrollbarVertical=   True
         Styled          =   False
         TabIndex        =   12
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   125
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   894
      End
      Begin PushButton PushButton_ShellKill_Refresh
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   0
         Cancel          =   False
         Caption         =   "Kill all shell tasks"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   431
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   14
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   699
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   159
      End
      Begin PushButton PushButton_Shell_Restart_Refresh
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   0
         Cancel          =   False
         Caption         =   "Restart current shell task"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   233
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   15
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   699
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   177
      End
      Begin PushButton PushButton_Clear_Refresh
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   0
         Cancel          =   False
         Caption         =   "Clear"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   133
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   16
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   699
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin BevelButton BevelButton_DelShell
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Delete Shell"
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
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   887
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   16
         TabPanelIndex   =   4
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   46
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   88
      End
      Begin Label StaticText26
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   59
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
         Text            =   "Shell"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   46
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   45
      End
      Begin PopupMenu PopupMenu_Shell
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         InitialValue    =   ""
         Italic          =   False
         Left            =   144
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   46
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   205
      End
      Begin GroupBox GroupBox1
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Properties"
         Enabled         =   True
         Height          =   548
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   48
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   72
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   945
         Begin TextField Editfield_Shell_title
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
            Left            =   144
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   94
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   160
         End
         Begin TextField EditField_machinetext
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
            Left            =   419
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
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   93
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   160
         End
         Begin TextField EditField_logintext
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
            Left            =   144
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   121
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   160
         End
         Begin TextField EditField_passwordtext
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
            Left            =   419
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Password        =   True
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   120
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   160
         End
         Begin TextField EditField_linefeed
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
            HelpTag         =   "Within bashrc file, set prompt to \r\rPS1=""\\h:\\w \\u$ ""\r\rLine Feed Prompt will equal ""your username""$"
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   186
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   150
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   118
         End
         Begin TextField EditField_bash
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
            Left            =   419
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
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   150
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   160
         End
         Begin TextField EditField_listfiles
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
            Left            =   144
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   209
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   160
         End
         Begin TextField EditField_listfiles_size
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
            Left            =   531
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   209
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   85
         End
         Begin TextField EditField_listfile_name
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
            Left            =   531
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
            TabIndex        =   11
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   237
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   85
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
            Left            =   314
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   11
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Machine IP:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   95
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   79
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
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   12
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "User:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   122
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   79
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
            Left            =   314
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   13
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Password:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   121
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   79
         End
         Begin Label StaticText7
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   "Within bashrc file, set prompt to \r\rPS1=""\\h:\\w \\u$ ""\r\rLine Feed Prompt will equal ""your username""$"
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   59
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   14
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Line Feed Prompt:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   150
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   115
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   61
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   15
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "List Files:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   15.0
            TextUnit        =   0
            Top             =   183
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   67
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   485
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   17
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Batch:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   365
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   60
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
            InitialParent   =   "GroupBox1"
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
            TabIndex        =   18
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Title:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   95
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   70
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   328
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   19
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Bash:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   152
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   65
         End
         Begin Label StaticText13
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
            Left            =   344
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   20
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Column number for file size:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   210
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   175
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   54
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   21
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Command:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   211
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   74
         End
         Begin Separator Separator1
            AutoDeactivate  =   True
            Enabled         =   False
            Height          =   21
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Left            =   144
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   22
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   183
            Transparent     =   False
            Visible         =   True
            Width           =   658
         End
         Begin Label StaticText15
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
            Left            =   337
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   23
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Column number for file name:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   236
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   185
         End
         Begin Label StaticText16
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
            Left            =   88
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   24
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "MC:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   15.0
            TextUnit        =   0
            Top             =   474
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   40
         End
         Begin Separator Separator2
            AutoDeactivate  =   True
            Enabled         =   False
            Height          =   21
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Left            =   144
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   25
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   474
            Transparent     =   False
            Visible         =   True
            Width           =   658
         End
         Begin TextField EditField_egsnrc_folder
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
            Left            =   337
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   522
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   373
         End
         Begin TextField EditField_vmc_exe
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
            Left            =   337
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   592
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   373
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   97
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   28
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "EGSnrc folder path for all user codes"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   522
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   228
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   140
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   29
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "VMC exe path"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   591
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   185
         End
         Begin TextField EditField_listfiles_dateA
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
            Left            =   832
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   209
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   41
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   634
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   31
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Column number for date:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   210
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   186
         End
         Begin TextField EditField_listfiles_time
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
            Left            =   832
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
            TabIndex        =   10
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   237
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   93
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   634
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   33
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Column number for time:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   238
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   186
         End
         Begin Separator Separator3
            AutoDeactivate  =   True
            Enabled         =   False
            Height          =   21
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Left            =   144
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   34
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   275
            Transparent     =   False
            Visible         =   True
            Width           =   658
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
            InitialParent   =   "GroupBox1"
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
            TabIndex        =   35
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Tail:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   15.0
            TextUnit        =   0
            Top             =   275
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   52
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   64
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   36
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Command"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   305
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   64
         End
         Begin TextField EditField_tail_c
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
            Left            =   144
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   304
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   132
         End
         Begin TextField EditField_tail_after
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
            Left            =   426
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   304
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   132
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   300
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   39
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "After file name"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   305
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   94
         End
         Begin TextField EditField_MC_jobs
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
            Left            =   337
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   491
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   126
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   167
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   41
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Max # of running jobs"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   493
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   138
         End
         Begin PushButton PushButton_ConnectionTest
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   0
            Cancel          =   False
            Caption         =   "Connection Test"
            Default         =   False
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   601
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   42
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   149
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   126
         End
         Begin Label StaticText_ConnectionTest
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
            Left            =   742
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   43
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   149
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   146
         End
         Begin TextField EditField_vmc_folder
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
            Left            =   337
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   557
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   373
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   213
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   45
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "VMC folder path"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   558
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   107
         End
         Begin RadioButton RadioButton_Mac
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Mac"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   601
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   46
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   94
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   72
         End
         Begin RadioButton RadioButton_Linux
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Linux"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   693
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   47
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   94
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   68
         End
         Begin RadioButton RadioButton_PC
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "PC"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   783
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   94
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   46
         End
         Begin GroupBox GroupBox3
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "File transfer protocol"
            Enabled         =   True
            Height          =   83
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   144
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   48
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   358
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   329
            Begin RadioButton RadioButton_SCP
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "SCP"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox3"
               Italic          =   False
               Left            =   157
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   1
               TabPanelIndex   =   4
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   409
               Transparent     =   False
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   44
            End
            Begin RadioButton RadioButton_FTP
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "FTP"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox3"
               Italic          =   False
               Left            =   157
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
               Top             =   384
               Transparent     =   False
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   44
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
               InitialParent   =   "GroupBox3"
               Italic          =   False
               Left            =   213
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
               Text            =   "FTP line feed prompt:"
               TextAlign       =   2
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   12.0
               TextUnit        =   0
               Top             =   383
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   136
            End
            Begin TextField EditField_ftpLF
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
               Left            =   358
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
               TabPanelIndex   =   4
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   12.0
               TextUnit        =   0
               Top             =   382
               Transparent     =   False
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   80
            End
            Begin PushButton PushButton_ConnectionTest_FTP
               AutoDeactivate  =   True
               Bold            =   False
               ButtonStyle     =   0
               Cancel          =   False
               Caption         =   "Connection Test"
               Default         =   False
               Enabled         =   True
               Height          =   22
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox3"
               Italic          =   False
               Left            =   213
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
               Top             =   408
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   126
            End
            Begin Label StaticText_ConnectionTest_FTP
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
               Left            =   351
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
               Text            =   ""
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   409
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   100
            End
         End
         Begin Separator Separator4
            AutoDeactivate  =   True
            Enabled         =   False
            Height          =   21
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Left            =   144
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   49
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   338
            Transparent     =   False
            Visible         =   True
            Width           =   658
         End
         Begin Label StaticText34
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
            Left            =   48
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   50
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Cluster:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   15.0
            TextUnit        =   0
            Top             =   338
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin PopupMenu PopupMenu_Shell_Queue
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
            Left            =   568
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   51
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   408
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   157
         End
         Begin Label StaticText35
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
            Left            =   485
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   52
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Queue:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   408
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   60
         End
         Begin TextField EditField_QueueName
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
            Left            =   568
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
            TabPanelIndex   =   4
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
            Width           =   135
         End
         Begin Label StaticText36
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
            Left            =   475
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   54
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Name:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   440
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   70
         End
         Begin TextField EditField_NumberofQueues
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
            Left            =   876
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   407
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   62
         End
         Begin Label StaticText37
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
            Left            =   742
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   56
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Number of Queues:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   408
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   122
         End
         Begin PopupMenu PopupMenu_Batch
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
            Left            =   568
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   57
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   363
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   157
         End
         Begin TextField EditField_listfiles_dateB
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
            Left            =   884
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   208
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   41
         End
         Begin CheckBox CheckBox_Shell_Online
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Online"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   601
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   59
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   121
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   61
         End
         Begin Label StaticText83
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
            Left            =   475
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   60
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "BEAMnrc release"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   491
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   165
         End
         Begin TextField EditField_MC_BEAMnrc_Version
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
            HelpTag         =   "Enter version year"
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   652
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
            TabIndex        =   61
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "2010"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   491
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   58
         End
         Begin TextField EditField_QueueName1
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
            Left            =   869
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
            TabIndex        =   62
            TabPanelIndex   =   4
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
            Width           =   69
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   739
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   63
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Queue Time (min)"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   440
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   109
         End
      End
      Begin PushButton PushButton_ShellKillallFTP
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   0
         Cancel          =   False
         Caption         =   "Kill all shell tasks"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   286
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   22
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   42
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   159
      End
      Begin Label StaticText_ShellDownLoadNum
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
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   29
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Number of files to transfer:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   42
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   191
      End
      Begin Label StaticText39
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   "Type folder path to pscp"
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   153
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   49
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   "pscp folder path:"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   691
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   185
      End
      Begin TextField EditField_pscp
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
         TabIndex        =   1
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   690
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   375
      End
      Begin TextField EditField_plink
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
         TabIndex        =   0
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   655
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   373
      End
      Begin Label StaticText40
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   "Type folder path to plink"
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   231
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   52
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   "plink folder path:"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   656
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   107
      End
      Begin Separator Separator5
         AutoDeactivate  =   True
         Enabled         =   False
         Height          =   21
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Left            =   189
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   53
         TabPanelIndex   =   4
         TabStop         =   True
         Top             =   632
         Transparent     =   False
         Visible         =   True
         Width           =   658
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
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   61
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   54
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   "Windows Only:"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   15.0
         TextUnit        =   0
         Top             =   632
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   119
      End
      Begin GroupBox GroupBox18
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Current Task"
         Enabled         =   True
         Height          =   208
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   30
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   80
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   1069
         Begin Label StaticText_FTP_Info
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   68
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox18"
            Italic          =   False
            Left            =   44
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   True
            Scope           =   0
            Selectable      =   False
            TabIndex        =   2
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   101
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   1034
         End
         Begin PushButton PushButton_Shell_RestartFTPTask
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   0
            Cancel          =   False
            Caption         =   "Restart current shell task"
            Default         =   False
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox18"
            Italic          =   False
            Left            =   241
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   260
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   177
         End
         Begin Label StaticText311
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox18"
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
            TabIndex        =   4
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Download Command:"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   181
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   147
         End
         Begin Label StaticText_FTP
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   35
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox18"
            Italic          =   False
            Left            =   44
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   True
            Scope           =   0
            Selectable      =   False
            TabIndex        =   5
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   213
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   1036
         End
         Begin Label StaticText_Timer_FTP
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox18"
            Italic          =   False
            Left            =   136
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
            Text            =   "0"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   260
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText32
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox18"
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
            TabIndex        =   7
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Timer (min):"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   260
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
      End
      Begin GroupBox GroupBox19
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Download Log"
         Enabled         =   True
         Height          =   442
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   31
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   294
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   1069
         Begin TextArea EditField_ShellFTP
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
            Height          =   402
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "GroupBox19"
            Italic          =   False
            Left            =   44
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
            ReadOnly        =   True
            Scope           =   0
            ScrollbarHorizontal=   True
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   0
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   318
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   1034
         End
      End
      Begin PushButton PushButton_ClearFTP
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   0
         Cancel          =   False
         Caption         =   "Clear Log"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   466
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   32
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   42
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   101
      End
      Begin Label StaticText_ShellRunNum
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
         Left            =   35
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
         Text            =   "Number of tasks to run:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   48
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   191
      End
      Begin PushButton PushButton_ShellKill_Run
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   0
         Cancel          =   False
         Caption         =   "Kill all shell tasks"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   278
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
         Top             =   48
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   159
      End
      Begin PushButton PushButton_Clear_Run
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   0
         Cancel          =   False
         Caption         =   "Clear log"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   449
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   48
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin GroupBox GroupBox20
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Current Task"
         Enabled         =   True
         Height          =   133
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   35
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   89
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   1063
         Begin Label StaticText64
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox20"
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
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Shell Task:"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   114
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   71
         End
         Begin Label StaticText_Task_Run
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   35
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox20"
            Italic          =   False
            Left            =   143
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   True
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   114
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   942
         End
         Begin Label StaticText_Timer_Run
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox20"
            Italic          =   False
            Left            =   143
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
            Text            =   "0"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   176
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
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
            InitialParent   =   "GroupBox20"
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
            TabIndex        =   3
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Timer (min):"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   176
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin PushButton PushButton_Shell_Restart_Run
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   0
            Cancel          =   False
            Caption         =   "Restart current shell task"
            Default         =   False
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox20"
            Italic          =   False
            Left            =   235
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   4
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   176
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   177
         End
      End
      Begin GroupBox GroupBox21
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Shell Run Log"
         Enabled         =   True
         Height          =   505
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_All"
         Italic          =   False
         Left            =   35
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   234
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   1063
         Begin TextArea EditField_ShellRun
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
            Height          =   470
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "GroupBox21"
            Italic          =   False
            Left            =   42
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
            ReadOnly        =   True
            Scope           =   0
            ScrollbarHorizontal=   True
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   258
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   1049
         End
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  app.which_window_shell=False
		  
		  
		  if Save_Login Then
		    gShells.write_login
		  end
		  
		  app.MMCTP_WriteConfig
		  
		  if save_linac Then
		    gLinacs.Write_Linacs
		  end
		  
		  
		  if app.which_window_TreatmentPlanning=False and app.which_window_Contouring=false Then
		    Window_OpenPatient.Show
		  end
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Dim i as Integer
		  
		  app.which_window_shell=True
		  DoNothing=True
		  
		  if UBound(MMCTP_Shell_Refresh.All)>-1 Then
		    StaticText_Task_Refresh.value = MMCTP_Shell_Refresh.All(0).command
		  end
		  
		  if UBound(MMCTP_Shell_Run.All)>-1 Then
		    StaticText_Task_Run.value = MMCTP_Shell_Run.All(0).command
		  end
		  
		  EditField_ShellRefresh.value = MMCTP_Shell_Refresh.Total_Output
		  EditField_ShellRun.value = MMCTP_Shell_Run.Total_Output
		  
		  Login_Open
		  DoNothing=False
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Login_Open()
		  DIm i as Integer
		  
		  DoNothing=True
		  
		  PopupMenu_Shell.DeleteAllRows
		  for i =0 to UBound(gShells.Shells)
		    PopupMenu_Shell.AddRow gShells.shells(i).title
		  Next
		  PopupMenu_Shell.AddRow "Add new Shell"
		  PopupMenu_Shell.SelectedRowIndex=0
		  
		  PopupMenu_Batch.DeleteAllRows
		  PopupMenu_Batch.AddRow "at"
		  PopupMenu_Batch.AddRow "nqs"
		  PopupMenu_Batch.AddRow "moab"
		  PopupMenu_Batch.AddRow "keg"
		  PopupMenu_Batch.AddRow "pbs"
		  PopupMenu_Batch.AddRow "slurm"
		  
		  
		  EditField_plink.value = gShells.Plink
		  EditField_pscp.value = gShells.pscp
		  
		  
		  
		  DoNothing=False
		  Login_Popup
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Login_Popup()
		  '//-----------------------------------
		  '//
		  '//
		  '//-----------------------------------
		  'Dim i as Integer
		  'Dim ff as Boolean
		  'Dim snew as Class_Shell_One
		  '//-----------------------------------
		  
		  
		  
		  DoNothing = True
		  Var ff As Boolean = False
		  
		  For i As Integer = 0 To gShells.shells.LastRowIndex
		    
		    If PopupMenu_Shell.SelectedRowValue =  gShells.shells(i).title Then
		      
		      ss= gShells.shells(i)
		      ff = True
		      
		    End
		  Next
		  
		  If ff = False Then
		    
		    Var snew As New Class_Shell_One
		    snew.title= "New Shell"
		    gShells.Shells.Append snew
		    Login_Open
		    Login_Popup
		    
		    gLinacs.Update_Shells_Add
		    save_linac=True
		    Save_Login=True
		    Return
		  End
		  
		  CheckBox_Shell_Online.Value = ss.online
		  
		  
		  EditField_logintext.Value =  ss.login
		  
		  EditField_MC_BEAMnrc_Version.value = ss.Beamnrc_v
		  EditField_machinetext.value =   ss.machine
		  EditField_passwordtext.value =   ss.password
		  EditField_linefeed.value = ss.linefeed
		  EditField_egsnrc_folder.value = ss.egsnrc_folder_path
		  EditField_listfiles.value = ss.listfiles
		  EditField_ftpLF.value = ss.ftplinefeed
		  
		  
		  If ss.batch="at" Then 
		    
		    PopupMenu_Batch.SelectedRowIndex = 0
		    
		  Elseif ss.batch="nqs" Then
		    
		    PopupMenu_Batch.SelectedRowIndex=1
		    
		  Elseif ss.batch="moab" Then
		    
		    PopupMenu_Batch.SelectedRowIndex=2
		    
		  Elseif ss.batch="keg" Then
		    
		    PopupMenu_Batch.SelectedRowIndex=3
		    
		  Elseif ss.batch="pbs" Then
		    
		    PopupMenu_Batch.SelectedRowIndex=4
		    
		  Elseif ss.batch="slurm" Then
		    
		    PopupMenu_Batch.SelectedRowIndex=5
		    
		  End
		  
		  
		  If Name_Change = False Then
		    
		    Editfield_Shell_title.value = ss.title
		    
		  End
		  
		  EditField_vmc_exe.value = ss.vmc_path
		  EditField_vmc_folder.value = ss.vmc_folder
		  EditField_bash.value = ss.bash
		  EditField_listfile_name.value = str(ss.listfiles_name)
		  EditField_listfiles_size.value = str(ss.listfiles_column_num)
		  EditField_listfiles_dateA.value = str(ss.listfiles_dateA)
		  EditField_listfiles_dateb.value = str(ss.listfiles_dateB)
		  
		  EditField_listfiles_time.value = str(ss.listfiles_time)
		  
		  EditField_tail_c.value = ss.tail_c
		  EditField_tail_after.value = ss.tail_after
		  
		  EditField_MC_jobs.value = Str(ss.MaxJobs)
		  
		  Select Case ss.Os
		  Case 1
		    
		    RadioButton_Mac.Value = True
		    
		  Case 2
		    
		    RadioButton_Linux.Value = True
		    
		  Else
		    
		    RadioButton_PC.Value = True
		    
		  End Select
		  
		  If ss.File_Transfer_Index = 0 Then
		    
		    RadioButton_FTP.Value = True
		    
		  Else
		    
		    RadioButton_SCP.Value = True
		    
		  End
		  
		  EditField_NumberofQueues.value = Str(ss.Queue.LastRowIndex + 1)
		  
		  PopupMenu_Shell_Queue.RemoveAllRows
		  
		  For i As Integer = 0 To ss.Queue.LastRowIndex
		    
		    PopupMenu_Shell_Queue.AddRow( _
		    ss.Queue(i)+" - " +ss.QueueTime(i).ToString)
		    
		  Next
		  
		  PopupMenu_Shell_Queue.SelectedRowIndex = 0
		  
		  If Name_Change = False Then
		    
		    If PopupMenu_Shell_Queue.SelectedRowIndex >= 0 And _
		      PopupMenu_Shell_Queue.SelectedRowIndex <= ss.Queue.LastRowIndex Then
		      EditField_QueueName.value = ss.Queue( _
		      PopupMenu_Shell_Queue.SelectedRowIndex)
		      EditField_QueueName1.value = ss.QueueTime( _
		      PopupMenu_Shell_Queue.SelectedRowIndex).ToString
		      
		    Else
		      
		      EditField_QueueName.value = ""
		      EditField_QueueName1.value = ""
		      
		    End
		  End
		  DoNothing = False
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		CC As CLass_MMCTP_Commands
	#tag EndProperty

	#tag Property, Flags = &h0
		DoNothing As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Name_Change As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		save_linac As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Save_Login As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		ss As Class_Shell_One
	#tag EndProperty


#tag EndWindowCode

#tag Events PushButton_ShellKill_Refresh
	#tag Event
		Sub Action()
		  MMCTP_Shell_Refresh.Kill_All
		  MMCTP_Shell_Run.Kill_All
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Shell_Restart_Refresh
	#tag Event
		Sub Action()
		  MMCTP_Shell_Run.Restart_Job
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Clear_Refresh
	#tag Event
		Sub Action()
		  EditField_ShellRefresh.value = ""
		  MMCTP_Shell_Refresh.Total_Output=""
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_DelShell
	#tag Event
		Sub Action()
		  DIm i as Integer
		  
		  i=PopupMenu_Shell.SelectedRowIndex
		  
		  if i>=0 and i<=UBound(gShells.Shells) Then
		    gShells.Shells.Remove i
		    gLinacs.Update_Shells_Delete(i)
		    Login_Open
		    save_linac=True
		    Save_Login=True
		  end
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Shell
	#tag Event
		Sub Change()
		  'Dim i as Integer
		  'Dim snew as Class_Shell_One
		  
		  If DoNothing Then
		    
		    Return
		    
		  End
		  
		  If PopupMenu_Shell.SelectedRowValue = "Add new Shell" Then
		    
		    Var snew As New Class_Shell_One
		    snew.title= "New Shell"
		    gShells.Shells.AddRow( snew )
		    Login_Open
		    gLinacs.Update_Shells_Add
		    PopupMenu_Shell.SelectedRowIndex = PopupMenu_Shell.RowCount - 2
		    Save_Login=True
		    save_linac=True
		    
		  End
		  
		  Login_Popup
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Editfield_Shell_title
	#tag Event
		Sub TextChange()
		  Dim i as Integer
		  
		  if DoNothing=True Then
		    Return
		  end
		  Name_Change=True
		  ss.title=me.Text
		  i=PopupMenu_Shell.SelectedRowIndex
		  Login_Open
		  PopupMenu_Shell.SelectedRowIndex=i
		  Name_Change=False
		  Save_Login=True
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_machinetext
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    ss.machine=me.Text
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_logintext
	#tag Event
		Sub TextChange()
		  if DoNothing= False Then
		    ss.login=me.Text
		    Save_Login=True
		  end
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_passwordtext
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    
		    ss.password=me.Text
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_linefeed
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    
		    ss.linefeed=me.Text
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_bash
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    ss.bash=me.Text
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_listfiles
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    ss.listfiles=me.Text
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_listfiles_size
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    ss.listfiles_column_num=val(me.Text)
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_listfile_name
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    ss.listfiles_name=val(me.Text)
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_egsnrc_folder
	#tag Event
		Sub TextChange()
		  Dim s,l as String
		  
		  if DoNothing=False Then
		    s=trim(me.Text)
		    
		    if RadioButton_Linux.Value or RadioButton_Mac.Value Then
		      l=Right(s,1)
		      if l<>"/" Then
		        s=s+"/"
		      end
		      l=Left(s,1)
		      if l<>"/" Then
		        s="/"+s
		      end
		      
		    else // For windows paths
		      
		      
		    end
		    
		    
		    ss.egsnrc_folder_path=s
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_vmc_exe
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    ss.vmc_path=trim(me.Text)
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_listfiles_dateA
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    ss.listfiles_dateA=val(me.Text)
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_listfiles_time
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    ss.listfiles_time=val(me.Text)
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_tail_c
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    ss.tail_c=trim(me.Text)
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_tail_after
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    ss.tail_after=trim(me.Text)
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_MC_jobs
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    ss.MaxJobs=val(me.Text)
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_ConnectionTest
	#tag Event
		Sub Action()
		  StaticText_ConnectionTest.value = ""
		  cc= new Class_MMCTP_Commands
		  cc.shell=ss
		  cc.command="ls"
		  cc.shell_Test=True
		  MMCTP_Shell_Run.All.Addrow( cc )
		  gTimer_Run.Period=1000
		  gTimer_Run.Reset
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_vmc_folder
	#tag Event
		Sub TextChange()
		  Dim s,l as String
		  
		  if DoNothing=False Then
		    s=trim(me.Text)
		    l=Right(s,1)
		    if l<>"/" Then
		      s=s+"/"
		    end
		    l=Left(s,1)
		    if l<>"/" Then
		      s="/"+s
		    end
		    ss.vmc_folder=s
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Mac
	#tag Event
		Sub Action()
		  if DoNothing=False Then
		    ss.OS=1
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Linux
	#tag Event
		Sub Action()
		  if DoNothing=False Then
		    ss.OS=2
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_PC
	#tag Event
		Sub Action()
		  if DoNothing=False Then
		    ss.OS=3
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_SCP
	#tag Event
		Sub Action()
		  if DoNothing=False Then
		    ss.File_Transfer_Index=1
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_FTP
	#tag Event
		Sub Action()
		  if DoNothing=False Then
		    ss.File_Transfer_Index=0
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_ftpLF
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    
		    ss.ftplinefeed=me.Text
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_ConnectionTest_FTP
	#tag Event
		Sub Action()
		  //-------------------------------------------
		  //
		  //-------------------------------------------
		  Dim f as FolderItem
		  Dim ts as TextOutputStream
		  Dim i as Integer
		  Dim tmpstr ,location(-1),path as String
		  //-------------------------------------------
		  
		  f=new FolderItem
		  f=gPref.Settings_fi
		  f=f.Child("MMCTP-FTP-Test")
		  if f= Nil Then
		    MessageBox("Error 1: Could not create FTP test file")
		    Return
		  end
		  
		  
		  ts=f.CreateTextFile
		  if ts=nil Then
		    MessageBox("Error 2: Could not create FTP test file")
		    Return
		  end
		  
		  for i=1 to 100
		    ts.WriteLine "Test"
		  next
		  ts.Close
		  
		  
		  
		  
		  path=f.ShellPath
		  
		  
		  
		  StaticText_ConnectionTest_FTP.value = ""
		  cc= new Class_MMCTP_Commands
		  cc.shell=ss
		  cc.Shell_Test_FTP=True
		  cc.FTP_Now=True
		  cc.FTP_Put_file=True
		  cc.FTP_Local_Path=path
		  cc.FTP_Remote_Path=f.Name
		  cc.command="put "+path+"  "+f.Name
		  cc.FTP_Files= f
		  MMCTP_Shell_Run.All.Addrow( cc )
		  
		  gTimer_Run.Period=1000
		  gTimer_Run.Reset
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Shell_Queue
	#tag Event
		Sub Change()
		  Dim i as Integer
		  
		  if DoNothing=True Then
		    Return
		  end
		  
		  if Name_Change=False Then
		    i=me.SelectedRowIndex
		    if i>=0 and i<= UBound(ss.Queue) Then
		      EditField_QueueName.value = ss.Queue(i)
		      EditField_QueueName1.value = Str(ss.QueueTime(i))
		      
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_QueueName
	#tag Event
		Sub TextChange()
		  Dim i as Integer
		  
		  if DoNothing=False Then
		    i=PopupMenu_Shell_Queue.SelectedRowIndex
		    if i>=0 and i<= UBound(ss.Queue) Then
		      Name_Change=True
		      ss.Queue(i)=me.Text
		      Login_Popup
		      PopupMenu_Shell_Queue.SelectedRowIndex=i
		      Name_Change=False
		      Save_Login=True
		    end
		  end
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_NumberofQueues
	#tag Event
		Sub TextChange()
		  Dim i as Integer
		  
		  if DoNothing=False Then
		    i=val(me.Text)-1
		    
		    ReDim ss.Queue(i)
		    ReDim ss.QueueTime(i)
		    Save_Login=True
		    Login_Popup
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Batch
	#tag Event
		Sub Change()
		  if DoNothing=False Then
		    ss.batch=me.Text
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_listfiles_dateB
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    ss.listfiles_dateB=val(me.Text)
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Shell_Online
	#tag Event
		Sub Action()
		  if DoNothing=False Then
		    ss.online=me.Value
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_MC_BEAMnrc_Version
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    ss.Beamnrc_v=Trim(me.Text)
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_QueueName1
	#tag Event
		Sub TextChange()
		  Dim i as Integer
		  
		  if DoNothing=False Then
		    i=PopupMenu_Shell_Queue.SelectedRowIndex
		    if i>=0 and i<= UBound(ss.Queue) Then
		      Name_Change=True
		      ss.QueueTime(i)=val(me.Text)
		      Login_Popup
		      PopupMenu_Shell_Queue.SelectedRowIndex=i
		      Name_Change=False
		      Save_Login=True
		    end
		  end
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_ShellKillallFTP
	#tag Event
		Sub Action()
		  MMCTP_Download.Kill_All
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_pscp
	#tag Event
		Sub TextChange()
		  if DoNothing=False Then
		    gShells.pscp=trim(me.Text)
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_plink
	#tag Event
		Sub TextChange()
		  Dim s,l as String
		  
		  if DoNothing=False Then
		    s=trim(me.Text)
		    gShells.Plink=s
		    Save_Login=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Shell_RestartFTPTask
	#tag Event
		Sub Action()
		  MMCTP_Download.Restart_Job
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_ClearFTP
	#tag Event
		Sub Action()
		  EditField_ShellFTP.value = ""
		  MMCTP_Download.Total_Output=""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_ShellKill_Run
	#tag Event
		Sub Action()
		  
		  MMCTP_Shell_Run.Kill_All
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Clear_Run
	#tag Event
		Sub Action()
		  EditField_ShellRun.value = ""
		  MMCTP_Shell_Run.Total_Output=""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Shell_Restart_Run
	#tag Event
		Sub Action()
		  MMCTP_Shell_Run.Restart_Job
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
		Name="Save_Login"
		Visible=false
		Group="Behavior"
		InitialValue="false"
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
