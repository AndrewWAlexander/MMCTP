#tag Class
Protected Class Class_MMCTP_Timer_Windows
Inherits Timer
	#tag Event
		Sub Action()
		  Dim ss as String
		  
		  
		  me.Period=1000
		  me.Reset
		  
		  
		  
		  if UBound(Errors)>-1 Then
		    ss=""
		    While UBound(Errors)>-1
		      ss=ss+Errors(0)+chr(13)
		      Errors.Remove(0)
		    Wend
		    MsgBox ss
		  end
		  
		  
		  
		  
		  if UBound(App.Error_Msg)>-1 Then
		    ss=""
		    While UBound(App.Error_Msg)>-1
		      ss=ss+App.Error_Msg(0)+chr(13)
		      App.Error_Msg.Remove(0)
		    Wend
		    MsgBox ss
		  end
		  
		  
		  if TPW_Show and app.which_window_TreatmentPlanning=False Then
		    Window_Treatment.Show
		    TPW_Show=False
		  elseif app.which_window_TreatmentPlanning Then
		    
		    if gDVH.Update_Window Then
		      Window_Treatment.Dose_DVH
		      gDVH.Update_Window=False
		    end
		    
		    
		    if Window_Treatment.StaticText_DVH.Text<>TP_DVH_Text Then
		      Window_Treatment.StaticText_DVH.Text=TP_DVH_Text 
		    end
		    
		    if Window_Treatment.Canvas_refresh_Image_WL Then
		      Window_Treatment.Window_canvas_refresh
		      Window_Treatment.Canvas_refresh_Image_WL=False
		    end
		    
		    if Window_Treatment.Window_update_plan_now Then
		      Window_Treatment.Window_Update_Plan
		    end
		    
		    if Window_Treatment.Canvas_refresh_Image_Contours Then
		      Window_Treatment.Window_canvas_refresh_Structure
		      Window_Treatment.Canvas_refresh_Image_Contours=False
		    end
		    
		    if UBound(gBEAM.egs_msg)>-1 Then
		      Window_Treatment.StaticText_BEAM_Status.Text=gBEAM.egs_msg(UBound(gBEAM.egs_msg))
		    end
		    
		    if UBound(gDOSXYZ.egs_msg)>-1 Then
		      Window_Treatment.StaticText_DOSYXZ_Status.Text= gDOSXYZ.egs_msg(UBound(gDOSXYZ.egs_msg))
		    end
		    
		    if app.which_window_DOSYXZ_Options Then
		      if Window_DOSXYZ_Properties.UpdateInterface Then
		        Window_DOSXYZ_Properties.UpdateInterface=False
		        Window_DOSXYZ_Properties.Refresh_List
		      end
		    end
		    
		    if app.which_window_BEAM_Options Then
		      if Window_BEAM_Options.UpdateWindow=True Then
		        Window_BEAM_Options.Refresh_window
		      end
		    end
		    
		    if Window_Treatment.MC_egs_beam_progress_update Then
		      Window_Treatment.MC_egs_beam_progress_update=False
		      Window_Treatment.MC_egs_beam_progress
		    end
		    
		    
		    
		    
		  End
		  
		  if app.which_window_Transfer Then
		    if Window_Transfer.UpdateMcGill Then
		      Window_Transfer.UpDate_McGill
		    elseif Window_Transfer.UpdateDICOM Then
		      Window_Transfer.Update_DICOM_Listbox
		    end
		  end
		  
		  if app.which_window_Open Then
		    Window_OpenPatient.Show
		  end
		  
		  if app.which_window_adddose Then
		    Window_AddDose.StaticText1.Text=Window_AddDose.ProgressMsg
		    if Window_AddDose.UpdateLists Then
		      Window_AddDose.UpdateLists=False
		      Window_AddDose.UpdateNow
		    end
		  end
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		Untitled As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="RunMode"
			Visible=true
			Group="Behavior"
			InitialValue="2"
			Type="RunModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Off"
				"1 - Single"
				"2 - Multiple"
			#tag EndEnumValues
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
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Period"
			Visible=true
			Group="Behavior"
			InitialValue="1000"
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
			Name="Untitled"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
