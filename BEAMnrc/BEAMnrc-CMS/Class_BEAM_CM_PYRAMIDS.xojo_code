#tag Class
Protected Class Class_BEAM_CM_PYRAMIDS
	#tag Method, Flags = &h0
		Sub Read(Text() as String)
		  //-----------------------------------------------
		  // READIN Pyramids CM into variables
		  //
		  //-----------------------------------------------
		  Dim i,num as integer
		  Dim temp as String
		  Dim bottom as Single
		  //-----------------------------------------------
		  
		  
		  RMAX_CM=val(NthField((text(0)),",",1))
		  text.Remove 0
		  Title_CM=text(0)
		  text.Remove 0
		  
		  ISCM_MAX=val(NthField((text(0)),",",1))
		  IFILL=val(NthField((text(0)),",",2))
		  text.Remove 0
		  
		  ReDim Zmin(ISCM_MAX-1)
		  ReDim Zmax(ISCM_MAX-1)
		  ReDim XFP(ISCM_MAX-1)
		  
		  ReDim XBP(ISCM_MAX-1)
		  ReDim XFN(ISCM_MAX-1)
		  ReDim XBN(ISCM_MAX-1)
		  
		  ReDim YFP(ISCM_MAX-1)
		  ReDim YBP(ISCM_MAX-1)
		  ReDim YFN(ISCM_MAX-1)
		  
		  ReDim YBN(ISCM_MAX-1)
		  ReDim XMAX(ISCM_MAX-1)
		  ReDim YMAX(ISCM_MAX-1)
		  
		  for i=1 to ISCM_MAX
		    
		    Zmin(i-1)=val(NthField((text(0)),",",1))
		    Zmax(i-1)=val(NthField((text(0)),",",2))
		    XFP(i-1)=val(NthField((text(0)),",",3))
		    
		    XBP(i-1)=val(NthField((text(0)),",",4))
		    XFN(i-1)=val(NthField((text(0)),",",5))
		    XBN(i-1)=val(NthField((text(0)),",",6))
		    
		    YFP(i-1)=val(NthField((text(0)),",",7))
		    YBP(i-1)=val(NthField((text(0)),",",8))
		    YFN(i-1)=val(NthField((text(0)),",",9))
		    
		    YBN(i-1)=val(NthField((text(0)),",",10))
		    XMAX(i-1)=val(NthField((text(0)),",",11))
		    YMAX(i-1)=val(NthField((text(0)),",",12))
		    
		    text.Remove 0
		  Next
		  
		  if IFILL=0 Then
		    num=ISCM_MAX
		  else
		    num=2*ISCM_MAX
		  end
		  
		  ReDim Medium_in(num)
		  ReDim ECUT(0+num)
		  ReDim PCUT(0+num)
		  ReDim Dose_Zone(0+num)
		  ReDim IRegion_Bit(0+num)
		  
		  // Line 4, ECUT/PCUT for air
		  ECUT(0)=val(NthField((text(0)),",",1))
		  PCUT(0)=val(NthField((text(0)),",",2))
		  Dose_Zone(0)=val(NthField((text(0)),",",3))
		  IRegion_Bit(0)=val(NthField((text(0)),",",4))
		  Medium_in(0) = "Garbage"
		  text.Remove 0
		  
		  for i=1 to ISCM_MAX
		    if IFILL=0 Then
		      // Only have to read one line
		      ECUT(i)=val(NthField((text(0)),",",1))
		      PCUT(i)=val(NthField((text(0)),",",2))
		      Dose_Zone(i)=val(NthField((text(0)),",",3))
		      IRegion_Bit(i)=val(NthField((text(0)),",",4))
		      text.Remove 0
		      Medium_in(i)=Trim(text(0))
		      text.Remove 0
		    else
		      ECUT(2*i-1)=val(NthField((text(0)),",",1))
		      PCUT(2*i-1)=val(NthField((text(0)),",",2))
		      Dose_Zone(2*i-1)=val(NthField((text(0)),",",3))
		      IRegion_Bit(2*i-1)=val(NthField((text(0)),",",4))
		      text.Remove 0
		      Medium_in(2*i-1)=Trim(text(0))
		      text.Remove 0
		      ECUT(2*i)=val(NthField((text(0)),",",1))
		      PCUT(2*i)=val(NthField((text(0)),",",2))
		      Dose_Zone(2*i)=val(NthField((text(0)),",",3))
		      IRegion_Bit(2*i)=val(NthField((text(0)),",",4))
		      text.Remove 0
		      Medium_in(2*i)=Trim(text(0))
		      text.Remove 0
		    end
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write(cm as Class_BEAM_Inputfile_CMs)
		  //-----------------------------------------------------
		  // Write PYRAMIDS CM to string
		  //
		  // March 2011
		  //-----------------------------------------------------
		  Dim oneline  as String
		  Dim i,j  as Integer
		  //-----------------------------------------------------
		  
		  
		  // Now rewite CM with new opening
		  ReDim cm.text(-1)
		  
		  cm.text.Append Format(RMAX_CM,"-0.0###")+", RMAX"
		  cm.text.Append Title_CM
		  cm.text.Append Format(ISCM_MAX,"-###")+", "+Format(IFILL,"#")+", ISCM_MAX_$PYRAMIDS, IFILL_$PYRAMIDS"
		  
		  for i=1 to ISCM_MAX
		    cm.text.Append Format(Zmin(i-1),"-0.0###")+", "+Format(Zmax(i-1),"-0.0###")+", "+Format(XFP(i-1),"-0.0###") _
		    +", "+Format(XBP(i-1),"-0.0###")+", "+Format(XFN(i-1),"-0.0###")+", "+Format(XBN(i-1),"-0.0###")_
		    +", "+Format(YFP(i-1),"-0.0###")+", "+Format(YBP(i-1),"-0.0###")+", "+Format(YFN(i-1),"-0.0###")_
		    +", "+Format(YBN(i-1),"-0.0###")+", "+Format(XMAX(i-1),"-0.0###")+", "+Format(YMAX(i-1),"-0.0###")
		  Next
		  
		  
		  cm.text.Append Format(ECUT(0),"#.###")+", "+Format(PCUT(0),"#.###")+", "+Format(Dose_Zone(0),"-#")+", "+Format(IRegion_Bit(0),"#")
		  
		  
		  for i=1 to ISCM_MAX
		    if IFILL=0 Then
		      cm.text.Append Format(ECUT(i),"#.###")+","+Format(PCUT(i),"#.###")+","+Format(Dose_Zone(i), "-#")+","+Format(IRegion_Bit(i), "#")
		      cm.text.Append Medium_in(i)
		    else
		      cm.text.Append Format(ECUT(2*i-1),"#.###")+","+Format(PCUT(2*i-1),"#.###")+","+Format(Dose_Zone(2*i-1), "-#")+","+Format(IRegion_Bit(2*i-1), "#")
		      cm.text.Append Medium_in(2*i-1)
		      cm.text.Append Format(ECUT(2*i),"#.###")+","+Format(PCUT(2*i),"#.###")+","+Format(Dose_Zone(2*i), "-#")+","+Format(IRegion_Bit(2*i), "#")
		      cm.text.Append Medium_in(2*i)
		    end
		  Next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Dose_Zone(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		IFILL As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_Bit(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ISCM_MAX As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Medium_In(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PCUT(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		RMAX_CM As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Title_CM As string
	#tag EndProperty

	#tag Property, Flags = &h0
		XBN(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		XBP(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		XFN(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		XFP(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		XMAX(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		YBN(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		YBP(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		YFN(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		YFP(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		YMAX(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Zmax(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Zmin(-1) As Single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="IFILL"
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
			Name="ISCM_MAX"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
