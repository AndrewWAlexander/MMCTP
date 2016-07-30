#tag Class
Protected Class Class_DICOM_Plan_BeamSequence
	#tag Property, Flags = &h0
		ApplicatorSQ(-1) As Class_DICOM_Plan_ApplicatorSequence
	#tag EndProperty

	#tag Property, Flags = &h0
		BeamDescrip As string
	#tag EndProperty

	#tag Property, Flags = &h0
		BeamLimitingDevice(-1) As CLass_DiCOM_Plan_BeamLimitingDeviceSequence
	#tag EndProperty

	#tag Property, Flags = &h0
		BeamName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		BeamNumber As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		BeamType As string
	#tag EndProperty

	#tag Property, Flags = &h0
		BlockSQ(-1) As Class_DICOM_Plan_BlockSequence
	#tag EndProperty

	#tag Property, Flags = &h0
		ControlPointSequence(-1) As CLass_DICOM_Plan_ControlPointSequence
	#tag EndProperty

	#tag Property, Flags = &h0
		FinalCimulativeMetersetWeight As Single = 1.0
	#tag EndProperty

	#tag Property, Flags = &h0
		High_Dose_Technique As String
	#tag EndProperty

	#tag Property, Flags = &h0
		InstitutionalDepartmentName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		InstitutionName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ManufactureModelname As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Manufacturer As string
	#tag EndProperty

	#tag Property, Flags = &h0
		NumberofBlocks As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		NumberofBoli As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		NumberofCompensators As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		NumberofControlPoints As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NumberofWedges As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PrimaryDosimeterUnit As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RadiationType As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ReferenceDoseSequence(-1) As Class_DICOM_Plan_ReferencedDoseSequence
	#tag EndProperty

	#tag Property, Flags = &h0
		SAD As single
	#tag EndProperty

	#tag Property, Flags = &h0
		TreatmentDeliveryType As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TreatmentMachineName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		WedgeSequence(-1) As Class_DiCOM_Plan_WedgeSequence
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BeamDescrip"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BeamName"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BeamNumber"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BeamType"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FinalCimulativeMetersetWeight"
			Group="Behavior"
			InitialValue="1.0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="High_Dose_Technique"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InstitutionalDepartmentName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InstitutionName"
			Group="Behavior"
			Type="String"
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
			Name="ManufactureModelname"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Manufacturer"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberofBlocks"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberofBoli"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberofCompensators"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberofControlPoints"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberofWedges"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PrimaryDosimeterUnit"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RadiationType"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SAD"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TreatmentDeliveryType"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TreatmentMachineName"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
