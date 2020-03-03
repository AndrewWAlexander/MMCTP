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
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BMTY"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Colour"
			Visible=false
			Group="Behavior"
			InitialValue="&h000000"
			Type="color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Comment"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Detector"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DETY"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Distance"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DPTH"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FLSZ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
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
			Name="Label"
			Visible=false
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
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Line"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
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
			Name="Norm"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Normalize_value"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Operator"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Plane_value_cm"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PNTS"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Point_Size"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Show"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Show_Marker"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SSD"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="steps"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
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
			Name="Symbol"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
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
			Name="Type"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Units_x"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Units_y"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Units_z"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Value_Label"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Value_Units"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WDGD"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WDGL"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="X_label"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y_label"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Z_label"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
