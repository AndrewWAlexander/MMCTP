#tag Class
Protected Class Class_Ruler
	#tag Property, Flags = &h0
		lengthcm As double
	#tag EndProperty

	#tag Property, Flags = &h0
		Move_Point1 As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Move_Point2 As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Point1 As Class_Points
	#tag EndProperty

	#tag Property, Flags = &h0
		Point2 As Class_Points
	#tag EndProperty

	#tag Property, Flags = &h0
		rcolor As color
	#tag EndProperty

	#tag Property, Flags = &h0
		x1pix As integer = 20
	#tag EndProperty

	#tag Property, Flags = &h0
		x2pix As integer = 20
	#tag EndProperty

	#tag Property, Flags = &h0
		y1pix As integer = 20
	#tag EndProperty

	#tag Property, Flags = &h0
		y2pix As integer = 50
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
			Name="lengthcm"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Move_Point1"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Move_Point2"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="rcolor"
			Group="Behavior"
			InitialValue="&h000000"
			Type="color"
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
			Name="x1pix"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="x2pix"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="y1pix"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="y2pix"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
