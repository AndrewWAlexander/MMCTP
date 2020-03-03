#tag Window
Begin Window Window_DOSXYZ_Maininputs_Phantom
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   556
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
   Resizeable      =   True
   Title           =   "Advanced DOSXYZ Properties - Phantom"
   Visible         =   True
   Width           =   583
   Begin GroupBox GroupBox_CT
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "CT Phantom Definition"
      Enabled         =   False
      Height          =   86
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   543
      Begin PopupMenu PopupMenu_airdose
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_CT"
         InitialValue    =   ""
         Italic          =   False
         Left            =   148
         ListIndex       =   0
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
         Top             =   45
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   120
      End
      Begin PopupMenu PopupMenu_dose_output
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_CT"
         InitialValue    =   ""
         Italic          =   False
         Left            =   412
         ListIndex       =   0
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
         Top             =   45
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   120
      End
      Begin Label StaticText17
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_CT"
         Italic          =   False
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Zero dose to air:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   45
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   104
      End
      Begin Label StaticText16
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_CT"
         Italic          =   False
         Left            =   309
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Dose output:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   45
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   91
      End
   End
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
      Left            =   224
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   516
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   135
   End
   Begin GroupBox GroupBox_Phantom
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Phantom Definition"
      Enabled         =   True
      Height          =   253
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   247
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   543
      Begin RadioButton RadioButton_X
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "X Profile"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Phantom"
         Italic          =   False
         Left            =   42
         LockBottom      =   True
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
         Top             =   306
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   195
      End
      Begin RadioButton RadioButton_Z
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Z Profile"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Phantom"
         Italic          =   False
         Left            =   42
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
         Top             =   370
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   176
      End
      Begin RadioButton RadioButton_Y
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Y Profile"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Phantom"
         Italic          =   False
         Left            =   42
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   338
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   195
      End
      Begin CheckBox CheckBox_egsphant
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Output egsphant file"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Phantom"
         Italic          =   False
         Left            =   42
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   273
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   176
      End
      Begin PushButton PushButton_ZVoxels
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   0
         Cancel          =   False
         Caption         =   "Edit Voxels"
         Default         =   False
         Enabled         =   True
         Height          =   28
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Phantom"
         Italic          =   False
         Left            =   42
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   396
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   110
      End
      Begin TextField EditField_Med_Density
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
         InitialParent   =   "GroupBox_Phantom"
         Italic          =   False
         Left            =   220
         LimitText       =   0
         LockBottom      =   True
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
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   466
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   281
      End
      Begin Label StaticText20
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Phantom"
         Italic          =   False
         Left            =   42
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   14
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Density inside phantom"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   468
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   146
      End
      Begin PopupMenu PopupMenu_mediuminside
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Phantom"
         InitialValue    =   ""
         Italic          =   False
         Left            =   220
         ListIndex       =   0
         LockBottom      =   True
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
         Top             =   434
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   281
      End
      Begin Label StaticText18
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Phantom"
         Italic          =   False
         Left            =   42
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Medium inside phantom"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   436
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   150
      End
   End
   Begin GroupBox GroupBox_Medium
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Mediums"
      Enabled         =   True
      Height          =   120
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   112
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   543
      Begin Label StaticText19
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Medium"
         Italic          =   False
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Number of Mediums"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   149
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   131
      End
      Begin TextField EditField_NumMed
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
         InitialParent   =   "GroupBox_Medium"
         Italic          =   False
         Left            =   175
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
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   146
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   66
      End
      Begin PopupMenu PopupMenu_All_Medium
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Medium"
         InitialValue    =   ""
         Italic          =   False
         Left            =   344
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
         Top             =   191
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   200
      End
      Begin PopupMenu PopupMenu_medium_Number
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Medium"
         InitialValue    =   ""
         Italic          =   False
         Left            =   344
         ListIndex       =   0
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
         Top             =   148
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   200
      End
      Begin Label StaticText21
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox_Medium"
         Italic          =   False
         Left            =   253
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
         Text            =   "Medium :"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   149
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   69
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Window_DOSXYZ_Maininputs_Phantom.egsphant_index=Window_DOSXYZ_Properties.egsphant
		  
		  WindowOpen
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Make_X_Profile()
		  //-------------------------------
		  // Make X profile EGSPHANT
		  //-------------------------------
		  //-------------------------------
		  
		  if do_nothing Then
		    Return
		  end
		  
		  
		  //Set k,y bounds
		  dosxyz_input.kMAX=3
		  dosxyz_input.jMAX=3
		  
		  // Define Z voxels
		  ReDim dosxyz_input.kMAX_Bound(dosxyz_input.kMAX)
		  
		  
		  
		  
		  //Define Y voxels
		  ReDim dosxyz_input.jMAX_Bound(dosxyz_input.jMAX)
		  
		  
		  
		  //Define X voxels
		  dosxyz_input.iMAX=-1
		  ReDim dosxyz_input.iMAX_Group(Abs(dosxyz_input.iMAX)-1)
		  ReDim dosxyz_input.iMAX_Group_Num(abs(dosxyz_input.iMAX)-1)
		  
		  Set_OutPut_Profile
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Make_Y_Profile()
		  //-------------------------------
		  // Make X profile EGSPHANT
		  //-------------------------------
		  Dim i as Integer
		  //-------------------------------
		  
		  if do_nothing Then
		    Return
		  end
		  
		  
		  //Set k,x bounds
		  dosxyz_input.kMAX=3
		  dosxyz_input.iMAX=3
		  
		  ReDim dosxyz_input.kMAX_Bound(dosxyz_input.kMAX)
		  
		  
		  ReDim dosxyz_input.iMAX_Bound(dosxyz_input.iMAX)
		  
		  
		  //Define Y voxels
		  dosxyz_input.jMAX=-1
		  ReDim dosxyz_input.jMAX_Group(Abs(dosxyz_input.jMAX)-1)
		  ReDim dosxyz_input.jMAX_Group_Num(abs(dosxyz_input.jMAX)-1)
		  
		  Set_OutPut_Profile
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Make_Z_Profile()
		  //-------------------------------
		  // Make Z profile EGSPHANT
		  //-------------------------------
		  Dim i as Integer
		  //-------------------------------
		  
		  if do_nothing Then
		    Return
		  end
		  
		  //Set x,y bounds
		  dosxyz_input.IMAX=3
		  dosxyz_input.jMAX=3
		  
		  ReDim dosxyz_input.IMAX_Bound(dosxyz_input.iMAX)
		  
		  
		  ReDim dosxyz_input.jMAX_Bound(dosxyz_input.jMAX)
		  
		  
		  //Define Z voxels
		  dosxyz_input.KMAX_Group_Min=0
		  dosxyz_input.kMAX=-1
		  ReDim dosxyz_input.kMAX_Group(Abs(dosxyz_input.kMAX)-1)
		  ReDim dosxyz_input.kMAX_Group_Num(abs(dosxyz_input.kMAX)-1)
		  Set_OutPut_Profile
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Pop_All_medium()
		  //---------------------------------------
		  //
		  //
		  //---------------------------------------
		  Dim i,mindex as Integer
		  Dim name as String
		  //---------------------------------------
		  
		  
		  
		  mindex=PopupMenu_medium_Number.ListIndex
		  if mindex>=0 and mindex<=UBound(gDOSXYZ.dosxyz_materials) Then
		    
		    if dosxyz_input.dos_Non_CT=True Then
		      name=dosxyz_input.NMedium(mindex)
		      for i=0 to UBound(gDOSXYZ.dosxyz_materials)
		        if name=gDOSXYZ.dosxyz_materials(i).Material_Name Then
		          do_nothing=True
		          PopupMenu_All_Medium.ListIndex=i 
		          do_nothing=False
		          
		          Return
		        end
		      next
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Refresh_List()
		  Dim i as Integer
		  
		  do_nothing=True
		  
		  
		  
		  
		  if dosxyz_input.zeroairdose=0 Then
		    PopupMenu_airdose.ListIndex=0
		  else
		    PopupMenu_airdose.ListIndex=1
		  end
		  
		  
		  if dosxyz_input.doseprint=0 Then
		    PopupMenu_dose_output.ListIndex=0
		  else
		    PopupMenu_dose_output.listIndex=1
		  end
		  
		  
		  PopupMenu_medium_Number.DeleteAllRows
		  if dosxyz_input.dos_Non_CT=True Then
		    for i =0 to UBound(dosxyz_input.NMedium)
		      PopupMenu_medium_Number.AddRow str(i+1)+" : "+dosxyz_input.nMEDIUM(i)
		    next
		    
		  else // For CT phantom
		    for i =0 to UBound(gDOSXYZ.DOSXYZ(egsphant_index).EGSPhantSettings.Materials)
		      PopupMenu_medium_Number.AddRow str(i+1)+" : "+gDOSXYZ.DOSXYZ(egsphant_index).EGSPhantSettings.Materials(i)
		    next
		  end
		  
		  
		  
		  
		  PopupMenu_mediuminside.DeleteAllRows
		  for i =0 to UBound(dosxyz_input.NMedium)
		    PopupMenu_mediuminside.AddRow dosxyz_input.NMedium(i)
		  next
		  
		  
		  
		  
		  do_nothing=False
		  PopupMenu_medium_Number.ListIndex=0
		  PopupMenu_mediuminside.ListIndex=dosxyz_input.MEDIUM-1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Set_OutPut_Profile()
		  //------------------------------
		  //
		  //------------------------------
		  Dim i as Integer
		  //------------------------------
		  
		  // IMAX,JMAX,KMAX: Number of voxels in the X,Y,Z directions
		  // If < 0, it means that (-n) sets of equally spaced
		  // boundaries will be input for that direction.
		  
		  
		  
		  //X
		  dosxyz_input.IL=1
		  if dosxyz_input.IMAX>0 Then
		    
		    dosxyz_input.IU=dosxyz_input.IMAX
		    dosxyz_input.IZSCAN_X1=2
		    dosxyz_input.IZSCAN_X2=2
		    
		  else
		    // Equal 
		    dosxyz_input.IU=0
		    for i=0 to UBound(dosxyz_input.IMAX_Group_Num)
		      dosxyz_input.IU=dosxyz_input.IU+dosxyz_input.IMAX_Group_Num(i)
		    next
		    dosxyz_input.IZSCAN_X1=1
		    dosxyz_input.IZSCAN_X2=dosxyz_input.IU
		    dosxyz_input.IZSCAN=0
		    
		  end
		  
		  //Y
		  dosxyz_input.jL=1
		  if dosxyz_input.jMAX>0 Then
		    dosxyz_input.jU=dosxyz_input.jMAX
		    dosxyz_input.IZSCAN_y1=2
		    dosxyz_input.IZSCAN_y2=2
		  else
		    dosxyz_input.jU=0
		    for i=0 to UBound(dosxyz_input.jMAX_Group_Num)
		      dosxyz_input.jU=dosxyz_input.jU+dosxyz_input.jMAX_Group_Num(i)
		    next
		    dosxyz_input.IZSCAN_y1=1
		    dosxyz_input.IZSCAN_y2=dosxyz_input.jU
		    dosxyz_input.IZSCAN=0
		    
		  end
		  
		  
		  
		  //Z
		  dosxyz_input.kL=1
		  if dosxyz_input.kMAX>0 Then
		    dosxyz_input.kU=dosxyz_input.kMAX
		    dosxyz_input.IZSCAN_z1=2
		    dosxyz_input.IZSCAN_z2=2
		  else
		    dosxyz_input.kU=0
		    for i=0 to UBound(dosxyz_input.kMAX_Group_Num)
		      dosxyz_input.kU=dosxyz_input.kU+dosxyz_input.kMAX_Group_Num(i)
		    next
		    dosxyz_input.IZSCAN_z1=1
		    dosxyz_input.IZSCAN_z2=dosxyz_input.kU
		    dosxyz_input.IZSCAN=1
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WindowOpen()
		  //---------------------------
		  //---------------------------
		  Dim i as Integer
		  Dim ss as Single
		  //---------------------------
		  
		  
		  do_nothing=True
		  
		  dosxyz_input=gDOSXYZ.DOSXYZ(Window_DOSXYZ_Properties.egsphant).DOSXYZ_Input(Window_DOSXYZ_Properties.beam)
		  
		  
		  PopupMenu_All_Medium.DeleteAllRows
		  if dosxyz_input.dos_Non_CT Then
		    for i=0 to UBound(gDOSXYZ.dosxyz_materials)
		      PopupMenu_All_Medium.AddRow gDOSXYZ.dosxyz_materials(i).Material_Name
		    next
		  end
		  
		  
		  if dosxyz_input.dos_Non_CT=False Then
		    GroupBox_CT.Enabled=True
		    GroupBox_Phantom.Enabled=False
		  else
		    GroupBox_CT.Enabled=False
		    GroupBox_Phantom.Enabled=True
		  end
		  
		  
		  
		  PopupMenu_dose_output.DeleteAllRows
		  
		  PopupMenu_dose_output.AddRow "supressed"
		  PopupMenu_dose_output.AddRow "all doses"
		  
		  
		  PopupMenu_airdose.DeleteAllRows
		  PopupMenu_airdose.AddRow "no"
		  PopupMenu_airdose.AddRow "yes"
		  
		  
		  if dosxyz_input.IMAX<0 Then
		    RadioButton_X.Value=True
		    
		    ss=(dosxyz_input.kMAX_Bound(2)-dosxyz_input.kMAX_Bound(1))/2+dosxyz_input.kMAX_Bound(1)
		    
		    
		  elseif dosxyz_input.JMAX<0 Then
		    RadioButton_y.Value=True
		    
		    ss=(dosxyz_input.kMAX_Bound(2)-dosxyz_input.kMAX_Bound(1))/2+dosxyz_input.kMAX_Bound(1)
		    
		    
		    
		  elseif dosxyz_input.KMAX<0 Then
		    RadioButton_z.Value=True
		  end
		  
		  if dosxyz_input.IPHANT=1 then
		    CheckBox_egsphant.Value=True
		  else
		    CheckBox_egsphant.Value=False
		  End
		  
		  
		  EditField_Med_Density.Text=str(DOSXYZ_Input.DENSITY)
		  
		  if dosxyz_input.dos_Non_CT Then
		    EditField_NumMed.Text=str(DOSXYZ_Input.nmed)
		  else
		    EditField_NumMed.Text=str(UBound(gDOSXYZ.DOSXYZ(egsphant_index).EGSPhantSettings.Materials)+1)
		    EditField_NumMed.ReadOnly=True
		  end
		  
		  Refresh_List
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		dosxyz_input As class_dosxyZ_input
	#tag EndProperty

	#tag Property, Flags = &h0
		do_nothing As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		egsphant_index As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events PopupMenu_airdose
	#tag Event
		Sub Change()
		  '
		  'PopupMenu_airdose.AddRow "no"
		  'PopupMenu_airdose.AddRow "yes"
		  
		  if me.ListIndex=0 Then
		    dosxyz_input.zeroairdose=0
		  elseif me.ListIndex=1  Then
		    dosxyz_input.zeroairdose=1
		  end
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_dose_output
	#tag Event
		Sub Change()
		  if me.ListIndex=0 Then
		    dosxyz_input.doseprint=0
		  elseif me.ListIndex=1  Then
		    dosxyz_input.doseprint=1
		  end
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Close
	#tag Event
		Sub Action()
		  Window_DOSXYZ_Maininputs_Phantom.Close
		  Window_DOSXYZ_Maininputs.Refresh_List
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_X
	#tag Event
		Sub Action()
		  Make_X_Profile
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Z
	#tag Event
		Sub Action()
		  Make_Z_Profile
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Y
	#tag Event
		Sub Action()
		  Make_Y_Profile
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_egsphant
	#tag Event
		Sub Action()
		  if me.Value Then
		    dosxyz_input.IPHANT=1
		  else
		    dosxyz_input.IPHANT=0
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_ZVoxels
	#tag Event
		Sub Action()
		  Window_DOSXYZ_Maininputs_Phantom_Voxels.Show
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Med_Density
	#tag Event
		Sub TextChange()
		  if do_nothing=False Then
		    dosxyz_input.DENSITY=Val(me.Text)
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_mediuminside
	#tag Event
		Sub Change()
		  Dim i,k as Integer
		  
		  k=PopupMenu_mediuminside.ListIndex+1
		  
		  if do_nothing=False Then
		    if k>=1 and k<= dosxyz_input.NMED Then
		      dosxyz_input.MEDIUM=k
		    else
		      dosxyz_input.MEDIUM=0
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_NumMed
	#tag Event
		Sub TextChange()
		  Dim i as Integer
		  
		  if do_nothing=False Then
		    if dosxyz_input.dos_Non_CT Then
		      dosxyz_input.NMED=Val(me.Text)
		      ReDim dosxyz_input.NMedium(dosxyz_input.NMED-1)
		      
		      PopupMenu_medium_Number.DeleteAllRows
		      PopupMenu_mediuminside.DeleteAllRows
		      
		      for i=0 to UBound(DOSXYZ_Input.NMedium)
		        PopupMenu_medium_Number.AddRow DOSXYZ_Input.NMedium(i)
		        PopupMenu_mediuminside.AddRow DOSXYZ_Input.NMedium(i)
		      next
		      Refresh_List
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_All_Medium
	#tag Event
		Sub Change()
		  Dim i,mindex as Integer
		  Dim name as String
		  
		  
		  if do_nothing=False Then
		    
		    if dosxyz_input.dos_Non_CT=True Then
		      mindex=PopupMenu_medium_Number.ListIndex
		      name=me.Text
		      if mindex>=0 and mindex<=UBound(dosxyz_input.NMedium) Then
		        dosxyz_input.NMedium(mindex)=name
		      end
		      
		    else
		      
		    end
		    
		    Refresh_List
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_medium_Number
	#tag Event
		Sub Change()
		  Dim i as Integer
		  Dim ss as String
		  
		  if do_nothing=False Then
		    Pop_All_medium
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
		Name="do_nothing"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="egsphant_index"
		Visible=false
		Group="Behavior"
		InitialValue="0"
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
