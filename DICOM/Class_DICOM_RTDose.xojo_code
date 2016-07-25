#tag Class
Protected Class Class_DICOM_RTDose
	#tag Property, Flags = &h0
		AccessionNumber As String
	#tag EndProperty

	#tag Property, Flags = &h0
		AcquistionDate As String
	#tag EndProperty

	#tag Property, Flags = &h0
		AcquistionTime As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Age As String
	#tag EndProperty

	#tag Property, Flags = &h0
		BitsAllocated As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		BitsStored As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		columns As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		DoseComment As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DoseGridScaling As single
	#tag EndProperty

	#tag Property, Flags = &h0
		DoseSummationType As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DoseType As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DoseUnits As string
	#tag EndProperty

	#tag Property, Flags = &h0
		FileMetaInformationVersion As String
	#tag EndProperty

	#tag Property, Flags = &h0
		FrameIncrementPointer As String
	#tag EndProperty

	#tag Property, Flags = &h0
		FrameOfReferenceUID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		GridFrameOffsetVector As string
	#tag EndProperty

	#tag Property, Flags = &h0
		HighBit As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ImageOrientationPatient As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ImagePositionPatient As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ImagesInAcquistion As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		ImageType As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Image_Presentation_Group_Length As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		ImplementationClassUID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		InstanceCreationDate As string
	#tag EndProperty

	#tag Property, Flags = &h0
		InstanceCreationTime As string
	#tag EndProperty

	#tag Property, Flags = &h0
		InstanceNumber As String
	#tag EndProperty

	#tag Property, Flags = &h0
		InstitutionName As string
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
		MediaStorageSOPInstanceUID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Modality As string
	#tag EndProperty

	#tag Property, Flags = &h0
		NumberofFrames As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PatientBirthDate As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PatientID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PatientName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PatientOrientation As string
	#tag EndProperty

	#tag Property, Flags = &h0
		PhotometrixInter As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Physician As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PixelData(-1) As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		PixelDatastr As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PixelRepresentation As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PixelSpacing As string
	#tag EndProperty

	#tag Property, Flags = &h0
		PositionReferenceIndicator As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ReferencedRTPSequence(-1) As Class_DICOM_RTDose_RTPlanSequence
	#tag EndProperty

	#tag Property, Flags = &h0
		ReferencedStructureSetSeq(-1) As Class_DICOM_RTDose_StructureSetSequence
	#tag EndProperty

	#tag Property, Flags = &h0
		ReferringPhysicianName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Rows As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		SamplesPerPixel As String
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
		SliceLocation As single
	#tag EndProperty

	#tag Property, Flags = &h0
		SliceThickness As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Smallest_Image_Pixel_Value As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Software_Version As string
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
		StudyDescription As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StudyID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StudyInstanceUID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		StudyTime As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TransferSyntaxUID As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AccessionNumber"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcquistionDate"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcquistionTime"
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
			Name="BitsAllocated"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BitsStored"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="columns"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoseComment"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoseGridScaling"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoseSummationType"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoseType"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoseUnits"
			Group="Behavior"
			InitialValue="0"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FileMetaInformationVersion"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameIncrementPointer"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameOfReferenceUID"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GridFrameOffsetVector"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HighBit"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageOrientationPatient"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImagePositionPatient"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImagesInAcquistion"
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageType"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Image_Presentation_Group_Length"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImplementationClassUID"
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
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InstanceCreationTime"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InstanceNumber"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InstitutionName"
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
			Name="Manufacturer"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Manufacturer_Model_Name"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MediaStorageSOPClassUID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MediaStorageSOPInstanceUID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Modality"
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
			Name="NumberofFrames"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PatientBirthDate"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="PatientOrientation"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PhotometrixInter"
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
			Name="PixelDatastr"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PixelRepresentation"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PixelSpacing"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PositionReferenceIndicator"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReferringPhysicianName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="rows"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SamplesPerPixel"
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
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SeriesNumber"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Sex"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SliceLocation"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SliceThickness"
			Group="Behavior"
			InitialValue="0"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Smallest_Image_Pixel_Value"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Software_Version"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SOPClassUID"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SOPInstanceUID"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StationName"
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
			Type="string"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TransferSyntaxUID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
