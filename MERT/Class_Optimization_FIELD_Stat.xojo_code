#tag Class
Protected Class Class_Optimization_FIELD_Stat
	#tag Property, Flags = &h0
		AvgDose As single
	#tag EndProperty

	#tag Property, Flags = &h0
		MaxDose As single
	#tag EndProperty

	#tag Property, Flags = &h0
		MinDose As single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AvgDose"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxDose"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinDose"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="single"
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
	#tag EndViewBehavior
End Class
#tag EndClass
