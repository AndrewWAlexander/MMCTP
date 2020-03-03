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
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="d3d_x_off"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="d3d_y_off"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="d3d_z_off"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dmx_index"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="egsphant_index"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Energy"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FIdID_Name"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FldID"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Gantry_Angle"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
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
			Name="Iso_X"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Iso_Y"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Iso_Z"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
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
			Name="Mode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MUs_Grad"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MUs_Jaw"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MUs_SA"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
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
			Name="Norm_Value"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumofRay"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="numX"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="numY"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PB_Index"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RTOG_Beam"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RTOG_Plan"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
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
			Name="Use"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Weight_Grad"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Weight_JAW"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Weight_NLO"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Weight_SA"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="X1"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="X2"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y1"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y2"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
