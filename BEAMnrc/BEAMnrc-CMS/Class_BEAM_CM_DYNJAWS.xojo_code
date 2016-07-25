#tag Class
Protected Class Class_BEAM_CM_DYNJAWS
	#tag Method, Flags = &h0
		Sub Read(Text() as String, ff as FolderItem)
		  //--------------------------------------------
		  // Readin DYNJAW CM
		  //
		  //
		  //--------------------------------------------
		  Dim temp as String
		  Dim k,index_dd as Integer
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  Dim bottom as Single
		  //--------------------------------------------
		  
		  if UBound(text)<2 Then
		    Return
		  end
		  RMAX_CM=val(NthField((text(0)),",",1))
		  text.Remove 0
		  Title_CM=text(0)
		  text.Remove 0
		  temp=text(0)
		  text.Remove 0
		  
		  ISCM_MAX=val(NthField(temp,",",1))
		  MODE=val(NthField(temp,",",2))
		  ReDim XY_Choice((ISCM_MAX-1))
		  ReDim Medium_Jaws((ISCM_MAX-1))
		  ReDim ECUT_Jaws((ISCM_MAX-1))
		  ReDim pCUT_Jaws((ISCM_MAX-1))
		  ReDim IREGION_to_bit_Jaws((ISCM_MAX-1))
		  ReDim Dose_Zone_Jaws((ISCM_MAX-1))
		  ReDim DYN_Openings((ISCM_MAX-1))
		  
		  for k=1 to ISCM_MAX
		    DYN_Openings(k-1)= new Class_BEAM_CM_DYNJAWS_MOTION_Openings
		  next
		  
		  
		  
		  if MODE=0 Then // Static MLC mode
		    Number_Fields=1
		    ReDim index(Number_Fields-1)
		    for k=1 to ISCM_MAX
		      if UBound(text)<1 Then
		        Return
		      end
		      XY_Choice(k-1)=Trim(text(0))
		      text.Remove 0
		      temp=Trim(text(0))
		      text.Remove 0
		      DYN_Openings(k-1).ZMIN_JAWS=val(NthField(temp,",",1))
		      DYN_Openings(k-1).ZMAX_JAWS=val(NthField(temp,",",2))
		      DYN_Openings(k-1).XFP_JAWS=val(NthField(temp,",",3))
		      DYN_Openings(k-1).XBP_JAWS=val(NthField(temp,",",4))
		      DYN_Openings(k-1).XFN_JAWS=val(NthField(temp,",",5))
		      DYN_Openings(k-1).XBN_JAWS=val(NthField(temp,",",6))
		    next
		    
		  else // Dynamic MLC mode
		    
		    for k=1 to ISCM_MAX
		      if UBound(text)<1 Then
		        Return
		      end
		      XY_Choice(k-1)=Trim(text(0))
		      text.Remove 0
		    Next
		    
		    
		    temp=Trim(text(0))
		    text.Remove 0
		    JAW_File_Path=temp
		    // Must readin DYNJAW file to get Zmin and Zmax
		    temp=NthField(temp,"/",CountFields(temp,"/"))
		    f=ff
		    f=f.Child(temp)
		    Read_DYN_Opening(f)
		  end
		  
		  if UBound(text)<0 Then
		    Return
		  end
		  temp=text(0)
		  text.Remove 0
		  
		  ECUT_Openings=val(NthField(temp,",",1))
		  pCUT_Openings=val(NthField(temp,",",2))
		  Dose_Zone_air=val(NthField(temp,",",3))
		  IREGION_to_bit_air=val(NthField(temp,",",4))
		  
		  index_dd=3+2*ISCM_MAX
		  for k=1 to ISCM_MAX
		    temp=text(0)
		    ECUT_Jaws(k-1)=val(NthField(temp,",",1))
		    PCUT_Jaws(k-1)=val(NthField(temp,",",2))
		    Dose_Zone_Jaws(k-1)=val(NthField(temp,",",3))
		    IREGION_to_bit_Jaws(k-1)=val(NthField(temp,",",4))
		    
		    if UBound(text)<1 Then
		      Return
		    end
		    
		    text.Remove 0
		    Medium_Jaws(k-1)=text(0)
		    text.Remove 0
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_DYN_Opening(f as FolderItem)
		  //---------------------------------
		  // Readin DYNJAW file
		  //
		  //---------------------------------
		  Dim i,jj as Integer
		  Dim ts as TextInputStream
		  Dim aa,bb as Class_BEAM_CM_DYNJAWS_MOTION_Openings
		  Dim tmp as String
		  //---------------------------------
		  
		  if f.Exists Then
		    
		    ts=f.OpenAsTextFile
		    tmp=ts.ReadLine // Title
		    Number_Fields=Val(ts.ReadLine )
		    ReDim Index(Number_Fields-1)
		    ReDim DYN_Openings(Number_Fields*ISCM_MAX-1)
		    
		    for i=1 to Number_Fields
		      tmp=ts.ReadLine
		      Index(i-1)=val(tmp)
		      
		      for jj=1 to ISCM_MAX
		        aa= new Class_BEAM_CM_DYNJAWS_MOTION_Openings
		        
		        tmp=ts.ReadLine
		        aa.ZMIN_JAWS=val(NthField(tmp,",",1))
		        aa.ZMAX_JAWS=val(NthField(tmp,",",2))
		        aa.XFP_JAWS=val(NthField(tmp,",",3))
		        aa.XBP_JAWS=val(NthField(tmp,",",4))
		        aa.XFN_JAWS=val(NthField(tmp,",",5))
		        aa.XBN_JAWS=val(NthField(tmp,",",6))
		        
		        DYN_Openings((i-1)*ISCM_MAX+(jj-1))= aa
		        
		      next
		    next
		    ts.Close
		    
		  else
		    gBEAM.egs_msg.Append "Error within DYNJAW read-in, could not load MLC file named :"+f.Name
		    
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write(text() as String)
		  //-------------------------------
		  // Write New DYNJAW Settings to text
		  //
		  //
		  //-------------------------------
		  Dim i as Integer
		  Dim temp as String
		  //--------------------------------
		  
		  ReDim text(-1)
		  
		  temp=Format(RMAX_CM,"-#.###")+", RMAX"
		  Text.Append temp
		  Text.Append Title_CM
		  
		  temp=Format(ISCM_MAX,"#")+", "+Format(MODE,"#")+", # PAIRED BARS OR JAWS, MODE"
		  Text.Append temp
		  
		  if MODE=0 Then // Static JAW
		    for i=1 to ISCM_MAX
		      temp=XY_Choice(i-1)
		      Text.Append temp
		      if (i-1)>-1 and (i-1)<= UBound(DYN_Openings) Then
		        temp=Format(DYN_Openings(i-1).ZMIN_JAWS,"-#.####")+",    "+Format(DYN_Openings(i-1).ZMAX_JAWS,"-#.####")+",    "_
		        +Format(DYN_Openings(i-1).XFP_JAWS,"-#.####")+",    "+Format(DYN_Openings(i-1).XBP_JAWS,"-#.####")+",    "+_
		        Format(DYN_Openings(i-1).XFN_JAWS,"-#.####")+",    "+Format(DYN_Openings(i-1).XBN_JAWS,"-#.####")
		        Text.Append temp
		      end
		    next
		    
		  else
		    // MODE= 2 step and shoot
		    // MODE= 1 DYNAMIC Jaw settings to text
		    for i=1 to ISCM_MAX
		      text.Append XY_Choice(i-1)
		    next
		    text.Append JAW_File_Path
		  end
		  
		  
		  temp=Format(ECUT_Openings,"-#.####")+", "+Format(PCUT_Openings,"-#.####")+", "+Format(Dose_Zone_air,"#")+", "+Format(IREGION_to_bit_air,"#")
		  Text.Append temp
		  
		  
		  for i=1 to ISCM_MAX
		    temp=Format(ECUT_Jaws(i-1),"-#.####")+", "+Format(PCUT_Jaws(i-1),"-#.####")+", "+Format(Dose_Zone_Jaws(i-1),"#")+", "+Format(IREGION_to_bit_Jaws(i-1),"#")
		    Text.Append temp
		    temp=Medium_Jaws(i-1)
		    Text.Append temp
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_DYN_Opening(f as FolderItem, bversion as String)
		  //-------------------------------------------------------
		  // Write New DYNJAW opening file for step&shoot or dynamic fields
		  //
		  //
		  //-------------------------------------------------------
		  Dim i,num,k as Integer
		  Dim aa as Class_BEAM_CM_DYNJAWS_MOTION_Openings
		  Dim tmp as String
		  Dim outfile as FolderItem
		  Dim outstream as TextOutputStream
		  //-------------------------------------------------------
		  
		  
		  
		  if f<>Nil Then
		    outstream=f.CreateTextFile
		    if outstream=nil Then
		      gBEAM.egs_msg.append "Error creating : "+outfile.Name
		      Return
		    end
		    outstream.Delimiter=EndOfLine.UNIX
		    
		    
		    if bversion="2009" or bversion="2008" Then
		      
		    else
		      outstream.WriteLine "MMCTP BEAMnrc DYNJAW file"
		    end
		    
		    outstream.WriteLine Format(Number_Fields,"#")
		    
		    for i=0 to Number_Fields-1
		      outstream.WriteLine Format(Index(i),"-#.######")
		      for k=0 to ISCM_MAX-1
		        aa=DYN_Openings(i*ISCM_MAX+k)
		        
		        tmp=Format(aa.ZMIN_JAWS,"-#.#####")+", "+Format(aa.ZMAX_JAWS,"-#.#####")+", "+Format(aa.XFP_JAWS,"-#.#####")+", "+Format(aa.XBP_JAWS,"-#.####")+", "+Format(aa.XFN_JAWS,"-#.#####")+", "+Format(aa.XBN_JAWS,"-#.#####")
		        outstream.WriteLine tmp
		      Next
		    next
		    outstream.Close
		  end
		  
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Dose_Zone_air As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Zone_Jaws(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		DYN_Openings(-1) As Class_BEAM_CM_DYNJAWS_MOTION_Openings
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT_Jaws(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT_Openings As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Index(0) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		IREGION_to_bit_air As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		IREGION_to_bit_Jaws(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ISCM_MAX As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		JAW_File_Path As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Medium_Jaws(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Medium_Openings As String
	#tag EndProperty

	#tag Property, Flags = &h0
		MODE As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Number_Fields As Integer
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
		XY_Choice(-1) As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Dose_Zone_air"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECUT_Openings"
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
			Name="IREGION_to_bit_air"
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
			Name="JAW_File_Path"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Medium_Openings"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MODE"
			Group="Behavior"
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
			Name="Number_Fields"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PCUT_Openings"
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
	#tag EndViewBehavior
End Class
#tag EndClass
