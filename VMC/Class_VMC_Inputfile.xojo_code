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
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="auto_shell"
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BEAMnrc_INPUT"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BEAMnrc_PEGS"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BEAMWEIGHT"
			Group="Behavior"
			InitialValue="0"
			Type="SINGLe"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BremPhotons"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Calculate"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CHANGESAD"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="COLLANGLE"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Coll_Width_X"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Coll_Width_Y"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DEVICEKEY"
			Group="Behavior"
			InitialValue="0"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DEVICETYPE"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dose"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dose_to_water"
			Group="Behavior"
			InitialValue="1.01"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="downloaded_d3d"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="downloaded_hed"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Ecut"
			Group="Behavior"
			InitialValue="0.2"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GANTRYANGLE_TF"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GANTRYANGLE_Value1"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GANTRYANGLE_Value2"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRREGULAR_Num"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ISOCENTERDIST"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ISOCENTERx"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ISOCENTERy"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ISOCENTERz"
			Group="Behavior"
			InitialValue="0"
			Type="single"
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
			Name="NominalEnergy"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Normtype_1"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Normtype_Value"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="num_batches"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="num_further_rep"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="num_histories"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="num_hist_rep"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PCut"
			Group="Behavior"
			InitialValue="0.01"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PriCharge"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="progress"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="queue"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RefPointx"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RefPointy"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RefPointz"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="rndseed1"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="rndseed2"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="rndseed3"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="rndseed4"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Shell_Index"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SimTime"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Start_Time"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Start_Time_Seconds"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TABLEANGLE"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="uncertainty"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_started"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Write3dDose"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
