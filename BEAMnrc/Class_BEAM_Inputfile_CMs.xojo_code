#tag Class
Protected Class Class_BEAM_Inputfile_CMs
	#tag Property, Flags = &h0
		APPLICAT As Class_BEAM_CM_APPLICAT
	#tag EndProperty

	#tag Property, Flags = &h0
		ARCCHM As Class_BEAM_CM_ARCCHM
	#tag EndProperty

	#tag Property, Flags = &h0
		BLOCK As Class_BEAM_CM_BLOCK
	#tag EndProperty

	#tag Property, Flags = &h0
		Bottom_z As single
	#tag EndProperty

	#tag Property, Flags = &h0
		CM_Identifier As string
	#tag EndProperty

	#tag Property, Flags = &h0
		CM_Names As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DYNJAWS As Class_BEAM_CM_DYNJAWS
	#tag EndProperty

	#tag Property, Flags = &h0
		DYNVMLC As Class_Beam_CM_DYNVMLC
	#tag EndProperty

	#tag Property, Flags = &h0
		FLATFILT As Class_BEAM_CM_FLATFILT
	#tag EndProperty

	#tag Property, Flags = &h0
		JAWS As Class_BEAM_CM_JAWS
	#tag EndProperty

	#tag Property, Flags = &h0
		MLC As Class_BEAM_CM_MLC
	#tag EndProperty

	#tag Property, Flags = &h0
		MLCE As Class_BEAM_CM_MLCE
	#tag EndProperty

	#tag Property, Flags = &h0
		MLCQ As Class_BEAM_CM_MLCQ
	#tag EndProperty

	#tag Property, Flags = &h0
		PYRAMIDS As Class_BEAM_CM_PYRAMIDS
	#tag EndProperty

	#tag Property, Flags = &h0
		SLABS As Class_BEAM_CM_SLABS
	#tag EndProperty

	#tag Property, Flags = &h0
		SYNCMLCE As Class_BEAM_CM_SYNCMLCE
	#tag EndProperty

	#tag Property, Flags = &h0
		text(-1) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		TOMO As Class_BEAM_CM_TOMOMLC
	#tag EndProperty

	#tag Property, Flags = &h0
		VARMLC As Class_BEAM_CM_VARMLC
	#tag EndProperty

	#tag Property, Flags = &h0
		WEDGE As Class_BEAM_CM_WEDGE
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Bottom_z"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CM_Identifier"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CM_Names"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
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
