#tag Class
Protected Class Class_OutPut_Table
	#tag Property, Flags = &h0
		Add_On As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Algorithm As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Calculation_Machine As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Data_Label As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Date As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Detectordepthsurface As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		energy As String
	#tag EndProperty

	#tag Property, Flags = &h0
		FSX(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		FSY(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Machine As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Mode As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Normalization As Single = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		OutPut(-1,-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		SSD As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		uncertainty(-1,-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		X_label As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Y_label As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Add_On"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Algorithm"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Calculation_Machine"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Data_Label"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Date"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Detectordepthsurface"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="energy"
			Group="Behavior"
			Type="String"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Machine"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Mode"
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
			Name="Normalization"
			Group="Behavior"
			InitialValue="1"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SSD"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType="MultiLineEditor"
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
			Name="X_label"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y_label"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
