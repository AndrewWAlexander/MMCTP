#tag Class
Protected Class Class_DICOM_Plan_ControlPointSequence
	#tag Property, Flags = &h0
		BeamLimitingDevicePositionSequence(-1) As CLAss_DICOM_Plan_BeamLimitingDevicePositionSequence
	#tag EndProperty

	#tag Property, Flags = &h0
		BeamLimitingDeviceRotationDirection As String = "NONE"
	#tag EndProperty

	#tag Property, Flags = &h0
		Beamlimitngdeviceangle As single = 0.0
	#tag EndProperty

	#tag Property, Flags = &h0
		ControlPointIndex As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		CumulativeMetersetWeight As single
	#tag EndProperty

	#tag Property, Flags = &h0
		DoseRateSet As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		GantryAngle As single
	#tag EndProperty

	#tag Property, Flags = &h0
		GantryRotationDirection As String
	#tag EndProperty

	#tag Property, Flags = &h0
		IsocenterPosition As string
	#tag EndProperty

	#tag Property, Flags = &h0
		NominalBeamEnergy As single
	#tag EndProperty

	#tag Property, Flags = &h0
		PatientSupportAngle As single = 0.0
	#tag EndProperty

	#tag Property, Flags = &h0
		PatientSupportRotationDirection As String = "NONE"
	#tag EndProperty

	#tag Property, Flags = &h0
		ReferencedDoseReferenceSequence(-1) As Class_DICOM_Plan_ReferencedDoseReferenceSequence
	#tag EndProperty

	#tag Property, Flags = &h0
		SSD As single
	#tag EndProperty

	#tag Property, Flags = &h0
		TableTopEccentricAngle As String = "0.0"
	#tag EndProperty

	#tag Property, Flags = &h0
		TableTopEccentricRotationDirection As String = "NONE"
	#tag EndProperty

	#tag Property, Flags = &h0
		TableTopLateralPosition As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TableTopLongitudinalPosition As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TableTopVerticalPosition As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TomoSinogram As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TomoType As String
	#tag EndProperty

	#tag Property, Flags = &h0
		WedgePositionSequence(-1) As CLass_DICOM_PLan_WedgePositionSequence
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BeamLimitingDeviceRotationDirection"
			Group="Behavior"
			InitialValue="NONE"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Beamlimitngdeviceangle"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ControlPointIndex"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CumulativeMetersetWeight"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoseRateSet"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GantryAngle"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GantryRotationDirection"
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
			Name="IsocenterPosition"
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
			Name="NominalBeamEnergy"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PatientSupportAngle"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PatientSupportRotationDirection"
			Group="Behavior"
			InitialValue="NONE"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SSD"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TableTopEccentricAngle"
			Group="Behavior"
			InitialValue="0.0"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TableTopEccentricRotationDirection"
			Group="Behavior"
			InitialValue="NONE"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TableTopLateralPosition"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TableTopLongitudinalPosition"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TableTopVerticalPosition"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TomoSinogram"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TomoType"
			Group="Behavior"
			Type="String"
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
