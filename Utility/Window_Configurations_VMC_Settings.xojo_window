#tag Window
Begin Window Window_Configurations_VMC_Settings
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   392
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
   Title           =   "MMCTP Configurations VMC Settings"
   Visible         =   False
   Width           =   433
   Begin GroupBox GroupBox_MC_VMC
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "VMC Settings"
      Enabled         =   True
      Height          =   347
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   27
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
      Top             =   30
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   284
      Begin CheckBox CheckBox_VMC_refresh
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Refresh?"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_MC_VMC"
         Italic          =   False
         Left            =   42
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   58
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   82
      End
      Begin CheckBox CheckBox_MC_VMC_ImportD
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Import d3d"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_MC_VMC"
         Italic          =   False
         Left            =   42
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   85
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   155
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
         InitialParent   =   "GroupBox_MC_VMC"
         Italic          =   False
         Left            =   42
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
         Text            =   "Chr limit"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   147
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   62
      End
      Begin TextField EditField_MC_VMC_ChrLimit
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
         InitialParent   =   "GroupBox_MC_VMC"
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
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "20"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   146
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   48
      End
      Begin CheckBox CheckBox_VMC_Run
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Auto run ?"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_MC_VMC"
         Italic          =   False
         Left            =   130
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
         Top             =   58
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   97
      End
      Begin TextField EditField_MC_VMC_DosetoWater
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
         InitialParent   =   "GroupBox_MC_VMC"
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
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "1"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   175
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   48
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
         InitialParent   =   "GroupBox_MC_VMC"
         Italic          =   False
         Left            =   42
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
         Text            =   "Dose to Water"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   176
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   97
      End
      Begin Label StaticText81
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_MC_VMC"
         Italic          =   False
         Left            =   42
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Resolution X,Y,Z (cm)"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   208
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   138
      End
      Begin TextField EditField_VMC_Res_X
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
         InitialParent   =   "GroupBox_MC_VMC"
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
         TabIndex        =   10
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "3"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   232
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   33
      End
      Begin TextField EditField_VMC_Res_Y
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
         InitialParent   =   "GroupBox_MC_VMC"
         Italic          =   False
         Left            =   101
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
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "3"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   232
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   29
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
         InitialParent   =   "GroupBox_MC_VMC"
         Italic          =   False
         Left            =   42
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
         Text            =   "DefaultName"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   266
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   138
      End
      Begin TextField EditField_VMC_DMXName
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
         InitialParent   =   "GroupBox_MC_VMC"
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
         TabIndex        =   13
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "3mmHC"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   290
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   99
      End
      Begin RadioButton RadioButton_VMC_Phsp
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Link with Phsp files"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_MC_VMC"
         Italic          =   False
         Left            =   39
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
         Top             =   319
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   152
      End
      Begin RadioButton RadioButton_VMC_ShLib
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Link with ShrLib"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_MC_VMC"
         Italic          =   False
         Left            =   39
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
         Top             =   350
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   147
      End
      Begin TextField EditField_VMC_Res_Z
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
         InitialParent   =   "GroupBox_MC_VMC"
         Italic          =   False
         Left            =   148
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
         Text            =   "3"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   232
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   35
      End
      Begin TextField EditField_MC_VMC_Numhist
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
         InitialParent   =   "GroupBox_MC_VMC"
         Italic          =   False
         Left            =   142
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
         Text            =   "20"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   115
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   85
      End
      Begin Label StaticText781
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_MC_VMC"
         Italic          =   False
         Left            =   41
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
         Text            =   "Num hist"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   116
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   62
      End
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
		  
		  
		  
		  if gVMC<> Nil Then
		    CheckBox_VMC_refresh.Value=gVMC.auto_refresh
		    CheckBox_VMC_Run.Value=gVMC.auto_run
		    CheckBox_MC_VMC_ImportD.Value=gVMC.auto_importD
		    EditField_MC_VMC_ChrLimit.Text=Format(gVMC.vmc_chrLimit,"#")
		    EditField_MC_VMC_DosetoWater.Text=Format(gVMC.vmc_dose_water,"-#.####")
		    EditField_VMC_DMXName.Text=gVMC.dmx_name
		    EditField_VMC_Res_X.Text=Format(gVMC.vmc_res_x,"-#.####")
		    EditField_VMC_Res_y.Text=Format(gVMC.vmc_res_y,"-#.####")
		    EditField_VMC_Res_z.Text=Format(gVMC.vmc_res_z,"-#.####")
		    EditField_MC_VMC_Numhist.Text=Format(gVMC.vmc_numb_hist,"-#")
		    
		    if gVMC.Default_Device_Type=1 Then
		      RadioButton_VMC_ShLib.Value=True
		    else
		      RadioButton_VMC_Phsp.Value=True
		    end
		  else
		    GroupBox_MC_VMC.Enabled=False
		  end
		  
		  
		  DoNothing=False
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		DoNothing As boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events CheckBox_VMC_refresh
	#tag Event
		Sub Action()
		  if gvmc<>Nil and DoNothing=False Then
		    
		    gvmc.auto_refresh=me.Value
		    gvmc.Write_Defaults
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_MC_VMC_ImportD
	#tag Event
		Sub Action()
		  if gVMC<>Nil and DoNothing=False Then
		    gVMC.auto_importD=me.Value
		    gVMC.Write_Defaults
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_MC_VMC_ChrLimit
	#tag Event
		Sub TextChange()
		  if gVMC<> nil and DoNothing=False Then
		    gVMC.vmc_chrLimit=val(me.Text)
		    gVMC.Write_Defaults
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_VMC_Run
	#tag Event
		Sub Action()
		  if gVMC<>Nil and DoNothing=False Then
		    
		    gVMC.auto_run=me.Value
		    gVMC.Write_Defaults
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_MC_VMC_DosetoWater
	#tag Event
		Sub TextChange()
		  if gVMC<> nil and DoNothing=False Then
		    gVMC.vmc_dose_water=val(me.Text)
		    gVMC.Write_Defaults
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_VMC_Res_X
	#tag Event
		Sub TextChange()
		  if gVMC<> nil and DoNothing = False Then
		    gVMC.vmc_res_x=val(me.Text)
		    gvmc.Write_Defaults
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_VMC_Res_Y
	#tag Event
		Sub TextChange()
		  if gVMC<> nil and DoNothing = False Then
		    gVMC.vmc_res_y=val(me.Text)
		    gvmc.Write_Defaults
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_VMC_DMXName
	#tag Event
		Sub TextChange()
		  if gVMC<> nil and DoNothing = False Then
		    gVMC.DMX_Name=Trim(me.Text)
		    gVMC.Write_Defaults
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_VMC_Phsp
	#tag Event
		Sub Action()
		  if me.Value Then
		    gVMC.Default_Device_Type=0
		    gVMC.Write_Defaults
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_VMC_ShLib
	#tag Event
		Sub Action()
		  if me.Value Then
		    gVMC.Default_Device_Type=1
		    gVMC.Write_Defaults
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_VMC_Res_Z
	#tag Event
		Sub TextChange()
		  if gVMC<> nil and DoNothing = False Then
		    gVMC.vmc_res_Z=val(me.Text)
		    gvmc.Write_Defaults
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_MC_VMC_Numhist
	#tag Event
		Sub TextChange()
		  if gVMC<> nil and DoNothing=False Then
		    gVMC.vmc_numb_hist=val(me.Text)
		    gVMC.Write_Defaults
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
