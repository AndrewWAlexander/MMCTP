#tag Class
Protected Class Class_DOSXYZ_EGSPhant_Voxels
	#tag Property, Flags = &h0
		density As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Material As String
	#tag EndProperty

	#tag Property, Flags = &h0
		X_From As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		X_To As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Y_From As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Y_To As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Z_From As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Z_To As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="density"
			Group="Behavior"
			InitialValue="0"
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
			Name="Material"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="X_From"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="X_To"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y_From"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y_To"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Z_From"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Z_To"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
