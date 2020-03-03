#tag Class
Protected Class Vector3D2
	#tag Property, Flags = &h0
		x As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		y As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		z As Single
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
			Name="x"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="y"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="z"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
