#tag Class
Protected Class Class_Collimator_Fields
	#tag Property, Flags = &h0
		#tag Note
			// 0 = clockwise
			// 1 = counter clockwise
		#tag EndNote
		ARC_Direction As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Collimator_Angle As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Couch_Angle As double
	#tag EndProperty

	#tag Property, Flags = &h0
		Gantry_Angle As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Index As Single = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		isocenter As Class_isocenter
	#tag EndProperty

	#tag Property, Flags = &h0
		X1 As single = 5
	#tag EndProperty

	#tag Property, Flags = &h0
		X2 As single = 5
	#tag EndProperty

	#tag Property, Flags = &h0
		y1 As single = 5
	#tag EndProperty

	#tag Property, Flags = &h0
		y2 As single = 5
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ARC_Direction"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Collimator_Angle"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Couch_Angle"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Gantry_Angle"
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
			Name="X1"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="X2"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="y1"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="y2"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
