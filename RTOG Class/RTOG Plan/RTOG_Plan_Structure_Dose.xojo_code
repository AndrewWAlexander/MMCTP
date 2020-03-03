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
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ActualAvgDoseScore"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ActualMaxDose"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ActualMaxDoseScore"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ActualMaxDoseVoxelsAbove"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ActualMinDose"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ActualMinDoseScore"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ActualMinDoseVoxelsBelow"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AvgDose"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AvgDosePen"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AvgDose_Use"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CutoffDose"
			Visible=false
			Group="Behavior"
			InitialValue="0.001"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Importance"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxDose"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Max_Priority"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinDose"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Min_Priority"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
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
			Name="Num_Points"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="OrganID"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Organ_Name"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Organ_Volume"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Organ_Weight"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="OverlapPriority"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
			Name="Target_Norm_Dose"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Target_Norm_Volume"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
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
			Name="Use_DV_Constraint"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Use_Max_Dose"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Use_Min_Dose"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Voxel_REs"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Voxel_Size"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Voxel_Size_x"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Voxel_Size_y"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
