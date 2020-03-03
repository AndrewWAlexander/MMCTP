#tag Class
Protected Class Class_BEAM_CM_FLATFILT
	#tag Method, Flags = &h0
		Sub Read(OneCM as Class_BEAM_Inputfile_CMs)
		  //-------------------------------------------------
		  // Readin Flat filter CM
		  //
		  //-------------------------------------------------
		  Dim temp as String
		  Dim ll as Class_BEAM_CM_FLATFILT_Layers
		  Dim i,index as Integer
		  //-------------------------------------------------
		  
		  
		  
		  z_min=Val(OneCM.text(2))
		  ISCM_NO=Val(OneCM.text(3))
		  
		  index=4
		  for i=1 to ISCM_NO
		    ll =new Class_BEAM_CM_FLATFILT_Layers
		    temp=OneCM.text(index)
		    ll.ISSCM_NO=Val(NthField(OneCM.text(index),",",1))
		    ll.ZThick=Val(NthField(OneCM.text(index),",",2))
		    index=index+1
		    index=index+2
		    Layers.Append ll
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Dose_zone_opening As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT_Openings As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Iregion_opening As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ISCM_NO As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Layers(-1) As Class_BEAM_CM_FLATFILT_Layers
	#tag EndProperty

	#tag Property, Flags = &h0
		PCUT_Openings As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		RMAX_CM As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Title_CM As string
	#tag EndProperty

	#tag Property, Flags = &h0
		z_min As Single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Dose_zone_opening"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECUT_Openings"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
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
			Name="Iregion_opening"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ISCM_NO"
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
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PCUT_Openings"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RMAX_CM"
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
			Name="Title_CM"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
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
			Name="z_min"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
