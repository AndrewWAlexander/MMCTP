#tag Class
Protected Class RTOG_Seed_Geometry
	#tag Property, Flags = &h0
		changed As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Date_I As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Date_of_Implant As string
	#tag EndProperty

	#tag Property, Flags = &h0
		File_Num As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Iso As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Isotope As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_of_Seeds As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_R As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_Rep As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_S As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Plan_I As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Plan_ID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Seed_M As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Seed_Model As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Seed_S As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Seed_Strength As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Strength_U As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Strength_Units As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="changed"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Date_I"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Date_of_Implant"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="File_Num"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Iso"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Isotope"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
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
			Name="Num_of_Seeds"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Num_R"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Num_Rep"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Num_S"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Plan_I"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Plan_ID"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Seed_M"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Seed_Model"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Seed_S"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Seed_Strength"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Strength_U"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Strength_Units"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
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
