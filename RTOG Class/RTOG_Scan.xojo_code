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
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bytes_per_Pixel"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="changed"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CT_A"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CT_Air"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CT_O"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CT_Offset"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CT_W"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CT_Water"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_SOP_Instance_UID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="File_num"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Grid_Units_Height"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Grid_Units_Width"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Grid_U_H"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Grid_U_W"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
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
			Name="Image_Modality"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Image_T"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxPixel"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinPixel"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
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
			Name="Num_D"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Num_Dimensions"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Num_R"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Num_Representation"
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
			Name="Scan_date"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="scan_t"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="scan_type"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size_D1"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size_D2"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size_of_Dimension1"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size_of_Dimension2"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Slice_T"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Slice_Thickness"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
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
		#tag ViewProperty
			Name="X_Off"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="X_Offset"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y_0ff"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y_offset"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Z_V"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Z_Value"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
