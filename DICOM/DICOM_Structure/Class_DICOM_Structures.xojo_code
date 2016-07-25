#tag Class
Protected Class Class_DICOM_Structures
	#tag Property, Flags = &h0
		AcquisitionGroupLength As String
	#tag EndProperty

	#tag Property, Flags = &h0
		AcquisitionTime As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Age As String
	#tag EndProperty

	#tag Property, Flags = &h0
		IdentifyingGroupLength As String
	#tag EndProperty

	#tag Property, Flags = &h0
		InstanceCreationDate As String
	#tag EndProperty

	#tag Property, Flags = &h0
		InstanceCreationTime As String
	#tag EndProperty

	#tag Property, Flags = &h0
		InstanceNumber As Integer = 3
	#tag EndProperty

	#tag Property, Flags = &h0
		Manufacturer As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ManufacturerModelName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Modality As String = "RTSTRUCT"
	#tag EndProperty

	#tag Property, Flags = &h0
		PatientBirthDate As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PatientGroupLength As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PatientID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PatientName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Physician As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ReferringPhysician As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RelationshipGroupLength As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RFORS(-1) As Class_DICOM_Referenced_Frame_of_Ref_Sequence
	#tag EndProperty

	#tag Property, Flags = &h0
		ROIContourSequence(-1) As Class_DiCOM_Structure_ROContourSequence
	#tag EndProperty

	#tag Property, Flags = &h0
		ROI_Obs_Seq(-1) As Class_DICOM_Structure_ROI_Obv_Sequence
	#tag EndProperty

	#tag Property, Flags = &h0
		SeriesDescription As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SeriesInstanceUID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SeriesNumber As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SetROISequence(-1) As class_DiCOM_Structure_SetROISequence
	#tag EndProperty

	#tag Property, Flags = &h0
		sex As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SoftwareVersion As string
	#tag EndProperty

	#tag Property, Flags = &h0
		SOPClassUID As String = "1.2.840.10008.5.1.4.1.1.481.3"
	#tag EndProperty

	#tag Property, Flags = &h0
		SOPInstanceUID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StructureSetDescription As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StructureSetLabel As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StructureSetName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StrutureSetDate As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StrutureSetTime As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StudyDate As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StudyDescription As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StudyID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StudyInstanceUID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StudyTime As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Tomo3006 As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Untitled As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AcquisitionGroupLength"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcquisitionTime"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Age"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IdentifyingGroupLength"
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
			Name="InstanceCreationDate"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InstanceCreationTime"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InstanceNumber"
			Group="Behavior"
			InitialValue="3"
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
			Name="Manufacturer"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ManufacturerModelName"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Modality"
			Group="Behavior"
			InitialValue="RTSTRUCT"
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
			Name="PatientBirthDate"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PatientGroupLength"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PatientID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PatientName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Physician"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReferringPhysician"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RelationshipGroupLength"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SeriesDescription"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SeriesInstanceUID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SeriesNumber"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sex"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SoftwareVersion"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SOPClassUID"
			Group="Behavior"
			InitialValue="1.2.840.10008.5.1.4.1.1.481.3"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SOPInstanceUID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StructureSetDescription"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StructureSetLabel"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StructureSetName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StrutureSetDate"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StrutureSetTime"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StudyDate"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StudyDescription"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StudyID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StudyInstanceUID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StudyTime"
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
			Name="Tomo3006"
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
		#tag ViewProperty
			Name="Untitled"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
