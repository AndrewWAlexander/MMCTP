#tag Class
Protected Class Class_BEAM_CM_VARMLC
	#tag Method, Flags = &h0
		Sub Read_VARMLC(Text() as String)
		  //-----------------------------------------------
		  // READIN VARMLC CM into variables
		  //
		  //-----------------------------------------------
		  Dim ff as Class_BEAM_CM_MLC_Leaf_Opening
		  Dim k,i,num_slabs as integer
		  Dim temp as String
		  Dim bottom as Single
		  //-----------------------------------------------
		  
		  // BEAMnrc cm is from MLC STATIC
		  if UBound(text)>=5 Then
		    RMAX_CM=val(NthField((text(0)),",",1))
		    text.Remove 0
		    Title_CM=Trim(text(0))
		    text.Remove 0
		    // Orient 0, for leaves parallel to Y direction
		    // Orient 1, for leaves parallel to X direction
		    Orient_VARMLC=val(NthField((text(0)),",",1))
		    NGROUP_VARMLC=val(NthField((text(0)),",",2))
		    text.Remove 0
		    ZMIN=val(NthField((text(0)),",",1))
		    text.Remove 0
		    ZThick=val(NthField((text(0)),",",1))
		    text.Remove 0
		  end
		  
		  ReDim Num_Leaf_VarMLC(NGROUP_VARMLC-1)
		  ReDim LeafWidth_VARMLC(NGROUP_VARMLC-1)
		  
		  
		  for i=1 to NGROUP_VARMLC
		    if UBound(text)<0 Then
		      Return
		    end
		    Num_Leaf_VarMLC(i-1)=val(NthField((text(0)),",",1))
		    LeafWidth_VARMLC(i-1)=val(NthField((text(0)),",",2))
		    text.Remove 0
		  next
		  
		  if UBound(text)<6 Then
		    Return
		  end
		  
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
		  if Endtype=0 Then //rounded leaf end and
		    Leafradius=val(NthField((text(0)),",",1))
		  elseif Endtype=1 Then
		    zfocus(0)=val(NthField((text(0)),",",1))
		  end
		  text.Remove 0
		  
		  zfocus(1)=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  k=0
		  //Loop for each leaf
		  Numleaves=0
		  for i=0 to (NGROUP_VARMLC-1)
		    Numleaves=Numleaves+Num_Leaf_VarMLC(i)
		  Next
		  
		  While k<Numleaves
		    ff=new Class_BEAM_CM_MLC_Leaf_Opening
		    if UBound(text)=-1 Then
		      Exit
		    end
		    temp=text(0)
		    text.Remove 0
		    MLC.Append ff
		    ff.Neg=val(NthField(temp,",",1))
		    ff.Pos=val(NthField(temp,",",2))
		    ff.Num=val(NthField(temp,",",3))
		    k=k+ff.Num
		    if ff.Num<=0 Then
		      Exit
		    end
		  Wend
		  
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
		  // Write the VARMLC variables to string
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
		  
		  
		  // Now rewite CM with new opening
		  ReDim cm.text(-1)
		  
		  cm.text.Append  Format(RMAX_CM,"-0.0###")+", RMAX"
		  cm.text.Append Title_CM
		  CM.text.Append Format(Orient_VARMLC,"-#")+", "+Format(NGROUP_VARMLC,"-#")+", ORIENT, NGROUP,"
		  CM.text.Append Format(ZMIN,"-0.0###")+", ZMIN"
		  CM.text.Append Format(ZThick,"-0.0###")+", ZTHICK"
		  
		  for i=1 to NGROUP_VARMLC
		    CM.text.Append Format(Num_Leaf_VarMLC(i-1),"#") +", "+ Format(LeafWidth_VARMLC(i-1),"-0.0####")
		  next
		  
		  CM.text.Append Format(Start,"-0.0###")+", Start Position"
		  
		  CM.text.Append Format(wscrew,"-0.0###")+", "+Format(hscrew,"-0.0###")+", wscrew hscrew"
		  CM.text.Append Format(wtongue,"-0.0###")+", "+Format(htongue,"-0.0###")+", "+Format(ztongue,"-0.0###")+", wscrew hscrew"
		  CM.text.Append Format(wgroove,"-0.0###")+", "+Format(hgroove,"-0.0###")+", "+Format(zgroove,"-0.0###")+", wscrew hscrew"
		  CM.text.Append Format(Leafgap,"-0.0###")+", leafairgap"
		  CM.text.Append Format(Endtype,"#")+", EndType"
		  
		  if Endtype=1 Then
		    CM.text.Append Format(zfocus(0),"-0.0###")+",  Focal point on Z-axis of leaf ends"
		  else
		    CM.text.Append Format(Leafradius,"-0.0###")+", Radius of the leaf"
		  end
		  
		  CM.text.Append Format(zfocus(1),"-0.0###")+", Focal point on Z-axis of leaf sides"
		  
		  for i=0 to UBound(MLC)
		    cm.text.Append Format(mlc(i).Neg,"-#.###")+", "+Format(MLC(i).Pos,"-#.###")+", "+Format(MLC(i).Num,"#")
		  next
		  
		  
		  // Append ECUT, PCUT and Materials
		  cm.text.Append Format(Ecut_Air,"#.###")+", "+Format(Pcut_air,"#.###")+", "+Format(Dose_Zone_air,"-#")+", "+Format(IRegion_to_bit_air,"#")
		  cm.text.Append Med_In_Air
		  
		  cm.text.Append Format(Ecut_Leaves,"#.###")+", "+Format(Pcut_Leaves,"#.###")+", "+Format(Dose_Zone_Leaves,"-#")+", "+Format(IRegion_to_bit_Leaves,"#")+", "+Format(IGNOREGAPS,"#")
		  cm.text.Append Med_In_Leaves
		  
		  
		End Sub
	#tag EndMethod


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
		LeafWidth_VARMLC(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Med_In_Air As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Med_In_Leaves As String
	#tag EndProperty

	#tag Property, Flags = &h0
		MLC(-1) As Class_BEAM_CM_MLC_Leaf_Opening
	#tag EndProperty

	#tag Property, Flags = &h0
		NGROUP_VARMLC As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Numleaves As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_Leaf_VarMLC(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Orient_VARMLC As Integer
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
			Name="Dose_Zone_air"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Zone_Leaves"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Ecut_Air"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Ecut_Leaves"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Endtype"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="hgroove"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="hscrew"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="htongue"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IGNOREGAPS"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRegion_to_bit_air"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRegion_to_bit_Leaves"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Leafgap"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Leafradius"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Med_In_Air"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Med_In_Leaves"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NGROUP_VARMLC"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Numleaves"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Orient_VARMLC"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pcut_air"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pcut_Leaves"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RMAX_CM"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Start"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title_CM"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="wgroove"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="wscrew"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="wtongue"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="zgroove"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZMIN"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZThick"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ztongue"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
