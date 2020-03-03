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
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcquistionDate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcquistionTime"
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
			Name="BitsAllocated"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BitsStored"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="columns"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoseComment"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoseGridScaling"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoseSummationType"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoseType"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoseUnits"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FileMetaInformationVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameIncrementPointer"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameOfReferenceUID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GridFrameOffsetVector"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HighBit"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageOrientationPatient"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImagePositionPatient"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImagesInAcquistion"
			Visible=false
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageType"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Image_Presentation_Group_Length"
			Visible=false
			Group="Behavior"
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
			Type="string"
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
			Name="InstitutionName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
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
			Name="MediaStorageSOPClassUID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MediaStorageSOPInstanceUID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Modality"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
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
			Name="NumberofFrames"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
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
			Name="PatientOrientation"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PhotometrixInter"
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
			Name="PixelDatastr"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PixelRepresentation"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PixelSpacing"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
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
			Name="ReferringPhysicianName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="rows"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SamplesPerPixel"
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
			Name="SliceLocation"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SliceThickness"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Smallest_Image_Pixel_Value"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Software_Version"
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
			Name="TransferSyntaxUID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
