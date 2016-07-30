#tag Class
Protected Class Class_BEAM_Inputfile
	#tag Method, Flags = &h0
		Sub Calculate_Bottom_Z()
		  //--------------------------------------
		  // Determines the last layer in the simulation
		  //-------------------------------------
		  Dim i ,k,num_slabs as Integer
		  Dim bottom as Single
		  
		  
		  for i=0 to UBound(CMs)
		    if cms(i).CM_Names="SLABS" Then
		      bottom=cms(i).SLABS.zmin
		      for k=1 to cms(i).SLABS.N_SLABS
		        bottom=bottom+cms(i).SLABS.zthink(k-1)
		      next
		      CMs(i).Bottom_z=bottom
		    ElseIf cms(i).CM_Names="BLOCK" Then
		      CMs(i).Bottom_z=cms(i).BLOCK.ZMAX_BLOCK
		    elseif cms(i).CM_Names="ARCCHM" Then
		      CMs(i).Bottom_z=cms(i).ARCCHM.ZMAX
		    end
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_CMs(beam_index as Integer, ff as FolderItem)
		  //------------------------------------------
		  // Reads the text CM data and places it into arrays
		  //
		  //------------------------------------------
		  Dim x as integer
		  Dim oneCM as Class_BEAM_Inputfile_CMs
		  //------------------------------------------
		  
		  For x=0 to UBound(Cms)
		    if CMs(x).CM_Names="DYNVMLC" or CMs(x).CM_Names="SYNCVMLC"  Then //---------------------------------------------------------------
		      oneCM=CMs(x)
		      oneCM.DYNVMLC=new Class_BEAM_CM_DYNVMLC
		      oneCM.DYNVMLC.Read(CMs(x).text)
		      
		    ElseIf CMs(x).CM_Names="APPLICAT" Then //---------------------------------------------------------------
		      CMs(x).APPLICAT = new Class_BEAM_CM_APPLICAT
		      CMs(x).Applicat.Read(CMs(x).text)
		      
		    ElseIf CMs(x).CM_Names="BLOCK" Then //---------------------------------------------------------------
		      CMs(x).BLOCK = new Class_BEAM_CM_BLOCK
		      CMs(x).BLOCK.Read(CMs(x).text)
		      CMs(x).Bottom_z=cms(x).BLOCK.ZMAX_BLOCK
		      
		    ElseIf CMs(x).CM_Names="DYNJAWS" or  CMs(x).CM_Names="SYNCJAWS" Then //---------------------------------------------------------------
		      oneCM=CMs(x)
		      oneCM.DYNJAWS=new Class_BEAM_CM_DYNJAWS
		      oneCM.DYNJAWS.Read(CMs(x).text,ff)
		      
		    ElseIf CMs(x).CM_Names="FLATFILT" Then //---------------------------------------------------------------
		      oneCM=CMs(x)
		      CMs(x).FLATFILT=new Class_BEAM_CM_FLATFILT
		      CMs(x).FLATFILT.read(oneCM)
		      
		    ElseIf CMs(x).CM_Names="JAWS" Then //---------------------------------------------------------------
		      CMs(x).JAWS=new Class_BEAM_CM_JAWS
		      CMs(x).JAWS.read(CMs(x).text)
		      
		    ElseIf CMs(x).CM_Names="MLC" Then //---------------------------------------------------------------
		      CMs(x).MLC=new Class_BEAM_CM_MLC
		      CMs(x).MLC.read(CMs(x).text,CMs(x).CM_Identifier)
		      
		    ElseIf CMs(x).CM_Names="MLCE" Then //---------------------------------------------------------------
		      CMs(x).MLCE=new Class_BEAM_CM_MLCE
		      CMs(x).MLCE.read(CMs(x).text,CMs(x).CM_Identifier)
		      
		    ElseIf CMs(x).CM_Names="SYNCMLCE" Then //---------------------------------------------------------------
		      CMs(x).SYNCMLCE=new Class_BEAM_CM_SYNCMLCE
		      CMs(x).SYNCMLCE.read(CMs(x).text,CMs(x).CM_Identifier)
		      
		    ElseIf CMs(x).CM_Names="MLCQ" Then //---------------------------------------------------------------
		      CMs(x).MLCQ=new Class_BEAM_CM_MLCQ
		      CMs(x).MLCQ.read(CMs(x).text,CMs(x).CM_Identifier)
		      
		    ElseIf CMs(x).CM_Names="TOMOMLC" Then //---------------------------------------------------------------
		      CMs(x).TOMO=new Class_BEAM_CM_TOMOMLC
		      CMs(x).TOMO.Read_CM(CMs(x).text)
		      
		    ElseIf CMs(x).CM_Names="VARMLC" Then //---------------------------------------------------------------
		      CMs(x).VARMLC=new Class_BEAM_CM_VARMLC
		      cms(x).VARMLC.Read_VARMLC(CMs(x).text)
		      
		    ElseIf CMs(x).CM_Names="PYRAMIDS" Then //---------------------------------------------------------------
		      CMs(x).PYRAMIDS=new Class_BEAM_CM_PYRAMIDS
		      CMs(x).PYRAMIDS.Read(CMs(x).text)
		      
		    ElseIf CMs(x).CM_Names="SLABS" Then //---------------------------------------------------------------
		      CMs(x).SLABS=new Class_BEAM_CM_SLABS
		      CMs(x).SLABS.read(CMs(x).text)
		      
		    ElseIf CMs(x).CM_Names="WEDGE" Then //---------------------------------------------------------------
		      oneCM=CMs(x)
		      oneCM.WEDGE=new Class_BEAM_CM_WEDGE
		      oneCM.WEDGE.Read(OneCM.text)
		      
		    ElseIf CMs(x).CM_Names="ARCCHM" Then //---------------------------------------------------------------
		      oneCM=CMs(x)
		      oneCM.ARCCHM=new Class_BEAM_CM_ARCCHM
		      oneCM.ARCCHM.Read(OneCM.text)
		      
		    ElseIf CMs(x).CM_Names="CONESTAK" Then //---------------------------------------------------------------
		      oneCM=CMs(x)
		      oneCM.CONESTAK=new Class_BEAM_CM_CONESTAK
		      oneCM.CONESTAK.Read(OneCM.text,CMs(x).CM_Identifier)
		      
		      
		    end
		  next
		  Calculate_Bottom_Z
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		augmented_rangeR As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		auto_mmctp As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		CMs(-1) As Class_BEAM_Inputfile_CMs
	#tag EndProperty

	#tag Property, Flags = &h0
		DISTZ As single
	#tag EndProperty

	#tag Property, Flags = &h0
		DSB_Delta As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT As single = 0.7
	#tag EndProperty

	#tag Property, Flags = &h0
		EGSnrc As Class_EGSnrc_Inputs
	#tag EndProperty

	#tag Property, Flags = &h0
		EIN As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ESAVE_Global As single = 4
	#tag EndProperty

	#tag Property, Flags = &h0
		Filnam As String
	#tag EndProperty

	#tag Property, Flags = &h0
		FS As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		GAMMA As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IBRSPL As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ICMDBS As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		icm_contam As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ICM_SPLIT As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IDAT As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IFORCE As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Incedient_Particles As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		INIT_ICM As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		IOUTSP As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IO_OPT As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IPARALLEL As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IQIN As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iq_contam As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IRADDBS As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		IRESTART As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IRRLTT As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ISOURC As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ISRCDBS As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ISTORE As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		itdose_on As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IWATCH As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IZLAST As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		i_dsb As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		LATCH_OPTION As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		lnexc As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		LNINC As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		L_N_EXC(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Max_CPU_hr As Integer = 500
	#tag EndProperty

	#tag Property, Flags = &h0
		medium As string
	#tag EndProperty

	#tag Property, Flags = &h0
		mlc_path As string
	#tag EndProperty

	#tag Property, Flags = &h0
		MONOEN As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NBRSPL As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NFCMAX As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NFCMIN As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NFMAX As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NFMIN As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NRCYCL As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NSC(-1) As Class_BEAM_Inputfile_NSC_Planes
	#tag EndProperty

	#tag Property, Flags = &h0
		NSC_PLANES As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		nsplit_elec As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		nsplit_phot As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PARNUM As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PCUT As single = 0.01
	#tag EndProperty

	#tag Property, Flags = &h0
		range_rejection As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		RBEAM As single
	#tag EndProperty

	#tag Property, Flags = &h0
		RBEAMY As single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		RMINBM As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		RNG_1 As Integer = 97
	#tag EndProperty

	#tag Property, Flags = &h0
		RNG_2 As Integer = 33
	#tag EndProperty

	#tag Property, Flags = &h0
		RSRCDBS As single
	#tag EndProperty

	#tag Property, Flags = &h0
		sigma_src19 As single
	#tag EndProperty

	#tag Property, Flags = &h0
		SPCNAM As string
	#tag EndProperty

	#tag Property, Flags = &h0
		SSD As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		SSDSRCDBS As single
	#tag EndProperty

	#tag Property, Flags = &h0
		title As string
	#tag EndProperty

	#tag Property, Flags = &h0
		UINC As single
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			0 = no
			1 = yes
		#tag EndNote
		USE_REJPLN As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		VINC As single
	#tag EndProperty

	#tag Property, Flags = &h0
		WINC As single
	#tag EndProperty

	#tag Property, Flags = &h0
		XINL As single
	#tag EndProperty

	#tag Property, Flags = &h0
		XINU As single
	#tag EndProperty

	#tag Property, Flags = &h0
		YINL As single
	#tag EndProperty

	#tag Property, Flags = &h0
		YINU As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ZPLANEDBS As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ZRR_DBS As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ZSMAX As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ZSMIN As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ZSRCDBS As single
	#tag EndProperty

	#tag Property, Flags = &h0
		z_of_front As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Z_REJPLN As Single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="augmented_rangeR"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="auto_mmctp"
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DISTZ"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DSB_Delta"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECUT"
			Group="Behavior"
			InitialValue="0.7"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EIN"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ESAVE_Global"
			Group="Behavior"
			InitialValue="4"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Filnam"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FS"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GAMMA"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IBRSPL"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ICMDBS"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="icm_contam"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ICM_SPLIT"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IDAT"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IFORCE"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Incedient_Particles"
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="INIT_ICM"
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IOUTSP"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IO_OPT"
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
			Name="IQIN"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iq_contam"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRADDBS"
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
			Name="IRRLTT"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ISOURC"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ISRCDBS"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ISTORE"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="itdose_on"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IWATCH"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IZLAST"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="i_dsb"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LATCH_OPTION"
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
			Name="lnexc"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LNINC"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Max_CPU_hr"
			Group="Behavior"
			InitialValue="500"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="medium"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mlc_path"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MONOEN"
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
			Name="NBRSPL"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NFCMAX"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NFCMIN"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NFMAX"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NFMIN"
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
			Name="NSC_PLANES"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="nsplit_elec"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="nsplit_phot"
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
			Name="PCUT"
			Group="Behavior"
			InitialValue="0.01"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="range_rejection"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RBEAM"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RBEAMY"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RMINBM"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RNG_1"
			Group="Behavior"
			InitialValue="97"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RNG_2"
			Group="Behavior"
			InitialValue="33"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RSRCDBS"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sigma_src19"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SPCNAM"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SSD"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SSDSRCDBS"
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
			Name="UINC"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="USE_REJPLN"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VINC"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WINC"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="XINL"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="XINU"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="YINL"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="YINU"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZPLANEDBS"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZRR_DBS"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZSMAX"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZSMIN"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZSRCDBS"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="z_of_front"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Z_REJPLN"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
