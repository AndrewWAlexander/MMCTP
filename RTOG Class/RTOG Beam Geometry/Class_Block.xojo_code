#tag Class
Protected Class Class_Block
	#tag Property, Flags = &h0
		Block_Type As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Material As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Pair(-1) As Class_Block_Pairs
	#tag EndProperty

	#tag Property, Flags = &h0
		SourceToBlockDistance As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Thickness As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Transmission As double
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Block_Type"
			Group="Behavior"
			InitialValue="0"
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
			Name="SourceToBlockDistance"
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
			Name="Thickness"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transmission"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
