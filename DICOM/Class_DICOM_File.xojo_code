#tag Class
Protected Class Class_DICOM_File
	#tag Method, Flags = &h0
		Function Header_Determine_TransferSYNTAX() As Boolean
		  //============================================================
		  // Method to determine the transfer syntax of the DICOM file within the header infromation
		  //
		  // Implicit VR =   1.2.840.10008.1.2      Implicit VR, Little Endian
		  // Explicit VR =   1.2.840.10008.1.2.1    Explicit VR, Little Endian
		  // Explicit VR =   1.2.840.10008.1.2.2    Explicit VR, Big Endian
		  //
		  //============================================================
		  Dim thisbyte, i as integer
		  Dim thisstring as string
		  Dim valid as boolean
		  Dim temp as String
		  //============================================================
		  
		  
		  if UBound(Elements)=-1 Then // There is no TS record, assume data is Explicit
		    TS_Implicit=False
		    Return False
		  end
		  
		  
		  for i=0 to UBound(Elements)
		    if Elements(i).Tag_a="0002" and Elements(i).Tag_b="0000" Then
		      //bytePos=val(Elements(i).Value)+Elements(i).byte_position+16
		    elseif Elements(i).Tag_a="0002" and Elements(i).Tag_b="0010" Then
		      if Elements(i).Value="1.2.840.10008.1.2" Then
		        TS_Implicit=True
		        Return True
		      else // "1.2.840.10008.1.2.1" or "1.2.840.10008.1.2.2"
		        TS_Implicit=False
		        Return True
		      end
		    end
		  next
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Header_Display()
		  // --------------------
		  // Display DICOM file
		  // for debuging
		  //----------------------
		  Dim i as Integer
		  Dim ww as Window_DICOM_View
		  //----------------------
		  
		  
		  Window_DICOM_View.Show
		  ww=Window_DICOM_View
		  ww.Listbox_DICOM.DeleteAllRows
		  ww.Name=file.Name
		  ww.Listbox_DICOM.Heading(0)="Tag a"
		  ww.Listbox_DICOM.Heading(1)="Tag b"
		  ww.Listbox_DICOM.Heading(2)="VR"
		  ww.Listbox_DICOM.Heading(3)="VM"
		  ww.Listbox_DICOM.Heading(4)="Info"
		  ww.Listbox_DICOM.Heading(5)="Value"
		  ww.Listbox_DICOM.Heading(6)="Byte Position"
		  ww.Listbox_DICOM.Heading(7)="Value Byte Length"
		  ww.Listbox_DICOM.Heading(8)="Element Length"
		  
		  ww.Listbox_DICOM.ColumnWidths="7%,8%,7%,8%,20%,35%,7%,8%,8%"
		  for i=0 to UBound(Elements)
		    ww.Listbox_DICOM.AddRow Elements(i).Tag_a
		    ww.Listbox_DICOM.Cell(i,1)=Elements(i).Tag_b
		    ww.Listbox_DICOM.Cell(i,2)=Elements(i).VR
		    ww.Listbox_DICOM.Cell(i,3)=str(Elements(i).VM)
		    ww.Listbox_DICOM.Cell(i,4)=Elements(i).Info
		    ww.Listbox_DICOM.Cell(i,5)=Elements(i).Value
		    ww.Listbox_DICOM.CellType(i,5)=3
		    ww.Listbox_DICOM.Cell(i,6)=str(Elements(i).byte_position)
		    ww.Listbox_DICOM.Cell(i,7)=str(Elements(i).Value_Length)
		    ww.Listbox_DICOM.Cell(i,8)=str(Elements(i).Element_Length)
		    
		  next
		  ww.Title="DICOM file : "+file.Name
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Header_formatHex(input as integer) As string
		  //====================================================
		  // this method takes the hexadecimal number and formats it appropriately with 2 digits
		  //====================================================
		  Dim hexNum as string
		  //=======================
		  
		  
		  hexNum = hex(input)
		  if len(hexNum) = 0 then
		    return "00"
		  elseif len(hexNum) = 1 then
		    return "0" + hexNum
		  else // 2 or more
		    return hexNum
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Header_Meta_Information() As Boolean
		  //============================================================
		  // Method to determine the endian status of a DICOM file
		  // Except for the 128 byte preamble and the 4 byte prefix, the File Meta Information shall be encoded using the Explicit VR Little Endian​
		  // Transfer Syntax (UID=1.2.840.10008.1.2.1)
		  // 
		  // . The Unknown (UN) Value​ Representation shall not be used in the File Meta Information. 
		  // For compatibility with future versions of this Standard, any Tag​ (0002,xxxx) not defined in Table 7.1-1 
		  // shall be ignored.​ Values of all Tags (0002,xxxx) are reserved for use by this Standard and later versions of DICOM. 
		  // Data Elements with a group of​ 0002 shall not be used in data sets other than within the File Meta Information.​
		  //
		  //============================================================
		  Dim thisbyte, i as integer
		  Dim thisstring as string
		  Dim thisstream as binaryStream
		  Dim valid, gotEndian as boolean
		  Dim defaultLittleEndian as Boolean
		  Dim temp as String
		  //============================================================
		  
		  bytePos=0
		  ReDim Elements(-1)
		  TS_Implicit=False
		  
		  thismemblock.littleEndian=false // assume bigEndian
		  defaultLittleEndian = false // this property saves the original endian value, since it will be changed later, and it will have to be changed back
		  
		  
		  //1st determine the endian status and if we are dealing with a real DICOM file
		  temp= thismemblock.stringValue(128, 4)
		  if temp <> "DICM" then // if it does not have the standard DICOM structure
		    if thismemblock.stringValue(0, 4) = "DICM" then // if the first 128 empty bytes were omitted but it has the DICM
		      bytePos = 4 // start at the beginning
		      valid = true // it is a valid DICOM file
		    elseif Header_formatHex(thisMemblock.byte(1)) + Header_formatHex(thismemblock.byte(0)) = "0002" or _
		      Header_formatHex(thisMemblock.byte(1)) + Header_formatHex(thismemblock.byte(0)) = "0008" or _
		      Header_formatHex(thisMemblock.byte(1)) + Header_formatHex(thismemblock.byte(0)) = "0004" then
		      // if the group information starts at the beginning
		      if val("&h" + Header_formatHex(thisMemblock.byte(3)) + Header_formatHex(thismemblock.byte(2))) >= 0 and _
		        val("&h" + Header_formatHex(thisMemblock.byte(3)) + Header_formatHex(thismemblock.byte(2))) <= &hffff then
		        // and the element information follows right after
		        bytePos = 0
		        // start at the beginning
		        valid = true // it is a valid DICOM file
		      else
		        valid = false // it is not a valid DICOM file
		        Return False
		      end if
		    else
		      thismemblock.littleEndian=true // try on big endian
		      if (Header_formatHex(thisMemblock.byte(1)) + Header_formatHex(thismemblock.byte(0)) = "0002" or _
		        Header_formatHex(thisMemblock.byte(1)) + Header_formatHex(thismemblock.byte(0)) = "0008" or _
		        Header_formatHex(thisMemblock.byte(1)) + Header_formatHex(thismemblock.byte(0)) = "0004") and _
		        (val("&h" + Header_formatHex(thisMemblock.byte(3)) + Header_formatHex(thismemblock.byte(2))) >= 0 and _
		        val("&h" + Header_formatHex(thisMemblock.byte(3)) + Header_formatHex(thismemblock.byte(2))) <= &hffff) then
		        // if the group information starts at the beginning and the element information follows right after
		        bytePos = 0
		        // start at the beginning
		        valid = true // it is a valid DICOM file
		      else
		        valid = false // it is not a valid DICOM file
		        Return False
		      end if
		    end if
		  else
		    bytePos = 132
		    valid = true // it is a valid DICOM file
		  end if
		  
		  
		  thismemblock.littleEndian = true // group 2 is always in little endian
		  do until thismemblock.byte(bytePos+1)>2 or thismemblock.byte(bytePos) >2
		    Header_Read_Elements(bytePos+1)
		    if bytePos=thismemblock.Size Then
		      Exit
		    end
		  loop
		  
		  
		  
		  if Header_Determine_TransferSYNTAX Then
		    // Transfer Syntax known, endian status known
		    
		  else
		    // Unknown DICOM file, trail and error to find what type of file this is
		    thismemblock.littleEndian = false // assume big endian for now
		    if (bytePos+1) < thismemblock.Size  Then
		      if (thismemblock.byte(bytePos + 1) = 8 or thismemblock.byte(bytePos + 1) = 4) and thismemblock.byte(bytePos + 2) >= 0 then
		        // if in big endian it found the group number to be 4 or 8, it must be big endian
		        thismemblock.littleEndian = false
		        defaultLittleEndian = false
		        gotEndian = true // we now have the proper endian value
		      else // if it was not read properly in big endian, try little endian
		        thismemblock.littleEndian = true
		        defaultLittleEndian = true
		        gotEndian = false // we still are not sure of the endian value
		      end if
		      
		      if gotEndian = false then // if we still do not have the endian value
		        if (thismemblock.byte(bytePos) = 8 or thismemblock.byte(bytePos) = 4) and _
		          thismemblock.byte(bytePos + 2) >= 0 then
		          // if in little endian it found the group  number to be 4 or 8, it must be little endian
		          thismemblock.littleEndian = true
		          defaultLittleEndian = true
		          gotEndian = true // we now have the proper endian value
		        else // if it was not read properly in big or little endian, there must be a problem
		          gotEndian = false
		        end if
		      end if
		    end
		    
		    
		    if gotEndian = false then // if we still do not have the endian value
		      i = -1
		      do
		        i = i + 1
		      loop until thismemblock.stringValue(i,17) = "1.2.840.10008.1.2" or Header_formatHex(thisMemblock.byte(i + 1)) + Header_formatHex(thismemblock.byte(i)) = "0008"
		      // search for this string, which tells if it is big or little endian
		      // if it gets to group 0008, it has gone too far, and the endian value is not in the file
		      if thismemblock.stringValue(i, 17) = "1.2.840.10008.1.2" then
		        // if it found the endian value
		        if thismemblock.stringValue(i + 18, 1) = "." then
		          if thismemblock.stringValue(i + 19, 1) = "1" then
		            thismemblock.littleEndian = true
		            defaultLittleEndian = true
		          else
		            thismemblock.littleEndian = false
		            defaultLittleEndian = false
		          end if
		        else // if there is no period
		          thismemblock.littleEndian = true
		          defaultLittleEndian = true
		        end if
		      else
		        valid = false
		        //msgBox " is not a valid DICOM file."
		        Return False
		      end if
		    end if
		    
		    // by now, either we have the proper endian value or the file is not valid
		    thismemblock.littleEndian = defaultLittleEndian
		  end
		  
		  Return valid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Header_Read_Elements(stop as integer)
		  //==============================
		  // Populate Array of Elements
		  // Read in one Element at a time
		  //
		  //==============================
		  Dim i, j as integer
		  Dim ss,len_sa,len_sb as Int16
		  Dim tt as Boolean
		  //===============================
		  
		  
		  
		  do // Loop over whole file
		    
		    for i=UBound(sq_length) DownTo 0 // Determine if we are in sequeneces
		      if UBound(sq_length)>-1 Then // If we are within sequences
		        if sq_length(UBound(sq_length)) <> &hffffffff then // if the length has been specified
		          if bytePos >= sq(UBound(sq_length)) + sq_length(UBound(sq_length)) Then
		            // loop until the new position is equal to the beginning of the sequence plus the length of the sequence
		            One_Element= new Class_DICOM_Element
		            Elements.Append One_Element
		            One_Element.Value= "END OF SEQUENCE"
		            One_Element.VM=(numSequence)
		            numSequence = numSequence - 1 // this variable keeps track of the number of sequences the program is currently in (since you can have sequences inside sequences)
		            sq_length.Remove UBound(sq_length)
		            sq.Remove UBound(sq)
		            One_Element.byte_position=bytePos
		          end
		          
		        else // If length is not specified
		          //for bytePos=bytePos to thismemblock.Size -2
		          
		          len_sa=thismemblock.short(bytePos)
		          len_sb=thismemblock.short(bytePos+2)
		          
		          // If the length is unspecified
		          if (len_sa= &hfffffffe and len_sb = &hffffe0dd) Then
		            // or _
		            //len_sa = &hfffe and len_sb = &he0dd  then // if the length is unspecified
		            One_Element= new Class_DICOM_Element
		            Elements.Append One_Element
		            One_Element.Value= "END OF SEQUENCE"
		            One_Element.VM=(numSequence)
		            numSequence = numSequence - 1 // this variable keeps track of the number of sequences the program is currently in (since you can have sequences inside sequences)
		            bytePos = bytePos + 8
		            sq_length.Remove UBound(sq_length)
		            sq.Remove UBound(sq)
		            One_Element.byte_position=bytePos
		            //Exit for bytePos
		          end
		          //next
		        end if
		      end
		    next
		    
		    if bytePos+6>= thismemblock.Size then
		      exit
		    end if
		    
		    
		    Header_Read_Element_Tag
		    tt=Header_Read_Element_VR
		    if tt=False Then
		      Header_Read_Element_Find_0008
		      Exit
		    end
		    
		    Header_Read_Element_Value
		    One_Element.Element_Length=One_Element.Element_Length+One_Element.Value_Length+One_Element.Header_Length
		    
		  loop Until bytePos>= stop
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Header_Read_Element_Find_0008()
		  //==============================
		  // Populate Array of Elements
		  // Read in one Element at a time
		  //
		  //==============================
		  //===============================
		  Dim i as Integer
		  
		  
		  for i=132 to 400
		    
		    bytePos=i
		    One_Element= new Class_DICOM_Element
		    // Determine if we will read beyond the MB size
		    
		    One_Element.byte_position = bytePos
		    
		    if thismemblock.littleEndian then // read the group into the table
		      One_Element.Tag_a =Header_formatHex(thisMemblock.byte(bytePos + 1)) + Header_formatHex(thismemblock.byte(bytePos))
		    else
		      One_Element.Tag_a=Header_formatHex(thisMemblock.byte(bytePos)) + Header_formatHex(thismemblock.byte(bytePos + 1))
		    end if
		    bytePos = bytePos + 2
		    
		    
		    if thismemblock.littleEndian then // read the element number
		      One_Element.Tag_b=Header_formatHex(thisMemblock.byte(bytePos + 1)) + Header_formatHex(thismemblock.byte(bytePos))
		    else
		      One_Element.Tag_b=Header_formatHex(thisMemblock.byte(bytePos)) + Header_formatHex(thismemblock.byte(bytePos + 1))
		    end if
		    bytePos = bytePos + 2
		    
		    
		    
		    if One_Element.Tag_a="0008" and One_Element.Tag_b="0005" Then
		      bytePos = bytePos - 4
		      Exit
		    End
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Header_Read_Element_Info()
		  //======================================
		  //this method takes the input group and element and assigns
		  //the proper VR, information and supplement number
		  //======================================
		  Dim gENotFound as Boolean
		  Dim i as Integer
		  //=======================================
		  
		  for i=0 to UBound(Elements)
		    gENotFound=Elements(i).Header_PickVRAndinfo
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Header_Read_Element_Tag()
		  //==============================
		  // Populate Array of Elements
		  // Read in one Element at a time
		  //
		  //==============================
		  //===============================
		  
		  One_Element= new Class_DICOM_Element
		  // Determine if we will read beyond the MB size
		  
		  Elements.Append One_Element
		  One_Element.byte_position = bytePos
		  
		  if thismemblock.littleEndian then // read the group into the table
		    One_Element.Tag_a =Header_formatHex(thisMemblock.byte(bytePos + 1)) + Header_formatHex(thismemblock.byte(bytePos))
		  else
		    One_Element.Tag_a=Header_formatHex(thisMemblock.byte(bytePos)) + Header_formatHex(thismemblock.byte(bytePos + 1))
		  end if
		  bytePos = bytePos + 2
		  
		  
		  if thismemblock.littleEndian then // read the element number
		    One_Element.Tag_b=Header_formatHex(thisMemblock.byte(bytePos + 1)) + Header_formatHex(thismemblock.byte(bytePos))
		  else
		    One_Element.Tag_b=Header_formatHex(thisMemblock.byte(bytePos)) + Header_formatHex(thismemblock.byte(bytePos + 1))
		  end if
		  bytePos = bytePos + 2
		  One_Element.Header_Length=4
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Header_Read_Element_Value()
		  //==============================
		  // Populate Array of Elements
		  // Read in one Element at a time
		  //
		  //==============================
		  Dim i as integer
		  Dim valueString as string
		  //===============================
		  
		  valueString = ""
		  
		  
		  if One_Element.Tag_a="FFFE"  and One_Element.Tag_b="E000"    Then
		    // -------------------------------------------->  this group and element denotes the start of a new item in a sequence
		    One_Element.VM=numSequence
		    One_Element.Value = "New Item"
		    
		  elseif One_Element.Tag_a="FFFE"  and One_Element.Tag_b="E00D"    Then
		    // -------------------------------------------->  this group and element denotes the end of a item in a sequence
		    One_Element.VM=numSequence
		    One_Element.Value = "End of Item"
		    
		  elseif One_Element.VR = "FL" or One_Element.VR = "FD" then
		    One_Element.Value = "VR not handled"
		    bytePos = bytePos + One_Element.Value_length // these VR's have not been handled
		    
		  elseif One_Element.VR="SQ" then
		    One_Element.Value = "Sequence of items:"
		    One_Element.VM = 1
		    // the VM is 1 for a sequence
		    
		    sq_length.Append One_Element.Value_length
		    sq.Append bytePos
		    // add a new row that says "BEGINNING OF SEQUENCE"
		    
		    One_Element= new Class_DICOM_Element
		    Elements.Append One_Element
		    
		    One_Element.Value =  "BEGINNING OF SEQUENCE"
		    numSequence = numSequence + 1
		    One_Element.VM=numSequence
		    One_Element.byte_position=bytePos
		    // this variable keeps track of the number of sequences the program is currently in
		    // (since you can have sequences inside sequences)
		    
		  elseif One_Element.VR= "OB" then
		    One_Element.VM=One_Element.Value_length/2 // the VM equals the number of integers
		    
		    if bytePos+One_Element.Value_length>=thismemblock.Size then
		      exit
		    end if
		    
		    for i = 1 to One_Element.VM // allowing 2 bytes for each integer
		      One_Element.Value =One_Element.Value + Format(thismemblock.short(bytePos),"-#") + "\" // add the next integer to the table
		      bytePos = bytePos + 2
		    next
		    
		    One_Element.Value=Trim(One_Element.Value)
		    if right(One_Element.Value, 1) = "\" then
		      One_Element.Value= Trim(left(One_Element.Value, (len(One_Element.Value)- 1)))// remove the last backslash
		    end if
		    
		    
		  elseif One_Element.VR = "UL" or One_Element.VR = "SL" then
		    One_Element.VM=One_Element.Value_length/4 // the VM equals the number of integers
		    
		    if bytePos+One_Element.Value_length >=thismemblock.Size then
		      exit
		    end if
		    
		    for i = 1 to One_Element.VM // allowing 4 bytes for each integer
		      One_Element.Value= One_Element.Value+ Format(thismemblock.long(bytePos),"-#") + "\"
		      bytePos = bytePos + 4
		    next
		    
		    One_Element.Value = One_Element.Value
		    
		    
		    if right(One_Element.Value, 1) = "\" then
		      One_Element.Value = left(One_Element.Value, len(One_Element.Value) - 1) // remove the last backslash
		    end if
		    
		  elseif One_Element.VR = "US" or One_Element.VR = "XS" then // XS is not in the dictionary but I am guessing that it is treated like US
		    One_Element.VM=One_Element.Value_length  / 2 // VM equals the number of integers
		    if bytePos+One_Element.Value_length >=thismemblock.Size then
		      exit
		    end if
		    
		    for i = 1 to One_Element.VM // allowing 2 bytes for each integer
		      One_Element.Value =One_Element.Value + Format(thismemblock.uShort(bytePos),"#") + "\"  // add the next integer to the table
		      bytePos = bytePos + 2
		    next
		    One_Element.Value=trim( One_Element.Value)
		    
		    if right(One_Element.Value, 1) = "\" then
		      One_Element.Value =trim(left(One_Element.Value, len(One_Element.Value) - 1)) // remove the last backslash
		    end if
		    
		  elseif One_Element.VR= "SS" then 'if e_length <= 60 then // only put the value if the VM is 30 or less
		    One_Element.VM =One_Element.Value_length/2
		    
		    if bytePos+One_Element.Value_length >=thismemblock.Size then
		      exit
		    end if
		    
		    for i = 1 to One_Element.VM // allowing 2 bytes for each integer
		      One_Element.Value= One_Element.Value + str(thismemblock.Short(bytePos)) + "\"
		      // add the next integer to the table
		      bytePos = bytePos + 2
		    next
		    One_Element.Value = Trim(One_Element.Value)
		    
		    
		    // the VM equals the number of integers
		    if right(One_Element.Value, 1) = "\" then
		      One_Element.Value=Trim( left(One_Element.Value, len(One_Element.Value) - 1)) // remove the last backslash
		    end if
		    
		    
		  Elseif One_Element.VR= "OW/OB" or One_Element.VR= "OX" Then
		    // Pixel Data is not read into element class
		    One_Element.Name = "Pixel Data"
		    One_Element.VM = 3
		    bytePos = bytePos + One_Element.Value_length
		    
		    
		  elseif One_Element.Tag_a="0028"  and One_Element.Tag_b="0009"    Then
		    //Readin FrameIncrementPointer
		    
		    if thismemblock.littleEndian then // read the group into the table
		      valueString =Header_formatHex(thisMemblock.byte(bytePos + 1)) + Header_formatHex(thismemblock.byte(bytePos))
		    else
		      valueString=Header_formatHex(thisMemblock.byte(bytePos)) + Header_formatHex(thismemblock.byte(bytePos + 1))
		    end if
		    bytePos = bytePos + 2
		    
		    
		    if thismemblock.littleEndian then // read the element number
		      valueString=valueString+Header_formatHex(thisMemblock.byte(bytePos + 1)) + Header_formatHex(thismemblock.byte(bytePos))
		    else
		      valueString=valueString+Header_formatHex(thisMemblock.byte(bytePos)) + Header_formatHex(thismemblock.byte(bytePos + 1))
		    end if
		    bytePos = bytePos + 2
		    One_Element.Value=valueString
		    
		  elseif One_Element.Value_length>0 and One_Element.VR<>"UNN" then // these elements have text as their value (not numbers)
		    if bytePos+One_Element.Value_length> thismemblock.Size Then // There is an error, can't read properly
		      Exit
		    end
		    
		    // Readin String values
		    valueString = thismemblock.stringValue(bytePos, One_Element.Value_length )
		    
		    if thismemblock.byte(bytePos + One_Element.Value_length - 1) = 0 then // if there is a null character on the end, get rid of it
		      valueString = left(valueString, len(valueString) - 1)
		    end if
		    One_Element.VM = countFields(valueString, "\") // the VM equals the number of fields separated by backslashes
		    One_Element.Value = Trim(valueString)
		    bytePos = bytePos + One_Element.Value_length
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Header_Read_Element_VR() As Boolean
		  //==============================
		  // Populate Elements VR data and element value length
		  //
		  //==============================
		  //===============================
		  
		  
		  One_Element.Element_Length=0
		  if One_Element.Tag_a="FFFE"  and ( One_Element.Tag_b="E000" or One_Element.Tag_b="E00D") Then
		    'There are three special SQ related Data Elements that are not ruled by the VR encoding rules conveyed by the Transfer Syntax
		    One_Element.Value_length = thismemblock.long(bytePos) // this is the length of this item
		    bytePos = bytePos + 4
		    One_Element.Element_Length=One_Element.Element_Length+4
		    
		  else // All other Elements
		    
		    if TS_Implicit=False Then  // Explicit VR loop
		      
		      // VR  describe the data type and format of that Data Element's
		      // read the VR
		      One_Element.VR = chr(thisMemblock.byte(bytePos)) + chr(thisMemblock.byte(bytePos + 1))
		      bytePos = bytePos + 2
		      One_Element.Element_Length=One_Element.Element_Length+2
		      
		      if StrComp(One_Element.VR ,"OB",0)=0 or _ // if it is explicit VR and a 4 byte VR
		        StrComp(One_Element.VR,"OW",0)=0 or _
		        StrComp(One_Element.VR,"UN",0)=0 or _
		        StrComp(One_Element.VR,"OF",0)=0 or _
		        StrComp(One_Element.VR,"UT",0)=0 or _
		        StrComp(One_Element.VR,"SQ",0)=0 or _
		        StrComp(One_Element.VR,"OX",0)=0 then
		        
		        bytePos = bytePos + 2
		        // these VR's have an additional 2 bytes after the letters that are not used
		        One_Element.Value_length  = thismemblock.long(bytePos) // the next 4 bytes indicate the length of the entire sequence
		        bytePos = bytePos + 4
		        One_Element.Element_Length=One_Element.Element_Length+6
		        
		      elseif StrComp(One_Element.VR, "AE",0)=0 or _  // if it is explicit VR and a 2 byte VR
		        StrComp(One_Element.VR, "AS",0)=0 or _
		        StrComp(One_Element.VR, "AT",0)=0 or _
		        StrComp(One_Element.VR,"CS",0)=0 or _
		        StrComp(One_Element.VR, "DA" ,0)=0 or _
		        StrComp(One_Element.VR, "DS",0)=0 or _
		        StrComp(One_Element.VR, "DT" ,0)=0 or _
		        StrComp(One_Element.VR,"FL" ,0)=0 or _
		        StrComp(One_Element.VR, "FD",0)=0  or _
		        StrComp(One_Element.VR, "IS" ,0)=0 or _
		        StrComp(One_Element.VR, "LO" ,0)=0 or _
		        StrComp(One_Element.VR, "LT" ,0)=0 or _
		        StrComp(One_Element.VR,"PN",0)=0 or _
		        StrComp(One_Element.VR, "SH",0)=0  or  _
		        StrComp(One_Element.VR,"SL" ,0)=0 or _
		        StrComp(One_Element.VR,"SS" ,0)=0 or _
		        StrComp(One_Element.VR, "ST" ,0)=0 or _
		        StrComp(One_Element.VR, "TM" ,0)=0 or _
		        StrComp(One_Element.VR, "UI" ,0)=0 or _
		        StrComp(One_Element.VR, "UL",0)=0 or _
		        StrComp(One_Element.VR, "US",0)=0 or _
		        StrComp(One_Element.VR, "XS" ,0)=0  then
		        
		        
		        One_Element.Value_length = thismemblock.ushort(bytePos)
		        // all other VR's show the length of the value of the element through a short integer
		        bytePos = bytePos + 2
		        One_Element.Element_Length=One_Element.Element_Length+2
		      else
		        // There is an issue with this DICOM file....
		        Return False
		      end 
		      
		      
		    elseif TS_Implicit Then  //
		      gENotFound=One_Element.Header_PickVRAndinfo
		      if bytePos<=(thismemblock.Size-4) Then
		        One_Element.Value_length=thismemblock.long(bytePos)
		        bytePos = bytePos + 4
		        One_Element.Element_Length=One_Element.Element_Length+4
		      end if
		    end if
		  end
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Load_One_DICOM_file(f as folderItem) As Boolean
		  // -------DICOM Reader-----------
		  //
		  // This method reads DICOM data into
		  // Standard DICOM classes
		  //
		  //-------------------------------
		  Dim thisstream as binaryStream
		  
		  
		  file=f
		  if file.Exists=False Then
		    Return False
		  end
		  
		  thisstream=f.openAsBinaryFile(False) // open the file in read-only mode
		  if thisstream = Nil then
		    Return False
		  end
		  
		  thismemblock=new MemoryBlock(thisstream.Length) //Changed to "new MemoryBlock" by William Davis when newmemoryBlock was found to have been deprecated
		  if thismemblock.Size<200 Then
		    Return False
		  end
		  if thismemblock.size<>thisstream.Length then
		    Return False
		  end
		  
		  //Now reading the whole file into thismemblock
		  thismemblock.stringValue(0,thismemblock.size)=thisstream.read(thisstream.Length)
		  thisstream.close
		  
		  ReDim sq(-1)
		  ReDim sq_length(-1)
		  numSequence=0
		  
		  
		  if Header_meta_information then
		    Header_Read_Elements(thismemblock.Size)
		    Return True
		  else
		    //could not read endian
		    App.Error_Msg.Append ("Could not determine Endian status on file : "+f.Name)
		    Return False
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_Names()
		  Dim i as integer
		  Dim temp as String
		  
		  for i=0 to UBound(Elements)
		    if Elements(i).tag_a="0010" and Elements(i).tag_b="0010" then
		      Temp=trim((Elements(i).value) )
		      pname=NthField(temp,"^",1)+" "+NthField(temp,"^",2) // 0010x0010  patient name
		    end
		    if Elements(i).tag_a="0010" and Elements(i).tag_b="0020" then
		      p_id=trim(Elements(i).value) //0010x0020  patient ID
		    end
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Group_Length()
		  Dim i,lenght,index,tt as Integer
		  Dim ss as String
		  Dim kk as Boolean
		  Dim ee as Class_DICOM_Element
		  
		  
		  index=-1
		  lenght=0
		  for i =0 to UBound(Elements)
		    if Elements(i).Tag_b="0000" Then
		      if index<>-1 Then
		        Elements(index).Value=Format(lenght,"#")
		        kk=Elements(index).Update
		      end
		      lenght=0
		      index=i
		    else
		      lenght=lenght+Elements(i).Element_Length
		    end
		    if i=UBound(Elements) and index<>-1 Then
		      Elements(index).Value=Format(lenght,"#")
		      kk=Elements(index).Update
		    end
		    
		    if Elements(i).Value_length<0 Then
		      Break
		    end
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Item_Length(i_index as Integer)
		  //-----------------------------------------
		  // Method to calculate item and sequence length of DICOM files
		  //------------------------------------------
		  Dim i,lenght as Integer
		  Dim j as Boolean
		  
		  lenght=0
		  for i =(i_index+1) to UBound(Elements)
		    lenght=lenght+Elements(i).Element_Length
		  Next
		  Elements(i_index).Sequence_Length=lenght
		  j=Elements(i_index).Update
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_DICOM()
		  //---------------------------------------------------------
		  // New format for writing DICOM files
		  //---------------------------------------------------------
		  Dim bb as BinaryStream
		  Dim ee as Class_DICOM_Element
		  Dim i,x,tt as Integer
		  Dim temp,temp1,tempa,tempb,fname as String
		  //---------------------------------------------------------
		  
		  
		  if gPref.DICOM_Format=0 Then
		    TS_Implicit=True
		  else
		    TS_Implicit=False
		  end
		  
		  
		  if file.Exists Then
		    file.Delete
		  end
		  
		  
		  Update_Group_Length
		  
		  
		  bb=file.CreateBinaryFile("")
		  if bb=nil Then
		    Return
		  end
		  
		  bb.LittleEndian=True
		  for i=bb.Position to 127
		    bb.WriteInt8 val("&h00H")
		  next
		  bb.Position=128
		  bb.Write "DICM"
		  
		  
		  
		  PW_StaticText="Writing DICOM file : "+file.Name
		  PW_Progress=0
		  PW_Progress_Max=UBound(Elements)
		  Write_Elements(bb)
		  bb.Close
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_Elements(bb as BinaryStream)
		  //----------------------------------
		  // Write a DICOM Element to file
		  // Loop over all Elements
		  // 
		  // Created Feb 2017 by AA
		  //----------------------------------
		  Dim ee as Class_DICOM_Element
		  Dim i,x,tt as Integer
		  Dim temp,temp1,tempa,tempb,fname as String
		  //----------------------------------
		  
		  PW_Progress_Max=UBound(Elements)
		  PW_StaticText="Writing DICOM file : "+file.Name+chr(13)
		  
		  for x=0 to UBound(Elements)
		    PW_Progress=x
		    ee=Elements(x)
		    ee.byte_position=bb.Position
		    
		    if ee.Tag_a="300C" and ee.Tag_b="0002" Then
		      x=x
		    end
		    
		    if ee.VR="SQ" Then
		      x=x
		    end
		    
		    
		    bb.WriteInt8 val("&h"+Right(ee.Tag_a,2))
		    bb.WriteInt8 val("&h"+left(ee.Tag_a,2))
		    bb.WriteInt8 val("&h"+Right(ee.Tag_b,2))
		    bb.WriteInt8 val("&h"+Left(ee.Tag_b,2))
		    
		    // Write VR and element value length
		    if gPref.DICOM_Format=1 or Elements(x).Tag_a="0002" Then
		      // Write VR
		      if Len(ee.VR)>0 and ee.VR<>"NONE"  Then
		        bb.WriteInt8 Asc(Left(ee.VR,1))
		        bb.WriteInt8 Asc(Right(ee.VR,1))
		      end
		    end
		    
		    if ee.VR="OB" Then
		      bb.WriteInt8 0
		      bb.WriteInt8 0
		    end
		    
		    if (ee.Tag_a<>"FFFE" and ee.Tag_b<>"E000") Then
		      if (gPref.DICOM_Format=1 or ee.Tag_a="0002") and  Len(ee.VR)>0 and ee.VR<>"OB" and ee.VR<>"NONE"  Then
		        bb.WriteInt16 (ee.Value_length)
		      else
		        // Long 4 bytes
		        if ee.VR<>"SQ" Then
		          bb.WriteInt32 (ee.Value_length)
		        end
		      end
		    end
		    
		    
		    
		    
		    // Write value data
		    if ee.Tag_a="7FE0" and ee.Tag_b="0010" Then // Pixel Data
		      
		      if gPref.DICOM_Format=1 then
		        bb.WriteInt32 (ee.Value_length)
		      end
		      
		      PW_StaticText="Writing DICOM file : "+file.Name+chr(13)+"Pixel data please wait..."
		      PW_Progress_Max= 100
		      for i=0 to UBound(ee.PixelData)
		        if gPref.DICOM_Bytes=16 Then
		          bb.WriteInt16 ee.PixelData(i)
		        else
		          bb.WriteInt32 ee.PixelData(i)
		        end
		        if i mod 25 = 0 Then
		          PW_Progress=100*i/UBound(ee.PixelData)
		        end
		      next
		      
		      PW_Progress_Max=UBound(Elements)
		      PW_Progress=x
		      PW_StaticText="Writing DICOM file : "+file.Name+chr(13)
		      
		      
		    elseif ee.Tag_a="0028" and ee.Tag_b="0009"   then // Frame Pointer  
		      // Write frame pointer
		      
		      tempb=Right(ee.Value,4)
		      tempa=Left(ee.Value,4)
		      bb.WriteInt8 val("&h"+Right(tempa,2))
		      bb.WriteInt8 val("&h"+left(tempa,2))
		      bb.WriteInt8 val("&h"+Right(tempb,2))
		      bb.WriteInt8 val("&h"+Left(tempb,2))
		      
		    else // For all other types of elements
		      if ee.VR = "AE" or _  //if string data
		        ee.VR  = "AS" or _
		        ee.VR  = "AT" or _
		        ee.VR  = "CS" or _
		        ee.VR  = "DA" or _
		        ee.VR  = "DS" or _
		        ee.VR  = "DT" or _
		        ee.VR  = "FL" or _
		        ee.VR  = "FD" or _
		        ee.VR  = "IS" or _
		        ee.VR  = "LO" or _
		        ee.VR  = "LT" or _
		        ee.VR  = "PN" or _
		        ee.VR  = "SH" or  _
		        ee.VR  = "SL" or _
		        ee.VR  = "SS" or _
		        ee.VR  = "ST" or _
		        ee.VR  = "TM" or _
		        ee.VR  ="UI"  or _
		        ee.Info="Proprietary Tag"  then
		        bb.Write ee.Value
		        
		      elseif ee.VR= "US" or ee.VR  = "XS" or ee.VR= "OB" Then
		        bb.WriteUInt16 val(ee.Value)
		        
		      else // if numeric data
		        tt=val(ee.Value)
		        bb.WriteInt32 tt
		      end
		    end
		  next
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		bytePos As UInt64
	#tag EndProperty

	#tag Property, Flags = &h0
		Elements(-1) As Class_DICOM_Element
	#tag EndProperty

	#tag Property, Flags = &h0
		file As folderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		gENotFound As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		myStream As binaryStream
	#tag EndProperty

	#tag Property, Flags = &h0
		numSequence As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		One_Element As CLAss_DICOM_Element
	#tag EndProperty

	#tag Property, Flags = &h0
		Pname As string
	#tag EndProperty

	#tag Property, Flags = &h0
		p_id As string
	#tag EndProperty

	#tag Property, Flags = &h0
		sq(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		sq_length(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		TempName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		thismemblock As memoryBlock
	#tag EndProperty

	#tag Property, Flags = &h0
		TS_Implicit As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		UID_Name As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="bytePos"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="UInt64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="gENotFound"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
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
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="numSequence"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pname"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="p_id"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
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
			Name="TempName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
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
		#tag ViewProperty
			Name="TS_Implicit"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="UID_Name"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
