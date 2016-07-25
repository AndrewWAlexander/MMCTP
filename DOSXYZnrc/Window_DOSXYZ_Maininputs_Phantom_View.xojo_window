#tag Window
Begin Window Window_DOSXYZ_Maininputs_Phantom_View
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
   Height          =   660
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   256
   MinimizeButton  =   True
   MinWidth        =   256
   Placement       =   0
   Resizeable      =   True
   Title           =   "(Z-Y)"
   Visible         =   True
   Width           =   991
   Begin Canvas Canvas_Plot
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   553
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   746
   End
   Begin ScrollBar ScrollBar_Slice
      AcceptFocus     =   True
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
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
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   558
      Value           =   0
      Visible         =   True
      Width           =   746
   End
   Begin CheckBox CheckBox_Density
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Density"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   758
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      State           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   100
   End
   Begin CheckBox CheckBox_Materials
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Materials"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   861
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      State           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   100
   End
   Begin RadioButton RadioButton_XY
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "XY (MMCTP Coronal)"
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   758
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   46
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   162
   End
   Begin RadioButton RadioButton_XZ
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "XZ (MMCTP axial)"
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   758
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   78
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   176
   End
   Begin RadioButton RadioButton_YZ
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "YZ (MMCTP Sagital)"
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   758
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   110
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   168
   End
   Begin Listbox Listbox_Materials
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
      Height          =   277
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   758
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
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   142
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   213
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin Label StaticText_X
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
      Left            =   10
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Untitled"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   579
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   424
   End
   Begin Label StaticText_Y
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
      Left            =   10
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
      Text            =   "Untitled"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   604
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   424
   End
   Begin Label StaticText_Z
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
      Left            =   10
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Untitled"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   627
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   424
   End
   Begin Label StaticText_X1
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
      Left            =   446
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
      Text            =   "Maximum Density "
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   578
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   132
   End
   Begin TextField TextField_Max_Density
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
      Left            =   590
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
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   577
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin TextField TextField_Min_Density
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
      Left            =   590
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
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   602
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Label StaticText_X11
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
      Left            =   446
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Minimum Density "
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   603
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   132
   End
   Begin CheckBox CheckBox_Grid
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Show grid"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   690
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      State           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   577
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   100
   End
   Begin CheckBox CheckBox_Crosshair
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Crosshair"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   690
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      State           =   1
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   602
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   100
   End
   Begin Label StaticText_Info
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   135
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   758
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   True
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
      Top             =   431
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   213
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim value as integer
		  //right arrow
		  
		  
		  
		  
		  if keyboard.asyncKeyDown(124) then
		    value=ScrollBar_Slice.value+1
		    if value>ScrollBar_Slice.maximum then 
		      value=ScrollBar_Slice.minimum
		    end if
		    ScrollBar_Slice.value=value
		    canvas_Plot.refresh(false)
		    //left arrow
		  elseif keyboard.asynckeyDown(123) then
		    value=ScrollBar_Slice.value-1
		    if value<ScrollBar_Slice.minimum then 
		      value=ScrollBar_Slice.maximum
		    end if
		    ScrollBar_Slice.value=value
		    canvas_Plot.refresh(false)
		  end if
		  
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  Egsphant=new Class_DOSXYZ_EGSPhantSettings
		  ruler=new rulerClass
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  //fixed this to reflect the ratio dx/dy of the whole phantom
		  
		  OpenEGSPhant
		  
		  
		  
		  //fixing the ruler
		  if XYZ=1 Then
		    ruler.x1pix=(ruler.x1cm-egsphant.boundaryx(0))/scalex
		    ruler.x2pix=(ruler.x2cm-egsphant.boundaryx(0))/scalex
		    ruler.y1pix=(ruler.y1cm-egsphant.boundaryy(0))/scaley
		    ruler.y2pix=(ruler.y2cm-egsphant.boundaryy(0))/scaley
		    
		  elseif XYZ=2 Then
		    ruler.x1pix=(ruler.x1cm-egsphant.boundaryz(0))/scalex
		    ruler.x2pix=(ruler.x2cm-egsphant.boundaryz(0))/scalex
		    ruler.y1pix=(ruler.y1cm-egsphant.boundaryy(0))/scaley
		    ruler.y2pix=(ruler.y2cm-egsphant.boundaryy(0))/scaley
		    
		  else
		    ruler.x1pix=(ruler.x1cm-egsphant.boundaryz(0))/scalex
		    ruler.x2pix=(ruler.x2cm-egsphant.boundaryz(0))/scalex
		    ruler.y1pix=(ruler.y1cm-egsphant.boundaryy(0))/scaley
		    ruler.y2pix=(ruler.y2cm-egsphant.boundaryy(0))/scaley
		  end
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub drawgridphant_XY()
		  dim i as integer
		  
		  for i=0 to ubound(egsphant.boundaryX) 
		    Display.graphics.drawline (egsphant.boundaryX(i)-originx)/scalex,0,(egsphant.boundaryX(i)-originx)/scalex,Display.height
		  next
		  for i=0 to ubound(egsphant.boundaryY)
		    Display.graphics.drawline 0,(egsphant.boundaryY(i)-originy)/scaley,Display.width,(egsphant.boundaryY(i)-originy)/scaley
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub drawgridphant_XZ()
		  dim i as integer
		  
		  
		  
		  for i=0 to ubound(egsphant.boundaryX)
		    Display.graphics.drawline (egsphant.boundaryX(i)-originx)/scalex,0,(egsphant.boundaryX(i)-originx)/scalex,canvas_Plot.height
		  next
		  for i=0 to ubound(egsphant.boundaryZ)
		    Display.graphics.drawline 0,(egsphant.boundaryZ(i)-originy)/scaley,canvas_Plot.width,(egsphant.boundaryZ(i)-originy)/scaley
		  next
		  Canvas_Plot.Refresh(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub drawgridphant_YZ()
		  dim i as integer
		  
		  
		  
		  for i=0 to ubound(egsphant.boundaryY)
		    Display.graphics.drawline (egsphant.boundaryY(i)-originx)/scalex, 0,(egsphant.boundaryy(i)-originx)/scalex,canvas_Plot.Height
		  next
		  
		  
		  for i=0 to ubound(egsphant.boundaryZ)
		    Display.graphics.drawline 0,(egsphant.boundaryZ(i)-originy)/scaley,canvas_Plot.Width,(egsphant.boundaryZ(i)-originy)/scaley
		  next
		  
		  Canvas_Plot.Refresh(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub drawphantdensity_XY(k as integer)
		  //------------------------------------------------------------
		  //top left position is i=0, j=0
		  dim i,j as integer
		  dim tmp as double
		  dim thisrgbsurf as rgbSurface
		  //------------------------------------------------------------
		  
		  if Egsphant.Loaded Then
		    
		    phantbufferredPic=new Picture(Egsphant.Nx,Egsphant.Ny,32)
		    if phantbufferredPic<> nil Then
		      thisrgbsurf=phantbufferredPic.rgBSurface
		      for j=0 to phantbufferredPic.height-1
		        for i=0 to phantbufferredPic.width-1
		          tmp=egsphant.density(i,j,k)/egsphant.maxdensity
		          thisrgbsurf.pixel(i,j)=getColorFromMap(tmp,256,2)
		        next
		      next
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub drawphantdensity_XZ(k as integer)
		  dim i,j as integer
		  dim tmp as double
		  dim thisrgbsurf as rgbSurface
		  
		  
		  
		  if Egsphant.Loaded Then
		    
		    
		    phantbufferredPic=new Picture(Egsphant.Nx,Egsphant.Nz,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		    if phantbufferredPic<> nil Then
		      thisrgbsurf=phantbufferredPic.rgBSurface
		      
		      
		      
		      for j=0 to Egsphant.Nz-1
		        for i=0 to Egsphant.Nx-1
		          tmp=egsphant.density(i,k,j)/egsphant.maxdensity
		          thisrgbsurf.pixel(i,j)=getColorFromMap(tmp,256,2)
		        next
		      next
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub drawphantdensity_YZ(k as integer)
		  //top left position is i=0, j=0
		  dim i,j as integer
		  dim tmp as double
		  dim thisrgbsurf as rgbSurface
		  
		  
		  if Egsphant.Loaded Then
		    
		    
		    phantbufferredPic=new Picture(Egsphant.Ny,Egsphant.Nz,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		    if phantbufferredPic<> nil Then
		      thisrgbsurf=phantbufferredPic.rgBSurface
		      
		      
		      
		      for j=0 to phantbufferredPic.height-1
		        for i=0 to phantbufferredPic.width-1
		          tmp=egsphant.density(k,i,j)/egsphant.maxdensity
		          thisrgbsurf.pixel(i,j)=getColorFromMap(tmp,256,2)
		        next
		      next
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub drawphantmat_XY(k as integer)
		  //----------------------------------------------
		  //top left position is i=0, j=0
		  dim tmp,i,j as integer
		  dim thisrgbsurf as rgbSurface
		  //----------------------------------------------
		  
		  if Egsphant.Loaded Then
		    
		    
		    mediabufferredPic=new Picture(Egsphant.Nx,Egsphant.Ny,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		    thisrgbsurf=mediabufferredPic.rgBSurface
		    
		    
		    
		    for j=0 to mediabufferredPic.height-1
		      for i=0 to mediabufferredPic.width-1
		        tmp=egsphant.media(i,j,k)
		        if tmp>=0 and tmp<=UBound(Egsphant.mediacolor) Then
		          thisrgbsurf.pixel(i,j)=egsphant.mediacolor(tmp)
		        end
		      next
		    next
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub drawphantmat_XZ(k as integer)
		  //----------------------------------------------
		  //top left position is i=0, j=0
		  dim i,j,tmp as integer
		  dim thisrgbsurf as rgbSurface
		  //----------------------------------------------
		  
		  if Egsphant.Loaded Then
		    
		    
		    mediabufferredPic=new Picture(Egsphant.Nx,Egsphant.Nz,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		    thisrgbsurf=mediabufferredPic.rgBSurface
		    
		    
		    
		    for j=0 to Egsphant.Nz-1
		      for i=0 to Egsphant.Nx-1
		        tmp=egsphant.media(i,k,j)
		        if tmp>=0 and tmp<=UBound(Egsphant.mediacolor) Then
		          thisrgbsurf.pixel(i,j)=egsphant.mediacolor(tmp)
		        end
		      next
		    next
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub drawphantmat_YZ(k as integer)
		  //----------------------------------------------
		  //top left position is i=0, j=0
		  dim i,j as integer
		  dim tmp as Integer
		  dim thisrgbsurf as rgbSurface
		  
		  //----------------------------------------------
		  
		  if Egsphant.Loaded Then
		    
		    mediabufferredPic=new Picture(Egsphant.Ny,Egsphant.Nz,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		    thisrgbsurf=mediabufferredPic.rgBSurface
		    
		    
		    for j=0 to mediabufferredPic.height-1
		      for i=0 to mediabufferredPic.width-1
		        tmp=egsphant.media(k,i,j)
		        if tmp>=0 and tmp<=UBound(Egsphant.mediacolor) Then
		          thisrgbsurf.pixel(i,j)=egsphant.mediacolor(tmp)
		        end
		      next
		    next
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getColorFromMap(value as double, mapsize as integer,map as integer) As color
		  dim thiscolor as color
		  dim tmpint as integer
		  dim n,thisred,thisblue,thisgreen as integer
		  
		  if map=0 then //hotmetal
		    //hot metal palette
		    //--------------
		    if true then
		      tmpint=mapsize*value
		      n=(3/8)*mapsize  //gives 96
		      if tmpint <n  then
		        thisred=tmpint/n*mapsize
		        thisblue=0
		        thisgreen=0
		      elseif tmpint<2*n then
		        thisred=mapsize
		        thisgreen=mapsize*(tmpint-n)/n
		        thisblue=0
		      else 
		        thisred=mapsize
		        thisgreen=mapsize
		        thisblue=mapsize*(tmpint-2*n)/n
		      end
		    end
		    //----------------
		    //end of hotmetal palette
		    //set the pixel value
		    //thisrgbsurf.pixel(i,j)=rgb(thisred,thisgreen,thisblue)
		    return rgb(thisred,thisgreen,thisblue)
		    
		  elseif map=1 then  //Jet (matlab jet palette)
		    //start of jet palette
		    
		    tmpint=mapsize*value
		    n=mapsize/5
		    if tmpint<n then
		      thisred=0
		      thisblue=tmpint/n*mapsize
		      thisgreen=0
		    elseif tmpint<2*n then
		      thisred=0
		      thisblue=mapsize
		      thisgreen=tmpint/n*mapsize
		    elseif tmpint<3*n then
		      thisred=tmpint/n*mapsize
		      thisblue=mapsize-tmpint/n*mapsize
		      thisgreen=mapsize
		    elseif tmpint<4*n then
		      thisred=mapsize
		      thisblue=tmpint/n*mapsize
		      thisgreen=mapsize-tmpint/n*mapsize
		    elseif tmpint<5*n then
		      thisred=mapsize-tmpint/n*mapsize
		      thisblue=0
		      thisgreen=0
		    end if
		    return rgb(thisred,thisgreen,thisblue)
		    //end of jet palette
		  elseif map=2 then //standard ugly grey map
		    
		    tmpint=mapsize*value
		    return rgb(tmpint,tmpint,tmpint)
		    
		    
		  else //don't know... return black
		    return rgb(0,0,0)
		  end if
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NewPic()
		  Dim backpict, frontpict as picture
		  DIM SS AS String
		  Dim g as Graphics
		  
		  Display= new Picture(Canvas_Plot.width,Canvas_Plot.height,32)
		  
		  g=Display.Graphics
		  
		  g.UseOldRenderer=True
		  //media map
		  if Prefshowmedia then
		    if XYZ=1 Then
		      drawphantmat_XY(ScrollBar_Slice.value)
		    elseif XYZ=2 Then
		      drawphantmat_XZ(ScrollBar_Slice.value)
		    else
		      drawphantmat_YZ(ScrollBar_Slice.value)
		    end
		    if  mediabufferredPic<> nil Then
		      g.drawpicture mediabufferredPic,0,0,g.Width,g.Height,0,0,mediabufferredPic.Width,mediabufferredPic.Height
		    end
		  end if
		  
		  
		  //phantom density...
		  if Prefshowphantdensity then
		    if XYZ=1 Then
		      drawphantdensity_XY(ScrollBar_Slice.value)
		    elseif XYZ=2 Then
		      drawphantdensity_XZ(ScrollBar_Slice.value)
		    else
		      drawphantdensity_YZ(ScrollBar_Slice.value)
		    end
		    if phantbufferredPic<>nil Then
		      g.drawpicture phantbufferredPic,0,0,g.Width,g.Height,0,0,phantbufferredPic.Width,phantbufferredPic.Height
		    end
		  end if
		  
		  //do the composite image...
		  if Prefshowmedia and Prefshowphantdensity  and phantbufferredPic<> nil then
		    'if ScrollBar_Slice.value <> bufferedZ or bufferredresized then
		    //here create a temporary graphics for the composite...//make this an external routine...with pic 1 pic2 and % transparency...
		    backpict=New Picture(phantbufferredPic.width, phantbufferredPic.height, 32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		    frontpict=New Picture(mediabufferredPic.width, mediabufferredPic.height, 32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		    //gray=slidertransparent.value
		    frontpict.mask.graphics.forecolor = rgb(120,120,120) //gray instead of 120
		    frontpict.mask.graphics.fillrect 0,0,frontpict.width,frontpict.height
		    frontpict.graphics.foreColor=rgb(0,0,0)
		    frontpict.graphics.fillrect 0,0, frontpict.width, frontpict.height 
		    frontpict.graphics.drawPicture phantbufferredPic, 0,0
		    backpict.graphics.drawpicture mediabufferredPic, 0,0
		    if backpict<> nil Then
		      g.drawpicture backpict,0,0,g.Width,g.Height,0,0,phantbufferredPic.Width,phantbufferredPic.Height
		    end
		    if frontpict <> nil Then
		      g.drawpicture frontpict,0,0,g.Width,g.Height,0,0,phantbufferredPic.Width,phantbufferredPic.Height
		    end
		  end if
		  
		  if PrefShowGrid then
		    g.foreColor=rgb(50,50,50)
		    
		    if XYZ=1 Then
		      drawgridphant_XY
		    elseif xyz=2 Then
		      drawgridphant_XZ
		    else
		      drawgridphant_YZ
		    end
		  end
		  
		  if prefshowruler then
		    ruler.draw(g)
		  end
		  
		  ss="Scale X: "+ Format(scalex,"0.000")+" cm/pixel"+chr(10)+_
		  "Scale Y: "+ Format(scaley,"-0.000" )+" cm/pixel" +chr(10)+_
		  "X : "+ Format(Mouse_CmX,"-0.000")+" cm "+chr(10)+_
		  "Y : "+ Format(Mouse_CmY,"-0.000")+" cm "+chr(10)+_
		  "Density : "+ Format(Density,"-0.000#")+" g/cc"+chr(10)+_
		  "Material  : "+ Material+chr(10)
		  
		  if XYZ=1 Then
		    ss=ss+"Plane: "+str(ScrollBar_Slice.value+1)+"/"+str(egsphant.Nz)
		  elseif xyz=2 Then
		    ss=ss+ "Plane: "+str(ScrollBar_Slice.value+1)+"/"+str(egsphant.Ny)
		  else
		    ss=ss+ "Plane: "+str(ScrollBar_Slice.value+1)+"/"+str(egsphant.Nx)
		  end
		  StaticText_Info.Text=ss
		  
		  if Egsphant.Loaded=False Then
		    g.DrawString "No image as EGSPhant voxels not loaded",5,20
		  end
		  
		  
		  
		  Exception err as TypeMismatchException
		    Errors.Append "Error within Phantom View, Tried to retype an object!"
		  Exception err as NilObjectException
		    Errors.Append "Error within Phantom View,Tried to access a Nil object!"
		  Exception err as RuntimeException  // NOT RECOMMENDED
		    Errors.Append "Error within Phantom View, Another exception"
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenEGSPhant()
		  //if not read do the basic window settings to display it
		  //axial XY
		  
		  
		  if XYZ=1 Then
		    ScrollBar_Slice.maximum=egsphant.Nz-1
		    ScrollBar_Slice.minimum=0
		    ScrollBar_Slice.value=egsphant.Nz/2
		    me.Title="Egsphant file "+Egsphant.Name+" XY"
		    
		    //scale as of mm/pixel
		    scalex=abs(egsphant.boundaryX(ubound(egsphant.boundaryX))- egsphant.boundaryx(0))/Canvas_Plot.width
		    scaley=abs(egsphant.boundaryY(ubound(egsphant.boundaryY))- egsphant.boundaryy(0))/Canvas_Plot.height
		    //scan each pixel and figure out in which boundary it falls...slower but allows irregular grid.
		    originx=egsphant.boundaryx(0)
		    originy=egsphant.boundaryy(0)
		    
		  elseif XYZ=2 Then
		    '//coronal  XZ
		    
		    //scale as of mm/pixel
		    scalex=abs(egsphant.boundaryX(ubound(egsphant.boundaryX))- egsphant.boundaryx(0))/Canvas_Plot.Width
		    scaley=abs(egsphant.boundaryZ(ubound(egsphant.boundaryZ))- egsphant.boundaryz(0))/Canvas_Plot.height
		    //scan each pixel and figure out in which boundary it falls...slower but allows irregular grid.
		    originx=egsphant.boundaryx(0)
		    originy=egsphant.boundaryz(0)
		    
		    ScrollBar_Slice.maximum=egsphant.Ny-1
		    ScrollBar_Slice.minimum=0
		    ScrollBar_Slice.value=egsphant.Ny/2
		    me.Title="Egsphant file "+Egsphant.Name+" XZ"
		  else
		    '//sagittal ZY
		    scalex=abs(egsphant.boundaryY(ubound(egsphant.boundaryY))- egsphant.boundaryY(0))/Canvas_Plot.Width
		    scaley=abs(egsphant.boundaryZ(ubound(egsphant.boundaryZ))- egsphant.boundaryZ(0))/Canvas_Plot.Height
		    //scan each pixel and figure out in which boundary it falls...slower but allows irregular grid.
		    originx=egsphant.boundaryY(0)
		    originy=egsphant.boundaryZ(0)
		    
		    ScrollBar_Slice.maximum=egsphant.Nx-1
		    ScrollBar_Slice.minimum=0
		    ScrollBar_Slice.value=egsphant.Nx/2
		    me.Title="Egsphant file "+Egsphant.Name+" YZ"
		  end if
		  
		  
		  
		  NewPic
		  canvas_Plot.refresh(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Win_Open()
		  Dim i as Integer
		  
		  
		  currentx=0
		  currenty=0
		  ScrollBar_Slice.value=0
		  ScrollBar_Slice.maximum=0
		  ScrollBar_Slice.minimum=0
		  
		  phantbufferredPic=nil
		  mediabufferredPic=nil
		  
		  PrefShowGrid=false
		  
		  Prefshowphantdensity=true
		  Prefshowmedia=false
		  prefshowruler=true
		  
		  
		  //Egsphant=gDOSXYZ.DOSXYZ(Window_DOSXYZ_Maininputs.egsphant_index).EGSPhantSettings
		  OpenEGSPhant
		  
		  CheckBox_Density.Value=Prefshowphantdensity
		  CheckBox_Materials.Value=Prefshowmedia
		  TextField_Max_Density.Text=Format(Egsphant.maxdensity,"-#.#####")
		  TextField_Min_Density.Text=Format(Egsphant.mindensity,"-#.#####")
		  
		  ruler.init(Display.graphics.width-30,30,Display.graphics.width-30,200)
		  movingruler1=false
		  movingruler2=false
		  
		  Display.graphics.penWidth=1
		  Display.graphics.penheight=1
		  
		  Listbox_Materials.Heading(0)="Material"
		  Listbox_Materials.Heading(1)="Colour"
		  
		  
		  for i=0 to UBound(Egsphant.Materials)
		    Listbox_Materials.AddRow Egsphant.Materials(i)
		  next
		  
		  RadioButton_XY.Value=True
		  
		  StaticText_X.Text="nX "+Str(Egsphant.Nx)+" del X "+Format(Egsphant.Del_X,"-0.000")+" Min X "+Format(Egsphant.boundaryx(0),"-0.000")+" Max X "+Format(Egsphant.boundaryx(UBound(Egsphant.boundaryx)),"-0.000")
		  StaticText_Y.Text="nY "+Str(Egsphant.Ny)+" del Y "+Format(Egsphant.Del_Y,"-0.000")+" Min Y "+Format(Egsphant.boundaryy(0),"-0.000")+" Max Y "+Format(Egsphant.boundaryy(UBound(Egsphant.boundaryy)),"-0.000")
		  StaticText_Z.Text="nZ "+Str(Egsphant.Nz)+" del Z "+Format(Egsphant.Del_Z,"-0.000")+" Min Z "+Format(Egsphant.boundaryz(0),"-0.000")+" Max Z "+Format(Egsphant.boundaryz(UBound(Egsphant.boundaryZ)),"-0.000")
		End Sub
	#tag EndMethod


	#tag Note, Name = palettes info
		
		hsv
		 Hue-saturation-value color map.
		 hot
		 Black-red-yellow-white color map.
		 gray
		 Linear gray-scale color map.
		 bone
		 Gray-scale with tinge of blue color map.
		 copper
		 Linear copper-tone color map.
		 pink
		 Pastel shades of pink color map.
		 white
		 All white color map.
		 flag
		 Alternating red, white, blue, and black color map.
		 lines
		 Color map with the line colors.
		 colorcube
		 Enhanced color-cube color map.
		 jet
		 Variant of HSV.
		 prism
		 Prism color map.
		 cool
		 Shades of cyan and magenta color map.
		 autumn
		 Shades of red and yellow color map.
		 spring
		 Shades of magenta and yellow color map.
		 winter
		 Shades of blue and green color map.
		 summer
		 Shades of green and yellow color map.
		
	#tag EndNote


	#tag Property, Flags = &h0
		currentX As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		currentY As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Density As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Display As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		Egsphant As Class_DOSXYZ_EGSPhantSettings
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected gruler As rulerClass
	#tag EndProperty

	#tag Property, Flags = &h0
		Material As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mediabufferredPic As picture
	#tag EndProperty

	#tag Property, Flags = &h0
		Mouse_CmX As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Mouse_CmY As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		movingruler1 As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		movingruler2 As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		originx As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		originy As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		phantbufferredPic As picture
	#tag EndProperty

	#tag Property, Flags = &h0
		PrefShowGrid As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Prefshowmedia As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Prefshowphantdensity As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		prefshowruler As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		ruler As rulerClass
	#tag EndProperty

	#tag Property, Flags = &h0
		scalex As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		scaley As Double = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			// 1 = XY
			// 2 = YZ
			// 3 = XZ
		#tag EndNote
		XYZ As Integer = 1
	#tag EndProperty


#tag EndWindowCode

#tag Events Canvas_Plot
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  movingruler1=false
		  movingruler2=false
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  dim scalex,scaley,thisx,thisy,thisz as double
		  
		  if movingruler1 then
		    if X<canvas_Plot.width and Y<canvas_Plot.height and X>0 and Y > 0 then
		      ruler.x1pix=X
		      ruler.y1pix=Y
		    end if
		    //canvas_Plot.refresh(false)
		  elseif movingruler2 then
		    if X<canvas_Plot.width and Y<canvas_Plot.height and X >0 and Y> 0 then
		      ruler.x2pix=X
		      ruler.y2pix=Y
		    end if
		    //canvas_Plot.refresh(false)
		  end
		  currentx=x
		  currenty=y
		  NewPic
		  canvas_Plot.refresh(false)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim thisx, thisy,thisz,scalex,scaley as double
		  //a plain mouse down gives a dose cursor
		  
		  if abs(x-ruler.x1pix)<5 and abs(y-ruler.y1pix)<5 then
		    movingruler1=true
		  elseif  abs(x-ruler.x2pix)<5 and abs(y-ruler.y2pix)<5 then
		    movingruler2=true
		  else
		    movingruler1=false
		    movingruler2=false
		  end
		  currentx=x
		  currenty=y
		  NewPic
		  return true
		  
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.DrawPicture Display, 0, 0
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  Dim mindex,xi,yi,z as Integer
		  
		  if Display=Nil Then
		    Return
		  end
		  
		  Mouse_CmX=(X)*scalex+originx
		  Mouse_Cmy=(y)*scaley+originy
		  
		  
		  if XYZ=1 Then
		    xi=Floor((Mouse_Cmx-originx)/Egsphant.Del_X)
		    yi=Floor((Mouse_CmY-originy)/Egsphant.Del_y)
		    z=ScrollBar_Slice.Value
		  elseif XYZ=2 Then
		    xi=Floor((Mouse_Cmx-originx)/Egsphant.Del_X)
		    yi=ScrollBar_Slice.Value
		    z=Floor((Mouse_CmY-originy)/Egsphant.Del_z)
		  else
		    xi=ScrollBar_Slice.Value
		    yi=Floor((Mouse_Cmx-originx)/Egsphant.Del_y)
		    z=Floor((Mouse_CmY-originy)/Egsphant.Del_z)
		  end
		  
		  
		  if xi>-1 and xi<Egsphant.Nx and yi>-1 and yi<Egsphant.Ny and z>-1 and z<Egsphant.Nz  and Egsphant.Loaded Then
		    Density=Egsphant.density(xi,yi,z)
		    mindex=Egsphant.media(xi,yi,z)
		    if (mindex)>=0 and (mindex)<=UBound(Egsphant.Materials) Then
		      Material=Egsphant.Materials(mindex)
		    end
		    NewPic
		    
		  end
		  
		  if CheckBox_Crosshair.Value  and Egsphant.Loaded Then
		    Display.Graphics.ForeColor=RGB(0,0,0)
		    Display.Graphics.DrawLine (0,y,Canvas_Plot.Width,y)
		    Display.Graphics.DrawLine (x,0,x,Canvas_Plot.Height)
		  end
		  canvas_Plot.refresh(false)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ScrollBar_Slice
	#tag Event
		Sub ValueChanged()
		  NewPic
		  canvas_Plot.refresh(false)
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Density
	#tag Event
		Sub Action()
		  Prefshowphantdensity=me.Value
		  NewPic
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Materials
	#tag Event
		Sub Action()
		  Prefshowmedia=me.Value
		  NewPic
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_XY
	#tag Event
		Sub Action()
		  if me.Value Then
		    XYZ=1
		  end
		  OpenEGSPhant
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_XZ
	#tag Event
		Sub Action()
		  if me.Value Then
		    xyz=2
		  end
		  OpenEGSPhant
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_YZ
	#tag Event
		Sub Action()
		  if me.Value Then
		    xyz=3
		  end
		  OpenEGSPhant
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_Materials
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  
		  if column=1 then
		    if row <= ubound(Egsphant.mediacolor) and row>-1 then
		      g.foreColor=Egsphant.mediacolor(row)
		      g.fillrect 0,0, g.width, g.height
		    end
		  end if
		  
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  dim tmpcolor as color
		  dim i As  integer
		  
		  if column=1 then
		    tmpcolor=Egsphant.mediacolor(row)
		    if(selectcolor(tmpcolor,"Select a color")) then
		      Egsphant.mediacolor(row)=tmpcolor
		      NewPic
		      canvas_Plot.refresh(false)
		    end
		  end
		  
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Grid
	#tag Event
		Sub Action()
		  PrefShowGrid=me.Value
		  NewPic
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_Crosshair
	#tag Event
		Sub Action()
		  NewPic
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
		Name="currentX"
		Group="Behavior"
		InitialValue="0"
		Type="integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="currentY"
		Group="Behavior"
		InitialValue="0"
		Type="integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Density"
		Group="Behavior"
		InitialValue="0"
		Type="Single"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Display"
		Group="Behavior"
		Type="Picture"
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
		Name="Material"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
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
		Name="mediabufferredPic"
		Group="Behavior"
		InitialValue="0"
		Type="picture"
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
		Name="Mouse_CmX"
		Group="Behavior"
		InitialValue="0"
		Type="Single"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Mouse_CmY"
		Group="Behavior"
		InitialValue="0"
		Type="Single"
	#tag EndViewProperty
	#tag ViewProperty
		Name="movingruler1"
		Group="Behavior"
		InitialValue="0"
		Type="boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="movingruler2"
		Group="Behavior"
		InitialValue="0"
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
		Name="originx"
		Group="Behavior"
		InitialValue="0"
		Type="Single"
	#tag EndViewProperty
	#tag ViewProperty
		Name="originy"
		Group="Behavior"
		InitialValue="0"
		Type="Single"
	#tag EndViewProperty
	#tag ViewProperty
		Name="phantbufferredPic"
		Group="Behavior"
		InitialValue="0"
		Type="picture"
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
		Name="PrefShowGrid"
		Group="Behavior"
		InitialValue="0"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Prefshowmedia"
		Group="Behavior"
		InitialValue="0"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Prefshowphantdensity"
		Group="Behavior"
		InitialValue="true"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="prefshowruler"
		Group="Behavior"
		InitialValue="0"
		Type="Boolean"
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
		Name="scalex"
		Group="Behavior"
		InitialValue="0"
		Type="Double"
	#tag EndViewProperty
	#tag ViewProperty
		Name="scaley"
		Group="Behavior"
		InitialValue="0"
		Type="Double"
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
		Name="XYZ"
		Group="Behavior"
		InitialValue="1"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
