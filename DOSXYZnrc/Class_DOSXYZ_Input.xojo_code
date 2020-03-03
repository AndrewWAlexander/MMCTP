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
		calflag As Integer = 0
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
		i_muidx_out As Single = 1
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
		the_shared_lib As String
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
			Visible=false
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BEAM_SIZE"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DENSITY"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dflag"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="doseprint"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dose_to_water"
			Visible=false
			Group="Behavior"
			InitialValue="1"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_3ddose_detected"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_3ddose_downloaded"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_3ddose_finish_Time"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_auto_queue"
			Visible=false
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_average_error"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_calculate"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_CPU_time"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_desired_average_error"
			Visible=false
			Group="Behavior"
			InitialValue="1"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_dose"
			Visible=false
			Group="Behavior"
			InitialValue="1"
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_error_math_error"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_error_math_hist"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_full_run"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_jobs"
			Visible=false
			Group="Behavior"
			InitialValue="8"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_MU_BS"
			Visible=false
			Group="Behavior"
			InitialValue="100"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_Non_CT"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_num_active_jobs"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_num_histories"
			Visible=false
			Group="Behavior"
			InitialValue="40000000"
			Type="int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_pegs_file"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_progress"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_queue"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_Shell"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_Shell_Index"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_simulation_error"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_start_Date"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_test_histories"
			Visible=false
			Group="Behavior"
			InitialValue="20000"
			Type="int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_test_run"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_test_run_now"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dsource"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dsurround1"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dsurround2"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dsurround3"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dsurround4"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECUTIN"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="egsphant_path"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ein"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="enflag"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ESAVE_GLOBAL"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ESTEPM"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="e_split"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FILNAM"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IDAT"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ihowfarless"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IL"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IMAX"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IMAX_Group_Min"
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
			Name="INSEED1"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="INSEED2"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IPARALLEL"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IPHANT"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IQIN"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IREJECT"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRESTART"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ISMOOTH"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="isource"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IU"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IWATCH"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IZSCAN"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IZSCAN_X1"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IZSCAN_X2"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IZSCAN_Y1"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IZSCAN_Y2"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IZSCAN_Z1"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IZSCAN_Z2"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="I_bit_filter"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="i_dbs"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="i_muidx_out"
			Visible=false
			Group="Behavior"
			InitialValue="1"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="JL"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="JMAX"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="JMAX_Group_Min"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="JU"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="KL"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="KMAX"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="KMAX_Group_Min"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="KU"
			Visible=false
			Group="Behavior"
			InitialValue="0"
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
			Name="Max20"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MEDIUM"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="medsur"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MMCTP_auto"
			Visible=false
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="mode"
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
			Name="nang"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NBIT1"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NBIT2"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NCASE"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NMED"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NRCYCL"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="nset"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="n_split"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PARNUM"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="path11"
			Visible=false
			Group="Behavior"
			InitialValue="/home/marc/egs_beam/dosxyznrc/index_file.mlc"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PCUT"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="run_started"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="r_dbs"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ssd"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ssd_dbs"
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
			Name="the_beam_code"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="the_input_file"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="the_pegs_file"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="the_shared_lib"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="the_vcu_code"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="the_vcu_input_file"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TIMMAX"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TITLE"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="tomo_field_width"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="tomo_ipp"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="tomo_phi"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="tomo_phicol"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="tomo_pitch"
			Visible=false
			Group="Behavior"
			InitialValue="0.25"
			Type="Single"
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
			Name="TotalTime"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="xcol"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="xinl"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="xinu"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="xiso"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ycol"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="yinl"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="yinu"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="yiso"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="zeroairdose"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ziso"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="z_dbs"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="calflag"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
