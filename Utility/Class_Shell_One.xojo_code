#tag Class
Protected Class Class_Shell_One
	#tag Method, Flags = &h0
		Function Queue_Submit(queuevalue as string, inputfile as String) As String
		  Dim command as String
		  
		  
		  if batch="at"  then
		    command="at -q d -f "+inputfile+" -m  now"
		    
		  elseif batch="nqs"  then
		    if queuevalue="" Then
		      queuevalue="medium"
		    end
		    command="qsub -q "+queuevalue+" -x "+inputfile
		    
		  elseif batch="keg" or batch="pbs"  then
		    command="qsub -V "+inputfile
		    
		  elseif batch="moab" Then
		    command="msub -V "+inputfile
		    
		  elseif batch="SLURM" Then
		    command="sbatch  "+inputfile+ " -srun"
		    
		  else
		    MsgBox "Error: No command line for batch = "+batch
		  end
		  
		  Return command
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		ActiveJobs As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		bash As string = "bash"
	#tag EndProperty

	#tag Property, Flags = &h0
		batch As string = "NQS"
	#tag EndProperty

	#tag Property, Flags = &h0
		BeamnrcJobs As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Beamnrc_v As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DosxyznrcJobs As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		egsnrc_folder_path As string = "/Users/"
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			0 = FTP
			1 = SCP
			/
		#tag EndNote
		File_Transfer_Index As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		ftplinefeed As string = "ftp>"
	#tag EndProperty

	#tag Property, Flags = &h0
		linefeed As string = "$"
	#tag EndProperty

	#tag Property, Flags = &h0
		listfiles As string = "ls -l"
	#tag EndProperty

	#tag Property, Flags = &h0
		listfiles_column_num As Integer = 5
	#tag EndProperty

	#tag Property, Flags = &h0
		listfiles_dateA As Integer = 6
	#tag EndProperty

	#tag Property, Flags = &h0
		listfiles_dateB As Integer = 7
	#tag EndProperty

	#tag Property, Flags = &h0
		listfiles_name As Integer = 9
	#tag EndProperty

	#tag Property, Flags = &h0
		listfiles_time As Integer = 8
	#tag EndProperty

	#tag Property, Flags = &h0
		login As string
	#tag EndProperty

	#tag Property, Flags = &h0
		machine As string
	#tag EndProperty

	#tag Property, Flags = &h0
		MaxJobs As Integer = 5
	#tag EndProperty

	#tag Property, Flags = &h0
		online As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			1 = MAC
			2 = Linux
		#tag EndNote
		OS As Integer = 2
	#tag EndProperty

	#tag Property, Flags = &h0
		password As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Pending_jobs As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Queue(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		QueueTime(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		tail_after As string
	#tag EndProperty

	#tag Property, Flags = &h0
		tail_c As string = "tail"
	#tag EndProperty

	#tag Property, Flags = &h0
		title As string
	#tag EndProperty

	#tag Property, Flags = &h0
		VMCJobs As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_folder As string
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_path As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ActiveJobs"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="bash"
			Group="Behavior"
			InitialValue="bash"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="batch"
			Group="Behavior"
			InitialValue="NQS"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BeamnrcJobs"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Beamnrc_v"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DosxyznrcJobs"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egsnrc_folder_path"
			Group="Behavior"
			InitialValue="/Users/"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="File_Transfer_Index"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ftplinefeed"
			Group="Behavior"
			InitialValue="ftp>"
			Type="string"
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
			Name="linefeed"
			Group="Behavior"
			InitialValue=">"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="listfiles"
			Group="Behavior"
			InitialValue="ls -l"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="listfiles_column_num"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="listfiles_dateA"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="listfiles_dateB"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="listfiles_name"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="listfiles_time"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="login"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="machine"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxJobs"
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
			Name="online"
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OS"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="password"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pending_jobs"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="tail_after"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="tail_c"
			Group="Behavior"
			InitialValue="tail"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="title"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VMCJobs"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_folder"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="vmc_path"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
