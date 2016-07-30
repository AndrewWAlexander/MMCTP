#tag Class
Protected Class Class_BEAM_CM_CONESTAK
	#tag Method, Flags = &h0
		Sub read(Text() as String, idname as String)
		  //-------------------------------------------------
		  // Readin CM CONESTAK
		  //
		  //-------------------------------------------------
		  Dim temp as String
		  Dim i,index as Integer
		  //-------------------------------------------------
		  
		  
		  Rmax=Val(text(0))
		  text.Remove 0
		  
		  Title_CM=text(0)
		  text.Remove 0
		  
		  zmin=val(NthField((text(0)),",",1))
		  RBN=val(NthField((text(0)),",",2))
		  text.Remove 0
		  
		  temp=text(0)
		  ISCM_MAX=val(text(0))
		  text.Remove 0
		  
		  
		  ReDim Zthick(ISCM_MAX-1)
		  ReDim Rmin(ISCM_MAX-1)
		  ReDim Rmax_lay(ISCM_MAX-1)
		  ReDim ECUT(ISCM_MAX-1)
		  ReDim PCUT(ISCM_MAX-1)
		  ReDim Dose_Zone(ISCM_MAX-1)
		  ReDim IRegion_to_bit(ISCM_MAX-1)
		  ReDim Med_in(ISCM_MAX-1)
		  
		  ReDim ECUT_out(ISCM_MAX-1)
		  ReDim PCUT_out(ISCM_MAX-1)
		  ReDim Dose_Zone_out(ISCM_MAX-1)
		  ReDim IRegion_to_bit_out(ISCM_MAX-1)
		  ReDim Med_in_out(ISCM_MAX-1)
		  
		  for i=1 to ISCM_MAX
		    Zthick(i-1)=val(NthField((text(0)),",",1))
		    Rmin(i-1)=val(NthField((text(0)),",",2))
		    Rmax_lay(i-1)=val(NthField((text(0)),",",3))
		    text.Remove 0
		  next
		  
		  if RBN<>0 Then
		    temp=text(0)
		    ECUT_wall=val(NthField(temp,",",1))
		    PCUT_wall=val(NthField(temp,",",2))
		    Dose_Zone_wall=val(NthField(temp,",",3))
		    IRegion_to_bit_wall=val(NthField(temp,",",4))
		    text.Remove 0
		    temp=text(0)
		    Med_in_wall=Trim(NthField(temp,",",1))
		    text.Remove 0
		  end
		  
		  for i=1 to ISCM_MAX
		    temp=text(0)
		    ECUT(i-1)=val(NthField(temp,",",1))
		    PCUT(i-1)=val(NthField(temp,",",2))
		    Dose_Zone(i-1)=val(NthField(temp,",",3))
		    IRegion_to_bit(i-1)=val(NthField(temp,",",4))
		    text.Remove 0
		    temp=text(0)
		    Med_in(i-1)=Trim(NthField(temp,",",1))
		    text.Remove 0
		    
		    temp=text(0)
		    ECUT_out(i-1)=val(NthField(temp,",",1))
		    PCUT_out(i-1)=val(NthField(temp,",",2))
		    Dose_Zone_out(i-1)=val(NthField(temp,",",3))
		    IRegion_to_bit_out(i-1)=val(NthField(temp,",",4))
		    text.Remove 0
		    temp=text(0)
		    Med_in_out(i-1)=Trim(NthField(temp,",",1))
		    text.Remove 0
		    
		    
		  next
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub write(cm as Class_BEAM_Inputfile_CMs)
		  //-------------------------------------
		  // Write CONESTAK CM
		  //
		  //-------------------------------------
		  Dim i ,k as Integer
		  //-------------------------------------
		  
		  ReDim cm.text(-1)
		  
		  cm.text.Append Format(cm.CONESTAK.Rmax,"-#.0##")+", RMAX"
		  cm.text.Append cm.CONESTAK.Title_CM
		  
		  cm.text.Append Format(cm.CONESTAK.Zmin,"-#.###")+", "+Format(cm.CONESTAK.RBN,"-#.###")+", ZMIN, RBN"
		  
		  cm.text.Append Format(cm.CONESTAK.ISCM_MAX,"-#")+", NUMBER OF LAYERS"
		  
		  for i=0 to (cm.CONESTAK.ISCM_MAX-1)
		    cm.text.Append Format(cm.CONESTAK.Zthick(i),"-#.###")+", "+Format(cm.CONESTAK.Rmin(i),"-#.###")+", "+Format(cm.CONESTAK.Rmax_lay(i),"-#.###")+","
		  Next
		  
		  if cm.CONESTAK.RBN<> 0 Then
		    cm.text.Append Format(cm.CONESTAK.ECUT_wall,"-#.###")+", "+Format(cm.CONESTAK.PCUT_wall,"-#.###")+", "+Format(cm.CONESTAK.Dose_Zone_wall,"#")+", "+Format(cm.CONESTAK.IRegion_to_bit_wall,"#")+","
		    cm.text.Append cm.CONESTAK.Med_in_wall
		  end
		  
		  
		  for i=0 to (cm.CONESTAK.ISCM_MAX-1)
		    cm.text.Append Format(cm.CONESTAK.ECUT(i),"-#.###")+", "+Format(cm.CONESTAK.PCUT(i),"-#.###")+", "+Format(cm.CONESTAK.Dose_Zone(i),"#")+", "+Format(cm.CONESTAK.IRegion_to_bit(i),"#")+","
		    cm.text.Append cm.CONESTAK.Med_in(i)
		    
		    cm.text.Append Format(cm.CONESTAK.ECUT_out(i),"-#.###")+", "+Format(cm.CONESTAK.PCUT_out(i),"-#.###")+", "+Format(cm.CONESTAK.Dose_Zone_out(i),"#")+", "+Format(cm.CONESTAK.IRegion_to_bit_out(i),"#")+","
		    cm.text.Append cm.CONESTAK.Med_in_out(i)
		  Next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Dose_Zone(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Zone_out(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Zone_wall As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT_out(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT_wall As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Med_in_wall As Integer
		#tag EndNote
		IRegion_to_bit(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Med_in_wall As Integer
		#tag EndNote
		IRegion_to_bit_out(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Med_in_wall As Integer
		#tag EndNote
		IRegion_to_bit_wall As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ISCM_MAX As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Med_in(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Med_in_out(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Med_in_wall As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PCUT(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		PCUT_out(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		PCUT_wall As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		RBN As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Rmax As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Rmax_lay(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Rmin(-1) As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Title_CM As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Zmax(-1) As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Zmin As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Zthick(-1) As Double
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Dose_Zone_wall"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECUT_wall"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRegion_to_bit_wall"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ISCM_MAX"
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
			Name="Med_in_wall"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PCUT_wall"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RBN"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Rmax"
			Group="Behavior"
			Type="Single"
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
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Zmin"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
