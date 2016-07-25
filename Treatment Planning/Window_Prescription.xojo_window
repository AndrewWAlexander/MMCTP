#tag Window
Begin Window Window_Prescription
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
   Height          =   759
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Prescription Window"
   Visible         =   True
   Width           =   1212
   Begin TabPanel TabPanel_Lowers
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   728
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   14
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   False
      TabDefinition   =   "Structure-Volumes\rOrgan and Target Cons"
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   11
      Underline       =   False
      Value           =   0
      Visible         =   True
      Width           =   1172
      Begin GroupBox GroupBox5
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Organ DV, max dose, and average dose constraints"
         Enabled         =   True
         Height          =   344
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   24
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   49
         Underline       =   False
         Visible         =   True
         Width           =   1152
         Begin Listbox Listbox_Organ_Constraints
            AutoDeactivate  =   True
            AutoHideScrollbars=   True
            Bold            =   False
            Border          =   True
            ColumnCount     =   13
            ColumnsResizable=   True
            ColumnWidths    =   ""
            DataField       =   ""
            DataSource      =   ""
            DefaultRowHeight=   -1
            Enabled         =   True
            EnableDrag      =   False
            EnableDragReorder=   False
            GridLinesHorizontal=   3
            GridLinesVertical=   3
            HasHeading      =   True
            HeadingIndex    =   -1
            Height          =   305
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "GroupBox5"
            InitialValue    =   "Organs"
            Italic          =   False
            Left            =   31
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
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   76
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   1136
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
      End
      Begin GroupBox GroupBox6
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Conformity Index"
         Enabled         =   True
         Height          =   66
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   31
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   650
         Underline       =   False
         Visible         =   True
         Width           =   287
         Begin TextField EditField_Conf_Dose
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
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   163
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
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "10"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   676
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   59
         End
         Begin Label StaticText42
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox6"
            Italic          =   False
            Left            =   44
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Ref Dose"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   677
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   86
         End
      End
      Begin CheckBox CheckBox_Struct_Remove
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Remove previous files"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   952
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         State           =   0
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   691
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   172
      End
      Begin Listbox Listbox_Volumes
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
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   3
         GridLinesVertical=   3
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   463
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         InitialValue    =   "Organs"
         Italic          =   False
         Left            =   46
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
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   53
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   1124
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin Label StaticText90
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   46
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Trim dose cutoff value  (%)"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   695
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   181
      End
      Begin TextField EditField_CutoffDose
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
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   239
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
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "0.001"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   694
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   75
      End
      Begin PushButton PushButton_Write_Struc_file
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Write File"
         Default         =   False
         Enabled         =   True
         Height          =   28
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   863
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   687
         Underline       =   False
         Visible         =   True
         Width           =   77
      End
      Begin ProgressBar ProgressBar_Struc
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Left            =   377
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Maximum         =   100
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   695
         Value           =   0
         Visible         =   True
         Width           =   446
      End
      Begin GroupBox GroupBox26
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Target Constraint"
         Enabled         =   True
         Height          =   233
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   24
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   405
         Underline       =   False
         Visible         =   True
         Width           =   1143
         Begin Listbox Listbox_Organ_Target
            AutoDeactivate  =   True
            AutoHideScrollbars=   True
            Bold            =   False
            Border          =   True
            ColumnCount     =   4
            ColumnsResizable=   True
            ColumnWidths    =   ""
            DataField       =   ""
            DataSource      =   ""
            DefaultRowHeight=   -1
            Enabled         =   True
            EnableDrag      =   False
            EnableDragReorder=   False
            GridLinesHorizontal=   3
            GridLinesVertical=   3
            HasHeading      =   True
            HeadingIndex    =   -1
            Height          =   194
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "GroupBox26"
            InitialValue    =   "Organs"
            Italic          =   False
            Left            =   31
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
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   432
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   1127
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
      End
      Begin GroupBox GroupBox29
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Number of Segments"
         Enabled         =   True
         Height          =   66
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Lowers"
         Italic          =   False
         Left            =   364
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   650
         Underline       =   False
         Visible         =   True
         Width           =   484
         Begin TextField EditField_Max_Segments
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
            InitialParent   =   "GroupBox29"
            Italic          =   False
            Left            =   640
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
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "10"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   676
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   67
         End
         Begin CheckBox CheckBox_MaxSegment
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Use Maximum Segments Contraint"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox29"
            Italic          =   False
            Left            =   377
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   2
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   678
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   251
         End
         Begin TextField EditField_Max_Segpriority
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
            InitialParent   =   "GroupBox29"
            Italic          =   False
            Left            =   719
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
            TabIndex        =   3
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "10"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   676
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   104
         End
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  Plan.Write_DV_Contraints_String
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Plan=gRTOG.Plan(Plan_Index)
		  Window_Open
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Update_Constraint_Tab()
		  // Update the constraint tab 
		  //------------------------
		  
		  
		  CheckBox_MaxSegment.Value=plan.UseMaxSegement
		  EditField_Max_Segments.Text=Format(plan.MaximumSegments,"#")
		  EditField_Max_Segpriority.Text=Format(plan.MaximumSegmentsPriority,"#.0000e")
		  
		  Update_Listbox_OrganConst
		  Update_Listbox_TargetConst
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Listbox_OrganConst()
		  'Updates the Plan listbox with hierarchical option
		  '======================================
		  Dim i, u,max_length,length as Integer
		  Dim name,name2, s1,sub1 ,s2,temp as String
		  '=====================================
		  
		  Listbox_Organ_Constraints.ColumnCount=15
		  
		  // DV values
		  Listbox_Organ_Constraints.Heading(0)="Organ"
		  Listbox_Organ_Constraints.Heading(1)="Dose Limit (Gy)"
		  Listbox_Organ_Constraints.Heading(2)="Vol Limit (%)"
		  Listbox_Organ_Constraints.Heading(3)="Penalty"
		  
		  //Average Dose
		  Listbox_Organ_Constraints.Heading(4)="Average Dose Constraint"
		  Listbox_Organ_Constraints.Heading(5)="Max Avg Dose (Gy)"
		  Listbox_Organ_Constraints.Heading(6)="Max Avg Dose Pen"
		  
		  //Max Dose
		  Listbox_Organ_Constraints.Heading(7)="Max Dose Constraint"
		  Listbox_Organ_Constraints.Heading(8)="Max Dose (Gy)"
		  Listbox_Organ_Constraints.Heading(9)="Max Dose Pen"
		  
		  // System Placeholders
		  Listbox_Organ_Constraints.Heading(10)="Organ Constraints 7"
		  Listbox_Organ_Constraints.Heading(11)="Index 8"
		  Listbox_Organ_Constraints.Heading(12)="Constaint Index 9"
		  
		  // System Placeholders
		  Listbox_Organ_Constraints.Heading(13)="Importance"
		  Listbox_Organ_Constraints.Heading(14)="Overlap Pri."
		  
		  temp="10%,7%,7%,5%,10%,10%,10%,10%,8%,8%,0%,0%,0%,7%,8%"
		  Listbox_Organ_Constraints.columnwidths=Temp
		  Listbox_Organ_Constraints.DeleteAllRows
		  
		  // Create contextual list
		  for i=0 to UBound(Plan.Structure_Dose)
		    name=Plan.Structure_Dose(i).Organ_Name
		    if i>0 then
		      s1=s1+","+name+"%"+str(i)
		    else
		      s1=name+"%"+str(i)
		    end
		    
		    s2=""
		    for u=0 to UBound(Plan.Structure_Dose(i).Constraints)
		      name2="Constraint "+str(u+1)
		      if u>0  then
		        s2=s2+","+name2+"%"+str(i)
		      elseif u=0 then
		        s2=name2+"%"+str(i)
		      end
		    next
		    if i >0 then
		      sub1=sub1+";"+s2
		    elseif i=0 Then
		      sub1=s2
		    end if
		  next
		  
		  
		  u=CountFields(s1,",")
		  For i=1 to u
		    Listbox_Organ_Constraints.addfolder ""
		    temp=NthField(s1,",",i)
		    // Place the Organ and name
		    Listbox_Organ_Constraints.cell(i-1,0)=NthField(temp,"%",1)
		    Listbox_Organ_Constraints.CellType(i-1,0)=2
		    
		    
		    if Plan.Structure_Dose(i-1).Use_DV_Constraint Then
		      Listbox_Organ_Constraints.CellCheck(i-1,0)=True
		    end
		    
		    // Average dose contraint information
		    Listbox_Organ_Constraints.CellType(i-1,4)=2
		    Listbox_Organ_Constraints.CellType(i-1,5)=3
		    Listbox_Organ_Constraints.CellType(i-1,6)=3
		    if Plan.Structure_Dose(i-1).AvgDose_Use Then
		      Listbox_Organ_Constraints.CellCheck(i-1,4)=True
		    end
		    Listbox_Organ_Constraints.Cell(i-1,5)=Format(Plan.Structure_Dose(i-1).AvgDose,"-#.###")
		    Listbox_Organ_Constraints.Cell(i-1,6)=Format(Plan.Structure_Dose(i-1).AvgDosePen,"-#.###")
		    
		    // Max dose contraint info
		    Listbox_Organ_Constraints.CellType(i-1,7)=2
		    Listbox_Organ_Constraints.CellType(i-1,8)=3
		    Listbox_Organ_Constraints.CellType(i-1,9)=3
		    if Plan.Structure_Dose(i-1).Use_Max_Dose Then
		      Listbox_Organ_Constraints.CellCheck(i-1,7)=True
		    end
		    Listbox_Organ_Constraints.Cell(i-1,8)=Format(Plan.Structure_Dose(i-1).MaxDose,"-#.###")
		    Listbox_Organ_Constraints.Cell(i-1,9)=Format(Plan.Structure_Dose(i-1).Max_Priority,"-#.###")
		    
		    
		    //  number
		    Listbox_Organ_Constraints.cell(i-1,10)=NthField(sub1,";",i)
		    
		    // Place the Organ index
		    Listbox_Organ_Constraints.cell(i-1,11)=NthField(temp,"%",2)
		    
		    // Place the Organ importance and Overlap
		    Listbox_Organ_Constraints.CellType(i-1,13)=3
		    Listbox_Organ_Constraints.CellType(i-1,14)=3
		    Listbox_Organ_Constraints.cell(i-1,13)=Format(Plan.Structure_Dose(i-1).Importance,"#")
		    Listbox_Organ_Constraints.cell(i-1,14)=Format(Plan.Structure_Dose(i-1).OverlapPriority,"#")
		    
		  Next
		  Listbox_Organ_Constraints.hierarchical=true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Listbox_TargetConst()
		  //--------------------------------------------------
		  //
		  //
		  // Updates the Plan listbox with hierarchical option
		  //
		  // Update
		  // 2012 Alexander, separate volume properties with DV constraints
		  '======================================
		  Dim i as Integer
		  Dim temp as String
		  '=====================================
		  
		  Listbox_Organ_Target.ColumnCount=8
		  Listbox_Organ_Target.Heading(0)="Target Volume"
		  Listbox_Organ_Target.Heading(1)="Min Dose (Gy)"
		  Listbox_Organ_Target.Heading(2)="Min Dose Penalty"
		  Listbox_Organ_Target.Heading(3)="Norm Vol %"
		  Listbox_Organ_Target.Heading(4)="Norm Gy"
		  Listbox_Organ_Target.Heading(5)="Number"
		  
		  
		  temp="25%,18%,18%,17%,17%,5%"
		  Listbox_Organ_Target.columnwidths=Temp
		  Listbox_Organ_Target.DeleteAllRows
		  
		  
		  for i=0 to UBound(Plan.Structure_Dose)
		    Listbox_Organ_Target.AddRow Plan.Structure_Dose(i).Organ_Name
		    Listbox_Organ_Target.Cell(i,1)=Format(Plan.Structure_Dose(i).MinDose,"-#.####")
		    Listbox_Organ_Target.Cell(i,2)=Format(Plan.Structure_Dose(i).Min_Priority,"-#.####")
		    Listbox_Organ_Target.Cell(i,3)=Format(Plan.Structure_Dose(i).Target_Norm_Volume,"-#.####")
		    Listbox_Organ_Target.Cell(i,4)=Format(Plan.Structure_Dose(i).Target_Norm_Dose,"-#.####")
		    Listbox_Organ_Target.Cell(i,5)=Format(i+1,"#")
		    
		    Listbox_Organ_Target.CellType(i,0)=2
		    Listbox_Organ_Target.CellType(i,1)=3
		    Listbox_Organ_Target.CellType(i,2)=3
		    Listbox_Organ_Target.CellType(i,3)=3
		    Listbox_Organ_Target.CellType(i,4)=3
		    
		    
		    if Plan.Structure_Dose(i).Use_Min_Dose Then
		      Listbox_Organ_Target.CellCheck(i,0)=True
		    end
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Listbox_Volumes()
		  //--------------------------------------------------
		  //
		  //
		  // Updates the Plan listbox with hierarchical option
		  //
		  // Update
		  // 2012 Alexander, separate volume properties with DV constraints
		  '======================================
		  Dim i as Integer
		  Dim temp as String
		  '=====================================
		  
		  Listbox_Volumes.ColumnCount=6
		  Listbox_Volumes.Heading(0)="Organ"
		  Listbox_Volumes.Heading(1)="Voxel (x,y) resolution"
		  Listbox_Volumes.Heading(2)="Voxel size x (cm)"
		  Listbox_Volumes.Heading(3)="Voxel size y (cm)"
		  Listbox_Volumes.Heading(4)="Number of voxels"
		  Listbox_Volumes.Heading(5)="Trim cutoff value %"
		  Listbox_Volumes.DeleteAllRows
		  
		  for i=0 to UBound(Plan.Structure_Dose)
		    Listbox_Volumes.AddRow Plan.Structure_Dose(i).Organ_Name
		    Listbox_Volumes.Cell(i,1)=Format(Plan.Structure_Dose(i).Voxel_REs,"#")
		    Listbox_Volumes.Cell(i,2)=Format(Plan.Structure_Dose(i).Voxel_Size_x,"-#.####")
		    Listbox_Volumes.Cell(i,3)=Format(Plan.Structure_Dose(i).Voxel_Size_y,"-#.####")
		    Listbox_Volumes.Cell(i,4)=Format(Plan.Structure_Dose(i).Num_Points,"#")
		    Listbox_Volumes.Cell(i,5)=Format(Plan.Structure_Dose(i).CutoffDose,"#.#####")
		    Listbox_Volumes.CellType(i,0)=0
		    Listbox_Volumes.CellType(i,1)=3
		    Listbox_Volumes.CellType(i,2)=0
		    Listbox_Volumes.CellType(i,3)=0
		    Listbox_Volumes.CellType(i,4)=0
		    Listbox_Volumes.CellType(i,5)=0
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Window_Open()
		  //-----------------------------------------------------------------
		  // Open Inverse planning window
		  //
		  //
		  //-----------------------------------------------------------------
		  
		  
		  me.Title=gRTOG.Patient_Name+" "+gRTOG.Patient_Surname+" Inverse Optimization Prescription Window : "+gRTOG.Plan(Plan_Index).Plan_Name
		  
		  Update_Listbox_Volumes
		  Update_Constraint_Tab
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		bb As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		constraint_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		nx As Integer = 256
	#tag EndProperty

	#tag Property, Flags = &h0
		organ_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Plan As RTOG_Plan
	#tag EndProperty


