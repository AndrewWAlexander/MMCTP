#tag Class
Protected Class Class_BEAM_CM_JAWS
	#tag Method, Flags = &h0
		Sub Read(Text() as String)
		  //---------------------------------------
		  // Readin Jaw CM
		  //
		  //---------------------------------------
		  Dim k,i,index,num_slabs,x as integer
		  Dim temp as String
		  //---------------------------------------
		  
		  
		  
		  
		  RMAX_CM=val(NthField((text(0)),",",1))
		  text.Remove 0
		  Title_CM=text(0)
		  text.Remove 0
		  ISCM_MAX=val(text(0))
		  text.Remove 0
		  
		  ReDim XY_Choice((ISCM_MAX-1))
		  ReDim ZMIN_JAWS((ISCM_MAX-1))
		  ReDim Zmax_JAWS((ISCM_MAX-1))
		  ReDim XFP_JAWS((ISCM_MAX-1))
		  ReDim XBP_JAWS((ISCM_MAX-1))
		  ReDim XFN_JAWS((ISCM_MAX-1))
		  ReDim XBN_JAWS((ISCM_MAX-1))
		  ReDim Medium_Jaws((ISCM_MAX-1))
		  ReDim PCUT_Jaws((ISCM_MAX-1))
		  ReDim ECUT_Jaws((ISCM_MAX-1))
		  ReDim Dose_zone_Jaws((ISCM_MAX-1))
		  ReDim Iregion_Jaws((ISCM_MAX-1))
		  
		  
		  for k=1 to ISCM_MAX
		    XY_Choice(k-1)=Trim(text(0))
		    text.Remove 0
		    temp=Trim(text(0))
		    text.Remove 0
		    
		    ZMIN_JAWS(k-1)=val(NthField(temp,",",1))
		    ZMAX_JAWS(k-1)=val(NthField(temp,",",2))
		    XFP_JAWS(k-1)=val(NthField(temp,",",3))
		    XBP_JAWS(k-1)=val(NthField(temp,",",4))
		    XFN_JAWS(k-1)=val(NthField(temp,",",5))
		    XBN_JAWS(k-1)=val(NthField(temp,",",6))
		  next
		  
		  temp=text(0)
		  text.Remove 0
		  
		  ECUT_Openings=val(NthField(temp,",",1))
		  pCUT_Openings=val(NthField(temp,",",2))
		  Dose_zone_opening=val(NthField(temp,",",3))
		  Iregion_opening=val(NthField(temp,",",4))
		  
		  
		  
		  for k=1 to ISCM_MAX
		    temp=text(0)
		    text.Remove 0
		    
		    ECUT_Jaws(k-1)=val(NthField(temp,",",1))
		    PCUT_Jaws(k-1)=val(NthField(temp,",",2))
		    Dose_zone_Jaws(k-1)=val(NthField(temp,",",3))
		    Iregion_Jaws(k-1)=val(NthField(temp,",",4))
		    
		    
		    Medium_Jaws(k-1)=text(0)
		    text.Remove 0
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write(cm as Class_BEAM_Inputfile_CMs)
		  Dim temp as String
		  Dim i as Integer
		  
		  
		  // Write New Jaw settings to text
		  ReDim cm.text(-1)
		  
		  temp=Format(cm.JAWS.RMAX_CM,"-#.###")+", RMAX"
		  cm.text.AddRow( temp )
		  
		  cm.text.Append cm.JAWS.Title_CM
		  
		  temp=Format(cm.JAWS.ISCM_MAX,"#")+", # PAIRED BARS OR JAWS"
		  cm.text.AddRow( temp )
		  
		  for i=1 to cm.JAWS.ISCM_MAX
		    temp=cm.JAWS.XY_Choice(i-1)
		    cm.text.AddRow( temp )
		    temp=Format(cm.JAWS.ZMIN_JAWS(i-1),"-#.####")+",    "+Format(cm.JAWS.ZMAX_JAWS(i-1),"-#.####")+",    "_
		    +Format(cm.JAWS.XFP_JAWS(i-1),"-#.####")+",    "+Format(cm.JAWS.XBP_JAWS(i-1),"-#.####")+",    "+_
		    Format(cm.JAWS.XFN_JAWS(i-1),"-#.####")+",    "+Format(cm.JAWS.XBN_JAWS(i-1),"-#.####")
		    cm.text.AddRow( temp )
		  next
		  
		  temp=Format(cm.JAWS.ECUT_Openings ,"-#.####")+", "+Format(cm.JAWS.PCUT_Openings,"-#.###") +", "+Format(cm.JAWS.Dose_zone_opening,"#") +", "+Format(cm.JAWS.Iregion_opening,"#")
		  cm.text.AddRow( temp )
		  
		  
		  for i=1 to cm.JAWS.ISCM_MAX
		    temp=Format(cm.JAWS.ECUT_Jaws(i-1) ,"-#.####")+", "+Format(cm.JAWS.PCUT_Jaws(i-1),"-#.###") +", "+Format(cm.JAWS.Dose_zone_Jaws(i-1),"#") +", "+Format(cm.JAWS.Iregion_Jaws(1-1),"#")
		    cm.text.AddRow( temp )
		    temp=cm.JAWS.Medium_Jaws(i-1)
		    cm.text.AddRow( temp )
		  next
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Dose_zone_Jaws(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_zone_opening As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT_Jaws(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT_Openings As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Iregion_Jaws(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Iregion_opening As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ISCM_MAX As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Medium_Jaws(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PCUT_Jaws(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		PCUT_Openings As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		RMAX_CM As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Title_CM As string
	#tag EndProperty

	#tag Property, Flags = &h0
		XBN_JAWS(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		XBP_JAWS(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		XFN_JAWS(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		XFP_JAWS(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		XY_Choice(-1) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ZMAX_JAWS(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ZMIN_JAWS(-1) As single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Dose_zone_opening"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECUT_Openings"
			Visible=false
			Group="Behavior"
			InitialValue="0"
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
			Name="Iregion_opening"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ISCM_MAX"
			Visible=false
			Group="Behavior"
			InitialValue="0"
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
			Name="PCUT_Openings"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RMAX_CM"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
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
			Name="Title_CM"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
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
