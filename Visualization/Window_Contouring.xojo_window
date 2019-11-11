#tag Window
Begin Window Window_Contouring
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   True
   Height          =   570
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   -1100839426
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   ""
   Visible         =   True
   Width           =   1278
   Begin Canvas Canvas
      AcceptFocus     =   True
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   "False"
      Height          =   410
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   15
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   43
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   661
   End
   Begin Slider Slider_Window_Width
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   81
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
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TickStyle       =   0
      Top             =   514
      Transparent     =   False
      Value           =   0
      Visible         =   True
      Width           =   187
   End
   Begin Slider Slider_Window_Level
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   81
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
      TabPanelIndex   =   0
      TabStop         =   True
      TickStyle       =   0
      Top             =   476
      Transparent     =   False
      Value           =   0
      Visible         =   True
      Width           =   187
   End
   Begin CheckBox CheckBox_Image
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   837
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      State           =   1
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   510
      Transparent     =   False
      Underline       =   False
      Value           =   "True"
      Visible         =   True
      Width           =   20
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
      Left            =   15
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Level"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   476
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   54
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   15
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Window"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   514
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   54
   End
   Begin ListBox ListBox_Struc
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   7
      ColumnsResizable=   True
      ColumnWidths    =   ""
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
      Height          =   410
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   837
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   True
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   43
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   421
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin BevelButton BevelButton_edit
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   "Edit"
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   970
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   476
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   67
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   728
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Show Image"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   508
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   104
   End
   Begin CheckBox CheckBox_Structures
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   837
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      State           =   1
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   478
      Transparent     =   False
      Underline       =   False
      Value           =   "True"
      Visible         =   True
      Width           =   20
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   728
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Show Structures"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   476
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   104
   End
   Begin Slider Slider_Scale
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   568
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
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TickStyle       =   0
      Top             =   476
      Transparent     =   False
      Value           =   0
      Visible         =   True
      Width           =   135
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   462
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Scale %"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   476
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   54
   End
   Begin PopupMenu PopupMenu_segments
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   1059
      ListIndex       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   475
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   156
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   518
      LimitText       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "100"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   476
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   38
   End
   Begin ListBox ListBox_Preview
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   0
      ColumnsResizable=   False
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   128
      DropIndicatorVisible=   False
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   2
      GridLinesVertical=   1
      HasHeading      =   False
      HeadingIndex    =   -1
      Height          =   410
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   681
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
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   43
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   148
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin Slider Slider_Trans
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   568
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
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      TickStyle       =   0
      Top             =   512
      Transparent     =   False
      Value           =   0
      Visible         =   True
      Width           =   135
   End
   Begin Label StaticText_level1
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
      Left            =   305
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Untitled"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   476
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin Label StaticText_window1
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
      Left            =   305
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Untitled"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   508
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   462
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   " Transparency"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   510
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   94
   End
   Begin Label StaticText7
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
      Left            =   973
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "AutoContour Threshold"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   509
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   159
   End
   Begin TextField Thresh_EditField
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
      Left            =   1158
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
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   509
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   57
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  Task_Contour.checked=False
		  app.which_window_Contouring=False
		  ListBox_Preview.DeleteAllRows
		  ListBox_Struc.DeleteAllRows
		End Sub
	#tag EndEvent

	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  
		End Function
	#tag EndEvent

	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  File_Save_Plans.Enabled=False
		  File_Save_Contours.Enabled=True
		  
		  
		  File_ImportPatient.Enabled=True
		  Task_TreatmentPlanning.checked=False
		  Task_TreatmentPlanning.enabled=True
		  Task_Contour.checked=True
		  Task_Contour.enabled=false
		  
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  app.which_window_Contouring=True
		  Open_Win
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  ReDraw_Canvas
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  ReDraw_Canvas
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub FillROI(minx as Integer, maxx as Integer, miny as Integer, maxy as Integer)
		  Dim Threshold,i,j,size_x,size_y,Gradient(-1),Mask(-1),tempval as Integer
		  Dim segment,tempx,tempy,cw,ch,ind_x,ind_y,ROI_Xoff,ROI_Yoff as integer
		  Dim temp_dim as Double
		  Dim buffer_offy, buffer_offx, px,py as Double
		  Dim P as RTOG_Structure_Point
		  Dim picmask as Picture
		  Dim count,minind as Integer
		  Dim XPoints(-1) as Double
		  Dim Ypoints(-1) as Double
		  Dim Ang(-1) as Double
		  Dim centx,centy,dx,dy,temp1,temp2,temp3 as Double
		  
		  cw=Canvas.width
		  ch=Canvas.Height
		  
		  Segment=PopupMenu_Segments.listIndex
		  
		  buffer_offx=round((cw-gvis.nx*scale)/2+0.5*gvis.scale_width)-Pan_X
		  buffer_offy=round((ch-gvis.ny*scale)/2+0.5*gvis.scale_height)-Pan_Y
		  
		  size_x=maxx-minx
		  size_y=maxy-miny
		  
		  picmask=New Picture(gvis.nx,gvis.ny,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		  
		  Redim Mask(gvis.nx*gvis.ny)
		  Redim Gradient(gvis.nx*gvis.ny)
		  
		  Threshold=CDbl(Thresh_EditField.Text)
		  
		  for j=0 to gvis.ny-1
		    for i=0 to gvis.nx-1
		      Mask(i+j*gvis.nx)=0
		    next
		  next
		  
		  
		  'mask points which are greater than threshold
		  for j=miny to maxy
		    for i=minx to maxx
		      tempval=gRTOG.Scan(slice).voxel(i+j*gvis.nx)
		      if(tempval>Threshold) Then
		        Mask(i+j*gvis.nx)=1
		      End
		    next
		  next
		  
		  
		  
		  
		  for j=0 to gvis.ny-1
		    for i=0 to gvis.nx-1
		      Gradient(i+j*gvis.nx)=0
		    next
		  next
		  
		  ''gradient image of mask
		  count=0
		  for j=miny-1 to maxy+1
		    for i=minx-1 to maxx+1
		      
		      if Mask(i+j*gvis.nx) > 0 Then
		        
		        if Mask(i-1+j*gvis.nx)=0 Then
		          Gradient(i+j*gvis.nx)=1
		          count=count+1
		        elseif Mask(i+1+j*gvis.nx)=0 Then
		          Gradient(i+j*gvis.nx)=1
		          count=count+1
		        else
		          Gradient(i+j*gvis.nx)=0
		        end
		        
		      end
		      
		    next
		  next
		  
		  
		  
		  Redim XPoints(count)
		  Redim Ypoints(count)
		  Redim Ang(count)
		  
		  ''extract contour from gradient image
		  count=0
		  for j=0 to gvis.ny-1
		    for i=0 to gvis.nx-1
		      
		      if(Gradient(i+j*gvis.ny)<>0) Then
		        XPoints(count)=(i+gvis.xoff_set-gvis.nx/2)*gvis.scale_width
		        YPoints(count)=-(j-gvis.yoff_set-gvis.ny/2)*gvis.scale_height
		        count=count+1
		      end
		      
		    next
		  next
		  
		  'sort points in clockwise order
		  
		  'find centroid'
		  centx=0
		  centy=0
		  for i=0 to count-1
		    centx=centx+XPoints(i)
		    centy=centy+Ypoints(i)
		  next
		  
		  centx=centx/count
		  centy=centy/count
		  
		  'calculate angle
		  for i=0 to count-1
		    dx=XPoints(i)-centx
		    dy=Ypoints(i)-centy
		    Ang(i)=ATan2(dy,dx)*(180/3.14159)
		    if Ang(i) < 0 then
		      Ang(i)=360+Ang(i)
		    end
		  next
		  
		  'sort by angle
		  
		  for i=0 to count-1
		    temp1=Ang(i)
		    minind=i
		    for j=i+1 to count-1
		      temp2=Ang(j)
		      if temp2<temp1 Then
		        temp1=temp2
		        minind=j
		      end
		    next
		    temp1=XPoints(minind)
		    temp2=Ypoints(minind)
		    temp3=Ang(minind)
		    XPoints(minind)=XPoints(i)
		    Ypoints(minind)=Ypoints(i)
		    Ang(minind)=Ang(i)
		    XPoints(i)=temp1
		    Ypoints(i)=temp2
		    Ang(i)=temp3
		  next
		  
		  for i=0 to count-1
		    
		    P=new RTOG_Structure_Point
		    
		    P.x=XPoints(i)
		    P.y=Ypoints(i)
		    P.z=gRTOG.Scan(slice).Z_Value
		    
		    gpoly.Struct.Structure_Data(Slice).Segments(segment).points.append P
		    Canvas.Refresh
		    
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Make_Contours()
		  //------------------------------
		  // Main method to call 2nd order functions to draw contours
		  // 
		  //------------------------------
		  Dim tran as Integer
		  //------------------------------
		  
		  
		  
		  gVis.Contours.Contour_Axial=New Picture(gVis.nx,gVis.ny,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		  //gVis.Contours.Contour_Axial.Graphics.UseOldRenderer=True
		  //gVis.Contours.Contour_Axial.Graphics.ClearRect 0,0,gvis.nx,gvis.ny
		  gVis.Contours.Contour_Axial.Mask.Graphics.ClearRect 0,0,gvis.nx,gvis.ny
		  tran=Round((Window_Contouring.Slider_Trans.Value/100)*255)
		  
		  // Method to fill contours onto image
		  gVis.Contours.Contour_Image_DrawAxial_Structures(slice,tran)
		  
		  
		  ReDraw_Canvas
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Open_Win()
		  Dim i as integer
		  
		  BevelButton_edit.Enabled=False
		  Pop_listbox
		  
		  Slider_Window_Level.Minimum=gvis.min_pix
		  Slider_Window_Level.Maximum=gvis.max_pix
		  Slider_Window_Width.Minimum=0
		  Slider_Window_Width.Maximum=gvis.max_pix-gvis.min_pix
		  
		  Slider_Window_Level.Value=gvis.WL
		  Slider_Window_Width.Value=gvis.ww
		  StaticText_level1.Text=Str(gvis.WL)
		  StaticText_window1.Text=str(gvis.ww)
		  
		  Slider_Trans.Maximum=100
		  Slider_Trans.Minimum=0
		  Slider_Trans.Value=50
		  Slider_Scale.Maximum=500
		  Slider_Scale.Minimum=10
		  Slider_Scale.Value=100
		  scale=1
		  
		  Pan_X=0
		  Pan_Y=0
		  slice=0
		  
		  for i =0 to UBound(gvis.scans)
		    ListBox_Preview.AddRow ""
		  next
		  
		  Options_string="Add Point,Move Point,Delete Point,Scale,Move Segment"
		  options=1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Pop_listbox()
		  Dim i as integer
		  ListBox_Struc.columnwidths="25%,15%,15%,15%,15%,15%,25%"
		  ListBox_Struc.heading(0)="Name"
		  ListBox_Struc.heading(1)="Colour"
		  ListBox_Struc.heading(2)="Fill"
		  ListBox_Struc.heading(3)="Show"
		  ListBox_Struc.heading(4)="Density Override"
		  ListBox_Struc.heading(5)="Density Value (g/cc)"
		  ListBox_Struc.heading(6)="Type"
		  
		  
		  
		  ListBox_Struc.deleteAllRows
		  
		  for i=0 to ubound(grtog.Structures.Structures)
		    ListBox_Struc.addrow grtog.Structures.Structures(i).Structure_name
		    ListBox_Struc.celltype(i,0)=3
		    
		    ListBox_Struc.celltype(i,2)=2
		    ListBox_Struc.cellCheck(i,2)=gVis.contour_fill(i)
		    
		    ListBox_Struc.celltype(i,3)=2
		    ListBox_Struc.cellCheck(i,3)=gVis.contour_show(i)
		    
		    ListBox_Struc.celltype(i,4)=2
		    ListBox_Struc.CellCheck(i,4)=grtog.Structures.Structures(i).ElectronDensityOverride
		    
		    ListBox_Struc.Cell(i,5)= Format(grtog.Structures.Structures(i).ElectronDensity,"-0.00##")
		    ListBox_Struc.celltype(i,5)=3
		    
		    ListBox_Struc.Cell(i,6)= grtog.Structures.Structures(i).StructureType
		    ListBox_Struc.celltype(i,6)=3
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Pop_Segments()
		  //---------------------------------
		  // Update the segment popupmenu 
		  // for the selected contour
		  //
		  //---------------------------------
		  Dim j,start as integer
		  //----------------------------------
		  
		  
		  start=PopupMenu_Segments.ListIndex
		  PopupMenu_Segments.deleteAllRows
		  if gpoly <> nil then //Tanner: This is necessary to avoid the nil exception as gpoly doesn't always exist for every case where Pop_Segments is called
		    if gpoly.Struct.Structure_Data(slice) <> nil then
		      for j = 0 to UBound(gpoly.Struct.Structure_Data(slice).Segments)
		        PopupMenu_Segments.addRow "Segment " +str(j+1)
		      next
		      if UBound(gpoly.Struct.Structure_Data(slice).Segments)<= -1 then
		        Options=0
		      else
		        Options=1
		      end
		      if PopupMenu_Segments.ListCount >= start and start <>-1 Then
		        PopupMenu_Segments.ListIndex=start
		      else
		        PopupMenu_Segments.ListIndex=0
		      end
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReDraw_Canvas()
		  //------------------------------------------
		  // Method to generate/paint new image and contours
		  //
		  //------------------------------------------
		  Dim buffer_offx,buffer_offy,k as integer
		  Dim pixx,pixy as Integer
		  Dim pixel_vale as String
		  Dim g as Graphics
		  Dim ROI_width,ROI_height,i,j as integer
		  Dim file as RTOG_Structure_Slice
		  Dim poly, poly2 as Class_Polygon
		  Dim x,y as Single
		  //------------------------------------------
		  Display=new Picture(Canvas.Width,Canvas.Height,32)
		  g=Display.Graphics
		  
		  g.ForeColor=RGB(0,0,0)
		  g.FillRect(0,0,g.Width,g.Height)
		  
		  //draw the image (ct, mr or whatever)
		  buffer_offx=(g.Width-gVis.nx*scale)/2-Pan_X
		  buffer_offy=(g.Height-gVis.ny*scale)/2-Pan_Y
		  
		  
		  // Paint CT image
		  if Window_Contouring.CheckBox_image.Value then
		    g.DrawPicture(gvis.scans(slice),buffer_offx,buffer_offy,gVis.nx*scale,gVis.ny*scale,0,0,gVis.nx,gVis.ny)
		  end
		  
		  // Paint filled-in contour image
		  ''if Window_Contouring.CheckBox_Structures.Value and Window_Contouring.BevelButton_edit.Value=False then //Tanner
		  if Window_Contouring.CheckBox_Structures.Value then
		    g.DrawPicture(gvis.Contours.Contour_Axial,buffer_offx,buffer_offy,gVis.nx*scale,gVis.ny*scale,0,0,gVis.nx,gVis.ny)
		  end
		  
		  
		  
		  ROI_width=ROI_max_X-ROI_min_X
		  ROI_height=ROI_max_Y-ROI_min_Y
		  
		  
		  // Paint the points of the contour which is selected
		  if BevelButton_edit.Value then
		    gpoly.Paint_Poly(g,slice,PopupMenu_segments.ListIndex,g.Width,g.Height,Pan_X,Pan_Y,scale)
		    g.ForeColor=RGB(255,0,0)
		    g.DrawRect ROI_min_X,ROI_min_Y,ROI_width,ROI_height
		  end
		  
		  
		  if Window_Contouring.CheckBox_Structures.Value Then //Tanner
		    for i =0 to UBound(grtog.Structures.Structures)
		      if gVis.contour_show(i) Then
		        if BevelButton_edit.Value and Edit_Contour_Index=i then
		          // Do nothing as structure is in temp array and contour has already been painted
		        else
		          file = grtog.Structures.Structures(i).structure_Data(slice)
		          for j=0 to UBound(file.Structure_Poly)
		            
		            poly2 = new class_polygon'now draw contour out lines
		            poly =file.Structure_Poly(j)
		            for k =0 to ubound(file.segments(j).Points)
		              if (2*k+2)<=UBound(Poly.Points_D) Then
		                x=poly.Points_D(2*k+1)
		                y=poly.Points_D(2*k+2)
		                pixx=Round(x*scale+buffer_offx)
		                pixy=Round(y*scale+buffer_offy)
		                poly2.AddPoint pixx,pixy
		              end
		            next
		            g.ForeColor=gVis.colour(i)
		            g.DrawPolygon poly2.Points
		            
		          Next
		        end
		      end
		    Next
		  end
		  
		  
		  
		  
		  pixx=Window_Contouring.Pixel_X
		  pixy=Window_Contouring.Pixel_Y
		  
		  if pixy <= gvis.ny and pixx<= gvis.ny and pixy> 0 and pixx> 0 then
		    pixel_vale=Format(gRTOG.Scan(slice).voxel(pixx+gvis.nx*(pixy-1)-1),"-#.##")
		  else
		    pixel_vale="Out of Bounds"
		  end
		  
		  g.foreColor=&c00FFFF
		  g.textSize=10
		  g.drawstring (("Name : "+gRTOG.Patient_Name+" "+gRTOG.Patient_Surname), 10, 12)
		  g.drawstring "ID  #  : "+gRTOG.Patient_ID, 10, 24
		  g.drawstring "X , Y (cm) : "+Format(Window_Contouring.Mouse_X_point,"-#.##") +" , "+Format(Window_Contouring.Mouse_y_point,"-#.##"), 10,36
		  g.DrawString "Pixel Value : "+pixel_vale,10,48
		  g.drawstring "Z : "+str(gRTOG.Scan(slice).Z_Value)+ " cm     ("+str(Slice+1)+"/"+str(UBound(gvis.scans)+1)+")", 10,60
		  
		  Canvas.Refresh(False)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Display As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		Edit_Contour_Index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Mouse_X_point As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Mouse_Y_point As single
	#tag EndProperty

	#tag Property, Flags = &h0
		old_x As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		old_y As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		options As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Options_string As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Pan_X As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Pan_Y As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Pixel_X As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Pixel_Y As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		point_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ROI_max_X As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ROI_max_Y As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ROI_min_X As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ROI_min_Y As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		scale As double
	#tag EndProperty

	#tag Property, Flags = &h0
		slice As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Xpoint As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Ypoint As integer
	#tag EndProperty


#tag EndWindowCode

#tag Events Canvas
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  If Keyboard.AsyncKeyDown(123) then
		    //do something with the left arrow key
		    slice=slice -1
		    if slice <0 then
		      slice =0
		    end
		    Make_Contours
		    //if BevelButton_edit.Value then //Tanner update 2012
		    Pop_Segments
		    //end
		  end if
		  
		  If Keyboard.AsyncKeyDown(124) then
		    //do something with the right arrow key...
		    slice=slice+1
		    if slice>UBound(gvis.scans) then
		      slice=slice-1
		    end
		    Make_Contours
		    //if BevelButton_edit.Value then //Tanner
		    Pop_Segments
		    //end
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  if BevelButton_edit.Value and options>0 then
		    dim MI as MenuItem
		    
		    MI = New MenuItem
		    MI.Text = "Add Point"
		    base.Append MI
		    MI = New MenuItem
		    MI.Text = "Move Point"
		    base.Append MI
		    MI = New MenuItem
		    MI.Text = "Delete Point"
		    base.Append MI
		    MI = New MenuItem
		    MI.Text = "Scale"
		    base.Append MI
		    MI = New MenuItem
		    MI.Text = "Move Segment"
		    base.Append MI
		    MI = New MenuItem
		    MI.Text = "Copy Sup"
		    base.Append MI
		    MI = New MenuItem
		    MI.Text = "Copy Inf"
		    base.Append MI
		    MI = New MenuItem
		    MI.Text= "Define ROI"
		    base.Append MI
		    MI = New MenuItem
		    MI.Text = "AutoContour"
		    base.Append MI
		    
		    Return True
		  end
		  
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Select Case hitItem.Text
		  Case "Add Point"
		    options=1
		  Case "Move Point"
		    options=2
		  Case "Delete Point"
		    options=3
		  Case "Scale"
		    options=4
		  Case "Move Segment"
		    options=5
		  Case "Copy Sup"
		    options=6
		    gpoly.Change
		  Case "Copy Inf"
		    options=7
		    gpoly.Change
		  Case "Define ROI"
		    options=8
		  Case "AutoContour"
		    options=9
		  End Select
		  ReDraw_Canvas
		  Return True
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  if g<> nil Then
		    if g.Width>0 and g.Height>0 Then
		      g.DrawPicture Display,0,0
		    end
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Dim segment,tempx,tempy,i,j,size ,cw,ch as integer
		  Dim buffer_offy, buffer_offx, px_cm,py_cm,px_pixel,py_pixel as Single
		  Dim P as RTOG_Structure_Point
		  Dim x_left,x_right,y_up,y_down,temp1,temp2,temp3,temp4 as Integer
		  
		  cw=Canvas.width
		  ch=Canvas.Height
		  self.Focus=me
		  
		  If IsContextualClick then
		    
		    
		    
		  else
		    
		    Segment=PopupMenu_Segments.listIndex
		    
		    buffer_offx=round((cw-gvis.nx*scale)/2+0.5*gvis.scale_width)-Pan_X
		    buffer_offy=round((ch-gvis.ny*scale)/2+0.5*gvis.scale_height)-Pan_Y
		    
		    px_pixel=(X-buffer_offx)/scale
		    Pixel_X=Round(px_pixel)
		    px_cm=(px_pixel*gvis.scale_width+gvis.xoff_set)
		    Mouse_X_point=px_cm
		    
		    
		    py_pixel=(Y-buffer_offy)/scale
		    Pixel_y=Round(py_pixel)
		    py_cm=(py_pixel*gvis.scale_height+gvis.yoff_set)
		    Mouse_Y_point=py_cm
		    ReDraw_Canvas
		    
		    'Pan
		    if Keyboard.AsyncKeyDown(49) then
		      Xpoint=x
		      Ypoint=y
		      Return True
		    end
		    
		    
		    if bevelButton_Edit.value=true then
		      gPoly.scan_index =Slice
		      Segment=PopupMenu_segments.listIndex
		      if Segment>=0 then
		        
		        if options = 1 then ' "Add Point" then
		          P=new RTOG_Structure_Point
		          // Point in cm 
		          P.x=px_cm
		          P.y=py_cm
		          p.z=gRTOG.Scan(slice).Z_Value
		          gpoly.Struct.Structure_Data(Slice).Segments(segment).points.append P
		          
		          ReDraw_Canvas
		        end
		        
		        if options=3 then 'Delete Point" then
		          size=gPoly.Structure_Poly(segment).numberOfPoints
		          for i=1 to size
		            if abs(gPoly.Structure_Poly(segment).points(i*2-1)-X)<10 and abs(gPoly.Structure_Poly(segment).points(i*2)-Y)<10 then
		              gpoly.Struct.Structure_Data(slice).Segments(Segment).points.remove (i-1)
		              size=size-1
		              ReDraw_Canvas
		            end
		          next
		        end
		        
		        if options = 2 then '"Move Point" Then
		          size=gPoly.Structure_Poly(segment).numberOfPoints
		          for i=1 to size
		            if abs(gPoly.Structure_Poly(segment).points(i*2-1)-X)<10 and abs(gPoly.Structure_Poly(segment).points(i*2)-Y)<10 then
		              point_index=i
		              return true
		            end
		          next
		        end
		        
		        '
		        if options = 5 then 'Move Segment" Then
		          if gPoly.Structure_Poly(segment).IsWithin(x,y) =true then
		            xpoint=x
		            ypoint=y
		            return true
		          end
		        end
		        
		        
		        if options=4 then '"Scale" Then
		          xpoint=x
		          Ypoint=y
		          return true
		        end
		        
		        if options=8 then 'Define ROI" Then
		          ROI_min_X=x
		          ROI_min_Y=y
		          return true
		        end
		        
		        if options=9 then 'AutoContour" Then
		          'temp1=ROI_min_X
		          'temp2=ROI_min_Y
		          'temp3=ROI_max_X
		          'temp4=ROI_max_Y
		          'if (x>ROI_min_X and y>ROI_min_Y and x<ROI_max_X and y<ROI_max_Y) Then
		          'x_left=(ROI_min_X-buffer_offx)/scale
		          'if x_left < 0 Then
		          'x_left=0
		          'end
		          'x_right=(ROI_max_X-buffer_offx)/scale
		          'temp1=slice
		          'tempx=gvis.nx
		          'if x_right>(gvis.nx-1) Then
		          'x_right=gvis.nx-1
		          'end
		          'y_up=(ROI_min_Y-buffer_offy)/scale
		          'if y_up < 0 then
		          'y_up=0
		          'end
		          'y_down=(ROI_max_Y-buffer_offy)/scale
		          'tempy=gvis.ny
		          'if y_down >  (gvis.ny-1) then
		          'y_down=gvis.ny-1
		          'end
		          '
		          'FillROI(x_left,x_right,y_up,y_down)
		          'me.Refresh(false)
		          'end
		          
		        end
		        
		      end
		      
		    end
		  end
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  Dim segment,tempx,tempy,struct ,cw,ch,i as integer
		  Dim buffer_offy, buffer_offx, px,py,px_old,py_old as Double
		  
		  cw=Canvas.width
		  ch=Canvas.Height
		  
		  
		  Segment=PopupMenu_Segments.listIndex
		  
		  buffer_offx=round((cw-gvis.nx*scale)/2+0.5*gvis.scale_width)-Pan_X
		  buffer_offy=round((ch-gvis.ny*scale)/2+0.5*gvis.scale_height)-Pan_Y
		  
		  px=(X-buffer_offx)/scale
		  px=(px*gvis.scale_width+gvis.xoff_set)
		  py=(Y-buffer_offy)/scale
		  py=(py*gvis.scale_height+gvis.yoff_set)
		  
		  
		  //Pan
		  if Keyboard.AsyncKeyDown(49) then
		    Me.MouseCursor= System. Cursors.Handclosed
		    tempx=Xpoint-x
		    Pan_X=Pan_X+tempx
		    tempy=Ypoint-y
		    pan_y=Pan_Y+tempy
		    me.Refresh(false)
		    if BevelButton_edit.Value=True then
		      Me.MouseCursor= System. Cursors.StandardPointer
		    else
		      Me.MouseCursor= System. Cursors.Handopen
		    end
		    ypoint=y
		    Xpoint=x
		  end
		  
		  if options=  2 then '"Move Point" Then
		    gpoly.Struct.Structure_Data(slice).Segments(segment).points(point_index-1).x=px
		    gpoly.Struct.Structure_Data(slice).Segments(segment).points(point_index-1).y=py
		    ReDraw_Canvas
		  end
		  
		  
		  if options = 4 Then '"Scale" Then
		    if x<>xpoint or y<>Ypoint then
		      gPoly.Structure_Poly(Segment).Scale_D((x-Xpoint)+100,(ypoint-y)+100)
		      gPoly.Save_Scale
		      xpoint=x
		      ypoint=y
		    end
		    ReDraw_Canvas
		  end
		  
		  
		  
		  
		  
		  
		  if options= 5 Then '"Move Segment
		    if x<>xpoint then
		      px=x*gvis.scale_width
		      px_old=Xpoint*gvis.scale_width
		      for i =1 to gPoly.Structure_Poly(segment).NumberOfPoints
		        gpoly.Struct.Structure_Data(slice).Segments(segment).points(i-1).x=gpoly.Struct.Structure_Data(slice).Segments(segment).points(i-1).x+(px-px_old)
		      next
		      xpoint=x
		    end
		    if y<>ypoint then
		      py=y*gvis.scale_height
		      py_old=ypoint*gvis.scale_height
		      for i =1 to gPoly.Structure_Poly(segment).NumberOfPoints
		        gpoly.Struct.Structure_Data(slice).Segments(segment).points(i-1).y=gpoly.Struct.Structure_Data(slice).Segments(segment).points(i-1).y+(py-py_old)
		      next
		      ypoint=y
		    end
		    me.Refresh(false)
		  end
		  
		  
		  if options=8 Then '"Define ROI
		    ROI_max_X=X
		    ROI_max_Y=Y
		    me.Refresh
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider_Window_Width
	#tag Event
		Sub ValueChanged()
		  if me.Value<>gvis.ww then
		    gvis.ww=me.Value
		    gvis.WL_Recalculate
		    StaticText_window1.Text=str(me.Value)
		  end
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider_Window_Level
	#tag Event
		Sub ValueChanged()
		  StaticText_level1.Text=str(me.Value)
		  if me.Value<>gvis.wl then
		    gvis.WL=me.Value
		    gvis.WL_Recalculate
		  end
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Image
	#tag Event
		Sub Action()
		  
		  
		  Canvas.Refresh(false)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ListBox_Struc
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  dim tmpcolor as color
		  dim i As  integer
		  
		  if column=1  then
		    tmpcolor=gvis.colour(row)
		    if(selectcolor(tmpcolor,"Select a color")) then
		      gvis.colour(row)=tmpcolor
		      grtog.Structures.Structures(row).scolor=tmpcolor
		      Make_Contours
		    end
		    
		    
		  end
		  
		  
		  
		  
		  if row < ListBox_Struc.ListCount then
		    BevelButton_edit.Enabled=True
		  end
		End Function
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  if column=1 then
		    if row <= ubound(grtog.Structures.Structures) and ubound(gvis.colour)>-1 then
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
		    Make_Contours
		    
		  elseif column=4 Then
		    grtog.Structures.Structures(row).ElectronDensityOverride=me.CellCheck(row,column)
		    
		  end
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  if ListBox_Struc.ListIndex=-1 then
		    BevelButton_edit.Enabled=False
		  end
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  dim MI as MenuItem
		  
		  MI = New MenuItem
		  MI.Text = "Add New Structure"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "Delete Structure"
		  base.Append MI
		  
		  
		  
		  
		  
		  Return True
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Dim StructureNum,i as Integer
		  
		  
		  Select Case hitItem.Text
		    
		  Case "Add New Structure"
		    gRTOG.Add_Structure
		    
		  Case "Delete Structure"
		    StructureNum=me.ListIndex
		    
		    
		    if StructureNum>-1 and StructureNum<=UBound(grtog.Structures.Structures) Then
		      
		      i=MsgBox("Are you sure you want to delete Structure "+chr(13)+grtog.Structures.Structures(StructureNum).Structure_Name+" ?",1,"Warning")
		      
		      if i=1 Then
		        gRTOG.Delete_Structure(StructureNum)
		        Window_Contouring.Pop_listbox
		      end
		    end
		    
		  End Select
		  gvis.Structure_colour
		  Pop_listbox
		  Return True
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  if column=0 then
		    grtog.Structures.Structures(row).Structure_Name=ListBox_Struc.Cell(row,column)
		  elseif column=5 Then
		    grtog.Structures.Structures(row).ElectronDensity=val(me.Cell(row,column))
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Function HeaderPressed(column as Integer) As Boolean
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_edit
	#tag Event
		Sub Action()
		  // Method to enable contour editing
		  
		  if bevelButton_Edit.value =true then
		    gpoly=new Class_Structures
		    if ListBox_Struc.ListIndex>-1 Then
		      gpoly.Load(ListBox_Struc.ListIndex)
		      Edit_Contour_Index=ListBox_Struc.ListIndex
		      //CheckBox_Structures.Enabled=False //Tanner
		      //ListBox_Struc.enabled=false //Tanner
		      PopupMenu_segments.Enabled=true
		      Pop_Segments
		      Make_Contours //Tanner
		    end
		  end
		  
		  if bevelButton_Edit.value =false then
		    gpoly.Save_struc(Edit_Contour_Index)
		    gpoly=nil
		    Make_Contours
		    ListBox_Struc.enabled=true
		    CheckBox_Structures.Enabled=True
		    PopupMenu_segments.DeleteAllRows
		    PopupMenu_segments.enabled=false
		  end
		  ReDraw_Canvas
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Structures
	#tag Event
		Sub Action()
		  
		  
		  Canvas.Refresh(false)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider_Scale
	#tag Event
		Sub ValueChanged()
		  scale=Slider_Scale.Value/100
		  EditField_Scale.Text=Str(Slider_Scale.Value)
		  
		  ReDraw_Canvas
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_segments
	#tag Event
		Sub Change()
		  ReDraw_Canvas
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  
		  Dim s as String
		  Dim i,last as Integer
		  s="Add Segment,Delete Segment"
		  last= CountFields(s,",")
		  For i=1 to last
		    Me.addRow NthField(s,",",i)
		  Next
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Dim i  as integer
		  Dim temp as RTOG_Structure_Segment
		  Dim other_temp as RTOG_Structure_Slice
		  
		  
		  select Case hititem.Text
		    
		  case "Add Segment" 
		    i=ubound(gPoly.Structure_Poly)+1
		    temp = new RTOG_Structure_Segment
		    gpoly.Struct.Structure_Data(slice).segments.append Temp
		    Pop_Segments
		    Window_Contouring.PopupMenu_Segments.listIndex=i
		    
		  case  "Delete Segment"
		    i=Window_Contouring.PopupMenu_Segments.listIndex
		    if i>-1 then
		      gpoly.Struct.Structure_Data(slice).segments.remove i
		      Pop_Segments
		    end
		    
		  End Select
		  
		  
		  
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Scale
	#tag Event
		Sub TextChange()
		  
		  Slider_Scale.Value=val(EditField_Scale.Text)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ListBox_Preview
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  
		  if row<=UBound(gvis.scans) then
		    g.DrawPicture(gvis.scans(row),0,0,128,128,0,0,gvis.nx,gvis.ny)
		    g.foreColor=&c00FFFF
		    g.textSize=10
		    g.drawstring str(row+1), 10,15
		  end
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  
		  if row <=UBound(gvis.scans) then
		    slice=row
		    if BevelButton_edit.Value then
		      Pop_Segments
		    end
		    
		    Make_Contours
		    
		  end
		  
		  Return(True)
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Slider_Trans
	#tag Event
		Sub ValueChanged()
		  Canvas.Refresh(False)
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
		Name="Display"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Edit_Contour_Index"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
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
		Name="Mouse_X_point"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="single"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Mouse_Y_point"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="single"
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
		Name="old_x"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="old_y"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="options"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Options_string"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Pan_X"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Pan_Y"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Pixel_X"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Pixel_Y"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="point_index"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
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
		Name="ROI_max_X"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ROI_max_Y"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ROI_min_X"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ROI_min_Y"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="scale"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="double"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="slice"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
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
	#tag ViewProperty
		Name="Xpoint"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Ypoint"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
