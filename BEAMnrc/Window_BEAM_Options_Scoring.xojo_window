#tag Window
Begin Window Window_BEAM_Options_Scoring
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   480
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
   Title           =   "Set Scoring Options"
   Visible         =   True
   Width           =   631
   Begin PushButton PushButton_Close
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Close"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   261
      LockBottom      =   True
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
      Top             =   440
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin Label StaticText12
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   19
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
      Text            =   "Scoring Plane"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   178
   End
   Begin PopupMenu PopupMenu_ScoringPlan
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
      Left            =   336
      ListIndex       =   0
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
      Top             =   20
      Underline       =   False
      Visible         =   True
      Width           =   241
   End
   Begin GroupBox GroupBox1
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Scoring Options"
      Enabled         =   True
      Height          =   346
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   19
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
      Top             =   72
      Underline       =   False
      Visible         =   True
      Width           =   585
      Begin PopupMenu PopupMenu_zonetype
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   330
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   137
         Underline       =   False
         Visible         =   True
         Width           =   247
      End
      Begin Label StaticText13
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
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Zone type"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   137
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   194
      End
      Begin Label StaticText14
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
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Number of scoring zones"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   171
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   194
      End
      Begin TextField EditField_NumScoringZones
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
         Left            =   330
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
         Text            =   "1"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   171
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   247
      End
      Begin TextField EditField_scor_cmnum
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
         Left            =   330
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
         Top             =   103
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   247
      End
      Begin Label StaticText15
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
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "CM number for plane"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   103
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   194
      End
      Begin Listbox Listbox_ZOnes
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
         Height          =   197
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   32
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
         Top             =   212
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   545
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Dim i as Integer
		  
		  
		  DoStuff=False
		  
		  Beam=new Class_BEAM_Inputfile
		  Beam=Window_BEAM_MainInputs.BEAM
		  
		  PopupMenu_ScoringPlan.DeleteAllRows
		  for i=0 to UBound(Beam.NSC)
		    PopupMenu_ScoringPlan.AddRow str(i+1)
		  next
		  
		  
		  PopupMenu_zonetype.DeleteAllRows
		  PopupMenu_zonetype.AddRow "annular"
		  PopupMenu_zonetype.AddRow "square"
		  PopupMenu_zonetype.AddRow "grid"
		  
		  
		  Refresh_window
		  
		  PopupMenu_ScoringPlan.ListIndex=0
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Refresh_window()
		  
		  
		  DoStuff=False
		  
		  
		  PopupMenu_zonetype.ListIndex=BEAM.NSC(NSC_Index).MZONE_TYPE
		  EditField_scor_cmnum.Text=str(BEAM.NSC(NSC_Index).IPLANE_to_CM)
		  
		  
		  EditField_NumScoringZones.Text=str(BEAM.NSC(NSC_Index).NSC_ZONES)
		  
		  
		  Update_Listbox
		  DoStuff=True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Listbox()
		  Dim i as Integer
		  
		  Listbox_ZOnes.DeleteAllRows
		  Listbox_ZOnes.ColumnCount=2
		  
		  Listbox_ZOnes.Heading(0)="Zone"
		  Listbox_ZOnes.ColumnType(1)=3
		  
		  if  BEAM.NSC(NSC_Index).MZONE_TYPE=1 Then
		    Listbox_ZOnes.ColumnCount=2
		    Listbox_ZOnes.Heading(1)="Halfwidth"
		  elseif BEAM.NSC(NSC_Index).MZONE_TYPE=0 Then
		    Listbox_ZOnes.ColumnCount=2
		    Listbox_ZOnes.Heading(1)="Radius"
		    
		  else
		    Listbox_ZOnes.ColumnCount=4
		    Listbox_ZOnes.Heading(0)="direction"
		    Listbox_ZOnes.Heading(1)="min"
		    Listbox_ZOnes.Heading(2)="max"
		    Listbox_ZOnes.Heading(3)="no of zones"
		    Listbox_ZOnes.ColumnType(1)=3
		    Listbox_ZOnes.ColumnType(2)=3
		    Listbox_ZOnes.ColumnType(3)=3
		    
		    
		    Listbox_ZOnes.AddRow "X"
		    Listbox_ZOnes.AddRow "Y"
		    Listbox_ZOnes.Cell(0,1)=str(Beam.NSC(NSC_Index).XMIN_ZOne)
		    Listbox_ZOnes.Cell(0,2)=str(Beam.NSC(NSC_Index).XMAX_Zone)
		    Listbox_ZOnes.Cell(0,3)=str(Beam.NSC(NSC_Index).NX_Zone)
		    
		    Listbox_ZOnes.Cell(1,1)=str(Beam.NSC(NSC_Index).yMIN_ZOne)
		    Listbox_ZOnes.Cell(1,2)=str(Beam.NSC(NSC_Index).yMAX_Zone)
		    Listbox_ZOnes.Cell(1,3)=str(Beam.NSC(NSC_Index).NY_Zone)
		    
		    
		    
		    
		    Return
		  end
		  
		  
		  
		  for i=0 to BEAM.NSC(NSC_Index).NSC_ZONES-1
		    Listbox_ZOnes.AddRow str(i+1)
		    Listbox_ZOnes.Cell(i,1)=Format(Beam.NSC(NSC_Index).RSCORE_ZONE(i),"-0.0##")
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Beam As Class_Beam_Inputfile
	#tag EndProperty

	#tag Property, Flags = &h0
		DoStuff As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		NSC_Index As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events PushButton_Close
	#tag Event
		Sub Action()
		  Window_BEAM_Options_Scoring.Close
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_ScoringPlan
	#tag Event
		Sub Change()
		  NSC_Index=me.ListIndex
		  Refresh_window
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_zonetype
	#tag Event
		Sub Change()
		  if DoStuff Then
		    BEAM.NSC(NSC_Index).MZONE_TYPE=me.ListIndex
		    Update_Listbox
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_NumScoringZones
	#tag Event
		Sub TextChange()
		  if DoStuff Then
		    BEAM.NSC(NSC_Index).NSC_ZONES=val(me.Text)
		    ReDim Beam.NSC(NSC_Index).RSCORE_ZONE(BEAM.NSC(NSC_Index).NSC_ZONES-1)
		    Update_Listbox
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_scor_cmnum
	#tag Event
		Sub TextChange()
		  if DoStuff Then
		    BEAM.NSC(NSC_Index).IPLANE_to_CM=val(me.Text)
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_ZOnes
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  if Beam.NSC(NSC_Index).MZONE_TYPE=2 Then
		    
		    if row=0 Then
		      Beam.NSC(NSC_Index).XMIN_ZOne=val(Listbox_ZOnes.Cell(0,1))
		      Beam.NSC(NSC_Index).XMAX_Zone=val(Listbox_ZOnes.Cell(0,2))
		      Beam.NSC(NSC_Index).NX_Zone=val(Listbox_ZOnes.Cell(0,3))
		    else
		      Beam.NSC(NSC_Index).yMIN_ZOne=val(Listbox_ZOnes.Cell(1,1))
		      Beam.NSC(NSC_Index).yMAX_Zone=val(Listbox_ZOnes.Cell(1,2))
		      Beam.NSC(NSC_Index).NY_Zone=val(Listbox_ZOnes.Cell(1,3))
		    end
		  ELSE
		    if column=1 Then
		      Beam.NSC(NSC_Index).RSCORE_ZONE(row)=val(me.Cell(row,column))
		    end
		  END
		  
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
		Name="DoStuff"
		Group="Behavior"
		InitialValue="false"
		Type="boolean"
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
		Name="NSC_Index"
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
