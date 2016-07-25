#tag Class
Protected Class Class_BEAM_CM_SLABS
	#tag Method, Flags = &h0
		Sub Read(Text() as String)
		  //-----------------------------------------
		  // Readin SLAB CM
		  //
		  //-----------------------------------------
		  Dim temp as String
		  Dim k,i,index,num_slabs,x as integer
		  Dim bottom as Single
		  //-----------------------------------------
		  
		  
		  
		  RMAX_CM=val(NthField((text(0)),",",1))
		  text.Remove 0
		  Title_CM=text(0)
		  text.Remove 0
		  temp=text(0)
		  text.Remove 0
		  N_SLABS=val(NthField(temp,",",1))
		  temp=text(0)
		  text.Remove 0
		  Zmin=val(NthField(temp,",",1))
		  
		  ReDim Zthink(N_SLABS-1)
		  ReDim ECUT(N_SLABS-1)
		  ReDim PCUT(N_SLABS-1)
		  ReDim Dose_Zone(N_SLABS-1)
		  ReDim IRegion_Bit(N_SLABS-1)
		  ReDim Esave(N_SLABS-1)
		  ReDim Medium_In(N_SLABS-1)
		  
		  for k=1 to N_SLABS
		    temp=text(0)
		    text.Remove 0
		    
		    Zthink(k-1)=val(NthField(temp,",",1))
		    ECUT(k-1)=val(NthField(temp,",",2))
		    PCUT(k-1)=val(NthField(temp,",",3))
		    Dose_Zone(k-1)=val(NthField(temp,",",4))
		    IRegion_Bit(k-1)=val(NthField(temp,",",5))
		    Esave(k-1)=val(NthField(temp,",",6))
		    
		    temp=Trim(text(0))
		    text.Remove 0
		    Medium_In(k-1)=temp
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write(cm as Class_BEAM_Inputfile_CMs)
		  //------------------------------
		  // Write SLABS cm 
		  //------------------------------
		  Dim i as Integer
		  //------------------------------
		  
		  ReDim cm.text(-1)
		  cm.text.Append Format(RMAX_CM,"-0.0####")+", RMAX"
		  cm.text.Append Title_CM
		  cm.text.Append Format(N_SLABS,"#")+", n_slabs"
		  cm.text.Append Format(Zmin,"-0.0#####")+", distance"
		  for i=1 to N_SLABS
		    cm.text.Append Format(Zthink(i-1),"-0.0####")+", "+Format(ECUT(i-1),"-0.0###")+", "+Format(PCUT(i-1),"-0.0###")+", "+Format(Dose_Zone(i-1),"#")+", "+Format(IRegion_Bit(i-1),"#")+", "+Format(Esave(i-1),"-0.0###")
		    cm.text.Append Medium_In(i-1)
		  Next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Dose_Zone(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Esave(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_Bit(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Medium_In(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		N_SLABS As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PCUT(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		RMAX_CM As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Title_CM As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Zmin As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Zthink(-1) As single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="N_SLABS"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
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
			Name="Zmin"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
