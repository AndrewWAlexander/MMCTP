#tag Class
Protected Class Class_DICOM_Structure_ROI_Obv_Sequence
	#tag Property, Flags = &h0
		Ob_num As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ReferencedROI_Num As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ROI_Inter As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ROI_Phys_Prop_Sequ(-1) As Class_DICOM_Structure_ROI_Physical_Prop_Seq
	#tag EndProperty

	#tag Property, Flags = &h0
		RT_ROI_Inter_Type As String
	#tag EndProperty


	#tag ViewBehavior
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Ob_num"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReferencedROI_Num"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ROI_Inter"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RT_ROI_Inter_Type"
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
	#tag EndViewBehavior
End Class
#tag EndClass
