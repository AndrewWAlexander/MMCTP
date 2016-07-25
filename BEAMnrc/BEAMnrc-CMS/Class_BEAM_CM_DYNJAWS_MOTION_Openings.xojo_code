#tag Class
Protected Class Class_BEAM_CM_DYNJAWS_MOTION_Openings
	#tag Property, Flags = &h0
		XBN_JAWS As single
	#tag EndProperty

	#tag Property, Flags = &h0
		XBP_JAWS As single
	#tag EndProperty

	#tag Property, Flags = &h0
		XFN_JAWS As single
	#tag EndProperty

	#tag Property, Flags = &h0
		XFP_JAWS As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ZMAX_JAWS As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ZMIN_JAWS As single
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
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="XBN_JAWS"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="XBP_JAWS"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="XFN_JAWS"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="XFP_JAWS"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZMAX_JAWS"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZMIN_JAWS"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
