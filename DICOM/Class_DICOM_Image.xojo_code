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
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcquisitionDate"
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
			Name="AcquisitionNumber"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
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
			Name="Columns"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DerivationDescription"
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
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Head_in_out"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="highbit"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
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
			Name="ImagePresenatationGroupLength"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImagesinAcquisition"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Image_Type"
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
			InitialValue="0"
			Type="Integer"
			EditorType=""
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
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Kvp"
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
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ManufacureModelName"
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
			Name="PatientBirthDate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
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
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PatientName"
			Visible=false
			Group="Behavior"
			InitialValue="0"
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
			Name="patient_position"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PhotometricInterpretation"
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
			Name="PixelDataGroupLength"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
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
			Name="rescaleintercept"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="rescaleslope"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="row"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SampleperPixel"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Scantype"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SeriesDate"
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
			Name="SeriesTime"
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
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SmallestImagePixelValue"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
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
			InitialValue="1.2.840.10008.5.1.4.1.1.2"
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
			Name="StudyDate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
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
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StudyTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
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
			Name="Untitled"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="WinLevel"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="WinWidth"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
