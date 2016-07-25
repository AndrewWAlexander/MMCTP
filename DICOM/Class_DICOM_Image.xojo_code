#tag Class
Protected Class Class_DICOM_Image
	#tag Property, Flags = &h0
		AccessionNumber As String
	#tag EndProperty

	#tag Property, Flags = &h0
		AcquisitionDate As String
	#tag EndProperty

	#tag Property, Flags = &h0
		AcquisitionGroupLength As String
	#tag EndProperty

	#tag Property, Flags = &h0
		AcquisitionNumber As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		AcquisitionTime As String
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
		Columns As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		DerivationDescription As String
	#tag EndProperty

	#tag Property, Flags = &h0
		FrameOfReferenceUID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Head_in_out As string
	#tag EndProperty

	#tag Property, Flags = &h0
		highbit As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IdentifyingGroupLength As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ImageOrientationPatient As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ImagePositionPatient As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ImagePresenatationGroupLength As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ImagesinAcquisition As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Image_Type As string
	#tag EndProperty

	#tag Property, Flags = &h0
		InstanceCreationDate As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		InstanceCreationTime As string
	#tag EndProperty

	#tag Property, Flags = &h0
		InstanceNumber As Integer = 2
	#tag EndProperty

	#tag Property, Flags = &h0
		Kvp As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Manufacturer As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ManufacureModelName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		MediaStorageSOPClassUID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		MediaStorageSOPInstanceUID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Modality As string
	#tag EndProperty

	#tag Property, Flags = &h0
		PatientBirthDate As string
	#tag EndProperty

	#tag Property, Flags = &h0
		PatientGroupLength As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PatientID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		PatientName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PatientOrientation As string
	#tag EndProperty

	#tag Property, Flags = &h0
		patient_position As string
	#tag EndProperty

	#tag Property, Flags = &h0
		PhotometricInterpretation As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Physician As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PixelData(-1) As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PixelDataGroupLength As Integer
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
		ReferringPhysician As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RelationshipGroupLength As String
	#tag EndProperty

	#tag Property, Flags = &h0
		rescaleintercept As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		rescaleslope As single
	#tag EndProperty

	#tag Property, Flags = &h0
		row As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		SampleperPixel As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Scantype As string
	#tag EndProperty

	#tag Property, Flags = &h0
		SeriesDate As String
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
		SeriesTime As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sex As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SliceLocation As single
	#tag EndProperty

	#tag Property, Flags = &h0
		SliceThickness As single
	#tag EndProperty

	#tag Property, Flags = &h0
		SmallestImagePixelValue As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		SoftwareVersions As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SOPClassUID As string = "1.2.840.10008.5.1.4.1.1.2"
	#tag EndProperty

	#tag Property, Flags = &h0
		SOPInstanceUID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		StudyDate As string
	#tag EndProperty

	#tag Property, Flags = &h0
		StudyDescription As string
	#tag EndProperty

	#tag Property, Flags = &h0
		StudyID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		StudyInstanceUID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StudyTime As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Untitled As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		WinLevel As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		WinWidth As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AccessionNumber"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcquisitionDate"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcquisitionGroupLength"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcquisitionNumber"
			Group="Behavior"
			Type="Integer"
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
			Name="Columns"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DerivationDescription"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameOfReferenceUID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Head_in_out"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="highbit"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IdentifyingGroupLength"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="ImagePresenatationGroupLength"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImagesinAcquisition"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Image_Type"
			Group="Behavior"
			Type="string"
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
			InitialValue="0"
			Type="Integer"
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
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Kvp"
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
			Name="Manufacturer"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ManufacureModelName"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MediaStorageSOPClassUID"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MediaStorageSOPInstanceUID"
			Group="Behavior"
			Type="string"
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
			Name="PatientBirthDate"
			Group="Behavior"
			Type="string"
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
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PatientName"
			Group="Behavior"
			InitialValue="0"
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
			Name="patient_position"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PhotometricInterpretation"
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
			Name="PixelDataGroupLength"
			Group="Behavior"
			Type="Integer"
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
			Name="rescaleintercept"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="rescaleslope"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="row"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SampleperPixel"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Scantype"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SeriesDate"
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
			Name="SeriesTime"
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
			Name="SliceLocation"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SliceThickness"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SmallestImagePixelValue"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SoftwareVersions"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SOPClassUID"
			Group="Behavior"
			InitialValue="1.2.840.10008.5.1.4.1.1.2"
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
			Name="StudyDate"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StudyDescription"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StudyID"
			Group="Behavior"
			Type="string"
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
		#tag ViewProperty
			Name="Untitled"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WinLevel"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WinWidth"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
