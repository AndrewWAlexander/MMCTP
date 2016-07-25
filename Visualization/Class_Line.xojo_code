#tag Class
Protected Class Class_Line
	#tag Property, Flags = &h0
		Colour As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		distance As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		x1 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		x2 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		y1 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		y2 As Single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Colour"
			Group="Behavior"
			InitialValue="&h000000"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="distance"
			Group="Behavior"
			Type="Single"
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
		#tag ViewProperty
			Name="x1"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="x2"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="y1"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="y2"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
