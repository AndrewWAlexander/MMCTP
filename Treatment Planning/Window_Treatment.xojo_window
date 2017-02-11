#tag Window
Begin Window Window_Treatment
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   800
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   -1100839426
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   2
   Resizeable      =   True
   Title           =   "McGill Monte Carlo Treatment Planning"
   Visible         =   True
   Width           =   1280
   Begin ListBox ListBox_Plan
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   1
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
      Height          =   486
      HelpTag         =   "Plan Listbox"
      Hierarchical    =   True
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Plans"
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   True
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   30
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   222
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin Canvas_TP Canvas_Top
      AcceptFocus     =   True
      AcceptTabs      =   True
      AutoDeactivate  =   True
      Axial_Dose_delx =   0.0
      Axial_Dose_dely =   0.0
      Axial_Dose_Max_x1=   0.0
      Axial_Dose_Max_y1=   0.0
      Axial_Dose_Min_x1=   0.0
      Axial_Dose_Min_y1=   0.0
      Axial_Dose_num  =   False
      Axial_Dose_x1   =   0.0
      Axial_Dose_y1   =   0.0
      axial_Dose_Zvalue=   0.0
      Backdrop        =   0
      BG              =   &c00000000
      buffer_offx     =   0
      buffer_offy     =   0
      canvas_cor      =   0
      canvas_sag      =   0
      canvas_scale    =   0.0
      canvas_slice    =   0
      cross_axial     =   False
      cross_coronal   =   False
      cross_sagittal  =   False
      Display         =   0
      Dose_Error      =   ""
      Dose_Units      =   ""
      Dose_Value      =   ""
      DoubleBuffer    =   True
      Enabled         =   True
      EraseBackground =   False
      Height          =   275
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      initial_WL      =   0
      initial_WW      =   0
      Left            =   291
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MouseCross      =   False
      mouse_xcm       =   0.0
      mouse_xpixel    =   0
      mouse_ycm       =   0.0
      mouse_ypixel    =   0
      mouse_zcm       =   0.0
      pan_x           =   0
      pan_y           =   0
      Pic_Dose        =   0
      Pic_Image       =   0
      Pic_Structure   =   0
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   30
      Transparent     =   True
      UseFocusRing    =   True
      ViewFlag        =   0
      Visible         =   True
      Width           =   363
      WL_Mouse        =   False
   End
   Begin Canvas_TP Canvas_Left
      AcceptFocus     =   True
      AcceptTabs      =   True
      AutoDeactivate  =   True
      Axial_Dose_delx =   0.0
      Axial_Dose_dely =   0.0
      Axial_Dose_Max_x1=   0.0
      Axial_Dose_Max_y1=   0.0
      Axial_Dose_Min_x1=   0.0
      Axial_Dose_Min_y1=   0.0
      Axial_Dose_num  =   False
      Axial_Dose_x1   =   0.0
      Axial_Dose_y1   =   0.0
      axial_Dose_Zvalue=   0.0
      Backdrop        =   0
      BG              =   &c00000000
      buffer_offx     =   0
      buffer_offy     =   0
      canvas_cor      =   0
      canvas_sag      =   0
      canvas_scale    =   0.0
      canvas_slice    =   0
      cross_axial     =   False
      cross_coronal   =   False
      cross_sagittal  =   False
      Display         =   0
      Dose_Error      =   ""
      Dose_Units      =   ""
      Dose_Value      =   ""
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   False
      Height          =   100
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      initial_WL      =   0
      initial_WW      =   0
      Left            =   291
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MouseCross      =   False
      mouse_xcm       =   0.0
      mouse_xpixel    =   0
      mouse_ycm       =   0.0
      mouse_ypixel    =   0
      mouse_zcm       =   0.0
      pan_x           =   0
      pan_y           =   0
      Pic_Dose        =   0
      Pic_Image       =   0
      Pic_Structure   =   0
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   317
      Transparent     =   True
      UseFocusRing    =   True
      ViewFlag        =   0
      Visible         =   True
      Width           =   100
      WL_Mouse        =   False
   End
   Begin Canvas_TP Canvas_Right
      AcceptFocus     =   True
      AcceptTabs      =   True
      AutoDeactivate  =   True
      Axial_Dose_delx =   0.0
      Axial_Dose_dely =   0.0
      Axial_Dose_Max_x1=   0.0
      Axial_Dose_Max_y1=   0.0
      Axial_Dose_Min_x1=   0.0
      Axial_Dose_Min_y1=   0.0
      Axial_Dose_num  =   False
      Axial_Dose_x1   =   0.0
      Axial_Dose_y1   =   0.0
      axial_Dose_Zvalue=   0.0
      Backdrop        =   0
      BG              =   &c00000000
      buffer_offx     =   0
      buffer_offy     =   0
      canvas_cor      =   0
      canvas_sag      =   0
      canvas_scale    =   0.0
      canvas_slice    =   0
      cross_axial     =   False
      cross_coronal   =   False
      cross_sagittal  =   False
      Display         =   0
      Dose_Error      =   ""
      Dose_Units      =   ""
      Dose_Value      =   ""
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   False
      Height          =   100
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      initial_WL      =   0
      initial_WW      =   0
      Left            =   442
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MouseCross      =   False
      mouse_xcm       =   0.0
      mouse_xpixel    =   0
      mouse_ycm       =   0.0
      mouse_ypixel    =   0
      mouse_zcm       =   0.0
      pan_x           =   0
      pan_y           =   0
      Pic_Dose        =   0
      Pic_Image       =   0
      Pic_Structure   =   0
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   317
      Transparent     =   True
      UseFocusRing    =   True
      ViewFlag        =   0
      Visible         =   True
      Width           =   100
      WL_Mouse        =   False
   End
   Begin Slider Slider_top
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   478
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   254
      LineStep        =   1
      LiveScroll      =   False
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Maximum         =   100
      Minimum         =   0
      PageStep        =   20
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TickStyle       =   "0"
      Top             =   30
      Value           =   0
      Visible         =   True
      Width           =   25
   End
   Begin Slider Slider_bot
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   28
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   291
      LineStep        =   1
      LiveScroll      =   False
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Maximum         =   100
      Minimum         =   0
      PageStep        =   20
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TickStyle       =   "0"
      Top             =   506
      Value           =   0
      Visible         =   True
      Width           =   982
   End
   Begin TabPanel TabPanel_Views
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   253
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   13
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   True
      TabDefinition   =   "External Beams\rBEAMnrc\rCutout\rDOSXYZnrc\rView\rDVH\rDose\rDose Profiles\rVMC\rDose Points"
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   537
      Underline       =   False
      Value           =   6
      Visible         =   True
      Width           =   1247
      Begin BevelButton BevelButton_DoseProfile_Properties
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Properties"
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
         InitialParent   =   "TabPanel_Views"
         Italic          =   False
         Left            =   253
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   70
         TabPanelIndex   =   8
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   566
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin ListBox ListBox_Beam
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
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   3
         GridLinesVertical=   3
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   191
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Views"
         InitialValue    =   ""
         Italic          =   False
         Left            =   28
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   True
         ScrollBarVertical=   True
         SelectionType   =   1
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   574
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   1216
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin ListBox ListBox_MC_Beam
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
         GridLinesHorizontal=   3
         GridLinesVertical=   3
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   174
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Views"
         InitialValue    =   ""
         Italic          =   False
         Left            =   28
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   0
         TabIndex        =   30
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   571
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   1224
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin ListBox ListBox_MC_VMC
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   2
         ColumnsResizable=   False
         ColumnWidths    =   "100"
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   3
         GridLinesVertical=   3
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   188
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Views"
         InitialValue    =   ""
         Italic          =   False
         Left            =   208
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   0
         TabIndex        =   34
         TabPanelIndex   =   9
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   570
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   1052
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin GroupBox GroupBox1
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "DMX"
         Enabled         =   True
         Height          =   220
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Views"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   38
         TabPanelIndex   =   9
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   560
         Underline       =   False
         Visible         =   True
         Width           =   169
         Begin PushButton PushButton_VMX_DMX
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Generate DMX"
            Default         =   False
            Enabled         =   True
            Height          =   60
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   32
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   9
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   583
            Underline       =   False
            Visible         =   True
            Width           =   142
         End
      End
      Begin BevelButton BevelButton_DoseProfile_Show
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Show"
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
         InitialParent   =   "TabPanel_Views"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   63
         TabPanelIndex   =   8
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   566
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label StaticText_DOSYXZ_Status
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Views"
         Italic          =   False
         Left            =   30
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   73
         TabPanelIndex   =   4
         Text            =   ""
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   754
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   1220
      End
      Begin Label StaticText_BEAM_Status
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Views"
         Italic          =   False
         Left            =   28
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   78
         TabPanelIndex   =   2
         Text            =   ""
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   757
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   1224
      End
      Begin Label StaticText_VMC_Status
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Views"
         Italic          =   False
         Left            =   208
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   9
         Text            =   ""
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   762
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   1044
      End
      Begin BevelButton BevelButton_DoseProfile_delete
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "delete"
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
         InitialParent   =   "TabPanel_Views"
         Italic          =   False
         Left            =   132
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   57
         TabPanelIndex   =   8
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   566
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin GroupBox GroupBox4
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Ruler"
         Enabled         =   True
         Height          =   205
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Views"
         Italic          =   False
         Left            =   948
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   62
         TabPanelIndex   =   8
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   575
         Underline       =   False
         Visible         =   True
         Width           =   304
         Begin RadioButton RadioButton_top
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Top"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   955
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   8
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   656
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   62
         End
         Begin RadioButton RadioButton_left
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Left"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   1040
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   8
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   656
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   63
         End
         Begin RadioButton RadioButton_right
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Right"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   1121
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   8
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   656
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   77
         End
         Begin CheckBox CheckBox_Profile_showR
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Show Rulers"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   955
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   3
            TabPanelIndex   =   8
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   601
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   100
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
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   955
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   4
            TabPanelIndex   =   8
            Text            =   "Point 1"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   690
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   62
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
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   955
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   5
            TabPanelIndex   =   8
            Text            =   "Point 2"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   722
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   62
         End
         Begin TextField EditField_point1
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
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   1036
            LimitText       =   0
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   6
            TabPanelIndex   =   8
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   688
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   185
         End
         Begin TextField EditField_point2
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
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   1036
            LimitText       =   0
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   7
            TabPanelIndex   =   8
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   720
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   185
         End
         Begin BevelButton BevelButton_DoseProfile_Cal
            AcceptFocus     =   False
            AutoDeactivate  =   True
            BackColor       =   &c00000000
            Bevel           =   0
            Bold            =   False
            ButtonType      =   0
            Caption         =   "Calculate"
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
            Left            =   1085
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   True
            MenuValue       =   0
            Scope           =   0
            TabIndex        =   8
            TabPanelIndex   =   8
            TabStop         =   True
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   599
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   123
         End
      End
      Begin ListBox ListBox_Dose_profiles_Result
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   4
         ColumnsResizable=   True
         ColumnWidths    =   ""
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   3
         GridLinesVertical=   3
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   177
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Views"
         InitialValue    =   "Profile"
         Italic          =   False
         Left            =   20
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
         TabIndex        =   69
         TabPanelIndex   =   8
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   14.0
         TextUnit        =   0
         Top             =   601
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   916
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin Class_Listbox_MC ListBox_MC_DOS
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
         GridLinesHorizontal=   3
         GridLinesVertical=   3
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   175
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Views"
         InitialValue    =   ""
         Italic          =   False
         Left            =   30
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
         TabIndex        =   74
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   576
         Underline       =   False
         UseFocusRing    =   True
         User_column     =   0
         Visible         =   True
         Width           =   1220
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin ListBox ListBox_DVH_Graphs
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   2
         ColumnsResizable=   True
         ColumnWidths    =   ""
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   3
         GridLinesVertical=   3
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   189
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Views"
         InitialValue    =   ""
         Italic          =   False
         Left            =   366
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
         TabIndex        =   0
         TabPanelIndex   =   6
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   14.0
         TextUnit        =   0
         Top             =   568
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   877
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin ListBox ListBox_DVH_Struc
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
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   3
         GridLinesVertical=   3
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   189
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Views"
         InitialValue    =   ""
         Italic          =   False
         Left            =   115
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   True
         ScrollBarVertical=   True
         SelectionType   =   0
         TabIndex        =   1
         TabPanelIndex   =   6
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   14.0
         TextUnit        =   0
         Top             =   568
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   227
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin TextField EditField_DVHBins
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
         InitialParent   =   "TabPanel_Views"
         Italic          =   False
         Left            =   20
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
         TabPanelIndex   =   6
         TabStop         =   True
         Text            =   "100"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   600
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   75
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
         InitialParent   =   "TabPanel_Views"
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
         TabIndex        =   4
         TabPanelIndex   =   6
         Text            =   "DVH bins:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   568
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   75
      End
      Begin BevelButton BevelButton_DVHSHOW
         AcceptFocus     =   False
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Show"
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
         InitialParent   =   "TabPanel_Views"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   6
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   742
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   75
      End
      Begin Label StaticText_DVH
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Views"
         Italic          =   False
         Left            =   115
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   6
         Text            =   ""
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   763
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   1041
      End
      Begin BevelButton BevelButton_DVH_Del
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
         InitialParent   =   "TabPanel_Views"
         Italic          =   False
         Left            =   1168
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   6
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   761
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   75
      End
      Begin GroupBox GroupBox6
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Structures"
         Enabled         =   True
         Height          =   210
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Views"
         Italic          =   False
         Left            =   831
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   48
         TabPanelIndex   =   5
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   570
         Underline       =   False
         Visible         =   True
         Width           =   418
         Begin ListBox ListBox_Struc
            AutoDeactivate  =   True
            AutoHideScrollbars=   True
            Bold            =   False
            Border          =   True
            ColumnCount     =   4
            ColumnsResizable=   True
            ColumnWidths    =   ""
            DataField       =   ""
            DataSource      =   ""
            DefaultRowHeight=   -1
            Enabled         =   True
            EnableDrag      =   False
            EnableDragReorder=   False
            GridLinesHorizontal=   3
            GridLinesVertical=   3
            HasHeading      =   True
            HeadingIndex    =   -1
            Height          =   152
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "GroupBox6"
            InitialValue    =   ""
            Italic          =   False
            Left            =   839
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            RequiresSelection=   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollBarVertical=   True
            SelectionType   =   0
            TabIndex        =   0
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   14.0
            TextUnit        =   0
            Top             =   619
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   402
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin CheckBox CheckBox_show_struc
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Show"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   839
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   1
            TabIndex        =   1
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   593
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   73
         End
         Begin Slider Slider_Structure_Trans
            AutoDeactivate  =   True
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox6"
            Left            =   924
            LineStep        =   1
            LiveScroll      =   False
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Maximum         =   100
            Minimum         =   0
            PageStep        =   20
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   5
            TabStop         =   True
            TickStyle       =   "0"
            Top             =   593
            Value           =   0
            Visible         =   True
            Width           =   310
         End
      End
      Begin GroupBox GroupBox5
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Dose"
         Enabled         =   True
         Height          =   210
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Views"
         Italic          =   False
         Left            =   580
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   49
         TabPanelIndex   =   5
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   570
         Underline       =   False
         Visible         =   True
         Width           =   240
         Begin CheckBox CheckBox_dose
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Colourwash "
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox5"
            Italic          =   False
            Left            =   599
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   0
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   593
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   142
         End
         Begin CheckBox CheckBox_Iso
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "IsoDose Lines"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox5"
            Italic          =   False
            Left            =   599
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   1
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   674
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   117
         End
         Begin PushButton PushButton_Image_Isodose
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Properties"
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox5"
            Italic          =   False
            Left            =   728
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   672
            Underline       =   False
            Visible         =   True
            Width           =   82
         End
         Begin CheckBox CheckBox_hot
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Hot Point"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox5"
            Italic          =   False
            Left            =   599
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   3
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   701
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   82
         End
         Begin CheckBox CheckBox_DoseGrid
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Show Dose Grid"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox5"
            Italic          =   False
            Left            =   599
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   4
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   725
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   133
         End
         Begin CheckBox CheckBox_DoseGrid_values
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Show Grid Values"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox5"
            Italic          =   False
            Left            =   599
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   5
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   747
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   142
         End
         Begin Slider Slider_Dose_Trans
            AutoDeactivate  =   True
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox5"
            Left            =   599
            LineStep        =   1
            LiveScroll      =   False
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Maximum         =   100
            Minimum         =   0
            PageStep        =   20
            Scope           =   0
            TabIndex        =   6
            TabPanelIndex   =   5
            TabStop         =   True
            TickStyle       =   "0"
            Top             =   619
            Value           =   0
            Visible         =   True
            Width           =   211
         End
      End
      Begin GroupBox GroupBox7
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Image"
         Enabled         =   True
         Height          =   210
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Views"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   50
         TabPanelIndex   =   5
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   570
         Underline       =   False
         Visible         =   True
         Width           =   433
         Begin Slider Slider_Window_Level
            AutoDeactivate  =   True
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox7"
            Left            =   48
            LineStep        =   1
            LiveScroll      =   True
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Maximum         =   100
            Minimum         =   0
            PageStep        =   20
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   5
            TabStop         =   True
            TickStyle       =   "0"
            Top             =   631
            Value           =   0
            Visible         =   True
            Width           =   242
         End
         Begin Label StaticText_Window
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
            Left            =   48
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   2
            TabPanelIndex   =   5
            Text            =   "Window"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   656
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   182
         End
         Begin Slider Slider_Window_Width
            AutoDeactivate  =   True
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox7"
            Left            =   48
            LineStep        =   1
            LiveScroll      =   True
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Maximum         =   100
            Minimum         =   0
            PageStep        =   20
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   5
            TabStop         =   True
            TickStyle       =   "0"
            Top             =   688
            Value           =   0
            Visible         =   True
            Width           =   242
         End
         Begin Slider Slider_Scale
            AutoDeactivate  =   True
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox7"
            Left            =   48
            LineStep        =   1
            LiveScroll      =   True
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Maximum         =   100
            Minimum         =   0
            PageStep        =   20
            Scope           =   0
            TabIndex        =   5
            TabPanelIndex   =   5
            TabStop         =   True
            TickStyle       =   "0"
            Top             =   751
            Value           =   0
            Visible         =   True
            Width           =   242
         End
         Begin Label StaticText_Scale
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
            Left            =   48
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   6
            TabPanelIndex   =   5
            Text            =   "Scale Top %"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   720
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   88
         End
         Begin TextField EditField_Scale
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
            InitialParent   =   "GroupBox7"
            Italic          =   False
            Left            =   159
            LimitText       =   4
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   7
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "100"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   720
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   54
         End
         Begin Label StaticText_Level
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
            Left            =   48
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   8
            TabPanelIndex   =   5
            Text            =   "Level"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   599
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   182
         End
         Begin CheckBox CheckBox_image
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Image"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox7"
            Italic          =   False
            Left            =   309
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   1
            TabIndex        =   10
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   599
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   88
         End
         Begin CheckBox CheckBox_cross
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Crosshairs"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox7"
            Italic          =   False
            Left            =   309
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   11
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   625
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   130
         End
         Begin CheckBox CheckBox_axis
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Axis"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox7"
            Italic          =   False
            Left            =   309
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   12
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   674
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   71
         End
         Begin CheckBox CheckBox_MouseCross
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Mouse Crosshairs"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox7"
            Italic          =   False
            Left            =   309
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   13
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   648
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   134
         End
      End
      Begin GroupBox GroupBox8
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Beam"
         Enabled         =   True
         Height          =   210
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Views"
         Italic          =   False
         Left            =   465
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   51
         TabPanelIndex   =   5
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   570
         Underline       =   False
         Visible         =   True
         Width           =   100
         Begin CheckBox CheckBox_show_isocenter
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Isocenter"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox8"
            Italic          =   False
            Left            =   473
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   0
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   599
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   84
         End
      End
      Begin ListBox ListBox_MC_Cutout
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
         GridLinesHorizontal=   3
         GridLinesVertical=   3
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   174
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Views"
         InitialValue    =   ""
         Italic          =   False
         Left            =   31
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   0
         TabIndex        =   0
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   576
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   1211
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin Label StaticText_Cutout_Status
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Views"
         Italic          =   False
         Left            =   31
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   3
         Text            =   ""
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   753
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   1224
      End
      Begin Listbox Listbox_DosePoints
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
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   208
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Views"
         InitialValue    =   ""
         Italic          =   False
         Left            =   36
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   0
         TabIndex        =   0
         TabPanelIndex   =   10
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   572
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   1208
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin GroupBox GroupBox12
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Point Dose Report for selected dose distribution"
         Enabled         =   True
         Height          =   208
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Views"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   7
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   572
         Underline       =   False
         Visible         =   True
         Width           =   399
         Begin Listbox Listbox_Dose_Values
            AutoDeactivate  =   True
            AutoHideScrollbars=   True
            Bold            =   False
            Border          =   True
            ColumnCount     =   1
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
            Height          =   141
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "GroupBox12"
            InitialValue    =   ""
            Italic          =   False
            Left            =   36
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
            TabIndex        =   0
            TabPanelIndex   =   7
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   631
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   368
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin TextField TextField_D_Max
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
            InitialParent   =   "GroupBox12"
            Italic          =   False
            Left            =   350
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
            TabIndex        =   1
            TabPanelIndex   =   7
            TabStop         =   True
            Text            =   "5"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   599
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   48
         End
         Begin TextField TextField_D_Min
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
            InitialParent   =   "GroupBox12"
            Italic          =   False
            Left            =   146
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
            TabIndex        =   2
            TabPanelIndex   =   7
            TabStop         =   True
            Text            =   "0.01"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   598
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   67
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
            InitialParent   =   "GroupBox12"
            Italic          =   False
            Left            =   36
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   3
            TabPanelIndex   =   7
            Text            =   "Min dose value"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   599
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   98
         End
         Begin Label Label2
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox12"
            Italic          =   False
            Left            =   233
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   4
            TabPanelIndex   =   7
            Text            =   "Max dose value"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   599
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   113
         End
      End
      Begin GroupBox DoseCompGroupbox
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Edit selected dose"
         Enabled         =   True
         Height          =   208
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Views"
         Italic          =   False
         Left            =   431
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   7
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   572
         Underline       =   False
         Visible         =   True
         Width           =   818
         Begin GroupBox GroupBox9
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Normalize Dose"
            Enabled         =   True
            Height          =   182
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "DoseCompGroupbox"
            Italic          =   False
            Left            =   857
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   8
            TabPanelIndex   =   7
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   590
            Underline       =   False
            Visible         =   True
            Width           =   380
            Begin RadioButton RadioButton_Norm_Struc
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "Structure"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox9"
               Italic          =   False
               Left            =   875
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   0
               TabIndex        =   0
               TabPanelIndex   =   7
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   617
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   84
            End
            Begin PopupMenu PopupMenu_Dose_ListStruc2
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox9"
               InitialValue    =   ""
               Italic          =   False
               Left            =   875
               ListIndex       =   0
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   0
               TabIndex        =   2
               TabPanelIndex   =   7
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   650
               Underline       =   False
               Visible         =   True
               Width           =   176
            End
            Begin GroupBox GroupBox10
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "DVH Index"
               Enabled         =   True
               Height          =   83
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox9"
               Italic          =   False
               Left            =   875
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   0
               TabIndex        =   3
               TabPanelIndex   =   7
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   681
               Underline       =   False
               Visible         =   True
               Width           =   176
               Begin TextField EditField_Norm_DoseValue
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
                  Left            =   961
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
                  TabPanelIndex   =   7
                  TabStop         =   True
                  Text            =   "10"
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   736
                  Underline       =   False
                  UseFocusRing    =   True
                  Visible         =   True
                  Width           =   45
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
                  InitialParent   =   "GroupBox10"
                  Italic          =   False
                  Left            =   882
                  LockBottom      =   False
                  LockedInPosition=   False
                  LockLeft        =   True
                  LockRight       =   False
                  LockTop         =   True
                  Multiline       =   False
                  Scope           =   0
                  Selectable      =   False
                  TabIndex        =   1
                  TabPanelIndex   =   7
                  Text            =   "Volume (%)"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   706
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   77
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
                  InitialParent   =   "GroupBox10"
                  Italic          =   False
                  Left            =   882
                  LockBottom      =   False
                  LockedInPosition=   False
                  LockLeft        =   True
                  LockRight       =   False
                  LockTop         =   True
                  Multiline       =   False
                  Scope           =   0
                  Selectable      =   False
                  TabIndex        =   2
                  TabPanelIndex   =   7
                  Text            =   "Dose (Gy)"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   736
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   77
               End
               Begin TextField EditField_Norm_VolValue
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
                  Left            =   961
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
                  TabPanelIndex   =   7
                  TabStop         =   True
                  Text            =   "95"
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   705
                  Underline       =   False
                  UseFocusRing    =   True
                  Visible         =   True
                  Width           =   45
               End
            End
            Begin RadioButton RadioButton_Norm_MaxDose
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "Max Dose"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox9"
               Italic          =   False
               Left            =   1091
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   0
               TabIndex        =   4
               TabPanelIndex   =   7
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   617
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   100
            End
            Begin RadioButton RadioButton_Nor_DValue
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "Dose Value"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox9"
               Italic          =   False
               Left            =   1091
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   0
               TabIndex        =   5
               TabPanelIndex   =   7
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   674
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   100
            End
            Begin RadioButton RadioButton_Nor_Beam_Iso
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "Isocenter"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox9"
               Italic          =   False
               Left            =   1091
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   0
               TabIndex        =   6
               TabPanelIndex   =   7
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   645
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   100
            End
            Begin TextField EditField_Nor_DoseValue
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
               Left            =   1091
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
               TabPanelIndex   =   7
               TabStop         =   True
               Text            =   "10"
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   706
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   100
            End
            Begin PushButton PushButton_Dose_Norm
               AutoDeactivate  =   True
               Bold            =   False
               ButtonStyle     =   "0"
               Cancel          =   False
               Caption         =   "apply"
               Default         =   False
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox9"
               Italic          =   False
               Left            =   1091
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   0
               TabIndex        =   8
               TabPanelIndex   =   7
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   739
               Underline       =   False
               Visible         =   True
               Width           =   100
            End
         End
         Begin GroupBox GroupBox11
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Set Dose"
            Enabled         =   True
            Height          =   183
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "DoseCompGroupbox"
            Italic          =   False
            Left            =   644
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   9
            TabPanelIndex   =   7
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   589
            Underline       =   False
            Visible         =   True
            Width           =   201
            Begin TextField EditField_Dose_SetValue
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
               Left            =   662
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
               TabPanelIndex   =   7
               TabStop         =   True
               Text            =   "10"
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   647
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   176
            End
            Begin PushButton PushButton_SetDose
               AutoDeactivate  =   True
               Bold            =   False
               ButtonStyle     =   "0"
               Cancel          =   False
               Caption         =   "apply"
               Default         =   False
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox11"
               Italic          =   False
               Left            =   662
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   0
               TabIndex        =   7
               TabPanelIndex   =   7
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   738
               Underline       =   False
               Visible         =   True
               Width           =   176
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
               InitialParent   =   "GroupBox11"
               Italic          =   False
               Left            =   662
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   8
               TabPanelIndex   =   7
               Text            =   "Plus/minus image pixel"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   682
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   147
            End
            Begin TextField EditField_DoseSet_ValueBuff
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
               Left            =   662
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
               TabPanelIndex   =   7
               TabStop         =   True
               Text            =   "0"
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   705
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   67
            End
            Begin PopupMenu PopupMenu_Dose_ListStruc
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox11"
               InitialValue    =   ""
               Italic          =   False
               Left            =   662
               ListIndex       =   0
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   0
               TabIndex        =   1
               TabPanelIndex   =   7
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   615
               Underline       =   False
               Visible         =   True
               Width           =   176
            End
         End
         Begin BevelButton BevelButton_DosePaint_on
            AcceptFocus     =   False
            AutoDeactivate  =   False
            BackColor       =   &c00000000
            Bevel           =   0
            Bold            =   False
            ButtonType      =   1
            Caption         =   "Edit on/off"
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
            InitialParent   =   "DoseCompGroupbox"
            Italic          =   False
            Left            =   445
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            MenuValue       =   0
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   7
            TabStop         =   True
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   599
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   112
         End
         Begin GroupBox GroupBox13
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Paint"
            Enabled         =   True
            Height          =   100
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "DoseCompGroupbox"
            Italic          =   False
            Left            =   442
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   10
            TabPanelIndex   =   7
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   672
            Underline       =   False
            Visible         =   True
            Width           =   158
            Begin BevelButton BevelButton_DosePaint_sup
               AcceptFocus     =   False
               AutoDeactivate  =   True
               BackColor       =   &c00000000
               Bevel           =   0
               Bold            =   False
               ButtonType      =   0
               Caption         =   "Copy SUP"
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
               InitialParent   =   "GroupBox13"
               Italic          =   False
               Left            =   456
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               MenuValue       =   0
               Scope           =   0
               TabIndex        =   0
               TabPanelIndex   =   7
               TabStop         =   True
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   9.0
               TextUnit        =   0
               Top             =   735
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   50
            End
            Begin TextField EditField_DoseValue
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
               Left            =   456
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
               TabPanelIndex   =   7
               TabStop         =   True
               Text            =   "0"
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   699
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   45
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
               InitialParent   =   "GroupBox13"
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
               TabIndex        =   2
               TabPanelIndex   =   7
               Text            =   "=cGy"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   700
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   33
            End
            Begin BevelButton BevelButton_DosePaint_inf
               AcceptFocus     =   False
               AutoDeactivate  =   True
               BackColor       =   &c00000000
               Bevel           =   0
               Bold            =   False
               ButtonType      =   0
               Caption         =   "Copy INF"
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
               InitialParent   =   "GroupBox13"
               Italic          =   False
               Left            =   518
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               MenuValue       =   0
               Scope           =   0
               TabIndex        =   3
               TabPanelIndex   =   7
               TabStop         =   True
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   9.0
               TextUnit        =   0
               Top             =   735
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   50
            End
         End
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function CancelClose(appQuitting as Boolean) As Boolean
		  //--------------------------
		  //
		  //
		  //--------------------------
		  Dim i as Integer
		  Dim j as Boolean
		  Dim fname as String
		  //--------------------------
		  
		  if UBound(MMCTP_Shell_Refresh.All)<>-1 Then
		    MsgBox "Application can not close while SSH REFRESH shell is still running"
		    Return True
		  elseif  UBound(MMCTP_Shell_Run.All)<>-1 Then
		    MsgBox "Application can not close while SSH RUN shell is still running"
		    Return True
		  elseif  UBound(MMCTP_Download.All)<>-1 Then
		    MsgBox "Application can not close while FTP shell is still running"
		    Return True
		  Elseif Save_Beams=True Then
		    i=MsgBox("Save Plan Changes Before Exiting?" ,3)
		    if i=6 Then // yes pressed
		      app.MMCTP_Save_Plan
		    elseif i=7 Then // no pressed
		    elseif i=2 Then //Cancell
		      Return True
		    end
		  Elseif Save_Dose=True Then
		    i=MsgBox( "Save Dose Distrbution Changes Before Exiting?" ,3)
		    if i=6 Then // yes pressed
		      App.MMCTP_Save_Dose
		    elseif i=7 Then // no pressed
		    elseif i=2 Then //Cancell
		      Return True
		    end
		  end
		End Function
	#tag EndEvent

	#tag Event
		Sub Close()
		  Dim i as Integer
		  
		  if gDVH.Save_DVH Then
		    for i=0 to UBound(gDVH.All_DVH)
		      gDVH.Write_DVH_File(i)
		    next
		  end
		  gDVH.timer=nil
		  Task_TreatmentPlanning.checked=False
		  app.which_window_TreatmentPlanning=False
		  Window_Cleanup
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  Task_TreatmentPlanning.checked=True
		  File_Import_McGillRTDose.Enabled=True
		  TaskPrescription.Enabled=True
		  //File_Export_DosePlane.Enabled=True
		  Task_3DViewer.Enabled=True
		  TaskCreatDoseDistribution.Enabled=True
		  //TaskGamma.Enabled=True
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  PW_Title="Opening Treatment Planning Window"
		  PW_Show=true
		  PW_StaticText=""
		  PW_Progress=-1
		  
		  
		  
		  Canvas_Width=Slider_bot.Width
		  Canvas_height=Slider_top.Height
		  Slider_top.Value=60
		  Slider_bot.Value=50
		  
		  Window_Open
		  
		  Window_Resize
		  
		  App.which_window_TreatmentPlanning=True
		  
		  gTimer_Refresh.Mode=2
		  gTimer_Refresh.Period=gTimer_Refresh.Check_Period
		  gTimer_Refresh.Reset
		  
		  gTimer_Download.Mode=2
		  gTimer_Download.Period=gTimer_Download.Check_Period
		  gTimer_Download.Reset
		  
		  gTimer_Run.Mode=2
		  gTimer_Run.Period=gTimer_Run.Check_Period
		  gTimer_Run.Reset
		  
		  gDVH.timer=new Class_DVH_Timer
		  gDVH.timer.mode=2
		  gDVH.timer.Period=gDVH.timer.Check_Period
		  gDVH.timer.Reset
		  
		  if gPref.Show_Patient_Info Then
		    me.Title="McGill Monte Carlo Treatment Planning  - "+gRTOG.Patient_Name+" "+gRTOG.Patient_Surname
		  else
		    me.Title="McGill Monte Carlo Treatment Planning"
		  end
		  
		  PW_Show=false
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  Canvas_Width=Slider_bot.Width
		  Canvas_height=Slider_top.Height
		  Window_Resize
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  Canvas_Width=Slider_bot.Width
		  Canvas_height=Slider_top.Height
		  Window_Resize
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Beam_Merge()
		  //-----------------------------------------------------------
		  //
		  //
		  //-----------------------------------------------------------
		  Dim i,bbn(-1),k,index_b(-1),index_subf(-1),bindex,ffindex as Integer
		  Dim bb,newb as RTOG_Beam_Geometry
		  Dim ff as Boolean
		  Dim fieldlet_w(-1),total_mu,w as Double
		  Dim mm,newmm as Class_MLC
		  Dim jj,newjj as Class_Collimator
		  //-----------------------------------------------------------
		  
		  newb=new RTOG_Beam_Geometry
		  newb.MLC=new Class_MLC
		  newb.Collimator=new Class_Collimator
		  
		  
		  ff=False
		  
		  for i=0 to ListBox_Beam.ListCount
		    if ListBox_Beam.Selected(i) Then
		      ff=True
		      bbn.append i
		    end
		  next
		  
		  for i=0 to UBound(bbn)
		    bb=gRTOG.plan(Plan_Index).beam(bbn(i))
		    jj=bb.Collimator
		    mm=bb.MLC
		    newb.Beam_Energy=bb.Beam_Energy
		    newb.Beam_DoseRate=bb.Beam_DoseRate
		    newb.Beam_Type=bb.Beam_Type
		    newb.Number_of_Tx=bb.Number_of_Tx
		    newb.Nominal_Isocenter=bb.Nominal_Isocenter
		    newb.Beam_Mode=bb.Beam_Mode
		    newb.RT_name=bb.RT_name
		    newb.SSD=bb.SSD
		    newb.FLEC=new Class_FLEC
		    
		    
		    if UBound(bb.MLC.Fields)>0 Then
		      for k=0 to UBound(mm.Fields)
		        if k>0 Then
		          w=mm.Fields(k).Indexnum-mm.Fields(k-1).Indexnum
		        else
		          w=mm.Fields(k).Indexnum
		        end
		        fieldlet_w.Append (w)*bb.MU*bb.Beam_Weight
		        index_b.Append i
		        index_subf.Append k
		        
		      Next
		      
		    elseif UBound(jj.Fields)>0 Then
		      for k=0 to UBound(jj.Fields)
		        if k>0 Then
		          w=jj.Fields(k).Index-jj.Fields(k-1).Index
		        else
		          w=jj.Fields(k).Index
		        end
		        fieldlet_w.Append (w)*bb.MU*bb.Beam_Weight
		        index_b.Append i
		        index_subf.Append k
		      Next
		      
		    else
		      fieldlet_w.Append bb.MU*bb.Beam_Weight
		      index_b.Append i
		      index_subf.Append 0
		      
		    end
		  Next
		  
		  
		  total_mu=0
		  for i=0 to UBound(index_b)
		    total_mu=total_mu+fieldlet_w(i)
		  Next
		  
		  //Normalize subbeams
		  for i=0 to UBound(index_b)
		    fieldlet_w(i)=fieldlet_w(i)/total_mu
		  Next
		  
		  //Go back to index values
		  //for i=UBound(index_b) DownTo 0
		  //if i=UBound(index_b) Then
		  //fieldlet_w(i)=1
		  //ElseIf i=0 Then Why would this be needed?
		  //fieldlet_w(i)=0
		  //else
		  //fieldlet_w(i)=fieldlet_w(i+1)-fieldlet_w(i)
		  //end
		  //Next
		  
		  for i=0 to UBound(index_b) 
		    if i=0 Then
		      //fieldlet_w(i)=1
		      //ElseIf i=0 Then Why would this be needed?
		      //fieldlet_w(i)=0
		    else
		      fieldlet_w(i)=fieldlet_w(i-1)+fieldlet_w(i)
		    end
		  Next
		  
		  
		  
		  
		  
		  
		  //Made new subfields
		  ReDim newb.Collimator.Fields(UBound(index_b))
		  ReDim newb.MLC.Fields(UBound(index_b))
		  
		  newmm=newb.MLC
		  newjj=newb.Collimator
		  newmm.NumberofFields=UBound(index_b)+1
		  newmm.MLC_Type=mm.MLC_Type
		  newmm.Model=mm.Model
		  newmm.Model_Type=mm.Model_Type
		  newmm.NumberofLeafPairs=mm.NumberofLeafPairs
		  
		  ReDim newmm.LeafBoundaries(UBound(mm.LeafBoundaries))
		  for i=0 to UBound(mm.LeafBoundaries)
		    newmm.LeafBoundaries(i)=mm.LeafBoundaries(i)
		  Next
		  
		  for i=0 to UBound(index_b)
		    newb.Collimator.Fields(i) =new Class_Collimator_Fields
		    newb.Collimator.Fields(i).isocenter=new Class_isocenter
		    newb.Collimator.Fields(i).Index=fieldlet_w(i)
		    newb.MLC.Fields(i)=new Class_MLC_Positions
		    newb.MLC.Fields(i).Indexnum=fieldlet_w(i)
		    
		    newb.MU=total_mu
		    
		    bindex=index_b(i)
		    ffindex=index_subf(i)
		    
		    bb=gRTOG.plan(Plan_Index).beam(bindex)
		    jj=bb.Collimator
		    mm=bb.MLC
		    
		    
		    if UBound(jj.Fields)>=ffindex Then
		      newb.Collimator.Fields(i).isocenter.x=jj.Fields(ffindex).isocenter.x
		      newb.Collimator.Fields(i).isocenter.y=jj.Fields(ffindex).isocenter.y
		      newb.Collimator.Fields(i).isocenter.z=jj.Fields(ffindex).isocenter.z
		      
		      newb.Collimator.Fields(i).Gantry_Angle=jj.Fields(ffindex).Gantry_Angle
		      newb.Collimator.Fields(i).Collimator_Angle=jj.Fields(ffindex).Collimator_Angle
		      newb.Collimator.Fields(i).Couch_Angle=jj.Fields(ffindex).Couch_Angle
		      
		      newb.Collimator.Fields(i).X1=jj.Fields(ffindex).X1
		      newb.Collimator.Fields(i).X2=jj.Fields(ffindex).X2
		      newb.Collimator.Fields(i).y1=jj.Fields(ffindex).y1
		      newb.Collimator.Fields(i).y2=jj.Fields(ffindex).y2
		    else
		      
		      newb.Collimator.Fields(i).isocenter.x=jj.Fields(0).isocenter.x
		      newb.Collimator.Fields(i).isocenter.y=jj.Fields(0).isocenter.y
		      newb.Collimator.Fields(i).isocenter.z=jj.Fields(0).isocenter.z
		      
		      newb.Collimator.Fields(i).Gantry_Angle=jj.Fields(0).Gantry_Angle
		      newb.Collimator.Fields(i).Collimator_Angle=jj.Fields(0).Collimator_Angle
		      newb.Collimator.Fields(i).Couch_Angle=jj.Fields(0).Couch_Angle
		      
		      newb.Collimator.Fields(i).X1=jj.Fields(0).X1
		      newb.Collimator.Fields(i).X2=jj.Fields(0).X2
		      newb.Collimator.Fields(i).y1=jj.Fields(0).y1
		      newb.Collimator.Fields(i).y2=jj.Fields(0).y2
		    end
		    
		    
		    ReDim newmm.Fields(i).Leaf_A(UBound(mm.Fields(ffindex).Leaf_A))
		    ReDim newmm.Fields(i).Leaf_B(UBound(mm.Fields(ffindex).Leaf_B))
		    
		    for k=0 to UBound(mm.Fields(ffindex).Leaf_A)
		      newmm.Fields(i).Leaf_A(k)=mm.Fields(ffindex).Leaf_A(k)
		      newmm.Fields(i).Leaf_B(k)=mm.Fields(ffindex).Leaf_B(k)
		    Next
		  Next
		  
		  
		  
		  
		  if ff Then 
		    newb.Beam_Num=UBound(gRTOG.plan(Plan_Index).beam)+2
		    gRTOG.plan(Plan_Index).beam.append newb
		    MC_AddBeam
		    Beam_Update_Beam
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Beam_Save_Beam(num_beam as integer, col as integer)
		  Dim k as Integer
		  
		  k=plan_index
		  if col=8 then
		    gRTOG.Plan(k).beam(num_beam).Collimator.fields(0).X1=val(ListBox_Beam.Cell(num_beam,8))/2
		    gRTOG.Plan(k).beam(num_beam).Collimator.fields(0).X2 =val(ListBox_Beam.Cell(num_beam,8))/2
		    
		    
		    
		  elseif col=11 then
		    gRTOG.Plan(k).beam(num_beam).Collimator.fields(0).Y1=val(ListBox_Beam.Cell(num_beam,11))/2
		    gRTOG.Plan(k).beam(num_beam).Collimator.fields(0).Y2=val(ListBox_Beam.Cell(num_beam,11))/2
		    
		  else
		    gRTOG.Plan(k).beam(num_beam).beam_Description=ListBox_Beam.Cell(num_beam,1)
		    gRTOG.Plan(k).beam(num_beam).beam_weight= val(ListBox_Beam.Cell(num_beam,3))
		    
		    gRTOG.Plan(k).beam(num_beam).Collimator.Fields(0).collimator_angle=val(ListBox_Beam.Cell(num_beam,5) )
		    gRTOG.Plan(k).beam(num_beam).Collimator.Fields(0).gantry_Angle=val(ListBox_Beam.Cell(num_beam,4))
		    gRTOG.Plan(k).beam(num_beam).Collimator.Fields(0).couch_Angle=val(ListBox_Beam.Cell(num_beam,6) )
		    
		    
		    gRTOG.Plan(k).beam(num_beam).Collimator.fields(0).X1=val(ListBox_Beam.Cell(num_beam,9))
		    gRTOG.Plan(k).beam(num_beam).Collimator.fields(0).X2 =val(ListBox_Beam.Cell(num_beam,10))
		    gRTOG.Plan(k).beam(num_beam).Collimator.fields(0).Y1=val(ListBox_Beam.Cell(num_beam,12))
		    gRTOG.Plan(k).beam(num_beam).Collimator.fields(0).Y2=val(ListBox_Beam.Cell(num_beam,13))
		    
		    gRTOG.Plan(k).beam(num_beam).Collimator.Fields(0).isocenter.x=val(ListBox_Beam.Cell(num_beam,14))
		    gRTOG.Plan(k).beam(num_beam).Collimator.Fields(0).isocenter.y=val(ListBox_Beam.Cell(num_beam,15))
		    gRTOG.Plan(k).beam(num_beam).Collimator.Fields(0).isocenter.z=val(ListBox_Beam.Cell(num_beam,16))
		    gRTOG.Plan(k).beam(num_beam).mu=val(ListBox_Beam.Cell(num_beam,18))
		    gRTOG.Plan(k).beam(num_beam).ssd=val(ListBox_Beam.Cell(num_beam,17))
		    
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Beam_Update_Beam()
		  'Display the current beams in the External beam listbox, depending on the plan index
		  
		  '==================================
		  Dim i,k as Integer
		  Dim col as Class_Collimator_Fields
		  Dim ss as String
		  '================================
		  
		  if ListBox_Beam.Width>1000 Then
		    ListBox_Beam.ColumnWidths="0.5*, *, 2*, 1*,1.2*, *, 1.2*, *, 1.5*, *, *, 1.5*, *, * , *, * ,*, *, *, *, *, *, *, *, *, *, *, *, *, *,0.5*,0.5*, 0.5*, 0.5*,0.5*"
		  else
		    ListBox_Beam.ColumnWidths="50, 80,120, 50,70, 70, 70, 80, 80, 60, 60, 80, 60, 60 , 60, 60 ,60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60,60,60, 60, 60,60"
		  end
		  
		  ListBox_Beam.DeleteAllRows
		  ListBox_Beam.ColumnCount=19
		  ListBox_Beam.Heading(0)="ID"
		  ListBox_Beam.Heading(1)="Description"
		  ListBox_Beam.Heading(2)="Machine/Energy"
		  ListBox_Beam.Heading(3)="Weight"
		  ListBox_Beam.Heading(4)="Gantry Rtn"
		  ListBox_Beam.Heading(5)="Coll Rtn"
		  ListBox_Beam.Heading(6)="Couch Rtn"
		  ListBox_Beam.Heading(7)="Wedge"
		  ListBox_Beam.Heading(8)="Field X (cm)"
		  ListBox_Beam.Heading(9)="X1 (cm)"
		  ListBox_Beam.Heading(10)="X2 (cm)"
		  ListBox_Beam.Heading(11)="Field Y (cm)"
		  ListBox_Beam.Heading(12)="Y1 (cm)"
		  ListBox_Beam.Heading(13)="Y2 (cm)"
		  ListBox_Beam.Heading(14)="X (cm)"
		  ListBox_Beam.Heading(15)="Y (cm)"
		  ListBox_Beam.Heading(16)="Z (cm)"
		  ListBox_Beam.Heading(17)="SSD (cm)"
		  ListBox_Beam.Heading(18)="MU"
		  
		  
		  
		  k=plan_index
		  col = new Class_Collimator_Fields
		  if plan_index >-1 and UBound(gRTOG.Plan)>=Plan_Index then
		    for i=0 to UBound(gRTOG.Plan(k).beam)
		      col=gRTOG.Plan(k).beam(i).collimator.fields(0)
		      
		      ListBox_Beam.AddRow Format(gRTOG.Plan(k).beam(i).beam_num,"#")
		      ListBox_Beam.Cell(i,1) =gRTOG.Plan(k).beam(i).beam_description
		      ListBox_Beam.CellType(i,1)=3
		      ListBox_Beam.Cell(i,2) =gRTOG.Plan(k).beam(i).RT_name +" "+(gRTOG.Plan(k).beam(i).beam_energy )
		      ListBox_Beam.Cell(i,3) =Format(gRTOG.Plan(k).beam(i).beam_weight,"-#.##")
		      ListBox_Beam.CellType(i,3)=3
		      ListBox_Beam.Cell(i,4) =Format(gRTOG.Plan(k).beam(i).Collimator.Fields(0).gantry_Angle,"-#.##")
		      ListBox_Beam.CellType(i,4)=3
		      ListBox_Beam.Cell(i,5) =Format(gRTOG.Plan(k).beam(i).Collimator.Fields(0).collimator_angle,"-#.##")
		      ListBox_Beam.CellType(i,5)=3
		      ListBox_Beam.Cell(i,6) =Format(gRTOG.Plan(k).beam(i).Collimator.Fields(0).couch_Angle,"-#.##")
		      ListBox_Beam.CellType(i,6)=3
		      
		      if gRTOG.Plan(k).Beam(i).Wedge_type ="Dynamic" then
		        ListBox_Beam.Cell(i,7) =gRTOG.Plan(k).Beam(i).Wedge_Angle +" "+left(gRTOG.Plan(k).Beam(i).Wedge_Rotation,1)+" Dyn"
		        
		      elseif gRTOG.Plan(k).Beam(i).Wedge_type ="Static" then
		        ListBox_Beam.Cell(i,7) =gRTOG.Plan(k).Beam(i).Wedge_Angle +" "+left(gRTOG.Plan(k).Beam(i).Wedge_Rotation,1)+" Sta"
		      end
		      
		      ListBox_Beam.Cell(i,8)=Format(col.X1+col.x2,"-#.##")
		      ListBox_Beam.CellType(i,8)=3
		      ListBox_Beam.Cell(i,11)=Format(col.y1+col.y2,"-#.##")
		      ListBox_Beam.CellType(i,11)=3
		      ListBox_Beam.Cell(i,9)=Format(col.X1,"-#.##")
		      ListBox_Beam.CellType(i,9)=3
		      ListBox_Beam.Cell(i,10)=Format(col.x2,"-#.##")
		      ListBox_Beam.CellType(i,10)=3
		      ListBox_Beam.Cell(i,12)=Format(col.y1,"-#.##")
		      ListBox_Beam.CellType(i,12)=3
		      ListBox_Beam.Cell(i,13)=Format(col.y2,"-#.##")
		      ListBox_Beam.CellType(i,13)=3
		      ListBox_Beam.Cell(i,14)=Format(gRTOG.Plan(k).beam(i).Collimator.Fields(0).isocenter.x,"-#.##")
		      ListBox_Beam.CellType(i,14)=3
		      ListBox_Beam.Cell(i,15)=Format(gRTOG.Plan(k).beam(i).Collimator.Fields(0).isocenter.y,"-#.##")
		      ListBox_Beam.CellType(i,15)=3
		      ListBox_Beam.Cell(i,16)=Format(gRTOG.Plan(k).beam(i).Collimator.Fields(0).isocenter.z,"-#.##")
		      ListBox_Beam.CellType(i,16)=3
		      ListBox_Beam.Cell(i,17)=Format(gRTOG.Plan(k).beam(i).ssd,"-#.##")
		      ListBox_Beam.CellType(i,17)=3
		      ListBox_Beam.Cell(i,18)=Format(gRTOG.Plan(k).beam(i).MU,"-#.##")
		      ListBox_Beam.CellType(i,18)=3
		    next
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Dose_DVH()
		  //-----------------------------
		  // Update DVH listbox of 
		  // calculated DVH graphs
		  //
		  //-----------------------------
		  Dim k,i,x as Integer
		  Dim dose_num as integer
		  Dim Dose_distr(-1),temp as String
		  Dim match as Boolean
		  //------------------------------
		  
		  ListBox_DVH_Graphs.deleteAllRows
		  
		  'Count the number of Dose distributions
		  for i =0 to UBound(gDVH.All_DVH)
		    temp=gDVH.All_DVH(i).Name
		    match=False
		    for k=0 to UBound(Dose_distr)
		      if Dose_distr(k)=Temp Then
		        match=True
		      end
		    next
		    if match=False then
		      Dose_distr.append Temp
		    end
		  next
		  
		  
		  ListBox_DVH_Graphs.ColumnCount=UBound(Dose_distr)+1
		  Temp="300"
		  for i=0 to UBound(Dose_distr)-1
		    Temp=temp+",300"
		  next
		  ListBox_DVH_Graphs.columnwidths=Temp
		  
		  
		  for i=0 to ubound(gRTOG.structures)
		    ListBox_DVH_Graphs.addrow ""
		  next
		  
		  for k=0 to UBound(Dose_distr)
		    if ListBox_DVH_Graphs.ColumnCount>k  Then
		      ListBox_DVH_Graphs.Heading(k)=Dose_distr(k) 
		      for x= 0 to UBound(gDVH.All_DVH)
		        if gDVH.All_DVH(x).Name=Dose_distr(k) then
		          for i=0 to ubound(gRTOG.structures)
		            if gDVH.All_DVH(x).struc_names=gRTOG.structures(i).Structure_Name then
		              ListBox_DVH_Graphs.CellType(i,k)=2
		              ListBox_DVH_Graphs.Cell(i,k)=gRTOG.structures(i).Structure_Name 
		            end
		          next
		        end
		      Next
		    end
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Dose_DVH_Structures()
		  //------------------------------
		  // Update DVH calculate list
		  //
		  //------------------------------
		  Dim i as Integer
		  //------------------------------
		  
		  
		  ListBox_DVH_Struc.deleteAllRows
		  ListBox_DVH_Struc.heading(0)="Structure"
		  for i=0 to ubound(gRTOG.structures)
		    ListBox_DVH_Struc.addrow gRTOG.structures(i).Structure_Name
		    ListBox_DVH_Struc.CellType(i,0)=2
		    ListBox_DVH_Struc.CellCheck(i,0)=gRTOG.structures(i).DVH_Calculate
		  next
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Dose_Export2D()
		  //---------------------------------------------
		  // Export a 2D dose plane
		  //
		  // Updates
		  // July 2012, by Lee Sichello 
		  //--------------------------------------------
		  Dim dd as RTOG_Dose_Distribution
		  Dim ts as TextOutputStream
		  Dim f as FolderItem
		  dim dlg as new SaveAsDialog
		  Dim fname,dose_file,One_Line as String
		  Dim i ,k as Integer
		  //---------------------------------------------
		  
		  // Determine which view to export
		  if Canvas_Top.ViewFlag=1 then' Axial plan
		    if gPref.Dose_Interpolate=1 Then
		      dd=gRTOG.Dose_Export_Axial(canvas_top.canvas_slice,dose_index)
		    Elseif gPref.Dose_Interpolate=0 Then
		      dd=gRTOG.Dose_Export_Axial_NoInter(canvas_top.canvas_slice,dose_index)
		    end
		  elseif Canvas_Top.ViewFlag=2 then'Sagittal plan =========================
		    dd=gRTOG.Dose_Export_Sag(canvas_top.canvas_sag,dose_index)
		  elseif Canvas_Top.ViewFlag=3 then 'coronal plan=========================
		    dd=gRTOG.Dose_Export_Cor(Canvas_Top.canvas_cor,dose_index)
		  end
		  
		  if dd=nil Then
		    MsgBox "Could not create dose plane"
		    Return
		  end
		  
		  
		  // Export TEXT Version of Dose Distrbution
		  if gPref.Export_Text_Plane Then
		    dlg.InitialDirectory=GetFolderItem("")
		    dlg.promptText="Choose a file name and location"
		    dlg.SuggestedFileName=fname+".txt"
		    dlg.Title="Save Dose Plane file as"
		    f=dlg.ShowModal()
		    If f <> Nil then
		      //file saved
		    Else
		      Return
		      //user canceled
		    End if
		    
		    ts=f.CreateTextFile
		    dose_file=chr(9)
		    for i=0 to dd.Size_of_Dimension1-1
		      dose_file=dose_file+Format(dd.Coord_1_1st_point+dd.Horizontal_Grid*i,"-#.####")+chr(9)
		    next
		    dose_file=dose_file+chr(13)
		    for i=0 to  dd.Size_of_Dimension2-1
		      dose_file=dose_file+Format(dd.Coord_2_1st_point+dd.Vertical_Grid*i,"-#.####")+chr(9)
		      One_Line=""
		      for k = 0 to  dd.Size_of_Dimension1-1
		        One_Line=One_Line+Format(dd.Dose_Distribution(0).Points(k+i*(dd.Size_of_Dimension1)),"-#.######e")+chr(9)
		        // Updated by Lee to remove a -1 in above equation
		      next
		      dose_file=dose_file+one_line+chr(13)
		    next
		    ts.Write dose_file
		    ts.Close
		    
		  end
		  
		  // Export DICOM version of Dose Distribution
		  if gPref.Export_DICOM_Plane Then
		    gRTOG.Convert_McGillRT2DICOM_RTDose(Plan_Index,dd)
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Dose_Sum_Values()
		  //----------------------------------------------
		  //
		  //
		  //
		  //----------------------------------------------
		  Dim i,k,h, count,c_index as integer
		  Dim Da as RTOG_Dose_Distribution
		  Dim data as RTOG_Dose_Plane
		  Dim dmin, dmax,x,y,z,value as Single
		  //----------------------------------------------
		  
		  Da =gRTOG.Plan(plan_index).Dose(dose_index)
		  
		  dmin=val(TextField_D_Min.Text)
		  dmax=val(TextField_D_Max.Text)
		  
		  Listbox_Dose_Values.DeleteAllRows
		  Listbox_Dose_Values.ColumnCount=5
		  Listbox_Dose_Values.Heading(0)="Number"
		  Listbox_Dose_Values.Heading(1)="Dose (Gy)"
		  Listbox_Dose_Values.Heading(2)="x (cm)"
		  Listbox_Dose_Values.Heading(3)="y (cm)"
		  Listbox_Dose_Values.Heading(4)="z (cm)"
		  
		  count=-1
		  for i = 0 to UBound(Da.Dose_Distribution)
		    data=da.Dose_Distribution(i)
		    z=data.Z
		    
		    for k= 0 to da.Size_of_Dimension1-1
		      for h=0 to da.Size_of_Dimension2-1
		        x=da.Coord_1_1st_point+(k)*da.Horizontal_Grid
		        y=da.Coord_2_1st_point+(h)*da.Vertical_Grid
		        c_index=k+h*da.Size_of_Dimension1
		        
		        // Get values from the  dose distribution
		        value=da.Dose_Distribution(i).Points(c_index)
		        
		        if value>=dmin and value<=dmax Then
		          count=count+1
		          Listbox_Dose_Values.AddRow Format(count+1,"000000")
		          Listbox_Dose_Values.Cell(count,1)=Format(value,"-#.###")
		          Listbox_Dose_Values.Cell(count,2)=Format(x,"-#.###")
		          Listbox_Dose_Values.Cell(count,3)=Format(y,"-#.###")
		          Listbox_Dose_Values.Cell(count,4)=Format(z,"-#.###")
		        end
		      next'end h
		    next'end k
		  next'end i for each plane
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Dose_Update()
		  //------------------------------------------
		  //
		  //
		  //------------------------------------------
		  Dim old, i as Integer
		  
		  //------------------------------------------
		  
		  
		  old=dose_paint_index
		  
		  PopupMenu_Dose_ListStruc.DeleteAllRows
		  PopupMenu_Dose_ListStruc2.DeleteAllRows
		  
		  
		  for i =0 to UBound(gRTOG.Structures)
		    PopupMenu_Dose_ListStruc.AddRow gRTOG.Structures(i).Structure_Name
		    PopupMenu_Dose_ListStruc2.AddRow gRTOG.Structures(i).Structure_Name
		  Next
		  
		  dose_paint_index=old
		  if dose_paint_index>-1 and dose_paint_index<=PopupMenu_Dose_ListStruc.ListCount Then
		    PopupMenu_Dose_ListStruc.ListIndex=dose_paint_index
		    PopupMenu_Dose_ListStruc2.ListIndex=dose_paint_index
		    
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Dose_Update_Points()
		  Dim i,k,count as Integer
		  
		  
		  
		  Listbox_DosePoints.DeleteAllRows
		  Listbox_DosePoints.ColumnCount=5
		  Listbox_DosePoints.ColumnType(1)=3
		  Listbox_DosePoints.ColumnType(2)=3
		  Listbox_DosePoints.ColumnType(3)=3
		  Listbox_DosePoints.Heading(0)="Number"
		  Listbox_DosePoints.Heading(1)="x (cm)"
		  Listbox_DosePoints.Heading(2)="y (cm)"
		  Listbox_DosePoints.Heading(3)="z (cm)"
		  
		  count=0
		  for i=0 to UBound(gRTOG.Plan)
		    for k=0 to UBound(gRTOG.Plan(i).Dose)
		      count=count+1
		      Listbox_DosePoints.ColumnCount=count+4
		      Listbox_DosePoints.Heading(Listbox_DosePoints.ColumnCount-1)=gRTOG.Plan(i).Dose(k).dose_name
		    Next
		  Next
		  
		  for i=0 to UBound(gRTOG.Points)
		    Listbox_DosePoints.AddRow Format(i+1,"000")
		    Listbox_DosePoints.Cell(i,1)=Format(gRTOG.Points(i).X_cm,"-##.##")
		    Listbox_DosePoints.Cell(i,2)=Format(gRTOG.Points(i).y_cm,"-##.##")
		    Listbox_DosePoints.Cell(i,3)=Format(gRTOG.Points(i).z_cm,"-##.##")
		  Next
		  
		  
		  
		  
		  Dose_Update_Points_DoseValues
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Dose_Update_Points_DoseValues()
		  Dim i,m,k,count as Integer
		  Dim pp as Class_Points
		  
		  
		  
		  // Get value on each dose
		  
		  
		  
		  for m=0 to UBound(gRTOG.Points)
		    count=-1
		    for i=0 to UBound(gRTOG.Plan)
		      for k=0 to UBound(gRTOG.Plan(i).Dose)
		        
		        
		        pp = new Class_Points
		        pp.X_cm=gRTOG.Points(m).X_cm
		        pp.Y_cm=gRTOG.Points(m).y_cm
		        pp.Z_cm=gRTOG.Points(m).z_cm
		        
		        if UBound(gRTOG.Plan(i).Dose(k).Points)<UBound(gRTOG.Points) Then
		          gRTOG.Plan(i).Dose(k).points.append pp
		          gRTOG.Plan(i).Dose(k).Points(m).value=RTOG_Dose_Interpolate(pp.X_cm,pp.y_cm,pp.z_cm,gRTOG.Plan(i).Dose(k))
		          
		          
		        elseif gRTOG.Points(m).X_cm=gRTOG.Plan(i).Dose(k).Points(m).x_cm and _
		          gRTOG.Points(m).y_cm=gRTOG.Plan(i).Dose(k).Points(m).y_cm and _
		          gRTOG.Points(m).z_cm=gRTOG.Plan(i).Dose(k).Points(m).z_cm  then
		          
		          
		        else // Must recalculate dose values
		          
		          gRTOG.Plan(i).Dose(k).Points(m).value=RTOG_Dose_Interpolate(pp.X_cm,pp.y_cm,pp.z_cm,gRTOG.Plan(i).Dose(k))
		          
		        end
		        
		        count=count+1
		        Listbox_DosePoints.Cell(m,count+4)=Format(gRTOG.Plan(i).Dose(k).Points(m).value,"-##.####")
		      Next
		    Next
		  Next
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Image_Scale_Setting()
		  
		  
		  
		  if ScaleFlag=1 then
		    Slider_Scale.Value=canvas_top.canvas_scale*100
		  elseif ScaleFlag=2 Then
		    Slider_Scale.Value=canvas_left.canvas_scale*100
		  else
		    Slider_Scale.Value=canvas_right.canvas_scale*100
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Image_Struc_Listbox()
		  Dim i as integer
		  
		  
		  ListBox_Struc.columnwidths="60%,10%,15%,15%"
		  ListBox_Struc.heading(0)="Structure"
		  ListBox_Struc.heading(1)=" "
		  ListBox_Struc.Heading(2)="Fill"
		  ListBox_Struc.heading(3)="Show"
		  
		  ListBox_Struc.deleteAllRows
		  
		  for i=0 to ubound(gRTOG.structures)
		    ListBox_Struc.addrow gRTOG.structures(i).Structure_Name
		    ListBox_Struc.celltype(i,2)=2
		    ListBox_Struc.celltype(i,3)=2
		    ListBox_Struc.celltype(i,0)=1
		    
		    if i<= UBound(gVis.contour_fill) Then
		      ListBox_Struc.cellCheck(i,2)=gvis.contour_fill(i)
		    end
		    
		    
		    if i<=UBound(gVis.contour_show)  Then
		      ListBox_Struc.cellCheck(i,3)=gvis.contour_show(i)
		    end
		    
		    
		    
		  next
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MC_Cutout_progress()
		  DIm i,k as Integer
		  
		  
		  ListBox_MC_Cutout.columnwidths="30%,70%"
		  ListBox_MC_Cutout.Heading(0)="Calculate Beam"
		  ListBox_MC_Cutout.Heading(1)="Cutout Progress"
		  ListBox_MC_Cutout.DeleteAllRows
		  
		  k=plan_index
		  if k>-1 and UBound(gRTOG.Plan)>=k then
		    if UBound(gCutout.Beams)=UBound(gRTOG.Plan(k).beam) Then
		      for i =0 to UBound(gRTOG.Plan(k).beam)
		        ListBox_MC_Cutout.AddRow str(i+1)
		        ListBox_MC_Cutout.celltype(i,0)=2
		        ListBox_MC_Cutout.CellAlignment(i,1)=2
		        ListBox_MC_Cutout.CellCheck(i,0)=gCutout.Beams(i).calculate
		      next
		    end
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MC_dosxyz_beam_progress()
		  //----------------------------
		  //
		  //----------------------------
		  DIm i,k,j,length as Integer
		  Dim temp as String
		  Dim p as Picture
		  DIm bb as Boolean
		  //----------------------------
		  
		  p=New Picture(1,1,1) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		  
		  ListBox_MC_DOS.DeleteAllRows
		  ListBox_MC_DOS.ColumnCount=UBound(gDOSXYZ.DOSXYZ)+2
		  ListBox_MC_DOS.Heading(0)="Beam Number"
		  
		  
		  length= p.Graphics.StringWidth("Beam Number")+50
		  temp=str(length)+","
		  
		  
		  for i =0 to UBound(gDOSXYZ.DOSXYZ)
		    ListBox_MC_DOS.Heading(i+1)=gDOSXYZ.dosxyz(i).egsphantsettings.name +" ("+Format(gDOSXYZ.DOSXYZ(i).Complete,"#.#")+")"
		    length= p.Graphics.StringWidth(ListBox_MC_DOS.Heading(i+1))+50
		    if i= UBound(gDOSXYZ.DOSXYZ) Then
		      temp=temp+str(length)
		    else
		      temp=temp+str(length)+","
		    end
		  next
		  ListBox_MC_DOS.ColumnWidths=Temp
		  
		  
		  
		  
		  j=plan_index
		  if j>-1 and UBound(gRTOG.Plan)>=j then
		    for i =0 to UBound(gRTOG.Plan(j).beam)
		      ListBox_MC_DOS.AddRow str(i+1)
		      for k=1 to UBound(gDOSXYZ.DOSXYZ)+1
		        ListBox_MC_DOS.CellAlignment(i,k)=2
		        ListBox_MC_DOS.celltype(i,k)=2
		        if UBound(gDOSXYZ.DOSXYZ(k-1).DOSXYZ_Input)>=i Then
		          ListBox_MC_DOS.CellCheck(i,k)=gDOSXYZ.DOSXYZ(k-1).DOSXYZ_Input(i).dos_calculate
		        end
		      next
		    next
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MC_egs_beam_progress()
		  DIm i,k as Integer
		  
		  
		  ListBox_MC_Beam.columnwidths="30%,70%" //These listboxes cause crashes-William Davis
		  ListBox_MC_Beam.Heading(0)="Calculate Beam"
		  ListBox_MC_Beam.Heading(1)="BEAMnrc Progress"
		  ListBox_MC_Beam.DeleteAllRows
		  
		  k=plan_index
		  if k>-1 and UBound(gRTOG.Plan)>=k then
		    for i =0 to UBound(gRTOG.Plan(k).beam)
		      ListBox_MC_Beam.AddRow str(i+1)
		      ListBox_MC_Beam.celltype(i,0)=2
		      ListBox_MC_Beam.CellAlignment(i,1)=2
		      
		      if i<=UBound(gBEAM.Beams) Then
		        ListBox_MC_Beam.CellCheck(i,0)=gBEAM.Beams(i).calculate
		      end
		    next
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MC_vmc_beam_progress()
		  DIm i,k,j as Integer
		  
		  
		  ListBox_MC_VMC.ColumnCount=UBound(gVMC.vmc)+2
		  ListBox_MC_vmc.Heading(0)="Beam Number"
		  for i =0 to UBound(gVMC.vmc)
		    gVMC.VMC(i).Calculate_Complete
		    ListBox_MC_vmc.Heading(i+1)=gVMC.vmc(i).DMX.dmx_name+" ("+Format(gVMC.vmc(i).Complete,"#.#")+")"
		  next
		  ListBox_MC_vmc.DeleteAllRows
		  j=plan_index
		  if j>-1 and UBound(gRTOG.Plan)>=j then
		    for i =0 to UBound(gRTOG.Plan(j).beam)
		      ListBox_MC_vmc.AddRow str(i+1)
		      for k=1 to UBound(gVMC.vmc)+1
		        ListBox_MC_vmc.Cell(i,k) =Str(gVMC.vmc(k-1).BEAMS(i).progress)+" %"
		        ListBox_MC_VMC.CellCheck(i,k)=gVMC.VMC(k-1).BEAMS(i).calculate
		        ListBox_MC_vmc.celltype(i,k)=2
		        ListBox_MC_vmc.CellAlignment(i,k)=2
		        
		      next
		    next
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Profiles_Update_Results()
		  Dim i,k,type,tt,index(-1),width as Integer
		  Dim ener,f_x,f_y,depth as Single
		  Dim found as Boolean
		  Dim energy,vv,type_string,field,name(-1),depth_S as String
		  //-------------------------------------
		  
		  ListBox_Dose_profiles_Result.DeleteAllRows
		  ListBox_Dose_profiles_Result.Heading(1)="Point 1"
		  ListBox_Dose_profiles_Result.Heading(2)="Point 2"
		  
		  
		  
		  
		  width=10
		  
		  for i=0 to UBound(gRTOG.Profiles.One_Profile)
		    vv=gRTOG.profiles.One_Profile(i).Linac+" "+str(gRTOG.Profiles.One_Profile(i).Energy)+" "+gRTOG.Profiles.One_Profile(i).Label
		    name.Append vv
		    index.Append i
		  next
		  
		  
		  
		  
		  for i=0 to UBound(name)
		    if len(name(i))> width Then
		      width=len(name(i))
		    end
		    ListBox_Dose_profiles_Result.AddRow name(i)
		    ListBox_Dose_profiles_Result.CellType(i,0)=2
		    ListBox_Dose_profiles_Result.Cell(i,1)=Format(gRTOG.Profiles.One_Profile(index(i)).Pointa.x_cm,"-#.##")+", "+Format(gRTOG.Profiles.One_Profile(index(i)).Pointa.y_cm,"-#.##")+", "+Format(gRTOG.Profiles.One_Profile(index(i)).Pointa.z_cm,"-#.##")
		    ListBox_Dose_profiles_Result.Cell(i,2)= Format(gRTOG.Profiles.One_Profile(index(i)).Pointb.x_cm,"-#.##")+", "+Format(gRTOG.Profiles.One_Profile(index(i)).Pointb.y_cm,"-#.##")+", "+Format(gRTOG.Profiles.One_Profile(index(i)).Pointb.z_cm,"-#.##")
		    ListBox_Dose_profiles_Result.Cell(i,3)= Format(index(i),"#")
		  Next
		  
		  ListBox_Dose_profiles_Result.ColumnWidths=str(width*10)+",100,100,0"
		  ListBox_Dose_profiles_Result.ListIndex=0
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Profile_RulerUpdate()
		  Dim rr as Class_Ruler
		  
		  ruler_change=False
		  rr= new Class_Ruler
		  rr.Point1=new Class_Points
		  rr.Point2=new Class_Points
		  
		  if RadioButton_top.Value then
		    rr=Canvas_top.Ruler
		  elseif RadioButton_left.Value then
		    rr=Canvas_left.Ruler
		  elseif RadioButton_right.Value then
		    rr=Canvas_right.Ruler
		  end
		  
		  
		  EditField_point1.Text=Format(rr.point1.x_cm,"-##.###")+" , "+Format(rr.point1.y_cm,"-##.###")+" , "+Format(rr.point1.z_cm,"-##.###")
		  EditField_point2.Text=Format(rr.point2.x_cm,"-##.###")+" , "+Format(rr.point2.y_cm,"-##.###")+" , "+Format(rr.point2.z_cm,"-##.###")
		  
		  ruler_change=True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Window_canvas_refresh()
		  Canvas_Top.ReMake
		  Canvas_left.ReMake
		  Canvas_right.ReMake
		  
		  
		  if app.which_window_3d Then
		    if Window_3DView.Canvas_3D(0)<> nil Then
		      Window_3DView.Canvas_3D(0).Update_Room
		      //Window_3DView.'Canvas_3D(0).Refresh
		    end
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Window_canvas_refresh_Dose()
		  Canvas_Top.ReMake_Dose
		  Canvas_left.ReMake_Dose
		  Canvas_right.ReMake_Dose
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Window_canvas_refresh_Image()
		  Canvas_Top.ReMake_Image
		  Canvas_left.ReMake_Image
		  Canvas_right.ReMake_Image
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Window_canvas_refresh_Structure()
		  Canvas_Top.ReMake_Structure
		  
		  
		  Canvas_left.ReMake_Structure
		  
		  
		  Canvas_right.ReMake_Structure
		  
		  
		  if app.which_window_3d Then
		    Window_3DView.Canvas_3D(0).Update_Room
		    //Window_3DView.'Canvas_3D(0).Refresh
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Window_canvas_repaint()
		  Canvas_Top.RePaint
		  Canvas_Left.RePaint
		  Canvas_Right.RePaint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Window_Cleanup()
		  if App.which_window_BEAM_Options Then
		    Window_BEAM_Options.Close
		  end
		  if app.which_window_DOSYXZ_Options Then
		    Window_DOSXYZ_Properties.Close
		  end
		  if App.which_window_BEAM_Phsp Then
		    Window_BEAM_Phsp_Information.Close
		  end
		  
		  if app.which_window_DVH Then
		    Window_DVH_Plot.Close
		  end
		  
		  ListBox_MC_VMC.DeleteAllRows
		  ListBox_Plan.DeleteAllRows
		  ListBox_Struc.DeleteAllRows
		  ListBox_Beam.DeleteAllRows
		  ListBox_MC_Beam.DeleteAllRows
		  if gVMC<> nil Then
		    gVMC.Kill
		  end
		  if gBEAM<> nil Then
		    gBEAM.Kill
		  end
		  if gDOSXYZ<> nil Then
		    gDOSXYZ.Kill
		  end
		  
		  ReDim gDVH.All_DVH(-1)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Window_Open()
		  DoNothing=True
		  
		  
		  Image_Struc_Listbox
		  canvas_top.canvas_slice=gvis.nz/2
		  canvas_top.canvas_cor=gvis.ny/2
		  canvas_top.canvas_sag=gvis.nx/2
		  
		  canvas_left.canvas_slice=gvis.nz/2
		  canvas_left.canvas_cor=gvis.ny/2
		  canvas_left.canvas_sag=gvis.nx/2
		  
		  canvas_right.canvas_slice=gvis.nz/2
		  canvas_right.canvas_cor=gvis.ny/2
		  canvas_right.canvas_sag=gvis.nx/2
		  
		  Slider_Window_Level.Minimum=gvis.min_pix-1
		  Slider_Window_Level.Maximum=gvis.max_pix+1
		  Slider_Window_Width.Minimum=0
		  Slider_Window_Width.Maximum=gvis.max_pix-gvis.min_pix+1
		  
		  Slider_Window_Level.Value=gvis.WL
		  Slider_Window_Width.Value=gvis.ww
		  StaticText_level.Text="Level : "+str(gvis.wl)
		  StaticText_window.Text="Window : "+str(gvis.ww)
		  
		  Slider_Scale.Maximum=5000
		  Slider_Scale.Minimum=10
		  
		  canvas_top.canvas_scale=1
		  canvas_left.canvas_scale=1
		  canvas_right.canvas_scale=1
		  Slider_Scale.Value=100
		  
		  canvas_top.Pan_X=0
		  canvas_top.Pan_y=0
		  canvas_left.Pan_X=0
		  canvas_left.Pan_Y=0
		  canvas_right.Pan_X=0
		  canvas_right.Pan_Y=0
		  
		  Slider_bot.Minimum=0
		  Slider_bot.Maximum=100
		  
		  dose_index=-1
		  
		  Slider_top.Minimum=0
		  Slider_top.Maximum=100
		  
		  Slider_Structure_Trans.Maximum=100
		  Slider_Structure_Trans.Minimum=0
		  Slider_Structure_Trans.Value=60
		  
		  Slider_Dose_Trans.Maximum=100
		  Slider_Dose_Trans.Minimum=0
		  Slider_Dose_Trans.Value=60
		  plan_index=-1
		  
		  Canvas_Top.ViewFlag=1
		  canvas_left.ViewFlag=2
		  canvas_right.ViewFlag=3
		  
		  Canvas_Top.Ruler.Point1.X_cm=gVis.xoff_set+10
		  Canvas_Left.Ruler.Point1.X_cm=gVis.xoff_set+10
		  Canvas_Right.Ruler.Point1.X_cm=gVis.xoff_set+10
		  
		  Canvas_Top.Ruler.Point1.y_cm=gVis.yoff_set+10
		  Canvas_Left.Ruler.Point1.y_cm=gVis.yoff_set+10
		  Canvas_Right.Ruler.Point1.y_cm=gVis.yoff_set+10
		  
		  Canvas_Top.Ruler.Point1.z_cm=gVis.zoff_set-10
		  Canvas_Left.Ruler.Point1.z_cm=gVis.zoff_set-10
		  Canvas_Right.Ruler.Point1.z_cm=gVis.zoff_set-10
		  
		  Canvas_Top.Ruler.Point2.X_cm=gVis.xoff_set+15
		  Canvas_Left.Ruler.Point2.X_cm=gVis.xoff_set+15
		  Canvas_Right.Ruler.Point2.X_cm=gVis.xoff_set+15
		  
		  Canvas_Top.Ruler.Point2.y_cm=gVis.yoff_set+15
		  Canvas_Left.Ruler.Point2.y_cm=gVis.yoff_set+15
		  Canvas_Right.Ruler.Point2.y_cm=gVis.yoff_set+15
		  
		  Canvas_Top.Ruler.Point2.z_cm=gVis.zoff_set-15
		  Canvas_Left.Ruler.Point2.z_cm=gVis.zoff_set-15
		  Canvas_Right.Ruler.Point2.z_cm=gVis.zoff_set-15
		  
		  MC_Initialize
		  
		  if UBound(gRTOG.Plan)>-1 Then
		    Plan_Index=0
		  else
		    Plan_Index=-1
		  end
		  
		  MC_Open_settings(Plan_Index)
		  gDVH.Read_DVH
		  EditField_DVHBins.Text=str(gDVH.DVHBins)
		  Dose_DVH_Structures
		  Dose_DVH
		  window_update_plan
		  beam_update_beam
		  Window_canvas_refresh
		  Dose_Update_Points
		  DoNothing=False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Window_Resize()
		  DoNothing=True
		  
		  Canvas_Width=Slider_bot.Width
		  Canvas_height=Slider_top.Height
		  
		  // Update Top Canvas
		  Canvas_Top.Width=Canvas_Width
		  Canvas_Top.Height=(Slider_top.Value/100)*Canvas_height-4
		  Canvas_Top.Width=Slider_bot.Width
		  Canvas_Top.Canvas_Resize
		  
		  // Update Left Canvas
		  Canvas_left.Height=(Canvas_height-Canvas_Top.Height)-4
		  Canvas_left.Top=Canvas_Top.Height+Canvas_Top.top+4
		  Canvas_left.Width=(Slider_bot.Value/100)*Canvas_Width-2
		  Canvas_Left.Canvas_Resize
		  
		  // Update Right Canvas
		  Canvas_right.Height=(Canvas_height-Canvas_Top.Height)-4
		  Canvas_right.Top=Canvas_Top.Height+Canvas_Top.top+4
		  Canvas_right.Width=Canvas_Width-Canvas_left.Width-2
		  Canvas_right.Left=Canvas_left.Left+Canvas_left.Width+4
		  Canvas_Right.Canvas_Resize
		  
		  //Update Canvas 3D
		  //GroupBox_3Dview.Visible=False
		  //end
		  Beam_update_beam
		  DoNothing=False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Window_Update_Plan()
		  //----------------------------------------
		  // Updates the Plan listbox with hierarchical option
		  //
		  //----------------------------------------
		  Dim i, u,max_length,length as Integer
		  Dim name,name2, s1,sub1 ,s2,temp as String
		  Dim p as Picture
		  //----------------------------------------
		  
		  Window_update_plan_now=False
		  
		  DoNothing=True
		  p=New Picture(1,1,1) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		  ListBox_Plan.DeleteAllRows
		  ListBox_Plan.ColumnCount=3
		  length=ListBox_Plan.Width
		  '==================Find Strings for folder listbox
		  ' get Plans and doses from each plan
		  for i = 0 to UBound(gRTOG.Plan)
		    name=gRTOG.Plan(i).Plan_ID+" "+gRTOG.Plan(i).Plan_Name
		    if i>0 then
		      s1=s1+","+name+"%"+str(i)
		    else
		      s1=name+"%"+str(i)
		    end
		    s2=""
		    for u=0 to UBound(gRTOG.Plan(i).Dose)
		      name2=gRTOG.Plan(i).Dose(u).dose_name
		      if (p.Graphics.StringWidth(name2)+50)>length Then
		        length= p.Graphics.StringWidth(name2)+50
		      end
		      
		      if u>0  then
		        s2=s2+","+name2+"%"+str(i)
		      elseif u=0 then
		        s2=name2+"%"+str(i)
		      end
		    next
		    if i >0 then
		      sub1=sub1+";"+s2
		    elseif i=0 Then
		      sub1=s2
		    end if
		  next
		  '=========================
		  
		  
		  temp=str(length)+",0,0,0,0"
		  ListBox_Plan.columnwidths=Temp
		  
		  
		  u=CountFields(s1,",")
		  For i=1 to u
		    ListBox_Plan.addfolder ""
		    temp=NthField(s1,",",i)
		    // Place the plan number and name
		    ListBox_Plan.cell(i-1,0)=NthField(temp,"%",1)
		    ListBox_Plan.cell(i-1,1)=NthField(sub1,";",i)
		    //Place the plan index
		    ListBox_Plan.cell(i-1,2)=NthField(temp,"%",2)
		  Next
		  
		  
		  ListBox_Plan.hierarchical=true
		  ReDim Plan_Expanded_Listbox(u-1)
		  DoNothing=False
		  
		  
		  
		  for i=UBound(Plan_Expanded_Listbox) DownTo 0
		    if Plan_Expanded_Listbox(i) Then
		      ListBox_Plan.Expanded(i)=True
		    end
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Canvas_height As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Canvas_refresh_Image_Contours As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Canvas_refresh_Image_WL As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Canvas_Width As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			1= hot
			2=jet
		#tag EndNote
		colour_wash As Integer = 2
	#tag EndProperty

	#tag Property, Flags = &h0
		DoNothing As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		dose_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		dose_paint_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		dose_paint_size As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		DOSXYZnrc_Column As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		DVH_Column As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		DVH_Row As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		MC_egs_beam_progress_update As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Move_CrossHairs As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Plan_Expanded_Listbox(-1) As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		ruler_change As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		Save_Beams As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Save_Dose As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		ScaleFlag As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		Window_update_plan_now As boolean = false
	#tag EndProperty


