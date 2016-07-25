#tag Window
Begin Window Window_OpenPatient
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
   Height          =   478
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   -1100839426
   MenuBarVisible  =   True
   MinHeight       =   400
   MinimizeButton  =   False
   MinWidth        =   400
   Placement       =   0
   Resizeable      =   True
   Title           =   "Open Patient (McGill Format)"
   Visible         =   True
   Width           =   826
   Begin ListBox ListBox_Mcgill
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   3
      ColumnsResizable=   True
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   25
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   1
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   354
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
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   True
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   15.0
      TextUnit        =   0
      Top             =   62
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   786
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PushButton PushButton_open
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Open "
      Default         =   False
      Enabled         =   True
      Height          =   30
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
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   428
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin BevelButton BevelButton_ChangeFolder
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   "Change Folder..."
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   20
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   692
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   36
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   114
   End
   Begin PushButton PushButton_Close
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Close"
      Default         =   False
      Enabled         =   True
      Height          =   30
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   726
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
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   428
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin TextField EditField_Filter
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
      Left            =   128
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   11
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   546
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
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Filter:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   12
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   96
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
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Current folder:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   37
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   96
   End
   Begin TextField EditField_Current_Dir
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
      Left            =   128
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   True
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   36
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   546
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  app.which_window_Open=False
		End Sub
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  taskmenu.enabled=True
		  File_Save_Plans.enabled=False
		  File_Save_Contours.Enabled=False
		  
		  
		  File_ImportPatient.Enabled=True
		  
		  File_ImportExceldata.Enabled=True
		  File_ImportRFAdata.Enabled=True
		  File_ImportProfile.Enabled=True
		  File_ImportXiOProfile.Enabled=True
		  File_Importcsvprofiles.Enabled=True
		  File_ImportExceldata.Enabled=True
		  File_Import_EclipseData.Enabled=True
		  
		  File_Quit.Enabled=True
		  FileConfigurations.Enabled=True
		  Help_About.Enabled=True
		  Help_Manual.Enabled=True
		  Task_DICOMHeader.Enabled=True
		  TaskCommissioningData.Enabled=True
		  TaskGamma.Enabled=False
		  
		  
		  
		  FileConfigurationsAdminsettings.Enabled=True
		  FileConfigurationsBeammodels.Enabled=True
		  FileConfigurationsCTmodels.Enabled=True
		  FileConfigurationsDOSXYZnrcsettings.Enabled=True
		  FileConfigurationsRemoteShell.Enabled=True
		  FileConfigurationsBeamnrc.Enabled=True
		  FileConfigurationsVMCsettings.Enabled=True
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if key=chr(13) or Key=Chr(3) then
		    Open_Patient
		  end
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  patientlistupdate
		  app.which_window_Open=True
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function clean_up() As Boolean
		  //-------------------------------
		  // Method to close current patient
		  // shut down all running scripts of current patient
		  //
		  //-------------------------------
		  MMCTP_Shell_Refresh.Close
		  MMCTP_Shell_Run.Close
		  
		  
		  ReDim MMCTP_Shell_Refresh.All(-1)
		  ReDim MMCTP_Shell_Run.All(-1)
		  
		  // Kill gvis runs
		  if gvis<>Nil then
		    if gVis.Contours<> nil Then
		      gVis.Contours.kill
		      gVis.contours=nil
		    end
		    gvis.kill
		    ReDim gvis.scans(-1)
		    gvis=nil
		  end
		  gvis=new Thread_Visualization
		  
		  
		  if App.which_window_TreatmentPlanning  then
		    Window_Treatment.Close
		    if app.which_window_TreatmentPlanning=False Then
		      gRTOG=nil
		    else
		      Return false
		      
		    end
		    
		    
		    
		  elseif App.which_window_Contouring  then
		    Window_Contouring.Close
		    gRTOG=nil
		  end
		  
		  
		  
		  Return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Open_Patient()
		  Dim f as FolderItem
		  Dim name, pname as string
		  Dim index,pindex as integer
		  
		  
		  f=gPref.mcgillfi
		  index=Window_OpenPatient.ListBox_Mcgill.ListIndex
		  name=Window_OpenPatient.ListBox_Mcgill.Cell(index,0)
		  pindex=val(Window_OpenPatient.ListBox_Mcgill.Cell(index,4))
		  pname=NthField(Row_Header,",",pindex)
		  
		  
		  //what if selection is not a CT/MR/imaging study? it crashes, should check that the selection is valid FD
		  // loop to find the patient name for the selected listitem
		  if Len(pname)>0 Then
		    f=f.child(pname).Child(name)
		    if f<>nil Then
		      if f.Exists =true then
		        if clean_up then
		          gRTOG= new Thread_RTOG
		          app.MMCTP_Open_Patient(f)
		        end
		      end
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Patientlistupdate()
		  //-----------------------
		  //-----------------------
		  Dim i, u,count  as Integer
		  Dim name_id,dataset,ret,fname,lname,id,text,filter as String
		  '==================
		  
		  filter=Trim(EditField_Filter.Text)
		  
		  ListBox_Mcgill.DeleteAllRows
		  ListBox_Mcgill.Heading(0)="Forename"
		  ListBox_Mcgill.Heading(1)="Surname"
		  ListBox_Mcgill.Heading(2)="ID number"
		  ListBox_Mcgill.columnwidths="34%,33%,33%"
		  
		  ret=gPref.Read_mcgill
		  dataset=NthField(ret,"Dataset",2)
		  name_id=NthField(ret,"Dataset",1)
		  
		  EditField_Current_Dir.TextSize=9
		  
		  if gPref.mcgillfi<> nil Then
		    EditField_Current_Dir.Text=gPref.mcgillfi.ShellPath
		  end
		  
		  u=CountFields(name_id,",")
		  count=-1
		  For i=1 to u
		    If NthField(dataset,";",i)<> "" then
		      lname=NthField(NthField(name_id,",",i),String_Separate,2)
		      fname=NthField(NthField(name_id,",",i),String_Separate,1)
		      id=NthField(NthField(name_id,",",i),String_Separate,3)
		      text=lname+fname+id
		      if InStr(text,Filter)>0 or len(Filter)=0 Then
		        count=count+1
		        ListBox_Mcgill.addfolder ""
		        ListBox_Mcgill.cell(count,4)=NthField(dataset,";",i)
		        ListBox_Mcgill.cell(count,0)=fname
		        ListBox_Mcgill.cell(count,1)=lname
		        ListBox_Mcgill.cell(count,2)=id
		      end
		    end if
		  Next
		  
		  
		  ListBox_Mcgill.hierarchical=true
		  Row_Header=name_id
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Row_header As string
	#tag EndProperty


