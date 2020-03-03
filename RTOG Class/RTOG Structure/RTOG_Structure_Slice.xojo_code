#tag Class
Protected Class RTOG_Structure_Slice
	#tag Property, Flags = &h0
		Axial_Points_X(-1) As UInt16
	#tag EndProperty

	#tag Property, Flags = &h0
		Axial_Points_Y(-1) As UInt16
	#tag EndProperty

	#tag Property, Flags = &h0
		scan_Num As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Segments(-1) As RTOG_Structure_Segment
	#tag EndProperty

	#tag Property, Flags = &h0
		Structure_Poly(-1) As Class_Polygon
	#tag EndProperty

	#tag Property, Flags = &h0
		Z As single
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
			Name="scan_Num"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
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
			Name="Z"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
