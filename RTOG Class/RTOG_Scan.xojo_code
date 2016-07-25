#tag Class
Protected Class RTOG_Scan
	#tag Method, Flags = &h0
		Function clone() As RTOG_Scan
		  return self
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Bytes_P As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Bytes_per_Pixel As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		changed As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		CT_A As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		CT_Air As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		CT_O As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		CT_Offset As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		CT_W As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		CT_Water As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		DICOM_SOP_Instance_UID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		File_num As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Grid_Units_Height As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Grid_Units_Width As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Grid_U_H As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Grid_U_W As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Head_in_out As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Image_Modality As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Image_T As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			CT,MRI,US etc..
		#tag EndNote
		Image_Type As string
	#tag EndProperty

	#tag Property, Flags = &h0
		MaxPixel As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		MinPixel As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_D As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_Dimensions As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_R As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_Representation As string
	#tag EndProperty

	#tag Property, Flags = &h0
		patient_position As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Scan_date As string
	#tag EndProperty

	#tag Property, Flags = &h0
		scan_t As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			axial,sag,coronal
		#tag EndNote
		scan_type As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Size_D1 As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Size_D2 As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Size_of_Dimension1 As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Size_of_Dimension2 As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Slice_T As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Slice_Thickness As single
	#tag EndProperty

	#tag Property, Flags = &h0
		voxel(-1) As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		WinLevel As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		WinWidth As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		X_Off As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		X_Offset As double
	#tag EndProperty

	#tag Property, Flags = &h0
		Y_0ff As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Y_offset As double
	#tag EndProperty

	#tag Property, Flags = &h0
		Z_V As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Z_Value As single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Bytes_P"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bytes_per_Pixel"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="changed"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CT_A"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CT_Air"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CT_O"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CT_Offset"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CT_W"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CT_Water"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_SOP_Instance_UID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="File_num"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Grid_Units_Height"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Grid_Units_Width"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Grid_U_H"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Grid_U_W"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Head_in_out"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Image_Modality"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Image_T"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxPixel"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinPixel"
			Group="Behavior"
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
			Name="Num_D"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Num_Dimensions"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Num_R"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Num_Representation"
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
			Name="Scan_date"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="scan_t"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="scan_type"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size_D1"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size_D2"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size_of_Dimension1"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size_of_Dimension2"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Slice_T"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Slice_Thickness"
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
		#tag ViewProperty
			Name="X_Off"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="X_Offset"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y_0ff"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y_offset"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Z_V"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Z_Value"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
