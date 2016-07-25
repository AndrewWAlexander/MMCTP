#tag Class
Protected Class Class_BEAMnrc_PhaseSpace_One
	#tag Property, Flags = &h0
		E As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		ID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		LATCH As UInt32 = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		U As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		V As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		WT As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		X As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Y As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		zlast As Single = 0
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="E"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ID"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LATCH"
			Group="Behavior"
			InitialValue="0"
			Type="UInt32"
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
			Name="U"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="V"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WT"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="X"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="zlast"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
