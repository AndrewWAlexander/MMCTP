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
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcquisitionTime"
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
			Name="IdentifyingGroupLength"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
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
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InstanceNumber"
			Visible=false
			Group="Behavior"
			InitialValue="3"
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
			Name="Manufacturer"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ManufacturerModelName"
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
			InitialValue="RTSTRUCT"
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
			Name="PatientBirthDate"
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
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PatientID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PatientName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Physician"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReferringPhysician"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
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
			Type="String"
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
			Name="sex"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SoftwareVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SOPClassUID"
			Visible=false
			Group="Behavior"
			InitialValue="1.2.840.10008.5.1.4.1.1.481.3"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SOPInstanceUID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StructureSetDescription"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StructureSetLabel"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StructureSetName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StrutureSetDate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StrutureSetTime"
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
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StudyID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StudyInstanceUID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
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
			Name="Tomo3006"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
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
		#tag ViewProperty
			Name="Untitled"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
