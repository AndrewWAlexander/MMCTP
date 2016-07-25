#tag Class
Protected Class Class_DICOM_Plan_BlockSequence
	#tag Property, Flags = &h0
		BlockData As String
	#tag EndProperty

	#tag Property, Flags = &h0
		BlockNumber As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		BlockNumberOfPoints As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		BlockThickness As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		BlockTrayID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		BlockType As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Material As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SourToBlockDistance As Single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BlockData"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BlockNumber"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BlockNumberOfPoints"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BlockThickness"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BlockTrayID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BlockType"
			Group="Behavior"
			Type="String"
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
			Name="Material"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SourToBlockDistance"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
