#tag Class
Protected Class Class_MLC
	#tag Property, Flags = &h0
		Abutting_Gap As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Fields(-1) As class_MLC_Positions
	#tag EndProperty

	#tag Property, Flags = &h0
		LeafBoundaries(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			// 0= Y
			// 1 = X
		#tag EndNote
		MLC_Direction As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		MLC_File As String
	#tag EndProperty

	#tag Property, Flags = &h0
		MLC_Type As string = "Static"
	#tag EndProperty

	#tag Property, Flags = &h0
		Model As String
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			// 0 for leafpairs
			
			// 1 for binary model
		#tag EndNote
		Model_Type As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NumberofFields As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NumberofLeafPairs As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			// 0 do nothing
			// 1 do simple parsering
		#tag EndNote
		Sinogram_Parser As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Source_to_MLC As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Tolerance As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Abutting_Gap"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MLC_Direction"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MLC_File"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MLC_Type"
			Group="Behavior"
			InitialValue="Static"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Model"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Model_Type"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberofFields"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberofLeafPairs"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Sinogram_Parser"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Source_to_MLC"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tolerance"
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
	#tag EndViewBehavior
End Class
#tag EndClass
