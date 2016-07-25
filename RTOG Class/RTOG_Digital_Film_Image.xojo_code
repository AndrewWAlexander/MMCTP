#tag Class
Protected Class RTOG_Digital_Film_Image
	#tag Property, Flags = &h0
		Beam_D As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Beam_Discription As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Beam_n As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Beam_num As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Bytes_P As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Bytes_Per_Pixel As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		changed As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		File_Num As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Film_D As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Film_Date As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Film_N As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Film_Num As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Film_T As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Film_Type As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_D As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_of_Dimension As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_R As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_Rep As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Pixel(-1) As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Plan_I As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Plan_ID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Size_D1 As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Size_D2 As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Size_of_Dimension1 As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Size_of_Dimension2 As integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Beam_D"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Beam_Discription"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Beam_n"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Beam_num"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bytes_P"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bytes_Per_Pixel"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="changed"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="File_Num"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Film_D"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Film_Date"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Film_N"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Film_Num"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Film_T"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Film_Type"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
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
			Name="Num_D"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Num_of_Dimension"
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
			Name="Size_D1"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size_D2"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size_of_Dimension1"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size_of_Dimension2"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
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
