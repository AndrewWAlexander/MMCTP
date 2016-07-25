#tag Class
Protected Class Class_DOSXYZ_Input
	#tag Property, Flags = &h0
		angfixed(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		angmax(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		angmin(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		AutoShell As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		BEAM_SIZE As single
	#tag EndProperty

	#tag Property, Flags = &h0
		DENSITY As single
	#tag EndProperty

	#tag Property, Flags = &h0
		dflag As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		doseprint As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		dose_to_water As single = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_3ddose_detected As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_3ddose_downloaded As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_3ddose_finish_Time As String
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_auto_queue As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_average_error As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_calculate As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_CPU_time As single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_desired_average_error As single = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_dose As double = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_error_math_error As single
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_error_math_hist As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_full_run As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_jobs As Integer = 4
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_MU_BS As Single = 100
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_Non_CT As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_num_active_jobs As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_num_histories As int64 = 40000000
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_pegs_file As string
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_progress As single
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_queue As string
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_Shell As string
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_Shell_Index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_simulation_error As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_start_Date As string
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_test_histories As int64 = 20000
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_test_run As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_test_run_now As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		dsource As single
	#tag EndProperty

	#tag Property, Flags = &h0
		dsources(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		dsurround1 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		dsurround2 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		dsurround3 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		dsurround4 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		DYNARC(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUTIN As single
	#tag EndProperty

	#tag Property, Flags = &h0
		EGSnrc As class_EGSnrc_Inputs
	#tag EndProperty

	#tag Property, Flags = &h0
		egsphant_path As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ein As single
	#tag EndProperty

	#tag Property, Flags = &h0
		enflag As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ESAVE_GLOBAL As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ESTEPM As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		e_split As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		FILNAM As string
	#tag EndProperty

	#tag Property, Flags = &h0
		IDAT As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ihowfarless As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IL As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IMAX As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IMAX_Bound(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		IMAX_Group(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		IMAX_Group_Min As single
	#tag EndProperty

	#tag Property, Flags = &h0
		IMAX_Group_Num(-1) As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		INSEED1 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		INSEED2 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IPARALLEL As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IPHANT As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IQIN As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IREJECT As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IRESTART As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ISMOOTH As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		isource As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		isox(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		isoy(0) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		isoz(0) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		IU As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ivary(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IWATCH As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IZSCAN As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IZSCAN_X1 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IZSCAN_X2 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IZSCAN_Y1 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IZSCAN_Y2 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IZSCAN_Z1 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IZSCAN_Z2 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		I_bit_filter As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		i_dbs As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		JL As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		JMAX As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		JMAX_Bound(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		JMAX_Group(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		JMAX_Group_Min As single
	#tag EndProperty

	#tag Property, Flags = &h0
		JMAX_Group_Num(-1) As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		JU As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		KL As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		KMAX As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		KMAX_Bound(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		KMAX_Group(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		KMAX_Group_Min As single
	#tag EndProperty

	#tag Property, Flags = &h0
		KMAX_Group_Num(-1) As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		KU As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		LATBit(22) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Max20 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		MEDIUM As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		medsur As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		MMCTP_auto As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		mode As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		muIndex(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		nang As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		NBIT1 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NBIT2 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NCASE As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ngang(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NMED As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		NMedium(-1) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		NRCYCL As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		nset As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		n_split As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		pang(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		PARNUM As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		path11 As String = "/home/marc/egs_beam/dosxyznrc/index_file.mlc"
	#tag EndProperty

	#tag Property, Flags = &h0
		PCUT As single
	#tag EndProperty

	#tag Property, Flags = &h0
		pgang(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		phi(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		phicol(0) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		run_started As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		r_dbs As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ssd As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ssd_dbs As single
	#tag EndProperty

	#tag Property, Flags = &h0
		theta(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		the_beam_code As string
	#tag EndProperty

	#tag Property, Flags = &h0
		the_input_file As string
	#tag EndProperty

	#tag Property, Flags = &h0
		the_pegs_file As string
	#tag EndProperty

	#tag Property, Flags = &h0
		the_vcu_code As String
	#tag EndProperty

	#tag Property, Flags = &h0
		the_vcu_input_file As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TIMMAX As single
	#tag EndProperty

	#tag Property, Flags = &h0
		TITLE As string
	#tag EndProperty

	#tag Property, Flags = &h0
		tomo_field_width As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		tomo_ipp As Single = 0.25
	#tag EndProperty

	#tag Property, Flags = &h0
		tomo_phi As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		tomo_phicol As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		tomo_pitch As Single = 0.25
	#tag EndProperty

	#tag Property, Flags = &h0
		TotalTime As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		xcol As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		xinl As single
	#tag EndProperty

	#tag Property, Flags = &h0
		xinu As single
	#tag EndProperty

	#tag Property, Flags = &h0
		xiso As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ycol As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		yinl As single
	#tag EndProperty

	#tag Property, Flags = &h0
		yinu As single
	#tag EndProperty

	#tag Property, Flags = &h0
		yiso As single
	#tag EndProperty

	#tag Property, Flags = &h0
		zeroairdose As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ziso As single
	#tag EndProperty

	#tag Property, Flags = &h0
		z_dbs As single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AutoShell"
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BEAM_SIZE"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DENSITY"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dflag"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="doseprint"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dose_to_water"
			Group="Behavior"
			InitialValue="1"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_3ddose_detected"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_3ddose_downloaded"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_3ddose_finish_Time"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_auto_queue"
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_average_error"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_calculate"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_CPU_time"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_desired_average_error"
			Group="Behavior"
			InitialValue="1"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_dose"
			Group="Behavior"
			InitialValue="1"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_error_math_error"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_error_math_hist"
			Group="Behavior"
			Type="Int64"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_full_run"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_jobs"
			Group="Behavior"
			InitialValue="8"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_MU_BS"
			Group="Behavior"
			InitialValue="100"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_Non_CT"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_num_active_jobs"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_num_histories"
			Group="Behavior"
			InitialValue="40000000"
			Type="int64"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_pegs_file"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_progress"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_queue"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_Shell"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_Shell_Index"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_simulation_error"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_start_Date"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_test_histories"
			Group="Behavior"
			InitialValue="20000"
			Type="int64"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_test_run"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_test_run_now"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dsource"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dsurround1"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dsurround2"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dsurround3"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dsurround4"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECUTIN"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egsphant_path"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ein"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="enflag"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ESAVE_GLOBAL"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ESTEPM"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="e_split"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FILNAM"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IDAT"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ihowfarless"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IL"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IMAX"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IMAX_Group_Min"
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
			Name="INSEED1"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="INSEED2"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IPARALLEL"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IPHANT"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IQIN"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IREJECT"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRESTART"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ISMOOTH"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isource"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IU"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IWATCH"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IZSCAN"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IZSCAN_X1"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IZSCAN_X2"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IZSCAN_Y1"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IZSCAN_Y2"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IZSCAN_Z1"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IZSCAN_Z2"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="I_bit_filter"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="i_dbs"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="JL"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="JMAX"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="JMAX_Group_Min"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="JU"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="KL"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="KMAX"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="KMAX_Group_Min"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="KU"
			Group="Behavior"
			InitialValue="0"
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
			Name="Max20"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MEDIUM"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="medsur"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MMCTP_auto"
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mode"
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
			Name="nang"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NBIT1"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NBIT2"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NCASE"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NMED"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NRCYCL"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="nset"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="n_split"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PARNUM"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="path11"
			Group="Behavior"
			InitialValue="/home/marc/egs_beam/dosxyznrc/index_file.mlc"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PCUT"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="run_started"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="r_dbs"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ssd"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ssd_dbs"
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
			Name="the_beam_code"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="the_input_file"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="the_pegs_file"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="the_vcu_code"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="the_vcu_input_file"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TIMMAX"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TITLE"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="tomo_field_width"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="tomo_ipp"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="tomo_phi"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="tomo_phicol"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="tomo_pitch"
			Group="Behavior"
			InitialValue="0.25"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TotalTime"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="xcol"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="xinl"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="xinu"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="xiso"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ycol"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="yinl"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="yinu"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="yiso"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="zeroairdose"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ziso"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="z_dbs"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
