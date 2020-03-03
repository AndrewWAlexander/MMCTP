#tag Class
Protected Class Class_XiOData
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
		Graphs(-1) As Class_XiO_Graph
	#tag EndProperty

	#tag Property, Flags = &h0
		Lastfolder As FolderItem
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
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="algorithm"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="beam"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="beamdata"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnLegend"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="data"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataLegend"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Detectordepthsurface"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="energy"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="exportingdate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="machine"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="Num_Graphs"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RowLegend"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SSD"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType="MultiLineEditor"
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
	#tag EndViewBehavior
End Class
#tag EndClass
