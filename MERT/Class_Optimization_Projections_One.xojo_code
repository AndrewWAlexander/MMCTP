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
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="centermass_y"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="External_Distance"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Gantry_Angle"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
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
			Name="iso_x"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="iso_y"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="iso_Z"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
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
			Name="Max_x1"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Max_x2"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Max_X_Field_Width"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Max_y1"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Max_y2"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Max_Z_Field_Opening"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="single"
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
			Name="Projection"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Picture"
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
			Name="Target_Z_Minus"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Target_Z_Pluse"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
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
			Name="weight_center"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="weight_distance"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="weight_total_coverage"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="weight_X_Field_Size"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="weight_Z_Field_Size"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="single"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
