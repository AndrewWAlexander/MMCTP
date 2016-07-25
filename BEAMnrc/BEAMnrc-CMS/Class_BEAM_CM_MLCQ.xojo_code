#tag Class
Protected Class Class_BEAM_CM_MLCQ
	#tag Method, Flags = &h0
		Sub Read(Text() as String, idname as String)
		  //-----------------------------------------------
		  // READIN MLCQ CM into variables
		  //
		  //-----------------------------------------------
		  Dim i as integer
		  Dim temp as String
		  Dim bottom as Single
		  Dim bb as Class_BEAM_CM_MLC_Leaf_Opening
		  //-----------------------------------------------
		  
		  
		  RMAX_CM=val(NthField((text(0)),",",1))
		  text.Remove 0
		  Title_CM=text(0)
		  text.Remove 0
		  
		  IDMLFC_MLCQ=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  ZMIN=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  ZThick=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  Num_leaf=val(NthField((text(0)),",",1))
		  TWIDTH_MLC=val(NthField((text(0)),",",2))
		  text.Remove 0
		  
		  zfocus=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  R0LEAF=val(NthField((text(0)),",",1))
		  Z0LEAF=val(NthField((text(0)),",",2))
		  text.Remove 0
		  if UBound(Text)<0 Then
		    Return
		  end
		  
		  i=0
		  While i<Num_leaf
		    bb=new Class_BEAM_CM_MLC_Leaf_Opening
		    bb.Neg=val(NthField((text(0)),",",1))
		    bb.Pos=val(NthField((text(0)),",",2))
		    bb.Num=val(NthField((text(0)),",",3))
		    i=i+bb.Num
		    text.Remove 0
		    if UBound(Text)<0 Then
		      Return
		    end
		    Field.Append bb
		  Wend
		  
		  
		  temp=text(0)
		  Ecut_air=val(NthField(temp,",",1))
		  Pcut_air=val(NthField(temp,",",2))
		  Dose_Zone_air=val(NthField(temp,",",3))
		  IRegion_to_bit_air=val(NthField(temp,",",4))
		  text.Remove 0
		  temp=text(0)
		  Med_air=Trim(NthField(temp,",",1))
		  text.Remove 0
		  
		  temp=text(0)
		  Ecut_leaves=val(NthField(temp,",",1))
		  Pcut_leaves=val(NthField(temp,",",2))
		  Dose_Zone_Leaves=val(NthField(temp,",",3))
		  IRegion_to_bit_Leaves=val(NthField(temp,",",4))
		  text.Remove 0
		  temp=text(0)
		  Med_leaves=Trim(NthField(temp,",",1))
		  text.Remove 0
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_String(cm as Class_BEAM_Inputfile_CMs)
		  //-------------------------------------------------------------------------------------------------
		  // Write CM MLCQ
		  //
		  //-------------------------------------------------------------------------------------------------
		  Dim whole  as String
		  Dim i as Integer
		  //-------------------------------------------------------------------------------------------------
		  
		  // Write MLC file
		  ReDim cm.text(-1)
		  
		  cm.text.Append Format(RMAX_CM,"-0.0###")+", RMAX"
		  cm.text.Append Title_CM
		  CM.text.Append Format(IDMLFC_MLCQ,"-0")+", IDMLFC"
		  CM.text.Append Format(ZMIN,"-0.0###")+", zmin"
		  CM.text.Append Format(ZThick,"-0.0###")+", zthick"
		  CM.text.Append Format(Num_leaf,"#")+", "+ Format(TWIDTH_MLC,"-0.0####")+", # leaves, total width"
		  CM.text.Append Format(zfocus,"-0.0###")+", zfocus"
		  CM.text.Append Format(R0LEAF,"-0.0#####")+", "+ Format(Z0LEAF,"-0.0####")+", R0leaf, z0leaf"
		  
		  for i=0 to UBound(Field) 
		    cm.text.Append Format(Field(i).Neg,"-#.###")+", "+Format(Field(i).Pos,"-#.###")+", "+Format(Field(i).Num,"#")
		  next
		  
		  // Append ECUT, PCUT and Materials
		  cm.text.Append Format(Ecut_air,"#.###")+", "+Format(Pcut_air,"#.###")+", "+Format(Dose_Zone_air,"-#")+", "+Format(IRegion_to_bit_air,"#")
		  cm.text.Append Med_air
		  
		  cm.text.Append Format(Ecut_leaves,"#.###")+", "+Format(Pcut_Leaves,"#.###")+", "+Format(Dose_Zone_Leaves,"-#")+", "+Format(IRegion_to_bit_Leaves,"#")
		  cm.text.Append Med_leaves
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Dose_Zone_air As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Zone_Leaves As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Ecut_air As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Ecut_leaves As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Field(-1) As Class_BEAM_CM_MLC_Leaf_Opening
	#tag EndProperty

	#tag Property, Flags = &h0
		IDMLFC_MLCQ As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_to_bit_air As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_to_bit_Leaves As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Med_air As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Med_leaves As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Num As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_leaf As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Pcut_air As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Pcut_leaves As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		R0LEAF As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		RMAX_CM As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Title_CM As string
	#tag EndProperty

	#tag Property, Flags = &h0
		TWIDTH_MLC As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Z0LEAF As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		zfocus As Single
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
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Zone_Leaves"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Ecut_air"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Ecut_leaves"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IDMLFC_MLCQ"
			Group="Behavior"
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
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Med_air"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Med_leaves"
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
			Name="Num"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Num_leaf"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pcut_air"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pcut_leaves"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="R0LEAF"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RMAX_CM"
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
			Name="TWIDTH_MLC"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Z0LEAF"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="zfocus"
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
	#tag EndViewBehavior
End Class
#tag EndClass
