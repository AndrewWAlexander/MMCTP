#tag Window
Begin Window Window_BEAM_Options_DYNJAWS_PARIS
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   525
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
   Title           =   "Edit DYNJAWS PARIS"
   Visible         =   True
   Width           =   590
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
      Left            =   245
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   485
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin Listbox Listbox_Pairs
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   3
      ColumnsResizable=   True
      ColumnWidths    =   "300"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      DropIndicatorVisible=   False
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   3
      GridLinesVertical=   3
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   444
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   True
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   16.0
      TextUnit        =   0
      Top             =   21
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   550
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Dim i as Integer
		  
		  donothing=True
		  
		  
		  App=Window_BEAM_Options_DYNJAWS.S
		  
		  
		  
		  
		  Refresh_window
		  donothing=False
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Refresh_window()
		  Dim i as Integer
		  Dim temp as String
		  
		  
		  Listbox_Pairs.DeleteAllRows
		  Listbox_Pairs.ColumnCount=app.ISCM_MAX+1
		  
		  Listbox_Pairs.Heading(0)="Jaw Variables"
		  temp="400"
		  for i=1 to app.ISCM_MAX
		    temp=temp+", 150"
		    Listbox_Pairs.Heading(i)=Str(i)
		  next
		  Listbox_Pairs.ColumnWidths=temp
		  
		  
		  Listbox_Pairs.AddRow "Orientation"
		  'Listbox_Pairs.AddRow "Distance from front of jaw to reference plane (cm)"
		  'Listbox_Pairs.AddRow "Distance from back of jaw to reference plane (cm)"
		  'Listbox_Pairs.AddRow "x/y coordinate at positive front of jaw (cm)"
		  'Listbox_Pairs.AddRow  "x/y coordinate at positive back of jaw (cm)"
		  'Listbox_Pairs.AddRow "x/y coordinate at negative front of jaw (cm)"
		  'Listbox_Pairs.AddRow  "x/y coordinate at negative back of jaw (cm)"
		  Listbox_Pairs.AddRow "ECUT"
		  Listbox_Pairs.AddRow "PCUT"
		  Listbox_Pairs.AddRow "Dose scoring zone"
		  Listbox_Pairs.AddRow "Associate with LATCH bit"
		  Listbox_Pairs.AddRow "Material"
		  
		  
		  
		  
		  for i=1 to app.ISCM_MAX
		    Listbox_Pairs.ColumnType(i)=3
		    Listbox_Pairs.Cell(0,i)=app.XY_Choice(i-1)
		    Listbox_Pairs.Cell(1,i)=Format(app.ECUT_Jaws(i-1),"-#.###")
		    Listbox_Pairs.Cell(2,i)=Format(app.PCUT_Jaws(i-1),"-#.###")
		    Listbox_Pairs.Cell(3,i)=Format(app.Dose_zone_Jaws(i-1),"#")
		    Listbox_Pairs.Cell(4,i)=Format(app.IREGION_to_bit_Jaws(i-1),"#")
		    Listbox_Pairs.Cell(5,i)=app.Medium_Jaws(i-1)
		    
		  next
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		APP As Class_BEAM_CM_DYNJAWS
	#tag EndProperty

	#tag Property, Flags = &h0
		donothing As boolean = true
	#tag EndProperty


#tag EndWindowCode

#tag Events PushButton_Close
	#tag Event
		Sub Action()
		  Window_BEAM_Options_DYNJAWS_PARIS.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_Pairs
	#tag Event
		Function HeaderPressed(column as Integer) As Boolean
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  'if donothing=False Then
		  '
		  'if column>=1 Then
		  '
		  'if row=0 Then
		  'app.XY_Choice(column-1)=(me.Cell(row,column))
		  '
		  'elseif row=1 Then
		  'app.ZMIN_JAWS(column-1)=val(me.Cell(row,column))
		  '
		  '
		  'elseif row=2 Then
		  'app.ZMAX_JAWS(column-1)=val(me.Cell(row,column))
		  '
		  'elseif row=3 Then
		  'app.XFP_JAWS(column-1)=val(me.Cell(row,column))
		  '
		  'elseif row=4 Then
		  'app.XBP_JAWS(column-1)=val(me.Cell(row,column))
		  '
		  'elseif row=5 Then
		  'app.XFN_JAWS(column-1)=val(me.Cell(row,column))
		  '
		  'elseif row=6 Then
		  'app.XBN_JAWS(column-1)=val(me.Cell(row,column))
		  '
		  'elseif row=7 Then
		  'app.ECUT_Jaws(column-1)=val(me.Cell(row,column))
		  '
		  'elseif row=8 Then
		  'app.pCUT_Jaws(column-1)=val(me.Cell(row,column))
		  '
		  'elseif row=9 Then
		  'app.Dose_zone_Jaws(column-1)=val(me.Cell(row,column))
		  '
		  'elseif row=10 Then
		  'app.IREGION_to_bit_Jaws(column-1)=val(me.Cell(row,column))
		  '
		  '
		  'elseif row=11 Then
		  'app.Medium_Jaws(column-1)=trim(me.Cell(row,column))
		  'end
		  'end
		  'end
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
		Name="donothing"
		Visible=false
		Group="Behavior"
		InitialValue="true"
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
