#tag Class
Protected Class Class_EclipseData
	#tag Property, Flags = &h0
		addon As String
	#tag EndProperty

	#tag Property, Flags = &h0
		algorithm As String
	#tag EndProperty

	#tag Property, Flags = &h0
		beam As String
	#tag EndProperty

	#tag Property, Flags = &h0
		beamdata As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ColumnLegend As String
	#tag EndProperty

	#tag Property, Flags = &h0
		data As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DataLegend As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Detectordepthsurface As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		energy As String
	#tag EndProperty

	#tag Property, Flags = &h0
		exportingdate As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Graphs(-1) As Class_Eclipse_Graph
	#tag EndProperty

	#tag Property, Flags = &h0
		machine As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_Graphs As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		RowLegend As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RowValue(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SSD As Single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="addon"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="algorithm"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="beam"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="beamdata"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnLegend"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="data"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataLegend"
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
			Name="exportingdate"
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
			Name="machine"
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
			Name="Num_Graphs"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RowLegend"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
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
	#tag EndViewBehavior
End Class
#tag EndClass
