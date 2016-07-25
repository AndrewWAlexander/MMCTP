#tag Window
Begin Window WindowGamma
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
   Height          =   476
   ImplicitInstance=   True
   LiveResize      =   True
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
   Title           =   "Result"
   Visible         =   False
   Width           =   570
   Begin Canvas Canvas1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   451
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
      Top             =   5
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   568
      Begin Canvas Canvas2
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   167
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Canvas1"
         Left            =   491
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   19
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   28
      End
      Begin Canvas Canvas3
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   167
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Canvas1"
         Left            =   491
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   19
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   77
         Begin Label StaticText1
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   167
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "Canvas3"
            Italic          =   False
            Left            =   525
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   True
            Scope           =   0
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "2"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   19
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   43
         End
      End
   End
   Begin Label StaticText2
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   13
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Pass"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   457
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   568
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  zoom=3
		  
		  if WindowGamma.pic_result<>nil then
		    
		    
		    
		    
		    //g.DrawPicture(WindowGamma.pic_result,0,0,WindowGamma.pic_result.Width,WindowGamma.pic_result.Height)
		    
		    //WindowGamma.Canvas1.Width=pic_result.Width
		    //WindowGamma.Canvas1.Height=pic_result.Height
		    WindowGamma.Height= WindowGamma.pic_result.Height*zoom
		    WindowGamma.Width= WindowGamma.pic_result.Width*Zoom
		    WindowGamma.Refresh
		    
		    
		  else
		    MsgBox "Error: Picture is Nil"
		    
		  end if
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		dosediff As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		gamma As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		pic_back As picture
	#tag EndProperty

	#tag Property, Flags = &h0
		pic_legend As picture
	#tag EndProperty

	#tag Property, Flags = &h0
		pic_result As picture
	#tag EndProperty

	#tag Property, Flags = &h0
		zoom As Double = 1
	#tag EndProperty


#tag EndWindowCode

#tag Events Canvas1
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  Zoom=3
		  
		  
		  
		  
		  if WindowGamma.pic_result<>nil then
		    
		    
		    
		    
		    g.DrawPicture(WindowGamma.pic_result,0,0,zoom*WindowGamma.pic_result.Width,zoom*WindowGamma.pic_result.Height,0,0,WindowGamma.pic_result.Width,WindowGamma.pic_result.Height)
		    
		    'WindowGamma.Canvas1.Width=pic_result.Width
		    'WindowGamma.Canvas1.Height=pic_result.Height
		    'WindowGamma.Height=pic_result.Height
		    'WindowGamma.Width=pic_result.Width
		    '
		    '
		    
		  else
		    MsgBox "Error: Picture is Nil"
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Canvas2
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  dim i,j as Integer
		  
		  
		  
		  if WindowGamma.pic_result<>nil then
		    
		    pic_legend= New Picture(me.Width,me.Height,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		    
		    g.ForeColor = RGB(255,255,255)
		    
		    
		    
		    
		    if dosediff  then //for dose difference
		      
		      g.FillRect(0,0,WindowGamma.Canvas3.Width,WindowGamma.Canvas3.Height)
		      
		      WindowGamma.StaticText1.Text = "100%" + chr(13) + chr(13) + chr(13) + chr(13) + "50%" +chr(13) +chr(13) +chr(13)  +chr(13) + chr(13)+"0%"
		      
		      
		      
		    elseif gamma then  // for gamma
		      
		      g.FillRect(0,0,WindowGamma.Canvas3.Width/1.5,WindowGamma.Canvas3.Height)
		      
		      WindowGamma.StaticText1.Text = "2" + chr(13) + chr(13) + chr(13) + chr(13) + "1" +chr(13) +chr(13) +chr(13)  +chr(13) + chr(13)+"0"
		      
		      
		    end if
		    
		    
		    
		    for i=0 to me.Width-1
		      for j=0 to me.Height-1
		        
		        
		        WindowGamma.pic_legend.Graphics.Pixel(i,j) =HSV((j/me.Height)*0.666,1,1)
		        
		        
		      next
		      
		    next
		    
		    
		    g.DrawPicture(WindowGamma.pic_legend,0,0,WindowGamma.pic_legend.Width,WindowGamma.pic_legend.Height)
		    
		    'WindowGamma.Canvas1.Width=pic_result.Width
		    'WindowGamma.Canvas1.Height=pic_result.Height
		    'WindowGamma.Height=pic_result.Height
		    'WindowGamma.Width=pic_result.Width
		    '
		    '
		    
		  else
		    MsgBox "Error: Picture is Nil"
		    
		  end if
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
		Name="dosediff"
		Group="Behavior"
		InitialValue="false"
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
		Name="gamma"
		Group="Behavior"
		InitialValue="false"
		Type="Boolean"
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
		InitialValue="300"
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
		Name="pic_back"
		Group="Behavior"
		InitialValue="0"
		Type="picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="pic_legend"
		Group="Behavior"
		InitialValue="0"
		Type="picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="pic_result"
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
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="False"
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
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="zoom"
		Group="Behavior"
		InitialValue="1"
		Type="Double"
	#tag EndViewProperty
#tag EndViewBehavior
