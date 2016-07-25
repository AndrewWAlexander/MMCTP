#tag Class
Protected Class Class_BEAM_CM_ARCCHM
	#tag Method, Flags = &h0
		Sub Read(text() as String)
		  //-------------------------------------
		  // Readin ARCCHM CM
		  //
		  //-------------------------------------
		  Dim temp as String
		  Dim k,i,index,num_slabs,x as integer
		  Dim bottom as Single
		  //---------------------------------------
		  
		  
		  bottom=val(NthField(text(2),",",2))
		  
		  
		  RMAX_CM=val(NthField((text(0)),",",1))
		  text.Remove 0
		  Title_CM=Trim(text(0))
		  text.Remove 0
		  
		  ZSRC=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  ZRAD1=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  numchm=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  widthchm=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  widthsep=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  arcthick=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  fronthick=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  backthck=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  widxwall=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  
		  xmin1=val(NthField((text(0)),",",1))
		  xmax2=val(NthField((text(0)),",",2))
		  text.Remove 0
		  
		  ZMAX=val(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  
		  ECUT_R1=val(NthField((text(0)),",",1))
		  PCUT_R1=val(NthField((text(0)),",",2))
		  Dose_Zone_R1=val(NthField((text(0)),",",3))
		  IRegion_R1=val(NthField((text(0)),",",4))
		  text.Remove 0
		  
		  Medium_R1=Trim(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  
		  ECUT_ff=val(NthField((text(0)),",",1))
		  PCUT_ff=val(NthField((text(0)),",",2))
		  Dose_Zone_ff=val(NthField((text(0)),",",3))
		  IRegion_ff=val(NthField((text(0)),",",4))
		  text.Remove 0
		  
		  Medium_ff=Trim(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  ECUT_ec=val(NthField((text(0)),",",1))
		  PCUT_ec=val(NthField((text(0)),",",2))
		  Dose_Zone_ec=val(NthField((text(0)),",",3))
		  IRegion_ec=val(NthField((text(0)),",",4))
		  text.Remove 0
		  
		  Medium_ec=Trim(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  ECUT_ac=val(NthField((text(0)),",",1))
		  PCUT_ac=val(NthField((text(0)),",",2))
		  Dose_Zone_ac=val(NthField((text(0)),",",3))
		  IRegion_ac=val(NthField((text(0)),",",4))
		  Irepeat=val(NthField((text(0)),",",5))
		  text.Remove 0
		  
		  Medium_ac=Trim(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  ECUT_as=val(NthField((text(0)),",",1))
		  PCUT_as=val(NthField((text(0)),",",2))
		  Dose_Zone_as=val(NthField((text(0)),",",3))
		  IRegion_as=val(NthField((text(0)),",",4))
		  text.Remove 0
		  
		  Medium_as=Trim(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  
		  ECUT_bf=val(NthField((text(0)),",",1))
		  PCUT_bf=val(NthField((text(0)),",",2))
		  Dose_Zone_bf=val(NthField((text(0)),",",3))
		  IRegion_bf=val(NthField((text(0)),",",4))
		  text.Remove 0
		  
		  Medium_bf=Trim(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  ECUT_rs=val(NthField((text(0)),",",1))
		  PCUT_rs=val(NthField((text(0)),",",2))
		  Dose_Zone_rs=val(NthField((text(0)),",",3))
		  IRegion_rs=val(NthField((text(0)),",",4))
		  text.Remove 0
		  
		  Medium_rs=Trim(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  ECUT_xw=val(NthField((text(0)),",",1))
		  PCUT_xw=val(NthField((text(0)),",",2))
		  Dose_Zone_xw=val(NthField((text(0)),",",3))
		  IRegion_xw=val(NthField((text(0)),",",4))
		  text.Remove 0
		  
		  Medium_xw=Trim(NthField((text(0)),",",1))
		  text.Remove 0
		  
		  Return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write(cm as Class_BEAM_Inputfile_CMs)
		  //-------------------------------------
		  // Write ARCCHM CM
		  //
		  //-------------------------------------
		  Dim i ,k as Integer
		  //-------------------------------------
		  
		  ReDim cm.text(-1)
		  
		  cm.text.Append Format(cm.ARCCHM.RMAX_CM,"-#.0##")+", RMAX"
		  cm.text.Append cm.ARCCHM.Title_CM
		  
		  
		  cm.text.Append Format(cm.ARCCHM.ZSRC,"-#.0####")+", ZSRC"
		  cm.text.Append Format(cm.ARCCHM.ZRAD1,"-#.0####")+", ZRAD1"
		  cm.text.Append Format(cm.ARCCHM.numchm,"0")+", NUMBER OF CHAMBERS"
		  cm.text.Append Format(cm.ARCCHM.widthchm,"-#.0####")+", WIDTHCHM"
		  cm.text.Append Format(cm.ARCCHM.widthsep,"-#.0####")+", WIDTHSEP"
		  cm.text.Append Format(cm.ARCCHM.arcthick,"-#.0####")+", ARCTHICK"
		  
		  cm.text.Append Format(cm.ARCCHM.fronthick,"-#.###e")+", FRONTHCK"
		  cm.text.Append Format(cm.ARCCHM.backthck,"-#.###e")+", BACKTHCK"
		  
		  cm.text.Append Format(cm.ARCCHM.widxwall,"-#.0####")+", WIDTH OF X WALL"
		  
		  cm.text.Append Format(cm.ARCCHM.xmin1,"-#.0####")+", "+Format(cm.ARCCHM.xmax2,"-#.0####")+", XMIN1, XMAX2"
		  
		  cm.text.Append Format(cm.ARCCHM.ZMAX,"-#.0####")+", ZMAX"
		  
		  cm.text.Append Format(cm.ARCCHM.ECUT_R1,"-#.###")+", "+Format(cm.ARCCHM.PCUT_R1,"-#.###")+", "+Format(cm.ARCCHM.Dose_Zone_R1,"#")+", "+Format(cm.ARCCHM.IRegion_R1,"#")+", Region 1 before"
		  cm.text.Append cm.ARCCHM.Medium_R1 '+", Region 1"
		  
		  
		  cm.text.Append Format(cm.ARCCHM.ECUT_ff,"-#.###")+", "+Format(cm.ARCCHM.PCUT_ff,"-#.###")+", "+Format(cm.ARCCHM.Dose_Zone_ff,"#")+", "+Format(cm.ARCCHM.IRegion_ff,"#")+", Region 2 front face"
		  cm.text.Append cm.ARCCHM.Medium_ff'+", Region 2"
		  
		  cm.text.Append  Format(cm.ARCCHM.ECUT_ec,"-#.###")+", "+Format(cm.ARCCHM.PCUT_ec,"-#.###")+", "+Format(cm.ARCCHM.Dose_Zone_ec,"#")+", "+Format(cm.ARCCHM.IRegion_ec,"#")+", Region 3 ends of ion chamber"
		  cm.text.Append cm.ARCCHM.Medium_ec'+", Region 3"
		  
		  cm.text.Append  Format(cm.ARCCHM.ECUT_ac,"-#.###")+", "+Format(cm.ARCCHM.PCUT_ac,"-#.###")+", "+Format(cm.ARCCHM.Dose_Zone_ac,"#")+", "+Format(cm.ARCCHM.IRegion_ac,"#")+", "+Format(cm.ARCCHM.Irepeat,"#")+", Region 4 all chamber or septa"
		  cm.text.Append cm.ARCCHM.Medium_ac'+", Region 4"
		  
		  
		  cm.text.Append  Format(cm.ARCCHM.ECUT_as,"-#.###")+", "+Format(cm.ARCCHM.PCUT_as,"-#.###")+", "+Format(cm.ARCCHM.Dose_Zone_as,"#")+", "+Format(cm.ARCCHM.IRegion_as,"#")+", "+Format(cm.ARCCHM.Irepeat,"#")+", Region 5 all septa"
		  cm.text.Append cm.ARCCHM.Medium_as'+", Region 5"
		  
		  cm.text.Append  Format(cm.ARCCHM.ECUT_bf,"-#.###")+", "+Format(cm.ARCCHM.PCUT_bf,"-#.###")+", "+Format(cm.ARCCHM.Dose_Zone_bf,"#")+", "+Format(cm.ARCCHM.IRegion_bf,"#")+", Region 6 back face"
		  cm.text.Append cm.ARCCHM.Medium_bf'+", Region 6"
		  
		  cm.text.Append  Format(cm.ARCCHM.ECUT_Rs,"-#.###")+", "+Format(cm.ARCCHM.PCUT_Rs,"-#.###")+", "+Format(cm.ARCCHM.Dose_Zone_Rs,"#")+", "+Format(cm.ARCCHM.IRegion_Rs,"#")+", Region 7 region surrounding the arc"
		  cm.text.Append cm.ARCCHM.Medium_rs'+", Region 7"
		  
		  cm.text.Append  Format(cm.ARCCHM.ECUT_xw,"-#.###")+", "+Format(cm.ARCCHM.PCUT_xw,"-#.###")+", "+Format(cm.ARCCHM.Dose_Zone_xw,"#")+", "+Format(cm.ARCCHM.IRegion_xw,"#")+", Region 8 x walls"
		  cm.text.Append cm.ARCCHM.Medium_xw'+", Region 8"
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		arcthick As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		backthck As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Zone_ac As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Zone_as As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Zone_bf As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Zone_ec As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Zone_ff As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Zone_R1 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Zone_rs As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Zone_xw As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT_ac As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT_as As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT_bf As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT_ec As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT_ff As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT_Open As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT_R1 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT_rs As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT_xw As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		fronthick As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_ac As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_as As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_bf As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_ec As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_ff As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_R1 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_rs As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_xw As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Irepeat As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ISUB_MAX_BLOCK As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Medium_ac As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Medium_as As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Medium_bf As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Medium_ec As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Medium_ff As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Medium_R1 As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Medium_rs As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Medium_xw As String
	#tag EndProperty

	#tag Property, Flags = &h0
		numchm As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		PCUT_ac As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		PCUT_as As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		PCUT_bf As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		PCUT_ec As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		PCUT_ff As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		PCUT_R1 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		PCUT_rs As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		PCUT_xw As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		RMAX_CM As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Title_CM As string
	#tag EndProperty

	#tag Property, Flags = &h0
		widthchm As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		widthsep As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		widxwall As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		xmax2 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		xmin1 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ZMAX As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ZRAD1 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ZSRC As Single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="arcthick"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="backthck"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Zone_ac"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Zone_as"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Zone_bf"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Zone_ec"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Zone_ff"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Zone_R1"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Zone_rs"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Zone_xw"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECUT_ac"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECUT_as"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECUT_bf"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECUT_ec"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECUT_ff"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECUT_Open"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECUT_R1"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECUT_rs"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECUT_xw"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="fronthick"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRegion_ac"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRegion_as"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRegion_bf"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRegion_ec"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRegion_ff"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRegion_R1"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRegion_rs"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRegion_xw"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Irepeat"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ISUB_MAX_BLOCK"
			Group="Behavior"
			InitialValue="0"
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
			Name="Medium_ac"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Medium_as"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Medium_bf"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Medium_ec"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Medium_ff"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Medium_R1"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Medium_rs"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Medium_xw"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="numchm"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PCUT_ac"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PCUT_as"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PCUT_bf"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PCUT_ec"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PCUT_ff"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PCUT_R1"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PCUT_rs"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PCUT_xw"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RMAX_CM"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title_CM"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="widthchm"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="widthsep"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="widxwall"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="xmax2"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="xmin1"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZMAX"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZRAD1"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZSRC"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
