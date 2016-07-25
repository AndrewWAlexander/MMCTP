#tag Class
Protected Class Class_DICOM_Plan_Fractiongroup
	#tag Property, Flags = &h0
		fractiongroupnumber As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		numberofbeams As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NumberofBrachyApp As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		numberoffractionsplanned As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Referencedbeamsequence(-1) As class_DICOM_referencedBeamSequence
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="fractiongroupnumber"
			Group="Behavior"
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
			Name="numberofbeams"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberofBrachyApp"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="numberoffractionsplanned"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
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
