#tag Class
Protected Class Class_Optimization_Projections_One
	#tag Property, Flags = &h0
		centermass_x As single
	#tag EndProperty

	#tag Property, Flags = &h0
		centermass_y As single
	#tag EndProperty

	#tag Property, Flags = &h0
		External_Distance As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Gantry_Angle As single
	#tag EndProperty

	#tag Property, Flags = &h0
		iso_x As single
	#tag EndProperty

	#tag Property, Flags = &h0
		iso_y As single
	#tag EndProperty

	#tag Property, Flags = &h0
		iso_Z As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Max_x1 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Max_x2 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Max_X_Field_Width As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Max_y1 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Max_y2 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Largest Field size in Z for the current beam
		#tag EndNote
		Max_Z_Field_Opening As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Projection As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		Target_Z_Minus As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Target_Z_Pluse As single
	#tag EndProperty

	#tag Property, Flags = &h0
		weight_center As single
	#tag EndProperty

	#tag Property, Flags = &h0
		weight_distance As single
	#tag EndProperty

	#tag Property, Flags = &h0
		weight_total_coverage As single
	#tag EndProperty

	#tag Property, Flags = &h0
		weight_X_Field_Size As single
	#tag EndProperty

	#tag Property, Flags = &h0
		weight_Z_Field_Size As single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="centermass_x"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="centermass_y"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="External_Distance"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Gantry_Angle"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iso_x"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iso_y"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iso_Z"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Max_x1"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Max_x2"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Max_X_Field_Width"
			Group="Behavior"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Max_y1"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Max_y2"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Max_Z_Field_Opening"
			Group="Behavior"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Projection"
			Group="Behavior"
			InitialValue="0"
			Type="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Target_Z_Minus"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Target_Z_Pluse"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="weight_center"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="weight_distance"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="weight_total_coverage"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="weight_X_Field_Size"
			Group="Behavior"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="weight_Z_Field_Size"
			Group="Behavior"
			Type="single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
