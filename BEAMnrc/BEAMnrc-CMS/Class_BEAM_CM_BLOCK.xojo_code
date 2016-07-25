#tag Class
Protected Class Class_BEAM_CM_BLOCK
	#tag Method, Flags = &h0
		Sub Read(text() as String)
		  //-------------------------------------
		  // Readin Block CM
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
		  temp=text(0)
		  text.Remove 0
		  ZMIN_BLOCK=val(NthField(temp,",",1))
		  ZMAX_BLOCK=val(NthField(temp,",",2))
		  ZFOCUS_BLOCK=val(NthField(temp,",",3))
		  
		  temp=text(0)
		  text.Remove 0
		  ISUB_MAX_BLOCK=val(NthField(temp,",",1))
		  
		  ReDim Subregions(ISUB_MAX_BLOCK-1)
		  
		  for i=1 to ISUB_MAX_BLOCK
		    Subregions(i-1)=new Class_BEAM_CM_BLOCK_Subregions
		    
		    temp=text(0)
		    text.Remove 0
		    Subregions(i-1).NSUB_BLOCK=val(NthField(temp,",",1))
		    
		    ReDim Subregions(i-1).XHI_POINT_BLOCK(Subregions(i-1).NSUB_BLOCK-1)
		    ReDim Subregions(i-1).YHI_POINT_BLOCK(Subregions(i-1).NSUB_BLOCK-1)
		    
		    for k=1 to Subregions(i-1).NSUB_BLOCK
		      temp=text(0)
		      text.Remove 0
		      Subregions(i-1).XHI_POINT_BLOCK(k-1)=val(NthField(temp,",",1))
		      Subregions(i-1).YHI_POINT_BLOCK(k-1)=val(NthField(temp,",",2))
		    next
		  next
		  
		  if UBound(text)>=5 Then
		    temp=text(0)
		    text.Remove 0
		    
		    XPMAX_BLOCK=val(NthField(temp,",",1))
		    YPMAX_BLOCK=val(NthField(temp,",",2))
		    XNMAX_BLOCK=val(NthField(temp,",",3))
		    YNMAX_BLOCK=val(NthField(temp,",",4))
		    
		    
		    temp=text(0)
		    text.Remove 0
		    
		    ECUT_Air=val(NthField(temp,",",1))
		    PCUT_Air=val(NthField(temp,",",2))
		    Dose_zone_Air=val(NthField(temp,",",3))
		    IRegion_Air=val(NthField(temp,",",4))
		    
		    temp=text(0)
		    text.Remove 0
		    
		    ECUT_Open=val(NthField(temp,",",1))
		    PCUT_Open=val(NthField(temp,",",2))
		    Dose_zone_Open=val(NthField(temp,",",3))
		    IRegion_Open=val(NthField(temp,",",4))
		    
		    temp=text(0)
		    text.Remove 0
		    Medium_In_Opening=temp
		    
		    temp=text(0)
		    text.Remove 0
		    
		    ECUT_Block=val(NthField(temp,",",1))
		    PCUT_Block=val(NthField(temp,",",2))
		    Dose_zone_Block=val(NthField(temp,",",3))
		    IRegion_Block=val(NthField(temp,",",4))
		    
		    temp=text(0)
		    text.Remove 0
		    Medium_In_Block=temp
		  else
		    Return
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write(text() as String)
		  //-------------------------------------
		  // Write Block CM
		  //
		  //-------------------------------------
		  Dim i ,k as Integer
		  //-------------------------------------
		  
		  ReDim text(-1)
		  
		  text.Append Format(RMAX_CM,"-#.###")+", RMAX"
		  text.Append Title_CM
		  
		  text.Append Format(ZMIN_BLOCK,"-#.####")+", "+Format(ZMAX_BLOCK,"-#.####")+", "+Format(ZFOCUS_BLOCK,"-#.####")+", ZMIN, ZMAX, ZFOCUS"
		  
		  
		  text.Append Format(ISUB_MAX_BLOCK,"#")+", # OF SUBREGIONS"
		  
		  
		  for i=1 to ISUB_MAX_BLOCK
		    text.Append Format(Subregions(i-1).NSUB_BLOCK,"#")+", NUMBER OF POINTS IN SUBREGION "+str(i)
		    for k=1 to Subregions(i-1).NSUB_BLOCK
		      text.Append Format(Subregions(i-1).XHI_POINT_BLOCK(k-1),"-#.######")+", "+Format(Subregions(i-1).yHI_POINT_BLOCK(k-1),"-#.######")
		    next
		  next
		  
		  
		  text.Append Format(XPMAX_BLOCK,"-#.####")+", "+Format(YPMAX_BLOCK,"-#.####")+", "+Format(XNMAX_BLOCK,"-#.####")+", "+Format(YNMAX_BLOCK,"-#.####")
		  
		  text.Append Format(ECUT_Air,"-#.###")+", "+Format(PCUT_Air,"-#.###")+", "+Format(Dose_zone_Air,"#")+", "+Format(IRegion_Air,"#")
		  text.Append Format(ECUT_Open,"-#.###")+", "+Format(PCUT_Open,"-#.###")+", "+Format(Dose_zone_Open,"#")+", "+Format(IRegion_Open,"#")
		  text.Append Medium_In_Opening
		  text.Append Format(ECUT_Block,"-#.###")+", "+Format(PCUT_Block,"-#.###")+", "+Format(Dose_zone_Block,"#")+", "+Format(IRegion_Block,"#")
		  text.Append Medium_In_Block
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Dose_zone_Air As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_zone_Block As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_zone_Open As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT_Air As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT_Block As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT_Open As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_Air As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_Block As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IRegion_Open As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ISUB_MAX_BLOCK As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Medium_In_Block As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Medium_In_Opening As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PCUT_Air As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		PCUT_Block As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		PCUT_Open As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		RMAX_CM As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Subregions(-1) As Class_BEAM_CM_BLOCK_Subregions
	#tag EndProperty

	#tag Property, Flags = &h0
		Title_CM As string
	#tag EndProperty

	#tag Property, Flags = &h0
		XNMAX_BLOCK As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		XPMAX_BLOCK As single
	#tag EndProperty

	#tag Property, Flags = &h0
		YNMAX_BLOCK As single
	#tag EndProperty

	#tag Property, Flags = &h0
		YPMAX_BLOCK As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ZFOCUS_BLOCK As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ZMAX_BLOCK As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ZMIN_BLOCK As single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Dose_zone_Air"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_zone_Block"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_zone_Open"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECUT_Air"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECUT_Block"
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
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRegion_Air"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRegion_Block"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IRegion_Open"
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
			Name="Medium_In_Block"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Medium_In_Opening"
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
			Name="PCUT_Air"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PCUT_Block"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PCUT_Open"
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
			Name="XNMAX_BLOCK"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="XPMAX_BLOCK"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="YNMAX_BLOCK"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="YPMAX_BLOCK"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZFOCUS_BLOCK"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZMAX_BLOCK"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZMIN_BLOCK"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
