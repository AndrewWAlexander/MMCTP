#tag Window
Begin Window Window_EMET_Run
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
   Height          =   759
   ImplicitInstance=   True
   LiveResize      =   True
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
   Title           =   "Optimization Window - Runs"
   Visible         =   True
   Width           =   1212
   Begin TabPanel TabPanel_Lowers
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   728
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   14
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   False
      TabDefinition   =   "DDC Properties\rGrad-Opt\rSA-Opt\rJaws-Opt\rNLO-Opt\rDVH\rFluence Map\rScore Summary\rPB-Volume-Interplay "
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   11
      Underline       =   False
      Value           =   1
      Visible         =   True
      Width           =   1172
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
         EraseBackground =   True
         Graph_Title     =   ""
         Height          =   634
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Interactive     =   False
         Interactive_index=   0
         Left            =   21
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mouse_Str_X     =   ""
         Mouse_Str_Y     =   ""
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   6
         TabStop         =   True
         Top             =   56
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   1158
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
         Height          =   33
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   630
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   6
         TabStop         =   True
         Text            =   "MinDose"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   10.0
         TextUnit        =   0
         Top             =   697
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   549
      End
      Begin TextArea EditField_Grad_Output
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
         Height          =   676
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   25
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
         ScrollbarHorizontal=   True
         ScrollbarVertical=   True
         Styled          =   False
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   54
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   576
      End
      Begin PushButton PushButton_SADVH
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "saDVH"
         Default         =   False
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   25
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
         Top             =   46
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin TextField EditField_Sa_Score
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
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   136
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
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "1"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   15.0
         TextUnit        =   0
         Top             =   86
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   137
      End
      Begin Label StaticText84
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   25
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
         Text            =   "Sa score"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   86
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   63
      End
      Begin PushButton PushButton_OutputClear1
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Clear"
         Default         =   False
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   315
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   17
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   86
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin TextArea EditField_ShelloutSA
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
         Height          =   682
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   500
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
         ScrollbarHorizontal=   True
         ScrollbarVertical=   True
         Styled          =   False
         TabIndex        =   24
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   11.0
         TextUnit        =   0
         Top             =   49
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   672
      End
      Begin GroupBox GroupBox7
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Generator"
         Enabled         =   True
         Height          =   191
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   29
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   26
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   521
         Underline       =   False
         Visible         =   True
         Width           =   255
         Begin RadioButton RadioButton_SA_Polar
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Polar Generator"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox7"
            Italic          =   False
            Left            =   33
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
            Top             =   542
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   166
         End
         Begin RadioButton RadioButton_SA_Polar_One
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Polar Generator One"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox7"
            Italic          =   False
            Left            =   33
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   569
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   166
         End
         Begin RadioButton RadioButton_SA_Gaussian
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Gaussian Generator"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox7"
            Italic          =   False
            Left            =   33
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   596
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   166
         End
         Begin RadioButton RadioButton_SA_Uniform
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Uniform Generator all"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox7"
            Italic          =   False
            Left            =   32
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
            Top             =   650
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   166
         End
         Begin RadioButton RadioButton_SA_Uniform_One
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Uniform Generator One"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox7"
            Italic          =   False
            Left            =   32
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   4
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   676
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   166
         End
         Begin RadioButton RadioButton_SA_Gaussian_One
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Gaussian Generator One"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox7"
            Italic          =   False
            Left            =   32
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   5
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   623
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   196
         End
      End
      Begin ProgressWheel ProgressWheel_SA
         AutoDeactivate  =   True
         Enabled         =   False
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Left            =   114
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   27
         TabPanelIndex   =   3
         TabStop         =   True
         Top             =   46
         Visible         =   True
         Width           =   35
      End
      Begin Label StaticText_SA_RunTime
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
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
         TabIndex        =   28
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Run Time"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   46
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   131
      End
      Begin GroupBox GroupBox11
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "General"
         Enabled         =   True
         Height          =   220
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   191
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   43
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   46
         Underline       =   False
         Visible         =   True
         Width           =   199
         Begin Label StaticText15
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox11"
            Italic          =   False
            Left            =   203
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Iterations"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   77
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   107
         End
         Begin TextField EditField_Jaws_Iterations
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
            InitialParent   =   "GroupBox11"
            Italic          =   False
            Left            =   298
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
            Text            =   "1000"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   76
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   83
         End
         Begin CheckBox CheckBox_WriteDoseJaw
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Write DD"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox11"
            Italic          =   False
            Left            =   203
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   3
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   132
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   94
         End
         Begin TextField EditField_Jaw_Dname
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
            InitialParent   =   "GroupBox11"
            Italic          =   False
            Left            =   298
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
            Text            =   "EMET"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   131
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   83
         End
         Begin CheckBox CheckBox_NormDDJaw
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Normalize DD"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox11"
            Italic          =   False
            Left            =   203
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   1
            TabIndex        =   6
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   158
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   187
         End
         Begin Label StaticText80
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   "RangeWeight=(RangeWeight0)*exp(-(MDeterministic)/GaussianRate);	\r\rRangebeam=(Rangebeam0)*exp(-(MDeterministic)/GaussianRate);		\r\r\rHigher GaussianRate means slower decrease in range\rLower GaussianRate means faster decrease in range"
            Index           =   -2147483648
            InitialParent   =   "GroupBox11"
            Italic          =   False
            Left            =   203
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   7
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Rate G Decrease"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   182
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   107
         End
         Begin Label StaticText81
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   "Stochastic probability decrease rate\r\rSprobability = Sprobability*P-DecreaseRate;\r\r\rP - Decrease Rate : Larger Rate = Slower Decrease\rP - Decrease Rate : Smaller Rate = Faster Decrease"
            Index           =   -2147483648
            InitialParent   =   "GroupBox11"
            Italic          =   False
            Left            =   203
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   8
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Rate P Decrease"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   207
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   113
         End
         Begin TextField EditField_Jaw_RatePD
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
            InitialParent   =   "GroupBox11"
            Italic          =   False
            Left            =   322
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
            Text            =   "0.95"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   207
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   60
         End
         Begin TextField EditField_Jaw_RateGD
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
            InitialParent   =   "GroupBox11"
            Italic          =   False
            Left            =   322
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
            Text            =   "0.95"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   182
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   60
         End
         Begin TextField EditField_Jaw_StochasticP
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
            InitialParent   =   "GroupBox11"
            Italic          =   False
            Left            =   322
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
            Text            =   "0.05"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   233
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   60
         End
         Begin Label StaticText83
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   "PA: Probability of accepting a new solution\r\rOld formula\rPA=Bprobability/delta;\r\rCurrent formula \rPA=exp(Cost_F_Difference*beta)\rbeta=1/Sprobability;\rSprobability = Sprobability*DecreaseRate;"
            Index           =   -2147483648
            InitialParent   =   "GroupBox11"
            Italic          =   False
            Left            =   203
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
            Text            =   "Stochastic P"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   233
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   113
         End
      End
      Begin GroupBox GroupBox10
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "PB Weights"
         Enabled         =   True
         Height          =   220
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   587
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   45
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   46
         Underline       =   False
         Visible         =   True
         Width           =   211
         Begin Label StaticText_RageW
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox10"
            Italic          =   False
            Left            =   602
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Weight Range"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   133
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   107
         End
         Begin TextField EditField_Jaw_RangeW
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
            InitialParent   =   "GroupBox10"
            Italic          =   False
            Left            =   718
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
            Text            =   "50"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   131
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   70
         End
         Begin TextField EditField_Jaw_MinWeight
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
            InitialParent   =   "GroupBox10"
            Italic          =   False
            Left            =   718
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
            Text            =   "0.1"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   100
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   70
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
            InitialParent   =   "GroupBox10"
            Italic          =   False
            Left            =   602
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
            Text            =   "Min Weight (MU)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   101
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   107
         End
         Begin TextField EditField_Jaw_MaxWeight
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
            InitialParent   =   "GroupBox10"
            Italic          =   False
            Left            =   718
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
            Text            =   "500"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   71
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   70
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
            InitialParent   =   "GroupBox10"
            Italic          =   False
            Left            =   602
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
            Text            =   "Max Weight (MU)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   72
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   107
         End
         Begin Label StaticText_RageW1
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox10"
            Italic          =   False
            Left            =   602
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   6
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Load Weights"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   157
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   107
         End
         Begin RadioButton RadioButton_Jaw_W_Grad
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Grad"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox10"
            Italic          =   False
            Left            =   718
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   7
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   179
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   59
         End
         Begin RadioButton RadioButton_Jaw_W_SA
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "SA"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox10"
            Italic          =   False
            Left            =   602
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   8
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   179
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   46
         End
         Begin RadioButton RadioButton_Jaw_W_Jaws
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "JAW"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox10"
            Italic          =   False
            Left            =   654
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   9
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   179
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   55
         End
         Begin RadioButton RadioButton_Jaw_W_None
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "None"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox10"
            Italic          =   False
            Left            =   718
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   10
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   158
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   69
         End
         Begin RadioButton RadioButton_Jaw_W_NLO
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "NLO"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox10"
            Italic          =   False
            Left            =   598
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   11
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   207
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   59
         End
         Begin RadioButton RadioButton_Jaw_W_Auto
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Auto"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox10"
            Italic          =   False
            Left            =   666
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   12
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   207
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   59
         End
      End
      Begin TextArea EditField_Shellout_Jaw
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
         Height          =   452
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   25
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
         ScrollbarHorizontal=   True
         ScrollbarVertical=   True
         Styled          =   False
         TabIndex        =   48
         TabPanelIndex   =   4
         TabStop         =   False
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   11.0
         TextUnit        =   0
         Top             =   278
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   939
      End
      Begin GroupBox GroupBox1
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Weight Type"
         Enabled         =   True
         Height          =   278
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   296
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   29
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   185
         Underline       =   False
         Visible         =   True
         Width           =   183
         Begin RadioButton RadioButton_W_SA_UseValue
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Use Value"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   315
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   9
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   373
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   158
         End
         Begin TextField EditField_SA_InitW
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
            TabIndex        =   10
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "0.85"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   405
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   109
         End
         Begin RadioButton RadioButton_W_SA_AutoDetermine
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Auto Determine"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   315
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   12
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   341
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   146
         End
         Begin RadioButton RadioButton_W_SA_NLO
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "NLO"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   315
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   13
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   309
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   48
         End
         Begin RadioButton RadioButton_W_SA_JAW
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "JAW"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   315
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   14
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   277
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   48
         End
         Begin RadioButton RadioButton_W_SA_SA
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "SA"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   315
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   15
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   245
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   43
         End
         Begin RadioButton RadioButton_W_SA_Grad
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Grad"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   315
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   16
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   213
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   54
         End
      End
      Begin GroupBox GroupBox13
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "General"
         Enabled         =   True
         Height          =   324
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   25
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   30
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   185
         Underline       =   False
         Visible         =   True
         Width           =   259
         Begin TextField EditField_SA_Alpha
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
            InitialParent   =   "GroupBox13"
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
            TabIndex        =   0
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "0.85"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   397
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   109
         End
         Begin Label StaticText85
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   "Range=Range*alpha"
            Index           =   -2147483648
            InitialParent   =   "GroupBox13"
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
            TabIndex        =   1
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Alpha"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   394
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   40
         End
         Begin Label StaticText_Rage
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox13"
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
            TabIndex        =   2
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "PB Weight Range"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   362
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   116
         End
         Begin TextField EditField_RangeSA
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
            InitialParent   =   "GroupBox13"
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
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "5"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   364
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   109
         End
         Begin TextField EditField_ToSA
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
            InitialParent   =   "GroupBox13"
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
            TabIndex        =   4
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "0.01"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   332
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   109
         End
         Begin Label StaticText43
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   "beta = 1/ temp;\r\rdelta = CurObj - Obj;	// Delta < 0.0\r			//printf(""Delat : %e,\\n"",delta);\r\rPA = exp(delta * beta);"
            Index           =   -2147483648
            InitialParent   =   "GroupBox13"
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
            TabIndex        =   5
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Inital Temperature"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   333
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   123
         End
         Begin TextField EditField_MinWeightSA
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
            InitialParent   =   "GroupBox13"
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
            TabIndex        =   6
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "5"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   298
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   109
         End
         Begin Label StaticText86
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox13"
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
            TabIndex        =   7
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Min Weight (MU)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   299
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   119
         End
         Begin Label StaticText87
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox13"
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
            TabIndex        =   8
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Max Weight (MU)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   270
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   119
         End
         Begin TextField EditField_MaxWeightSA
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
            InitialParent   =   "GroupBox13"
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
            TabIndex        =   9
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "500"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   269
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   109
         End
         Begin TextField EditField_SA_Iterations
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
            InitialParent   =   "GroupBox13"
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
            TabIndex        =   12
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "1000"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   213
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   109
         End
         Begin Label StaticText88
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox13"
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
            TabIndex        =   13
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Iterations"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   214
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   107
         End
         Begin CheckBox CheckBox_SA_WriteDose
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Write Dose Distribution"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox13"
            Italic          =   False
            Left            =   36
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   14
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   449
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   170
         End
         Begin CheckBox CheckBox_NormDDSA
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Normaize DD"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox13"
            Italic          =   False
            Left            =   36
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   15
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   424
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   113
         End
         Begin TextField EditField_SA_Dname
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
            InitialParent   =   "GroupBox13"
            Italic          =   False
            Left            =   36
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
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "EMET"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   481
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   237
         End
      End
      Begin GroupBox GroupBox14
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Status"
         Enabled         =   True
         Height          =   220
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   25
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   50
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   46
         Underline       =   False
         Visible         =   True
         Width           =   156
         Begin CheckBox CheckBox_Jaws_AutoRun
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "AutoRun"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox14"
            Italic          =   False
            Left            =   36
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   0
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   185
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   84
         End
         Begin Label StaticText_JAW_RunTime
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox14"
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
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Run Time"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   131
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   130
         End
         Begin PushButton PushButton_OutputClearJaw
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Clear"
            Default         =   False
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox14"
            Italic          =   False
            Left            =   98
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
            Top             =   209
            Underline       =   False
            Visible         =   True
            Width           =   70
         End
         Begin PushButton PushButton_Jaw_Kill
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Kill"
            Default         =   False
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox14"
            Italic          =   False
            Left            =   34
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   208
            Underline       =   False
            Visible         =   True
            Width           =   58
         End
         Begin PushButton PushButton_SAJAWDVH
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "sa-Jaw-DVH"
            Default         =   False
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox14"
            Italic          =   False
            Left            =   34
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
            Top             =   71
            Underline       =   False
            Visible         =   True
            Width           =   107
         End
         Begin ProgressWheel ProgressWheel_JAW
            AutoDeactivate  =   True
            Enabled         =   False
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox14"
            Left            =   146
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   5
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   72
            Visible         =   False
            Width           =   35
         End
         Begin TextField EditField_Jaw_Score
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
            InitialParent   =   "GroupBox14"
            Italic          =   False
            Left            =   38
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
            Text            =   "1"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   15.0
            TextUnit        =   0
            Top             =   105
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   114
         End
         Begin TextField EditField_Jaw_Inital_Score
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
            InitialParent   =   "GroupBox14"
            Italic          =   False
            Left            =   38
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
            Text            =   "1"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   15.0
            TextUnit        =   0
            Top             =   156
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   114
         End
         Begin PushButton PushButton_NLO_Save1
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Save Run"
            Default         =   False
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox14"
            Italic          =   False
            Left            =   41
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   8
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   237
            Underline       =   False
            Visible         =   True
            Width           =   105
         End
      End
      Begin GroupBox GroupBox15
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Run Status"
         Enabled         =   True
         Height          =   407
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   613
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   59
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   64
         Underline       =   False
         Visible         =   True
         Width           =   552
         Begin PushButton PushButton_GradDVH_LoadDD
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Load DD"
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox15"
            Italic          =   False
            Left            =   928
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
            Top             =   88
            Underline       =   False
            Visible         =   True
            Width           =   68
         End
         Begin PushButton PushButton_GradDVH_OptKill
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Kill"
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox15"
            Italic          =   False
            Left            =   822
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   88
            Underline       =   False
            Visible         =   True
            Width           =   44
         End
         Begin PushButton PushButton_GradDVH
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Run GradDVH"
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox15"
            Italic          =   False
            Left            =   690
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
            Top             =   88
            Underline       =   False
            Visible         =   True
            Width           =   118
         End
         Begin PushButton PushButton_GradDVH_Save
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Save Run"
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox15"
            Italic          =   False
            Left            =   1078
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   12
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   88
            Underline       =   False
            Visible         =   True
            Width           =   68
         End
         Begin Listbox Listbox_GradDVH_Status
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
            Enabled         =   True
            EnableDrag      =   False
            EnableDragReorder=   False
            GridLinesHorizontal=   0
            GridLinesVertical=   0
            HasHeading      =   True
            HeadingIndex    =   -1
            Height          =   331
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "GroupBox15"
            InitialValue    =   ""
            Italic          =   False
            Left            =   625
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
            TabIndex        =   13
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   125
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   521
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin PushButton PushButton_GradDVH_OutputClear
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Clear"
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox15"
            Italic          =   False
            Left            =   625
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   14
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   88
            Underline       =   False
            Visible         =   True
            Width           =   48
         End
      End
      Begin GroupBox GroupBox16
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Generator"
         Enabled         =   True
         Height          =   218
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   402
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   51
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   48
         Underline       =   False
         Visible         =   True
         Width           =   173
         Begin RadioButton RadioButton_Jaw_Polar_One
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Polar Generator One"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox16"
            Italic          =   False
            Left            =   406
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
            Top             =   96
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   161
         End
         Begin RadioButton RadioButton_Jaw_Gaussian
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Gaussian Generator"
            Enabled         =   True
            Height          =   20
            HelpTag         =   "Generating Gaussian Random Numbers\r\ry1 = sqrt( - 2 ln(x1) ) cos( 2 pi x2 )\ry2 = sqrt( - 2 ln(x1) ) sin( 2 pi x2 )"
            Index           =   -2147483648
            InitialParent   =   "GroupBox16"
            Italic          =   False
            Left            =   406
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
            Top             =   123
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   161
         End
         Begin RadioButton RadioButton_JAW_Uniform
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Uniform Generator One"
            Enabled         =   True
            Height          =   20
            HelpTag         =   "z=1;\rr1 = ((double) rand()) / ((double) RAND_MAX);\rif (r1<0.5)\r{\r	z=-1;\r}\r\rx = (z*Range);\r//printf(""x = %e\\n "",x);\rPB.weight[i] = CurWgt[i] + x;\r"
            Index           =   -2147483648
            InitialParent   =   "GroupBox16"
            Italic          =   False
            Left            =   406
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   153
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   165
         End
         Begin RadioButton RadioButton_Jaw_Polar
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Polar Generator"
            Enabled         =   True
            Height          =   20
            HelpTag         =   "float x1, x2, w, y1, y2;\r \rdo {\r  x1 = 2.0 * ranf() - 1.0;\r   x2 = 2.0 * ranf() - 1.0;\r   w = x1 * x1 + x2 * x2;\r} while ( w >= 1.0 );\r\rw = sqrt( (-2.0 * ln( w ) ) / w );\ry1 = x1 * w;\ry2 = x2 * w;"
            Index           =   -2147483648
            InitialParent   =   "GroupBox16"
            Italic          =   False
            Left            =   406
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
            Top             =   69
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   161
         End
      End
      Begin RadioButton RadioButton_Map_Grad_W
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Grad- BeamWeights"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   24
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   7
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   55
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   152
      End
      Begin RadioButton RadioButton_MAP_Grad_MU
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Grad- MU Weights"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   188
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   7
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   55
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   142
      End
      Begin RadioButton RadioButton_MAP_SA_MU
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "SA- MU Weights"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   529
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   7
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   55
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   131
      End
      Begin RadioButton RadioButton_MAP_SAJAW_W
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "SAJaw- BeamWeights"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   672
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   7
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   55
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   156
      End
      Begin RadioButton RadioButton_MAP_SA_W
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "SA- BeamWeights"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   362
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   7
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   55
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   141
      End
      Begin PopupMenu PopupMenu_DVH
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   35
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         InitialValue    =   ""
         Italic          =   False
         Left            =   21
         ListIndex       =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   6
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   695
         Underline       =   False
         Visible         =   True
         Width           =   163
      End
      Begin GroupBox GroupBox4
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   ""
         Enabled         =   True
         Height          =   40
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   195
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   6
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   695
         Underline       =   False
         Visible         =   True
         Width           =   317
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
            Left            =   206
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   6
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   702
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
            Left            =   305
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   6
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   702
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   101
         End
         Begin CheckBox CheckBox_DVH_Norm
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Normalize"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   412
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   2
            TabPanelIndex   =   6
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   702
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   92
         End
      End
      Begin PushButton PushButton_LoadDVHs
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Reload DVHs"
         Default         =   False
         Enabled         =   True
         Height          =   36
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   524
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   6
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   696
         Underline       =   False
         Visible         =   True
         Width           =   94
      End
      Begin GroupBox GroupBox9
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Field Settings"
         Enabled         =   True
         Height          =   220
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   807
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   52
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   46
         Underline       =   False
         Visible         =   True
         Width           =   220
         Begin TextField EditField_Jaw_MinFieldSize
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
            InitialParent   =   "GroupBox9"
            Italic          =   False
            Left            =   950
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
            Text            =   "2"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   69
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   70
         End
         Begin Label StaticText97
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox9"
            Italic          =   False
            Left            =   819
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Min field size"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   72
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   119
         End
         Begin Label StaticText98
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox9"
            Italic          =   False
            Left            =   819
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
            Text            =   "Min field movement"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   96
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   130
         End
         Begin TextField EditField_Jaw_MinFieldMove
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
            InitialParent   =   "GroupBox9"
            Italic          =   False
            Left            =   950
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
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "0.5"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   94
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   70
         End
         Begin TextField EditField_Jaw_MinFieldRange
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
            InitialParent   =   "GroupBox9"
            Italic          =   False
            Left            =   950
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
            Text            =   "0.1"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   121
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   70
         End
         Begin Label StaticText92
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox9"
            Italic          =   False
            Left            =   819
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
            Text            =   "Min fieldSize Range"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   122
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   128
         End
         Begin TextField EditField_Jaw_RangeO
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
            InitialParent   =   "GroupBox9"
            Italic          =   False
            Left            =   950
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
            Text            =   "5"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   146
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   70
         End
         Begin Label StaticText82
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox9"
            Italic          =   False
            Left            =   819
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   7
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Field Range"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   147
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   107
         End
         Begin TextField EditField_Jaw_Opt_IterationsJaw
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
            InitialParent   =   "GroupBox9"
            Italic          =   False
            Left            =   950
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
            Text            =   "1000"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   175
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   70
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
            InitialParent   =   "GroupBox9"
            Italic          =   False
            Left            =   819
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   9
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Move Beam Int"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   176
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   106
         End
         Begin Label StaticText821
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox9"
            Italic          =   False
            Left            =   819
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   10
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "FLEC Size"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   207
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   107
         End
         Begin TextField EditField_Jaw_FLECLimit
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
            InitialParent   =   "GroupBox9"
            Italic          =   False
            Left            =   950
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
            Text            =   "8"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   206
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   70
         End
      End
      Begin GroupBox GroupBox17
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Results"
         Enabled         =   True
         Height          =   628
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   24
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   7
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   87
         Underline       =   False
         Visible         =   True
         Width           =   1152
         Begin Label StaticText_Openings
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   21
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox17"
            Italic          =   False
            Left            =   46
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   True
            Scope           =   0
            Selectable      =   False
            TabIndex        =   14
            TabPanelIndex   =   7
            TabStop         =   True
            Text            =   "Filter openings"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   114
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   250
         End
         Begin PopupMenu PopupMenu_Filter_Description
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox17"
            InitialValue    =   ""
            Italic          =   False
            Left            =   420
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   15
            TabPanelIndex   =   7
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   114
            Underline       =   False
            Visible         =   True
            Width           =   168
         End
         Begin CheckBox CheckBox_BeamFilter_Description
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Description"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox17"
            Italic          =   False
            Left            =   308
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   16
            TabPanelIndex   =   7
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   114
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   100
         End
         Begin PopupMenu PopupMenu_Filter_Gantry
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox17"
            InitialValue    =   ""
            Italic          =   False
            Left            =   712
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   17
            TabPanelIndex   =   7
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   113
            Underline       =   False
            Visible         =   True
            Width           =   168
         End
         Begin CheckBox CheckBox_BeamFilter_Gantry
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Gantry Angle"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox17"
            Italic          =   False
            Left            =   600
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   18
            TabPanelIndex   =   7
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   113
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   109
         End
         Begin PopupMenu PopupMenu_Filter_Iso
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox17"
            InitialValue    =   ""
            Italic          =   False
            Left            =   998
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   19
            TabPanelIndex   =   7
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   113
            Underline       =   False
            Visible         =   True
            Width           =   168
         End
         Begin CheckBox CheckBox_BeamFilter_Isocenter
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Isocenter"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox17"
            Italic          =   False
            Left            =   886
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   20
            TabPanelIndex   =   7
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   113
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   100
         End
         Begin Listbox Listbox_Optimization_Results
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
            Height          =   253
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "GroupBox17"
            InitialValue    =   ""
            Italic          =   False
            Left            =   712
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            RequiresSelection=   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollBarVertical=   True
            SelectionType   =   0
            TabIndex        =   21
            TabPanelIndex   =   7
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   178
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   454
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin Label StaticText_NumofOpenings
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   21
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox17"
            Italic          =   False
            Left            =   892
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   True
            Scope           =   0
            Selectable      =   False
            TabIndex        =   22
            TabPanelIndex   =   7
            TabStop         =   True
            Text            =   "Filter openings"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   144
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   274
         End
         Begin PopupMenu PopupMenu_Filter_Mode
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox17"
            InitialValue    =   ""
            Italic          =   False
            Left            =   420
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   23
            TabPanelIndex   =   7
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   145
            Underline       =   False
            Visible         =   True
            Width           =   168
         End
         Begin CheckBox CheckBox_BeamFilter_Mode
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Mode"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox17"
            Italic          =   False
            Left            =   308
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   24
            TabPanelIndex   =   7
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   145
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   100
         End
         Begin PopupMenu PopupMenu_Filter_Energy
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox17"
            InitialValue    =   ""
            Italic          =   False
            Left            =   712
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   25
            TabPanelIndex   =   7
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   145
            Underline       =   False
            Visible         =   True
            Width           =   168
         End
         Begin CheckBox CheckBox_BeamFilter_Energy
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Energy"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox17"
            Italic          =   False
            Left            =   600
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   26
            TabPanelIndex   =   7
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   146
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   100
         End
         Begin GroupBox GroupBox18
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "FLEC Electron Fields"
            Enabled         =   True
            Height          =   266
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox17"
            Italic          =   False
            Left            =   930
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   27
            TabPanelIndex   =   7
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   437
            Underline       =   False
            Visible         =   True
            Width           =   236
            Begin CheckBox CheckBox_6
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "6 MeV"
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox18"
               Italic          =   False
               Left            =   936
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               State           =   0
               TabIndex        =   0
               TabPanelIndex   =   7
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   499
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   195
            End
            Begin CheckBox CheckBox_9
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "9 MeV"
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox18"
               Italic          =   False
               Left            =   936
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               State           =   0
               TabIndex        =   1
               TabPanelIndex   =   7
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   531
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   195
            End
            Begin CheckBox CheckBox_16
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "16 MeV"
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox18"
               Italic          =   False
               Left            =   936
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               State           =   0
               TabIndex        =   2
               TabPanelIndex   =   7
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   595
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   195
            End
            Begin CheckBox CheckBox_12
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "12 MeV"
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox18"
               Italic          =   False
               Left            =   936
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               State           =   0
               TabIndex        =   3
               TabPanelIndex   =   7
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   563
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   195
            End
            Begin CheckBox CheckBox_20
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "20 MeV"
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox18"
               Italic          =   False
               Left            =   936
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               State           =   0
               TabIndex        =   4
               TabPanelIndex   =   7
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   627
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   195
            End
            Begin Label StaticText891
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
               Left            =   936
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   5
               TabPanelIndex   =   7
               TabStop         =   True
               Text            =   "Number of PB Weights"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   467
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   223
            End
            Begin PushButton PushButton_GenerateFlec_Positionfile
               AutoDeactivate  =   True
               Bold            =   False
               ButtonStyle     =   "0"
               Cancel          =   False
               Caption         =   "Generate FLEC Position file"
               Default         =   False
               Enabled         =   True
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox18"
               Italic          =   False
               Left            =   941
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   6
               TabPanelIndex   =   7
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   659
               Underline       =   False
               Visible         =   True
               Width           =   184
            End
         End
         Begin Canvas Canvas_Map_Grad
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   525
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox17"
            Left            =   34
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   28
            TabPanelIndex   =   7
            TabStop         =   True
            Top             =   178
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   666
         End
         Begin PushButton PushButton_CopyBeams
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Copy Beams"
            Default         =   False
            Enabled         =   True
            Height          =   26
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox17"
            Italic          =   False
            Left            =   712
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   29
            TabPanelIndex   =   7
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   658
            Underline       =   False
            Visible         =   True
            Width           =   102
         End
         Begin GroupBox GroupBox19
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Photon Fields"
            Enabled         =   True
            Height          =   135
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox17"
            Italic          =   False
            Left            =   712
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   30
            TabPanelIndex   =   7
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   437
            Underline       =   False
            Visible         =   True
            Width           =   212
            Begin CheckBox CheckBox_6MV
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "6 MV"
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox19"
               Italic          =   False
               Left            =   718
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               State           =   0
               TabIndex        =   0
               TabPanelIndex   =   7
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   499
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   162
            End
            Begin CheckBox CheckBox_18MV
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "18 MV"
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox19"
               Italic          =   False
               Left            =   718
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               State           =   0
               TabIndex        =   1
               TabPanelIndex   =   7
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   531
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   162
            End
            Begin Label StaticText_PhotonW
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox19"
               Italic          =   False
               Left            =   718
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   5
               TabPanelIndex   =   7
               TabStop         =   True
               Text            =   "Number of PB Weights"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   467
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   178
            End
         End
      End
      Begin GroupBox GroupBox3
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Dose Distributions, Beam information, Weights, Volume Dose"
         Enabled         =   True
         Height          =   671
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   25
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   58
         Underline       =   False
         Visible         =   True
         Width           =   803
         Begin Listbox Listbox_DOSE
            AutoDeactivate  =   True
            AutoHideScrollbars=   True
            Bold            =   False
            Border          =   True
            ColumnCount     =   20
            ColumnsResizable=   True
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
            Height          =   622
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            InitialValue    =   ""
            Italic          =   False
            Left            =   37
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            RequiresSelection=   False
            Scope           =   0
            ScrollbarHorizontal=   True
            ScrollBarVertical=   True
            SelectionType   =   1
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   87
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   779
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
      End
      Begin GroupBox GroupBox21
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Run"
         Enabled         =   True
         Height          =   669
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   26
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   5
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   52
         Underline       =   False
         Visible         =   True
         Width           =   500
         Begin PushButton PushButton_NLO
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Run-NLO"
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox21"
            Italic          =   False
            Left            =   38
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   5
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   76
            Underline       =   False
            Visible         =   True
            Width           =   68
         End
         Begin PushButton PushButton_NLO_Reload_Weights
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "ReLoad-Weights"
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox21"
            Italic          =   False
            Left            =   118
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   11
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   76
            Underline       =   False
            Visible         =   True
            Width           =   122
         End
         Begin PushButton PushButton_NLO_Save
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Save Run"
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox21"
            Italic          =   False
            Left            =   444
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   12
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   76
            Underline       =   False
            Visible         =   True
            Width           =   68
         End
         Begin PushButton PushButton_NLO_Reload_Text
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "ReLoad-Text"
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox21"
            Italic          =   False
            Left            =   252
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   13
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   76
            Underline       =   False
            Visible         =   True
            Width           =   105
         End
         Begin PushButton PushButton_NLO_LoadDD
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Load DD"
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox21"
            Italic          =   False
            Left            =   368
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   15
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   76
            Underline       =   False
            Visible         =   True
            Width           =   68
         End
         Begin Listbox Listbox_NLO_Status
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
            Enabled         =   True
            EnableDrag      =   False
            EnableDragReorder=   False
            GridLinesHorizontal=   0
            GridLinesVertical=   0
            HasHeading      =   True
            HeadingIndex    =   -1
            Height          =   297
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "GroupBox21"
            InitialValue    =   ""
            Italic          =   False
            Left            =   37
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            RequiresSelection=   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollBarVertical=   True
            SelectionType   =   0
            TabIndex        =   16
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   119
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   475
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin GroupBox GroupBox23
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Algorithm"
            Enabled         =   True
            Height          =   272
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox21"
            Italic          =   False
            Left            =   340
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   17
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   428
            Underline       =   False
            Visible         =   True
            Width           =   172
            Begin RadioButton RadioButton_NLO_COBYLA
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "COBYLA"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox23"
               Italic          =   False
               Left            =   344
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   0
               TabPanelIndex   =   5
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   449
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   130
            End
            Begin RadioButton RadioButton_NLO_BOBYQA
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "BOBYQA"
               Enabled         =   True
               Height          =   20
               HelpTag         =   "This is an algorithm derived from the BOBYQA subroutine of M. J. D. Powell, converted to C and modified for the NLopt stopping criteria. BOBYQA performs derivative-free bound-constrained optimization using an iteratively constructed quadratic approximation for the objective function. See:\rM. J. D. Powell, ""The BOBYQA algorithm for bound constrained optimization without derivatives,"" Department of Applied Mathematics and Theoretical Physics, Cambridge England, technical report NA2009/06 (2009).\r(Because BOBYQA constructs a quadratic approximation of the objective, it may perform poorly for objective functions that are not twice-differentiable.)\rThe NLopt BOBYQA interface supports unequal initial-step sizes in the different parameters (by the simple expedient of internally rescaling the parameters proportional to the initial steps), which is important when different parameters have very different scales.\rThis algorithm, specified in NLopt as NLOPT_LN_BOBYQA, largely supersedes the NEWUOA algorithm below, which is an earlier version of the same idea by Powell."
               Index           =   -2147483648
               InitialParent   =   "GroupBox23"
               Italic          =   False
               Left            =   344
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   1
               TabPanelIndex   =   5
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   474
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   130
            End
            Begin RadioButton RadioButton_NLO_PRAXIS
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "PRAXIS"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox23"
               Italic          =   False
               Left            =   344
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   2
               TabPanelIndex   =   5
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   502
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   130
            End
            Begin RadioButton RadioButton_NLO_Sbplx
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "Sbplx"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox23"
               Italic          =   False
               Left            =   343
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   3
               TabPanelIndex   =   5
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   552
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   130
            End
            Begin RadioButton RadioButton_NLO_Nelder_Mead_Simplex
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "Nelder-Mead Simplex"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox23"
               Italic          =   False
               Left            =   343
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   5
               TabPanelIndex   =   5
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   529
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   160
            End
            Begin RadioButton RadioButton_NLO_MMA
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "MMA"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox23"
               Italic          =   False
               Left            =   344
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   6
               TabPanelIndex   =   5
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   578
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   88
            End
            Begin RadioButton RadioButton_NLO_SLSQB
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "NL_SLSQB"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox23"
               Italic          =   False
               Left            =   344
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   7
               TabPanelIndex   =   5
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   602
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   88
            End
            Begin RadioButton RadioButton_NLO_NL_BFGS
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "NL_BFGS"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox23"
               Italic          =   False
               Left            =   344
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   8
               TabPanelIndex   =   5
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   626
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   88
            End
            Begin RadioButton RadioButton_NLO_NL_TRUNC_NEWTON
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "TRUNC_NEWTON"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox23"
               Italic          =   False
               Left            =   344
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   9
               TabPanelIndex   =   5
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   674
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   129
            End
            Begin RadioButton RadioButton_NLO_NL_SLMVM
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "SLMVM"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox23"
               Italic          =   False
               Left            =   344
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   10
               TabPanelIndex   =   5
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   650
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   111
            End
         End
         Begin GroupBox GroupBox2
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Weight Type"
            Enabled         =   True
            Height          =   162
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox21"
            Italic          =   False
            Left            =   37
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   18
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   428
            Underline       =   False
            Visible         =   True
            Width           =   244
            Begin RadioButton RadioButton_NLO_W_UseValue
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "Use Value"
               Enabled         =   True
               Height          =   22
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox2"
               Italic          =   False
               Left            =   49
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   6
               TabPanelIndex   =   5
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   555
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   94
            End
            Begin TextField EditField_NLO_InitW
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
               Left            =   149
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
               TabPanelIndex   =   5
               TabStop         =   True
               Text            =   "0.85"
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   561
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   62
            End
            Begin RadioButton RadioButton_NLO_W_AutoDetermine
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "Auto Determine"
               Enabled         =   True
               Height          =   22
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox2"
               Italic          =   False
               Left            =   51
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   8
               TabPanelIndex   =   5
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   523
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   125
            End
            Begin RadioButton RadioButton_NLO_W_Grad
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "Grad"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox2"
               Italic          =   False
               Left            =   49
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   9
               TabPanelIndex   =   5
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   458
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   54
            End
            Begin RadioButton RadioButton_NLO_W_SA
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "SA"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox2"
               Italic          =   False
               Left            =   115
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   10
               TabPanelIndex   =   5
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   459
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   43
            End
            Begin RadioButton RadioButton_NLO_W_JAW
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "JAW"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox2"
               Italic          =   False
               Left            =   49
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   11
               TabPanelIndex   =   5
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   491
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   48
            End
            Begin RadioButton RadioButton_NLO_W_NLO
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "NLO"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox2"
               Italic          =   False
               Left            =   115
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   12
               TabPanelIndex   =   5
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   491
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   48
            End
         End
      End
      Begin RadioButton RadioButton_MAP_NLO
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "NLO- BeamWeights"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   840
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   7
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   55
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   146
      End
      Begin TextField EditField_Sa_Time
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
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   136
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
         TabIndex        =   31
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "1"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   15.0
         TextUnit        =   0
         Top             =   155
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   137
      End
      Begin PushButton PushButton_SA_Save
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Save Run"
         Default         =   False
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   316
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   33
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   46
         Underline       =   False
         Visible         =   True
         Width           =   79
      End
      Begin Label StaticText842
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   25
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   34
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Sa Time"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   156
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   63
      End
      Begin TextField EditField_Sa_Score_Intitial
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
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   136
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
         TabIndex        =   35
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "1"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   15.0
         TextUnit        =   0
         Top             =   120
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   137
      End
      Begin Label StaticText843
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   25
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   36
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Sa initial score"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   121
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   99
      End
      Begin TextArea EditField_NLO_Output
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
         Height          =   653
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   546
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
         ScrollbarHorizontal=   True
         ScrollbarVertical=   True
         Styled          =   False
         TabIndex        =   3
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   68
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   618
      End
      Begin GroupBox GroupBox27
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Summary of Fields"
         Enabled         =   True
         Height          =   153
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   840
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   58
         Underline       =   False
         Visible         =   True
         Width           =   331
         Begin TextField EditField_Num
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
            InitialParent   =   "GroupBox27"
            Italic          =   False
            Left            =   944
            LimitText       =   0
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Password        =   False
            ReadOnly        =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "0"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   87
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   65
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
            InitialParent   =   "GroupBox27"
            Italic          =   False
            Left            =   851
            LockBottom      =   True
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
            Text            =   "Num Fields"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   87
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   72
         End
         Begin CheckBox CheckBox_Hide_BeamInfo
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Hide Beam Info"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox27"
            Italic          =   False
            Left            =   851
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   123
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   129
         End
         Begin CheckBox CheckBox_Hide_Zero
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Hide Grad Zeros"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox27"
            Italic          =   False
            Left            =   851
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   3
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   155
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   129
         End
         Begin CheckBox CheckBox_Hide_SA_JAW_W
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Hide SA,DJ Weights"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox27"
            Italic          =   False
            Left            =   992
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   4
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   123
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   164
         End
         Begin CheckBox CheckBox_Hide_OAR
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Hide OAR Dose Stats"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox27"
            Italic          =   False
            Left            =   992
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   5
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   155
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   164
         End
         Begin CheckBox CheckBox_Hide_Unselected
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Hide Unused"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox27"
            Italic          =   False
            Left            =   851
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   6
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   181
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   129
         End
         Begin CheckBox CheckBox_Hide_MU
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Hide MUs"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox27"
            Italic          =   False
            Left            =   994
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   7
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   181
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   129
         End
         Begin CheckBox CheckBox_Hide_BeamInfo2
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Hide Beam Info 2"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox27"
            Italic          =   False
            Left            =   1021
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   8
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   87
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   135
         End
      End
      Begin GroupBox GroupBox20
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Select Options"
         Enabled         =   True
         Height          =   353
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   840
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   220
         Underline       =   False
         Visible         =   True
         Width           =   331
         Begin CheckBox CheckBox_All_20MeV
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "20 MeV"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox20"
            Italic          =   False
            Left            =   851
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   285
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   75
         End
         Begin CheckBox CheckBox_All_16MeV
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "16 MeV"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox20"
            Italic          =   False
            Left            =   1073
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   253
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   76
         End
         Begin CheckBox CheckBox_All_12MeV
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "12 MeV"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox20"
            Italic          =   False
            Left            =   994
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   253
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   77
         End
         Begin CheckBox CheckBox_All_9MeV
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "9 MeV"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox20"
            Italic          =   False
            Left            =   926
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   3
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   253
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   65
         End
         Begin CheckBox CheckBox_All_6MeV
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "6 MeV"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox20"
            Italic          =   False
            Left            =   851
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   4
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   253
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   70
         End
         Begin CheckBox CheckBox_All_6MV
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "6 MV"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox20"
            Italic          =   False
            Left            =   926
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   5
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   285
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   54
         End
         Begin CheckBox CheckBox_All
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Check All"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox20"
            Italic          =   False
            Left            =   851
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   6
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   317
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   90
         End
         Begin TextField EditField_Size
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
            InitialParent   =   "GroupBox20"
            Italic          =   False
            Left            =   1009
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
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "4,4,4,4"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   343
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   101
         End
         Begin CheckBox CheckBox_All_Size
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Check All with size"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox20"
            Italic          =   False
            Left            =   851
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   8
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   343
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   152
         End
         Begin PopupMenu PopupMenu_BeamDis
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox20"
            InitialValue    =   ""
            Italic          =   False
            Left            =   851
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   12
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   418
            Underline       =   False
            Visible         =   True
            Width           =   184
         End
         Begin CheckBox CheckBox_Remove_beamdis
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Beam description yes/no"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox20"
            Italic          =   False
            Left            =   851
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   13
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   386
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   187
         End
         Begin PopupMenu PopupMenu_Beam_EGSPhant
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox20"
            InitialValue    =   ""
            Italic          =   False
            Left            =   851
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   14
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   489
            Underline       =   False
            Visible         =   True
            Width           =   184
         End
         Begin CheckBox CheckBox_Remove_beam_EGSPhant
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "EGSPhant/DMX file"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox20"
            Italic          =   False
            Left            =   851
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   15
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   457
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   143
         End
         Begin CheckBox CheckBox_Remove_Zero
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "De-select grad weights of zeros"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox20"
            Italic          =   False
            Left            =   851
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   16
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   533
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   259
         End
      End
      Begin GroupBox GroupBox28
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Advanced Options"
         Enabled         =   True
         Height          =   144
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   840
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   585
         Underline       =   False
         Visible         =   True
         Width           =   331
         Begin TextField EditField_Grad_Weights
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
            InitialParent   =   "GroupBox28"
            Italic          =   False
            Left            =   1047
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
            Text            =   "0.0"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   618
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   53
         End
         Begin CheckBox CheckBox_Remove_Delete
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Delete fields with Grad weights = 0.0"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   "Delete fields with Grad weights equal to zeros"
            Index           =   -2147483648
            InitialParent   =   "GroupBox28"
            Italic          =   False
            Left            =   851
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   704
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   281
         End
         Begin PushButton PushButton_PB_Set_Weights
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Set Gradient Weights to ="
            Default         =   False
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox28"
            Italic          =   False
            Left            =   851
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   618
            Underline       =   False
            Visible         =   True
            Width           =   184
         End
         Begin TextField EditField_PB_MaxDose
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
            InitialParent   =   "GroupBox28"
            Italic          =   False
            Left            =   1130
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
            Text            =   "5"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   649
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   35
         End
         Begin PushButton PushButton_PB_Update_By_Dose
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Un-select PB with taget maxdose <"
            Default         =   False
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox28"
            Italic          =   False
            Left            =   851
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   5
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   650
            Underline       =   False
            Visible         =   True
            Width           =   267
         End
         Begin PushButton PushButton_Set_IntWeights
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Round GradWeights"
            Default         =   False
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox28"
            Italic          =   False
            Left            =   854
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   6
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   679
            Underline       =   False
            Visible         =   True
            Width           =   184
         End
      End
      Begin GroupBox GroupBox8
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Calculation"
         Enabled         =   True
         Height          =   315
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   976
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   53
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   284
         Underline       =   False
         Visible         =   True
         Width           =   204
         Begin RadioButton RadioButton_JAW_VMC1
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "VMC -mono"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox8"
            Italic          =   False
            Left            =   984
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
            Top             =   310
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   100
         End
         Begin RadioButton RadioButton_JAW_VMC2
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "VMC -pshp"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox8"
            Italic          =   False
            Left            =   984
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
            Top             =   339
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   100
         End
         Begin RadioButton RadioButton_JAW_DOS1
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "DOS - mono"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox8"
            Italic          =   False
            Left            =   987
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
            Top             =   432
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   100
         End
         Begin RadioButton RadioButton_JAW_DOS2
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "DOS - pshp"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox8"
            Italic          =   False
            Left            =   987
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   455
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   100
         End
         Begin TextField EditField_Jaw_VMC_Index
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
            InitialParent   =   "GroupBox8"
            Italic          =   False
            Left            =   1096
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
            Text            =   "0"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   339
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   71
         End
         Begin TextField EditField_Jaw_DOS_Index
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
            InitialParent   =   "GroupBox8"
            Italic          =   False
            Left            =   1099
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
            Text            =   "0"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   471
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   71
         End
         Begin Label StaticText93
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox8"
            Italic          =   False
            Left            =   1099
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   6
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "DOS index"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   441
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   71
         End
         Begin RadioButton RadioButton_JAW_DOS3
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "DOS - libsource"
            Enabled         =   True
            Height          =   33
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox8"
            Italic          =   False
            Left            =   987
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   8
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   481
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   100
         End
         Begin Label StaticText95
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox8"
            Italic          =   False
            Left            =   990
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   9
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "DOS Error %"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   521
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   107
         End
         Begin TextField EditField_Jaw_DOS_Error
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
            InitialParent   =   "GroupBox8"
            Italic          =   False
            Left            =   1099
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
            Text            =   "4"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   519
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   71
         End
         Begin TextField EditField_Jaw_DOS_TestHist
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
            InitialParent   =   "GroupBox8"
            Italic          =   False
            Left            =   1099
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
            Text            =   "1000"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   554
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   71
         End
         Begin Label StaticText96
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox8"
            Italic          =   False
            Left            =   987
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
            Text            =   "DOS TEST hist"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   555
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   107
         End
         Begin Label StaticText94
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox8"
            Italic          =   False
            Left            =   1096
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
            Text            =   "VMC index"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   310
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   71
         End
         Begin Label StaticText951
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox8"
            Italic          =   False
            Left            =   984
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
            Text            =   "VMC Error %"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   366
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   107
         End
         Begin TextField EditField_Jaw_VMC_Error
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
            InitialParent   =   "GroupBox8"
            Italic          =   False
            Left            =   1096
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
            Text            =   "-8"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   365
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   71
         End
      End
      Begin GroupBox GroupBox30
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "PB Weight Options"
         Enabled         =   True
         Height          =   187
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   613
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   60
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   494
         Underline       =   False
         Visible         =   True
         Width           =   552
         Begin GroupBox GroupBox31
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Initial Weights Values"
            Enabled         =   True
            Height          =   126
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox30"
            Italic          =   False
            Left            =   626
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   11
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   523
            Underline       =   False
            Visible         =   True
            Width           =   257
            Begin RadioButton RadioButton_W_Grad_Jaw
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "JAW"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox31"
               Italic          =   False
               Left            =   752
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   0
               TabPanelIndex   =   2
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   548
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   56
            End
            Begin RadioButton RadioButton_W_Grad_SA
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "SA"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox31"
               Italic          =   False
               Left            =   699
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
               Top             =   548
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   45
            End
            Begin RadioButton RadioButton_W_Grad_Grad
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "Grad"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox31"
               Italic          =   False
               Left            =   639
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   2
               TabPanelIndex   =   2
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   548
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   58
            End
            Begin RadioButton RadioButton_W_Grad_NLO
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "NLO"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox31"
               Italic          =   False
               Left            =   810
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   3
               TabPanelIndex   =   2
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   548
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   56
            End
            Begin RadioButton RadioButton_W_Grad_Auto
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "Auto set PB values"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox31"
               Italic          =   False
               Left            =   640
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
               Top             =   580
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   180
            End
            Begin TextField EditField_Grad_Weight_Value
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
               InitialParent   =   "GroupBox31"
               Italic          =   False
               Left            =   743
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
               Text            =   "5"
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   610
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   100
            End
            Begin RadioButton RadioButton_W_Grad_Value
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "All values ="
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox31"
               Italic          =   False
               Left            =   640
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
               Top             =   612
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   99
            End
         End
      End
      Begin Listbox Listbox_Score
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
         Height          =   651
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         InitialValue    =   ""
         Italic          =   False
         Left            =   52
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
         TabPanelIndex   =   8
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   69
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   1120
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
   End
   Begin Timer Timer1
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Mode            =   2
      Period          =   10000
      Scope           =   0
      TabPanelIndex   =   "0"
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  app.which_window_EMET_Run=False
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Open_Plan_Index=Plan_Index
		  gOpt.Open_Inverse_Planning
		  Window_Open
		  Timer1.Period=50000
		  Timer1.Reset
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  DVHGraph.Resize_Canvas
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Copy_PB_WeightFields()
		  //---------------------------------
		  // Copy the PB used into new plan
		  //
		  //---------------------------------
		  Dim newplan,i as Integer
		  //---------------------------------
		  
		  newplan=UBound(gRTOG.Plan)
		  
		  
		  // Count Fields
		  for i=0 to UBound(gopt.IPbeams)
		    if gopt.IPbeams(i).Use Then
		      if (CheckBox_BeamFilter_Description.Value and gopt.IPbeams(i).Beam_Description=PopupMenu_Filter_Description.Text) or CheckBox_BeamFilter_Description.Value=False  then
		        if (CheckBox_BeamFilter_Energy.Value and gopt.IPbeams(i).Energy=PopupMenu_Filter_Energy.Text) or   CheckBox_BeamFilter_Energy.Value=False then
		          if (CheckBox_BeamFilter_Gantry.Value and Format(gopt.IPbeams(i).Gantry_Angle,"-#.##")=PopupMenu_Filter_Gantry.Text) or  CheckBox_BeamFilter_Gantry.Value=False then
		            if (CheckBox_BeamFilter_Mode.Value and gopt.IPbeams(i).Mode=PopupMenu_Filter_Mode.Text) or  CheckBox_BeamFilter_Mode.Value=False   Then
		              if (CheckBox_BeamFilter_Isocenter.Value and Format(gopt.IPbeams(i).Iso_X,"-#.##")+", "+Format(gopt.IPbeams(i).Iso_y,"-#.##")+", "+Format(gopt.IPbeams(i).Iso_z,"-#.##")=PopupMenu_Filter_Iso.Text) or  CheckBox_BeamFilter_Isocenter.Value=False Then
		                if (RadioButton_Map_Grad_W.Value and gopt.IPbeams(i).Weight_Grad>0) or RadioButton_Map_Grad_W.Value =False  Then
		                  if  (RadioButton_MAP_Grad_MU.Value and gopt.IPbeams(i).MUs_Grad>0) or RadioButton_MAP_Grad_MU.Value =False Then
		                    if  (RadioButton_MAP_SAJAW_W.Value and gopt.IPbeams(i).Weight_JAW>0) or RadioButton_MAP_SAJAW_W.Value =False Then
		                      if  (RadioButton_MAP_SA_W.Value and gopt.IPbeams(i).Weight_SA>0) or RadioButton_MAP_SA_W.Value =False  Then
		                        if  (RadioButton_MAP_SA_MU.Value and gopt.IPbeams(i).MUs_SA>0) or RadioButton_MAP_SA_MU.Value =False  Then
		                          
		                          
		                          if gOpt.IPbeams(i).RTOG_Plan>-1 and gOpt.IPbeams(i).RTOG_Beam>-1 Then
		                            gRTOG.McGill_Copy_Beam(newplan,gOpt.IPbeams(i).RTOG_Plan, gOpt.IPbeams(i).RTOG_Beam)
		                          end
		                          
		                          
		                        end
		                      end
		                    end
		                  end
		                end
		              end
		            end
		          end
		        end
		      end
		    end
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Count_PB_WeightFields()
		  //---------------------------------
		  // Counts the number of PB used per energy
		  //  uses filters to sub-group
		  //
		  //---------------------------------
		  Dim i,e6,e9,e12,e20,e16,p6,p18,cc,pb_count,PIndex,beam,k,num_p(-1) as Integer
		  Dim line,name,FLECOpen,JawOpen,mu as String
		  Dim found as Boolean
		  Dim text as Double
		  //---------------------------------
		  
		  Listbox_Optimization_Results.DeleteAllRows
		  Listbox_Optimization_Results.Heading(0)="Energy"
		  Listbox_Optimization_Results.Heading(1)="Gantry"
		  Listbox_Optimization_Results.Heading(2)="Iso"
		  Listbox_Optimization_Results.Heading(3)="Mode"
		  Listbox_Optimization_Results.Heading(4)="Weight"
		  
		  line=""
		  pb_count=0
		  ReDim FLEC_Fields(-1)
		  ReDim num_p(-1)
		  
		  cc=-1
		  // Count Fields
		  for i=0 to UBound(gopt.IPbeams)
		    if gopt.IPbeams(i).Use Then
		      if (CheckBox_BeamFilter_Description.Value and gopt.IPbeams(i).Beam_Description=PopupMenu_Filter_Description.Text) or CheckBox_BeamFilter_Description.Value=False  then
		        if (CheckBox_BeamFilter_Energy.Value and gopt.IPbeams(i).Energy=PopupMenu_Filter_Energy.Text) or   CheckBox_BeamFilter_Energy.Value=False then
		          if (CheckBox_BeamFilter_Gantry.Value and Format(gopt.IPbeams(i).Gantry_Angle,"-#.##")=PopupMenu_Filter_Gantry.Text) or  CheckBox_BeamFilter_Gantry.Value=False then
		            if (CheckBox_BeamFilter_Mode.Value and gopt.IPbeams(i).Mode=PopupMenu_Filter_Mode.Text) or  CheckBox_BeamFilter_Mode.Value=False   Then
		              if (CheckBox_BeamFilter_Isocenter.Value and Format(gopt.IPbeams(i).Iso_X,"-#.##")+", "+Format(gopt.IPbeams(i).Iso_y,"-#.##")+", "+Format(gopt.IPbeams(i).Iso_z,"-#.##")=PopupMenu_Filter_Iso.Text) or  CheckBox_BeamFilter_Isocenter.Value=False Then
		                if (RadioButton_Map_Grad_W.Value and gopt.IPbeams(i).Weight_Grad>0) or RadioButton_Map_Grad_W.Value =False  Then
		                  if  (RadioButton_MAP_Grad_MU.Value and gopt.IPbeams(i).MUs_Grad>0) or RadioButton_MAP_Grad_MU.Value =False Then
		                    if  (RadioButton_MAP_SAJAW_W.Value and gopt.IPbeams(i).Weight_JAW>0) or RadioButton_MAP_SAJAW_W.Value =False Then
		                      if  (RadioButton_MAP_SA_W.Value and gopt.IPbeams(i).Weight_SA>0) or RadioButton_MAP_SA_W.Value =False  Then
		                        if  (RadioButton_MAP_SA_MU.Value and gopt.IPbeams(i).MUs_SA>0) or RadioButton_MAP_SA_MU.Value =False  Then
		                          if  (RadioButton_MAP_NLO.Value and gopt.IPbeams(i).Weight_NLO>0) or RadioButton_MAP_NLO.Value =False  Then
		                            // Update Number of MUs
		                            cc=cc+1
		                            
		                            Listbox_Optimization_Results.AddRow gOpt.IPbeams(i).Energy
		                            Listbox_Optimization_Results.Cell(cc,1)=Format(gOpt.IPbeams(i).Gantry_Angle,"-#.##")
		                            Listbox_Optimization_Results.Cell(cc,2)=Format(gopt.IPbeams(i).Iso_X,"-#.##")+", "+Format(gopt.IPbeams(i).Iso_Y,"-#.##")+", "+Format(gopt.IPbeams(i).Iso_Z,"-#.##")
		                            Listbox_Optimization_Results.Cell(cc,3)=gOpt.IPbeams(i).Mode
		                            
		                            if RadioButton_Map_Grad_W.Value Then
		                              Listbox_Optimization_Results.Cell(cc,4)=Format(gOpt.IPbeams(i).Weight_Grad,"-#.###")
		                            elseif  RadioButton_MAP_Grad_MU.Value Then
		                              Listbox_Optimization_Results.Cell(cc,4)=Format(gOpt.IPbeams(i).MUs_Grad,"-#.###")
		                            elseif  RadioButton_MAP_SAJAW_W.Value Then
		                              Listbox_Optimization_Results.Cell(cc,4)=Format(gOpt.IPbeams(i).Weight_JAW,"-#.###")
		                            elseif  RadioButton_MAP_SA_W.Value Then
		                              Listbox_Optimization_Results.Cell(cc,4)=Format(gOpt.IPbeams(i).Weight_SA,"-#.###")
		                            elseif  RadioButton_MAP_SA_MU.Value Then
		                              Listbox_Optimization_Results.Cell(cc,4)=Format(gOpt.IPbeams(i).MUs_SA,"-#.###")
		                            elseif  RadioButton_MAP_NLO.Value Then
		                              if gOpt.IPbeams(i).Weight_NLO>0.001 Then
		                                Listbox_Optimization_Results.Cell(cc,4)=Format(gOpt.IPbeams(i).Weight_NLO,"-#.###")
		                              else
		                                Listbox_Optimization_Results.Cell(cc,4)=Format(gOpt.IPbeams(i).Weight_NLO,"-#.###e")
		                              end
		                            end
		                            
		                            if gopt.IPbeams(i).energy="6 MeV" Then
		                              e6=e6+1
		                            elseif gopt.IPbeams(i).energy="9 MeV" Then
		                              e9=e9+1
		                            elseif gopt.IPbeams(i).energy="12 MeV" Then
		                              e12=e12+1
		                            elseif gopt.IPbeams(i).energy="16 MeV" Then
		                              e16=e16+1
		                            elseif gopt.IPbeams(i).energy="20 MeV" Then
		                              e20=e20+1
		                            elseif gopt.IPbeams(i).energy="6MV" Then
		                              p6=p6+1
		                            elseif gopt.IPbeams(i).energy="18MV" Then
		                              p18=p18+1
		                            end
		                            
		                            name=gOpt.IPbeams(i).FIdID_Name
		                            name=NthField(name,"_",2)
		                            beam=gOpt.IPbeams(i).RTOG_Beam
		                            PIndex=gOpt.IPbeams(i).RTOG_Plan
		                            
		                            if PIndex>-1 and PIndex<=(UBound(gRTOG.Plan)) Then
		                              if UBound(gRTOG.Plan(PIndex).Beam)>=beam and beam>=0 Then
		                                FLECOpen = Format(10*gRTOG.Plan(PIndex).beam(beam).FLEC.x1,"-#.##")+",  "+Format(10*gRTOG.Plan(PIndex).beam(beam).FLEC.x2,"-#.##")+_
		                                ", "+Format(10*gRTOG.Plan(PIndex).beam(beam).FLEC.y1,"-#.##")+",  "+Format(10*gRTOG.Plan(PIndex).beam(beam).FLEC.y2,"-#.##")
		                                JawOpen= Format(gRTOG.Plan(PIndex).beam(beam).Collimator.fields(0).X1,"-#.##")+",  "+Format(gRTOG.Plan(PIndex).beam(beam).Collimator.fields(0).X2,"-#.##")+_
		                                ", "+Format(gRTOG.Plan(PIndex).beam(beam).Collimator.fields(0).Y1,"-#.##")+",  "+Format(gRTOG.Plan(PIndex).beam(beam).Collimator.fields(0).Y2,"-#.##")
		                                line=FLECOpen+", "+JawOpen
		                                mu=gRTOG.Plan(PIndex).beam(beam).beam_energy + "("+Format(gOpt.IPbeams(i).Weight_Grad,"#")+ ")"
		                              end
		                            end
		                            
		                            // Add new field to list, 1st check to see if field has already been defined, then just add beam energy and MU
		                            found=False
		                            for k=0 to UBound(FLEC_Fields)
		                              if InStr(FLEC_Fields(k),line)>0 Then
		                                FLEC_Fields(k)=FLEC_Fields(k)+", "+mu
		                                num_p(k)=num_p(k)+1
		                                found=True
		                              end
		                            next
		                            
		                            // Add new field, beam engery, and MU to list
		                            if found=False Then
		                              FLEC_Fields.Append line+" - " +mu
		                              num_p.Append 1
		                            end
		                          end
		                        end
		                      end
		                    end
		                  end
		                end
		              end
		            end
		          end
		        end
		      end
		    end
		  next
		  
		  CheckBox_6.Caption="6 MeV : "+str(e6)
		  CheckBox_9.Caption="9 MeV : "+str(e9)
		  CheckBox_12.Caption="12 MeV : "+str(e12)
		  CheckBox_16.Caption="16 MeV : "+str(e16)
		  CheckBox_20.Caption="20 MeV : "+str(e20)
		  
		  CheckBox_6MV.Caption="6 MV : "+str(p6)
		  CheckBox_18MV.Caption="18 MV : "+str(p18)
		  
		  Window_EMET_Run.StaticText_NumofOpenings.Text="Number of unique openings : "+ str(UBound(FLEC_Fields)+1)
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
		Sub DVH_Load_All_DVHs_Oarry()
		  //------------------------------------------
		  // Load the DVHs into graph points, to plot!
		  //
		  //------------------------------------------
		  Dim i ,k as Integer
		  Dim pp as Class_Profile_One
		  Dim pxy as Class_Points
		  //------------------------------------------
		  
		  
		  ReDim DVHGraph.Profiles.One_Profile(UBound(gOpt.Plan.Structure_Dose))
		  
		  for k=0 to UBound(gOpt.Plan.Structure_Dose)
		    pp= DVHGraph.Profiles.One_Profile(k)
		    pp.Label=gOpt.Plan.Structure_Dose(k).Organ_Name
		    if gOpt.Plan.Structure_Dose(k).Use_DV_Constraint or gOpt.Plan.Structure_Dose(k).Use_Min_Dose or gOpt.Plan.Structure_Dose(k).AvgDose_Use or gOpt.Plan.Structure_Dose(k).Use_Max_Dose  Then 
		      if DVHGraph.Interactive=False Then
		        pp.Show=True
		      end
		      if UBound(pp.Points)<>gOpt.Plan.Structure_Dose(k).DVH.DVH_bins-1 Then
		        ReDim pp.Points(gOpt.Plan.Structure_Dose(k).DVH.DVH_bins-1)
		      end
		      for i=0 to gOpt.Plan.Structure_Dose(k).DVH.DVH_bins-1   //n bins
		        if pp.Points(i)= nil Then
		          pp.Points(i)= new Class_Points
		        end
		        pxy=pp.Points(i)
		        pxy.X_cm=gOpt.Plan.Structure_Dose(k).DVH.Normalize*gOpt.Plan.Structure_Dose(k).DVH.mindose+(gOpt.Plan.Structure_Dose(k).DVH.maxdose-gOpt.Plan.Structure_Dose(k).DVH.mindose)*(i+0.5)*gOpt.Plan.Structure_Dose(k).DVH.Normalize/gOpt.Plan.Structure_Dose(k).DVH.DVH_bins
		        pxy.Y_cm=gOpt.Plan.Structure_Dose(k).DVH.DVH(i)
		      next
		      //here do cummulative if required.
		      if CumuRadioButton.Value then
		        for i=UBound(pp.Points)-1 DownTo 0
		          pp.Points(i).Y_cm=pp.Points(i).Y_cm+pp.Points(i+1).Y_cm
		        next
		      end
		    else
		      pp.Show=False
		    end
		  next
		  
		  DVHGraph.Default_Settings
		  DVHGraph.Refresh
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FLEC_Beam_different(a as rtog_Beam_Geometry) As boolean
		  Dim i as Integer
		  Dim bb as RTOG_Beam_Geometry
		  
		  
		  for i=0 to UBound(gRTOG.Plan(Plan_Index).Beam)
		    bb=gRTOG.Plan(Plan_Index).Beam(i)
		    
		    if bb.RT_name=a.RT_name and _
		      bb.Beam_Energy=a.Beam_Energy and _
		      bb.FLEC.x1=a.FLEC.x1 and _
		      bb.FLEC.x2=a.FLEC.x2 and _
		      bb.FLEC.y1=a.FLEC.y1 and _
		      bb.FLEC.y2=a.FLEC.y2 and _
		      bb.Collimator.Fields(0).Gantry_Angle=a.Collimator.Fields(0).Gantry_Angle  and _
		      bb.Collimator.Fields(0).Collimator_Angle=a.Collimator.Fields(0).Collimator_Angle and _
		      bb.Collimator.Fields(0).isocenter.x=a.Collimator.Fields(0).isocenter.x and _
		      bb.Collimator.Fields(0).isocenter.y=a.Collimator.Fields(0).isocenter.y and _
		      bb.Collimator.Fields(0).isocenter.z=a.Collimator.Fields(0).isocenter.z  then
		      Return False
		    end
		  next
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Get_Energy(estring as integer, bvalue as Boolean)
		  Dim i , ieng as Integer
		  Dim gg as Boolean
		  Dim eng as String
		  
		  
		  gg=bvalue
		  gOpt.Num_Fields=0
		  
		  
		  for i =0 to UBound(gopt.IPbeams)
		    if gOpt.IPbeams(i).FldID<>1 Then
		      if gOpt.IPbeams(i).RTOG_Plan>-1 and gOpt.IPbeams(i).RTOG_Plan<= UBound(gRTOG.Plan) Then
		        if gOpt.IPbeams(i).RTOG_Beam>-1 and gOpt.IPbeams(i).RTOG_Beam<= UBound(gRTOG.Plan(gOpt.IPbeams(i).RTOG_Plan).beam) Then
		          eng=gRTOG.Plan(gOpt.IPbeams(i).RTOG_Plan).Beam(gOpt.IPbeams(i).RTOG_Beam).beam_energy
		          ieng=Val(eng)
		          if ieng=estring Then
		            if gRTOG.Plan(gOpt.IPbeams(i).RTOG_Plan).Beam(gOpt.IPbeams(i).RTOG_Beam).beam_mode="Electron" or _
		              gRTOG.Plan(gOpt.IPbeams(i).RTOG_Plan).Beam(gOpt.IPbeams(i).RTOG_Beam).beam_mode="FLEC"  Then
		              gopt.IPbeams(i).Use=gg
		            end
		          end
		        end
		      end
		    end
		  next
		  
		  for i=0 to UBound(gopt.IPbeams)
		    if gopt.IPbeams(i).Use Then
		      gOpt.Num_Fields=gOpt.Num_Fields+gopt.IPbeams(i).NumofRay
		      gOpt.IPbeams(i).PB_Index=gOpt.Num_Fields
		    else
		      gOpt.IPbeams(i).PB_Index=-1
		    end
		  next
		  
		  
		  
		  gopt.Write_Fields
		  Update_PB_Use
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Get_Energy_Photon(estring as integer, bvalue as Boolean)
		  Dim i , ieng as Integer
		  Dim gg as Boolean
		  Dim eng as String
		  
		  
		  gg=bvalue
		  gOpt.Num_Fields=0
		  
		  
		  for i =0 to UBound(gopt.IPbeams)
		    if gOpt.IPbeams(i).FldID<>1 Then
		      if gOpt.IPbeams(i).RTOG_Plan>-1 and gOpt.IPbeams(i).RTOG_Plan<= UBound(gRTOG.Plan) Then
		        if gOpt.IPbeams(i).RTOG_Beam>-1 and gOpt.IPbeams(i).RTOG_Beam<= UBound(gRTOG.Plan(gOpt.IPbeams(i).RTOG_Plan).beam) Then
		          eng=gRTOG.Plan(gOpt.IPbeams(i).RTOG_Plan).Beam(gOpt.IPbeams(i).RTOG_Beam).beam_energy
		          ieng=Val(eng)
		          if ieng=estring Then
		            if gRTOG.Plan(gOpt.IPbeams(i).RTOG_Plan).Beam(gOpt.IPbeams(i).RTOG_Beam).beam_mode="Photon" Then
		              gopt.IPbeams(i).Use=gg
		            end
		          end
		        end
		      end
		    end
		  next
		  
		  for i=0 to UBound(gopt.IPbeams)
		    if gopt.IPbeams(i).Use Then
		      gOpt.Num_Fields=gOpt.Num_Fields+gopt.IPbeams(i).NumofRay
		      gOpt.IPbeams(i).PB_Index=gOpt.Num_Fields
		    else
		      gOpt.IPbeams(i).PB_Index=-1
		    end
		  next
		  
		  
		  
		  gopt.Write_Fields
		  Update_PB_Use
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Map_Make()
		  //--------------------------------------------
		  //
		  //
		  //
		  //--------------------------------------------
		  Dim i,x1,x2,y1,y2,cc,newcc,k,v,ppw,pph as Integer
		  Dim total_MU_SA,total_SAJaw,total_SA,total_MU_Grad,total_Grad_W,scale_w,scale_h,eng,total_NLO as Single
		  DIm newc as Color
		  Dim tmpsurf_grad, tmpsurf_sa as RGBSurface
		  Dim pp as Picture
		  Dim nn as Boolean
		  //--------------------------------------------
		  
		  
		  
		  Map_Grad= New Picture(Canvas_Map_Grad.Width,Canvas_Map_Grad.Height,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		  
		  scale_w=15/Map_Grad.Width
		  scale_h=15/Map_Grad.Height
		  
		  if scale_w>scale_h Then
		    scale_h=scale_w
		  else
		    scale_w=scale_h
		  end
		  
		  Map_Grad.Graphics.ForeColor=rgb(255,255,255)
		  Map_Grad.Graphics.FillRect(0,0,Map_Grad.Width,Map_Grad.Height)
		  tmpsurf_grad=Map_Grad.rgBSurface
		  
		  total_SAJaw=0
		  total_SA=0
		  total_MU_SA=0
		  total_Grad_W=0
		  total_MU_Grad=0
		  total_NLO=0
		  
		  
		  for i=0 to UBound(gopt.IPbeams)
		    if gopt.IPbeams(i).Use Then
		      if (CheckBox_BeamFilter_Description.Value and gopt.IPbeams(i).Beam_Description=PopupMenu_Filter_Description.Text) or CheckBox_BeamFilter_Description.Value=False  then
		        if (CheckBox_BeamFilter_Energy.Value and gopt.IPbeams(i).Energy=PopupMenu_Filter_Energy.Text) or   CheckBox_BeamFilter_Energy.Value=False then
		           if (CheckBox_BeamFilter_Gantry.Value and Format(gopt.IPbeams(i).Gantry_Angle,"-#.##")=PopupMenu_Filter_Gantry.Text) or  CheckBox_BeamFilter_Gantry.Value=False then
		            if (CheckBox_BeamFilter_Mode.Value and gopt.IPbeams(i).Mode=PopupMenu_Filter_Mode.Text) or  CheckBox_BeamFilter_Mode.Value=False   Then
		              if (CheckBox_BeamFilter_Isocenter.Value and Format(gopt.IPbeams(i).Iso_X,"-#.##")+", "+Format(gopt.IPbeams(i).Iso_y,"-#.##")+", "+Format(gopt.IPbeams(i).Iso_z,"-#.##")=PopupMenu_Filter_Iso.Text) or  CheckBox_BeamFilter_Isocenter.Value=False Then
		                total_MU_Grad=total_MU_Grad+gopt.IPbeams(i).MUs_Grad
		                total_MU_SA=total_MU_SA+gopt.IPbeams(i).MUs_SA
		                total_SA=total_SA+gopt.IPbeams(i).Weight_SA
		                total_Grad_W=total_Grad_W+gopt.IPbeams(i).Weight_Grad
		                total_SAJaw=total_SAJaw+gopt.IPbeams(i).Weight_JAW
		                total_NLO=total_NLO+gopt.IPbeams(i).Weight_NLO
		                
		              end
		            end
		          end
		        end
		      end
		    end
		  next
		  
		  
		  // For Map
		  for i=0 to UBound(gopt.IPbeams)
		    if gopt.IPbeams(i).Use Then 
		      if (CheckBox_BeamFilter_Description.Value and gopt.IPbeams(i).Beam_Description=PopupMenu_Filter_Description.Text) or CheckBox_BeamFilter_Description.Value=False  then
		        if (CheckBox_BeamFilter_Energy.Value and gopt.IPbeams(i).Energy=PopupMenu_Filter_Energy.Text) or   CheckBox_BeamFilter_Energy.Value=False then
		          if (CheckBox_BeamFilter_Gantry.Value and Format(gopt.IPbeams(i).Gantry_Angle,"-#.##")=PopupMenu_Filter_Gantry.Text) or  CheckBox_BeamFilter_Gantry.Value=False then
		            if (CheckBox_BeamFilter_Mode.Value and gopt.IPbeams(i).Mode=PopupMenu_Filter_Mode.Text) or  CheckBox_BeamFilter_Mode.Value=False   Then
		              if (CheckBox_BeamFilter_Isocenter.Value and Format(gopt.IPbeams(i).Iso_X,"-#.##")+", "+Format(gopt.IPbeams(i).Iso_y,"-#.##")+", "+Format(gopt.IPbeams(i).Iso_z,"-#.##")=PopupMenu_Filter_Iso.Text) or  CheckBox_BeamFilter_Isocenter.Value=False Then
		                
		                if RadioButton_Map_Grad_W.Value Then
		                  cc=Round(255*gopt.IPbeams(i).Weight_Grad/total_Grad_W)
		                elseif  RadioButton_MAP_Grad_MU.Value Then
		                  cc=Round(255*gopt.IPbeams(i).MUs_Grad/total_MU_Grad)
		                elseif  RadioButton_MAP_SAJAW_W.Value Then
		                  cc=Round(255*gopt.IPbeams(i).Weight_JAW/total_SAJaw)
		                elseif  RadioButton_MAP_SA_W.Value Then
		                  cc=Round(255*gopt.IPbeams(i).Weight_SA/total_SA)
		                elseif  RadioButton_MAP_SA_MU.Value Then
		                  cc=Round(255*gopt.IPbeams(i).MUs_SA/total_MU_SA)
		                elseif  RadioButton_MAP_NLO.Value Then
		                  cc=Round(255*gopt.IPbeams(i).Weight_NLO/total_NLO)
		                end
		                
		                newc=RGB(cc,cc,cc)
		                x1=-gopt.IPbeams(i).X1/scale_w+Map_Grad.Width/2
		                x2=gopt.IPbeams(i).X2/scale_w+Map_Grad.Width/2
		                y1=gopt.IPbeams(i).y1/scale_h+Map_Grad.Height/2
		                y2=-gopt.IPbeams(i).y2/scale_h+Map_Grad.Height/2
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
		              end
		            end
		          end
		        end
		      end
		    end
		  next
		  Canvas_Map_Grad.Refresh
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Fluence_BeamDis()
		  Dim i, ieng as Integer
		  Dim eng as String
		  Dim ff as Boolean
		  
		  PopupMenu_BeamDis.DeleteAllRows
		  
		  for i =0 to UBound(gopt.IPbeams)
		    if gopt.IPbeams(i).FldID<>1 Then
		      if gopt.IPbeams(i).RTOG_Plan>-1 and gopt.IPbeams(i).RTOG_Plan<= UBound(gRTOG.Plan) Then
		        if gopt.IPbeams(i).RTOG_Beam>-1 and gopt.IPbeams(i).RTOG_Beam<= UBound(gRTOG.Plan(gopt.IPbeams(i).RTOG_Plan).beam) Then
		          eng=gRTOG.Plan(gopt.IPbeams(i).RTOG_Plan).Beam(gopt.IPbeams(i).RTOG_Beam).beam_description
		          ff=False
		          for ieng=0 to PopupMenu_BeamDis.ListCount-1
		            if eng=PopupMenu_BeamDis.List(ieng) Then
		              ff=True
		            end
		          next
		          if ff=False Then
		            PopupMenu_BeamDis.AddRow eng
		          end
		        end
		      end
		    end
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_GradDVH_Status()
		  if gOpt.Grad.Running Then
		    Listbox_GradDVH_Status.Cell(0,1)="Running"
		  else
		    Listbox_GradDVH_Status.Cell(0,1)="Stopped"
		  end
		  
		  Listbox_GradDVH_Status.Cell(1,1)=gOpt.Grad.Submit_Date
		  Listbox_GradDVH_Status.Cell(2,1)=gOpt.Grad.Time
		  Listbox_GradDVH_Status.Cell(3,1)=Format(gOpt.Grad.Score,"0.000000e")
		  Listbox_GradDVH_Status.Cell(4,1)=Format(gOpt.Grad.Score_Inti,"0.000000e")
		  Listbox_GradDVH_Status.Cell(5,1)=Format(gOpt.Grad.Score_Previous,"0.000000e")
		  Listbox_GradDVH_Status.Cell(6,1)=str(gOpt.Grad.dvh_bin)
		  Listbox_GradDVH_Status.Cell(7,1)=Format(gOpt.Grad.Iterations,"#")
		  Listbox_GradDVH_Status.Cell(8,1)=str(gOpt.Grad.stepsize)
		  Listbox_GradDVH_Status.Cell(9,1)=str(gOpt.Grad.Grow)
		  Listbox_GradDVH_Status.Cell(10,1)=str(gOpt.Grad.Shrink)
		  Listbox_GradDVH_Status.Cell(11,1)=str(gOpt.Grad.Min_W)
		  Listbox_GradDVH_Status.Cell(12,1)=str(gOpt.Grad.Max_W)
		  Listbox_GradDVH_Status.CellCheck(13,0)=gOpt.Grad.NormDD
		  Listbox_GradDVH_Status.CellCheck(14,0)=gOpt.Grad.WriteDose
		  Listbox_GradDVH_Status.Cell(14,1)=gOpt.Grad.DoseOutputName
		  Window_EMET_Run.EditField_Grad_Weight_Value.Text=str(gOpt.Grad.Init_Weight)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Listbox_BEAMS()
		  //---------------------------------------------
		  // Update the BEAM listbox for new values
		  //
		  //---------------------------------------------
		  Dim i,j,k as Integer
		  Dim temp,temp2,w_b,sa_w,w_mu,w_b2 as String
		  //---------------------------------------------
		  
		  Listbox_DOSE.DeleteAllRows
		  
		  
		  if CheckBox_Hide_BeamInfo2.Value Then
		    w_b2="0%,"
		  else
		    w_b2="10%,"
		  end
		  
		  if CheckBox_Hide_BeamInfo.Value Then
		    w_b="0%,"
		  else
		    w_b="10%,"
		  end
		  
		  if CheckBox_Hide_SA_JAW_W.Value Then
		    sa_w="0%,"
		  else
		    sa_w="10%,"
		  end
		  
		  if CheckBox_Hide_MU.Value Then
		    w_mu="0%,"
		  else
		    w_mu="10%,"
		  end
		  
		  j =(UBound(gOpt.Plan.Structure_Dose)+1)
		  Listbox_DOSE.ColumnCount=20+j
		  for i=1 to j
		    if ((gOpt.Plan.Structure_Dose(i-1).Use_DV_Constraint or (gOpt.Plan.Structure_Dose(i-1).Use_DV_Constraint=False and gOpt.Plan.Structure_Dose(i-1).Use_Min_Dose=False)) and CheckBox_Hide_OAR.Value) Then
		      temp2=temp2+",0%"
		    else 
		      temp2=temp2+",20%"
		    end
		  Next
		  temp="10%,30%,10%,"+w_mu+sa_w+w_mu+sa_w+w_mu+w_b2+w_b+w_b2+"0%,0%,"+w_b+w_b+w_b+w_b+w_b+w_b2+sa_w
		  temp=Temp+temp2
		  temp=Replace(temp,",,",",")
		  Listbox_DOSE.columnwidths=Temp+temp2
		  
		  
		  
		  j=-1
		  for i=0 to UBound(gopt.IPbeams)
		    if ((CheckBox_Hide_Zero.Value and gopt.IPbeams(i).Weight_Grad>0 and gopt.IPbeams(i).Use) or CheckBox_Hide_Zero.Value=false) and _
		      ((CheckBox_Hide_Unselected.Value and gopt.IPbeams(i).Use) or CheckBox_Hide_Unselected.Value=false) Then
		      Listbox_DOSE.AddRow ""
		      j=j+1
		      
		      if i>-1 and i<=UBound(gOpt.IPbeams) and j>=0 and j<=Listbox_DOSE.ListCount Then
		        Listbox_DOSE.Cell(j,1)=gOpt.IPbeams(i).FIdID_Name 
		        
		        Listbox_DOSE.Cell(j,2)=Format(gopt.IPbeams(i).Weight_Grad,"#.#####")
		        Listbox_DOSE.Cell(j,3)=Format(gopt.IPbeams(i).MUs_Grad,"-#")
		        
		        Listbox_DOSE.Cell(j,4)=Format(gopt.IPbeams(i).Weight_SA,"#.#####")
		        Listbox_DOSE.Cell(j,5)=Format(gopt.IPbeams(i).MUs_SA,"-#")
		        
		        Listbox_DOSE.Cell(j,6)=Format(gopt.IPbeams(i).Weight_JAW,"#.#####")
		        Listbox_DOSE.Cell(j,7)=Format(gopt.IPbeams(i).MUs_Jaw,"-#")
		        
		        Listbox_DOSE.Cell(j,19)=Format(gopt.IPbeams(i).Weight_NLO,"#.#####")
		        
		        // Energy
		        Listbox_DOSE.Cell(j,8)=gOpt.ipbeams(i).energy
		        
		        //Opening 
		        Listbox_DOSE.Cell(j,9)=Format(gopt.IPbeams(i).x1,"-#.##")+", "+Format(gopt.IPbeams(i).x2,"-#.##")+", "+Format(gopt.IPbeams(i).y1,"-#.##")+", "+Format(gopt.IPbeams(i).y2,"-#.##")
		        
		        Listbox_DOSE.Cell(j,10)=Format(gopt.IPbeams(i).Norm_Value,"-#.##e")
		        
		        Listbox_DOSE.CellType(j,1)=2
		        if gopt.IPbeams(i).Use Then
		          Listbox_DOSE.CellCheck(j,1)=True
		          Listbox_DOSE.Cell(j,0)=Format(gopt.IPbeams(i).PB_Index,"-0000")
		        end
		        
		        // Pencil beam index Number
		        Listbox_DOSE.cell(j,11)=str(gopt.IPbeams(i).PB_Index)
		        
		        // Place the opt.Beam Index
		        Listbox_DOSE.cell(j,12)=str(i)
		        Listbox_DOSE.Cell(j,13)=Format(gopt.IPbeams(i).RTOG_Beam,"-0000")
		        Listbox_DOSE.Cell(j,14)=Format(gopt.IPbeams(i).Gantry_Angle,"-#.##")
		        Listbox_DOSE.Cell(j,15)=Format(gopt.IPbeams(i).Iso_X,"-#.##")
		        Listbox_DOSE.Cell(j,16)=Format(gopt.IPbeams(i).Iso_Y,"-#.##")
		        Listbox_DOSE.Cell(j,17)=Format(gopt.IPbeams(i).Iso_z,"-#.##")
		        Listbox_DOSE.Cell(j,18)=gopt.IPbeams(i).Mode
		        
		        // Update dose volume stats for each ROI and Target volume
		        for k=0 to UBound(gOpt.IPbeams(i).VolumeStats)
		          Listbox_DOSE.Cell(j,20+k)=Format(gopt.IPbeams(i).VolumeStats(k).minDose,"-#.##")+", "+Format(gopt.IPbeams(i).VolumeStats(k).maxDose,"-#.##")+", "+Format(gopt.IPbeams(i).VolumeStats(k).AvgDose,"-#.##")
		        Next
		      end
		    end
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Listbox_Results()
		  //--------------------------
		  // Update the score summary of the runs
		  //--------------------------
		  Dim rrindex,i,k,n as Integer
		  Dim lines(-1),ssvalue ,key,current,temp as String
		  Dim targetdose(-1) as Single 
		  Dim d as Dictionary
		  //--------------------------
		  
		  
		  Listbox_Score.ColumnCount=6
		  Listbox_Score.Heading(0)="Organ"
		  Listbox_Score.Heading(1)="Parameters"
		  Listbox_Score.Heading(2)="GradDVH Value"
		  Listbox_Score.Heading(3)="SADVH Value"
		  Listbox_Score.Heading(4)="NLO Value"
		  Listbox_Score.Heading(5)="DJAW Value"
		  Listbox_Score.DeleteAllRows
		  
		  if gOpt.Grad.GradOArray=nil or gOpt.SA.SAOArray=nil or gOpt.NLO.s=nil or gOpt.JAW.S=nil  Then
		    Return
		  end
		  
		  rrindex=-1
		  
		  
		  rrindex=rrindex+1
		  // Current score
		  Listbox_Score.AddRow "Total Score"
		  Listbox_Score.Cell(rrindex,2)=Format(gOpt.Grad.Score,"-#.###e")
		  Listbox_Score.Cell(rrindex,3)=Format(gOpt.SA.Score,"-#.###e")
		  Listbox_Score.Cell(rrindex,4)=Format(gOpt.NLO.Score,"-#.###e")
		  Listbox_Score.Cell(rrindex,5)=Format(gOpt.JAW.Score,"-#.###e")
		  
		  
		  
		  for i=0 to UBound(gOpt.Plan.Structure_Dose)
		    d=new Dictionary
		    // For min dose
		    if (gOpt.Grad.GradOArray.organ(i).Use_Min_Dose and gOpt.Grad.GradOArray.organ(i).Use_DV_Constraint=False) Then
		      targetdose.Append gOpt.Grad.GradOArray.organ(i).MinDose
		      key=Format(gOpt.Grad.GradOArray.organ(i).MinDose,"-#.###")
		      d.Value(key)="GR"+Format(gOpt.Grad.GradOArray.organ(i).ActualMinDose,"-#.###")+","+Format(gOpt.Grad.GradOArray.organ(i).ActualMinDoseScore,"-#.###")+" "+Format(100*gOpt.Grad.GradOArray.organ(i).ActualMinDoseScore/gOpt.Grad.Score,"-#.#")+"%"+"GR"
		    end
		    
		    if i<=UBound(gOpt.sa.SAOArray.organ) Then
		      if (gOpt.SA.SAOArray.organ(i).Use_Min_Dose and gOpt.SA.SAOArray.organ(i).Use_DV_Constraint=False) Then
		        targetdose.Append gOpt.SA.SAOArray.organ(i).MinDose
		        ssvalue="SA"+Format(gOpt.SA.SAOArray.organ(i).ActualMinDose,"-#.###")+","+Format(gOpt.SA.SAOArray.organ(i).ActualMinDoseScore,"-#.###")+" "+Format(100*gOpt.SA.SAOArray.organ(i).ActualMinDoseScore/gOpt.SA.Score,"-#.#")+"%"+"SA"
		        key=Format(gOpt.Grad.GradOArray.organ(i).MinDose,"-#.###")
		        If d.HasKey(key) then
		          current=d.Value(key)
		          d.Value(key)=current+ssvalue
		        Else
		          d.Value(key)=ssvalue
		        End If
		      end
		    end
		    
		    if (gOpt.NLO.S.organ(i).Use_Min_Dose and gOpt.NLO.S.organ(i).Use_DV_Constraint=False) Then
		      targetdose.Append gOpt.NLO.S.organ(i).MinDose
		      ssvalue="NL"+Format(gOpt.NLO.S.organ(i).ActualMinDose,"-#.###")+","+Format(gOpt.NLO.S.organ(i).ActualMinDoseScore,"-#.###")+ " "+Format(100*gOpt.NLO.S.organ(i).ActualMinDoseScore/gOpt.NLO.Score,"#.#")+"%"+"NL"
		      key=Format(gOpt.NLO.S.organ(i).MinDose,"-#.###")
		      If d.HasKey(key) then
		        current=d.Value(key)
		        d.Value(key)=current+ssvalue
		      Else
		        d.Value(key)=ssvalue
		      End If
		    end
		    
		    
		    if (gOpt.JAW.S.organ(i).Use_Min_Dose and gOpt.JAW.s.organ(i).Use_DV_Constraint=False) Then
		      targetdose.Append gOpt.JAW.S.organ(i).MinDose
		      ssvalue="DJ"+Format(gOpt.jaw.S.organ(i).ActualMinDose,"-#.###")+","+Format(gOpt.JAW.S.organ(i).ActualMinDoseScore,"-#.###")+" "+Format(100*gOpt.JAW.S.organ(i).ActualMinDoseScore/gOpt.JAW.Score,"-#.###")+"%DJ"
		      key=Format(gOpt.jaw.S.organ(i).MinDose,"-#.###")
		      If d.HasKey(key) then
		        current=d.Value(key)
		        d.Value(key)=current+ssvalue
		      Else
		        d.Value(key)=ssvalue
		      End If
		    end
		    
		    
		    if d.Count>0 Then
		      
		      // Add min target dose for the cases
		      for k=0 to d.Count-1
		        key=d.Key(k)
		        ssvalue=d.Value(Key)
		        
		        rrindex=rrindex+1
		        Listbox_Score.AddRow gRTOG.Structures(i).Structure_Name
		        Listbox_Score.Cell(rrindex,1)="Wanted minimum dose"
		        
		        rrindex=rrindex+1
		        Listbox_Score.AddRow gRTOG.Structures(i).Structure_Name
		        Listbox_Score.Cell(rrindex,1)="Actual minimum dose"
		        
		        rrindex=rrindex+1
		        Listbox_Score.AddRow gRTOG.Structures(i).Structure_Name
		        Listbox_Score.Cell(rrindex,1)="Minimum dose score"
		        
		        
		        if InStr(ssvalue,"GR")>0 Then
		          temp=NthField(ssvalue,"GR",2)
		          Listbox_Score.Cell(rrindex-2,2)=d.Key(k)
		          Listbox_Score.Cell(rrindex-1,2)=NthField(temp,",",1)
		          Listbox_Score.Cell(rrindex,2)=NthField(temp,",",2)
		        end
		        if InStr(ssvalue,"SA")>0 Then
		          temp=NthField(ssvalue,"SA",2)
		          Listbox_Score.Cell(rrindex-2,3)=d.Key(k)
		          Listbox_Score.Cell(rrindex-1,3)=NthField(temp,",",1)
		          Listbox_Score.Cell(rrindex,3)=NthField(temp,",",2)
		        end
		        if InStr(ssvalue,"NL")>0 Then
		          temp=NthField(ssvalue,"NL",2)
		          Listbox_Score.Cell(rrindex-2,4)=d.Key(k)
		          Listbox_Score.Cell(rrindex-1,4)=NthField(temp,",",1)
		          Listbox_Score.Cell(rrindex,4)=NthField(temp,",",2)
		        end
		        if InStr(ssvalue,"DJ")>0 Then
		          temp=NthField(ssvalue,"DJ",2)
		          Listbox_Score.Cell(rrindex-2,5)=d.Key(k)
		          Listbox_Score.Cell(rrindex-1,5)=NthField(temp,",",1)
		          Listbox_Score.Cell(rrindex,5)=NthField(temp,",",2)
		          
		        end
		        
		        
		        
		      Next
		    end
		    
		    
		    
		    d=new Dictionary
		    // For max dose
		    if gOpt.Grad.GradOArray.organ(i).Use_Max_Dose  Then
		      key=Format(gOpt.Grad.GradOArray.organ(i).MaxDose,"-#.###")
		      d.Value(key)="GR"+Format(gOpt.Grad.GradOArray.organ(i).ActualMaxDose,"-#.###")+","+Format(gOpt.Grad.GradOArray.organ(i).ActualMaxDoseScore,"-#.###")+" "+Format(100*gOpt.Grad.GradOArray.organ(i).ActualMaxDoseScore/gOpt.Grad.Score,"-#.###")+"%GR"
		    end
		    if gOpt.SA.SAOArray.organ(i).Use_Max_Dose Then
		      ssvalue="SA"+Format(gOpt.SA.SAOArray.organ(i).ActualMaxDose,"-#.###")+","+Format(gOpt.SA.SAOArray.organ(i).ActualMaxDoseScore,"-#.###")+" "+Format(100*gOpt.SA.SAOArray.organ(i).ActualMaxDoseScore/gOpt.SA.Score,"-#.#")+"%SA"
		      key=Format(gOpt.Grad.GradOArray.organ(i).MaxDose,"-#.###")
		      If d.HasKey(key) then
		        current=d.Value(key)
		        d.Value(key)=current+ssvalue
		      Else
		        d.Value(key)=ssvalue
		      End If
		    end
		    
		    if gOpt.NLO.S.organ(i).Use_Max_Dose Then
		      ssvalue="NL"+Format(gOpt.NLO.S.organ(i).ActualMaxDose,"-#.###")+","+Format(gOpt.NLO.S.organ(i).ActualMaxDoseScore,"-#.###")+" "+Format(100*gOpt.NLO.S.organ(i).ActualMaxDoseScore/gOpt.NLO.Score,"-#.#")+"%NL"
		      key=Format(gOpt.NLO.S.organ(i).MaxDose,"-#.###")
		      If d.HasKey(key) then
		        current=d.Value(key)
		        d.Value(key)=current+ssvalue
		      Else
		        d.Value(key)=ssvalue
		      End If
		    end
		    
		    
		    if gOpt.JAW.S.organ(i).Use_Max_Dose Then
		      ssvalue="DJ"+Format(gOpt.jaw.S.organ(i).ActualMaxDose,"-#.###")+","+Format(gOpt.JAW.S.organ(i).ActualMaxDoseScore,"-#.###")+" "+Format(100*gOpt.JAW.S.organ(i).ActualMaxDoseScore/gOpt.JAW.Score,"-#.#")+"%DJ"
		      key=Format(gOpt.jaw.S.organ(i).MaxDose,"-#.###")
		      If d.HasKey(key) then
		        current=d.Value(key)
		        d.Value(key)=current+ssvalue
		      Else
		        d.Value(key)=ssvalue
		      End If
		    end
		    
		    
		    if d.Count>0 Then
		      // Add max target dose for the cases
		      for k=0 to d.Count-1
		        key=d.Key(k)
		        ssvalue=d.Value(Key)
		        
		        rrindex=rrindex+1
		        Listbox_Score.AddRow gRTOG.Structures(i).Structure_Name
		        Listbox_Score.Cell(rrindex,1)="Wanted maximum dose"
		        
		        rrindex=rrindex+1
		        Listbox_Score.AddRow gRTOG.Structures(i).Structure_Name
		        Listbox_Score.Cell(rrindex,1)="Actual maximum dose"
		        
		        rrindex=rrindex+1
		        Listbox_Score.AddRow gRTOG.Structures(i).Structure_Name
		        Listbox_Score.Cell(rrindex,1)="Maximum dose score"
		        
		        
		        if InStr(ssvalue,"GR")>0 Then
		          temp=NthField(ssvalue,"GR",2)
		          Listbox_Score.Cell(rrindex-2,2)=d.Key(k)
		          Listbox_Score.Cell(rrindex-1,2)=NthField(temp,",",1)
		          Listbox_Score.Cell(rrindex,2)=NthField(temp,",",2)
		        end
		        if InStr(ssvalue,"SA")>0 Then
		          temp=NthField(ssvalue,"SA",2)
		          Listbox_Score.Cell(rrindex-2,3)=d.Key(k)
		          Listbox_Score.Cell(rrindex-1,3)=NthField(temp,",",1)
		          Listbox_Score.Cell(rrindex,3)=NthField(temp,",",2)
		        end
		        if InStr(ssvalue,"NL")>0 Then
		          temp=NthField(ssvalue,"NL",2)
		          Listbox_Score.Cell(rrindex-2,4)=d.Key(k)
		          Listbox_Score.Cell(rrindex-1,4)=NthField(temp,",",1)
		          Listbox_Score.Cell(rrindex,4)=NthField(temp,",",2)
		        end
		        if InStr(ssvalue,"DJ")>0 Then
		          temp=NthField(ssvalue,"DJ",2)
		          Listbox_Score.Cell(rrindex-2,5)=d.Key(k)
		          Listbox_Score.Cell(rrindex-1,5)=NthField(temp,",",1)
		          Listbox_Score.Cell(rrindex,5)=NthField(temp,",",2)
		          
		        end
		        
		        
		        
		      Next
		    end
		    
		    
		    // For DV constraint dose
		    d=new Dictionary
		    if gOpt.Grad.GradOArray.organ(i).Use_DV_Constraint Then
		      for n=0 to UBound(gOpt.Grad.GradOArray.organ(i).Constraints)
		        key="D"+Format(gOpt.Grad.GradOArray.organ(i).Constraints(n).dose,"-#.###")+"V<"+Format(gOpt.Grad.GradOArray.organ(i).Constraints(n).volume,"-#.###")
		        d.Value(key)="GR"+Format(gOpt.Grad.GradOArray.organ(i).Constraints(n).ActualScore,"-#.###")+" "+Format(100*gOpt.Grad.GradOArray.organ(i).Constraints(n).ActualScore/gOpt.Grad.Score,"-#.#")+"%GR"
		      Next
		      
		    end
		    if gOpt.SA.SAOArray.organ(i).Use_DV_Constraint Then
		      for n=0 to UBound(gOpt.SA.SAOArray.organ(i).Constraints)
		        key="D"+Format(gOpt.SA.SAOArray.organ(i).Constraints(n).dose,"-#.###")+"V<"+Format(gOpt.SA.SAOArray.organ(i).Constraints(n).volume,"-#.###")
		        ssvalue="SA"+Format(gOpt.SA.SAOArray.organ(i).Constraints(n).ActualScore,"-#.###")+" "+Format(100*gOpt.SA.SAOArray.organ(i).Constraints(n).ActualScore/gOpt.SA.Score,"#.#")+"%"+"SA"
		        If d.HasKey(key) then
		          current=d.Value(key)
		          d.Value(key)=current+ssvalue
		        Else
		          d.Value(key)=ssvalue
		        End If
		      Next
		    end
		    
		    if gOpt.NLO.S.organ(i).Use_DV_Constraint Then
		      for n=0 to UBound(gOpt.NLO.S.organ(i).Constraints)
		        key="D"+Format(gOpt.NLO.S.organ(i).Constraints(n).dose,"-#.###")+"V<"+Format(gOpt.NLO.S.organ(i).Constraints(n).volume,"-#.###")
		        ssvalue="NL"+Format(gOpt.NLO.S.organ(i).Constraints(n).ActualScore,"-#.###")+" "+Format(100*gOpt.NLO.S.organ(i).Constraints(n).ActualScore/gOpt.NLO.Score,"-#.#")+"%NL"
		        If d.HasKey(key) then
		          current=d.Value(key)
		          d.Value(key)=current+ssvalue
		        Else
		          d.Value(key)=ssvalue
		        End If
		      Next
		    end
		    
		    
		    if gOpt.JAW.S.organ(i).Use_DV_Constraint Then
		      for n=0 to UBound(gOpt.JAW.S.organ(i).Constraints)
		        key="D"+Format(gOpt.JAW.S.organ(i).Constraints(n).dose,"-#.###")+"V<"+Format(gOpt.JAW.S.organ(i).Constraints(n).volume,"-#.###")
		        ssvalue="DJ"+Format(gOpt.JAW.S.organ(i).Constraints(n).ActualScore,"-#.###")+" "+Format(gOpt.JAW.S.organ(i).Constraints(n).ActualScore*100/gOpt.JAW.Score,"-#.#")+"%DJ"
		        If d.HasKey(key) then
		          current=d.Value(key)
		          d.Value(key)=current+ssvalue
		        Else
		          d.Value(key)=ssvalue
		        End If
		      Next
		    end
		    
		    
		    if d.Count>0 Then
		      // Add DV for the cases
		      for k=0 to d.Count-1
		        key=d.Key(k)
		        ssvalue=d.Value(Key)
		        
		        rrindex=rrindex+1
		        Listbox_Score.AddRow gRTOG.Structures(i).Structure_Name
		        Listbox_Score.Cell(rrindex,1)="Dose"
		        
		        rrindex=rrindex+1
		        Listbox_Score.AddRow gRTOG.Structures(i).Structure_Name
		        Listbox_Score.Cell(rrindex,1)="Volume"
		        
		        rrindex=rrindex+1
		        Listbox_Score.AddRow gRTOG.Structures(i).Structure_Name
		        Listbox_Score.Cell(rrindex,1)="Actual score"
		        
		        
		        if InStr(ssvalue,"GR")>0 Then
		          temp=NthField(ssvalue,"GR",2)
		          Listbox_Score.Cell(rrindex-2,2)=NthField(NthField(d.Key(k),"D",2),"V",1)
		          Listbox_Score.Cell(rrindex-1,2)=NthField(d.Key(k),"<",2)
		          Listbox_Score.Cell(rrindex,2)=NthField(temp,",",1)
		        end
		        if InStr(ssvalue,"SA")>0 Then
		          temp=NthField(ssvalue,"SA",2)
		          Listbox_Score.Cell(rrindex-2,3)=NthField(NthField(d.Key(k),"D",2),"V",1)
		          Listbox_Score.Cell(rrindex-1,3)=NthField(d.Key(k),"<",2)
		          Listbox_Score.Cell(rrindex,3)=NthField(temp,",",1)
		        end
		        if InStr(ssvalue,"NL")>0 Then
		          temp=NthField(ssvalue,"NL",2)
		          Listbox_Score.Cell(rrindex-2,4)=NthField(NthField(d.Key(k),"D",2),"V",1)
		          Listbox_Score.Cell(rrindex-1,4)=NthField(d.Key(k),"<",2)
		          Listbox_Score.Cell(rrindex,4)=NthField(temp,",",1)
		        end
		        if InStr(ssvalue,"DJ")>0 Then
		          temp=NthField(ssvalue,"DJ",2)
		          Listbox_Score.Cell(rrindex-2,5)=NthField(NthField(d.Key(k),"D",2),"V",1)
		          Listbox_Score.Cell(rrindex-1,5)=NthField(d.Key(k),"<",2)
		          Listbox_Score.Cell(rrindex,5)=NthField(temp,",",1)
		        end
		      Next
		    end
		  Next // Loop for each Organ
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_NLO_Status()
		  
		  if gOpt.NLO.Running Then
		    Listbox_NLO_Status.Cell(0,1)="Running"
		  else
		    Listbox_NLO_Status.Cell(0,1)="Stopped"
		  end
		  
		  Listbox_NLO_Status.Cell(1,1)=gOpt.NLO.Submit_Date
		  Listbox_NLO_Status.Cell(2,1)=gOpt.NLO.Time
		  Listbox_NLO_Status.Cell(3,1)=Format(gOpt.NLO.Score,"0.000000e")
		  Listbox_NLO_Status.Cell(4,1)=Format(gOpt.NLO.Score_Initial,"0.000000e")
		  Listbox_NLO_Status.Cell(5,1)=Format(gOpt.NLO.Score_Previous,"0.000000e")
		  
		  Listbox_NLO_Status.Cell(6,1)=str(gOpt.NLO.dvh_bin)
		  Listbox_NLO_Status.Cell(7,1)=Format(gOpt.NLO.Iterations,"#")
		  Listbox_NLO_Status.Cell(8,1)=str(gOpt.NLO.Min_W)
		  Listbox_NLO_Status.Cell(9,1)=str(gOpt.NLO.Max_W)
		  Listbox_NLO_Status.CellCheck(10,0)=gOpt.NLO.NormDD
		  Listbox_NLO_Status.CellCheck(11,0)=gOpt.NLO.WriteDose
		  Listbox_NLO_Status.Cell(11,1)=gOpt.NLO.OutputName
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_PB_Use()
		  dim i as Integer
		  
		  gOpt.Num_Fields=0
		  for i=0 to UBound(gopt.IPbeams)
		    if gopt.IPbeams(i).Use Then
		      gOpt.Num_Fields=gOpt.Num_Fields+gopt.IPbeams(i).NumofRay
		      gOpt.IPbeams(i).PB_Index=gOpt.Num_Fields
		    else
		      gOpt.IPbeams(i).PB_Index=-1
		    end
		  next
		  gopt.Write_Fields
		  EditField_Num.Text=str(gopt.Num_Fields)
		  Update_Listbox_BEAMS
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Window_Open()
		  //-----------------------------------------------------------------
		  // Open Inverse planning window
		  //
		  //
		  //-----------------------------------------------------------------
		  Dim i,k,dmx_index,egsphant_index,q,beam_val,j as Integer
		  Dim pp as Class_Profile_One
		  Dim rand as Random
		  Dim pxy as Class_Points
		  Dim f as FolderItem
		  Dim temp,temp2 as String
		  Dim found as Boolean
		  //----------------------------------------------------------------
		  
		  app.which_window_EMET_Run=True
		  rand= new Random
		  
		  me.Title=gRTOG.Patient_Name+" "+gRTOG.Patient_Surname+" MERT Inverse Optimization Window : "+gRTOG.Plan(Open_Plan_Index).Plan_Name
		  DVHGraph.ReCal = new Thread_EMET_Canvas
		  DVHGraph.Profiles=new Class_Profiles_All
		  
		  
		  //--------------------Setup DVHs
		  PopupMenu_DVH.deleteAllRows
		  PopupMenu_DVH.addRow "ALL"
		  for i=0 to UBound(gRTOG.Structures)
		    PopupMenu_DVH.addRow gRTOG.Structures(i).Structure_Name
		    pp= new Class_Profile_One
		    pp.Symbol=rand.InRange(1,6)
		    for k=0 to gopt.Plan.Structure_Dose(i).DVH.dVH_bins  //n bins
		      pxy=new Class_Points
		      pxy.X_cm=0
		      pxy.Y_cm=0
		      pp.Points.Append pxy
		    next
		    pp.Point_Size=3
		    pp.show_Line=True
		    pp.Colour=gRTOG.Structures(i).scolor
		    DVHGraph.Profiles.One_Profile.Append pp
		  next
		  PopupMenu_DVH.listIndex=0
		  
		  
		  //------------------------------Beam Settings--------------------------------
		  j =(UBound(gOpt.Plan.Structure_Dose)+1)
		  Listbox_DOSE.ColumnCount=20+j
		  for i=1 to j
		    temp2=temp2+",10%"
		  Next
		  temp="10%,30%,10%,10%,10%,10%,10%,10%,10%,20%,10%,0%,0%,10%,10%,10%,10%,10%,10%,10%"
		  Listbox_DOSE.columnwidths=Temp+temp2
		  Listbox_DOSE.Heading(0)="PB Num"
		  Listbox_DOSE.Heading(1)="Doses and PB"
		  Listbox_DOSE.Heading(2)="GradDVH"
		  Listbox_DOSE.ColumnType(2)=3
		  Listbox_DOSE.Heading(3)="MU-Grad"
		  Listbox_DOSE.Heading(4)="SADVH"
		  Listbox_DOSE.Heading(5)="MU-SA"
		  Listbox_DOSE.Heading(6)="JAWDVH"
		  Listbox_DOSE.Heading(7)="MU-JAW"
		  Listbox_DOSE.Heading(8)="Energy"
		  Listbox_DOSE.Heading(9)="Opening"
		  Listbox_DOSE.Heading(10)="Norm"
		  Listbox_DOSE.Heading(11)="Pencil beam index"
		  Listbox_DOSE.Heading(12)="opt.Beam Index"
		  Listbox_DOSE.Heading(13)="Beam #"
		  Listbox_DOSE.Heading(14)="Gantry"
		  Listbox_DOSE.Heading(15)="Iso X"
		  Listbox_DOSE.Heading(16)="Iso Y"
		  Listbox_DOSE.Heading(17)="Iso Z"
		  Listbox_DOSE.Heading(18)="Mode"
		  Listbox_DOSE.Heading(19)="NLO"
		  
		  for i=0 to UBound(gOpt.Plan.Structure_Dose)
		    Listbox_DOSE.Heading(19+(i+1))=gOpt.Plan.Structure_Dose(i).Organ_Name
		  next
		  
		  //-----------------------------------------------------
		  
		  
		  PopupMenu_Filter_Description.DeleteAllRows
		  for i =0 to UBound(gopt.IPbeams)
		    found=False
		    for k=0 to PopupMenu_Filter_Description.ListCount-1
		      if gopt.IPbeams(i).Beam_Description=PopupMenu_Filter_Description.List(k) Then
		        found=True
		      end
		    next
		    if found=False Then
		      PopupMenu_Filter_Description.AddRow gopt.IPbeams(i).Beam_Description
		    end
		  next
		  
		  
		  
		  PopupMenu_Filter_Gantry.DeleteAllRows
		  for i =0 to UBound(gopt.IPbeams)
		    found=False
		    for k=0 to PopupMenu_Filter_Gantry.ListCount-1
		      if Format(gopt.IPbeams(i).Gantry_Angle,"-#.##")=PopupMenu_Filter_Gantry.List(k) Then
		        found=True
		      end
		    next
		    if found=False Then
		      PopupMenu_Filter_Gantry.AddRow Format(gopt.IPbeams(i).Gantry_Angle,"-#.##")
		    end
		  next
		  
		  
		  PopupMenu_Filter_Mode.DeleteAllRows
		  for i =0 to UBound(gopt.IPbeams)
		    found=False
		    for k=0 to PopupMenu_Filter_Mode.ListCount-1
		      if gopt.IPbeams(i).Mode=PopupMenu_Filter_Mode.List(k) Then
		        found=True
		      end
		    next
		    if found=False Then
		      PopupMenu_Filter_Mode.AddRow gopt.IPbeams(i).Mode
		    end
		  next
		  
		  
		  PopupMenu_Filter_Energy.DeleteAllRows
		  for i =0 to UBound(gopt.IPbeams)
		    found=False
		    for k=0 to PopupMenu_Filter_Energy.ListCount-1
		      if gopt.IPbeams(i).Energy=PopupMenu_Filter_Energy.List(k) Then
		        found=True
		      end
		    next
		    if found=False Then
		      PopupMenu_Filter_Energy.AddRow gopt.IPbeams(i).Energy
		    end
		  next
		  
		  PopupMenu_Filter_Iso.DeleteAllRows
		  for i =0 to UBound(gopt.IPbeams)
		    found=False
		    for k=0 to PopupMenu_Filter_Iso.ListCount-1
		      if Format(gopt.IPbeams(i).Iso_X,"-#.##")+", "+Format(gopt.IPbeams(i).Iso_Y,"-#.##")+", "+Format(gopt.IPbeams(i).Iso_Z,"-#.##")=PopupMenu_Filter_Iso.List(k) Then
		        found=True
		      end
		    next
		    if found=False Then
		      PopupMenu_Filter_Iso.AddRow Format(gopt.IPbeams(i).Iso_X,"-#.##")+", "+Format(gopt.IPbeams(i).Iso_Y,"-#.##")+", "+Format(gopt.IPbeams(i).Iso_Z,"-#.##")
		    end
		  next
		  
		  
		  
		  // Count EGSPhants
		  for i =0 to UBound(gopt.IPbeams)
		    found=False
		    if gOpt.IPbeams(i).FldID=3 Then
		      for k=0 to UBound(EGSPhants)
		        if gDOSXYZ.DOSXYZ(gOpt.IPbeams(i).egsphant_index).EGSPhantSettings.name=EGSPhants(k) Then
		          found=True
		        end
		      Next
		      if found=False Then
		        EGSPhants.Append gDOSXYZ.DOSXYZ(gOpt.IPbeams(i).egsphant_index).EGSPhantSettings.name
		      end
		    end
		  next
		  
		  
		  // Count DMX files
		  for i =0 to UBound(gopt.IPbeams)
		    found=False
		    if gOpt.IPbeams(i).FldID=2 Then
		      for k=0 to UBound(DMXName)
		        if gVMC.VMC(gOpt.IPbeams(i).dmx_index).DMX.dmx_name=DMXName(k) Then
		          found=True
		        end
		      Next
		      if found=False Then
		        DMXName.Append gVMC.VMC(gOpt.IPbeams(i).dmx_index).DMX.dmx_name
		      end
		    end
		  next
		  
		  PopupMenu_Beam_EGSPhant.DeleteAllRows
		  for i=0 to UBound(EGSPhants)
		    PopupMenu_Beam_EGSPhant.AddRow EGSPhants(i)
		  Next
		  
		  for i=0 to UBound(DMXName)
		    PopupMenu_Beam_EGSPhant.AddRow DMXName(i)
		  Next
		  
		  PopupMenu_Beam_EGSPhant.ListIndex=0
		  
		  //---------------------------------DVH Settings--------------------------------
		  DVH_Default_SettingsGraphs
		  gopt.Read_DVH_Graphs_Binary
		  DVH_Load_All_DVHs_Oarry
		  //---------------------------------END DVH Settings--------------------------------
		  Update_PB_Use
		  Update_Fluence_BeamDis
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		bb As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		constraint_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		DMXName(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DVH As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		DVH_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		EGSPhants(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		FLEC_Fields(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Map_Grad As picture
	#tag EndProperty

	#tag Property, Flags = &h0
		nx As Integer = 256
	#tag EndProperty

	#tag Property, Flags = &h0
		Open_Plan_Index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		organ_index As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events TabPanel_Lowers
	#tag Event
		Sub Change()
		  if me.Value=9 Then
		    Update_Listbox_Results
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
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
#tag Events EditField_Grad_Output
	#tag Event
		Sub TextChange()
		  me.ScrollPosition=me.LineNumAtCharPos(Len(me.text))
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_SADVH
	#tag Event
		Sub Action()
		  gopt.sa.Run
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_OutputClear1
	#tag Event
		Sub Action()
		  EditField_ShelloutSA.Text=""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_ShelloutSA
	#tag Event
		Sub TextChange()
		  me.ScrollPosition=me.LineNumAtCharPos(Len(me.text))
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Jaws_Iterations
	#tag Event
		Sub TextChange()
		  gopt.JAW.Write_sajawDVH_Input
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Jaw_RatePD
	#tag Event
		Sub TextChange()
		  gopt.jaw.RatePD=val(me.Text)
		  gopt.JAW.Write_sajawDVH_Input
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Jaw_RateGD
	#tag Event
		Sub TextChange()
		  gopt.jaw.RateGD=val(me.Text)
		  gopt.JAW.Write_sajawDVH_Input
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Jaw_StochasticP
	#tag Event
		Sub TextChange()
		  gopt.jaw.StochasticP=val(me.Text)
		  gopt.JAW.Write_sajawDVH_Input
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Jaw_RangeW
	#tag Event
		Sub TextChange()
		  gopt.jaw.Weight_Range=val(me.Text)
		  gopt.JAW.Write_sajawDVH_Input
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Shellout_Jaw
	#tag Event
		Sub TextChange()
		  me.ScrollPosition=me.LineNumAtCharPos(Len(me.text))
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_W_SA_UseValue
	#tag Event
		Sub Action()
		  if me.Value Then
		    gopt.SA.Weight_Type=0
		  end
		  gopt.sa.Write_saDVH_Input
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_SA_InitW
	#tag Event
		Sub TextChange()
		  gopt.SA.Init_w=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_W_SA_AutoDetermine
	#tag Event
		Sub Action()
		  if me.Value Then
		    gopt.SA.Weight_Type=5
		  end
		  gopt.sa.Write_saDVH_Input
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_W_SA_NLO
	#tag Event
		Sub Action()
		  if me.Value Then
		    gopt.SA.Weight_Type=4
		  end
		  gopt.sa.Write_saDVH_Input
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_W_SA_JAW
	#tag Event
		Sub Action()
		  if me.Value Then
		    gopt.SA.Weight_Type=3
		  end
		  gopt.sa.Write_saDVH_Input
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_W_SA_SA
	#tag Event
		Sub Action()
		  if me.Value Then
		    gopt.SA.Weight_Type=2
		  end
		  gopt.sa.Write_saDVH_Input
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_W_SA_Grad
	#tag Event
		Sub Action()
		  if me.Value Then
		    gopt.SA.Weight_Type=1
		  end
		  gopt.sa.Write_saDVH_Input
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_SA_Alpha
	#tag Event
		Sub TextChange()
		  gopt.SA.Alpha=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_RangeSA
	#tag Event
		Sub TextChange()
		  gopt.SA.Range=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_ToSA
	#tag Event
		Sub TextChange()
		  gopt.SA.To_value=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Jaws_AutoRun
	#tag Event
		Sub Action()
		  gopt.jaw.Auto_Run=me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_OutputClearJaw
	#tag Event
		Sub Action()
		  EditField_Shellout_Jaw.Text=""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Jaw_Kill
	#tag Event
		Sub Action()
		  gopt.jaw.KillRun
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_SAJAWDVH
	#tag Event
		Sub Action()
		  gopt.JAW.Run
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_NLO_Save1
	#tag Event
		Sub Action()
		  gopt.Write_DJAW_Results
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_GradDVH_LoadDD
	#tag Event
		Sub Action()
		  gopt.Read_Finished_DD(gOpt.Grad.DoseOutputName)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_GradDVH_OptKill
	#tag Event
		Sub Action()
		  gOpt.Grad.KillRun
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_GradDVH
	#tag Event
		Sub Action()
		  gopt.Grad.Run
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_GradDVH_Save
	#tag Event
		Sub Action()
		  gopt.Write_GradDVH_Results
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_GradDVH_Status
	#tag Event
		Sub Open()
		  me.Heading(0)="Metric"
		  me.Heading(1)="Results"
		  
		  me.AddRow "Status"
		  me.AddRow "Time submitted"
		  me.AddRow "Run time"
		  me.AddRow "Current score"
		  me.AddRow "Inital score"
		  me.AddRow "Previous run score"
		  
		  me.AddRow "DVH bins"
		  
		  me.AddRow "Number of iterations"
		  me.CellType(7,1)=3
		  
		  me.AddRow "Inital step size"
		  me.CellType(8,1)=3
		  
		  me.AddRow "Grow"
		  me.CellType(9,1)=3
		  
		  me.AddRow "Shrink"
		  me.CellType(10,1)=3
		  
		  me.AddRow "Minimum weight"
		  me.CellType(11,1)=3
		  
		  me.AddRow "Maximum weight"
		  me.CellType(12,1)=3
		  
		  me.AddRow "Normalize dose distributions"
		  me.CellType(13,0)=2
		  me.Cell(13,1)="Yes/No"
		  
		  
		  me.AddRow "Sum final dose distributions label"
		  me.CellType(14,0)=2
		  me.CellType(14,1)=3
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  Dim i as Boolean
		  
		  
		  gOpt.Grad.Iterations=val(me.Cell(7,1))
		  gOpt.Grad.stepsize=val(me.Cell(8,1))
		  gOpt.Grad.Grow=val(me.Cell(9,1))
		  gOpt.Grad.Shrink=val(me.Cell(10,1))
		  gOpt.Grad.Min_W=val(me.Cell(11,1))
		  gOpt.Grad.Max_W=val(me.Cell(12,1))
		  gOpt.Grad.DoseOutputName=Trim(me.Cell(14,1))
		  i=gOpt.Grad.Write_GradDVH_Input
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  Dim i as Boolean
		  
		  
		  gOpt.Grad.NormDD=me.CellCheck(13,0)
		  gOpt.Grad.WriteDose=me.CellCheck(14,0)
		  
		  
		  i=gOpt.Grad.Write_GradDVH_Input
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_GradDVH_OutputClear
	#tag Event
		Sub Action()
		  EditField_Grad_Output.Text=""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Map_Grad_W
	#tag Event
		Sub Action()
		  Map_Make
		  Count_PB_WeightFields
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_MAP_Grad_MU
	#tag Event
		Sub Action()
		  Map_Make
		  Count_PB_WeightFields
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_MAP_SA_MU
	#tag Event
		Sub Action()
		  Map_Make
		  Count_PB_WeightFields
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_MAP_SAJAW_W
	#tag Event
		Sub Action()
		  Map_Make
		  Count_PB_WeightFields
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_MAP_SA_W
	#tag Event
		Sub Action()
		  Map_Make
		  Count_PB_WeightFields
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_DVH
	#tag Event
		Sub Change()
		  '//get which DVH is selected and put the volumes
		  'Dim i as Integer
		  'Dim DVH as Class_DVH_One
		  '
		  'if PopupMenu_DVH.text<>"ALL" and  me.ListIndex >-1 then
		  'DVHGraph.Interactive_index=me.ListIndex-1
		  'DVH_index=me.ListIndex-1
		  'DVHGraph.Interactive=True
		  'DVH=gopt.Oarray.organ(DVH_index).DVH
		  'StaticText_DVH_Stat.Text="Max dose : "+Format(dvh.maxdose,"-#.#####e")+" "+dvh.Dose_Units+" "+"Min dose : "+Format(dvh.mindose,"-#.#####e")+" "+dvh.Dose_Units+" "+"Avg dose : "+Format(dvh.avgdose,"-#.#####e")+" "+dvh.Dose_Units
		  '
		  '
		  'for i =0 to UBound(DVHGraph.Profiles.One_Profile)
		  'DVHGraph.Profiles.One_Profile(i).Show=False
		  'next
		  'DVHGraph.Profiles.One_Profile(DVH_index).Show=True
		  'DVHGraph.Interactive=True
		  'DVHGraph.Interactive_index=DVH_index
		  'else
		  'DVHGraph.Interactive=False
		  'DVHGraph.Interactive_index=-1
		  'for i =0 to UBound(DVHGraph.Profiles.One_Profile)
		  'DVHGraph.Profiles.One_Profile(i).Show=True
		  'next
		  'DVHGraph.Interactive=False
		  'StaticText_DVH_Stat.Text=""
		  '
		  '
		  'end if
		  'DVHGraph.Refresh(False)
		  '
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DiffRadioButton
	#tag Event
		Sub Action()
		  DVH_Load_All_DVHs_Oarry
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CumuRadioButton
	#tag Event
		Sub Action()
		  DVH_Load_All_DVHs_Oarry
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_LoadDVHs
	#tag Event
		Sub Action()
		  gopt.Read_DVH_Graphs_Binary
		  DVH_Load_All_DVHs_Oarry
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Jaw_MinFieldRange
	#tag Event
		Sub TextChange()
		  gopt.JAW.MinFieldRange=val(me.Text)
		  gopt.JAW.Write_sajawDVH_Input
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Jaw_RangeO
	#tag Event
		Sub TextChange()
		  gopt.JAW.Jaw_Range=val(me.Text)
		  gopt.JAW.Write_sajawDVH_Input
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Jaw_Opt_IterationsJaw
	#tag Event
		Sub TextChange()
		  gopt.JAW.MoveBeamInt=val(me.Text)
		  gopt.JAW.Write_sajawDVH_Input
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Jaw_FLECLimit
	#tag Event
		Sub TextChange()
		  gopt.JAW.FLEC_Size=val(me.Text)
		  gopt.JAW.Write_sajawDVH_Input
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Filter_Description
	#tag Event
		Sub Change()
		  if CheckBox_BeamFilter_Description.Value Then
		    Count_PB_WeightFields
		    Map_Make
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_BeamFilter_Description
	#tag Event
		Sub Action()
		  Count_PB_WeightFields
		  Map_Make
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Filter_Gantry
	#tag Event
		Sub Change()
		  if CheckBox_BeamFilter_Gantry.Value Then
		    Count_PB_WeightFields
		    Map_Make
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_BeamFilter_Gantry
	#tag Event
		Sub Action()
		  Count_PB_WeightFields
		  Map_Make
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Filter_Iso
	#tag Event
		Sub Change()
		  if CheckBox_BeamFilter_Isocenter.Value Then
		    Count_PB_WeightFields
		    Map_Make
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_BeamFilter_Isocenter
	#tag Event
		Sub Action()
		  Count_PB_WeightFields
		  Map_Make
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Filter_Mode
	#tag Event
		Sub Change()
		  if CheckBox_BeamFilter_Mode.Value Then
		    Count_PB_WeightFields
		    Map_Make
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_BeamFilter_Mode
	#tag Event
		Sub Action()
		  Count_PB_WeightFields
		  Map_Make
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Filter_Energy
	#tag Event
		Sub Change()
		  if CheckBox_BeamFilter_Energy.Value Then
		    
		    Count_PB_WeightFields
		    Map_Make
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_BeamFilter_Energy
	#tag Event
		Sub Action()
		  Count_PB_WeightFields
		  Map_Make
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_GenerateFlec_Positionfile
	#tag Event
		Sub Action()
		  Dim ss as String
		  
		  ss=""
		  if Window_EMET_Run.CheckBox_6.Value=True then
		    ss=ss+"6,"
		  end if
		  If Window_EMET_Run.CheckBox_9.Value=True then
		    ss=ss+"9,"
		  end if
		  If Window_EMET_Run.CheckBox_12.Value=True then
		    ss=ss+"12,"
		  end if
		  If Window_EMET_Run.CheckBox_16.Value=True then
		    ss=ss+"16,"
		  end if
		  If Window_EMET_Run.CheckBox_20.Value=True then
		    ss=ss+"20,"
		  end if
		  
		  
		  
		  gOpt.Write_FLEC_Position_file(FLEC_Fields,ss)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Canvas_Map_Grad
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.DrawPicture(Map_Grad,0,0)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_CopyBeams
	#tag Event
		Sub Action()
		  Copy_PB_WeightFields
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_DOSE
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  Dim beamindex,i as Integer
		  
		  beamindex=val(me.Cell(row,12))
		  if beamindex>-1 and beamindex<= UBound(gopt.IPbeams) Then
		    if column=1 Then
		      gopt.IPbeams(beamindex).Use=me.CellCheck(row,column)
		      Update_PB_Use
		    ElseIf column=2 Then
		      // Update Grad weights
		      gopt.IPbeams(beamindex).Weight_Grad=Val(me.Cell(row,column))
		    end
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  Dim MI as MenuItem
		  
		  MI = New MenuItem
		  MI.Text = "Check Dose"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "Uncheck Dose"
		  base.Append MI
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  //----------------------------------------------
		  // For selecting many PB dose distrbutions at once
		  //
		  //----------------------------------------------
		  Dim i,do_index as Integer
		  //----------------------------------------------
		  
		  Select Case hitItem.Text
		  Case "Check Dose"
		    For i=0 to me.ListCount
		      if me.Selected(i) Then
		        do_index=val(me.cell(i,12))
		        gOpt.IPbeams(do_index).Use=True
		      end
		    Next
		  Case "Uncheck Dose"
		    if me.Selected(i) Then
		      do_index=val(me.cell(i,12))
		      gOpt.IPbeams(do_index).Use=False
		    end
		  end
		  Update_PB_Use
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_NLO
	#tag Event
		Sub Action()
		  gopt.NLO.Run
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_NLO_Reload_Weights
	#tag Event
		Sub Action()
		  gopt.NLO.Read_Fluence_NLO
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_NLO_Save
	#tag Event
		Sub Action()
		  gopt.Write_NLO_Results
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_NLO_Reload_Text
	#tag Event
		Sub Action()
		  gopt.NLO.Read_NLO_Out
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_NLO_LoadDD
	#tag Event
		Sub Action()
		  gopt.Read_Finished_DD(gOpt.NLO.OutputName)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_NLO_Status
	#tag Event
		Sub Open()
		  me.Heading(0)="Metric"
		  me.Heading(1)="Results"
		  
		  me.AddRow "Status"
		  me.AddRow "Time submitted"
		  me.AddRow "Run time"
		  me.AddRow "Current score"
		  me.AddRow "Inital score"
		  me.AddRow "Previous run score"
		  
		  me.AddRow "DVH bins"
		  
		  me.AddRow "Number of iterations"
		  me.CellType(7,1)=3
		  
		  me.AddRow "Minimum weight"
		  me.CellType(8,1)=3
		  
		  me.AddRow "Maximum weight"
		  me.CellType(9,1)=3
		  
		  me.AddRow "Normalize dose distributions"
		  me.CellType(10,0)=2
		  me.Cell(10,1)="Yes/No"
		  
		  
		  me.AddRow "Sum final dose distributions label"
		  me.CellType(11,0)=2
		  me.CellType(11,1)=3
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  Dim i as Boolean
		  
		  
		  gOpt.nlo.NormDD=me.CellCheck(10,0)
		  gOpt.nlo.WriteDose=me.CellCheck(11,0)
		  i=gOpt.nlo.Write_NLO_Input
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  Dim i as Boolean
		  
		  
		  gOpt.NLO.Iterations=val(me.Cell(7,1))
		  gOpt.NLO.Min_W=val(me.Cell(8,1))
		  gOpt.NLO.Max_W=val(me.Cell(9,1))
		  gOpt.NLO.OutputName=Trim(me.Cell(10,1))
		  i=gOpt.nlo.Write_NLO_Input
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_NLO_COBYLA
	#tag Event
		Sub Action()
		  if me.Value Then
		    gOpt.NLO.Algorithm=1
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_NLO_BOBYQA
	#tag Event
		Sub Action()
		  if me.Value Then
		    gOpt.NLO.Algorithm=2
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_NLO_PRAXIS
	#tag Event
		Sub Action()
		  if me.Value Then
		    gOpt.NLO.Algorithm=3
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_NLO_Sbplx
	#tag Event
		Sub Action()
		  if me.Value Then
		    gOpt.NLO.Algorithm=5
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_NLO_Nelder_Mead_Simplex
	#tag Event
		Sub Action()
		  if me.Value Then
		    gOpt.NLO.Algorithm=4
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_NLO_MMA
	#tag Event
		Sub Action()
		  if me.Value Then
		    gOpt.NLO.Algorithm=6
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_NLO_SLSQB
	#tag Event
		Sub Action()
		  if me.Value Then
		    gOpt.NLO.Algorithm=7
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_NLO_NL_BFGS
	#tag Event
		Sub Action()
		  if me.Value Then
		    gOpt.NLO.Algorithm=8
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_NLO_NL_TRUNC_NEWTON
	#tag Event
		Sub Action()
		  if me.Value Then
		    gOpt.NLO.Algorithm=9
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_NLO_NL_SLMVM
	#tag Event
		Sub Action()
		  if me.Value Then
		    gOpt.NLO.Algorithm=10
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_NLO_W_UseValue
	#tag Event
		Sub Action()
		  if me.Value Then
		    gOpt.NLO.Previous_WeightType=0
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_NLO_InitW
	#tag Event
		Sub TextChange()
		  gopt.NLO.Init_Weight=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_NLO_W_AutoDetermine
	#tag Event
		Sub Action()
		  if me.Value Then
		    gOpt.NLO.Previous_WeightType=5
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_NLO_W_Grad
	#tag Event
		Sub Action()
		  if me.Value Then
		    gOpt.NLO.Previous_WeightType=1
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_NLO_W_SA
	#tag Event
		Sub Action()
		  if me.Value Then
		    gOpt.NLO.Previous_WeightType=2
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_NLO_W_JAW
	#tag Event
		Sub Action()
		  if me.Value Then
		    gOpt.NLO.Previous_WeightType=3
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_NLO_W_NLO
	#tag Event
		Sub Action()
		  if me.Value Then
		    gOpt.NLO.Previous_WeightType=4
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_MAP_NLO
	#tag Event
		Sub Action()
		  Map_Make
		  Count_PB_WeightFields
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_SA_Save
	#tag Event
		Sub Action()
		  gopt.Write_SA_Results
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_NLO_Output
	#tag Event
		Sub TextChange()
		  me.ScrollPosition=me.LineNumAtCharPos(Len(me.text))
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Hide_BeamInfo
	#tag Event
		Sub Action()
		  Update_Listbox_BEAMS
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Hide_Zero
	#tag Event
		Sub Action()
		  Update_Listbox_BEAMS
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Hide_SA_JAW_W
	#tag Event
		Sub Action()
		  Update_Listbox_BEAMS
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Hide_OAR
	#tag Event
		Sub Action()
		  Update_Listbox_BEAMS
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Hide_Unselected
	#tag Event
		Sub Action()
		  Update_Listbox_BEAMS
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Hide_MU
	#tag Event
		Sub Action()
		  Update_Listbox_BEAMS
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Hide_BeamInfo2
	#tag Event
		Sub Action()
		  Update_Listbox_BEAMS
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_All_20MeV
	#tag Event
		Sub Action()
		  Get_Energy(20,me.Value)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_All_16MeV
	#tag Event
		Sub Action()
		  Get_Energy(16,me.Value)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_All_12MeV
	#tag Event
		Sub Action()
		  Get_Energy(12,me.Value)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_All_9MeV
	#tag Event
		Sub Action()
		  Get_Energy(9,me.Value)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_All_6MeV
	#tag Event
		Sub Action()
		  Get_Energy(6,me.Value)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_All_6MV
	#tag Event
		Sub Action()
		  Get_Energy_Photon(6,me.Value)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_All
	#tag Event
		Sub Action()
		  Dim i as Integer
		  Dim gg as Boolean
		  
		  
		  gg=me.Value
		  
		  
		  for i =0 to Listbox_DOSE.ListCount-1
		    Listbox_DOSE.CellCheck(i,0)=gg
		    gopt.IPbeams(i).Use=gg
		    if gg Then
		      gOpt.Num_Fields=Listbox_DOSE.ListCount
		    else
		      gOpt.Num_Fields=0
		    end
		  next
		  
		  gOpt.Num_Fields=0
		  for i=0 to UBound(gopt.IPbeams)
		    if gopt.IPbeams(i).Use Then
		      gOpt.Num_Fields=gOpt.Num_Fields+gopt.IPbeams(i).NumofRay
		      gOpt.IPbeams(i).PB_Index=gOpt.Num_Fields
		    else
		      gOpt.IPbeams(i).PB_Index=-1
		    end
		  next
		  
		  
		  gopt.Write_Fields
		  Update_PB_Use
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_All_Size
	#tag Event
		Sub Action()
		  Dim i , ieng as Integer
		  Dim gg as Boolean
		  Dim size,eng as String
		  Dim x1,x2,y1,y2 as Single
		  Dim flec as Class_FLEC
		  
		  size=EditField_Size.Text
		  
		  x1=Val(NthField(size,",",1))
		  x2=Val(NthField(size,",",2))
		  y1=Val(NthField(size,",",3))
		  y2=Val(NthField(size,",",4))
		  
		  
		  
		  
		  gg=me.Value
		  
		  
		  for i =0 to UBound(gopt.IPbeams)
		    if gOpt.IPbeams(i).FldID<>1 Then
		      if gOpt.IPbeams(i).RTOG_Plan>-1 and gOpt.IPbeams(i).RTOG_Plan<= UBound(gRTOG.Plan) Then
		        if gOpt.IPbeams(i).RTOG_Beam>-1 and gOpt.IPbeams(i).RTOG_Beam<= UBound(gRTOG.Plan(gOpt.IPbeams(i).RTOG_Plan).beam) Then
		          
		          
		          flec=gRTOG.Plan(gOpt.IPbeams(i).RTOG_Plan).Beam(gOpt.IPbeams(i).RTOG_Beam).FLEC
		          
		          
		          
		          if x1=FLEC.x1 and x2=FLEC.x2 and y2=FLEC.y2 and y1=FLEC.y1  Then
		            gopt.IPbeams(i).Use=gg
		            
		            if gg Then
		              gOpt.Num_Fields=gOpt.Num_Fields+1
		            else
		              gOpt.Num_Fields=gOpt.Num_Fields-1
		            end
		          end
		        end
		      end
		    end
		  next
		  
		  gopt.Write_Fields
		  Update_PB_Use
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Remove_beamdis
	#tag Event
		Sub Action()
		  Dim i as Integer
		  Dim gg as Boolean
		  Dim w,eng as String
		  
		  
		  gg=me.Value
		  eng=PopupMenu_BeamDis.Text
		  
		  if Len(eng)=0 Then
		    Return
		  end
		  
		  for i =0 to UBound(gopt.IPbeams)
		    if gOpt.IPbeams(i).FldID<>1 Then
		      if gOpt.IPbeams(i).RTOG_Plan>-1 and gOpt.IPbeams(i).RTOG_Plan<= UBound(gRTOG.Plan) Then
		        if gOpt.IPbeams(i).RTOG_Beam>-1 and gOpt.IPbeams(i).RTOG_Beam<= UBound(gRTOG.Plan(gOpt.IPbeams(i).RTOG_Plan).beam) Then
		          w=gRTOG.Plan(gOpt.IPbeams(i).RTOG_Plan).Beam(gOpt.IPbeams(i).RTOG_Beam).beam_description
		          
		          if eng=w Then
		            gopt.IPbeams(i).Use=gg
		            if gg Then
		              gOpt.Num_Fields=gOpt.Num_Fields+1
		            else
		              gOpt.Num_Fields=gOpt.Num_Fields-1
		            end
		          end
		        end
		      end
		    end
		  next
		  
		  gopt.Write_Fields
		  Update_Listbox_BEAMS
		  Update_PB_Use
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Remove_beam_EGSPhant
	#tag Event
		Sub Action()
		  Dim i as Integer
		  Dim gg as Boolean
		  Dim w,eng,a as String
		  
		  
		  gg=me.Value
		  eng=PopupMenu_Beam_EGSPhant.Text
		  
		  for i =0 to UBound(gopt.IPbeams)
		    if gOpt.IPbeams(i).FldID=3 or gOpt.IPbeams(i).FldID=2 Then
		      
		      if gOpt.IPbeams(i).RTOG_Plan>-1 and gOpt.IPbeams(i).RTOG_Plan<= UBound(gRTOG.Plan) Then
		        if gOpt.IPbeams(i).RTOG_Beam>-1 and gOpt.IPbeams(i).RTOG_Beam<= UBound(gRTOG.Plan(gOpt.IPbeams(i).RTOG_Plan).beam) Then
		          a=""
		          w=""
		          if gOpt.IPbeams(i).FldID=2 Then
		            a=gVMC.VMC(gOpt.IPbeams(i).dmx_index).DMX.dmx_name
		          else
		            w=gDOSXYZ.DOSXYZ(gOpt.IPbeams(i).egsphant_index).EGSPhantSettings.name
		          end
		          if eng=w or a=eng Then
		            gopt.IPbeams(i).Use=gg
		          end
		        end
		      end
		    end
		  next
		  
		  gopt.Write_Fields
		  Update_PB_Use
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Remove_Zero
	#tag Event
		Sub Action()
		  Dim i as Integer
		  
		  for i =0 to UBound(gopt.IPbeams)
		    if gOpt.IPbeams(i).Weight_Grad=0  Then
		      gOpt.IPbeams(i).Use=False
		    end
		  next
		  
		  gOpt.Num_Fields=0
		  for i=0 to UBound(gopt.IPbeams)
		    if gopt.IPbeams(i).Use Then
		      gOpt.Num_Fields=gOpt.Num_Fields+gopt.IPbeams(i).NumofRay
		      gOpt.IPbeams(i).PB_Index=gOpt.Num_Fields
		    else
		      gOpt.IPbeams(i).PB_Index=-1
		    end
		  next
		  
		  
		  
		  
		  gopt.Write_Fields
		  Update_PB_Use
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Remove_Delete
	#tag Event
		Sub Action()
		  Dim i,ll(-1) as Integer
		  
		  
		  for i =UBound(gopt.IPbeams) DownTo 0  
		    if gOpt.IPbeams(i).Weight_Grad=0 Then
		      ll.Append gOpt.IPbeams(i).RTOG_Beam
		      gOpt.IPbeams.Remove i
		    end
		  next
		  
		  
		  ll.Sort
		  
		  
		  for i=UBound(ll) DownTo 0
		    gRTOG.Plan(Plan_Index).Delete_Beam(ll(i))
		  next
		  
		  
		  
		  //opt.Write_Fields
		  //Update_Listbox_BEAMS
		  //Update_Fluence
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_PB_Set_Weights
	#tag Event
		Sub Action()
		  Dim i as Integer
		  
		  
		  for i=0 to UBound(gOpt.IPbeams)
		    gOpt.IPbeams(i).Weight_Grad=val(EditField_Grad_Weights.Text)
		  Next
		  
		  gopt.Write_Fields
		  Update_Listbox_BEAMS
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_PB_Update_By_Dose
	#tag Event
		Sub Action()
		  'Dim i,k as Integer
		  '
		  '
		  'for i=0 to UBound(gOpt.IPbeams)
		  'for k=0 to UBound(gOpt.IPbeams(i).VolumeStats)
		  'if gOpt.Oarray.organ(k).Use_Min_Dose and gOpt.Oarray.organ(k).Use_DV_Constraint=False and gOpt.Oarray.organ(k).AvgDose_Use=False Then
		  'if gOpt.IPbeams(i).VolumeStats(k).maxdose<val(EditField_PB_MaxDose.Text) Then
		  'gOpt.IPbeams(i).Use=False
		  'end
		  'end
		  'Next
		  'Next
		  '
		  'gopt.Write_Fields
		  'Update_Listbox_BEAMS
		  'Update_PB_Use
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Set_IntWeights
	#tag Event
		Sub Action()
		  Dim i as Integer
		  
		  
		  for i=0 to UBound(gOpt.IPbeams)
		    gOpt.IPbeams(i).Weight_Grad=Round(gOpt.IPbeams(i).Weight_Grad)
		  Next
		  
		  gopt.Write_Fields
		  Update_Listbox_BEAMS
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_JAW_VMC1
	#tag Event
		Sub Action()
		  if me.Value Then
		    gopt.jaw.Caluclation_Type=0
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_JAW_VMC2
	#tag Event
		Sub Action()
		  if me.Value Then
		    gopt.jaw.Caluclation_Type=1
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_JAW_DOS1
	#tag Event
		Sub Action()
		  if me.Value Then
		    gopt.jaw.Caluclation_Type=2
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_JAW_DOS2
	#tag Event
		Sub Action()
		  if me.Value Then
		    gopt.jaw.Caluclation_Type=3
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Jaw_VMC_Index
	#tag Event
		Sub TextChange()
		  gopt.jaw.dmx_index=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Jaw_DOS_Index
	#tag Event
		Sub TextChange()
		  gopt.jaw.egsphant_index=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_JAW_DOS3
	#tag Event
		Sub Action()
		  if me.Value Then
		    gopt.jaw.Caluclation_Type=4
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_W_Grad_Jaw
	#tag Event
		Sub Action()
		  Dim bb as Boolean
		  
		  if me.Value Then
		    gopt.Grad.WeightType=3
		  end
		  
		  bb=gopt.Grad.Write_GradDVH_Input
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_W_Grad_SA
	#tag Event
		Sub Action()
		  Dim bb as Boolean
		  
		  if me.Value Then
		    gopt.Grad.WeightType=2
		  end
		  bb=gopt.Grad.Write_GradDVH_Input
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_W_Grad_Grad
	#tag Event
		Sub Action()
		  if me.Value Then
		    gopt.Grad.WeightType=1
		  end
		  
		  bb=gopt.Grad.Write_GradDVH_Input
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_W_Grad_NLO
	#tag Event
		Sub Action()
		  Dim bb as Boolean
		  
		  if me.Value Then
		    gopt.Grad.WeightType=4
		  end
		  
		  bb=gopt.Grad.Write_GradDVH_Input
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_W_Grad_Auto
	#tag Event
		Sub Action()
		  Dim bb as Boolean
		  
		  if me.Value Then
		    gopt.Grad.WeightType=5
		  end
		  
		  bb=gopt.Grad.Write_GradDVH_Input
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Grad_Weight_Value
	#tag Event
		Sub TextChange()
		  gOpt.Grad.Init_Weight=val(me.Text)
		  bb=gopt.Grad.Write_GradDVH_Input
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_W_Grad_Value
	#tag Event
		Sub Action()
		  Dim bb as Boolean
		  
		  if me.Value Then
		    gopt.Grad.WeightType=0
		  end
		  
		  bb=gopt.Grad.Write_GradDVH_Input
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Timer1
	#tag Event
		Sub Action()
		  
		  if gOpt.Grad.Running Then
		    gopt.Grad.Read_GradDVH_Out
		  end
		  
		  if gOpt.SA.Running Then
		    gopt.SA.Read_SADVH_Out
		  end
		  
		  if gOpt.JAW.Running Then
		    gopt.JAW.Read_JAWDVH_Out
		  end
		  
		  if gopt.Grad.Auto_Run Then
		    gopt.Grad.Auto_Run
		  elseif gOpt.JAW.Auto_Run Then
		    gopt.JAW.AutoRun
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
		Name="bb"
		Group="Behavior"
		Type="Boolean"
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
		Name="constraint_index"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="DVH"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="DVH_index"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
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
		Name="Map_Grad"
		Group="Behavior"
		InitialValue="0"
		Type="picture"
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
		Name="nx"
		Group="Behavior"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Open_Plan_Index"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="organ_index"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
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
