#tag Window
Begin Window Window_CopyBeam
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   454
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
   Title           =   "Copy Beam"
   Visible         =   True
   Width           =   589
   Begin ListBox ListBox_BEAMs
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   66
      ColumnsResizable=   False
      ColumnWidths    =   "100"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   2
      GridLinesVertical=   2
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   388
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
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
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   549
      _ScrollOffset   =   0
      _ScrollWidth    =   0
   End
   Begin PushButton PushButton_Copy
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Copy"
      Default         =   False
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
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   414
      Underline       =   False
      Visible         =   True
      Width           =   112
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  Window_Treatment.Beam_update_beam
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  UpDate
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Update()
		  //-----------------------
		  //-----------------------
		  Dim k,i,num_col as Integer
		  Dim s as String
		  //-----------------------
		  
		  
		  ListBox_BEAMs.DeleteAllRows
		  num_col=0
		  
		  for i=0 to UBound(gRTOG.Plan)
		    if UBound(gRTOG.Plan(i).beam)> num_col Then
		      num_col= UBound(gRTOG.Plan(i).beam)+1
		      if num_col>64 Then
		        num_col=64
		        Exit
		      end
		    end
		  next
		  
		  
		  ListBox_BEAMs.ColumnCount=num_col
		  
		  
		  s="100"
		  for i=1 to num_col
		    s=s+",100"
		  next
		  
		  
		  ListBox_BEAMs.ColumnWidths=s
		  
		  
		  ListBox_BEAMs.Heading(0)="Plan Name"
		  
		  
		  
		  
		  
		  for i=1 to num_col
		    ListBox_BEAMs.Heading(i)="Beam "+str(i)
		  next
		  
		  
		  for i=0 to UBound(gRTOG.Plan)
		    ListBox_BEAMs.AddRow""
		    ListBox_BEAMs.Cell(i,0)=gRTOG.Plan(i).Plan_ID
		    for k=0 to UBound(gRTOG.Plan(i).beam)
		      if k<num_col-1 Then
		        ListBox_BEAMs.CellType(i,k+1)=2
		      end
		    next
		  next
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events ListBox_BEAMs
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
#tag Events PushButton_Copy
	#tag Event
		Sub Action()
		  dim i,k as integer
		  
		  
		  
		  
		  for i=0 to UBound(gRTOG.Plan)
		    for k=0 to UBound(gRTOG.Plan(i).beam)
		      if k<ListBox_BEAMs.ColumnCount Then
		        if ListBox_BEAMs.CellCheck(i,k+1) then
		          gRTOG.McGill_Copy_Beam(Plan_Index,i,k)
		        end
		      end
		    next
		  next
		  
		  UpDate
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
#tag EndViewBehavior
