#tag Window
Begin Window Window_About
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   True
   Height          =   368
   ImplicitInstance=   True
   LiveResize      =   "False"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   False
   Title           =   "About MMCTP"
   Visible         =   True
   Width           =   516
   Begin Label StaticText_BuildLabel
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   41
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   5
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Label:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   270
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   154
   End
   Begin Canvas canvas_Slide
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   "True"
      Height          =   256
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   5
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   5
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   505
   End
   Begin Timer Timer1
      Enabled         =   True
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Mode            =   2
      Period          =   20
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin Label StaticText_CR
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   25
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   308
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "MMCTP GUI by: Andrew Alexander © 2011"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   270
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   201
   End
   Begin Label StaticText_MPU
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
      Left            =   308
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
      Text            =   "McGill Medical Physics Unit"
      TextAlign       =   0
      TextColor       =   &c2B3C9A00
      TextFont        =   "System"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   296
      Transparent     =   False
      Underline       =   True
      Visible         =   True
      Width           =   185
   End
   Begin Label StaticText_BugReport
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
      Left            =   308
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Bug Report and Feature Requests"
      TextAlign       =   0
      TextColor       =   &c2B3C9A00
      TextFont        =   "System"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   315
      Transparent     =   False
      Underline       =   True
      Visible         =   True
      Width           =   185
   End
   Begin Label StaticText_URL
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
      Left            =   308
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
      Text            =   "Online Documentation"
      TextAlign       =   0
      TextColor       =   &c2B3C9A00
      TextFont        =   "System"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   339
      Transparent     =   False
      Underline       =   True
      Visible         =   True
      Width           =   185
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.close
		  Me.hide
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  //-----------------------------------------
		  
		  StaticText_BuildLabel.Value="MMCTP built : "+str(app.MajorVersion)+"."+str(app.MinorVersion)+"."+str(app.BugVersion)+CHR(13)+"Build Date : "+app.BuildDate.ShortDate
		  
		  //set the credits to draw
		  credits = credits + "MMCTP GUI conception: Andrew Alexander" + chr(13)
		  credits = credits + "McGill RT file format: Andrew Alexander, François DeBlois" + chr(13)
		  credits = credits + "DICOM, RTOG import: Andrew Alexander" + chr(13)
		  credits = credits + "BEAMnrc Monte Carlo implementation: Andrew Alexander, Khalid Al-Yahya,"+ chr(13) + "Emily Heath, Marc-Andre Renaud, Jan Seuntjens" + chr(13)
		  credits = credits + "DOSXYZnrc Monte Carlo implementation: Andrew Alexander, Marc Renaud, Jan Seuntjens, François DeBlois" + chr(13)
		  credits = credits + "VMC Monte Carlo implementation: Andrew Alexander, Jan Seuntjens" + chr(13)
		  credits = credits + "Electron Monte Carlo implementation: Andrew Alexander, François DeBlois" + chr(13)
		  credits = credits + "DVH calculator : Andrew Alexander" + chr(13)
		  credits = credits + "3D viewer: Andrew Alexander, François DeBlois" + chr(13)
		  credits = credits + "Isodose line calculator: Andrew Alexander, François DeBlois" + chr(13)
		  credits = credits + "DICOM export: Andrew Alexander" + chr(13)
		  credits = credits + "CADPlan import: Andrew Alexander, Jan Seuntjens, François DeBlois" + chr(13)
		  credits = credits + "MMCTP shells: Andrew Alexander" + chr(13)
		  
		  
		  credits = credits+ chr(13)+ chr(13)
		  credits = credits + "Debuggers, Beta Testers and Contributors:" + chr(13)
		  credits = credits + "Gabriela Stroian " + chr(13)
		  credits = credits + "Danielle Fraser, " + chr(13)
		  credits = credits + "Emily Heath " + chr(13)
		  credits = credits + "Michael Ayles " + chr(13)
		  credits = credits + "Lina Carlini " + chr(13)
		  credits = credits + "Racha Cheaib " + chr(13)
		  credits = credits + "Justin Sutherland " + chr(13)
		  credits = credits + "Elaine Conneely" + chr(13)
		  credits = credits + "Ellis Mitrou" + chr(13)
		  credits = credits + "Marc Morcos" + chr(13)
		  credits = credits + "Jonathan Thebaut"+ chr(13)
		  credits = credits + "Sangkyu Lee"+ chr(13)
		  credits = credits + "Marc-Andre Renaud"+ chr(13)
		  
		  
		  
		  Lines = countFields(credits,chr(13))
		  Timer1.Period=50
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub Make_Image()
		  'cimg.Graphics.DrawString
		  '
		  '
		  '//assign the height.
		  'i=L*cimg.graphics.TextHeight
		  '
		  '
		  'cimg = newpicture(canvas_Slide.width,i,32 )
		  'cimg.graphics.textsize = 10
		  '
		  '//match background grey of window.
		  'cimg.graphics.forecolor = RGB(0,0,0)
		  'cimg.graphics.fillrect 0,0,cimg.width,cimg.height
		  '
		  '//set back to black for type.
		  'cimg.graphics.forecolor = RGB(0,255,255)
		  'cimg.graphics.TextHeight
		  '
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected credits As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Image As Picture
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Lines As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected TextHeight As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected TextSize As Integer = 12
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected ypos As integer
	#tag EndProperty


#tag EndWindowCode

#tag Events StaticText_BuildLabel
	#tag Event
		Sub Open()
		  me.value=app.LongVersion
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events canvas_Slide
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.DrawPicture Image,0,0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Timer1
	#tag Event
		Sub Action()
		  
		  ypos = ypos - 1
		  if ypos<-1*TextHeight Then
		    ypos=canvas_Slide.Height
		  end
		  
		  Image=new Picture(canvas_Slide.Width, canvas_Slide.Height,32)
		  Image.Graphics.forecolor = RGB(0,0,0)
		  Image.Graphics.FillRect(0,0,Image.Width,Image.Height)
		  
		  Image.Graphics.textsize =TextSize
		  Image.Graphics.forecolor = RGB(0,255,255)
		  Image.Graphics.DrawString(credits, 10,ypos)
		  TextHeight=Image.Graphics.TextHeight*Lines
		  
		  canvas_Slide.Refresh(False)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events StaticText_MPU
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  showurl "http://www.medphys.mcgill.ca"
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events StaticText_BugReport
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  showurl "http://groups.google.com/group/mmctp"
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events StaticText_URL
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  showurl "http://www.medphys.mcgill.ca/~mmctp/MMCTP/"
		End Function
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
