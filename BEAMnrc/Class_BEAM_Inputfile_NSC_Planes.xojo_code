#tag Class
Protected Class Class_BEAM_Inputfile_NSC_Planes
	#tag Property, Flags = &h0
		IPLANE_to_CM As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		MZONE_TYPE As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NSC_ZONES As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		NX_Zone As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NY_Zone As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		RSCORE_ZONE(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		XMAX_Zone As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		XMIN_ZOne As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		YMAX_Zone As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		YMin_Zone As Single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IPLANE_to_CM"
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
			Name="MZONE_TYPE"
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
			Name="NSC_ZONES"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NX_Zone"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NY_Zone"
			Visible=false
			Group="Behavior"
			InitialValue="0"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="XMAX_Zone"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="XMIN_ZOne"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="YMAX_Zone"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="YMin_Zone"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
