#tag Window
Begin Window Window_DOSXYZ_Maininputs_source21
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   601
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
   Title           =   "Source 21 options"
   Visible         =   True
   Width           =   615
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
      Left            =   267
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   561
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin RadioButton RadioButton_Latch_no
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "BEAM sim with no LATCH filter"
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   46
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
      Top             =   69
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   241
   End
   Begin TextField EditField_BEAM_exe
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
      Left            =   328
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
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   296
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   257
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
      Left            =   46
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
      Text            =   "BEAM simulation:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   297
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   253
   End
   Begin CheckBox CheckBox_FAT_DBS
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Exclude Fat Photons from DBS"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   46
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      State           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   37
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   253
   End
   Begin RadioButton RadioButton_Latch_yes
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "BEAM sim with latch"
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   46
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   101
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   178
   End
   Begin TextField EditField_BEAM_Inputfile
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
      Left            =   328
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
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   329
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   257
   End
   Begin Label StaticText3
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
      Left            =   46
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "input file:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   330
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   253
   End
   Begin TextField EditField_Pegs
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
      Left            =   328
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
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   362
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   257
   End
   Begin Label StaticText8
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
      Left            =   46
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "pegs data:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   363
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   253
   End
   Begin TextField EditField_esplit
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
      Left            =   328
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
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   395
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   257
   End
   Begin Label StaticText9
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
      Left            =   46
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "e split"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   396
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   253
   End
   Begin TextField EditField_num_control
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
      Left            =   328
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
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   152
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   76
   End
   Begin Label StaticText11
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
      Left            =   46
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Number of control points"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   152
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   253
   End
   Begin PopupMenu PopupMenu_LatchBitFilter
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
      Left            =   326
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   100
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   259
   End
   Begin Listbox Listbox_Points
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
      DropIndicatorVisible=   False
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   False
      HeadingIndex    =   -1
      Height          =   98
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   46
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   32
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   186
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   539
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin TextField EditField_vcu_code
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
      HelpTag         =   "0 means not used"
      Index           =   -2147483648
      Italic          =   False
      Left            =   328
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
      TabIndex        =   33
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   429
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   257
   End
   Begin Label Label1
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
      Left            =   46
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   34
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "the_vcu_code"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   430
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   253
   End
   Begin TextField EditField_vcu_file
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
      HelpTag         =   "0 means not used"
      Index           =   -2147483648
      Italic          =   False
      Left            =   328
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
      TabIndex        =   35
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   462
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   257
   End
   Begin Label Label2
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
      Left            =   46
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   36
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "the_vcu_input_file"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   463
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   253
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Dim i as Integer
		  
		  dosxyz_input=gDOSXYZ.DOSXYZ(Window_DOSXYZ_Properties.egsphant).DOSXYZ_Input(Window_DOSXYZ_Properties.beam)
		  
		  if dosxyz_input.enflag=2 Then
		    RadioButton_Latch_no.Value=True
		  elseif dosxyz_input.enflag=3 Then
		    RadioButton_Latch_yes.Value=False
		  end
		  if dosxyz_input.i_dbs=1 Then
		    CheckBox_FAT_DBS.Value=True
		  else
		    CheckBox_FAT_DBS.Value=False
		  end
		  
		  UpdateListbox
		  
		  EditField_esplit.Text=Format(dosxyz_input.e_split,"-#")
		  EditField_BEAM_exe.Text=dosxyz_input.the_beam_code
		  EditField_BEAM_Inputfile.Text=dosxyz_input.the_input_file
		  EditField_Pegs.Text=dosxyz_input.the_pegs_file
		  EditField_num_control.Text=Format(dosxyz_input.nset,"#")
		  
		  PopupMenu_LatchBitFilter.DeleteAllRows
		  PopupMenu_LatchBitFilter.AddRow "I BIT FILTER=0"
		  PopupMenu_LatchBitFilter.AddRow "I BIT FILTER=1"
		  PopupMenu_LatchBitFilter.AddRow "I BIT FILTER=2"
		  PopupMenu_LatchBitFilter.AddRow "I BIT FILTER=3"
		  
		  PopupMenu_LatchBitFilter.ListIndex=dosxyz_input.I_bit_filter
		  
		  EditField_vcu_code.Text=dosxyz_input.the_vcu_code
		  EditField_vcu_file.Text=dosxyz_input.the_vcu_input_file
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub UpdateListbox()
		  Dim i as Integer
		  
		  Listbox_Points.DeleteAllRows
		  
		  Listbox_Points.ColumnCount=8
		  
		  Listbox_Points.ColumnType(0)=3
		  Listbox_Points.ColumnType(1)=3
		  Listbox_Points.ColumnType(2)=3
		  Listbox_Points.ColumnType(3)=3
		  Listbox_Points.ColumnType(4)=3
		  Listbox_Points.ColumnType(5)=3
		  Listbox_Points.ColumnType(6)=3
		  Listbox_Points.ColumnType(7)=3
		  
		  for i=0 to (dosxyz_input.nset-1)
		    Listbox_Points.AddRow
		    Listbox_Points.Cell(i,0)=Format(dosxyz_input.isox(i),"-#.####")
		    Listbox_Points.Cell(i,1)=Format(dosxyz_input.isoy(i),"-#.####")
		    Listbox_Points.Cell(i,2)=Format(dosxyz_input.isoz(i),"-#.####")
		    Listbox_Points.Cell(i,3)=Format(dosxyz_input.theta(i),"-#.####")
		    Listbox_Points.Cell(i,4)=Format(dosxyz_input.phi(i),"-#.####")
		    Listbox_Points.Cell(i,5)=Format(dosxyz_input.phicol(i),"-#.####")
		    Listbox_Points.Cell(i,6)=Format(dosxyz_input.dsources(i),"#.###")
		    Listbox_Points.Cell(i,7)=Format(dosxyz_input.muIndex(i),"#.#####")
		  Next
		  
		  
		  Listbox_Points.HasHeading=True
		  
		  Listbox_Points.HasHeading=True
		  Listbox_Points.heading(0)="Iso X"
		  Listbox_Points.heading(1)="Iso Y"
		  Listbox_Points.heading(2)="Iso Z"
		  Listbox_Points.heading(3)="Theta"
		  Listbox_Points.heading(4)="Phi"
		  Listbox_Points.heading(5)="Phicol"
		  Listbox_Points.heading(6)="D-Source"
		  Listbox_Points.heading(7)="MU Index"
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		dosxyz_input As class_dosxyZ_input
	#tag EndProperty


