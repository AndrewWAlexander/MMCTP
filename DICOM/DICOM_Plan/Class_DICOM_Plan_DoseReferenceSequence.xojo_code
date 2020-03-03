#tag Class
Protected Class Class_DICOM_Plan_DoseReferenceSequence
	#tag Property, Flags = &h0
		ConstraintWeight As Single = 30.0
	#tag EndProperty

	#tag Property, Flags = &h0
		DoseReferenceDescription As String = "Sensitive Structure"
	#tag EndProperty

	#tag Property, Flags = &h0
		DoseReferenceNumber As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		DoseReferenceStructureType As String = "VOLUME"
	#tag EndProperty

	#tag Property, Flags = &h0
		DoseReferenceType As String = "ORGAN_AT_RISK"
	#tag EndProperty

	#tag Property, Flags = &h0
		OrganatRiskFullVolumeDose As Single = 54.0
	#tag EndProperty

	#tag Property, Flags = &h0
		OrganatRiskMaximumDose As Single = 45.0
	#tag EndProperty

	#tag Property, Flags = &h0
		OrganatRiskOverdoseVolumeFraction As Single = 0.02
	#tag EndProperty

	#tag Property, Flags = &h0
		ReferencedROINumb As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		TargetMaxDose As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		TargetMinDose As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		TargetPxDose As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		TargetUnderDoseVolume As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Tomo_101B As String = "TO_VOLUME"
	#tag EndProperty

	#tag Property, Flags = &h0
		Tomo_Blocked As String = "NONE"
	#tag EndProperty

	#tag Property, Flags = &h0
		Tomo_DV_Pen As Integer = 45
	#tag EndProperty

	#tag Property, Flags = &h0
		Tomo_MaxDose_Pen As Single = 15
	#tag EndProperty

	#tag Property, Flags = &h0
		Tomo_MinDose_Pen As Single = 15
	#tag EndProperty

	#tag Property, Flags = &h0
		Tomo_Overlap_Prio As Integer = 25
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ConstraintWeight"
			Visible=false
			Group="Behavior"
			InitialValue="30.0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoseReferenceDescription"
			Visible=false
			Group="Behavior"
			InitialValue="Sensitive Structure"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoseReferenceNumber"
			Visible=false
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoseReferenceStructureType"
			Visible=false
			Group="Behavior"
			InitialValue="VOLUME"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoseReferenceType"
			Visible=false
			Group="Behavior"
			InitialValue="ORGAN_AT_RISK"
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
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="OrganatRiskFullVolumeDose"
			Visible=false
			Group="Behavior"
			InitialValue="54.0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="OrganatRiskMaximumDose"
			Visible=false
			Group="Behavior"
			InitialValue="45.0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="OrganatRiskOverdoseVolumeFraction"
			Visible=false
			Group="Behavior"
			InitialValue="0.02"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReferencedROINumb"
			Visible=false
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
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
			Name="TargetMaxDose"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TargetMinDose"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TargetPxDose"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TargetUnderDoseVolume"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tomo_101B"
			Visible=false
			Group="Behavior"
			InitialValue="TO_VOLUME"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tomo_Blocked"
			Visible=false
			Group="Behavior"
			InitialValue="NONE"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tomo_DV_Pen"
			Visible=false
			Group="Behavior"
			InitialValue="45"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tomo_MaxDose_Pen"
			Visible=false
			Group="Behavior"
			InitialValue="15"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tomo_MinDose_Pen"
			Visible=false
			Group="Behavior"
			InitialValue="15"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tomo_Overlap_Prio"
			Visible=false
			Group="Behavior"
			InitialValue="25"
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
	#tag EndViewBehavior
End Class
#tag EndClass
