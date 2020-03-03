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
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MLC_Direction"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MLC_File"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MLC_Type"
			Visible=false
			Group="Behavior"
			InitialValue="Static"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Model"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Model_Type"
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
			Name="NumberofFields"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberofLeafPairs"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Sinogram_Parser"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Source_to_MLC"
			Visible=false
			Group="Behavior"
			InitialValue="0"
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
			Name="Tolerance"
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
	#tag EndViewBehavior
End Class
#tag EndClass
