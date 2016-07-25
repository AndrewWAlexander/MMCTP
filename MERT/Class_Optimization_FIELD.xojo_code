#tag Class
Protected Class Class_Optimization_FIELD
	#tag Property, Flags = &h0
		Beam_Description As String
	#tag EndProperty

	#tag Property, Flags = &h0
		d3d_x_off As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		d3d_y_off As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		d3d_z_off As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		dmx_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		egsphant_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Energy As String
	#tag EndProperty

	#tag Property, Flags = &h0
		FIdID_Name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			1 = Unknown BEAM
			
			2 = VMC dose
			
			3 = DOSXYZnrc dose
		#tag EndNote
		FldID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Gantry_Angle As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Iso_X As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Iso_Y As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Iso_Z As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Mode As String
	#tag EndProperty

	#tag Property, Flags = &h0
		MUs_Grad As single
	#tag EndProperty

	#tag Property, Flags = &h0
		MUs_Jaw As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		MUs_SA As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Norm_Value As double
	#tag EndProperty

	#tag Property, Flags = &h0
		NumofRay As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		numX As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		numY As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PB_Index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		RTOG_Beam As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		RTOG_Plan As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Use As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		VolumeStats(-1) As Class_Optimization_FIELD_Stat
	#tag EndProperty

	#tag Property, Flags = &h0
		Weight_Grad As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Weight_JAW As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Weight_NLO As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Weight_SA As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		X1 As single
	#tag EndProperty

	#tag Property, Flags = &h0
		X2 As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Y1 As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Y2 As single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Beam_Description"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="d3d_x_off"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="d3d_y_off"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="d3d_z_off"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dmx_index"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egsphant_index"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Energy"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FIdID_Name"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FldID"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Gantry_Angle"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Iso_X"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Iso_Y"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Iso_Z"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Mode"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MUs_Grad"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MUs_Jaw"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MUs_SA"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Norm_Value"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumofRay"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="numX"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="numY"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PB_Index"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RTOG_Beam"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RTOG_Plan"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
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
			Name="Use"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Weight_Grad"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Weight_JAW"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Weight_NLO"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Weight_SA"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="X1"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="X2"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y1"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y2"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
