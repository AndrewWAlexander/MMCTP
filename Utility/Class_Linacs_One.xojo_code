#tag Class
Protected Class Class_Linacs_One
	#tag Property, Flags = &h0
		Applicator(-1) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		BEAMnrcApplicatorCM(-1) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		BEAMnrcApplicatorLabel(-1) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Energy As String
	#tag EndProperty

	#tag Property, Flags = &h0
		MC_BEAMnrc_input_file As string
	#tag EndProperty

	#tag Property, Flags = &h0
		MC_BEAMnrc_part_density As single = 500000
	#tag EndProperty

	#tag Property, Flags = &h0
		MC_BEAMnrc_path(-1) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		MC_BEAMnrc_pegs4 As string
	#tag EndProperty

	#tag Property, Flags = &h0
		MC_dosxyz_dose(-1) As double
	#tag EndProperty

	#tag Property, Flags = &h0
		MC_VMC_dose(-1) As double
	#tag EndProperty

	#tag Property, Flags = &h0
		MLC As Class_Linacs_MLC
	#tag EndProperty

	#tag Property, Flags = &h0
		Mode As string
	#tag EndProperty

	#tag Property, Flags = &h0
		RT_name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		STT_Table As String
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			1 = Varian
			2 = Siemens
			3 = Other
			4= Tomotherapy
			5 = Elekta
			6 = Cyber
		#tag EndNote
		Type As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		Wedges(-1) As class_linacs_Wedge
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Energy"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MC_BEAMnrc_input_file"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MC_BEAMnrc_part_density"
			Group="Behavior"
			InitialValue="500000"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MC_BEAMnrc_pegs4"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Mode"
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
			Name="RT_name"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="STT_Table"
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
			Name="Type"
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
