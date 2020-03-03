#tag Class
Protected Class Class_BEAM_CM_DYNVMLC
	#tag Method, Flags = &h0
		Sub Read(text() as String)
		  //-----------------------------------------------
		  // READIN DYNVMLC CM into variables
		  //
		  //-----------------------------------------------
		  Dim dynvmlc as Class_Beam_cm_DYNVMLC
		  Dim DYN1 as Class_BEAM_CM_DYNVMLC_Leaf_Full
		  Dim DYN2 as Class_BEAM_CM_DYNVMLC_Leaf_Target
		  Dim DYN3 as Class_BEAM_CM_DYNVMLC_Leaf_Iso
		  Dim gg as Class_BEAM_CM_DYNVMLC_Leaf_Group
		  Dim k,i,index,num_slabs,j,m as integer
		  Dim temp as String
		  Dim bottom as Single
		  //-----------------------------------------------
		  
		  // BEAMnrc cm is from DYNVMLC STATIC
		  RMAX_CM=val(NthField((text(0)),",",1))
		  Title_CM=text(1)
		  
		  // Orient 0, for leaves parallel to Y direction
		  // 1 for leaves parallel to X direction
		  Orient_DYNVMLC=val(NthField((text(2)),",",1))
		  
		  // NGROUP_$DYNVMLC = number of groups of adjacent leaves where
		  // all leaves in a group are:
		  // 1. FULL leaves
		  // 2. TARGET/ISOCENTER pairs with TARGET leaf
		  // on the -X (ORIENT=0) or -Y (ORIENT=1) side
		  // NGROUP_$DYNVMLC defaults to 3 if set <=0
		  NGROUP_DYNVMLC=val(NthField((text(2)),",",2))
		  
		  // Step and shoot or Dynamic
		  MODE_DYNVMLC=val(NthField((text(2)),",",3))
		  
		  
		  ZMIN=val(NthField((text(3)),",",1))
		  ZThick=val(NthField((text(4)),",",1))
		  
		  
		  
		  
		  DYN1 =new Class_BEAM_CM_DYNVMLC_Leaf_Full
		  DYN2 =new Class_BEAM_CM_DYNVMLC_Leaf_Target
		  DYN3 =new Class_BEAM_CM_DYNVMLC_Leaf_Iso
		  
		  Full=DYN1
		  Target=DYN2
		  Isocenter=DYN3
		  
		  DYN1.Leafwidths=Trim(text(5))
		  DYN1.LeafWidth=val(NthField(DYN1.Leafwidths,",",1))
		  DYN1.WTongue=val(NthField(DYN1.Leafwidths,",",2))
		  DYN1.Wgroove=val(NthField(DYN1.Leafwidths,",",3))
		  DYN1.WTIP=val(NthField(DYN1.Leafwidths,",",4))
		  DYN1.WrailTop=val(NthField(DYN1.Leafwidths,",",5))
		  DYN1.Wrailbot=val(NthField(DYN1.Leafwidths,",",6))
		  DYN1.ZTip=val(NthField(DYN1.Leafwidths,",",7))
		  DYN1.Zleaf=val(NthField(DYN1.Leafwidths,",",8))
		  DYN1.ZTongue=val(NthField(DYN1.Leafwidths,",",9))
		  DYN1.ZGroove=val(NthField(DYN1.Leafwidths,",",10))
		  DYN1.Zholetop=val(NthField(DYN1.Leafwidths,",",11))
		  DYN1.ZHoleBot=val(NthField(DYN1.Leafwidths,",",12))
		  DYN1.Holepos=val(NthField(DYN1.Leafwidths,",",13))
		  DYN1.Zrailtop=val(NthField(DYN1.Leafwidths,",",14))
		  DYN1.Zrailbot=val(NthField(DYN1.Leafwidths,",",15))
		  
		  
		  DYN2.Leafwidths=Trim(text(6))
		  DYN2.LeafWidth=val(NthField(DYN2.Leafwidths,",",1))
		  DYN2.WTongue=val(NthField(DYN2.Leafwidths,",",2))
		  DYN2.Wgroove=val(NthField(DYN2.Leafwidths,",",3))
		  DYN2.WTIP=val(NthField(DYN2.Leafwidths,",",4))
		  DYN2.WrailTop=val(NthField(DYN2.Leafwidths,",",5))
		  DYN2.Wrailbot=val(NthField(DYN2.Leafwidths,",",6))
		  
		  DYN2.Zrailtop=val(NthField(DYN2.Leafwidths,",",7))
		  DYN2.Zrailbot=val(NthField(DYN2.Leafwidths,",",8))
		  
		  
		  DYN2.Zholetop=val(NthField(DYN2.Leafwidths,",",9))
		  DYN2.ZHoleBot=val(NthField(DYN2.Leafwidths,",",10))
		  DYN2.Holepos=val(NthField(DYN2.Leafwidths,",",11))
		  
		  DYN2.ZTongue=val(NthField(DYN2.Leafwidths,",",12))
		  DYN2.ZGroove=val(NthField(DYN2.Leafwidths,",",13))
		  DYN2.Zleaf=val(NthField(DYN2.Leafwidths,",",14))
		  DYN2.ZTip=val(NthField(DYN2.Leafwidths,",",15))
		  
		  
		  DYN3.Leafwidths=Trim(text(7))
		  DYN3.LeafWidth=val(NthField(DYN3.Leafwidths,",",1))
		  DYN3.WTongue=val(NthField(DYN3.Leafwidths,",",2))
		  DYN3.Wgroove=val(NthField(DYN3.Leafwidths,",",3))
		  DYN3.WTIP=val(NthField(DYN3.Leafwidths,",",4))
		  DYN3.WrailTop=val(NthField(DYN3.Leafwidths,",",5))
		  DYN3.Wrailbot=val(NthField(DYN3.Leafwidths,",",6))
		  DYN3.ZTip=val(NthField(DYN3.Leafwidths,",",7))
		  DYN3.Zleaf=val(NthField(DYN3.Leafwidths,",",8))
		  DYN3.ZTongue=val(NthField(DYN3.Leafwidths,",",9))
		  DYN3.ZGroove=val(NthField(DYN3.Leafwidths,",",10))
		  DYN3.Zholetop=val(NthField(DYN3.Leafwidths,",",11))
		  DYN3.ZHoleBot=val(NthField(DYN3.Leafwidths,",",12))
		  DYN3.HolePos_Iso=val(NthField(DYN3.Leafwidths,",",13))
		  DYN3.Zrailtop=val(NthField(DYN3.Leafwidths,",",14))
		  DYN3.Zrailbot=val(NthField(DYN3.Leafwidths,",",15))
		  
		  for k=0 to NGROUP_DYNVMLC-1
		    gg=new Class_BEAM_CM_DYNVMLC_Leaf_Group
		    gg.Numleaves=val(NthField(text(8+k),",",1))
		    gg.Leaftype=val(NthField(text(8+k),",",2))
		    Groups.Append gg
		  next
		  
		  
		  Numleaves=0
		  for k=0 to NGROUP_DYNVMLC-1
		    Numleaves=Numleaves+Groups(k).Numleaves
		  next
		  
		  ReDim Fields(0)
		  Fields(0)=new Class_BEAM_CM_DYNVMLC_Fields
		  ReDim Fields(0).leaves(Numleaves-1)
		  for k=1 to Numleaves
		    Fields(0).leaves(k-1)=new Class_BEAM_CM_DYNVMLC_Leaf_Opening
		  next
		  
		  
		  index=8+NGROUP_DYNVMLC
		  temp=text(index)
		  
		  Start=val(NthField((text(index)),",",1))
		  Leafgap=val(NthField((text(index+1)),",",1))
		  Endtype=val(NthField((text(index+2)),",",1))
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
		  Dim mlcts as TextInputStream
		  Dim one_line,treatment_type,num_fields,num_leaves,mlc_read,allfield(-1),temp,whole,mlc_string  as String
		  Dim i,j  as Integer
		  Dim ts as TextOutputStream
		  Dim test as Boolean
		  Dim mlc_b as Boolean
		  Dim mlc_file as FolderItem
		  //-------------------------------------------------------------------------------------------------
		  
		  // Write MLC file
		  mlc_file=gRTOG.Plan(Plan_Index).Path
		  mlc_file=mlc_file.Child(MLC_File_Name)
		  if mlc_file.Exists Then
		    mlc_file.Delete
		  end
		  
		  // Create MLC file for multi-MLC
		  if MODE_DYNVMLC=1 or MODE_DYNVMLC=2  Then
		    ts=mlc_file.CreateTextFile
		    if ts<> nil Then
		      if MODE_DYNVMLC=2 Then
		        whole="Step and Shoot MLC"+EndOfLine.UNIX
		      Else 
		        whole="Dynamic MLC"+EndOfLine.UNIX
		      end
		      whole=whole+Format(UBound(Fields)+1,"#")+EndOfLine.UNIX
		      
		      ts.Write whole
		      
		      for i =0 to UBound(Fields)
		        // Write Index of field
		        whole=Format(Fields(i).Index,"#.######")+EndOfLine.UNIX
		        mlc_string=""
		        for j=0 to UBound(Fields(i).leaves)
		          mlc_string=mlc_string+Format(Fields(i).leaves(j).neg,"-#.####")+", "+Format(Fields(i).leaves(j).pos,"-#.####")+", 1"+EndOfLine.UNIX
		        next
		        whole=whole+mlc_string
		        ts.Write whole
		      next
		      ts.Close
		    else
		      gBEAM.egs_msg.append "Error ! could not creat MLC file : "+MLC_File.Name
		      
		    end
		  end
		  
		  //-------------------------------------------------------------------------------------------------
		  
		  // Now rewite CM with new opening
		  ReDim cm.text(-1)
		  
		  cm.text.Append  Format(RMAX_CM,"-0.0###")+", RMAX"
		  cm.text.Append Title_CM
		  CM.text.Append Format(Orient_DYNVMLC,"-#")+", "+Format(NGROUP_DYNVMLC,"-#")+", "+Format(MODE_DYNVMLC,"-#")+", ORIENT, NGROUP, MODE"
		  CM.text.Append Format(ZMIN,"-0.0###")+", ZMIN"
		  CM.text.Append Format(ZThick,"-0.0###")+", ZTHICK"
		  
		  // Full leaves
		  CM.text.Append Format(Full.LeafWidth,"-0.0####") +", "+ Format(Full.WTongue,"-0.0####") +", "+ Format(Full.Wgroove,"-0.0####")_
		  +", "+ Format(Full.WTIP,"-0.0####") +", "+ Format(Full.WrailTop,"-0.0####") +", "+ Format(Full.Wrailbot,"-0.0####") _
		  +", "+ Format(Full.ZTip,"-0.0#####") +", "+ Format(Full.Zleaf,"-0.0#####") +", "+ Format(Full.ZTongue,"-0.0#####") _
		  +", "+ Format(Full.ZGroove,"-0.0#####") +", "+ Format(Full.Zholetop,"-0.0#####") +", "+ Format(Full.ZHoleBot,"-0.0#####")_
		  +", "+ Format(Full.Holepos,"-0.0####") +", "+ Format(Full.Zrailtop,"-0.0####") +", "+ Format(Full.Zrailbot,"-0.0####")
		  
		  
		  // For Target Leaves
		  CM.text.Append Format(Target.LeafWidth,"-0.0####") +", "+ Format(Target.WTongue,"-0.0####") +", "+ Format(Target.Wgroove,"-0.0####") +", "+ _
		  Format(Target.WTIP,"-0.0####") +", "+ Format(Target.WrailTop,"-0.0####")+", "+ Format(Target.Wrailbot,"-0.0####") +", "+ _
		  Format(Target.Zrailtop,"-0.0####") +", "+ Format(Target.Zrailbot,"-0.0####") +", "+ Format(Target.ZHoleBot,"-0.0####") +", "+ _
		  Format(Target.ZHoleBot,"-0.0####") +", "+ Format(Target.Holepos,"-0.0####") +", "+ Format(Target.ZTongue,"-0.0####") +", "+ _
		  Format(Target.ZGroove,"-0.0####") +", "+ Format(Target.Zleaf,"-0.0####") +", "+ Format(Target.ZTip,"-0.0####")
		  
		  
		  CM.text.Append Format(Isocenter.LeafWidth,"-0.0####") +", "+ Format(Isocenter.WTongue,"-0.0####") +", "+ Format(Isocenter.Wgroove,"-0.0####") +", "+ _
		  Format(Isocenter.WTIP,"-0.0####") +", "+ Format(Isocenter.WrailTop,"-0.0####") +", "+ Format(Isocenter.Wrailbot,"-0.0####") +", "+_
		  Format(Isocenter.ZTip,"-0.0###") +", "+ Format(Isocenter.Zleaf,"-0.0###") +", "+ Format(Isocenter.ZTongue,"-0.0####")+", "+ _
		  Format(Isocenter.ZGroove,"-0.0####")+", "+ Format(Isocenter.Zholetop,"-0.0####")+", "+ Format(Isocenter.ZHoleBot,"-0.0####")+", "+ _ 
		  Format(Isocenter.HolePos_Iso,"-0.0####")+", "+ Format(Isocenter.Zrailtop,"-0.0####")+", "+ Format(Isocenter.Zrailbot,"-0.0####")
		  
		  for i=0 to UBound(Groups)
		    cm.text.Append Format(Groups(i).Numleaves,"#")+", "+Format(Groups(i).Leaftype,"#")
		  next
		  
		  CM.text.Append Format(Start,"-0.0####")+", START"
		  CM.text.Append Format(Leafgap,"-0.0####")+", LEAFGAP"
		  CM.text.Append Format(Endtype,"#")+", ENDTYPE"
		  CM.text.Append Format(zfocus_ends,"-0.0####")+", ZFOCUS or RADIUS of leaf ends"
		  CM.text.Append Format(zfocus_sides,"-0.0####")+", ZFOCUS of leaf sides"
		  
		  
		  
		  if MODE_DYNVMLC=0 Then // For static field
		    for i=0 to UBound(Fields(0).leaves) 
		      cm.text.Append Format(cm.DYNVMLC.Fields(0).leaves(i).Neg,"-#.###")+", "+Format(Fields(0).leaves(i).Pos,"-#.###")+", 1"
		    next
		  else// For Dynamic field
		    cm.text.Append MLC_File_Path
		  end
		  
		  // Append ECUT, PCUT and Materials
		  cm.text.Append Format(cm.DYNVMLC.Ecut_Air,"#.###")+", "+Format(cm.DYNVMLC.Pcut_air,"#.###")+", "+Format(cm.DYNVMLC.Dose_Zone_air,"-#")+", "+Format(cm.DYNVMLC.IRegion_to_bit_air,"#")
		  cm.text.Append cm.DYNVMLC.Med_In_Air
		  
		  cm.text.Append Format(cm.DYNVMLC.Ecut_Leaves,"#.###")+", "+Format(cm.DYNVMLC.Pcut_Leaves,"#.###")+", "+Format(cm.DYNVMLC.Dose_Zone_Leaves,"-#")+", "+Format(cm.DYNVMLC.IRegion_to_bit_Leaves,"#")+", "+Format(cm.DYNVMLC.IGNOREGAPS,"#")
		  cm.text.Append cm.DYNVMLC.Med_In_Leaves
		  
		  cm.text.Append Format(cm.DYNVMLC.Ecut_Holes,"#.###")+", "+Format(cm.DYNVMLC.Pcut_holes,"#.###")+", "+Format(cm.DYNVMLC.Dose_Zone_holes,"-#")+", "+Format(cm.DYNVMLC.IRegion_to_bit_holes,"#")
		  cm.text.Append cm.DYNVMLC.Med_In_holes
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
