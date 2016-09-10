#tag Class
Protected Class Class_BEAM_CM_DYNVMLC_Fields
	#tag Property, Flags = &h0
		#tag Note
			From BEAMnrc Manual
			
			The treatment ﬁeld indices, INDEX(I)’s, are numbers in the range [0,1] (with INDEX(I)>INDEX(I-1)) which determine which ﬁeld is used in a particular history.
			
			At the beginning of each history a random number in the range [0,1], RNDM1, is compared to (INDEX(I),I=1,NFIELDS). The lowest value of I for which INDEX(I) ≥RNDM1 is the ﬁeld used in the history.
			
			Note that this means that INDEX(I)-INDEX(I-1) is a measure of the probability, or intensity, of ﬁeld
		#tag EndNote
		Index As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Leaves(-1) As Class_BEAM_CM_DYNVMLC_Leaf_Opening
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
	#tag EndViewBehavior
End Class
#tag EndClass
