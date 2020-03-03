#tag Window
Begin Window Window_Configurations_BeamnrcSettings
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   True
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   553
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
   Title           =   "MMCTP Configurations BEAMnrc Settings"
   Visible         =   False
   Width           =   885
   Begin GroupBox GroupBox_MC_Beam
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Global BEAMnrc Simulations Settings for each beam"
      Enabled         =   True
      Height          =   162
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
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   77
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   429
      Begin TextField EditField_BEAMnrc_NumJobs
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
         InitialParent   =   "GroupBox_MC_Beam"
         Italic          =   False
         Left            =   316
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
         Text            =   "8"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   101
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   56
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
         InitialParent   =   "GroupBox_MC_Beam"
         Italic          =   False
         Left            =   30
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
         Text            =   "Number of jobs for each beam"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   102
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   207
      End
      Begin TextField EditField_BEAM_defaultIDAT
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
         InitialParent   =   "GroupBox_MC_Beam"
         Italic          =   False
         Left            =   316
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
         Text            =   "2"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   165
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   56
      End
      Begin Label StaticText74
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   "= 0 (default) Output energy deposited and ﬂuence data, number of histories completed, \relapsed time and the current state of the random number generator to the .egsdat \rﬁle upon completion of every batch \r= 1 Do not output a .egsdat ﬁle "
         Index           =   -2147483648
         InitialParent   =   "GroupBox_MC_Beam"
         Italic          =   False
         Left            =   30
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
         Text            =   "Default IDAT value"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   166
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   263
      End
      Begin TextField EditField_BEAM_defaultIZLAST
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
         InitialParent   =   "GroupBox_MC_Beam"
         Italic          =   False
         Left            =   316
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
         Text            =   "2"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   197
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   56
      End
      Begin Label StaticText85
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   "= 0 (default) BEAMnrc does not score ZLAST in phase space ﬁles; this means that phase \rspace ﬁles are read and written in compressed “mode0” \r= 1 BEAMnrc scores the Z position of last interaction in phase space ﬁles; phase space ﬁles \rare read and written in compressed “mode2”; “mode2” ﬁles are approximately 14% \rlarger than “mode0” ﬁles; when plotting phase space data with paw, ZLAST replaces \rthe radial position of a photon (r) \r= 2 Same as option 1 and in Addison, BEAMnrc writes the X-Y-Z positions of the last site \rof interaction for photons into the .egsgph ﬁle. These last sites of interaction can be \rviewed in 3-D using EGS Windows[16]. IWATCH=4 must not be turned on at the same \rtime since it also writes to the .egsgph ﬁle. "
         Index           =   -2147483648
         InitialParent   =   "GroupBox_MC_Beam"
         Italic          =   False
         Left            =   30
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
         Text            =   "Default IZLAST value"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   198
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   256
      End
      Begin TextField EditField_BEAM_MinNumJobs
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
         InitialParent   =   "GroupBox_MC_Beam"
         Italic          =   False
         Left            =   316
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
         Text            =   "4"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   135
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   56
      End
      Begin Label StaticText841
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_MC_Beam"
         Italic          =   False
         Left            =   30
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
         Text            =   "Minimum # of jobs for each beam"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   134
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   231
      End
   End
   Begin GroupBox GroupBox1
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Submit jobs and check status"
      Enabled         =   True
      Height          =   51
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
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   429
      Begin CheckBox CheckBox_Beam_refresh
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Refresh?"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   157
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
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   38
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   80
      End
      Begin CheckBox CheckBox_Beam_auto
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Auto run ?"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   42
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   38
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   93
      End
   End
   Begin GroupBox GroupBox2
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "MMCTP settings for BEAMnrc simulations"
      Enabled         =   True
      Height          =   276
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
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   257
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   429
      Begin CheckBox CheckBox_Beam_MC_BEAM_remove_w
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Remove w files on remote shell"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   458
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   250
      End
      Begin TextField EditField_BEAM_Autojobtime
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
         Left            =   281
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
         Text            =   "4"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   350
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   63
      End
      Begin CheckBox CheckBox_MC_Beam_auto_job_num
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Auto-job minimize time (sec) to"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   "This option will adjust the number of jobs per beam based on a desired CPU time value for each simulation\r          gBEAM.Beams(gg.beam_num).egs_jobs=gBEAM.Beams(gg.beam_num).egs_CPU_time_per_hist*gBEAM.beams(gg.beam_num).egs_num_histories/gBEAM.egs_automaxjobtime\r"
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   351
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   231
      End
      Begin TextField EditField_BEAMnrc_Force_AddPhsp
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
         Left            =   281
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
         Text            =   "95"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   384
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   57
      End
      Begin CheckBox CheckBox_Beam_ForceAddphsp
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Force addphsp at progress %"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   21
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   383
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   213
      End
      Begin CheckBox CheckBox_MC_Beam_auto_Phsp
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Auto link phsp file ?"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   286
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   164
      End
      Begin CheckBox CheckBox_MC_Beam_auto_Shell
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Auto determine shell ?"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   318
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   171
      End
      Begin CheckBox CheckBox_Beam_Addphsp
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Use full path in Addphsp?"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   30
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   416
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   195
      End
   End
   Begin TextArea TextArea_msg
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
      Height          =   513
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   461
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   True
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   411
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  if app.which_window_TreatmentPlanning=False and app.which_window_Contouring=false Then
		    Window_OpenPatient.Show
		  end
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Dim i as Integer
		  
		  DoNothing=True
		  if gBEAM<> nil Then
		    EditField_BEAM_MinNumJobs.Text=Format(gBEAM.egs_Min_Num_Jobs,"#.##")
		    EditField_BEAMnrc_NumJobs.Text=Format(gBEAM.egs_Num_Jobs,"#.##")
		    CheckBox_Beam_auto.Value=gBEAM.egs_auto_run
		    CheckBox_Beam_refresh.Value=gBEAM.egs_auto_refresh
		    CheckBox_Beam_ForceAddphsp.Value=gBEAM.egs_force_addphsp
		    EditField_BEAMnrc_Force_AddPhsp.Text=Format(gBEAM.egs_force_addphsp_value,"#.##")
		    CheckBox_Beam_Addphsp.Value=gBEAM.egs_Addphsp_fullpath
		    CheckBox_Beam_MC_BEAM_remove_w.Value=gBEAM.Remove_w_files
		    CheckBox_MC_Beam_auto_Shell.Value=gBEAM.egs_auto_shell
		    CheckBox_MC_Beam_auto_Phsp.Value=Not(gBEAM.egs_auto_phsp)
		    EditField_BEAM_defaultIDAT.Text=Format(gBEAM.egs_idat,"-#")
		    EditField_BEAM_defaultIZLAST.Text=Format(gBEAM.egs_izlast,"-#")
		    CheckBox_MC_Beam_auto_job_num.Value=gBEAM.egs_automaxjob
		    EditField_BEAM_Autojobtime.Text=str(gBEAM.egs_automaxjobtime,"#")
		    
		    for i =0 to UBound(gBEAM.egs_msg)
		      TextArea_msg.Text=TextArea_msg.Text+gBEAM.egs_msg(i)+EndOfLine.UNIX
		    Next
		  else
		    GroupBox_MC_Beam.Enabled=False
		  end
		  DoNothing=False
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		DoNothing As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Untitled As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events EditField_BEAMnrc_NumJobs
	#tag Event
		Sub TextChange()
		  if gBEAM<> nil and DoNothing=False Then
		    gBEAM.egs_Num_Jobs=val(me.Text)
		    gBEAM.egs_Write_Default
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_BEAM_defaultIDAT
	#tag Event
		Sub TextChange()
		  if gBEAM<> nil and DoNothing = False Then
		    gBEAM.egs_idat=val(me.Text)
		    gBEAM.egs_Write_Default
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_BEAM_defaultIZLAST
	#tag Event
		Sub TextChange()
		  if gBEAM<> nil and DoNothing = False Then
		    gBEAM.egs_IZLAST=val(me.Text)
		    gBEAM.egs_Write_Default
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_BEAM_MinNumJobs
	#tag Event
		Sub TextChange()
		  if gBEAM<> nil and DoNothing=False Then
		    gBEAM.egs_Min_Num_Jobs=val(me.Text)
		    gBEAM.egs_Write_Default
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Beam_refresh
	#tag Event
		Sub Action()
		  if gBEAM<>Nil and DoNothing=False Then
		    
		    gBEAM.egs_auto_refresh=me.Value
		    gBEAM.egs_Write_Default
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Beam_auto
	#tag Event
		Sub Action()
		  if gBEAM<>Nil and DoNothing=False Then
		    gBEAM.egs_auto_run=me.Value
		    gBEAM.egs_Write_Default
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Beam_MC_BEAM_remove_w
	#tag Event
		Sub Action()
		  if gBEAM<>Nil and DoNothing=False Then
		    
		    gBEAM.Remove_w_files=me.Value
		    gBEAM.egs_Write_Default
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_BEAM_Autojobtime
	#tag Event
		Sub TextChange()
		  if gBEAM<> nil and DoNothing=False Then
		    gBEAM.egs_automaxjobtime=val(me.Text)
		    gBEAM.egs_Write_Default
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_MC_Beam_auto_job_num
	#tag Event
		Sub Action()
		  if gBEAM<>Nil and DoNothing=False Then
		    gBEAM.egs_automaxjob=(me.Value)
		    gBEAM.egs_Write_Default
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_BEAMnrc_Force_AddPhsp
	#tag Event
		Sub TextChange()
		  if gBEAM<> nil and DoNothing=False Then
		    gBEAM.egs_force_addphsp_value=val(me.Text)
		    gBEAM.egs_Write_Default
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Beam_ForceAddphsp
	#tag Event
		Sub Action()
		  if gBEAM<>Nil and DoNothing=False Then
		    gBEAM.egs_force_addphsp=me.Value
		    gBEAM.egs_Write_Default
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_MC_Beam_auto_Phsp
	#tag Event
		Sub Action()
		  if gBEAM<>Nil and DoNothing=False Then
		    
		    gBEAM.egs_auto_phsp=Not(me.Value)
		    gBEAM.egs_Write_Default
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_MC_Beam_auto_Shell
	#tag Event
		Sub Action()
		  if gBEAM<>Nil and DoNothing=False Then
		    gBEAM.egs_auto_shell=me.Value
		    gBEAM.egs_Write_Default
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Beam_Addphsp
	#tag Event
		Sub Action()
		  if gBEAM<>Nil and DoNothing=False Then
		    gBEAM.egs_Addphsp_fullpath=me.Value
		    gBEAM.egs_Write_Default
		  end
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
		Name="Untitled"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
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
