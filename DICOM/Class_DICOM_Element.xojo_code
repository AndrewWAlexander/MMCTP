#tag Class
Protected Class Class_DICOM_Element
	#tag Method, Flags = &h0
		Sub Get_Length()
		  //----------------------------------
		  // Find the length of the elements, header and value
		  // 
		  //----------------------------------
		  Dim tt as uInt64
		  
		  Header_Length=4
		  if  Tag_a="7FE0" and  Tag_b="0010" Then // Pixel Data
		    if gPref.DICOM_Bytes=16 Then // 2 bytes per point
		      Value_Length=2*(UBound( PixelData)+1)
		    else
		      // Long 4 bytes
		      Value_Length=4*(UBound( PixelData)+1)
		    end
		    Element_Length=Header_Length+Value_Length+4
		    
		  elseif  Tag_a="0028" and  Tag_b="0009"   then // Frame Pointer
		    // Long 4 bytes
		    Value_Length=4
		    Element_Length=Header_Length+Value_Length+4
		    
		  else // For all other types of elements
		    if  VR = "AE" or _  //if string data
		       VR  = "AS" or _
		       VR  = "AT" or _
		       VR  = "CS" or _
		       VR  = "DA" or _
		       VR  = "DS" or _
		       VR  = "DT" or _
		       VR  = "FL" or _
		       VR  = "FD" or _
		       VR  = "IS" or _
		       VR  = "LO" or _
		       VR  = "LT" or _
		       VR  = "PN" or _
		       VR  = "SH" or  _
		       VR  = "SL" or _
		       VR  = "SS" or _
		       VR  = "ST" or _
		       VR  = "TM" or _
		       VR  ="UI"  or _ 
		      Info="Proprietary Tag"  then
		      
		      tt=LenB( Value)
		      if tt mod 2 >0 Then
		        tt=tt+1
		        Value=Value+" "
		      end
		      
		      // Long 4 bytes
		      Value_Length=tt
		      Element_Length=Header_Length+Value_Length+4
		      
		    elseif  VR= "US" or  VR  = "XS"  Then
		      Value_Length=2
		      Element_Length=Header_Length+Value_Length+4
		      
		    else // if numeric data
		      Value_Length=4
		      Element_Length=Header_Length+Value_Length+4
		    end
		  end
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Header_PickVRAndinfo() As Boolean
		  //======================================
		  //this method takes the input group and element and assigns
		  //the proper VR, information and supplement number
		  //======================================
		  Dim numLine, i as integer
		  Dim groupElement, group, element as string
		  Dim gENotFound as Boolean
		  //=======================================
		  Group=Tag_a
		  Element=Tag_b
		  
		  groupElement = group + element
		  
		  gENotFound = false // assume for now that the group and element will be found
		  
		  if left(groupElement, 6) = "002031" then // this covers any tag 002031xx
		    i = 580
		    
		  elseif left(groupElement, 6) = "002804" then // this covers any tag 002804xx
		    if right(element, 1) = "0" then // 002804x0
		      i = 648
		    elseif right(element, 1) = "1" then // 002804x1
		      i = 649
		    elseif right(element, 1) = "2" then // 002804x2
		      i = 650
		    elseif right(element, 1) = "3" then // 002804x3
		      i = 651
		    else
		      gENotFound = true
		    end if
		    
		  elseif left(groupElement, 6) = "002808" then // this covers any tag 002808xx
		    if right(element, 1) = "0" then // 002808x0
		      i = 661
		    elseif right(element, 1) = "2" then // 002808x2
		      i = 662
		    elseif right(element, 1) = "3" then // 002804x3
		      i = 663
		    elseif right(element, 1) = "4" then // 002804x4
		      i = 664
		    elseif right(element, 1) = "8" then // 002804x8
		      i = 665
		    else
		      gENotFound = true
		    end if
		    
		  elseif left(groupElement, 6) = "100000" and groupElement <> "10000000" then
		    // 100000xx but not 10000000
		    if right(element, 1) = "0" then // 100000x0
		      i = 1071
		    elseif right(element, 1) = "1" then // 100000x1
		      i = 1072
		    elseif right(element, 1) = "2" then // 100000x2
		      i = 1073
		    elseif right(element, 1) = "3" then // 100000x3
		      i = 1074
		    elseif right(element, 1) = "4" then // 100000x4
		      i = 1075
		    elseif right(element, 1) = "5" then // 100000x5
		      i = 1076
		    else
		      gENotFound = true
		    end if
		    
		  elseif group = "1010" and element <> "0000" then
		    // 1010xxxx but not 10100000
		    i = 1078
		    
		  elseif left(group, 2) = "50" or left(group, 2) = "60" then
		    if left(group, 2) = "50" then // 50xxxxxx
		      numLine = 1630
		    else // 60xxxxxx
		      numLine = 1664
		    end if
		    
		    i = numLine - 1
		    do
		      i = i + 1
		    loop until i = 1720 or element = right(gDICOM.dictionary(i, 0), 2)
		    // find the right element
		    
		  elseif left(group, 2) = "7F" and group <> "7FE0" then // 7Fxxxxxx but not 7FE0xxxx
		    if element = "0000" then // 7Fxx0000
		      i = 1710
		    elseif element = "0010" then // 7Fxx0010
		      i = 1711
		    elseif element = "0011" then // 7Fxx0011
		      i = 1712
		    elseif element = "0020" then // 7Fxx0020
		      i = 1713
		    elseif element = "0030" then // 7Fxx0030
		      i = 1714
		    elseif element = "0040" then // 7Fxx0040
		      i = 1715
		    else
		      gENotFound = true
		    end if
		    
		  else // any other group
		    if group = "0000" then
		      numLine = 0 // start searching for the element beginning on this line
		    elseif group = "0002" then
		      numLine = 46
		    elseif group = "0004" then
		      numLine = 56
		    elseif group = "0008" then
		      numLine = 75
		    elseif group = "0010" then
		      numLine = 186
		    elseif group = "0018" then
		      numLine = 219
		    elseif group = "0020" then
		      numLine = 533
		    elseif group = "0028" then
		      numLine = 590
		    elseif group = "0032" then
		      numLine = 720
		    elseif group = "0038" then
		      numLine = 746
		    elseif group = "003A" then
		      numLine = 768
		    elseif group = "0040" then
		      numLine = 793
		    elseif group = "0050" then
		      numLine = 927
		    elseif group = "0054" then
		      numLine = 937
		    elseif group = "0060" then
		      numLine = 1015
		    elseif group = "0070" then
		      numLine = 1022
		    elseif group = "0088" then
		      numLine = 1062
		    elseif group = "1000" then
		      numLine = 1070
		    elseif group = "1010" then
		      numLine = 1077
		    elseif group = "2000" then
		      numLine = 1079
		    elseif group = "2010" then
		      numLine = 1101
		    elseif group = "2020" then
		      numLine = 1128
		    elseif group = "2030" then
		      numLine = 1140
		    elseif group = "2040" then
		      numLine = 1143
		    elseif group = "2050" then
		      numLine = 1156
		    elseif group = "2100" then
		      numLine = 1159
		    elseif group = "2110" then
		      numLine = 1170
		    elseif group = "2120" then
		      numLine = 1175
		    elseif group = "2130" then
		      numLine = 1178
		    elseif group = "3002" then
		      numLine = 1187
		    elseif group = "3004" then
		      numLine = 1205
		    elseif group = "3006" then
		      numLine = 1227
		    elseif group = "3008" then
		      numLine = 1271
		    elseif group = "300A" then
		      numLine = 1346
		    elseif group = "300C" then
		      numLine = 1570
		    elseif group = "300E" then
		      numLine = 1595
		    elseif group = "4000" then
		      numLine = 1599
		    elseif group = "4008" then
		      numLine = 1602
		    elseif group = "5400" then
		      numLine = 1657
		    elseif group = "7FE0" then
		      numLine = 1705
		    elseif left(group, 2) = "7F" then
		      numLine = 1710
		    elseif group = "FFFC" then
		      numLine = 1716
		    else
		      gENotFound = true // if the group number was not in the dictionary
		    end if
		    
		    
		    if gENotFound = false then // if the group number was found
		      i = numLine - 1
		      do
		        i = i + 1
		      loop until i = 1720 or groupElement = gDICOM.dictionary(i, 0)
		      // search for the element number
		      // give up at the end of the array (i = 1720)
		    else // if it could not be found, assume it is a proprietary tag
		       Info ="Proprietary Tag"
		       sup_string = ""
		       VR = ""
		    end if
		  end if
		  
		  if gENotFound = false then // if the group was found
		    if i = 1720 then // if it searched until the end of the file and never found the element
		      gENotFound = true // show that the element was not found and assume it is a proprietary tag
		       info = "Proprietary Tag"
		       sup_string = ""
		       VR = ""
		    else // if the group and element were found
		       VR = gDICOM.dictionary(i, 1)
		       info = gDICOM.dictionary(i, 2)
		       sup_string = gDICOM.dictionary(i, 3)
		    end if
		  else // if it could not be found, assume it is a proprietary tag
		     info = "Proprietary Tag"
		     sup_string = ""
		     VR = ""
		  end if
		  
		  Return gENotFound
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Update() As Boolean
		  Dim j as Boolean
		  
		  j=Header_PickVRAndinfo
		  Get_Length
		  Return  j
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		byte_position As UInt64
	#tag EndProperty

	#tag Property, Flags = &h0
		Element_Length As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Header_Length As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Info As string
	#tag EndProperty

	#tag Property, Flags = &h0
		length As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		PixelData(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		sup_string As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Tag_a As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Tag_b As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Value As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Value_Length As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		VM As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		VR As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="byte_position"
			Group="Behavior"
			Type="UInt64"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Element_Length"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Header_Length"
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
			Name="Info"
			Group="Behavior"
			Type="string"
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
			Name="length"
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
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sup_string"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tag_a"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tag_b"
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
			Name="Value"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Value_Length"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VM"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VR"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
