#tag Class
Protected Class Class_BEAM_CM_TOMOMLC
	#tag Method, Flags = &h0
		Sub Read_CM(Text() as String)
		  //-----------------------------------------------
		  // READIN TOMO CM into variables
		  //
		  //-----------------------------------------------
		  Dim ff as Class_BEAM_CM_DYNVMLC_Leaf_Opening
		  Dim k,i,num_slabs as integer
		  Dim temp as String
		  Dim bottom as Single
		  //-----------------------------------------------
		  
		  
		  
		  if UBound(text)>=5 Then
		    RMAX_CM=val(NthField((text(0)),",",1))
		    text.Remove 0
		    Title_CM=Trim(text(0))
		    text.Remove 0
		    // Orient 0, for leaves parallel to Y direction
		    // Orient 1, for leaves parallel to X direction
		    Orient_TOMOMLC=val(NthField((text(0)),",",1))
		    NGROUP_TOMOMLC=val(NthField((text(0)),",",2))
		    MODE_TOMOMLC=val(NthField((text(0)),",",3))
		    text.Remove 0
		    ZMIN=val(NthField((text(0)),",",1))
		    text.Remove 0
		    ZThick=val(NthField((text(0)),",",1))
		    text.Remove 0
		  end
		  
		  
		  ReDim Num_Leaf_TOMOMLC(NGROUP_TOMOMLC-1)
		  ReDim LeafWidth_TOMOMLC(NGROUP_TOMOMLC-1)
		  
		  
		  for i=1 to NGROUP_TOMOMLC
		    if UBound(text)<0 Then
		      Return
		    end
		    Num_Leaf_TOMOMLC(i-1)=val(NthField((text(0)),",",1))
		    LeafWidth_TOMOMLC(i-1)=val(NthField((text(0)),",",2))
		    text.Remove 0
		    Numleaves = Numleaves + Num_leaf_TOMOMLC(i-1)
		  next
		  
		  CLOSED_NEG_ODD=val(NthField((text(0)),",",1))
		  CLOSED_POS_ODD=val(NthField((text(0)),",",2))
		  text.Remove 0
		  OPEN_NEG_ODD=val(NthField((text(0)),",",1))
		  OPEN_POS_ODD=val(NthField((text(0)),",",2))
		  text.Remove 0
		  CLOSED_NEG_EVEN=val(NthField((text(0)),",",1))
		  CLOSED_POS_EVEN=val(NthField((text(0)),",",2))
		  text.Remove 0
		  OPEN_NEG_EVEN=val(NthField((text(0)),",",1))
		  OPEN_POS_EVEN=val(NthField((text(0)),",",2))
		  text.Remove 0
		  
		  Start=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  
		  wscrew=val(NthField((text(0)),",",1))
		  hscrew=val(NthField((text(0)),",",2))
		  text.Remove 0
		  
		  wtongue=val(NthField((text(0)),",",1))
		  htongue=val(NthField((text(0)),",",2))
		  ztongue=val(NthField((text(0)),",",3))
		  text.Remove 0
		  
		  wgroove=val(NthField((text(0)),",",1))
		  hgroove=val(NthField((text(0)),",",2))
		  zgroove=val(NthField((text(0)),",",3))
		  text.Remove 0
		  
		  Leafgap=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  Endtype=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  //ENDTYPE_$VARMLC (I5) : The type of leaf end :
		  //0 -- rounded leaf end and
		  //1 -- focused divergent leaf end.
		  
		  if Endtype=0 Then
		    Leafradius=val(NthField((text(0)),",",1))
		  else
		    zfocus(0)=val(NthField((text(0)),",",1))
		  end
		  text.Remove 0
		  
		  zfocus(1)=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  if MODE_TOMOMLC=1 Then
		    MLC_File_Path=Trim(text(0))
		    text.Remove 0
		    
		  else 
		    Redim Fields(0)
		    
		    Fields(0) = new Class_BEAM_CM_DYNVMLC_Fields
		    k=0
		    //Loop for each leaf
		    While k<Numleaves
		      ff=new Class_BEAM_CM_DYNVMLC_Leaf_Opening
		      if UBound(text)=-1 Then
		        Exit
		      end
		      temp=text(0)
		      text.Remove 0
		      Fields(0).leaves.Append ff
		      ff.Neg=val(NthField(temp,",",1))
		      ff.Pos=val(NthField(temp,",",2))
		      ff.Num=val(NthField(temp,",",3))
		      k=k+ff.Num
		      if ff.Num<=0 Then
		        Exit
		      end
		    Wend
		    
		  end
		  
		  
		  if UBound(text)>=3 Then
		    temp=text(0)
		    text.Remove 0
		    Ecut_Air =val(NthField(temp,",",1))
		    Pcut_air=val(NthField(temp,",",2))
		    Dose_Zone_air=val(NthField(temp,",",3))
		    IRegion_to_bit_air=val(NthField(temp,",",4))
		    
		    temp=text(0)
		    text.Remove 0
		    Med_In_Air=Trim(temp)
		    
		    temp=text(0)
		    text.Remove 0
		    Ecut_leaves=val(NthField(temp,",",1))
		    Pcut_Leaves=val(NthField(temp,",",2))
		    Dose_Zone_Leaves=val(NthField(temp,",",3))
		    IRegion_to_bit_Leaves=val(NthField(temp,",",4))
		    
		    temp=text(0)
		    text.Remove 0
		    Med_In_Leaves=Trim(temp)
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_String(cm as Class_BEAM_Inputfile_CMs)
		  //-------------------------------------------------------------------------------------------------
		  // Write TOMO CM to string and write new TOMO MLC file
		  //
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
		  if MODE_TOMOMLC=1 Then
		    mlc_file=gRTOG.Plan(Plan_Index).Path
		    mlc_file=mlc_file.Child(MLC_File_Name)
		    if mlc_file.Exists Then
		      mlc_file.Delete
		    end
		    
		    ts=mlc_file.CreateTextFile
		    if ts<> nil Then
		      whole="Step and Shoot MLC"+EndOfLine.UNIX
		      whole=whole+Format(UBound(Fields)+1,"#")+EndOfLine.UNIX
		      ts.Write whole
		      for i =0 to UBound(Fields)
		        // Write Index of field
		        whole=Format(Fields(i).Index,"#.######")+EndOfLine.UNIX
		        mlc_string=""
		        for j=0 to UBound(Fields(i).leaves)
		          mlc_string=mlc_string+Format(Fields(i).leaves(j).neg,"#")+", "+Format(Fields(i).leaves(j).pos,"#")+", 1"+EndOfLine.UNIX
		        next
		        ts.Write whole+mlc_string
		      next
		      ts.Close
		      gBEAM.egs_msg.append MLC_File_Name+" created"
		    else
		      gBEAM.egs_msg.append "Error ! could not make TOMO MLC file : "+MLC_File_Name
		    end
		  end
		  //-------------------------------------------------------------------------------------------------
		  
		  
		  // Now rewite CM with new opening
		  ReDim cm.text(-1)
		  
		  cm.text.Append  Format(RMAX_CM,"-0.0###")+", RMAX"
		  cm.text.Append Title_CM
		  CM.text.Append Format(Orient_TOMOMLC,"-#")+", "+Format(NGROUP_TOMOMLC,"-#")+", "+Format(MODE_TOMOMLC,"-#")+", ORIENT, NGROUP, MODE"
		  CM.text.Append Format(ZMIN,"-0.0###")+", ZMIN"
		  CM.text.Append Format(ZThick,"-0.0###")+", ZTHICK"
		  
		  
		  
		  
		  for i=1 to NGROUP_TOMOMLC
		    CM.text.Append Format(Num_Leaf_TOMOMLC(i-1),"#") +", "+ Format(LeafWidth_TOMOMLC(i-1),"-0.0####")
		  next
		  
		  
		  CM.text.Append Format(CLOSED_NEG_ODD,"-0.0###")+", "+Format(CLOSED_POS_ODD,"-0.0###")+",  CLOSED_NEG_ODD, CLOSED_POS_ODD"
		  CM.text.Append Format(OPEN_NEG_ODD,"-0.0###")+", "+Format(OPEN_POS_ODD,"-0.0###")+",  OPEN_NEG_ODD, OPEN_POS_ODD"
		  CM.text.Append Format(CLOSED_NEG_EVEN,"-0.0###")+", "+Format(CLOSED_POS_EVEN,"-0.0###")+",  CLOSED_NEG_EVEN, CLOSED_POS_EVEN"
		  CM.text.Append Format(OPEN_NEG_EVEN,"-0.0###")+", "+Format(OPEN_POS_EVEN,"-0.0###")+",  OPEN_NEG_EVEN, OPEN_POS_EVEN"
		  
		  CM.text.Append Format(Start,"-0.0###")+", Start Position"
		  
		  CM.text.Append Format(wscrew,"-0.0###")+", "+Format(hscrew,"-0.0###")+", WSCREW, HSCREW"
		  CM.text.Append Format(wtongue,"-0.0###")+", "+Format(htongue,"-0.0###")+", "+Format(ztongue,"-0.0###")+", WTONGUE, HTONGUE, ZTONGUE"
		  CM.text.Append Format(wgroove,"-0.0###")+", "+Format(hgroove,"-0.0###")+", "+Format(zgroove,"-0.0###")+", WGROOVE, HGROOVE, ZGROOVE"
		  CM.text.Append Format(Leafgap,"-0.0###")+", leafairgap"
		  CM.text.Append Format(Endtype,"#")+", EndType"
		  
		  if Endtype=0 Then
		    CM.text.Append Format(Leafradius,"-0.0###")+", ZFOCUS or RADIUS of leaf ends"
		  else
		    CM.text.Append Format(zfocus(0),"-0.0###")+", ZFOCUS or RADIUS of leaf ends"
		  end
		  CM.text.Append Format(zfocus(1),"-0.0###")+", ZFOCUS of leaf sides"
		  
		  if MODE_TOMOMLC=1 Then
		    CM.text.Append MLC_File_Path
		  else
		    for i=0 to UBound(Fields(0).leaves)
		      cm.text.Append Format(Fields(0).leaves(i).Neg,"-#")+", "+Format(Fields(0).leaves(i).Pos,"-#")+", "+Format(Fields(0).leaves(i).Num,"#")
		    next
		  end
		  
		  // Append ECUT, PCUT and Materials
		  cm.text.Append Format(Ecut_Air,"#.###")+", "+Format(Pcut_air,"#.###")+", "+Format(Dose_Zone_air,"-#")+", "+Format(IRegion_to_bit_air,"#")
		  cm.text.Append Med_In_Air
		  
		  cm.text.Append Format(Ecut_Leaves,"#.###")+", "+Format(Pcut_Leaves,"#.###")+", "+Format(Dose_Zone_Leaves,"-#")+", "+Format(IRegion_to_bit_Leaves,"#")+", "+Format(IGNOREGAPS,"#")
		  cm.text.Append Med_In_Leaves
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		CLOSED_NEG_EVEN As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		CLOSED_NEG_ODD As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		CLOSED_POS_EVEN As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		CLOSED_POS_ODD As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Zone_air As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Zone_Leaves As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Ecut_Air As Single
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
		hgroove As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		hscrew As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		htongue As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		IGNOREGAPS As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_to_bit_air As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_to_bit_Leaves As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Leafgap As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Leafradius As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		LeafWidth_TOMOMLC(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Med_In_Air As String
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
		MODE_TOMOMLC As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NGROUP_TOMOMLC As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Numleaves As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_Leaf_TOMOMLC(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		OPEN_NEG_EVEN As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		OPEN_NEG_ODD As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		OPEN_POS_EVEN As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		OPEN_POS_ODD As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Orient_TOMOMLC As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Pcut_air As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Pcut_Leaves As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		RMAX_CM As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Start As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Title_CM As string
	#tag EndProperty

	#tag Property, Flags = &h0
		wgroove As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		wscrew As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		wtongue As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		zfocus(1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		zgroove As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ZMIN As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ZThick As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ztongue As Single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="CLOSED_NEG_EVEN"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CLOSED_NEG_ODD"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CLOSED_POS_EVEN"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CLOSED_POS_ODD"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Zone_air"
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
			Name="hgroove"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="hscrew"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="htongue"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
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
			Name="MODE_TOMOMLC"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
			Name="NGROUP_TOMOMLC"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
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
			Name="OPEN_NEG_EVEN"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="OPEN_NEG_ODD"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="OPEN_POS_EVEN"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="OPEN_POS_ODD"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Orient_TOMOMLC"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
			Name="Pcut_Leaves"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
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
			Name="wgroove"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="wscrew"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="wtongue"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="zgroove"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
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
		#tag ViewProperty
			Name="ztongue"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
