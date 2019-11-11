#tag Class
Protected Class Shell_JASADVH
Inherits Shell
	#tag Event
		Sub DataAvailable()
		  '//-------------------------------
		  '// Interactive Shell for DAO code
		  '//
		  '// Authors
		  '// Andrew Alexanders
		  '//
		  '// Updates
		  '// 2012
		  '// - Save McGill RT after each new beam
		  '//-------------------------------
		  'Dim all,oneline,dmx,temp_file,opt_field,temp,tt(-1),ibeam_old as String
		  'Dim sa_score,x1,x2,y1,y2 as Single
		  'Dim temphist as Int64
		  'Dim Bytes ,i,beamnew_index,id,old_beam_index,ibeam_old_val ,dmx_index,egsphant_index as Integer
		  'Dim beam,beamnew as RTOG_Beam_Geometry
		  'Dim g as FolderItem
		  'Dim onefield as  Class_Optimization_FIELD
		  'Dim hh as Boolean
		  '//-------------------------------
		  '
		  '
		  '
		  'all=me.ReadAll
		  'Window_EMET_Run.EditField_Shellout_Jaw.AppendText all
		  '
		  'if InStr(all,"Adjust beamlet ")> 0 Then
		  'oneline=NthField(all,"Adjust beamlet ",2)
		  'ibeam_old=NthField(oneline," ",1)
		  'ibeam_old_val=val(ibeam_old)
		  'old_beam_index=-2
		  'for i=0 to UBound(gopt.IPbeams)
		  'if gOpt.IPbeams(i).PB_Index=ibeam_old_val+1 Then
		  'old_beam_index=gopt.IPbeams(i).RTOG_Beam
		  'Exit
		  'end
		  'next
		  '
		  'if old_beam_index<0 or old_beam_index>UBound(gRTOG.Plan(Plan_Index).Beam) Then
		  'MsgBox "Error within DAO Jaw program. Cannot matched index of beam to exisiting beam within gopt.IPbeams"
		  'Break
		  'end
		  '
		  'if old_beam_index>=0 and old_beam_index<=UBound(gRTOG.Plan(Plan_Index).Beam) Then
		  'gRTOG.Plan(Plan_Index).Add_Beam
		  'beamnew_index=UBound(gRTOG.Plan(Plan_Index).Beam)
		  'beamnew=gRTOG.Plan(Plan_Index).Beam(UBound(gRTOG.Plan(Plan_Index).Beam))
		  '
		  'oneline=Trim(NthField(oneline,":",2))
		  '
		  'x1=val(NthField(oneline,",",1))
		  'x2=val(NthField(oneline,",",2))
		  'y1=val(NthField(oneline,",",3))
		  'y2=val(NthField(oneline,",",4))
		  '
		  'beam=gRTOG.Plan(Plan_Index).Beam(old_beam_index)
		  '
		  'beamnew.Beam_Num=UBound(gRTOG.Plan(Plan_Index).Beam)+1
		  'beamnew.RT_name=beam.RT_name
		  'beamnew.Beam_Energy=beam.Beam_Energy
		  'beamnew.Nominal_Isocenter=beam.Nominal_Isocenter
		  'beamnew.MU=beam.MU
		  'beamnew.Collimator.Fields(0).Gantry_Angle=Beam.Collimator.Fields(0).Gantry_Angle
		  'beamnew.Collimator.Fields(0).Collimator_Angle=Beam.Collimator.Fields(0).Collimator_Angle
		  'beamnew.Collimator.Fields(0).Couch_Angle=beam.Collimator.Fields(0).Couch_Angle
		  'beamnew.Beam_Mode=beam.Beam_Mode
		  'beamnew.Aperture_ID=beam.Aperture_ID
		  'beamnew.Collimator.Fields(0).isocenter.X=beam.Collimator.Fields(0).isocenter.X
		  'beamnew.Collimator.Fields(0).isocenter.y=beam.Collimator.Fields(0).isocenter.y
		  'beamnew.Collimator.Fields(0).isocenter.z=beam.Collimator.Fields(0).isocenter.z
		  'beamnew.Beam_Description="From "+str(old_beam_index+1)
		  '
		  'beamnew.FLEC.x1=x1
		  'beamnew.FLEC.x2=x2
		  'beamnew.FLEC.y1=y1
		  'beamnew.FLEC.y2=y2
		  '
		  'beamnew.Collimator.fields(0).X1=X1+0.5
		  'beamnew.Collimator.fields(0).X2=X2+0.5
		  'beamnew.Collimator.fields(0).Y1=y1+0.5
		  'beamnew.Collimator.fields(0).Y2=y2+0.5
		  '
		  'hh=gBEAM.Beams(beamnew_index).Get_Plan_Inputfile
		  'MC_Get_Linac_Properties(beamnew_index)
		  '
		  '
		  'onefield=new Class_Optimization_FIELD
		  'onefield.X1=x1
		  'onefield.x2=x2
		  'onefield.y1=y1
		  'onefield.y2=y2
		  'onefield.NumofRay=1
		  'onefield.RTOG_Plan=Plan_Index
		  'onefield.RTOG_Beam=beamnew_index
		  'onefield.PB_Index=gopt.Num_Fields+1
		  'onefield.Iso_X=beam.Collimator.Fields(0).isocenter.X
		  'onefield.Iso_Y=beam.Collimator.Fields(0).isocenter.y
		  'onefield.Iso_z=beam.Collimator.Fields(0).isocenter.z
		  'onefield.Gantry_Angle=Beam.Collimator.Fields(0).Gantry_Angle
		  'onefield.Energy=Beam.Beam_Energy
		  'onefield.Mode=Beam.Beam_Mode
		  '
		  '// Update this once the dose has been downloaded
		  'onefield.Use=false
		  '//gopt.Num_Fields=onefield.PB_Index
		  '
		  '
		  'gopt.IPbeams.Append onefield
		  'gopt.JAW.IBeam_index=UBound(gopt.IPbeams)
		  '
		  '
		  'dmx_index=gopt.JAW.dmx_index
		  'egsphant_index=gopt.JAW.egsphant_index
		  '
		  'if gopt.JAW.Caluclation_Type=1 or  gopt.JAW.Caluclation_Type=0 Then
		  'gVMC.VMC(dmx_index).Initialize_One_Beam(beamnew_index)
		  'onefield.FldID=2
		  'onefield.FIdID_Name=MC_file_name+str(beamnew_index+1)+"00_"+gVMC.VMC(dmx_index).DMX.dmx_name+".d3d"
		  'onefield.d3d_x_off=gVMC.VMC(dmx_index).DMX.x_min
		  'onefield.d3d_y_off=gVMC.VMC(dmx_index).DMX.y_min
		  'onefield.d3d_z_off=gVMC.VMC(dmx_index).DMX.z_min
		  '
		  'if gopt.JAW.Caluclation_Type=0  Then
		  'onefield.Norm_Value=1
		  'gVMC.vmc_Make_Monoenergetic(dmx_index,beamnew_index)
		  'else
		  'onefield.Norm_Value=1
		  'end
		  '
		  '// Update the number of histories to the DJAW window value
		  'gVMC.VMC(dmx_index).BEAMS(beamnew_index).num_histories=val(Window_EMET_Run.EditField_Jaw_VMC_Error.Text)
		  'gVMC.VMC(dmx_index).BEAMS(beamnew_index).calculate=True
		  'gVMC.vmc_Run(dmx_index,beamnew_index)
		  '
		  '
		  'else
		  'onefield.FldID=3
		  'oneline=str(beamnew_index+1)
		  'While Len(oneline)<3
		  'oneline="0"+oneline
		  'Wend
		  'if egsphant_index>UBound(gDOSXYZ.DOSXYZ) Then
		  'egsphant_index=UBound(gDOSXYZ.DOSXYZ)
		  'elseif egsphant_index<0 Then
		  'egsphant_index=0
		  'end
		  'onefield.FIdID_Name=MC_file_name+oneline+"_"+gDOSXYZ.DOSXYZ(egsphant_index).EGSPhantSettings.name+".3ddose"
		  'onefield.Norm_Value=1/gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beamnew_index).dos_dose
		  'gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beamnew_index).dos_jobs=gDOSXYZ.dosxyz_desired_number_of_Jobs
		  'gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beamnew_index).dos_desired_average_error=val(Window_EMET_Run.EditField_Jaw_DOS_Error.Text)
		  'gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beamnew_index).dos_test_histories=val(Window_EMET_Run.EditField_Jaw_DOS_TestHist.Text)
		  'if gopt.jaw.Caluclation_Type=2 Then // Mono-energetic  source
		  'gDOSXYZ.dosxyz_Make_Mono_Source(egsphant_index,beamnew_index)
		  'onefield.Norm_Value=1
		  'elseif  gopt.jaw.Caluclation_Type=3 Then // Phase space source
		  'gBEAM.Beams(beamnew_index).calculate=True
		  '
		  'elseif gopt.jaw.Caluclation_Type=4 Then // Shared Lib source
		  'gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beamnew_index).isource=9
		  'end
		  'gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(beamnew_index).dos_calculate=True
		  'end
		  'gopt.jaw.Waiting=True
		  '
		  '
		  'Window_EMET_Run.Update_PB_Use
		  'gopt.Write_Fields
		  '
		  '
		  '
		  'gopt.JAW.beam_index=beamnew_index
		  '
		  'Window_Treatment.Save_Beams=True
		  'Window_Treatment.Beam_Update_Beam
		  'Window_Treatment.MC_dosxyz_beam_progress
		  'Window_Treatment.MC_egs_beam_progress
		  'Window_Treatment.MC_vmc_beam_progress
		  '// Save the McGill RT beam
		  'gRTOG.Plan(Plan_Index).Write_McGill_Beam_One(UBound(gRTOG.Plan(Plan_Index).Beam))
		  '
		  'end
		  'elseif InStr(all,"Segmentation fault")> 0 Then
		  'gopt.JAW.Running=False
		  '
		  '
		  'elseif InStr(all,"Ibeam")> 0 and InStr(all,"name")> 0 Then
		  '//id=val(NthField(all,"(",2))
		  '//WriteLine gopt.IPbeams(id).FIdID_Name
		  '
		  'elseif InStr(all,"Iterations")> 0 Then
		  'WriteLine (Window_EMET_Run.EditField_Jaws_Iterations.Text)
		  '
		  'elseif InStr(all,"BeamintforMove ?")> 0 Then
		  'WriteLine Format(gOpt.jaw.MoveBeamInt,"#")
		  '
		  'elseif InStr(all,"Enter Number of DVH bins:")> 0 Then
		  'WriteLine Format(gOpt.dvh_bin,"#")
		  '
		  'elseif InStr(all,"Organs")> 0 Then
		  'WriteLine str(UBound(grtog.Structures.Structures)+1)
		  '
		  'elseif InStr(all,"COIN")> 0 Then
		  'WriteLine trim(Window_EMET_Run.EditField_Conf_Dose.Text)
		  '
		  'elseif InStr(all,"FieldSize ?")> 0 Then
		  'WriteLine trim(Window_EMET_Run.EditField_Jaw_MinFieldSize.Text)
		  '
		  'elseif InStr(all,"Max-FLEC-Field ?")> 0 Then
		  'WriteLine trim(Window_EMET_Run.EditField_Jaw_FLECLimit.Text)
		  '
		  'elseif InStr(all,"Write final Dose")> 0 Then
		  'if Window_EMET_Run.CheckBox_WriteDoseJaw.Value Then
		  'WriteLine"yes"
		  'else
		  'WriteLine "no"
		  'end
		  '
		  '
		  'elseif InStr(all,"Final Dose Distribution Name")> 0 Then
		  'WriteLine trim(Window_EMET_Run.EditField_Jaw_Dname.Text)
		  '
		  'elseif InStr(all,"Weight Type ?")> 0 Then
		  'if Window_EMET_Run.RadioButton_Jaw_W_Grad.Value Then
		  'WriteLine "1"
		  'elseif Window_EMET_Run.RadioButton_Jaw_W_SA.Value Then
		  'WriteLine "2"
		  'elseif Window_EMET_Run.RadioButton_Jaw_W_Jaws.Value Then
		  'WriteLine "3"
		  'elseif Window_EMET_Run.RadioButton_Jaw_W_NLO.Value Then
		  'WriteLine "4"
		  'elseif Window_EMET_Run.RadioButton_Jaw_W_Auto.Value Then
		  'WriteLine "5"
		  'elseif Window_EMET_Run.RadioButton_Jaw_W_None.Value Then
		  'WriteLine "0"
		  'end
		  '
		  'elseif InStr(all,"NewWeights ?")> 0 Then
		  'if Window_EMET_Run.RadioButton_Jaw_Polar.Value Then
		  'WriteLine "1"
		  'elseif Window_EMET_Run.RadioButton_Jaw_Polar_One.Value Then
		  'WriteLine "2"
		  'elseif Window_EMET_Run.RadioButton_Jaw_Gaussian.Value Then
		  'WriteLine "3"
		  'elseif Window_EMET_Run.RadioButton_JAW_Uniform.Value Then
		  'WriteLine "4"
		  'end
		  '
		  'elseif InStr(all,"RangeW, RangeO, Gaussian Rate decrease, Probability Rate decrease ")> 0 Then
		  'WriteLine Format(gopt.JAW.Weight_Range,"#.####e")+", "+ Format(gopt.JAW.Jaw_Range,"#.####e")+", "+ Format(gopt.JAW.RateGD,"#.####e")+", "+ Format(gopt.JAW.RatePD,"#.####e")
		  '
		  'elseif InStr(all,"MinFieldSizeMove ?")> 0 Then
		  'WriteLine trim(Window_EMET_Run.EditField_Jaw_MinFieldMove.Text)
		  '
		  'elseif InStr(all,"Please enter min wieght")> 0 Then
		  'WriteLine trim(Window_EMET_Run.EditField_Jaw_MinWeight.Text)
		  '
		  'elseif InStr(all,"MinFieldRange ?")> 0 Then
		  'WriteLine Format(gopt.JAW.MinFieldRange,"#.####e")
		  '
		  'elseif InStr(all,"Please enter max wieght value")> 0 Then
		  'WriteLine trim(Window_EMET_Run.EditField_Jaw_MaxWeight.Text)
		  '
		  'elseif InStr(all,"Stochastic Probability ?")> 0 Then
		  'WriteLine Format(gopt.JAW.StochasticP,"#.####e")
		  '
		  'elseif InStr(all,"Normalize dd ?")> 0 Then
		  'if Window_EMET_Run.CheckBox_NormDDJaw.Value Then
		  'WriteLine "1"
		  'else
		  'WriteLine "0"
		  'end
		  'end
		  '
		  '
		  'if InStr(all,"SA-Jaws-DVH finished !")>0 Then
		  'gopt.JAW.Running=False
		  'gopt.JAW.Read_Fluence_JAW
		  'WriteLine "exit"
		  'if Window_EMET_Run.CheckBox_WriteDoseJaw.Value Then
		  'gopt.Read_Finished_DD(Window_EMET_Run.EditField_Jaw_Dname.Text)
		  'end
		  'gOpt.JAW.S.Read_Results(all)
		  'me.Close
		  'end
		  '
		  '
		  'if InStr(all,"'Best' Objective:")>0 Then
		  'temp_file=NthField(all,"'Best' Objective:",2)
		  'gopt.JAW.Inital_Score= val(temp_file)
		  'end
		  '
		  'if InStr(all,"Overall Best Score:")>0 Then
		  'temp_file=NthField(all,"Overall Best Score:",2)
		  'gopt.JAW.Score= val(temp_file)
		  'end
		  '
		  'if InStr(all,"BEST Solution")>0 Then
		  'gopt.JAW.Read_Fluence_JAW
		  '
		  'end
		End Sub
	#tag EndEvent


	#tag ViewBehavior
		#tag ViewProperty
			Name="ExecuteMode"
			Visible=true
			Group=""
			InitialValue=""
			Type="ExecuteModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Synchronous"
				"1 - Asynchronous"
				"2 - Interactive"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ErrorCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExitCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Result"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRunning"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Arguments"
			Visible=true
			Group=""
			InitialValue=""
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backend"
			Visible=true
			Group=""
			InitialValue=""
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Canonical"
			Visible=true
			Group=""
			InitialValue=""
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Mode"
			Visible=true
			Group=""
			InitialValue=""
			Type="Integer"
			EditorType="Integer"
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
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimeOut"
			Visible=true
			Group=""
			InitialValue=""
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
