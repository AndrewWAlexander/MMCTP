#tag Class
Protected Class Class_VMC_Inputfile
	#tag Property, Flags = &h0
		Auto_Determine As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		auto_shell As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		BEAMnrc_INPUT As String
	#tag EndProperty

	#tag Property, Flags = &h0
		BEAMnrc_PEGS As String
	#tag EndProperty

	#tag Property, Flags = &h0
		BEAMWEIGHT As SINGLe = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		BremPhotons As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Calculate As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		CHANGESAD As single
	#tag EndProperty

	#tag Property, Flags = &h0
		COLLANGLE As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Coll_Width_X As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Coll_Width_Y As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		DEVICEKEY As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DEVICETYPE As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		dose As single = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		dose_to_water As single = 1.01
	#tag EndProperty

	#tag Property, Flags = &h0
		downloaded_d3d As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		downloaded_hed As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Ecut As single = 0.2
	#tag EndProperty

	#tag Property, Flags = &h0
		GANTRYANGLE_TF As string
	#tag EndProperty

	#tag Property, Flags = &h0
		GANTRYANGLE_Value1 As single
	#tag EndProperty

	#tag Property, Flags = &h0
		GANTRYANGLE_Value2 As single
	#tag EndProperty

	#tag Property, Flags = &h0
		IRREGULAR_Num As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IRREGULAR_X(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		IRREGULAR_Y(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ISOCENTERDIST As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ISOCENTERx As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ISOCENTERy As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ISOCENTERz As single
	#tag EndProperty

	#tag Property, Flags = &h0
		NominalEnergy As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Normtype_1 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Normtype_Value As single
	#tag EndProperty

	#tag Property, Flags = &h0
		num_batches As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		num_further_rep As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		num_histories As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		num_hist_rep As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PCut As single = 0.01
	#tag EndProperty

	#tag Property, Flags = &h0
		PriCharge As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		progress As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		queue As string
	#tag EndProperty

	#tag Property, Flags = &h0
		RefPointx As single
	#tag EndProperty

	#tag Property, Flags = &h0
		RefPointy As single
	#tag EndProperty

	#tag Property, Flags = &h0
		RefPointz As single
	#tag EndProperty

	#tag Property, Flags = &h0
		rndseed1 As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		rndseed2 As Integer = 2
	#tag EndProperty

	#tag Property, Flags = &h0
		rndseed3 As Integer = 3
	#tag EndProperty

	#tag Property, Flags = &h0
		rndseed4 As Integer = 4
	#tag EndProperty

	#tag Property, Flags = &h0
		Shell_Index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		SimTime As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Start_Time As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Start_Time_Seconds As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		TABLEANGLE As single
	#tag EndProperty

	#tag Property, Flags = &h0
		uncertainty As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_started As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Write3dDose As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Auto_Determine"
			Visible=false
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="auto_shell"
			Visible=false
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BEAMnrc_INPUT"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BEAMnrc_PEGS"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BEAMWEIGHT"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="SINGLe"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BremPhotons"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Calculate"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CHANGESAD"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="COLLANGLE"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Coll_Width_X"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Coll_Width_Y"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DEVICEKEY"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DEVICETYPE"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dose"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dose_to_water"
			Visible=false
			Group="Behavior"
			InitialValue="1.01"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="downloaded_d3d"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="downloaded_hed"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Ecut"
			Visible=false
			Group="Behavior"
			InitialValue="0.2"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="GANTRYANGLE_TF"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GANTRYANGLE_Value1"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="GANTRYANGLE_Value2"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
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
			Name="IRREGULAR_Num"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ISOCENTERDIST"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ISOCENTERx"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ISOCENTERy"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ISOCENTERz"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
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
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NominalEnergy"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Normtype_1"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Normtype_Value"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="num_batches"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="num_further_rep"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="num_histories"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="num_hist_rep"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PCut"
			Visible=false
			Group="Behavior"
			InitialValue="0.01"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PriCharge"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="progress"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="queue"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RefPointx"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RefPointy"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RefPointz"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="rndseed1"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="rndseed2"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="rndseed3"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="rndseed4"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Shell_Index"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SimTime"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Start_Time"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Start_Time_Seconds"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
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
			Name="TABLEANGLE"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
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
			Name="uncertainty"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_started"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Write3dDose"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
