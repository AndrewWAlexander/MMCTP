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
			Visible=false
			Group="Behavior"
			InitialValue="&h000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="distance"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
			Name="x1"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="x2"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="y1"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="y2"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
