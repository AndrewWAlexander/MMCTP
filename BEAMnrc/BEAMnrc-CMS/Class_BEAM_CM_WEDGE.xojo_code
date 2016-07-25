#tag Class
Protected Class Class_BEAM_CM_WEDGE
	#tag Method, Flags = &h0
		Sub Read(line() as String)
		  //------------------------
		  //
		  //
		  //------------------------
		  Dim i as Integer
		  Dim temp as String
		  //------------------------
		  
		  
		  if UBound(line)<3 Then
		    Return
		  end
		  
		  if InStr(line(0),"*********** start ")>0 Then
		    line.Remove 0
		  end
		  
		  
		  RMAX_CM=val(Line(0))
		  line.Remove 0
		  
		  Title_CM=Line(0)
		  line.Remove 0
		  
		  temp=Line(0)
		  line.Remove 0
		  Status=Val(NthField(temp,",",1))
		  Front=Val(NthField(temp,",",2))
		  Back=Val(NthField(temp,",",3))
		  
		  
		  temp=Line(0)
		  Zmin=val(Line(0))
		  line.Remove 0
		  
		  if Front=1 Then
		    temp=Line(0)
		    line.Remove 0
		    DFront=Val(NthField(temp,",",1))
		    TFront=Val(NthField(temp,",",2))
		    
		    temp=Line(0)
		    line.Remove 0
		    ECutFront=Val(NthField(temp,",",1))
		    PcutFront=Val(NthField(temp,",",2))
		    DoseZoneFront=Val(NthField(temp,",",3))
		    Iregion_to_bit_Front=Val(NthField(temp,",",4))
		    ESaveIn_Front=Val(NthField(temp,",",5))
		    
		    temp=Line(0)
		    line.Remove 0
		    Medium_In_Front=Trim(temp)
		  end
		  
		  if Status=1 Then
		    temp=Line(0)
		    line.Remove 0
		    WDir=Val(NthField(temp,",",1))
		    WOr=Val(NthField(temp,",",2))
		    WPos1=Val(NthField(temp,",",3))
		    WPos2=Val(NthField(temp,",",4))
		    
		    
		    temp=Line(0)
		    line.Remove 0
		    ECutAir=Val(NthField(temp,",",1))
		    PcutAir=Val(NthField(temp,",",2))
		    DoseZoneAir=Val(NthField(temp,",",3))
		    Iregion_to_bit_Air=Val(NthField(temp,",",4))
		    
		    temp=Line(0)
		    line.Remove 0
		    NProf=Val(NthField(temp,",",1))
		    ReDim A_Profile(NProf-1)
		    
		    NPoint=Val(NthField(temp,",",2))
		    
		    temp=Line(0)
		    line.Remove 0
		    D(0)=Val(NthField(temp,",",1))
		    D(1)=Val(NthField(temp,",",2))
		    D(2)=Val(NthField(temp,",",3))
		    D(3)=Val(NthField(temp,",",4))
		    D(4)=Val(NthField(temp,",",5))
		    D(5)=Val(NthField(temp,",",6))
		    D(6)=Val(NthField(temp,",",7))
		    D(7)=Val(NthField(temp,",",8))
		    D(8)=Val(NthField(temp,",",9))
		    D(9)=Val(NthField(temp,",",10))
		    
		    
		    
		    for i=1 to NProf
		      A_Profile(i-1)=new Class_BEAM_CM_WEDGE_Profile
		      temp=Line(0)
		      line.Remove 0
		      A_Profile(i-1).A(0)=Val(NthField(temp,",",1))
		      A_Profile(i-1).A(1)=Val(NthField(temp,",",2))
		      A_Profile(i-1).A(2)=Val(NthField(temp,",",3))
		      A_Profile(i-1).A(3)=Val(NthField(temp,",",4))
		      A_Profile(i-1).A(4)=Val(NthField(temp,",",5))
		      A_Profile(i-1).A(5)=Val(NthField(temp,",",6))
		      A_Profile(i-1).A(6)=Val(NthField(temp,",",7))
		      A_Profile(i-1).A(7)=Val(NthField(temp,",",8))
		      A_Profile(i-1).A(8)=Val(NthField(temp,",",9))
		      A_Profile(i-1).A(9)=Val(NthField(temp,",",10))
		    Next
		    
		    temp=Line(0)
		    line.Remove 0
		    ECutWedge=Val(NthField(temp,",",1))
		    PcutWedge=Val(NthField(temp,",",2))
		    DoseZoneWedge=Val(NthField(temp,",",3))
		    Iregion_to_bit_Wedge=Val(NthField(temp,",",4))
		    ESaveIn_Wedge=Val(NthField(temp,",",5))
		    
		    temp=Line(0)
		    line.Remove 0
		    Medium_In_Wedge=Trim(temp)
		  end
		  
		  if Back=1 Then
		    temp=Line(0)
		    line.Remove 0
		    DBack=Val(NthField(temp,",",1))
		    TBack=Val(NthField(temp,",",2))
		    
		    temp=Line(0)
		    line.Remove 0
		    ECutBack=Val(NthField(temp,",",1))
		    PcutBack=Val(NthField(temp,",",2))
		    DoseZoneBack=Val(NthField(temp,",",3))
		    Iregion_to_bit_back=Val(NthField(temp,",",4))
		    ESaveIn_Back=Val(NthField(temp,",",5))
		    
		    temp=Line(0)
		    line.Remove 0
		    Medium_In_Back=Trim(temp)
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write(cm as Class_BEAM_Inputfile_CMs)
		  //-----------------------------
		  // Write WEDGE Variables to Text
		  //
		  //-----------------------------
		  Dim temp as String
		  Dim i as Integer
		  Dim wedge as Class_BEAM_CM_WEDGE
		  //-----------------------------
		  
		  // Write New Wedge settings to text
		  ReDim cm.text(-1)
		  
		  
		  temp=Format(RMAX_CM,"-#.####")+", RMAX"
		  cm.text.Append temp
		  cm.text.Append Title_CM
		  
		  //STATUS_$WEDGE, FRONT_$WEDGE, BACK_$WEDGE (3I5)
		  //"I>                            wedge status (in=1, out=0), front and back
		  //"I>                            plate (yes=1, no=0)
		  temp=Format(Status,"#")+", "+Format(Front,"#")+", "+Format(Back,"#")+","
		  cm.text.Append temp
		  
		  temp=Format(Zmin,"-#.####")
		  cm.text.Append temp
		  
		  if Front=1 Then
		    temp=Format(DFront,"-#.#####")+", "+Format(TFront,"-#.#####")
		    cm.text.Append temp
		    temp=Format(ECutFront,"-#.#####")+", "+Format(PcutFront,"-#.#####")+", "+Format(DoseZoneFront,"#")+", "+Format(Iregion_to_bit_Front,"#")+", "+Format(ESaveIn_Front,"-0.0####")+", ECUT,PCUT etc"
		    cm.text.Append temp
		    cm.text.Append Medium_In_Front
		  end
		  
		  if Status=1 Then
		    temp=Format(WDir,"#")+", "+Format(WOr,"#")+", "+Format(WPos1,"-#.#####")+", "+Format(WPos2,"-#.#####")+", WDIR,WOR,WPOS(2) general wedge data"
		    cm.text.Append temp
		    temp=Format(ECutAir,"-#.#####")+", "+Format(PcutAir,"-#.#####")+", "+Format(DoseZoneAir,"#")+", "+Format(Iregion_to_bit_Air,"#")+", interior of CM wedge (assumed AIR)"
		    cm.text.Append temp
		    temp=Format(NProf,"#")+", "+Format(NPoint,"#")+", NPROF and NPOINTS for wedge geometry"
		    cm.text.Append temp
		    temp=Format(D(0),"-#.#####")+", "+Format(D(1),"-#.#####")+", "+Format(D(2),"-#.#####")+", "+Format(D(3),"-#.#####")+", "+Format(D(4),"-#.#####")+", "+Format(D(5),"-#.#####")+", "+Format(D(6),"-#.#####")+", "+Format(D(7),"-#.#####")+", "+Format(D(8),"-#.#####")+", "+Format(D(9),"-#.#####")
		    cm.text.Append temp
		    for i=1 to NProf
		      temp=Format(A_Profile(i-1).A(0),"-#.#####")+", "+Format(A_Profile(i-1).A(1),"-#.#####")+", "+Format(A_Profile(i-1).A(2),"-#.#####")+", "+Format(A_Profile(i-1).A(3),"-#.#####")+", "+Format(A_Profile(i-1).A(4),"-#.#####")+", "+Format(A_Profile(i-1).A(5),"-#.#####")+", "+Format(A_Profile(i-1).A(6),"-#.#####")+", "+Format(A_Profile(i-1).A(7),"-#.#####")+", "+Format(A_Profile(i-1).A(8),"-#.#####")+", "+Format(A_Profile(i-1).A(9),"-#.#####")
		      cm.text.Append temp
		    next
		    temp=Format(ECutWedge,"-0.0####")+","+Format(PcutWedge,"-0.0####")+","+Format(DoseZoneWedge,"#")+","+Format(Iregion_to_bit_Wedge,"#")+","+Format(ESaveIn_Wedge,"-0.0####")+",         ECUT, PCUT for wedge"
		    cm.text.Append temp
		    cm.text.Append Medium_In_Wedge
		  end
		  
		  if Back=1 Then
		    temp=Format(DBack,"-#.#####")+", "+Format(TBack,"-#.#####")
		    cm.text.Append temp
		    temp=Format(ECutBack,"-#.#####")+", "+Format(PcutBack,"-#.#####")+", "+Format(DoseZoneBack,"#")+", "+Format(Iregion_to_bit_back,"#")+", "+Format(ESaveIn_Back,"-#.#####")+",         ECUT,PCUT Back Plate"
		    cm.text.Append temp
		    cm.text.Append Medium_In_Back
		  end
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		A_Profile(-1) As Class_BEAM_CM_WEDGE_Profile
	#tag EndProperty

	#tag Property, Flags = &h0
		Back As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		D(9) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		DBack As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		DFront As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		DoseZoneAir As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		DoseZoneBack As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		DoseZoneFront As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		DoseZoneWedge As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		ECutAir As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ECutBack As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		ECutFront As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ECutWedge As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		ESaveIn_Back As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		ESaveIn_Front As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ESaveIn_Wedge As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Front As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Iregion_to_bit_Air As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Iregion_to_bit_back As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Iregion_to_bit_Front As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Iregion_to_bit_Wedge As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Medium_In_Back As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Medium_In_Front As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Medium_In_Wedge As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NPoint As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NProf As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PcutAir As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		PcutBack As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		PcutFront As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		PcutWedge As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		RMAX_CM As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Status As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		TBack As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		TFront As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Title_CM As string
	#tag EndProperty

	#tag Property, Flags = &h0
		WDir As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		WOr As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		WPos1 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		WPos2 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Zmin As Single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Back"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DBack"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DFront"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoseZoneAir"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoseZoneBack"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoseZoneFront"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoseZoneWedge"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECutAir"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECutBack"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECutFront"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECutWedge"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ESaveIn_Back"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ESaveIn_Front"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ESaveIn_Wedge"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Front"
			Group="Behavior"
			InitialValue="0"
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
			Name="Iregion_to_bit_Air"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Iregion_to_bit_back"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Iregion_to_bit_Front"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Iregion_to_bit_Wedge"
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
			Name="Medium_In_Back"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Medium_In_Front"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Medium_In_Wedge"
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
			Name="NPoint"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NProf"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PcutAir"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PcutBack"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PcutFront"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PcutWedge"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RMAX_CM"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Status"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TBack"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TFront"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
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
			Name="WDir"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WOr"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WPos1"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WPos2"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Zmin"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
