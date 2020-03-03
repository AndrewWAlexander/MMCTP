#tag Class
Protected Class Class_BEAM_CM_MLC
	#tag Method, Flags = &h0
		Sub Read(Text() as String, idname as String)
		  //-----------------------------------------------
		  // READIN MLC CM into variables
		  //
		  //-----------------------------------------------
		  Dim ff as Class_BEAM_CM_MLC_Leaf_Opening
		  Dim k,i,num_slabs as integer
		  Dim temp as String
		  Dim bottom as Single
		  //-----------------------------------------------
		  
		  // BEAMnrc CM is for MLC STATIC
		  if UBound(text)>=8 Then
		    RMAX_CM=val(NthField(( text(0)),",",1))
		    text.Remove 0
		    Title_CM=Trim( text(0))
		    text.Remove 0
		    // Orient 0, for leaves parallel to Y direction
		    // Orient 1, for leaves parallel to X direction
		    IDMLFC_MLC=val(NthField(( text(0)),",",1))
		    text.Remove 0
		    ZMIN=val(NthField(( text(0)),",",1))
		    text.Remove 0
		    ZThick=val(NthField(( text(0)),",",1))
		    text.Remove 0
		    Num_leaf=val(NthField(( text(0)),",",1))
		    TWIDTH_MLC=val(NthField(( text(0)),",",2))
		    text.Remove 0
		    zfocus_sides=val(NthField(( text(0)),",",1))
		    text.Remove 0
		    zfocus_ends=val(NthField(( text(0)),",",1))
		    text.Remove 0
		  end
		  
		  k=0
		  //Loop for each leaf
		  While k< Num_leaf
		    ff=new Class_BEAM_CM_MLC_Leaf_Opening
		    if UBound( text)=-1 Then
		      Exit
		    end
		    temp= text(0)
		    text.Remove 0
		    Field.Append ff
		    ff.Neg=val(NthField(temp,",",1))
		    ff.Pos=val(NthField(temp,",",2))
		    ff.Num=val(NthField(temp,",",3))
		    k=k+ff.Num
		    if ff.Num<=0 Then
		      Exit
		    end
		  Wend
		  
		  if UBound( text)>=3 Then
		    temp= text(0)
		    text.Remove 0
		    Ecut_inside_collimator =val(NthField(temp,",",1))
		    Pcut_inside_collimator=val(NthField(temp,",",2))
		    Dose_Zone_inside_collimator=val(NthField(temp,",",3))
		    IRegion_to_bit_inside_collimator=val(NthField(temp,",",4))
		    
		    temp= text(0)
		    text.Remove 0
		    Med_inside_collimator=Trim(temp)
		    
		    temp= text(0)
		    text.Remove 0
		    Ecut_collimator_leaves=val(NthField(temp,",",1))
		    Pcut_collimator_Leaves=val(NthField(temp,",",2))
		    Dose_Zone_collimator_Leaves=val(NthField(temp,",",3))
		    IRegion_to_bit_collimator_Leaves=val(NthField(temp,",",4))
		    
		    temp= text(0)
		    text.Remove 0
		    Med_collimator_leaves=Trim(temp)
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_String(cm as Class_BEAM_Inputfile_CMs)
		  //-------------------------------------------------------------------------------------------------
		  //
		  //
		  //-------------------------------------------------------------------------------------------------
		  Dim whole  as String
		  Dim i as Integer
		  //-------------------------------------------------------------------------------------------------
		  
		  // Write MLC file
		  ReDim cm.text(-1)
		  
		  cm.text.Append Format(RMAX_CM,"-0.0###")+", RMAX"
		  cm.text.Append Title_CM
		  CM.text.Append Format(IDMLFC_MLC,"#")
		  CM.text.Append Format(ZMIN,"-0.0###")+", ZMIN"
		  CM.text.Append Format(ZThick,"-0.0###")+", ZTHICK"
		  CM.text.Append Format(Num_leaf,"#")+", "+ Format(TWIDTH_MLC,"-0.0####")
		  CM.text.Append Format(zfocus_ends,"-0.0####")+", ZFOCUS or RADIUS of leaf ends"
		  CM.text.Append Format(zfocus_sides,"-0.0####")+", ZFOCUS of leaf sides"
		  
		  for i=0 to UBound(Field) 
		    cm.text.Append Format(Field(i).Neg,"-#.###")+", "+Format(Field(i).Pos,"-#.###")+", "+Format(Field(i).Num,"#")
		  next
		  
		  // Append ECUT, PCUT and Materials
		  cm.text.Append Format(cm.MLC.Ecut_inside_collimator,"#.###")+", "+Format(cm.MLC.Pcut_inside_collimator,"#.###")+", "+Format(cm.MLC.Dose_Zone_inside_collimator,"-#")+", "+Format(cm.MLC.IRegion_to_bit_inside_collimator,"#")
		  cm.text.Append cm.MLC.Med_inside_collimator
		  
		  cm.text.Append Format(cm.MLC.Ecut_collimator_leaves,"#.###")+", "+Format(cm.MLC.Pcut_collimator_Leaves,"#.###")+", "+Format(cm.MLC.Dose_Zone_collimator_Leaves,"-#")+", "+Format(cm.MLC.IRegion_to_bit_collimator_Leaves,"#")
		  cm.text.Append cm.MLC.Med_collimator_leaves
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Dose_Zone_collimator_Leaves As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Zone_inside_collimator As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Ecut_collimator_leaves As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Ecut_inside_collimator As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Field(-1) As Class_BEAM_CM_MLC_Leaf_Opening
	#tag EndProperty

	#tag Property, Flags = &h0
		IDMLFC_MLC As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_to_bit_collimator_Leaves As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_to_bit_inside_collimator As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Med_collimator_leaves As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Med_inside_collimator As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_leaf As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Pcut_collimator_Leaves As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Pcut_inside_collimator As Single
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
			Name="Dose_Zone_collimator_Leaves"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Zone_inside_collimator"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Ecut_collimator_leaves"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Ecut_inside_collimator"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IDMLFC_MLC"
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
			Name="IRegion_to_bit_collimator_Leaves"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRegion_to_bit_inside_collimator"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
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
			Name="Med_collimator_leaves"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Med_inside_collimator"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="Num_leaf"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pcut_collimator_Leaves"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pcut_inside_collimator"
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
			Name="TWIDTH_MLC"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
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
