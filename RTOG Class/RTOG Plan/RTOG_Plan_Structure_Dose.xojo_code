#tag Class
Protected Class RTOG_Plan_Structure_Dose
	#tag Property, Flags = &h0
		ActualAvgDose As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ActualAvgDoseScore As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ActualMaxDose As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ActualMaxDoseScore As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ActualMaxDoseVoxelsAbove As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ActualMinDose As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ActualMinDoseScore As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ActualMinDoseVoxelsBelow As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		AvgDose As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		AvgDosePen As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		AvgDose_Use As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Constraints(-1) As RTOG_Plan_Struture_Constraint
	#tag EndProperty

	#tag Property, Flags = &h0
		CutoffDose As Single = 0.001
	#tag EndProperty

	#tag Property, Flags = &h0
		DVH As Class_DVH_One
	#tag EndProperty

	#tag Property, Flags = &h0
		Importance As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		MaxDose As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Max_Priority As single
	#tag EndProperty

	#tag Property, Flags = &h0
		MinDose As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Min_Priority As single
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Update 2012
			
			Number of voxel points within structure
		#tag EndNote
		Num_Points As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		OrganID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Organ_Name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Organ_Volume As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Organ_Weight As single
	#tag EndProperty

	#tag Property, Flags = &h0
		OverlapPriority As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Target_Norm_Dose As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Target_Norm_Volume As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Use_DV_Constraint As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Use_Max_Dose As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Use_Min_Dose As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			s_width=gRTOG.Scan(0).Size_of_Dimension1/Voxel_Size*gvis.scale_width
			s_height=gRTOG.Scan(0).Size_of_Dimension2/Voxel_Size*gvis.scale_height
		#tag EndNote
		Voxel_REs As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Voxel_Size As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			s_width=gRTOG.Scan(0).Size_of_Dimension1/Voxel_Size*gvis.scale_width
			s_height=gRTOG.Scan(0).Size_of_Dimension2/Voxel_Size*gvis.scale_height
		#tag EndNote
		Voxel_Size_x As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			s_width=gRTOG.Scan(0).Size_of_Dimension1/Voxel_Size*gvis.scale_width
			s_height=gRTOG.Scan(0).Size_of_Dimension2/Voxel_Size*gvis.scale_height
		#tag EndNote
		Voxel_Size_y As Single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ActualAvgDose"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ActualAvgDoseScore"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ActualMaxDose"
			Group="Behavior"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ActualMaxDoseScore"
			Group="Behavior"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ActualMaxDoseVoxelsAbove"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ActualMinDose"
			Group="Behavior"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ActualMinDoseScore"
			Group="Behavior"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ActualMinDoseVoxelsBelow"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AvgDose"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AvgDosePen"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AvgDose_Use"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CutoffDose"
			Group="Behavior"
			InitialValue="0.001"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Importance"
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
			Name="MaxDose"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Max_Priority"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinDose"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Min_Priority"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Num_Points"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OrganID"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Organ_Name"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Organ_Volume"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Organ_Weight"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OverlapPriority"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Target_Norm_Dose"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Target_Norm_Volume"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Use_DV_Constraint"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Use_Max_Dose"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Use_Min_Dose"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Voxel_REs"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Voxel_Size"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Voxel_Size_x"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Voxel_Size_y"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
