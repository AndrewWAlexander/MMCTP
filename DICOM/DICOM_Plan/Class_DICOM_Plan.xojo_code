#tag Class
Protected Class Class_DICOM_Plan
	#tag Property, Flags = &h0
		AccessionNumber As String
	#tag EndProperty

	#tag Property, Flags = &h0
		AcquisitionGroupLength As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Age As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ApprovalStatus As String
	#tag EndProperty

	#tag Property, Flags = &h0
		BeamSequence(-1) As Class_DICOM_Plan_BeamSequence
	#tag EndProperty

	#tag Property, Flags = &h0
		Birthdate As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DoseReferenceSequence(-1) As Class_DICOM_Plan_DoseReferenceSequence
	#tag EndProperty

	#tag Property, Flags = &h0
		FractionGroupSequence(-1) As CLass_DICOM_Plan_Fractiongroup
	#tag EndProperty

	#tag Property, Flags = &h0
		FrameOfReferenceUID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ImageOrientation As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ImagePosition As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ImplementationClassUID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		InstanceCreationDate As String
	#tag EndProperty

	#tag Property, Flags = &h0
		InstanceCreationTime As string
	#tag EndProperty

	#tag Property, Flags = &h0
		InstanceNumber As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Manufacturer As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Manufacturer_Model_Name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		MediaStorageSOPClassUID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		MediaStorageSOPInstanceUID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Modality As String
	#tag EndProperty

	#tag Property, Flags = &h0
		OperatorsName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PatientGroupLength As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PatientID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		PatientName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		PatientSetupSequence(-1) As Class_DICOM_Plan_PatientSetupSequence
	#tag EndProperty

	#tag Property, Flags = &h0
		PhysicianofRecord As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PositionReferenceIndicator As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Prescription_Description As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ReferencedDoseSequence(-1) As Class_DICOM_Plan_ReferencedDoseSequence
	#tag EndProperty

	#tag Property, Flags = &h0
		ReferencedSOPInstanceUID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ReferencedStructureSetSequence(-1) As Class_DICOM_Plan_ReferencedStructureSetSequence
	#tag EndProperty

	#tag Property, Flags = &h0
		ReferringPhysicianName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		RelationshipGroupLength As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ReviewDate As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ReviewerName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ReviewTime As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RTPlan_Date As string
	#tag EndProperty

	#tag Property, Flags = &h0
		RTPlan_Description As string
	#tag EndProperty

	#tag Property, Flags = &h0
		RTPlan_Geometry As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RTPlan_Label As string
	#tag EndProperty

	#tag Property, Flags = &h0
		RTPlan_Name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		RTPlan_Time As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SeriesDescription As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SeriesInstanceUID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		SeriesNumber As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Sex As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SoftwareVersions As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SOPClassUID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		SOPInstanceUID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		StationName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StudyDate As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StudyDescription As string
	#tag EndProperty

	#tag Property, Flags = &h0
		StudyID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		StudyInstanceUID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		StudyTime As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TransferSyntaxUID As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AccessionNumber"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcquisitionGroupLength"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Age"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ApprovalStatus"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Birthdate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameOfReferenceUID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageOrientation"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImagePosition"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
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
			Name="InstanceCreationDate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InstanceCreationTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InstanceNumber"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="Manufacturer"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Manufacturer_Model_Name"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MediaStorageSOPInstanceUID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Modality"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="OperatorsName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PatientGroupLength"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PatientID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PatientName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PhysicianofRecord"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PositionReferenceIndicator"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Prescription_Description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReferencedSOPInstanceUID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReferringPhysicianName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RelationshipGroupLength"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReviewDate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReviewerName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReviewTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RTPlan_Date"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RTPlan_Description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RTPlan_Geometry"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RTPlan_Label"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RTPlan_Name"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RTPlan_Time"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SeriesDescription"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SeriesInstanceUID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SeriesNumber"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Sex"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SoftwareVersions"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SOPClassUID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SOPInstanceUID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StationName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StudyDate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StudyDescription"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StudyID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StudyInstanceUID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StudyTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImplementationClassUID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MediaStorageSOPClassUID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TransferSyntaxUID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
