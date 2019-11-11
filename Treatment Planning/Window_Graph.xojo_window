#tag Window
Begin Window Window_Graph
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   572
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   507357183
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Graph"
   Visible         =   True
   Width           =   956
   Begin Canvas_Plot Canvas_Graph
      AcceptFocus     =   True
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Axis_Grid       =   True
      Axis_Visible    =   False
      Backdrop        =   0
      BG              =   &c00000000
      Box             =   False
      Center_Scale    =   False
      Display         =   0
      DoubleBuffer    =   False
      drawXsub        =   False
      drawYsub        =   False
      Enabled         =   True
      EraseBackground =   "True"
      Errors          =   False
      Graph_Title     =   ""
      Height          =   345
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Interactive     =   False
      Interactive_index=   0
      Interactive_String=   ""
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      NewScale        =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   24
      Transparent     =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   916
      X1_Old          =   0.0
      X2_New          =   0.0
      xLabelPower     =   0
      xLabelPowerAuto =   False
      xRange          =   0.0
      xScaleMax       =   0.0
      xScaleMin       =   0.0
      xyz_index       =   0
      x_bottom        =   0
      X_Label         =   ""
      x_Maximum       =   0.0
      x_Minimum       =   0.0
      x_mouse         =   0
      x_mouse_value   =   0.0
      x_mouse_value_str=   ""
      x_Pow           =   0
      x_top           =   0
      Y1_Old          =   0.0
      Y2_New          =   0.0
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
      y_mouse_value_str=   "0"
      y_Pow           =   0
      y_top           =   0
   End
   Begin ListBox ListBox_Profiles
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   6
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
      Height          =   137
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
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
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   415
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   793
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PushButton PushButton_Properties
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Graph Properties"
      Default         =   False
      Enabled         =   True
      Height          =   25
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   825
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   415
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   111
   End
   Begin PushButton PushButton_Export_Text
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Export Profile Text"
      Default         =   False
      Enabled         =   True
      Height          =   25
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   825
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   527
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   111
   End
   Begin RadioButton RadioButton_x
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "X axis"
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   383
      Transparent     =   False
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   78
   End
   Begin RadioButton RadioButton_y
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Y axis"
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   110
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
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
      Width           =   71
   End
   Begin RadioButton RadioButton_distance
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Distance"
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   271
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   6
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
      Width           =   85
   End
   Begin RadioButton RadioButton_z
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Z axis"
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   193
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   7
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
      Width           =   66
   End
   Begin TextField EditField_X
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
      Left            =   482
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
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   382
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   99
   End
   Begin TextField EditField_Y
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
      Left            =   689
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
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   382
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   93
   End
   Begin Label StaticText1
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
      Left            =   368
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
      Text            =   "X (Position) ="
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   381
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   102
   End
   Begin Label StaticText2
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
      Left            =   600
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Y (Dose) ="
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   381
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   77
   End
   Begin PushButton PushButton_Export_Py
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Export Python Plot"
      Default         =   False
      Enabled         =   True
      Height          =   35
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   825
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   489
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   111
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Canvas_Open
		  Fill_Listbox
		  Canvas_Graph.Default_Settings
		  Canvas_Graph.Redraw
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  Canvas_Graph.Resize_Canvas
		  Canvas_Graph.Refresh
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  Canvas_Graph.Resize_Canvas
		  Canvas_Graph.Refresh
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Canvas_Open()
		  //-----------------------------------------
		  //General Open
		  //-----------------------------------------
		  Dim i,j as integer
		  Dim y1 as Single
		  Dim Pp as Class_Profile_One
		  //-----------------------------------------
		  
		  
		  
		  Canvas_Graph.Profiles=new Class_Profiles_All
		  
		  
		  
		  for i=0 to Window_Treatment.ListBox_Dose_profiles_Result.ListCount-1
		    if Window_Treatment.ListBox_Dose_profiles_Result.CellCheck(i,0) Then
		      j=val(Window_Treatment.ListBox_Dose_profiles_Result.Cell(i,3))
		      pp=new Class_Profile_One
		      pp=gRTOG.Profiles.One_Profile(j)
		      pp.Show=True
		      Canvas_Graph.Profiles.One_Profile.Append pp
		    end
		  next
		  
		  
		  
		  
		  for j=0 to UBound(Canvas_Graph.Profiles.One_Profile) // first  plot lines
		    for i=0 to UBound(Canvas_Graph.Profiles.One_Profile(j).Points)
		      y1=Canvas_Graph.Profiles.One_Profile(j).Points(i).value
		      if y1<Canvas_Graph.y_Minimum Then
		        Canvas_Graph.y_Minimum=y1
		      Elseif y1>Canvas_Graph.y_Maximum Then
		        Canvas_Graph.y_Maximum= y1
		      end
		    next
		    Canvas_Graph.Profiles.One_Profile(j).Point_Size=3
		    Canvas_Graph.Profiles.One_Profile(j).show_Line=True
		  next
		  
		  
		  
		  
		  //Properties to set depending on your preferences....
		  Canvas_Graph.Box=True  // True if you want a box around the plot.
		  Canvas_Graph.Axis_Visible=true   // True if you want the axis visible.
		  Canvas_Graph.Center_Scale=false  // True if you want the scales written down the axis, not on the edges.
		  
		  Canvas_Graph.Graph_Title="Dose Profile"
		  
		  if UBound(Canvas_Graph.Profiles.One_Profile)>-1 Then
		    Canvas_Graph.Y_Label=Canvas_Graph.Profiles.One_Profile(0).Value_Label
		    //Use Chr(13) followed by a space as a space on the Y_Label.
		  end
		  
		  Canvas_Graph.drawXsub = true
		  Canvas_Graph.drawYsub = true
		  
		  // Set following to set axes ranges manually.  Ignored if xAuto or yAuto set true
		  
		  Canvas_Graph.xLabelPowerAuto = false
		  Canvas_Graph.xLabelPower = 0
		  Canvas_Graph.yLabelPowerAuto = false
		  Canvas_Graph.yLabelPower = 0
		  Canvas_Graph.ReSize_Canvas  // Needed to initialize the canvas size.  If you want your window to
		  //resize your plot, you need to put a call to Resize_Canvas in your resize event in the
		  //window with the plot_Canvas.
		  Canvas_Graph.Default_Settings
		  Canvas_Graph.Refresh
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Fill_Listbox()
		  //------------------------------------------
		  //
		  //
		  //------------------------------------------
		  dim i,k as integer
		  dim g as Graphics
		  dim gg as Single
		  //------------------------------------------
		  
		  ListBox_Profiles.DeleteAllRows
		  ListBox_Profiles.ColumnCount=7
		  ListBox_Profiles.ColumnWidths="20%,10%,20%,10%,20%,10%,10%,"
		  ListBox_Profiles.Heading(0)="Profile"
		  ListBox_Profiles.Heading(1)="Colour"
		  ListBox_Profiles.Heading(2)="Max Value"
		  ListBox_Profiles.Heading(3)="Normalize"
		  ListBox_Profiles.ColumnType(3)=2
		  ListBox_Profiles.Heading(4)="Norm Value"
		  ListBox_Profiles.ColumnType(4)=3
		  
		  ListBox_Profiles.Heading(5)="Show Points"
		  ListBox_Profiles.ColumnType(5)=2
		  ListBox_Profiles.Heading(6)="Show"
		  ListBox_Profiles.ColumnType(6)=2
		  
		  
		  if Canvas_Graph.Profiles=nil Then
		    Return
		  end
		  
		  
		  for i=0 to UBound(Canvas_Graph.Profiles.One_Profile)
		    ListBox_Profiles.addrow (Canvas_Graph.Profiles.One_Profile(i).Label)
		    
		    gg=-23e34
		    for k=0 to UBound(Canvas_Graph.Profiles.One_Profile(i).Points)
		      if Canvas_Graph.Profiles.One_Profile(i).Points(k).value>gg Then
		        gg=Canvas_Graph.Profiles.One_Profile(i).Points(k).value
		      end
		    next
		    ListBox_Profiles.Cell(i,2)=Format(gg, "-#.#####e")
		    ListBox_Profiles.Cell(i,4)=Format(Canvas_Graph.Profiles.One_Profile(i).Normalize_value, "-#.#####e")
		    
		    if Canvas_Graph.Profiles.One_Profile(i).Normalize_value<>1 Then
		      Canvas_Graph.Profiles.One_Profile(i).Norm=True
		      ListBox_Profiles.CellCheck(i,3)=True
		    end
		    ListBox_Profiles.CellCheck(i,5)=Canvas_Graph.Profiles.One_Profile(i).Show_Marker
		    ListBox_Profiles.CellCheck(i,6)=Canvas_Graph.Profiles.One_Profile(i).Show
		    
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		NewScale As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		X1 As single
	#tag EndProperty

	#tag Property, Flags = &h0
		X2 As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Y1 As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Y2 As single
	#tag EndProperty


