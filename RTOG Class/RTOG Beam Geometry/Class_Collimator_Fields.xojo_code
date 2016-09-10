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
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Collimator_Angle"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Couch_Angle"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Gantry_Angle"
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
			Name="X1"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="X2"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="y1"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="y2"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
