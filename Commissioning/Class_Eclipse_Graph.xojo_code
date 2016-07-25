#tag Class
Protected Class Class_Eclipse_Graph
	#tag Property, Flags = &h0
		AXIS As string
	#tag EndProperty

	#tag Property, Flags = &h0
		BMTY As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Colour As color
	#tag EndProperty

	#tag Property, Flags = &h0
		Comment As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Detector As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DETY As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Distance As single
	#tag EndProperty

	#tag Property, Flags = &h0
		DPTH As single
	#tag EndProperty

	#tag Property, Flags = &h0
		FLSZ As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Label As string = "data1"
	#tag EndProperty

	#tag Property, Flags = &h0
		Line As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Norm As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Normalize_value As single = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		Operator As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Plane_value_cm As single
	#tag EndProperty

	#tag Property, Flags = &h0
		PNTS As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Pointa As class_points
	#tag EndProperty

	#tag Property, Flags = &h0
		Pointb As class_points
	#tag EndProperty

	#tag Property, Flags = &h0
		Points(-1) As Class_Points
	#tag EndProperty

	#tag Property, Flags = &h0
		Point_Size As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Show As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Show_Marker As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		SSD As single
	#tag EndProperty

	#tag Property, Flags = &h0
		steps As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Symbol As Integer = 2
	#tag EndProperty

	#tag Property, Flags = &h0
		Type As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Units_x As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Units_y As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Units_z As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Value_Label As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Value_Units As string
	#tag EndProperty

	#tag Property, Flags = &h0
		WDGD As String
	#tag EndProperty

	#tag Property, Flags = &h0
		WDGL As String
	#tag EndProperty

	#tag Property, Flags = &h0
		X_label As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Y_label As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Z_label As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AXIS"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BMTY"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Colour"
			Group="Behavior"
			InitialValue="&h000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Comment"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Detector"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DETY"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Distance"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DPTH"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FLSZ"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Label"
			Group="Behavior"
			InitialValue="data1"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Line"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Norm"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Normalize_value"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Operator"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Plane_value_cm"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PNTS"
			Group="Behavior"
			InitialValue="0"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Point_Size"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Show"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Show_Marker"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SSD"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="steps"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Symbol"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Type"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Units_x"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Units_y"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Units_z"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Value_Label"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Value_Units"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WDGD"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WDGL"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="X_label"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y_label"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Z_label"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
