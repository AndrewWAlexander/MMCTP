#tag Class
Protected Class Class_BEAM_CM_DYNVMLC
	#tag Method, Flags = &h0
		Sub Read(text() as String)
		  //-----------------------------------------------
		  // READIN DYNVMLC CM into variables
		  //
		  //-----------------------------------------------
		  Var dynvmlc As Class_Beam_cm_DYNVMLC
		  Var DYN1 As Class_BEAM_CM_DYNVMLC_Leaf_Full
		  Var DYN2 As Class_BEAM_CM_DYNVMLC_Leaf_Target
		  Var DYN3 As Class_BEAM_CM_DYNVMLC_Leaf_Iso
		  Var gg As Class_BEAM_CM_DYNVMLC_Leaf_Group
		  Var k,i,index,num_slabs,j,m As Integer
		  Var temp As String
		  Var bottom As Single
		  //-----------------------------------------------
		  
		  // BEAMnrc cm is from DYNVMLC STATIC
		  RMAX_CM=Val(NthField((Text(0)),",",1))
		  Title_CM=Text(1)
		  
		  // Orient 0, for leaves parallel to Y direction
		  // 1 for leaves parallel to X direction
		  Orient_DYNVMLC=Val(NthField((Text(2)),",",1))
		  
		  // NGROUP_$DYNVMLC = number of groups of adjacent leaves where
		  // all leaves in a group are:
		  // 1. FULL leaves
		  // 2. TARGET/ISOCENTER pairs with TARGET leaf
		  // on the -X (ORIENT=0) or -Y (ORIENT=1) side
		  // NGROUP_$DYNVMLC defaults to 3 if set <=0
		  NGROUP_DYNVMLC=Val(NthField((Text(2)),",",2))
		  
		  // Step and shoot or Dynamic
		  MODE_DYNVMLC=Val(NthField((Text(2)),",",3))
		  
		  
		  ZMIN=Val(NthField((Text(3)),",",1))
		  ZThick=Val(NthField((Text(4)),",",1))
		  
		  
		  
		  
		  DYN1 =New Class_BEAM_CM_DYNVMLC_Leaf_Full
		  DYN2 =New Class_BEAM_CM_DYNVMLC_Leaf_Target
		  DYN3 =New Class_BEAM_CM_DYNVMLC_Leaf_Iso
		  
		  Full=DYN1
		  Target=DYN2
		  Isocenter=DYN3
		  
		  DYN1.Leafwidths=Trim(Text(5))
		  DYN1.LeafWidth=Val(NthField(DYN1.Leafwidths,",",1))
		  DYN1.WTongue=Val(NthField(DYN1.Leafwidths,",",2))
		  DYN1.Wgroove=Val(NthField(DYN1.Leafwidths,",",3))
		  DYN1.WTIP=Val(NthField(DYN1.Leafwidths,",",4))
		  DYN1.WrailTop=Val(NthField(DYN1.Leafwidths,",",5))
		  DYN1.Wrailbot=Val(NthField(DYN1.Leafwidths,",",6))
		  DYN1.ZTip=Val(NthField(DYN1.Leafwidths,",",7))
		  DYN1.Zleaf=Val(NthField(DYN1.Leafwidths,",",8))
		  DYN1.ZTongue=Val(NthField(DYN1.Leafwidths,",",9))
		  DYN1.ZGroove=Val(NthField(DYN1.Leafwidths,",",10))
		  DYN1.Zholetop=Val(NthField(DYN1.Leafwidths,",",11))
		  DYN1.ZHoleBot=Val(NthField(DYN1.Leafwidths,",",12))
		  DYN1.Holepos=Val(NthField(DYN1.Leafwidths,",",13))
		  DYN1.Zrailtop=Val(NthField(DYN1.Leafwidths,",",14))
		  DYN1.Zrailbot=Val(NthField(DYN1.Leafwidths,",",15))
		  
		  
		  DYN2.Leafwidths=Trim(Text(6))
		  DYN2.LeafWidth=Val(NthField(DYN2.Leafwidths,",",1))
		  DYN2.WTongue=Val(NthField(DYN2.Leafwidths,",",2))
		  DYN2.Wgroove=Val(NthField(DYN2.Leafwidths,",",3))
		  DYN2.WTIP=Val(NthField(DYN2.Leafwidths,",",4))
		  DYN2.WrailTop=Val(NthField(DYN2.Leafwidths,",",5))
		  DYN2.Wrailbot=Val(NthField(DYN2.Leafwidths,",",6))
		  
		  DYN2.Zrailtop=Val(NthField(DYN2.Leafwidths,",",7))
		  DYN2.Zrailbot=Val(NthField(DYN2.Leafwidths,",",8))
		  
		  
		  DYN2.Zholetop=Val(NthField(DYN2.Leafwidths,",",9))
		  DYN2.ZHoleBot=Val(NthField(DYN2.Leafwidths,",",10))
		  DYN2.Holepos=Val(NthField(DYN2.Leafwidths,",",11))
		  
		  DYN2.ZTongue=Val(NthField(DYN2.Leafwidths,",",12))
		  DYN2.ZGroove=Val(NthField(DYN2.Leafwidths,",",13))
		  DYN2.Zleaf=Val(NthField(DYN2.Leafwidths,",",14))
		  DYN2.ZTip=Val(NthField(DYN2.Leafwidths,",",15))
		  
		  
		  DYN3.Leafwidths=Trim(Text(7))
		  DYN3.LeafWidth=Val(NthField(DYN3.Leafwidths,",",1))
		  DYN3.WTongue=Val(NthField(DYN3.Leafwidths,",",2))
		  DYN3.Wgroove=Val(NthField(DYN3.Leafwidths,",",3))
		  DYN3.WTIP=Val(NthField(DYN3.Leafwidths,",",4))
		  DYN3.WrailTop=Val(NthField(DYN3.Leafwidths,",",5))
		  DYN3.Wrailbot=Val(NthField(DYN3.Leafwidths,",",6))
		  DYN3.ZTip=Val(NthField(DYN3.Leafwidths,",",7))
		  DYN3.Zleaf=Val(NthField(DYN3.Leafwidths,",",8))
		  DYN3.ZTongue=Val(NthField(DYN3.Leafwidths,",",9))
		  DYN3.ZGroove=Val(NthField(DYN3.Leafwidths,",",10))
		  DYN3.Zholetop=Val(NthField(DYN3.Leafwidths,",",11))
		  DYN3.ZHoleBot=Val(NthField(DYN3.Leafwidths,",",12))
		  DYN3.HolePos_Iso=Val(NthField(DYN3.Leafwidths,",",13))
		  DYN3.Zrailtop=Val(NthField(DYN3.Leafwidths,",",14))
		  DYN3.Zrailbot=Val(NthField(DYN3.Leafwidths,",",15))
		  
		  For k=0 To NGROUP_DYNVMLC-1
		    
		    gg=New Class_BEAM_CM_DYNVMLC_Leaf_Group
		    gg.Numleaves=Val(NthField(Text(8+k),",",1))
		    gg.Leaftype=Val(NthField(Text(8+k),",",2))
		    Groups.Append gg
		    
		  Next
		  
		  
		  Numleaves=0
		  For k = 0 To NGROUP_DYNVMLC-1
		    
		    Numleaves=Numleaves+Groups(k).Numleaves
		    
		  Next
		  
		  Redim Fields(0)
		  Fields(0)=New Class_BEAM_CM_DYNVMLC_Fields
		  Redim Fields(0).leaves(Numleaves-1)
		  
		  For k=1 To Numleaves
		    
		    Fields(0).leaves(k-1)=New Class_BEAM_CM_DYNVMLC_Leaf_Opening
		    
		  Next
		  
		  
		  index=8+NGROUP_DYNVMLC
		  temp=Text(index)
		  
		  Start=Val(NthField((Text(index)),",",1))
		  Leafgap=Val(NthField((Text(index+1)),",",1))
		  Endtype=Val(NthField((Text(index+2)),",",1))
		  zfocus_ends=val(NthField((text(index+3)),",",1))
		  Leafradius=val(NthField((text(index+3)),",",1))
		  zfocus_sides=val(NthField((text(index+4)),",",1))
		  
		  index=index+5
		  
		  k=0
		  // Now Determine is this is a dynamic, or single field
		  if MODE_DYNVMLC=0 Then // Single field
		    //Loop for each leaf
		    temp=text(index)
		    //if UBound(text)>=index+Numleaves-1 Then
		    While k<Numleaves
		      temp=text(index)
		      Fields(0).leaves(k).Neg=val(NthField(temp,",",1))
		      Fields(0).leaves(k).Pos=val(NthField(temp,",",2))
		      Fields(0).leaves(k).Num=val(NthField(temp,",",3))
		      j=val(NthField(temp,",",3))
		      
		      if j>1 Then
		        m=1
		        While m<j
		          Fields(0).leaves(k+m).Neg=Fields(0).leaves(k).Neg
		          Fields(0).leaves(k+m).Pos=Fields(0).leaves(k).Pos
		          Fields(0).leaves(k+m).Num=1
		          m=m+1
		        Wend
		        
		      end
		      
		      k=k+Fields(0).leaves(k).Num
		      
		      index=index+1
		    Wend
		    //end
		  else // Steep and Shoot mode or Dynamic mode
		    MLC_File_Path=text(index)
		    index=index+1
		  end
		  
		  temp=text(index)
		  if UBound(text)>=(index+5) Then
		    Ecut_Air =val(NthField(text(index),",",1))
		    Pcut_air=val(NthField(text(index),",",2))
		    Dose_Zone_air=val(NthField(text(index),",",3))
		    IRegion_to_bit_air=val(NthField(text(index),",",4))
		    Med_In_Air=text(index+1)
		    
		    
		    Ecut_Leaves =val(NthField(text(index+2),",",1))
		    Pcut_Leaves=val(NthField(text(index+2),",",2))
		    Dose_Zone_Leaves=val(NthField(text(index+2),",",3))
		    IRegion_to_bit_Leaves=val(NthField(text(index+2),",",4))
		    IGNOREGAPS=val(NthField(text(index+2),",",5))
		    Med_In_Leaves=text(index+3)
		    
		    
		    Ecut_Holes =val(NthField(text(index+4),",",1))
		    Pcut_holes=val(NthField(text(index+4),",",2))
		    Dose_Zone_holes=val(NthField(text(index+4),",",3))
		    IRegion_to_bit_holes=val(NthField(text(index+4),",",4))
		    Med_In_holes=text(index+5)
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_String(cm as Class_BEAM_Inputfile_CMs)
		  //-------------------------------------------------------------------------------------------------
		  // Write the BEAMnrc DYNVMLC CM to text
		  //
		  // Update April 2011
		  // Textfile is writin per line to speed up process
		  //-------------------------------------------------------------------------------------------------
		  Var mlcts As TextInputStream
		  Var one_line,treatment_type,num_fields,num_leaves,mlc_read,allfield(-1),temp,whole,mlc_string  As String
		  Var ts As TextOutputStream
		  Var test As Boolean
		  Var mlc_b As Boolean
		  Var mlc_file As FolderItem
		  //-------------------------------------------------------------------------------------------------
		  
		  // Write MLC file
		  mlc_file=gRTOG.Plan(Plan_Index).Path
		  mlc_file=mlc_file.Child(MLC_File_Name)
		  
		  If mlc_file.Exists Then
		    
		    mlc_file.Delete
		    
		  End
		  
		  // Create MLC file for multi-MLC
		  If MODE_DYNVMLC=1 Or MODE_DYNVMLC=2  Then
		    
		    ts=mlc_file.CreateTextFile
		    
		    If ts<> Nil Then
		      
		      If MODE_DYNVMLC=2 Then
		        
		        whole="Step and Shoot MLC"+EndOfLine.UNIX
		        
		      Else 
		        
		        whole="Dynamic MLC"+EndOfLine.UNIX
		        
		      End
		      
		      whole=whole+Format(UBound(Fields)+1,"#")+EndOfLine.UNIX
		      
		      ts.Write whole
		      
		      For i As  Integer = 0 To UBound(Fields)
		        // Write Index of field
		        whole=Format(Fields(i).Index,"#.######")+EndOfLine.UNIX
		        mlc_string=""
		        
		        For j As Integer = 0 To UBound(Fields(i).leaves)
		          
		          mlc_string=mlc_string+Format(Fields(i).leaves(j).neg,"-#.####")+", "+Format(Fields(i).leaves(j).pos,"-#.####")+", 1"+EndOfLine.UNIX
		          
		        Next
		        
		        whole=whole+mlc_string
		        ts.Write whole
		        
		      Next
		      
		      ts.Close
		      
		    Else
		      
		      gBEAM.egs_msg.append "Error ! could not creat MLC file : "+MLC_File.Name
		      
		    End
		  End
		  
		  //-------------------------------------------------------------------------------------------------
		  
		  // Now rewite CM with new opening
		  Redim cm.Text(-1)
		  
		  cm.Text.Append  Format(RMAX_CM,"-0.0###")+", RMAX"
		  cm.Text.Append Title_CM
		  CM.Text.Append Format(Orient_DYNVMLC,"-#")+", "+Format(NGROUP_DYNVMLC,"-#")+", "+Format(MODE_DYNVMLC,"-#")+", ORIENT, NGROUP, MODE"
		  CM.Text.Append Format(ZMIN,"-0.0###")+", ZMIN"
		  CM.Text.Append Format(ZThick,"-0.0###")+", ZTHICK"
		  
		  // Full leaves
		  CM.Text.Append Format(Full.LeafWidth,"-0.0####") +", "+ Format(Full.WTongue,"-0.0####") +", "+ Format(Full.Wgroove,"-0.0####")_
		  +", "+ Format(Full.WTIP,"-0.0####") +", "+ Format(Full.WrailTop,"-0.0####") +", "+ Format(Full.Wrailbot,"-0.0####") _
		  +", "+ Format(Full.ZTip,"-0.0#####") +", "+ Format(Full.Zleaf,"-0.0#####") +", "+ Format(Full.ZTongue,"-0.0#####") _
		  +", "+ Format(Full.ZGroove,"-0.0#####") +", "+ Format(Full.Zholetop,"-0.0#####") +", "+ Format(Full.ZHoleBot,"-0.0#####")_
		  +", "+ Format(Full.Holepos,"-0.0####") +", "+ Format(Full.Zrailtop,"-0.0####") +", "+ Format(Full.Zrailbot,"-0.0####")
		  
		  
		  // For Target Leaves
		  CM.Text.Append Format(Target.LeafWidth,"-0.0####") +", "+ Format(Target.WTongue,"-0.0####") +", "+ Format(Target.Wgroove,"-0.0####") +", "+ _
		  Format(Target.WTIP,"-0.0####") +", "+ Format(Target.WrailTop,"-0.0####")+", "+ Format(Target.Wrailbot,"-0.0####") +", "+ _
		  Format(Target.Zrailtop,"-0.0####") +", "+ Format(Target.Zrailbot,"-0.0####") +", "+ Format(Target.ZHoleBot,"-0.0####") +", "+ _
		  Format(Target.ZHoleBot,"-0.0####") +", "+ Format(Target.Holepos,"-0.0####") +", "+ Format(Target.ZTongue,"-0.0####") +", "+ _
		  Format(Target.ZGroove,"-0.0####") +", "+ Format(Target.Zleaf,"-0.0####") +", "+ Format(Target.ZTip,"-0.0####")
		  
		  
		  CM.Text.Append Format(Isocenter.LeafWidth,"-0.0####") +", "+ Format(Isocenter.WTongue,"-0.0####") +", "+ Format(Isocenter.Wgroove,"-0.0####") +", "+ _
		  Format(Isocenter.WTIP,"-0.0####") +", "+ Format(Isocenter.WrailTop,"-0.0####") +", "+ Format(Isocenter.Wrailbot,"-0.0####") +", "+_
		  Format(Isocenter.ZTip,"-0.0###") +", "+ Format(Isocenter.Zleaf,"-0.0###") +", "+ Format(Isocenter.ZTongue,"-0.0####")+", "+ _
		  Format(Isocenter.ZGroove,"-0.0####")+", "+ Format(Isocenter.Zholetop,"-0.0####")+", "+ Format(Isocenter.ZHoleBot,"-0.0####")+", "+ _ 
		  Format(Isocenter.HolePos_Iso,"-0.0####")+", "+ Format(Isocenter.Zrailtop,"-0.0####")+", "+ Format(Isocenter.Zrailbot,"-0.0####")
		  
		  For i as Integer = 0 To UBound(Groups)
		    
		    cm.Text.Append Format(Groups(i).Numleaves,"#")+", "+Format(Groups(i).Leaftype,"#")
		    
		  Next
		  
		  CM.Text.Append Format(Start,"-0.0####")+", START"
		  CM.Text.Append Format(Leafgap,"-0.0####")+", LEAFGAP"
		  CM.Text.Append Format(Endtype,"#")+", ENDTYPE"
		  CM.Text.Append Format(zfocus_ends,"-0.0####")+", ZFOCUS or RADIUS of leaf ends"
		  CM.Text.Append Format(zfocus_sides,"-0.0####")+", ZFOCUS of leaf sides"
		  
		  
		  
		  If MODE_DYNVMLC=0 Then // For static field''
		    
		    For i As Integer = 0 To UBound(Fields(0).leaves) 
		      
		      cm.Text.Append Format(cm.DYNVMLC.Fields(0).leaves(i).Neg,"-#.###")+", "+Format(Fields(0).leaves(i).Pos,"-#.###")+", 1"
		      
		    Next
		  Else// For Dynamic field
		    
		    cm.Text.Append MLC_File_Path
		    
		  End
		  
		  // Append ECUT, PCUT and Materials
		  cm.Text.Append Format(cm.DYNVMLC.Ecut_Air,"#.###")+", "+Format(cm.DYNVMLC.Pcut_air,"#.###")+", "+Format(cm.DYNVMLC.Dose_Zone_air,"-#")+", "+Format(cm.DYNVMLC.IRegion_to_bit_air,"#")
		  cm.Text.Append cm.DYNVMLC.Med_In_Air
		  
		  cm.Text.Append Format(cm.DYNVMLC.Ecut_Leaves,"#.###")+", "+Format(cm.DYNVMLC.Pcut_Leaves,"#.###")+", "+Format(cm.DYNVMLC.Dose_Zone_Leaves,"-#")+", "+Format(cm.DYNVMLC.IRegion_to_bit_Leaves,"#")+", "+Format(cm.DYNVMLC.IGNOREGAPS,"#")
		  cm.Text.Append cm.DYNVMLC.Med_In_Leaves
		  
		  cm.Text.Append Format(cm.DYNVMLC.Ecut_Holes,"#.###")+", "+Format(cm.DYNVMLC.Pcut_holes,"#.###")+", "+Format(cm.DYNVMLC.Dose_Zone_holes,"-#")+", "+Format(cm.DYNVMLC.IRegion_to_bit_holes,"#")
		  cm.Text.Append cm.DYNVMLC.Med_In_holes
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Dose_Zone_air As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Zone_holes As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Zone_Leaves As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Ecut_Air As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Ecut_Holes As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Ecut_Leaves As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Endtype As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Fields(-1) As Class_BEAM_CM_DYNVMLC_Fields
	#tag EndProperty

	#tag Property, Flags = &h0
		Full As Class_BEAM_CM_DYNVMLC_Leaf_Full
	#tag EndProperty

	#tag Property, Flags = &h0
		Groups(-1) As Class_BEAM_CM_DYNVMLC_Leaf_Group
	#tag EndProperty

	#tag Property, Flags = &h0
		IGNOREGAPS As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_to_bit_air As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_to_bit_holes As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_to_bit_Leaves As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Isocenter As Class_BEAM_CM_DYNVMLC_Leaf_Iso
	#tag EndProperty

	#tag Property, Flags = &h0
		Leafgap As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Leafradius As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		LeafWidth As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Med_In_Air As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Med_In_holes As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Med_In_Leaves As String
	#tag EndProperty

	#tag Property, Flags = &h0
		MLC_File_Name As String
	#tag EndProperty

	#tag Property, Flags = &h0
		MLC_File_Path As String
	#tag EndProperty

	#tag Property, Flags = &h0
		MODE_DYNVMLC As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Neg As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		NGROUP_DYNVMLC As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Num As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Numleaves As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Orient_DYNVMLC As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Pcut_air As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Pcut_holes As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Pcut_Leaves As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Pos As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Rest As string
	#tag EndProperty

	#tag Property, Flags = &h0
		RMAX_CM As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Start As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Target As Class_BEAM_CM_DYNVMLC_Leaf_Target
	#tag EndProperty

	#tag Property, Flags = &h0
		Title_CM As string
	#tag EndProperty

	#tag Property, Flags = &h0
		zfocus_ends As single
	#tag EndProperty

	#tag Property, Flags = &h0
		zfocus_sides As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ZMIN As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ZThick As single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Dose_Zone_air"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Zone_holes"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Zone_Leaves"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Ecut_Air"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Ecut_Holes"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Ecut_Leaves"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Endtype"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IGNOREGAPS"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRegion_to_bit_air"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRegion_to_bit_holes"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRegion_to_bit_Leaves"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Leafgap"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Leafradius"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LeafWidth"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Med_In_Air"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Med_In_holes"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Med_In_Leaves"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MLC_File_Name"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MLC_File_Path"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MODE_DYNVMLC"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
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
			Name="Neg"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NGROUP_DYNVMLC"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Num"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Numleaves"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Orient_DYNVMLC"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pcut_air"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pcut_holes"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pcut_Leaves"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pos"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Rest"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RMAX_CM"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Start"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
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
			Name="Title_CM"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="zfocus_ends"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="zfocus_sides"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZMIN"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZThick"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