#tag EndWindowCode

#tag Events Canvas_Graph
	#tag Event
		Sub GotFocus()
		  if ListBox_Profiles.ListIndex>-1 and ListBox_Profiles.ListIndex<=UBound(Canvas_Graph.Profiles.One_Profile) Then
		    Canvas_Graph.Interactive=True
		    Canvas_Graph.Interactive_index=ListBox_Profiles.ListIndex
		  else
		    Canvas_Graph.Interactive=False
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  if X>=me.x_bottom and X<=me.x_top then
		    me.x_mouse=X
		    me.Sx
		  end
		  if y<=me.y_bottom and y>=me.y_top Then
		    me.y_mouse=y
		    me.SY
		  end
		  
		  
		  //draw the position
		  me.Redraw
		  
		  
		  EditField_X.Text=Format(me.x_mouse_value,"-#.####")
		  EditField_Y.Text=Format(me.y_mouse_value,"-#.####e")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ListBox_Profiles
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  if column=1 and row>=0 and row<=UBound(Canvas_Graph.Profiles.One_Profile) Then
		    g.ForeColor=Canvas_Graph.Profiles.One_Profile(row).Colour
		    g.FillRect 0,0,g.Width,g.Height
		  end
		  
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  Dim c  as Color
		  Dim b as Boolean
		  Dim i as Integer
		  
		  if column=1 and row>=0 and row<=UBound(Canvas_Graph.Profiles.One_Profile) Then
		    c= Canvas_Graph.Profiles.One_Profile(row).Colour//choose the default color shown in color picker
		    b=SelectColor(c,"Select a Color")
		    Canvas_Graph.Profiles.One_Profile(row).Colour=c
		    Canvas_Graph.Refresh
		  end
		  
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  //-------------------------
		  Dim gg,x,y,z as Single
		  Dim ff as String
		  //-------------------------
		  
		  if column=3 Then
		    // Normalize Profile
		    Canvas_Graph.Profiles.One_Profile(row).Norm=me.CellCheck(row,3)
		    Canvas_Graph.Default_Settings
		    Canvas_Graph.Redraw
		    
		    
		  elseif column=4 Then
		    // Normalize Value
		    if me.Cell(row,4)="max" Then
		      Canvas_Graph.Profiles.One_Profile(row).Normalize_value=val(me.Cell(row,2))
		      
		    elseif InStr(me.Cell(row,4),"=")>0 Then
		      ff=me.Cell(row,4)
		      gg=val(NthField(ff,"=",2))
		      x=0
		      y=0
		      z=0
		      
		      if InStr(me.Cell(row,4),"z=")>0 Then //Normalize at z=?
		        z=gg
		      elseif InStr(me.Cell(row,4),"x=")>0 Then //Normalize at x=?
		        x=gg
		      elseif InStr(me.Cell(row,4),"y=")>0 Then //Normalize at y=?
		        y=gg
		      end
		      Canvas_Graph.Profiles.One_Profile(row).Normalize_value=Canvas_Graph.Profiles.One_Profile(row).Get_Value_at_Point(x,y,z,true)
		      
		    elseif val(me.Cell(row,4))<>0 Then
		      Canvas_Graph.Profiles.One_Profile(row).Normalize_value=val(me.Cell(row,4))
		      
		    end
		    
		  elseif column=5 Then
		    // Show Marker Profile
		    Canvas_Graph.Profiles.One_Profile(row).Show_Marker=me.CellCheck(row,5)
		    //Canvas_Graph.Default_Settings
		    Canvas_Graph.Redraw
		    
		    
		  elseif column=6 Then
		    // show
		    Canvas_Graph.Profiles.One_Profile(row).Show=me.CellCheck(row,6)
		    //Canvas_Graph.Default_Settings
		    Canvas_Graph.Redraw
		    
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Properties
	#tag Event
		Sub Action()
		  //Window_Graph_Properties.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Export_Text
	#tag Event
		Sub Action()
		  //-------------------------------------
		  // Written by Ellis M and Marc M, Andrew Alexander
		  // UPDATED: Spet 6 2008
		  //
		  //-------------------------------------
		  Dim file As FolderItem
		  Dim fileStream as TextOutputStream
		  dim j as Integer
		  dim i as integer
		  Dim wantx, wanty, wantz As String
		  Dim wantvalue As String
		  //-------------------------------------
		  
		  
		  file=GetSaveFolderItem("plain/text","")
		  If file<> Nil then
		    fileStream=file.CreateTextFile
		    
		    for j=0 to UBound(Canvas_Graph.Profiles.One_Profile)
		      
		      filestream.Writeline Canvas_Graph.Profiles.One_Profile(j).Label
		      
		      fileStream.write "POINT 1: "
		      fileStream.WriteLine str(Canvas_Graph.Profiles.One_Profile(j).Pointa.x_cm) + " , " + str(Canvas_Graph.Profiles.One_Profile(j).pointa.y_cm)+" , " + str(Canvas_Graph.Profiles.One_Profile(j).pointa.z_cm)
		      fileStream.write "POINT 2: "
		      fileStream.WriteLine str(Canvas_Graph.Profiles.One_Profile(j).pointb.x_cm) + " , " + str(Canvas_Graph.Profiles.One_Profile(j).pointb.y_cm)+" , " + str(Canvas_Graph.Profiles.One_Profile(j).pointb.z_cm)
		      
		      
		      fileStream.WriteLine "X,Y,Z, DOSE "
		      for i =0 to UBound(Canvas_Graph.Profiles.One_Profile(j).Points)
		        wantx = Format(Canvas_Graph.Profiles.One_Profile(j).Points(i).x_cm,"-#.######e")
		        wanty = Format(Canvas_Graph.Profiles.One_Profile(j).Points(i).y_cm,"-#.######e")
		        wantz = Format(Canvas_Graph.Profiles.One_Profile(j).Points(i).z_cm,"-#.######e")
		        wantvalue = Format(Canvas_Graph.Profiles.One_Profile(j).Points(i).value,"-#.######e")
		        
		        
		        fileStream.WriteLine wantx+", "+wanty+", "+wantz+", "+wantvalue
		      next
		      fileStream.WriteLine
		      fileStream.WriteLine
		      
		    next
		    fileStream.Close
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_x
	#tag Event
		Sub Action()
		  Canvas_Graph.xyz_index=0
		  Canvas_Graph.Default_Settings
		  Canvas_Graph.Redraw
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_y
	#tag Event
		Sub Action()
		  Canvas_Graph.xyz_index=1
		  Canvas_Graph.Default_Settings
		  Canvas_Graph.Redraw
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_distance
	#tag Event
		Sub Action()
		  Canvas_Graph.xyz_index=3
		  Canvas_Graph.Default_Settings
		  Canvas_Graph.Redraw
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_z
	#tag Event
		Sub Action()
		  Canvas_Graph.xyz_index=2
		  Canvas_Graph.Default_Settings
		  Canvas_Graph.Redraw
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_X
	#tag Event
		Sub TextChange()
		  Dim gg,x,y,z as Single
		  
		  
		  if Canvas_Graph.Interactive  Then
		    gg= val(me.Text)
		    if RadioButton_z.Value Then
		      z=gg
		    elseif RadioButton_x.Value Then
		      x=gg
		    elseif RadioButton_y.Value Then
		      y=gg
		    end
		    
		    gg=Canvas_Graph.Profiles.One_Profile(Canvas_Graph.Interactive_index).Get_Value_at_Point(x,y,z,false)
		    
		    
		    EditField_Y.Text=Format(gg,"-#.####e")
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Export_Py
	#tag Event
		Sub Action()
		  //-------------------------------------
		  // Written Andrew Alexander
		  // UPDATED: Dec 6 2018
		  //
		  //-------------------------------------
		  Dim file As FolderItem
		  Dim fileStream as TextOutputStream
		  dim j as Integer
		  dim i as integer
		  Dim wantx, wanty, wantz As String
		  Dim wantvalue,x,y,z,dose,plota_label As String
		  //-------------------------------------
		  
		  
		  file=GetSaveFolderItem("plain/text","")
		  If file<> Nil then
		    fileStream=file.CreateTextFile
		    
		    filestream.Writeline "import numpy as np"
		    filestream.Writeline "import matplotlib.pyplot as plt"
		    filestream.Writeline "from matplotlib.ticker import (MultipleLocator, FormatStrFormatter,AutoMinorLocator)"
		    filestream.Writeline "minorLocator = AutoMinorLocator(2)"
		    filestream.Writeline "plt.ylabel('Dose')"
		    filestream.Writeline "plt.xlabel('Distance')"
		    filestream.Writeline "plt.title('MMCTP Plot')"
		    
		    
		    
		    for j=0 to UBound(Canvas_Graph.Profiles.One_Profile)
		      plota_label= Canvas_Graph.Profiles.One_Profile(j).Label
		      wantx=""
		      wanty="" 
		      wantz=""
		      wantvalue=""
		      for i =0 to UBound(Canvas_Graph.Profiles.One_Profile(j).Points)
		        if i>0 Then
		          wantx =wantx+", "
		          wanty =wanty+", "
		          wantz =wantz+", "
		          wantvalue=wantvalue+", "
		          
		        end
		        wantx =wantx+ Format(Canvas_Graph.Profiles.One_Profile(j).Points(i).x_cm,"-#.######e")
		        wanty =wanty+ Format(Canvas_Graph.Profiles.One_Profile(j).Points(i).y_cm,"-#.######e")
		        wantz =wantz+ Format(Canvas_Graph.Profiles.One_Profile(j).Points(i).z_cm,"-#.######e")
		        wantvalue =wantvalue+ Format(Canvas_Graph.Profiles.One_Profile(j).Points(i).value,"-#.######e")
		      next
		      
		      x="x=("+wantx+")"
		      y="y=("+wanty+")"
		      z="z=("+wantz+")"
		      dose="dose=("+wantvalue+")"
		      fileStream.WriteLine x
		      fileStream.WriteLine y
		      fileStream.WriteLine z
		      fileStream.WriteLine dose
		    next
		    
		    fileStream.WriteLine "plt.plot(x,y, label= "+plota_label+ ", marker=""x"")"
		    fileStream.WriteLine "plt.show()"
		    fileStream.Close
		  end if
		  
		  
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
		Name="NewScale"
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
		Name="X1"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="single"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="X2"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="single"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Y1"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="single"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Y2"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="single"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
