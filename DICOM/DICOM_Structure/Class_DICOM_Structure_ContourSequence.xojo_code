#tag Class
Protected Class Class_DICOM_Structure_ContourSequence
	#tag Property, Flags = &h0
		contourimagesequence(-1) As class_DICOM_structure_ContourImageSequence
	#tag EndProperty

	#tag Property, Flags = &h0
		data As string
	#tag EndProperty

	#tag Property, Flags = &h0
		GeometricType As String
	#tag EndProperty

	#tag Property, Flags = &h0
		numberofcontourpoints As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		OffsetVector As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SlabThickness As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="data"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GeometricType"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="numberofcontourpoints"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OffsetVector"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SlabThickness"
			Group="Behavior"
			Type="String"
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
