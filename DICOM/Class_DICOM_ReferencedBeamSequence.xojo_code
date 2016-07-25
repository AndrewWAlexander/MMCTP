#tag Class
Protected Class Class_DICOM_ReferencedBeamSequence
	#tag Property, Flags = &h0
		BeamDose As single
	#tag EndProperty

	#tag Property, Flags = &h0
		BeamMeterset As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Beam_Dose_Point As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Referencedbeamnumber As integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BeamDose"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BeamMeterset"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Beam_Dose_Point"
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
			Name="Referencedbeamnumber"
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
