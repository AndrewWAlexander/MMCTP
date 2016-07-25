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
			Group="Behavior"
			Type="single"
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
			Name="MaxDose"
			Group="Behavior"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinDose"
			Group="Behavior"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
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
	#tag EndViewBehavior
End Class
#tag EndClass
