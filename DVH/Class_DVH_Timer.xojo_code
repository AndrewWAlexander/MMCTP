#tag Class
Protected Class Class_DVH_Timer
Inherits Timer
	#tag Event
		Sub Action()
		  //----------------------------------------
		  // Timer to check up DVH calculations
		  // 
		  //
		  //----------------------------------------
		  if gRTOG<> nil Then
		    if app.which_window_TreatmentPlanning Then
		      if gDVH.state=4 then
		        gDVH.run
		      end
		    end
		  end
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		Check_Period As int64 = 30000
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Check_Period"
			Group="Behavior"
			InitialValue="30000"
			Type="int64"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Mode"
			Visible=true
			Group="Behavior"
			InitialValue="2"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Off"
				"1 - Single"
				"2 - Multiple"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Period"
			Visible=true
			Group="Behavior"
			InitialValue="1000"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
