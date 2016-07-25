#tag Class
Protected Class Class_MLC_Positions
	#tag Property, Flags = &h0
		CarriageGroup As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Collimator As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Deliver As string
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			From BEAMnrc Manual
			
			The treatment ﬁeld indices, INDEX(I)’s, are numbers in the range [0,1] (with INDEX(I)>INDEX(I-1)) which determine which ﬁeld is used in a particular history.
			
			At the beginning of each history a random number in the range [0,1], RNDM1, is compared to (INDEX(I),I=1,NFIELDS). The lowest value of I for which INDEX(I) ≥RNDM1 is the ﬁeld used in the history.
			
			Note that this means that INDEX(I)-INDEX(I-1) is a measure of the probability, or intensity, of ﬁeld
		#tag EndNote
		Indexnum As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Leaf_A(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Leaf_B(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Leaf_Center(-1) As double
	#tag EndProperty

	#tag Property, Flags = &h0
		Leaf_End(-1) As double
	#tag EndProperty

	#tag Property, Flags = &h0
		Leaf_Start(-1) As double
	#tag EndProperty

	#tag Property, Flags = &h0
		Magnification As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Note As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Operator As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Shape As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="CarriageGroup"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Collimator"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Deliver"
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
			Name="Indexnum"
			Group="Behavior"
			InitialValue="0"
			Type="single"
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
			Name="Magnification"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Note"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Operator"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Shape"
			Group="Behavior"
			Type="string"
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
