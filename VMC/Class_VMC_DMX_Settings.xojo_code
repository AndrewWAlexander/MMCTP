#tag Class
Protected Class Class_VMC_DMX_Settings
	#tag Property, Flags = &h0
		Cleancontour As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Cleancontours As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		Clean_density As string = "0.0012"
	#tag EndProperty

	#tag Property, Flags = &h0
		Contours(-1) As CLass_VMC_DMX_Contour
	#tag EndProperty

	#tag Property, Flags = &h0
		CT_model As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Del_X As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Del_Y As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Del_Z As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		dmx_name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		SHell_Index(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Shell_Name(-1) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		vmc_imageselection(0) As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		X_Max As single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		X_min As single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		X_num As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Y_max As single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Y_min As single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Y_num As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Z_max As single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Z_min As single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Z_num As Integer = 0
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Cleancontour"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Cleancontours"
			Visible=false
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Clean_density"
			Visible=false
			Group="Behavior"
			InitialValue="0.0012"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CT_model"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Del_X"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Del_Y"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Del_Z"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dmx_name"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
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
			Name="X_Max"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="X_min"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="X_num"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y_max"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y_min"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y_num"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Z_max"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Z_min"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Z_num"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