#tag EndWindowCode

#tag Events Listbox_Organ_Constraints
	#tag Event
		Sub Change()
		  //=======================
		  // Update selected OAR constraints
		  //
		  //=======================
		  Dim s as string
		  Dim old,i,old_d,temp_plan_index as integer
		  //====================
		  
		  old=organ_index
		  old_d=constraint_index
		  
		  if me.ListIndex=-1 Then
		    Return
		  end
		  
		  'Find Organ index
		  s=Listbox_Organ_Constraints.Cell(Listbox_Organ_Constraints.ListIndex,11)
		  if len(s)=0 Then
		    temp_plan_index=-1
		  else
		    temp_plan_index=val(s)
		  end
		  
		  organ_index=temp_plan_index
		  
		  'Find Constraint index
		  s=Listbox_Organ_Constraints.Cell(Listbox_Organ_Constraints.ListIndex,12)
		  if len(s)=0 Then
		    constraint_index=-1
		  else
		    constraint_index=val(s)
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Sub CollapseRow(row As Integer)
		  Dim i,u,NSubRows as Integer
		  
		  NSubRows=CountFields(Me.cell(row,10),",")
		  u=row+1
		  For i=row+NSubRows downto u
		    Me.removerow i
		  Next
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  dim MI as MenuItem
		  
		  MI = New MenuItem
		  MI.Text = "Add Constraint"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "Delete Constraint"
		  base.Append MI
		  
		  
		  Return True
		  
		End Function
	#tag EndEvent
	#tag Event
		Function HeaderPressed(column as Integer) As Boolean
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  if organ_index>-1 and organ_index<=UBound(Plan.Structure_Dose) Then
		    if constraint_index>-1 and constraint_index<=UBound(Plan.Structure_Dose(organ_index).Constraints) Then
		      if column=1 Then
		        Plan.Structure_Dose(organ_index).Constraints(constraint_index).dose=val(me.Cell(row,column))
		      elseif column=2 Then
		        Plan.Structure_Dose(organ_index).Constraints(constraint_index).volume=val(me.Cell(row,column))
		      elseif column=3 Then
		        Plan.Structure_Dose(organ_index).Constraints(constraint_index).Priority=val(me.Cell(row,column))
		      end
		    end
		    
		    if column=5 Then
		      Plan.Structure_Dose(organ_index).AvgDose=val(me.Cell(row,column))
		    elseif column=6  Then
		      Plan.Structure_Dose(organ_index).AvgDosePen=val(me.Cell(row,column))
		    elseif column=8 Then
		      Plan.Structure_Dose(organ_index).MaxDose=val(me.Cell(row,column))
		    elseif column=9 Then
		      Plan.Structure_Dose(organ_index).Max_Priority=val(me.Cell(row,column))
		    elseif column=13 Then
		      Plan.Structure_Dose(organ_index).Importance=val(me.Cell(row,column))
		    elseif column=14 Then
		      Plan.Structure_Dose(organ_index).OverlapPriority=val(me.Cell(row,column))
		    end
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  Dim i as Integer
		  
		  // Get organ index value
		  i=val(me.Cell(row,11))
		  
		  if column=0 and i>-1 and i<= UBound(Plan.Structure_Dose) Then
		    Plan.Structure_Dose(i).Use_DV_Constraint=me.CellCheck(row,column)
		  elseif column=4 and i>-1 and i<= UBound(Plan.Structure_Dose) Then
		    Plan.Structure_Dose(i).AvgDose_Use =me.CellCheck(row,column)
		  elseif column=7 and i>-1 and i<= UBound(Plan.Structure_Dose) Then
		    Plan.Structure_Dose(i).Use_Max_Dose=me.CellCheck(row,column)
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  //-----------------------------------------------
		  //
		  //
		  //-----------------------------------------------
		  Dim f as FolderItem
		  Dim s as String
		  Dim i as Integer
		  Dim cc as RTOG_Plan_Struture_Constraint
		  //-----------------------------------------------
		  
		  Select Case hitItem.Text
		  Case "Add Constraint"
		    cc= new RTOG_Plan_Struture_Constraint
		    Plan.Structure_Dose(organ_index).Constraints.append cc
		    Update_Listbox_OrganConst
		    
		  Case "Delete Constraint"
		    if organ_index>=0 and organ_index<=UBound(Plan.Structure_Dose) Then
		      
		      if constraint_index>=0 and constraint_index<=UBound(Plan.Structure_Dose(organ_index).Constraints) Then
		        Plan.Structure_Dose(organ_index).Constraints.remove constraint_index
		      else
		        for i=UBound(Plan.Structure_Dose(organ_index).Constraints) DownTo 0
		          Plan.Structure_Dose(organ_index).Constraints.remove i
		        Next
		      end
		      
		      Update_Listbox_OrganConst
		    end
		  End Select
		  
		  Return True
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub ExpandRow(row As Integer)
		  //----------------------------
		  //
		  //----------------------------
		  Dim s1,temp as String
		  Dim i,u, Organindex as Integer
		  //----------------------------
		  
		  s1=me.cell(row,10)
		  u=CountFields(s1,",")
		  temp=NthField(s1,",",1)
		  Organindex=val(me.Cell(row,11))
		  
		  For i=1 to u
		    temp=NthField(s1,",",i)
		    Me.addrow ""
		    Me.cell(me.lastIndex,0)=NthField(temp,"%",1)
		    Me.CellType(me.LastIndex,0)=0
		    
		    
		    if UBound(Plan.Structure_Dose(Organindex).Constraints)>-1 Then
		      Me.Cell(me.LastIndex,1)=Format(Plan.Structure_Dose(Organindex).Constraints(i-1).dose,"-###")
		      Me.Cell(me.LastIndex,2)=Format(Plan.Structure_Dose(Organindex).Constraints(i-1).volume,"-###")
		      Me.Cell(me.LastIndex,3)=Format(Plan.Structure_Dose(Organindex).Constraints(i-1).Priority,"-###")
		      
		      Me.CellType(me.LastIndex,1)=3
		      Me.CellType(me.LastIndex,2)=3
		      Me.CellType(me.LastIndex,3)=3
		    end
		    
		    // Place Organ index
		    Me.Cell(me.lastIndex,11)=str(Organindex)
		    //Place the Constraint index
		    me.cell(me.LastIndex,12)=str(i-1)
		  Next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_Volumes
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  if column=1 Then
		    Plan.Structure_Dose(row).Voxel_REs=val(me.Cell(row,column))
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Write_Struc_file
	#tag Event
		Sub Action()
		  Plan.Write_Structure_Files
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_Organ_Target
	#tag Event
		Function HeaderPressed(column as Integer) As Boolean
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  if column=0 and row>-1 and row<= UBound(Plan.Structure_Dose) Then
		    Plan.Structure_Dose(row).Use_Min_Dose =me.CellCheck(row,column)
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  if row>-1 and row<=UBound(Plan.Structure_Dose) Then
		    if column=1 Then
		      Plan.Structure_Dose(row).MinDose=val(me.Cell(row,column))
		    elseif column=2 Then
		      Plan.Structure_Dose(row).Min_Priority=val(me.Cell(row,column))
		    elseif column=3 Then
		      Plan.Structure_Dose(row).Target_Norm_Volume=val(me.Cell(row,column))
		    elseif column=4  Then
		      Plan.Structure_Dose(row).Target_Norm_Dose=val(me.Cell(row,column))
		    end
		  end
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Max_Segments
	#tag Event
		Sub TextChange()
		  plan.MaximumSegments=val(me.Text)
		  Plan.Write_DV_Contraints_String
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox_MaxSegment
	#tag Event
		Sub Action()
		  plan.UseMaxSegement=me.Value
		  plan.Write_DV_Contraints_String
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField_Max_Segpriority
	#tag Event
		Sub TextChange()
		  plan.MaximumSegmentsPriority=val(me.Text)
		  plan.Write_DV_Contraints_String
		  
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
		Name="bb"
		Group="Behavior"
		Type="Boolean"
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
		Name="constraint_index"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
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
		Name="nx"
		Group="Behavior"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="organ_index"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
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
