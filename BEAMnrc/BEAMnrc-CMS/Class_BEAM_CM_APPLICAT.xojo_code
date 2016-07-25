#tag Class
Protected Class Class_BEAM_CM_APPLICAT
	#tag Method, Flags = &h0
		Sub Read(Text() as String)
		  //---------------------------------------
		  //
		  //
		  //---------------------------------------
		  Dim temp as String
		  Dim k,i,index,num_slabs,x as integer
		  Dim bottom as Single
		  //---------------------------------------
		  
		  if InStr(Text(0),"*********** start of CM")>0 Then
		    Text.Remove 0
		  end
		  
		  
		  if UBound(Text)<3 Then
		    Return
		  end
		  
		  RMAX_CM=val(NthField((text(0)),",",1))
		  text.Remove 0
		  Title_CM=text(0)
		  text.Remove 0
		  ZBACK_APPLICAT=val(text(0))
		  text.Remove 0
		  temp=text(0)
		  text.Remove 0
		  N_APPLICAT=val(NthField(temp,",",1))
		  Ishape=val(NthField(temp,",",2))
		  
		  ReDim ZMIN_APPLICAT(N_APPLICAT-1)
		  ReDim ZTHICK_APPLICAT(N_APPLICAT-1)
		  ReDim XMIN_APPLICAT(N_APPLICAT-1)
		  ReDim YMIN_APPLICAT(N_APPLICAT-1)
		  ReDim WIDTHX_APPLICAT(N_APPLICAT-1)
		  ReDim WIDTHY_APPLICAT(N_APPLICAT-1)
		  ReDim DOSE_ZONE(N_APPLICAT-1)
		  ReDim IREGION_TO_BIT(N_APPLICAT-1)
		  ReDim MED_IN(N_APPLICAT-1)
		  
		  
		  
		  
		  for i=1 to N_APPLICAT
		    temp=text(0)
		    text.Remove 0
		    ZMIN_APPLICAT(i-1)=val(NthField(temp,",",1))
		    ZTHICK_APPLICAT(i-1)=val(NthField(temp,",",2))
		    
		    if Ishape=0 Then // Square app
		      XMIN_APPLICAT(i-1)=val(NthField(temp,",",3))
		      WIDTHX_APPLICAT(i-1)=val(NthField(temp,",",4))
		      DOSE_ZONE(i-1)=val(NthField(temp,",",5))
		      IREGION_TO_BIT(i-1)=val(NthField(temp,",",6))
		      
		      
		    else // Rect app
		      XMIN_APPLICAT(i-1)=val(NthField(temp,",",3))
		      YMIN_APPLICAT(i-1)=val(NthField(temp,",",4))
		      WIDTHX_APPLICAT(i-1)=val(NthField(temp,",",5))
		      WIDTHY_APPLICAT(i-1)=val(NthField(temp,",",6))
		      DOSE_ZONE(i-1)=val(NthField(temp,",",7))
		      IREGION_TO_BIT(i-1)=val(NthField(temp,",",8))
		      
		    end
		    
		  next
		  
		  temp=text(0)
		  text.Remove 0
		  ECUT=val(NthField(temp,",",1))
		  PCUT=val(NthField(temp,",",2))
		  DOSE_ZONE_AIR=val(NthField(temp,",",3))
		  IREGION_TO_BIT_AIR=val(NthField(temp,",",4))
		  
		  for i=1 to N_APPLICAT
		    temp=text(0)
		    text.Remove 0
		    MED_IN(i-1)=temp
		  next
		  
		  
		  //gBEAM.egs_msg.append "Error in CM Applicator : Number of lines in applicator CM within egsinp file not equal to number of lines in "+f.Name //Something went horibly wrong with this line, I think it used to be a BEAM
		  //Return False
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write(Text() as String)
		  //--------------------------------------------
		  // Write CM Applicator
		  //
		  //
		  //--------------------------------------------
		  Dim i ,k,j as integer
		  Dim temp as String
		  //--------------------------------------------
		  
		  ReDim text(-1)
		  
		  text.Append Format(RMAX_CM,"-#.###")+", RMAX"
		  text.Append Title_CM
		  text.Append Format(ZBACK_APPLICAT,"-#.###")+", ZBACK"
		  text.Append Format(N_APPLICAT,"#")+", "+Format(Ishape,"#")+", #SCRAPERS, Type"
		  
		  
		  for i=1 to N_APPLICAT
		    
		    if Ishape=0 Then // For Square Shape
		      temp=Format(ZMIN_APPLICAT(i-1),"-#.###")+", "+Format(ZTHICK_APPLICAT(i-1),"-#.###")+", "+Format(XMIN_APPLICAT(i-1),"-#.###")+", "+Format(WIDTHX_APPLICAT(i-1),"-#.###")+", "+Format(DOSE_ZONE(i-1),"#")+", "+Format(IREGION_TO_BIT(i-1),"#")+", Square"
		      
		    elseif Ishape=1 then // For Rec Shape
		      temp=Format(ZMIN_APPLICAT(i-1),"-#.###")+", "+Format(ZTHICK_APPLICAT(i-1),"-#.###")+", "+_
		      Format(XMIN_APPLICAT(i-1),"-#.###")+", "+Format(YMIN_APPLICAT(i-1),"-#.###")+", "+_
		      Format(WIDTHX_APPLICAT(i-1),"-#.###")+", "+Format(WIDTHY_APPLICAT(i-1),"-#.###")+", "+Format(DOSE_ZONE(i-1),"#")+_
		      ", "+Format(IREGION_TO_BIT(i-1),"#")+",  Rectangle" 
		    end
		    
		    Text.Append temp
		  next
		  
		  text.Append Format(ECUT,"#.###")+", "+Format(PCUT,"#.###")+", "+Format(DOSE_ZONE_AIR,"#")+", "+Format(IREGION_TO_BIT_AIR,"#")+","
		  
		  for i=1 to N_APPLICAT
		    text.Append MED_IN(i-1)
		  next
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		DOSE_ZONE(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		DOSE_ZONE_AIR As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		IREGION_TO_BIT(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IREGION_TO_BIT_AIR As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ISCM_MAX As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Ishape As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		MED_IN(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		N_APPLICAT As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PCUT As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		RMAX_CM As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Title_CM As string
	#tag EndProperty

	#tag Property, Flags = &h0
		WIDTHX_APPLICAT(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		WIDTHY_APPLICAT(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		XMIN_APPLICAT(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		YMIN_APPLICAT(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ZBACK_APPLICAT As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ZMIN_APPLICAT(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ZTHICK_APPLICAT(-1) As single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DOSE_ZONE_AIR"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECUT"
			Group="Behavior"
			InitialValue="0"
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
			Name="IREGION_TO_BIT_AIR"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ISCM_MAX"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Ishape"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="N_APPLICAT"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PCUT"
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
			Name="ZBACK_APPLICAT"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