#tag EndWindowCode

#tag Events ListBox_Plan
	#tag Event
		Sub CollapseRow(row As Integer)
		  Dim i,u,NSubRows,ppp_index as Integer
		  
		  NSubRows=CountFields(Me.cell(row,1),",")
		  u=row+1
		  For i=row+NSubRows downto u
		    Me.removerow i
		  Next
		  ppp_index=val(me.Cell(me.ListIndex,2))
		  
		  if ppp_index<=UBound(gRTOG.Plan) Then
		    Plan_Expanded_Listbox(ppp_index)=False
		    
		  end
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  Me.expanded(Me.listindex)=Not Me.expanded(Me.listindex)
		End Sub
	#tag EndEvent
	#tag Event
		Sub ExpandRow(row As Integer)
		  Dim s1,temp as String
		  Dim i,u, ppindex as Integer
		  
		  
		  s1=me.cell(row,1)
		  u=CountFields(s1,",")
		  temp=NthField(s1,",",1)
		  ppindex=val(me.Cell(row,2))
		  
		  For i=1 to u
		    temp=NthField(s1,",",i)
		    Me.addrow ""
		    Me.cell(me.lastIndex,0)=NthField(temp,"%",1)
		    
		    // Place Plan index
		    Me.Cell(me.lastIndex,2)=str(ppindex)
		    
		    //Place the dose index
		    me.cell(me.LastIndex,3)=str(i-1)
		    
		  Next
		  Plan_Expanded_Listbox(ppindex)=True
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  //------------------------------------------
		  // Determine the Plan index and the dose index, 
		  // from the row selected on the Plan listbox,
		  // then update Beam listbox and Canvas
		  //
		  //------------------------------------------
		  Dim s as string
		  Dim old,i,old_d,temp_plan_index as integer
		  //------------------------------------------
		  
		  
		  if DoNothing Then
		    Return
		  end
		  
		  old=plan_index
		  old_d=dose_index
		  
		  if me.ListIndex=-1 Then
		    dose_index=-1
		    Return
		  end
		  
		  // Find plan index
		  s=ListBox_Plan.Cell(ListBox_Plan.ListIndex,2)
		  if len(s)=0 Then
		    temp_plan_index=-1
		  else
		    temp_plan_index=val(s)
		  end
		  
		  
		  // No threads running
		  if gBEAM.State=4 and gVMC.State=4 and gDOSXYZ.State=4 and UBound(MMCTP_Shell_Refresh.All)=-1 and UBound(MMCTP_Shell_Run.All)=-1 and UBound(MMCTP_Download.All)=-1 then
		    Plan_Index=temp_plan_index
		    'Do updates if things changed
		    if old<>plan_index then
		      MC_Open_settings(plan_index)
		      beam_update_beam
		    end
		    
		    
		  else // threads ARE  running do not change the planindex
		    
		    if temp_plan_index<>Plan_Index Then
		      //Loop to find old plan index
		      for i=0 to ListBox_Plan.ListCount-1
		        if val(ListBox_Plan.Cell(i,2))=old Then
		          ListBox_Plan.ListIndex=i
		          Return
		        end
		      next
		    end
		  end
		  
		  
		  'FInd dose index
		  s=ListBox_Plan.Cell(ListBox_Plan.ListIndex,3)
		  if len(s)=0 Then
		    dose_index=-1
		  else
		    dose_index=val(s)
		  end
		  
		  
		  if old_d<>dose_index or old<>Plan_Index   then
		    if UBound(gRTOG.Plan(Plan_Index).Dose)>=Window_Treatment.dose_index and Window_Treatment.dose_index >=0 Then
		      Window_Treatment.Canvas_Top.thedose=gRTOG.plan(plan_index).dose(Window_Treatment.dose_index)
		      Window_Treatment.Canvas_Left.thedose=gRTOG.plan(plan_index).dose(Window_Treatment.dose_index)
		      Window_Treatment.Canvas_Right.thedose=gRTOG.plan(plan_index).dose(Window_Treatment.dose_index)
		      gVis.Iso.Calculate_Values
		    else
		      Window_Treatment.Canvas_Top.thedose=Nil
		      Window_Treatment.Canvas_Left.thedose=Nil
		      Window_Treatment.Canvas_Right.thedose=Nil
		    end
		    Window_canvas_refresh_Dose
		  end
		  
		  // 1st generate a 2D dose plane
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  if gBEAM.State<>4 or gDOSXYZ.State<>4 or gVMC.State<> 4  then
		    Return False
		  end
		  
		  
		  
		  dim MI as MenuItem
		  
		  MI = New MenuItem
		  MI.Text = "Add Plan"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "Rename"
		  base.Append MI
		  
		  
		  Return True
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  //--------------------------
		  //
		  //--------------------------
		  Dim f as FolderItem
		  Dim s as String
		  Dim i as Integer
		  Dim gg as RTOG_Plan
		  //--------------------------
		  
		  
		  Select Case hitItem.Text
		  Case "Add Plan"
		    gg=gRTOG.Add_Plan
		    window_update_plan
		    beam_update_beam
		  Case "Rename"
		    if dose_index>-1 Then // "Dose Delete"
		      if Plan_Index>-1 and Plan_Index<=UBound(gRTOG.Plan) Then
		        if dose_index<=UBound(gRTOG.Plan(Plan_Index).Dose) Then
		          Window_Rename.Dose=True
		          Window_Rename.doseindex=dose_index
		          Window_Rename.Plan=Plan_Index
		          Window_Rename.OpenWin
		          
		        end
		      end
		    elseif Plan_Index>-1 and Plan_Index<=UBound(gRTOG.Plan) Then
		      Window_Rename.Dose=False
		      Window_Rename.Plan=Plan_Index
		      Window_Rename.OpenWin
		    end
		    
		    window_update_plan
		    beam_update_beam
		  End Select
		  
		  Return True
		  
		End Function
	#tag EndEvent
	#tag Event
		Function HeaderPressed(column as Integer) As Boolean
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function CellTextPaint(g As Graphics, row As Integer, column As Integer, x as Integer, y as Integer) As Boolean
		  
		  if len(me.Cell(row,3))>0 then
		    g.foreColor=rgb(102,30,31)
		  else
		    g.foreColor=rgb(0,0,255)
		  end
		End Function
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  Dim i as Integer
		  Dim s as String
		  
		  if Key=Chr(127) or Key=Chr(8) Then
		    
		    if dose_index>-1 Then // "Dose Delete"
		      if Plan_Index>-1 and Plan_Index<=UBound(gRTOG.Plan) Then
		        if dose_index<=UBound(gRTOG.Plan(Plan_Index).Dose) Then
		          i=MsgBox("Delete dose : "+gRTOG.Plan(Plan_Index).Dose(dose_index).Dose_name+" ?", 1,"Warning" )
		          if i=1 Then
		            if gPref.DVH_clean Then
		              gDVH.Delete_DVH_Set(gRTOG.Plan(Plan_Index).Dose(dose_index).Dose_name)
		              Dose_DVH
		            end
		            gRTOG.Plan(Plan_Index).Delete_Dose(plan_index, dose_index)
		            Window_Treatment.dose_index=-1
		            Window_Treatment.window_update_plan
		            Window_Treatment.beam_update_beam
		          end
		        end
		      end
		      
		    else //Plan Delete"
		      
		      if uBound(MMCTP_Shell_Refresh.All)<>-1 or uBound(MMCTP_Shell_Run.All)<>-1 Then
		        MsgBox "Can not delete plan while SSH shell is still running"
		        Return True
		      end
		      
		      if  UBound(MMCTP_Download.All)<>-1 Then
		        MsgBox "Can not delete plan while FTP shell is still running"
		        Return True
		      end
		      
		      i=MsgBox("Are you sure you want to delete Plan "+chr(13)+gRTOG.Plan(Plan_Index).Plan_ID +" "+gRTOG.Plan(Plan_Index).Plan_Name+"?",1,"Warning")
		      
		      if i=1 Then
		        if Plan_Index>-1 and Plan_Index<=UBound(gRTOG.Plan) Then
		          gRTOG.Delete_Plan(Plan_Index)
		          Plan_Expanded_Listbox.Remove Plan_Index
		          Plan_Index=-1
		          window_update_plan
		          beam_update_beam
		        end
		      end
		      
		      
		      
		    end
		  end
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Slider_top
	#tag Event
		Sub ValueChanged()
		  Window_Resize
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider_bot
	#tag Event
		Sub ValueChanged()
		  Window_Resize
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TabPanel_Views
	#tag Event
		Sub Change()
		  if me.Value=0 Then
		    Beam_update_beam
		  elseif me.Value=1 Then
		    MC_egs_beam_progress
		  elseif me.Value=2 Then
		    MC_Cutout_progress
		  elseif me.Value=3 Then
		    MC_dosxyz_beam_progress
		    
		    
		  Elseif me.Value=6 Then
		    Dose_Update
		    
		  Elseif me.Value=8 Then
		    Profiles_Update_Results
		    Profile_RulerUpdate
		    
		  elseif me.Value=9 Then
		    MC_vmc_beam_progress
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_DoseProfile_Properties
	#tag Event
		Sub Action()
		  Dim i,ii as Integer
		  
		  for i=0 to ListBox_Dose_profiles_Result.ListCount-1
		    ii=i
		    if ListBox_Dose_profiles_Result.CellCheck(i,0) and ii>-1 and ii<=UBound(gRTOG.Profiles.One_Profile)Then
		      Window_Profile_Properties.Show
		      Window_Profile_Properties.One= new Class_Profile_One
		      Window_Profile_Properties.One=gRTOG.Profiles.One_Profile(ii)
		      Window_Profile_Properties.Open_Pro
		      Exit
		    end
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ListBox_Beam
	#tag Event
		Sub DoubleClick()
		  Dim i,j  as integer
		  
		  for i =0 to UBound(gRTOG.Plan(Plan_Index).Beam)
		    if me.Selected(i) = True then
		      j=i
		    end
		  next
		  
		  Window_Beam_Properties.open_Now(j)
		  Save_Beams=True
		  gRTOG.Plan(Plan_Index).Save_Plan=True
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  
		  if Plan_Index>=0 Then
		    dim MI as MenuItem
		    
		    MI = New MenuItem
		    MI.Text = "Add Beam"
		    base.Append MI
		    MI = New MenuItem
		    MI.Text = "Delete Beam"
		    base.Append MI
		    MI = New MenuItem
		    MI.Text = "Copy Beam"
		    base.Append MI
		    MI = New MenuItem
		    MI.Text = "Merge Beams"
		    base.Append MI
		    MI = New MenuItem
		    MI.Text = "Separate dynamic fields"
		    base.Append MI
		    Return True
		  end
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Dim i as Integer
		  
		  Select Case hitItem.Text
		  Case "Add Beam"
		    gRTOG.Plan(plan_index).Add_Beam
		    
		  Case "Delete Beam"
		    if ListBox_Beam.ListIndex>-1 and UBound(MMCTP_Shell_Refresh.All) =-1  and UBound(MMCTP_Shell_Run.All) =-1 then
		      for i=me.ListCount DownTo 0 
		        if me.Selected(i) Then 
		          gRTOG.Plan(plan_index).Delete_Beam(i)
		        end
		      next
		      MC_Save_settings
		      
		    elseif  UBound(MMCTP_Shell_Refresh.All) >-1 or  UBound(MMCTP_Shell_Run.All) >-1 Then
		      MsgBox "Can not delete while shell is active"
		    end
		    
		  Case "Copy Beam"
		    Window_CopyBeam.Show
		  Case "Merge Beams"
		    Beam_Merge
		    
		  case "Separate dynamic fields"
		    for i=me.ListCount DownTo 0
		      if me.Selected(i) Then
		        gRTOG.Plan(Plan_Index).Split_DYNAMIC_Fields(i)
		      end
		    Next
		    
		  End Select
		  beam_update_beam
		  Save_Beams=True
		  gRTOG.Plan(Plan_Index).Save_Plan=True
		  
		  Return True
		  
		End Function
	#tag EndEvent
	#tag Event
		Function HeaderPressed(column as Integer) As Boolean
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.ScrollBarHorizontal=true
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  If row Mod 2=0 then
		    
		    g.foreColor= RGB(170,195,245)
		    
		    g.FillRect 0,0,g.width,g.height
		    
		  else
		    'g.foreColor= RGB(172,255,145)
		  end if
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  if DoNothing=False Then
		    Beam_Save_Beam(row,Column)
		    
		    
		    Save_Beams=True
		    gRTOG.Plan(Plan_Index).Save_Plan=True
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellLostFocus(row as Integer, column as Integer)
		  Beam_update_beam
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  RTOGBeam_Index=me.ListIndex
		  
		  if DoNothing=False Then
		    if app.which_window_3d Then
		      Window_3DView.Update_Settings
		      if Window_3DView.Canvas_3D(0)<>nil Then
		        Window_3DView.Canvas_3D(0).Update_Beaminfo
		        Window_3DView.Canvas_3D(0).Update_Camera_Position
		        //Window_3DView.'Canvas_3D(0).Refresh
		      end
		    end
		  end
		  
		  Canvas_Top.Repaint
		  Canvas_left.RePaint
		  Canvas_right.Repaint
		End Sub
	#tag EndEvent
	#tag Event
		Function CellKeyDown(row as Integer, column as Integer, key as String) As Boolean
		  
		  
		  Return False
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events ListBox_MC_Beam
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  Dim k as integer
		  Dim pro as Single
		  
		  
		  
		  If row Mod 2=0 then
		    g.foreColor= RGB(170,195,245)
		    g.FillRect 0,0,g.width,g.height
		  else
		    'g.foreColor= RGB(172,255,145)
		  end if
		  
		  
		  k=plan_index
		  if k>-1 and UBound(gRTOG.Plan)>=k then
		    if column=1 and row<=UBound(gRTOG.Plan(k).beam) and row<=UBound(gBEAM.Beams) and row<=me.ListCount-1 then
		      pro=gBEAM.Beams(row).egs_progress
		      g.ForeColor=RGB(255,0,0)
		      g.fillrect 0,0, g.width, g.height
		      if pro= -1 then
		        me.Cell(row,column) ="Not Started"
		      elseif pro=100 then
		        me.Cell(row,1) ="Complete"
		      elseif gBEAM.Beams(row).Beamnrc_error Then
		        me.Cell(row,1) ="BEAMnrc simulation error"
		      else
		        me.Cell(row,1) =Format(pro,"#.#")+" %"
		      end
		      g.ForeColor=RGB(0,255,0)
		      g.fillrect 0,0, g.width*pro/100, g.height
		    end
		  end
		  
		End Function
	#tag EndEvent
	#tag Event
		Function HeaderPressed(column as Integer) As Boolean
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  Dim i as Integer
		  Dim bb as Boolean
		  
		  bb=me.CellCheck(row,0)
		  me.CellCheck(row,0)=bb
		  gBEAM.Beams(row).calculate=bb
		  gBEAM.egs_Write
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  Dim i, k, index as Integer
		  
		  
		  index=me.ListIndex
		  if Plan_Index>=0 and gBEAM.State=4  Then
		    if index>=0 and index<= UBound(gRTOG.Plan(Plan_Index).Beam) Then
		      Window_BEAM_Options.Show
		    end
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  dim MI as MenuItem
		  
		  MI = New MenuItem
		  MI.Text = "Select all"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "Deselect all"
		  base.Append MI
		  Return True
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Dim i as Integer
		  
		  
		  Select Case hitItem.Text
		    
		  Case "Select all"
		    for i=0 to UBound(gBEAM.Beams)
		      gBEAM.Beams(i).calculate=True
		    next
		    
		  Case "Deselect all"
		    for i=0 to UBound(gBEAM.Beams)
		      gBEAM.Beams(i).calculate=False
		    next
		    
		  end Select
		  
		  Window_Treatment.MC_egs_beam_progress
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events ListBox_MC_VMC
	#tag Event
		Function HeaderPressed(column as Integer) As Boolean
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  dim k,i as integer
		  If row Mod 2=0 then
		    
		    g.foreColor= RGB(170,195,245)
		    
		    g.FillRect 0,0,g.width,g.height
		    
		  else
		    'g.foreColor= RGB(172,255,145)
		  end if
		  
		  
		  k=plan_index
		  if k>-1 and UBound(gRTOG.Plan)>=k then
		    if column >=1 and row<=UBound(gRTOG.Plan(k).beam) and (column-1)<= UBound(gVMC.VMC) and row<=me.ListCount-1 and column<=me.ColumnCount then
		      if row<=UBound(gVMC.VMC(column-1).BEAMS) Then
		        'g.ForeColor=RGB(255,0,0)
		        'g.fillrect 0,0, g.width, g.height
		        'else
		        g.ForeColor=RGB(255,0,0)
		        g.fillrect 0,0, g.width, g.height
		        g.ForeColor=RGB(0,255,0)
		        g.fillrect 0,0, g.width*gVMC.vmc(column-1).BEAMS(row).progress/100, g.height
		      end
		    end
		  end
		End Function
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  Dim i,k as Integer
		  Dim row,column as Integer
		  
		  
		  row=Me.RowFromXY(System.MouseX - Me.Left - Self.Left,System.MouseY - Me.Top - Self.Top)
		  column=Me.ColumnFromXY(System.MouseX - Me.Left - Self.Left,System.MouseY - Me.Top - Self.Top)
		  
		  //MsgBox "You double-clicked in cell "+Str(row)+", "+Str(column)
		  
		  
		  if Plan_Index>=0 Then
		    if column>0 and (column-1)<= UBound(gVMC.VMC) Then
		      if row>=0 and row<= UBound(gRTOG.Plan(Plan_Index).Beam) Then
		        Window_vmc_Properties.dmx_index=column-1
		        Window_vmc_Properties.beam_index=row
		        Window_vmc_Properties.Show
		        Window_vmc_Properties.Refresh_List
		      end
		    end
		  end
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  if column>0 Then
		    gVMC.VMC(column-1).BEAMS(row).calculate=me.CellCheck(row,column)
		    gVMC.VMC(column-1).Write_VMC_Settings
		  end
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  dim MI as MenuItem
		  dim column as Int16
		  
		  column=Me.ColumnFromXY(System.MouseX - Me.Left - Self.Left,System.MouseY - Me.Top - Self.Top)
		  
		  
		  if gVMC.State= 4 and column>0 and UBound(MMCTP_Shell_Refresh.All)=-1 and   UBound(MMCTP_Shell_Run.All)=-1 and   UBound(MMCTP_Download.All)=-1 Then
		    
		    MI = New MenuItem
		    MI.Text = "Delete DMX file"
		    base.Append MI
		    
		    
		    MI = New MenuItem
		    MI.Text = "Select all"
		    base.Append MI
		    
		    
		    MI = New MenuItem
		    MI.Text = "Deselect all"
		    base.Append MI
		    
		    Return True
		  end
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Dim i, column as Integer
		  
		  column=Me.ColumnFromXY(System.MouseX - Me.Left - Self.Left,System.MouseY - Me.Top - Self.Top)
		  column=column-1
		  
		  if column>=0 and column<=UBound(gVMC.VMC) Then
		    
		    
		    Select Case hitItem.Text
		      
		    Case "Delete DMX file"
		      gvmc.vmc_Delete_dmx(column)
		      
		    Case "Select all"
		      for i=0 to UBound(gVMC.VMC(column).BEAMS)
		        gVMC.VMC(column).BEAMS(i).calculate=True
		      next
		      
		    Case"Deselect all"
		      for i=0 to UBound(gVMC.VMC(column).BEAMS)
		        gVMC.VMC(column).BEAMS(i).calculate=False
		      next
		      
		      
		    end Select
		    MC_vmc_beam_progress
		    
		    Return True
		    
		  end
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_VMX_DMX
	#tag Event
		Sub Action()
		  Window_VMC_DMXSettings.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_DoseProfile_Show
	#tag Event
		Sub Action()
		  Window_Graph.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_DoseProfile_delete
	#tag Event
		Sub Action()
		  Dim k,i as Integer
		  
		  
		  for i=Window_Treatment.ListBox_Dose_profiles_Result.ListCount-1 DownTo 0 
		    if Window_Treatment.ListBox_Dose_profiles_Result.CellCheck(i,0) Then
		      k=val(ListBox_Dose_profiles_Result.Cell(i,3) )
		      gRTOG.Profiles.One_Profile.Remove k
		    end
		  next
		  
		  Profiles_Update_Results
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_top
	#tag Event
		Sub Action()
		  Profile_RulerUpdate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_left
	#tag Event
		Sub Action()
		  Profile_RulerUpdate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_right
	#tag Event
		Sub Action()
		  Profile_RulerUpdate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Profile_showR
	#tag Event
		Sub Action()
		  Window_canvas_refresh
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_point1
	#tag Event
		Sub TextChange()
		  if ruler_change Then
		    
		    if RadioButton_top.Value Then
		      Canvas_Top.Ruler.point1.x_cm=val(NthField(me.Text,",",1))
		      Canvas_Top.Ruler.Point1.y_cm=val(NthField(me.Text,",",2))
		      Canvas_Top.Ruler.Point1.z_cm=val(NthField(me.Text,",",3))
		      
		      Canvas_top.Ruler_cm_to_pix
		      Canvas_top.RePaint
		      Canvas_top.Refresh
		      
		    elseif RadioButton_right.Value then
		      Canvas_Right.Ruler.point1.x_cm=val(NthField(me.Text,",",1))
		      Canvas_Right.Ruler.Point1.y_cm=val(NthField(me.Text,",",2))
		      Canvas_Right.Ruler.Point1.z_cm=val(NthField(me.Text,",",3))
		      
		      Canvas_Right.Ruler_cm_to_pix
		      Canvas_Right.RePaint
		      Canvas_Right.Refresh
		      
		    elseif RadioButton_left.Value Then
		      Canvas_Left.Ruler.point1.x_cm=val(NthField(me.Text,",",1))
		      Canvas_Left.Ruler.Point1.y_cm=val(NthField(me.Text,",",2))
		      Canvas_Left.Ruler.Point1.z_cm=val(NthField(me.Text,",",3))
		      
		      Canvas_Left.Ruler_cm_to_pix
		      Canvas_Left.RePaint
		      Canvas_Left.Refresh
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_point2
	#tag Event
		Sub TextChange()
		  if ruler_change Then
		    
		    if RadioButton_top.Value Then
		      Canvas_Top.Ruler.Point2.x_cm=val(NthField(me.Text,",",1))
		      Canvas_Top.Ruler.point2.y_cm=val(NthField(me.Text,",",2))
		      Canvas_Top.Ruler.point2.z_cm=val(NthField(me.Text,",",3))
		      
		      
		      Canvas_top.Ruler_cm_to_pix
		      
		      Canvas_top.RePaint
		      Canvas_top.Refresh
		      
		    elseif RadioButton_right.Value then
		      Canvas_Right.Ruler.Point2.x_cm=val(NthField(me.Text,",",1))
		      Canvas_Right.Ruler.point2.y_cm=val(NthField(me.Text,",",2))
		      Canvas_Right.Ruler.point2.z_cm=val(NthField(me.Text,",",3))
		      
		      Canvas_Right.Ruler_cm_to_pix
		      Canvas_Right.RePaint
		      Canvas_Right.Refresh
		      
		    elseif RadioButton_left.Value Then
		      Canvas_Left.Ruler.Point2.x_cm=val(NthField(me.Text,",",1))
		      Canvas_Left.Ruler.point2.y_cm=val(NthField(me.Text,",",2))
		      
		      Canvas_Left.Ruler.point2.z_cm=val(NthField(me.Text,",",3))
		      Canvas_Left.Ruler_cm_to_pix
		      Canvas_Left.RePaint
		      Canvas_Left.Refresh
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_DoseProfile_Cal
	#tag Event
		Sub Action()
		  Dim rr as Class_Ruler
		  
		  if RadioButton_top.Value Then
		    rr=Canvas_Top.Ruler
		  elseif RadioButton_left.Value Then
		    rr=Canvas_Left.Ruler
		  ElseIf RadioButton_right.Value Then
		    rr=Canvas_Right.Ruler
		  end
		  
		  gRTOG.Line_Profile(dose_index,rr)
		  Profiles_Update_Results
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ListBox_Dose_profiles_Result
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Function HeaderPressed(column as Integer) As Boolean
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  If row Mod 2=0 then
		    
		    g.foreColor= RGB(170,195,245)
		    
		    g.FillRect 0,0,g.width,g.height
		    
		  else
		    'g.foreColor= RGB(172,255,145)
		  end if
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events ListBox_MC_DOS
	#tag Event
		Function HeaderPressed(column as Integer) As Boolean
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  dim k as integer
		  dim pro as Single
		  
		  If row Mod 2=0 then
		    g.foreColor= RGB(170,195,245)
		    g.FillRect 0,0,g.width,g.height
		  else
		    'g.foreColor= RGB(172,255,145)
		  end if
		  
		  k=plan_index
		  if k>-1 and UBound(gRTOG.Plan)>= k then
		    if column >=1 and row<=UBound(gRTOG.Plan(k).beam) and (column-1)<= UBound(gDOSXYZ.DOSXYZ) and row<=me.ListCount-1 and column<=me.ColumnCount then
		      if row<=UBound(gDOSXYZ.DOSXYZ(column-1).DOSXYZ_Input) Then
		        
		        if gDOSXYZ.DOSXYZ(column-1).DOSXYZ_Input(Row).dos_simulation_error=False Then
		          pro=gDOSXYZ.DOSXYZ(column-1).DOSXYZ_Input(Row).dos_progress
		          me.Cell(row,column) =Format(pro,"#.##")+" %"
		          g.ForeColor=RGB(255,0,0)
		          g.fillrect 0,0, g.width, g.height
		          g.ForeColor=RGB(0,255,0)
		          g.fillrect 0,0, Round(g.width*pro/100), g.height
		          
		        else
		          me.Cell(row,column) ="DOSXYZnrc Simulation error !"
		          g.ForeColor=RGB(255,255,0)
		          g.fillrect 0,0, g.width, g.height
		          
		        end
		        
		      end
		    end
		  end
		  
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  //------------------------------------------
		  //
		  //
		  //------------------------------------------
		  Dim i,k as Integer
		  Dim row,column as Integer
		  //------------------------------------------
		  
		  row=me.ListIndex
		  column=Me.User_column
		  
		  //MsgBox "You double-clicked in cell row "+Str(row)+", column "+Str(column)
		  
		  
		  if column>0 Then
		    if Plan_Index>=0 and gDOSXYZ.State=4 and (column-1)<=UBound(gDOSXYZ.DOSXYZ) Then
		      if row>-1 and row<=UBound(gDOSXYZ.DOSXYZ(column-1).DOSXYZ_Input) Then
		        Window_DOSXYZ_Properties.Show
		        Window_DOSXYZ_Properties.egsphant=column-1
		        Window_DOSXYZ_Properties.beam=row
		        Window_DOSXYZ_Properties.dosxyz=gDOSXYZ.DOSXYZ(column-1)
		        Window_DOSXYZ_Properties.Refresh_List
		      end
		    end
		  end
		  
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  if column>0 Then
		    gDOSXYZ.DOSXYZ(column-1).DOSXYZ_Input(row).dos_calculate=me.CellCheck(row,column)
		    gDOSXYZ.DOSXYZ(column-1).Write_DOSXYZ
		  end
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  //-------------------------
		  //
		  //
		  //-------------------------
		  Dim i,column,beam as Integer
		  //-------------------------
		  column=DOSXYZnrc_Column
		  column=column-1
		  
		  Select Case hitItem.Text
		  Case "Generate new EGSPhant file"
		    if gDOSXYZ.State= 4  Then
		      Window_DOSXYZ_EGSPhant_Materials.Show
		    end
		  end
		  
		  if column>=0 and column<=UBound(gDOSXYZ.DOSXYZ) Then
		    Select Case hitItem.Text
		    Case "Delete EGSPhant file"
		      if gDOSXYZ.State= 4 and column>=0 and UBound(MMCTP_Shell_Refresh.All)=-1 and UBound(MMCTP_Shell_Run.All)=-1 and UBound(MMCTP_Download.All)=-1 Then
		        
		        gDOSXYZ.dosxyz_Delete_Phant(column)
		      end
		      
		    Case "Select all"
		      for i=0 to UBound(gDOSXYZ.DOSXYZ(column).DOSXYZ_Input)
		        gDOSXYZ.DOSXYZ(column).DOSXYZ_Input(i).dos_calculate=True
		      next
		      
		    Case"Deselect all"
		      for i=0 to UBound(gDOSXYZ.DOSXYZ(column).DOSXYZ_Input)
		        gDOSXYZ.DOSXYZ(column).DOSXYZ_Input(i).dos_calculate=False
		      next
		      
		    Case"View EGSPhant"
		      if gDOSXYZ.DOSXYZ(column).EGSPhantSettings.Non_CT_Phantom=False Then
		        Window_DOSXYZ_Maininputs_Phantom_View.Egsphant =gDOSXYZ.DOSXYZ(column).EGSPhantSettings
		        Window_DOSXYZ_Maininputs_Phantom_View.Show
		        Window_DOSXYZ_Maininputs_Phantom_View.Win_Open
		      end
		      
		      
		    Case"3ddose to MMCTP"
		      Beam=me.ListIndex
		      
		      if Plan_Index>=0 Then
		        gDOSXYZ.dosxyz_AddDose=True
		        gDOSXYZ.dosxyz_adddoseList.append str(column)+","+str(beam)+Chr(10)
		        if gDOSXYZ.State=4 Then
		          gDOSXYZ.Run
		        end
		      end
		      
		      
		      
		      
		    Case"Add plan doses"
		      gDOSXYZ.Dosxyz_add_Plan_Dose_List(column)
		      
		    Case"Add checked doses"
		      gDOSXYZ.Dosxyz_add_Checked_Dose_List(column)
		      
		      
		      
		    end Select
		    MC_dosxyz_beam_progress
		    Return True
		  end
		End Function
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  dim MI as MenuItem
		  dim column as Int16
		  
		  column=Me.User_column
		  
		  
		  DOSXYZnrc_Column=column
		  
		  if gDOSXYZ.State= 4 Then
		    MI = New MenuItem
		    MI.Text = "Generate new EGSPhant file"
		    base.Append MI
		  end
		  
		  if gDOSXYZ.State= 4 and column>=0 and UBound(MMCTP_Shell_Refresh.All)=-1 and   UBound(MMCTP_Shell_Run.All)=-1 and   UBound(MMCTP_Download.All)=-1 Then
		    MI = New MenuItem
		    MI.Text = "Delete EGSPhant file"
		    base.Append MI
		  end
		  
		  
		  MI = New MenuItem
		  MI.Text = "View EGSPhant"
		  base.Append MI
		  
		  MI = New MenuItem
		  MI.Text = "Select all"
		  base.Append MI
		  
		  
		  MI = New MenuItem
		  MI.Text = "Deselect all"
		  base.Append MI
		  
		  
		  MI = New MenuItem
		  MI.Text = "3ddose to MMCTP"
		  base.Append MI
		  
		  
		  MI = New MenuItem
		  MI.Text = "Add plan doses"
		  base.Append MI
		  
		  MI = New MenuItem
		  MI.Text = "Add checked doses"
		  base.Append MI
		  
		  
		  Return True
		  
		End Function
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  me.User_column=column
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events ListBox_DVH_Graphs
	#tag Event
		Function HeaderPressed(column as Integer) As Boolean
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  If row Mod 2=0 then
		    g.foreColor= RGB(170,195,245)
		    g.FillRect 0,0,g.width,g.height
		  else
		    'g.foreColor= RGB(172,255,145)
		  end if
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  dim MI as MenuItem
		  
		  
		  
		  MI = New MenuItem
		  MI.Text = "Selecte all row"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "Selecte all column"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "Deselecte all"
		  base.Append MI
		  
		  
		  Return True
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  //--------------------------
		  //
		  //--------------------------
		  Dim f as FolderItem
		  Dim sname as String
		  Dim i as Integer
		  //--------------------------
		  
		  
		  Select Case hitItem.Text
		    
		  Case "Selecte all column"
		    sname=me.Heading(DVH_Column)
		    for i=0 to me.ListCount-1
		      me.CellCheck(i,DVH_Column)=True
		    Next
		    
		  Case "Selecte all row"
		    
		    for i=0 to me.ColumnCount-1
		      me.CellCheck(DVH_Row,i)=True
		      
		    Next
		    
		  Case "Deselecte all"
		    Dose_DVH
		    
		    
		  End Select
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  Dim i as Integer
		  DVH_Column=column
		  DVH_Row=row
		  
		  //if me.CellCheck(row,column) Then
		  //Break
		  //end
		  
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events ListBox_DVH_Struc
	#tag Event
		Function HeaderPressed(column as Integer) As Boolean
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  If row Mod 2=0 then
		    g.foreColor= RGB(170,195,245)
		    g.FillRect 0,0,g.width,g.height
		  end if
		  
		End Function
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub Change()
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  if row>-1 and row<=UBound(gRTOG.Structures) Then
		    gRTOG.structures(row).DVH_Calculate=ListBox_DVH_Struc.CellCheck(row,0)
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_DVHBins
	#tag Event
		Sub TextChange()
		  gDVH.DVHBins=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_DVHSHOW
	#tag Event
		Sub Action()
		  Dim k, i as Integer
		  
		  for k=0 to Window_Treatment.ListBox_DVH_Graphs.ColumnCount
		    for i=0 to ubound(gRTOG.structures)
		      if Window_Treatment.ListBox_DVH_Graphs.CellCheck(i,k) then
		        Window_DVH_Plot.window_open
		        k=Window_Treatment.ListBox_DVH_Graphs.ColumnCount
		        Exit
		      end
		    next
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_DVH_Del
	#tag Event
		Sub Action()
		  Dim x,k, i as Integer
		  
		  for k=0 to Window_Treatment.ListBox_DVH_Graphs.ColumnCount
		    for i=0 to ubound(gRTOG.structures)
		      if Window_Treatment.ListBox_DVH_Graphs.CellCheck(i,k) then
		        for x=0 to UBound(gDVH.All_DVH)
		          if gDVH.All_DVH(x).Name=Window_Treatment.ListBox_DVH_Graphs.Heading(k) and _
		            gDVH.All_DVH(x).struc_names=gRTOG.Structures(i).Structure_Name Then
		            gDVH.Delete_DVH(x)
		            Exit
		          end
		        next
		      end
		    next
		  next
		  
		  Dose_DVH
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ListBox_Struc
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  dim tmpcolor as color
		  dim i As  integer
		  
		  if column=1 then
		    tmpcolor=gvis.colour(row)
		    if(selectcolor(tmpcolor,"Select a color")) then
		      gvis.colour(row)=tmpcolor
		      gRTOG.structures(row).scolor=tmpcolor
		      gvis.Contours.Recalculate_Images
		      Window_canvas_refresh_Structure
		    end
		  end
		  
		  
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  If row Mod 2=0 then
		    g.foreColor= RGB(170,195,245)
		    g.FillRect 0,0,g.width,g.height
		  end if
		  
		  if column=1 then
		    if row <= ubound(gRTOG.structures) and ubound(gvis.colour)>-1 then
		      g.foreColor=gvis.colour(row)
		      g.fillrect 0,0, g.width, g.height
		    end
		  end if
		  return true
		End Function
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  if column=2 or Column=3  then
		    gvis.contour_show(row)=me.CellCheck(row,3)
		    gvis.contour_fill(row)=me.CellCheck(row,2)
		    gVis.Write_Settings
		    gvis.Contours.Recalculate_Images
		    Window_canvas_refresh_Structure
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Function HeaderPressed(column as Integer) As Boolean
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  dim MI as MenuItem
		  
		  MI = New MenuItem
		  MI.Text = "Select all"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "Deselect all"
		  base.Append MI
		  Return True
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Dim i as Integer
		  
		  
		  Select Case hitItem.Text
		    
		  Case "Select all"
		    for i=0 to UBound(gVis.contour_show)
		      gVis.contour_show(i)=True
		    next
		    
		  Case "Deselect all"
		    for i=0 to UBound(gVis.contour_show)
		      gVis.contour_show(i)=False
		    next
		    
		  end Select
		  Image_Struc_Listbox
		  gVis.Write_Settings
		  gvis.Contours.Recalculate_images
		  Window_canvas_refresh
		  
		  
		  
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_show_struc
	#tag Event
		Sub Action()
		  Window_canvas_refresh_Structure
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider_Structure_Trans
	#tag Event
		Sub ValueChanged()
		  if me.Value<>gvis.Structure_Transparency Then
		    gvis.Structure_Transparency=me.Value
		    if gVis<>nil Then
		      if gVis.Contours<> nil Then
		        gvis.Contours.Recalculate_Images
		      end
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_dose
	#tag Event
		Sub Action()
		  Window_canvas_refresh_Dose
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  Dim s as String
		  Dim i,last as Integer
		  
		  s="Set min/max,Use default"
		  last= CountFields(s,",")
		  For i=1 to last
		    base.Append (new MenuItem(NthField(s,",",i)))
		  Next
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Select case hitItem.Text
		  case "Set min/max"
		    Window_ColourWash.Show
		    gVis.Colourwash_options=True
		  Case  "Use default"
		    gVis.Colourwash_options=False
		    
		  end Select
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Iso
	#tag Event
		Sub Action()
		  Window_canvas_refresh_Dose
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Image_Isodose
	#tag Event
		Sub Action()
		  Window_IsoDose.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_hot
	#tag Event
		Sub Action()
		  Window_canvas_repaint
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_DoseGrid
	#tag Event
		Sub Action()
		  Window_canvas_repaint
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_DoseGrid_values
	#tag Event
		Sub Action()
		  Window_canvas_repaint
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider_Dose_Trans
	#tag Event
		Sub ValueChanged()
		  Window_canvas_refresh_Dose
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider_Window_Level
	#tag Event
		Sub ValueChanged()
		  StaticText_Level.Text="Level : "+Format(me.Value,"-#")
		  if me.Value<>gvis.wl then
		    gvis.WL=me.Value
		    gvis.WL_Recalculate
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  CheckBox_Iso.Value=False
		  CheckBox_dose.Value=False
		End Function
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  base=gVis.WL_Preset(base)
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  gVis.WL_Preset_Select(hitItem.Text)
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Slider_Window_Width
	#tag Event
		Sub ValueChanged()
		  if me.Value<>gvis.ww then
		    gvis.ww=me.Value
		    gvis.WL_Recalculate
		    StaticText_window.Text="Window : "+Format(me.Value,"-#")
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  CheckBox_Iso.Value=False
		  CheckBox_dose.Value=False
		End Function
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  base=gVis.WL_Preset(base)
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  gVis.WL_Preset_Select(hitItem.Text)
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Slider_Scale
	#tag Event
		Sub ValueChanged()
		  if ScaleFlag=1 then
		    canvas_top.canvas_scale=Slider_Scale.Value/100
		    Canvas_top.Buffer
		    Canvas_top.Ruler_cm_to_pix
		    EditField_Scale.Text=format(canvas_top.canvas_scale*100,"#.##")
		    Canvas_Top.RePaint
		  elseif ScaleFlag=2 Then
		    canvas_left.canvas_scale=Slider_Scale.Value/100
		    Canvas_left.Buffer
		    Canvas_Left.Ruler_cm_to_pix
		    EditField_Scale.Text=Format(canvas_left.canvas_scale*100,"#.##")
		    Canvas_left.RePaint
		    
		  elseif ScaleFlag=3 Then
		    canvas_right.canvas_scale=Slider_Scale.Value/100
		    Canvas_Right.Buffer
		    Canvas_Right.Ruler_cm_to_pix
		    EditField_Scale.Text=Format(canvas_right.canvas_scale*100,"#.##")
		    Canvas_right.RePaint
		    
		  else
		    //Canvas_3D(0).canvas_scale=Slider_Scale.Value/10
		    //EditField_Scale.Text=Format(//Canvas_3D(0).canvas_scale,"#.##")
		    //Canvas_3D(0).Update_Camera_Position
		    //'Canvas_3D(0).Refresh(false)
		  end
		  EditField_Scale.Refresh(True)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  'If IsContextualClick then
		  'ContextualMenu_Scale.open
		  'Return True
		  'End if
		End Function
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  Dim s as String
		  Dim i,last as Integer
		  
		  s="Top,Left,Right,3D"
		  last= CountFields(s,",")
		  For i=1 to last
		    base.Append (new MenuItem(NthField(s,",",i)))
		  Next
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Select case hitItem.Text
		  case "Top"
		    ScaleFlag=1
		    StaticText_Scale.Text="Scale Top %"
		    EditField_Scale.Text=str(Canvas_Top.canvas_scale*100)
		  Case  "Left"
		    ScaleFlag=2
		    StaticText_Scale.Text="Scale Left %"
		    EditField_Scale.Text=str(canvas_left.canvas_scale*100)
		  case "Right"
		    ScaleFlag=3
		    StaticText_Scale.Text="Scale Right %"
		    EditField_Scale.Text=str(canvas_right.canvas_scale*100)
		  case  "3D"
		    ScaleFlag=4
		    StaticText_Scale.Text="Scale 3D %"
		    EditField_Scale.Text=str(canvas_right.canvas_scale*100)
		  end Select
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events StaticText_Scale
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Scale
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  
		End Function
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if key=chr(13) or key=chr(9) then
		    Slider_Scale.Value=val(EditField_Scale.Text)
		    
		  end
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_image
	#tag Event
		Sub Action()
		  Window_canvas_refresh_Image
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_cross
	#tag Event
		Sub Action()
		  window_canvas_refresh
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_axis
	#tag Event
		Sub Action()
		  window_canvas_refresh
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_MouseCross
	#tag Event
		Sub Action()
		  Canvas_Top.MouseCross=me.Value
		  Canvas_Left.MouseCross=me.Value
		  Canvas_Right.MouseCross=me.Value
		  window_canvas_refresh
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_show_isocenter
	#tag Event
		Sub Action()
		  Window_canvas_refresh
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ListBox_MC_Cutout
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  Dim k as integer
		  Dim pro as Single
		  
		  
		  
		  If row Mod 2=0 then
		    g.foreColor= RGB(170,195,245)
		    g.FillRect 0,0,g.width,g.height
		  else
		    'g.foreColor= RGB(172,255,145)
		  end if
		  
		  
		  k=plan_index
		  if k>-1 and UBound(gRTOG.Plan)>=k then
		    if column=1 and row<=UBound(gRTOG.Plan(k).beam) and row<=UBound(gCutout.Beams) and row<=me.ListCount-1 then
		      pro=gCutout.Beams(row).progress
		      g.ForeColor=RGB(255,0,0)
		      g.fillrect 0,0, g.width, g.height
		      if pro= -1 then
		        me.Cell(row,column) ="Not Started"
		      elseif pro=100 then
		        me.Cell(row,1) ="Complete"
		      elseif gCutout.Beams(row).error Then
		        me.Cell(row,1) ="Cutout simulation error"
		      else
		        me.Cell(row,1) =Format(pro,"#.#")+" %"
		      end
		      g.ForeColor=RGB(0,255,0)
		      g.fillrect 0,0, g.width*pro/100, g.height
		    end
		  end
		  
		End Function
	#tag EndEvent
	#tag Event
		Function HeaderPressed(column as Integer) As Boolean
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  Dim i, k, index as Integer
		  
		  
		  index=me.ListIndex
		  if Plan_Index>=0 and gCutout.State=4  Then
		    if index>=0 and index<= UBound(gRTOG.Plan(Plan_Index).Beam) Then
		      Window_Cutout_Options.Show
		    end
		  end
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  dim MI as MenuItem
		  dim column as Int16
		  
		  column=Me.ColumnFromXY(System.MouseX - Me.Left - Self.Left,System.MouseY - Me.Top - Self.Top)
		  
		  
		  if gBEAM.State= 4 and UBound(MMCTP_Shell_Refresh.All)=-1 and   UBound(MMCTP_Shell_Run.All)=-1 and   UBound(MMCTP_Download.All)=-1 Then
		    
		    MI = New MenuItem
		    MI.Text = "Select all"
		    base.Append MI
		    MI = New MenuItem
		    MI.Text = "Deselect all"
		    base.Append MI
		    
		    Return True
		  end
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Dim i as Integer
		  
		  
		  Select Case hitItem.Text
		    
		  Case "Select all"
		    
		    for i=0 to UBound(gCutout.Beams)
		      gCutout.Beams(i).calculate=True
		    next
		    
		    
		    
		  Case "Deselect all"
		    
		    for i=0 to UBound(gCutout.Beams)
		      gCutout.Beams(i).calculate=False
		    next
		    
		    
		    
		  end Select
		  
		  Window_Treatment.MC_Cutout_progress
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  Dim i as Integer
		  Dim bb as Boolean
		  
		  bb=me.CellCheck(row,0)
		  me.CellCheck(row,0)=bb
		  gCutout.Beams(row).calculate=bb
		  gCutout.Writesettings
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_DosePoints
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  dim MI as MenuItem
		  MI = New MenuItem
		  MI.Text = "Add Point of Interest"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "Delete Point of Interest"
		  base.Append MI
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Dim i as Integer
		  Dim pp as Class_Points
		  
		  Select Case hitItem.Text
		    
		    
		    
		  Case "Add Point of Interest"
		    Listbox_DosePoints.AddRow
		    pp = new Class_Points
		    gRTOG.Points.Append pp
		    
		    
		  Case "Delete Point of Interest"
		    
		    
		    
		  End Select
		  Dose_Update_Points
		  
		  Save_Beams=True
		  gRTOG.Plan(Plan_Index).Save_Plan=True
		  Return True
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  
		  
		  if column=1 Then
		    gRTOG.Points(row).X_cm=val(me.Cell(row,column))
		  elseif column=2 Then
		    gRTOG.Points(row).y_cm=val(me.Cell(row,column))
		  elseif column=3 Then
		    gRTOG.Points(row).z_cm=val(me.Cell(row,column))
		  end
		  
		  
		  Dose_Update_Points_DoseValues
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_D_Max
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if key=Chr(10) or Key=chr(3) or key=Chr(13) Then
		    Dose_Sum_Values
		  end
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Dose_ListStruc2
	#tag Event
		Sub Change()
		  dose_paint_index=me.ListIndex
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Dose_Norm
	#tag Event
		Sub Action()
		  //-----------------------------
		  // Method to determine what value to normalize a dose distribution
		  //
		  //-----------------------------
		  Dim Nornum,Dvalue,Vvalue as Double
		  Dim ggg as Thread_AddDose
		  Dim sindex,i as Integer
		  Dim temp as String
		  Dim kk as Boolean
		  //-----------------------------
		  
		  
		  Dvalue=Val(EditField_Norm_DoseValue.Text)
		  Vvalue=val(EditField_Norm_VolValue.Text)
		  
		  if Plan_Index>-1 and Plan_Index<=UBound(gRTOG.Plan) Then
		    if dose_index>-1 and dose_index<=UBound(gRTOG.Plan(Plan_Index).Dose) Then
		      ggg = new Thread_AddDose
		      ggg.Norm=True
		      if RadioButton_Norm_MaxDose.Value Then
		        Nornum=1/gRTOG.Plan(Plan_Index).Dose(dose_index).dmax
		      elseif RadioButton_Norm_Struc.Value Then
		        sindex=PopupMenu_Dose_ListStruc2.ListIndex
		        if sindex>-1 and sindex<=UBound(gRTOG.Structures) Then
		          kk=gDVH.Calculate_DVH(sindex,Plan_Index,dose_index,True)
		          temp=gRTOG.Plan(Plan_Index).Plan_ID+String_Separate+gRTOG.Plan(Plan_Index).Dose(dose_index).dose_name
		          kk=False
		          for i=0 to UBound(gDVH.All_DVH)
		            if temp=gDVH.All_DVH(i).Name Then
		              kk=True
		              Nornum=gDVH.All_DVH(i).Calculate_Dose_at_Volume_Percent(Vvalue)
		              Nornum=Dvalue/Nornum
		              
		            end
		          Next
		          
		          if kk=False Then
		            MsgBox "Error : Can not find DVH "+temp
		            Return
		          end
		          
		        else
		          MsgBox "Error : structure selected"
		          Return
		        end
		        
		      elseif RadioButton_Nor_Beam_Iso.Value Then
		        if RTOGBeam_Index>-1 and RTOGBeam_Index<=UBound(gRTOG.Plan(Plan_Index).Beam) Then
		          Nornum=RTOG_Dose_Interpolate(gRTOG.Plan(Plan_Index).Beam(RTOGBeam_Index).Collimator.fields(0).isocenter.x,gRTOG.Plan(Plan_Index).Beam(RTOGBeam_Index).Collimator.fields(0).isocenter.y,gRTOG.Plan(Plan_Index).Beam(RTOGBeam_Index).Collimator.fields(0).isocenter.z, gRTOG.Plan(Plan_Index).Dose(dose_index))
		        else
		          MsgBox "Error : no beam selected"
		          Return
		        end
		      Elseif RadioButton_Nor_DValue.Value Then
		        Nornum=val(EditField_Nor_DoseValue.Text)
		      else 
		        Return
		        
		      end
		      ggg.NormValue=Nornum
		      ggg.Run
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_SetDose
	#tag Event
		Sub Action()
		  //---------------------------------------------------------
		  //
		  //
		  //---------------------------------------------------------
		  Dim value,x_cm,y_cm,delx,dely,x_max,y_max,temp,z_value,dose_z as Single
		  Dim x,y,k,i,sindex,xintvalue,yintvalue,xintvaluebuf,yintvaluebuf,indexvalue,j,h as Integer
		  Dim dd as RTOG_Dose_Distribution
		  Dim ddose as RTOG_Dose_Plane
		  dIM vv as RTOG_Structure_One_Structure
		  //---------------------------------------------------------
		  
		  value=val(EditField_Dose_SetValue.Text)
		  
		  sindex=PopupMenu_Dose_ListStruc.ListIndex
		  
		  
		  if sindex>=0 and sindex<=UBound(gRTOG.Structures) Then
		    if Plan_Index>=0 and Plan_Index<=UBound(gRTOG.Plan) Then
		      if dose_index>=0 and dose_index<=UBound(gRTOG.Plan(Plan_Index).Dose) then
		        dd=gRTOG.Plan(Plan_Index).Dose(dose_index)
		        delx=dd.Horizontal_Grid
		        dely=dd.Vertical_Grid
		        x_max=dd.Coord_1_1st_point+delx*(dd.Size_of_Dimension1-1)
		        y_max=dd.Coord_2_1st_point+dely*(dd.Size_of_Dimension2-1)
		        
		        // Size of Z must be the same for dose and structre
		        if (dd.Size_of_Dimension3-1)<>UBound(gRTOG.Structures(sindex).Structure_Data) Then
		          //Return
		        end
		        
		        for i=0 to UBound(gRTOG.Structures(sindex).Structure_Data)
		          z_value=gRTOG.Structures(sindex).Structure_Data(i).z
		          vv=gRTOG.Structures(sindex).Structure_Data(i)
		          
		          for k=0 to dd.Size_of_Dimension3-1
		            ddose=dd.Dose_Distribution(k)
		            dose_z=ddose.Z
		            if abs(z_value-ddose.Z)<dd.Depth_Grid/2 or abs(ddose.Z-z_value)<dd.Depth_Grid/2 Then
		              
		              for j=0 to UBound(vv.Axial_Points_X)
		                x_cm=(vv.Axial_Points_X(j))*gVis.scale_width+gVis.xoff_set // x position in cm of voxel within contour
		                y_cm=(vv.Axial_Points_Y(j))*gVis.scale_height+gVis.yoff_set // y position in cm of voxel within contour
		                
		                if x_cm>dd.Coord_1_1st_point and x_cm<x_max Then
		                  temp=(x_cm-dd.Coord_1_1st_point-delx/2)/delx
		                  xintvalue=Ceil(temp)
		                  
		                  if y_cm>dd.Coord_2_1st_point and y_cm<y_max Then
		                    temp=(y_cm-dd.Coord_2_1st_point-dely/2)/dely
		                    yintvalue=Ceil(temp)
		                    
		                    //Update new voxel value
		                    indexvalue=yintvalue*dd.Size_of_Dimension1+xintvalue
		                    ddose.Points(indexvalue)=value
		                    
		                    if value>dd.Dmax Then
		                      dd.Dmax=value
		                    end
		                    if value<dd.Dmin Then
		                      dd.Dmin=value
		                    end
		                    
		                    
		                    // Add buffer margin
		                    
		                    for h=1 to val(EditField_DoseSet_ValueBuff.Text) 
		                      
		                      xintvaluebuf=xintvalue-h
		                      yintvaluebuf=yintvalue-h
		                      //Update new voxel value
		                      indexvalue=yintvaluebuf*dd.Size_of_Dimension1+xintvaluebuf
		                      ddose.Points(indexvalue)=value
		                      
		                      xintvaluebuf=xintvalue-h
		                      yintvaluebuf=yintvalue
		                      indexvalue=yintvaluebuf*dd.Size_of_Dimension1+xintvaluebuf
		                      ddose.Points(indexvalue)=value
		                      
		                      xintvaluebuf=xintvalue-h
		                      yintvaluebuf=yintvalue+h
		                      indexvalue=yintvaluebuf*dd.Size_of_Dimension1+xintvaluebuf
		                      ddose.Points(indexvalue)=value
		                      
		                      xintvaluebuf=xintvalue
		                      yintvaluebuf=yintvalue+h
		                      indexvalue=yintvaluebuf*dd.Size_of_Dimension1+xintvaluebuf
		                      ddose.Points(indexvalue)=value
		                      
		                      xintvaluebuf=xintvalue+h
		                      yintvaluebuf=yintvalue+h
		                      indexvalue=yintvaluebuf*dd.Size_of_Dimension1+xintvaluebuf
		                      ddose.Points(indexvalue)=value
		                      
		                      xintvaluebuf=xintvalue+h
		                      yintvaluebuf=yintvalue
		                      indexvalue=yintvaluebuf*dd.Size_of_Dimension1+xintvaluebuf
		                      ddose.Points(indexvalue)=value
		                      
		                      xintvaluebuf=xintvalue+h
		                      yintvaluebuf=yintvalue-h
		                      indexvalue=yintvaluebuf*dd.Size_of_Dimension1+xintvaluebuf
		                      ddose.Points(indexvalue)=value
		                      
		                    Next
		                    
		                    dd.Save=True
		                  end
		                end
		              Next
		            end
		          next 
		        Next
		        
		        dd.Update_Bounds
		      end
		    end
		  end
		  
		  Window_canvas_refresh_Dose
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Dose_ListStruc
	#tag Event
		Sub Change()
		  dose_paint_index=me.ListIndex
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_DosePaint_on
	#tag Event
		Sub Action()
		  if me.Value Then
		    Save_Dose=True
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_DosePaint_sup
	#tag Event
		Sub Action()
		  'Dim i,dose_data_index as integer
		  '
		  'dose_data_index=-1
		  '
		  ''Find the Right dose distribution depending on the Z value
		  'for i=0 to UBound(Temp_Dose.Dose_Distribution)
		  'if abs(gRTOG.Scan(canvas1_slice).Z_Value - Temp_Dose.dose_Distribution(i).Z)<gvis.scale_thickness/2 then
		  'dose_data_index=i
		  'exit
		  'end
		  'next
		  'if i+1<= UBound(Temp_Dose.Dose_Distribution) then
		  'Temp_Dose.dose_Distribution(i+1).Points=Temp_Dose.Dose_Distribution(i).Points
		  'canvas1_slice=canvas1_slice+1
		  'C_Top=True
		  'Canvas_Top.Refresh
		  '
		  'end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events StaticText1
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  dim MI as MenuItem
		  
		  MI = New MenuItem
		  MI.Text = "1x1"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "2x2"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "4x4"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "8x8"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "16x16"
		  base.Append MI
		  Return True
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Select Case hitItem.Text
		  Case "1x1"
		    dose_paint_size=1
		  Case "2x2"
		    dose_paint_size=2
		  Case "4x4"
		    dose_paint_size=4
		  Case "8x8"
		    dose_paint_size=8
		  Case "16x16"
		    dose_paint_size=16
		  End Select
		  me.Refresh
		  Return True
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_DosePaint_inf
	#tag Event
		Sub Action()
		  'Dim i,dose_data_index as integer
		  '
		  'dose_data_index=-1
		  '
		  ''Find the Right dose distribution depending on the Z value
		  'for i=0 to UBound(Temp_Dose.Dose_Distribution)
		  'if abs(gRTOG.Scan(canvas1_slice).Z_Value - Temp_Dose.dose_Distribution(i).Z)<gvis.scale_thickness/2 then
		  'dose_data_index=i
		  'exit
		  'end
		  'next
		  '
		  'if i-1>=0 then
		  'Temp_Dose.dose_Distribution(i-1).Points=Temp_Dose.Dose_Distribution(i).Points
		  'canvas1_slice=canvas1_slice-1
		  'Canvas_Top.Refresh
		  'end
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
		Name="Canvas_height"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Canvas_refresh_Image_Contours"
		Group="Behavior"
		InitialValue="false"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Canvas_refresh_Image_WL"
		Group="Behavior"
		InitialValue="false"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Canvas_Width"
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
		Name="colour_wash"
		Group="Behavior"
		InitialValue="2"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="DoNothing"
		Group="Behavior"
		InitialValue="0"
		Type="boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="dose_index"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="dose_paint_index"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="dose_paint_size"
		Group="Behavior"
		InitialValue="1"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="DOSXYZnrc_Column"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="DVH_Column"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="DVH_Row"
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
		Name="MC_egs_beam_progress_update"
		Group="Behavior"
		InitialValue="false"
		Type="boolean"
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
		Name="Move_CrossHairs"
		Group="Behavior"
		InitialValue="false"
		Type="boolean"
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
		Name="ruler_change"
		Group="Behavior"
		InitialValue="true"
		Type="boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Save_Beams"
		Group="Behavior"
		InitialValue="false"
		Type="boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Save_Dose"
		Group="Behavior"
		InitialValue="false"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ScaleFlag"
		Group="Behavior"
		InitialValue="1"
		Type="Integer"
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
		Name="Window_update_plan_now"
		Group="Behavior"
		InitialValue="false"
		Type="boolean"
	#tag EndViewProperty
#tag EndViewBehavior
