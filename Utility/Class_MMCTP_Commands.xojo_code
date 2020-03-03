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
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="beam_num"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="change_dir_done"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="change_FTP_lcd"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="command"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="command_done"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="cutout_refresh"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="cutout_run"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dir"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_dosxyznrc_test"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_download_3ddose"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_download_log"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_egsphant_index"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_egsphant_Upload"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_inputfile"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_refresh"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_refresh_3ddose"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_refresh_One"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dos_run"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="egsnrc_folder_path"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_addphsp1"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_addphsp_check"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_beamdp"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_download_egslst"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_exbeam"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_phsp1_copy"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_phsp_list"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_Read_Phsp_Properties"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_refresh"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_refresh_egsrun"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_refresh_log"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_run"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_run_script"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_search"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_uploade_inp"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_w_index"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="exit_done"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FTP_Get_File"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FTP_lcd"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FTP_Local_Path"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FTP_Now"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FTP_Put_file"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FTP_Remote_Path"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="inpfilename"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
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
			Name="Microseconds_Start"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="double"
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
			Name="OutPut"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OutPutWindow"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="shell_Test"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Shell_Test_FTP"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="started"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
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
			Name="vmc_dmx_index"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_dmx_upload"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_download_d3d"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_download_hed"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_download_log"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_refresh_d3d"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_refresh_pro"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_run"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_uploadScript"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