#tag EndWindowCode

#tag Events PushButton_Close
	#tag Event
		Sub Action()
		  Window_DOSXYZ_Maininputs_source21.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Latch_no
	#tag Event
		Sub Action()
		  if me.Value Then
		    dosxyz_input.enflag=2
		  else
		    dosxyz_input.enflag=3
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_BEAM_exe
	#tag Event
		Sub TextChange()
		  dosxyz_input.the_beam_code=me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_FAT_DBS
	#tag Event
		Sub Action()
		  if me.Value Then
		    dosxyz_input.i_dbs=1
		  else
		    dosxyz_input.i_dbs=0
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton_Latch_yes
	#tag Event
		Sub Action()
		  if me.Value Then
		    dosxyz_input.enflag=3
		  else
		    dosxyz_input.enflag=2
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_BEAM_Inputfile
	#tag Event
		Sub TextChange()
		  dosxyz_input.the_input_file=Trim(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Pegs
	#tag Event
		Sub TextChange()
		  dosxyz_input.the_pegs_file=Trim(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_esplit
	#tag Event
		Sub TextChange()
		  dosxyz_input.e_split=val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_num_control
	#tag Event
		Sub TextChange()
		  Dim i as Integer
		  
		  dosxyz_input.nset=val(me.Text)
		  i=dosxyz_input.nset-1
		  if dosxyz_input.nset>0 Then
		    
		    ReDim dosxyz_input.isox(i) 
		    ReDim dosxyz_input.isoy(i) 
		    ReDim dosxyz_input.isoz(i) 
		    ReDim dosxyz_input.theta(i) 
		    ReDim dosxyz_input.phi(i) 
		    ReDim dosxyz_input.phicol(i) 
		    ReDim dosxyz_input.dsources(i) 
		    ReDim dosxyz_input.muIndex(i) 
		    
		    
		  end
		  UpdateListbox
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_LatchBitFilter
	#tag Event
		Sub Change()
		  dosxyz_input.I_bit_filter=me.ListIndex
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_Points
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  dosxyz_input.isox(row) =val( Listbox_Points.Cell(row,0))
		  dosxyz_input.isoy(row) =val( Listbox_Points.Cell(row,1))
		  dosxyz_input.isoz(row) = val(Listbox_Points.Cell(row,2))
		  dosxyz_input.theta(row) = val(Listbox_Points.Cell(row,3))
		  dosxyz_input.phi(row) = val(Listbox_Points.Cell(row,4))
		  dosxyz_input.phicol(row) = val(Listbox_Points.Cell(row,5))
		  dosxyz_input.dsources(row) =val( Listbox_Points.Cell(row,6))
		  dosxyz_input.muIndex(row) = val(Listbox_Points.Cell(row,7))
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_vcu_code
	#tag Event
		Sub TextChange()
		  dosxyz_input.the_vcu_code=trim(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_vcu_file
	#tag Event
		Sub TextChange()
		  dosxyz_input.the_vcu_input_file=Trim(me.Text)
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
