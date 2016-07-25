#tag Class
Protected Class Class_Optimization_Target_Projection
	#tag Property, Flags = &h0
		Gantry_Angle As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Iso_X As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Iso_Y As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Iso_Z As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Max_depth As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Max_field_X As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Max_field_Y As Single = 0
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Gantry_Angle"
			Group="Behavior"
			InitialValue="0"
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
			Name="Iso_X"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Iso_Y"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Iso_Z"
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
			Name="Max_depth"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Max_field_X"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Max_field_Y"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
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
	#tag EndViewBehavior
End Class
#tag EndClass
