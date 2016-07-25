#tag Class
Protected Class Class_MMCTP_Commands
	#tag Property, Flags = &h0
		Bash As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		beam_num As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		change_dir_done As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		change_FTP_lcd As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		command As string
	#tag EndProperty

	#tag Property, Flags = &h0
		command_done As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		cutout_refresh As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		cutout_run As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		dir As string
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_dosxyznrc_test As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_download_3ddose As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_download_log As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_egsphant_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_egsphant_Upload As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_inputfile As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_refresh As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_refresh_3ddose As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_refresh_One As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		dos_run As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		egsnrc_folder_path As String
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_addphsp1 As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_addphsp_check As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_beamdp As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_download_egslst As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_exbeam As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_phsp1_copy As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_phsp_list As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_Read_Phsp_Properties As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_refresh As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_refresh_egsrun As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_refresh_log As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_run As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_run_script As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_search As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_uploade_inp As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_w_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		exit_done As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		FTP_Files As folderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		FTP_Get_File As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		FTP_lcd As string
	#tag EndProperty

	#tag Property, Flags = &h0
		FTP_Local_Path As String
	#tag EndProperty

	#tag Property, Flags = &h0
		FTP_Now As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		FTP_Put_file As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		FTP_Remote_Path As String
	#tag EndProperty

	#tag Property, Flags = &h0
		inpfilename As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Microseconds_Start As double
	#tag EndProperty

	#tag Property, Flags = &h0
		OutPut As string
	#tag EndProperty

	#tag Property, Flags = &h0
		OutPutWindow As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		shell As Class_Shell_One
	#tag EndProperty

	#tag Property, Flags = &h0
		shell_Test As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Shell_Test_FTP As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		started As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_dmx_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_dmx_upload As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_download_d3d As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_download_hed As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_download_log As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_refresh_d3d As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_refresh_pro As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_run As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_uploadScript As Boolean = false
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Bash"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="beam_num"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="change_dir_done"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="change_FTP_lcd"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="command"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="command_done"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="cutout_refresh"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="cutout_run"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dir"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_dosxyznrc_test"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_download_3ddose"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_download_log"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_egsphant_index"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_egsphant_Upload"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_inputfile"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_refresh"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_refresh_3ddose"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_refresh_One"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_run"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egsnrc_folder_path"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_addphsp1"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_addphsp_check"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_beamdp"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_download_egslst"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_exbeam"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_phsp1_copy"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_phsp_list"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_Read_Phsp_Properties"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_refresh"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_refresh_egsrun"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_refresh_log"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_run"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_run_script"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_search"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_uploade_inp"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_w_index"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="exit_done"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FTP_Get_File"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FTP_lcd"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FTP_Local_Path"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FTP_Now"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FTP_Put_file"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FTP_Remote_Path"
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
			Name="inpfilename"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Microseconds_Start"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OutPut"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OutPutWindow"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="shell_Test"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Shell_Test_FTP"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="started"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
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
			Name="vmc_dmx_index"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_dmx_upload"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_download_d3d"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_download_hed"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_download_log"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_refresh_d3d"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_refresh_pro"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_run"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_uploadScript"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
