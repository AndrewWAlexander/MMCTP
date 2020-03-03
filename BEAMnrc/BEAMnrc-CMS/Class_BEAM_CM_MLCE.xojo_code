#tag Class
Protected Class Class_BEAM_CM_MLCE
	#tag Method, Flags = &h0
		Sub Read(Text() as String, idname as String)
		  //-----------------------------------------------
		  // READIN MLCE CM into variables
		  //
		  //-----------------------------------------------
		  Dim i,k as integer
		  Dim temp as String
		  Dim bottom as Single
		  Dim bb as Class_BEAM_CM_MLC_Leaf_Opening
		  //-----------------------------------------------
		  
		  RMAX_CM=val(NthField((text(0)),",",1))
		  text.Remove 0
		  Title_CM=text(0)
		  text.Remove 0
		  
		  Orient=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  Num_leaf=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  if idname="Ottawa-MLC" Then//JB modified CM
		    nfield=val(NthField((text(0)),",",1))
		    text.Remove 0
		    
		    mode=val(NthField((text(0)),",",1))
		    text.Remove 0
		    
		    mode2=val(NthField((text(0)),",",1))
		    text.Remove 0
		    
		    filter=val(NthField((text(0)),",",1))
		    text.Remove 0
		  end
		  
		  Zmin=val(NthField((text(0)),",",1))
		  Zmax=val(NthField((text(0)),",",2))
		  text.Remove 0
		  
		  zstepl=val(NthField((text(0)),",",1))
		  zstepr=val(NthField((text(0)),",",2))
		  text.Remove 0
		  
		  tgw=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  x3=val(NthField((text(0)),",",1))
		  x4=val(NthField((text(0)),",",2))
		  text.Remove 0
		  
		  space=val(NthField((text(0)),",",1))
		  ssd=val(NthField((text(0)),",",2))
		  text.Remove 0
		  
		  lbrot=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  endtype=val(NthField((text(0)),",",1))
		  text.Remove 0
		  if endtype=0 Then
		    leafradius=val(NthField((text(0)),",",1))
		    cil=val(NthField((text(0)),",",2))
		  else
		    zfocus=val(NthField((text(0)),",",1))
		  end
		  text.Remove 0
		  if UBound(Text)<0 Then
		    Return
		  end
		  
		  ReDim Index(nfield-1)
		  for k=1 to nfield //JB modified CM
		    if idname="Ottawa-MLC" Then
		      Index(k-1)=val(NthField((text(0)),",",1)) //JB modified CM
		      text.Remove 0
		      if UBound(Text)<0 Then
		        Return
		      end
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
		  Next
		  
		  
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
		Sub Write_String(cm as Class_BEAM_Inputfile_CMs, IDname as String)
		  //-------------------------------------------------------------------------------------------------
		  // Write CM MLCE
		  //
		  //
		  //-------------------------------------------------------------------------------------------------
		  Dim whole  as String
		  Dim i,k,hh,p as Integer
		  //-------------------------------------------------------------------------------------------------
		  
		  // Write MLC file
		  ReDim cm.text(-1)
		  
		  cm.text.Append Format(RMAX_CM,"-0.0###")+", RMAX"
		  cm.text.Append Title_CM
		  
		  CM.text.Append Format(Orient,"#")+", ORIENT"
		  CM.text.Append Format(Num_leaf,"#")+", NUM_LEAF"
		  
		  //JB modified CM additions
		  if IDname="Ottawa-MLC" Then 
		    CM.text.Append Format(nfield,"#")+", NFIELDS"
		    CM.text.Append Format(mode,"#")+", Mode"
		    CM.text.Append Format(mode2,"#")+", Mode2"
		    CM.text.Append Format(filter,"#")+", Filter"
		  end
		  
		  CM.text.Append Format(ZMIN,"-0.0###")+", "+Format(Zmax,"-0.0###")+", ZMIN, ZMAX"
		  CM.text.Append Format(zstepl,"-0.0###")+", "+Format(zstepr,"-0.0###")+", ZSTEPL, ZSTEPR"
		  CM.text.Append Format(tgw,"-0.0####")+", TGW"
		  CM.text.Append Format(x3,"-0.0####")+", "+Format(x4,"-0.0####")+", X3, X4"
		  CM.text.Append Format(space,"-0.0####")+", "+Format(ssd,"-0.0####")+", SPACE, SSD"
		  CM.text.Append Format(lbrot,"-0")+", LBROT" // 2015 Changed to right interger from double
		  CM.text.Append Format(endtype,"#")+", ENDTYPE"
		  
		  if endtype=0 Then
		    CM.text.Append Format(leafradius,"-0.0###")+", "+Format(cil,"-0.0###")+", LEAFRADIUS, CIL"
		  else
		    CM.text.Append Format(zfocus,"-0.0###")+", Z position from which radius defined"
		  end
		  
		  // Loop for each field and then for each leaf
		  // field index is for JB modified CM
		  for i=1 to nfield
		    if IDname="Ottawa-MLC" Then
		      CM.text.Append Format(Index(i-1),"-0.0###") //JB modified CM
		    end
		    p=0
		    While p<Num_leaf
		      hh=(i-1)*Num_leaf+p
		      cm.text.Append Format(Field(hh).Neg,"-0.0###")+", "+Format(Field(hh).Pos,"-0.0###")+", "+Format(Field(hh).Num,"#")
		      p=p+Field(hh).Num
		    Wend
		  next
		  
		  
		  // Append ECUT, PCUT and Materials
		  cm.text.Append Format(Ecut_air,"#.###")+", "+Format(Pcut_air,"#.###")+", "+Format(Dose_Zone_air,"-#")+", "+Format(IRegion_to_bit_air,"#")
		  cm.text.Append Med_air
		  
		  cm.text.Append Format(Ecut_leaves,"#.###")+", "+Format(Pcut_leaves,"#.###")+", "+Format(Dose_Zone_Leaves,"-#")+", "+Format(IRegion_to_bit_Leaves,"#")
		  cm.text.Append Med_leaves
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		cil As Single
	#tag EndProperty

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
		endtype As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Field(-1) As Class_BEAM_CM_MLC_Leaf_Opening
	#tag EndProperty

	#tag Property, Flags = &h0
		filter As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IDMLFC_MLC As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Index(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_to_bit_air As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_to_bit_Leaves As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		lbrot As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		leafradius As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Med_air As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Med_leaves As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mode As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		mode2 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		nfield As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_leaf As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Orient As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Pcut_air As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Pcut_leaves As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		RMAX_CM As single
	#tag EndProperty

	#tag Property, Flags = &h0
		space As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ssd As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		tgw As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Title_CM As string
	#tag EndProperty

	#tag Property, Flags = &h0
		TWIDTH_MLC As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		x3 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		x4 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		zfocus As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Zmax As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ZMIN As single
	#tag EndProperty

	#tag Property, Flags = &h0
		zstepl As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		zstepr As Single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="cil"
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
			InitialValue=""
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
			Name="Ecut_air"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Ecut_leaves"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="endtype"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="filter"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
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
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="lbrot"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="leafradius"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
			Name="Med_air"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Med_leaves"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="mode2"
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
			Name="nfield"
			Visible=false
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
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
			Name="Orient"
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
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pcut_leaves"
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
			Name="space"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ssd"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
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
			Name="tgw"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
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
			Name="x3"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="x4"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="zfocus"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Zmax"
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
			Name="zstepl"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="zstepr"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
