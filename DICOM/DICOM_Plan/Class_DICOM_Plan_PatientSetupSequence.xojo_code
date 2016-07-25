#tag Class
Protected Class Class_DICOM_Plan_PatientSetupSequence
	#tag Property, Flags = &h0
		PatientPosition As string
	#tag EndProperty

	#tag Property, Flags = &h0
		PatientSetupNumber As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		SetupDeviceSequence(-1) As Class_DICOM_Plan_SetupDevice
	#tag EndProperty

	#tag Property, Flags = &h0
		SetupTechnique As string
	#tag EndProperty

	#tag Property, Flags = &h0
		SetupTechniqueDescription As string
	#tag EndProperty


	#tag ViewBehavior
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
			Name="PatientPosition"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PatientSetupNumber"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SetupTechnique"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SetupTechniqueDescription"
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