#tag EndWindowCode

#tag Events ListBox_Mcgill
	#tag Event
		Sub CollapseRow(row As Integer)
		  Dim i,u,NSubRows as Integer
		  
		  NSubRows=CountFields(Me.cell(row,1),",")
		  u=row+1
		  
		  For i=row+NSubRows downto u
		    Me.removerow i
		  Next
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  Me.expanded(Me.listindex)=Not Me.expanded(Me.listindex)
		  
		  Open_Patient
		End Sub
	#tag EndEvent
	#tag Event
		Sub ExpandRow(row As Integer)
		  Dim s1,temp as String
		  Dim i,u as Integer
		  
		  
		  s1=me.cell(row,4)
		  u=CountFields(s1,",")
		  
		  
		  For i=1 to u
		    Me.addrow ""
		    temp=NthField(s1,",",i)
		    Me.cell(me.lastIndex,0)=NthField(temp,"%%",1)
		    Me.cell(me.lastIndex,4)=NthField(temp,"%%",2)
		  Next
		End Sub
	#tag EndEvent
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
#tag Events PushButton_open
	#tag Event
		Sub Action()
		  Open_Patient
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_ChangeFolder
	#tag Event
		Sub Action()
		  dim fi as FolderItem
		  dim opfi as new SelectFolderDialog
		  
		  opfi.InitialDirectory=gPref.McGillfi
		  opfi.Title="Select McGill Folder"
		  opfi.ActionButtonCaption = "Select"
		  opfi.PromptText = "Please chose a folder where MMCTP will store all McGillRT patients"
		  
		  fi=opfi.ShowModalWithin(Self)
		  
		  
		  
		  
		  
		  
		  
		  
		  if fi<>nil then //fi.Exists then
		    gPref.McGillfi=fi
		    gpref.Write_Pref
		    patientlistupdate
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Close
	#tag Event
		Sub Action()
		  Window_OpenPatient.close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Filter
	#tag Event
		Sub TextChange()
		  patientlistupdate
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
		Name="Row_header"
		Group="Behavior"
		Type="string"
		EditorType="MultiLineEditor"
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
