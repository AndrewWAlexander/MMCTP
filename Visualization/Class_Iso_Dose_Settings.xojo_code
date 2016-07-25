#tag Class
Protected Class Class_Iso_Dose_Settings
	#tag Property, Flags = &h0
		colours(-1) As color
	#tag EndProperty

	#tag Property, Flags = &h0
		each_show(-1) As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Lines(-1) As Class_IsoDose_Lines
	#tag EndProperty

	#tag Property, Flags = &h0
		values(-1) As single
	#tag EndProperty


	#tag ViewBehavior
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
