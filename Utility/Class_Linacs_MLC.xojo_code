#tag Class
Protected Class Class_Linacs_MLC
	#tag Property, Flags = &h0
		AbuttingGap As Single = 0.004
	#tag EndProperty

	#tag Property, Flags = &h0
		Boundaries(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			// 1 Y
			// 0 X
		#tag EndNote
		LeafDirection As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		MLC_Name As String
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			// 0 no MLC
			// 1 yes MLC
		#tag EndNote
		MLC_Use As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		NumberofLeafPairs As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			// 0 do nothing
			// 1 do simple parsering
		#tag EndNote
		Parser As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Source_to_Device_Distance As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			// 0 for leafpairs
			// 1 for binary leaves
		#tag EndNote
		Type As Integer = 0
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AbuttingGap"
			Visible=false
			Group="Behavior"
			InitialValue="0.004"
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
			Name="LeafDirection"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
			Name="MLC_Name"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MLC_Use"
			Visible=false
			Group="Behavior"
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
			Name="NumberofLeafPairs"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Parser"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Source_to_Device_Distance"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
