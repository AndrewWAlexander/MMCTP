#tag Class
Protected Class Class_DOSXYZ_3ddose
	#tag Method, Flags = &h0
		Function GetString(mb as MemoryBlock, N as Integer) As String
		  Dim line,tempStr as String
		  Dim i as Integer
		  
		  
		  if (Offset+N)>mb.Size Then
		    N=mb.Size-Offset-1
		  end
		  
		  tempStr = mb.StringValue(Offset+N,1)
		  while (tempStr <> " ") AND (tempStr <> EndOfLine.UNIX)    // Check to to see if the voxel value got cutoff at the end of the line.
		    N=N+1
		    tempStr = mb.StringValue(Offset+N,1)
		  Wend
		  line = mb.StringValue(Offset,N)
		  
		  'tempStr = line.Right(1)
		  'while (tempStr <> " ") AND (tempStr <> EndOfLine.UNIX)    // Check to to see if the voxel value got cutoff at the end of the line.
		  'N=N+1
		  'line = mb.StringValue(Offset,N)
		  'tempStr = line.Right(1)
		  'wend
		  
		  Offset=Offset+N
		  
		  Return line
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Read(file as folderitem) As Boolean
		  //--------------------------------------------
		  // Readin any DOSXYZnrc 3ddose file with errors
		  //
		  // Authors :  Andrew Alexander
		  //
		  // Updated 2016 by AA
		  //
		  // Now all 3ddose file are read-in using the MemoryBlock by chunks, and then parsed
		  //
		  //--------------------------------------------
		  dim gg as Boolean
		  //--------------------------------------------
		  
		  gdosxyz.egs_msg.append "Reading 3ddose file : "+file.Name
		  if file= Nil Then
		    Return False
		  end
		  
		  gg= Read_text_file(file)
		  
		  
		  if gg Then
		    Return Read_mb
		  else
		    Return False
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReadV1(file as folderitem) As Boolean
		  //--------------------------------------------
		  // Readin any DOSXYZnrc 3ddose file with errors
		  //
		  // Authors : Francois DeBlois, Andrew Alexander
		  //
		  //
		  //
		  //--------------------------------------------
		  dim ts as textinputStream
		  dim mb as MemoryBlock
		  dim tmpline,line(-1),whole_file(-1) as string
		  dim i,j,k,n,count,line_num as integer
		  dim tmpdouble as double
		  dim d1, d2 as Date
		  //--------------------------------------------
		  
		  gdosxyz.egs_msg.append "Reading 3ddose file : "+file.Name
		  if file= Nil Then
		    Return False
		  end
		  d1 = new Date
		  
		  ts=file.openasTextFile
		  if ts=nil Then
		    Return False
		  end
		  filename=file.name
		  
		  Try
		    mb=new MemoryBlock(file.Length) //Changed to "new MemoryBlock" by William Davis when newmemoryBlock was found to have been deprecated
		  Catch err as OutOfMemoryException
		    Errors.Append "Insufficient memory to open "+filename
		  end try
		  
		  
		  if mb=nil Then
		    gdosxyz.egs_msg.append "Error creating 3ddose memory block for file : "+file.Name
		    Return False
		  end
		  
		  if mb.size=file.length then
		    //reading the whole file into thismemblock
		    ts.PositionB=0
		    mb.stringValue(0,mb.size)=ts.ReadAll
		    
		    //mb.stringValue(0,mb.size)=ts.read(file.Length)
		    ts.Close
		    
		  else
		    gdosxyz.egs_msg.append "Error reading 3ddose file : "+file.Name
		    Return False
		    
		  end
		  
		  if mb.Size=0 Then
		    gdosxyz.egs_msg.append "Error reading 3ddose file : "+file.Name
		    Return False
		  end
		  
		  
		  
		  tmpline=mb.StringValue(0,mb.Size)
		  
		  whole_file=Split(tmpline,EndOfLine.UNIX)
		  
		  
		  
		  // Loop through file and replace all double spaces with singe space
		  // Then replace spaces with ","
		  for i=0 to UBound(whole_file)
		    tmpline=whole_file(i)
		    While InStr(tmpline,"  ")>0
		      tmpline=ReplaceAll(tmpline,"  "," ")
		    Wend
		    tmpline=replaceall(tmpline," ",",")
		    whole_file(i)=tmpline
		  next
		  
		  
		  
		  // Now readin values of 3ddose file
		  if UBound(whole_file)>=5 Then
		    tmpline=whole_file(0)
		    whole_file.Remove 0
		    tmpline=trim(tmpline)
		    
		    line=Split(tmpline,",")
		    for i=UBound(line) DownTo 0
		      if Len(line(i))=0 Then
		        line.Remove i
		      end
		    next
		    
		    if UBound(line)<>2 Then
		      Return False
		    end
		    
		    Nx=val(line(0))
		    Ny=val(line(1))
		    Nz=val(line(2))
		    
		    if Nx=0 or ny=0 or nz=0 Then
		      Return False
		    end
		    
		    
		    
		    //now read all the Nx positions
		    redim boundaryx(Nx)
		    redim boundaryy(Ny)
		    redim boundaryz(Nz)
		    
		    
		    
		    //now read all the Nx positions
		    i=0
		    while i<Nx+1
		      tmpline=whole_file(0)
		      whole_file.Remove 0
		      tmpline=trim(tmpline)
		      j=1
		      while isnumeric(nthField(tmpline,",",j+1)) and i<Nx+1
		        tmpdouble=cdbl(nthField(tmpline,",",j+1))
		        boundaryx(i)=tmpdouble
		        j=j+1
		        i=i+1
		      wend
		    wend
		    if UBound(boundaryX)>0 Then
		      dx=boundaryX(1)-boundaryX(0)
		      Coord_X=boundaryX(0)+dx/2
		    end
		    
		    
		    //now read all the Ny positions
		    i=0
		    while i<Ny+1
		      tmpline=whole_file(0)
		      whole_file.Remove 0
		      tmpline=trim(tmpline)
		      j=1
		      while isnumeric(nthField(tmpline,",",j+1)) and i<Ny+1
		        tmpdouble=cdbl(nthField(tmpline,",",j+1))
		        boundaryY(i)=tmpdouble
		        j=j+1
		        i=i+1
		      wend
		    wend
		    if UBound(boundaryX)>0 Then
		      dy=boundaryy(1)-boundaryy(0)
		      Coord_y=boundaryy(0)+dy/2
		      
		    end
		    
		    
		    //now read all the Nz positions
		    i=0
		    while i<Nz+1
		      tmpline=whole_file(0)
		      whole_file.Remove 0
		      tmpline=trim(tmpline)
		      j=1
		      while isnumeric(nthField(tmpline,",",j+1)) and i<Nz+1
		        tmpdouble=cdbl(nthField(tmpline,",",j+1))
		        boundaryZ(i)=tmpdouble
		        j=j+1
		        i=i+1
		      wend
		    wend
		    
		    if UBound(boundaryz)>0 Then
		      dz=boundaryz(1)-boundaryz(0)
		      Coord_z=boundaryz(0)+dz/2
		    end
		    
		    //--------------------------------------------
		    //now read all the dose values
		    //--------------------------------------------
		    redim dose(Nx-1,Ny-1,Nz-1)
		    redim error(Nx-1,Ny-1,Nz-1)
		    
		    
		    //---------Readin Dose values------------------
		    imax=0
		    jmax=0
		    kmax=0
		    maxdose=-10000000
		    i=0
		    j=0
		    k=0
		    count=0
		    line_num=0
		    while count<Nx*Ny*Nz and  k<(Nz)  //k<Nz
		      if UBound(whole_file)>=line_num Then
		        tmpline=whole_file(line_num)
		        line_num=line_num+1
		        tmpline=trim(tmpline)
		        line=Split(tmpline,",")
		        n=0
		        
		        while  n<=UBound(line) and  k<(Nz)
		          if isnumeric(line(n)) Then
		            tmpdouble=val(line(n))
		            
		            dose(i,j,k)=tmpdouble
		            count=count+1
		            if dose(i,j,k)>maxdose then
		              maxdose=dose(i,j,k)
		              imax=i
		              jmax=j
		              kmax=k
		            end if
		            i=i+1
		            if i>Nx-1 then
		              i=0
		              j=j+1
		              if j>Ny-1 then
		                j=0
		                k=k+1
		                gdosxyz.egs_msg.append "Reading 3ddose file values : "+file.Name+" "+format(100*count/(Nx*Ny*Nz),"#.#")+" %"
		              end if
		            end if
		          end if 
		          n=n+1
		        wend
		        
		      else
		        Return False
		      end
		    wend
		    
		    
		    
		    //--------------------------------------------
		    //now read all the error values
		    //--------------------------------------------
		    
		    i=0
		    j=0
		    k=0
		    count=0
		    while count<Nx*Ny*Nz and  k<(Nz)   //k<Nz
		      if UBound(whole_file)>=line_num Then
		        tmpline=whole_file(line_num)
		        line_num=line_num+1
		        tmpline=trim(tmpline)
		        line=Split(tmpline,",")
		        n=0
		        
		        while  n<=UBound(line) and  k<(Nz)
		          if isnumeric(line(n)) Then
		            tmpdouble=val(line(n))
		            error(i,j,k)=tmpdouble
		            count=count+1
		            i=i+1
		            if i>Nx-1 then
		              i=0
		              j=j+1
		              if j>Ny-1 then
		                j=0
		                gdosxyz.egs_msg.append "Reading 3ddose file uncertainty : "+file.Name+" "+format(100*count/(Nx*Ny*Nz),"#.#")+" %"
		                k=k+1
		                
		              end if
		            end if
		          end if
		          n=n+1
		        wend
		      else
		        Return False
		      end
		    wend
		    
		  else
		    gdosxyz.egs_msg.append "Error reading 3ddose file : "+file.Name
		    
		    Return False
		    
		  end
		  
		  d2 = new Date
		  //MsgBox "N = " + str(N) + ". Total time..." + Str(d2.TotalSeconds - d1.TotalSeconds ) + " s"
		  
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReadV2(f as FolderItem) As Boolean
		  ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
		  ' EGS3ddose Constructor
		  '
		  ' Arguments:
		  ' f - FolderItem pointing to the egsphant file
		  '
		  ' Description:
		  ' When initialized, the 3ddose file gets read, the dimensions and number of voxels get read and stored into
		  ' their proper variables, and the voxel values gets stored into "dose" - a 3D array of doubles.
		  ' Requires that the 3ddose and egsphant will have the same number voxels in all dimensions.
		  '
		  ' Mar 2011: AJLB
		  // Authors Avery Berman  and Andrew Alexander 2011
		  //
		  ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
		  'dim tempInt as uint8
		  dim  i, j, k, progress as uint16
		  dim N as integer = 500      // Number of bytes to read at a time - this number seems to be optimal on my computer (trade-off between number of operations and amount of data in memory)
		  dim tempDouble as double
		  dim line, tempStr as string
		  dim ts as TextInputStream
		  dim rg as new RegEx
		  dim myMatch as RegExMatch
		  dim d1, d2 as Date
		  
		  rg.SearchPattern = "([0-9.\-Ee+,]+)"     // Searches for any number which can include e, E, +, -, ., and "," (tried to list them in order of decreasing frequency of appearance)
		  
		  if f = Nil then
		    Return False
		  end
		  
		  filename = f.Name
		  ts = TextInputStream.Open(f)
		  d1 = new Date
		  // First line contains number of voxels in X, Y, Z dimensions delimited by spaces (may start with spaces)
		  line = ts.ReadLine
		  myMatch = rg.Search(line)
		  nx = CDbl(myMatch.SubExpressionString(0))
		  myMatch = rg.Search
		  ny = CDbl(myMatch.SubExpressionString(0))
		  myMatch = rg.Search
		  nz = CDbl(myMatch.SubExpressionString(0))
		  
		  'MsgBox("nx = " + Str(nx) + ", ny = " + Str(ny) + ", nz = " + Str(nz)) 
		  
		  
		  // Resize the boundary arrays and the dose array
		  redim boundaryX(nx)
		  redim boundaryY(ny)
		  redim boundaryZ(nz)
		  redim dose(nx-1,ny-1,nz-1)
		  redim error(nx-1,ny-1,nz-1)
		  
		  // Initialize and start the progress bar
		  progress = 0
		  
		  
		  // voxel boundaries in the x-dimension
		  line = ts.ReadLine
		  myMatch = rg.Search(line)
		  for i=0 to nx
		    while myMatch = Nil                             // It may so happen that the boundaries are not all on one line
		      line = ts.ReadLine
		      myMatch = rg.Search(line)
		    wend
		    boundaryX(i) = CDbl(myMatch.SubExpressionString(0))
		    myMatch = rg.Search
		  next
		  // voxel boundaries in the y-dimension
		  line = ts.ReadLine
		  myMatch = rg.Search(line)
		  for i=0 to ny
		    while myMatch = Nil                             // It may so happen that the boundaries are not all on one line
		      line = ts.ReadLine
		      myMatch = rg.Search(line)
		    wend
		    boundaryY(i) = CDbl(myMatch.SubExpressionString(0))
		    myMatch = rg.Search
		  next
		  // voxel boundaries in the z-dimension
		  line = ts.ReadLine
		  myMatch = rg.Search(line)
		  for i=0 to nz
		    while myMatch = Nil                             // It may so happen that the boundaries are not all on one line
		      line = ts.ReadLine
		      myMatch = rg.Search(line)
		    wend
		    boundaryZ(i) = CDbl(myMatch.SubExpressionString(0))
		    myMatch = rg.Search
		  next
		  
		  if UBound(boundaryX)>0 Then
		    dx=boundaryX(1)-boundaryX(0)
		    Coord_X=boundaryX(0)+dx/2
		  end
		  
		  if UBound(boundaryX)>0 Then
		    dy=boundaryy(1)-boundaryy(0)
		    Coord_y=boundaryy(0)+dy/2
		  end
		  
		  
		  if UBound(boundaryz)>0 Then
		    dz=boundaryz(1)-boundaryz(0)
		    Coord_z=boundaryz(0)+dz/2
		  end
		  
		  // XY-arrays containing doses in each voxel, for each Z slice.
		  // Every nx-th value corresponds to the next row in the phantom/dose
		  // Every (nx*ny)-th value corresponds to the next slice in the phantom/dose
		  // Only reading in N bytes at a time because some 3ddose files have all of the dose values in a single line!
		  // This requires some diligent checks to make sure that a voxel value does not get split into two strings
		  
		  gdosxyz.egs_msg.append  "Reading dose data slices 1 through " + str(nz)
		  line = ts.Read(N)
		  tempStr = line.Right(1)
		  while (tempStr <> " ") AND (tempStr <> EndOfLine.UNIX)    // Check to to see if the voxel value got cutoff at the end of the line.
		    tempStr = ts.Read(1)                                            // If so, add a single character at a time until it is a blank space or end of line character
		    line = line + tempStr
		  wend
		  myMatch = rg.Search(line)
		  for k=0 to nz-1
		    // Update the progress window
		    if (k Mod 5) = 0 then
		      gdosxyz.egs_msg.append  "Reading dose data " + Format(100*k/nz,"#") +"%"
		    end
		    
		    for j=0 to ny-1
		      for i=0 to nx-1
		        while myMatch = Nil                             // Start to read from the next N bytes of the file
		          line = ts.Read(N)
		          tempStr = line.Right(1)
		          while (tempStr <> " ") AND (tempStr <> EndOfLine.UNIX)
		            tempStr = ts.Read(1)
		            line = line + tempStr
		          wend
		          myMatch = rg.Search(line)
		        wend
		        tempDouble = CDbl(myMatch.SubExpressionString(0))
		        dose(i,j,k) = tempDouble
		        if tempDouble > maxDose then
		          maxDose = tempDouble
		          imax=i
		          jmax=j
		          kmax=k
		        elseif tempDouble < minDose then
		          minDose = tempDouble
		        end
		        myMatch = rg.Search    // Searches for the next match in "line"
		      next   // x
		    next   // y
		    progress = progress + 1
		  next   // z
		  
		  
		  
		  gdosxyz.egs_msg.append  "Reading uncertainty data slices 1 through " + str(nz)
		  
		  for k=0 to nz-1
		    // Update the progress window
		    if (k Mod 5) = 0 then
		      gdosxyz.egs_msg.append  "Reading uncertainty data " + Format(100*k/nz,"#")+ "%"
		    end
		    
		    for j=0 to ny-1
		      for i=0 to nx-1
		        while myMatch = Nil                             // Start to read from the next N bytes of the file
		          line = ts.Read(N)
		          tempStr = line.Right(1)
		          while (tempStr <> " ") AND (tempStr <> EndOfLine.UNIX)
		            tempStr = ts.Read(1)
		            line = line + tempStr
		          wend
		          myMatch = rg.Search(line)
		        wend
		        tempDouble = CDbl(myMatch.SubExpressionString(0))
		        error(i,j,k) = tempDouble
		        
		        myMatch = rg.Search    // Searches for the next match in "line"
		      next   // x
		    next   // y
		    progress = progress + 1
		  next   // z
		  
		  
		  PW_Show=false
		  ts.Close
		  d2 = new Date
		  MsgBox "N = " + str(N) + ". Total time..." + Str(d2.TotalSeconds - d1.TotalSeconds ) + " s"
		  
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReadV3(f as FolderItem) As Boolean
		  ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
		  ' EGS3ddose Constructor
		  '
		  ' Arguments:
		  ' f - FolderItem pointing to the egsphant file
		  '
		  ' Description:
		  ' When initialized, the 3ddose file gets read, the dimensions and number of voxels get read and stored into
		  ' their proper variables, and the voxel values gets stored into "dose" - a 3D array of doubles.
		  ' Requires that the 3ddose and egsphant will have the same number voxels in all dimensions.
		  '
		  ' Mar 2011: AJLB
		  // Authors Avery Berman  and Andrew Alexander 2011
		  //
		  //---------------------------------
		  dim  i, j, k,totalvox, allk, progress as Int64
		  dim N as integer = 1000000      // Number of bytes to read at a time - this number seems to be optimal on my computer (trade-off between number of operations and amount of data in memory)
		  dim tempDouble as double
		  dim line, tempStr,aa as string
		  dim ts as TextInputStream
		  dim rg as new RegEx
		  dim myMatch as RegExMatch
		  dim d1, d2 as Date
		  dim mb as memoryBlock
		  //---------------------------------
		  
		  
		  d1 = new Date
		  
		  rg.SearchPattern = "([0-9.\-Ee+,]+)"     // Searches for any number which can include e, E, +, -, ., and "," (tried to list them in order of decreasing frequency of appearance)
		  
		  if f = Nil then
		    Return False
		  end
		  
		  filename = f.Name
		  ts = TextInputStream.Open(f)
		  
		  
		  mb=new MemoryBlock(f.Length) //Changed to "new MemoryBlock" by William Davis when newmemoryBlock was found to have been deprecated
		  if mb.size=f.length then
		    //reading the whole file into thismemblock
		    ts.PositionB=0
		    mb.stringValue(0,mb.size)=ts.ReadAll
		    ts.Close
		  else
		    gdosxyz.egs_msg.append "Error reading 3ddose file : "+f.Name
		    Return False
		  end
		  
		  
		  // First line contains number of voxels in X, Y, Z dimensions delimited by spaces (may start with spaces)
		  Offset=0
		  
		  line = GetString(mb,N)
		  myMatch = rg.Search(line)
		  nx = CDbl(myMatch.SubExpressionString(0))
		  myMatch = rg.Search    // Searches for the next match in "line"
		  
		  if myMatch = Nil Then                // Start to read from the next N bytes of the file
		    line=GetString(mb,N)
		    myMatch = rg.Search(line)
		  end
		  ny = CDbl(myMatch.SubExpressionString(0))
		  myMatch = rg.Search    // Searches for the next match in "line"
		  
		  if myMatch = Nil  Then         // Start to read from the next N bytes of the file
		    line=GetString(mb,N)
		    myMatch = rg.Search(line)
		  end
		  nz = CDbl(myMatch.SubExpressionString(0))
		  myMatch = rg.Search    // Searches for the next match in "line"
		  
		  //MsgBox("nx = " + Str(nx) + ", ny = " + Str(ny) + ", nz = " + Str(nz)) 
		  
		  
		  // Resize the boundary arrays and the dose array
		  redim boundaryX(nx)
		  redim boundaryY(ny)
		  redim boundaryZ(nz)
		  redim dose(nx-1,ny-1,nz-1)
		  redim error(nx-1,ny-1,nz-1)
		  
		  // Initialize and start the progress bar
		  progress = 0
		  
		  
		  // voxel boundaries in the x-dimension
		  for i=0 to nx
		    if myMatch = Nil  Then         // Start to read from the next N bytes of the file
		      line=GetString(mb,N)
		      myMatch = rg.Search(line)
		    end
		    boundaryX(i) = CDbl(myMatch.SubExpressionString(0))
		    myMatch = rg.Search    // Searches for the next match in "line"
		  next
		  
		  
		  // voxel boundaries in the y-dimension
		  for i=0 to ny
		    if myMatch = Nil  Then         // Start to read from the next N bytes of the file
		      line=GetString(mb,N)
		      myMatch = rg.Search(line)
		    end
		    boundaryY(i) = CDbl(myMatch.SubExpressionString(0))
		    myMatch = rg.Search    // Searches for the next match in "line"
		  next
		  
		  // voxel boundaries in the z-dimension
		  for i=0 to nz
		    if myMatch = Nil  Then         // Start to read from the next N bytes of the file
		      line=GetString(mb,N)
		      myMatch = rg.Search(line)
		    end
		    boundaryZ(i) = CDbl(myMatch.SubExpressionString(0))
		    myMatch = rg.Search
		  next
		  
		  
		  if UBound(boundaryX)>0 Then
		    dx=boundaryX(1)-boundaryX(0)
		    Coord_X=boundaryX(0)+dx/2
		  end
		  
		  if UBound(boundaryX)>0 Then
		    dy=boundaryy(1)-boundaryy(0)
		    Coord_y=boundaryy(0)+dy/2
		  end
		  
		  
		  if UBound(boundaryz)>0 Then
		    dz=boundaryz(1)-boundaryz(0)
		    Coord_z=boundaryz(0)+dz/2
		  end
		  
		  // XY-arrays containing doses in each voxel, for each Z slice.
		  // Every nx-th value corresponds to the next row in the phantom/dose
		  // Every (nx*ny)-th value corresponds to the next slice in the phantom/dose
		  // Only reading in N bytes at a time because some 3ddose files have all of the dose values in a single line!
		  // This requires some diligent checks to make sure that a voxel value does not get split into two strings
		  
		  gdosxyz.egs_msg.append  "Reading dose data slices 1 through " + str(nz)
		  
		  totalvox=nx*ny*nz
		  i=0
		  j=0
		  k=0
		  
		  for allk=1 to totalvox
		    if myMatch = Nil then  // Start to read from the next N bytes of the file
		      line=GetString(mb,N)
		      myMatch = rg.Search(line)
		    end
		    tempDouble = CDbl(myMatch.SubExpressionString(0))
		    //aa=Format(tempDouble,"#.###e")
		    dose(i,j,k) = tempDouble
		    if tempDouble > maxDose then
		      maxDose = tempDouble
		      imax=i
		      jmax=j
		      kmax=k
		    elseif tempDouble < minDose then
		      minDose = tempDouble
		    end
		    myMatch = rg.Search    // Searches for the next match in "line"
		    if i<(Nx-1) Then
		      i=i+1
		    elseif j<(Ny-1) Then
		      j=j+1
		      i=0
		    else
		      k=k+1
		      i=0
		      j=0
		      gdosxyz.egs_msg.append  "Reading dose data " +  Format(100*allk/totalvox,"#")+ "%"
		    end
		  next   // z
		  
		  
		  
		  gdosxyz.egs_msg.append  "Reading uncertainty data slices 1 through " + str(nz)
		  
		  totalvox=nx*ny*nz
		  i=0
		  j=0
		  k=0
		  for allk=1 to totalvox
		    if myMatch = Nil then // Start to read from the next N bytes of the file
		      line=GetString(mb,N)
		      myMatch = rg.Search(line)
		    end
		    tempDouble = CDbl(myMatch.SubExpressionString(0))
		    error(i,j,k) = tempDouble
		    //aa=Format(tempDouble,"#.###e")
		    myMatch = rg.Search    // Searches for the next match in "line"
		    
		    if i<(Nx-1) Then
		      i=i+1
		    elseif j<(Ny-1) Then
		      j=j+1
		      i=0
		    else
		      k=k+1
		      i=0
		      j=0
		      gdosxyz.egs_msg.append  "Reading uncertainty data " + Format(100*allk/totalvox,"#")+ "%"
		    end
		    
		  next   // all
		  
		  d2 = new Date
		  //MsgBox "N = " + str(N) + ". Total time..." + Str(d2.TotalSeconds - d1.TotalSeconds ) + " s"
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReadV4(file as FolderItem) As Boolean
		  //--------------------------------------------
		  // Readin any DOSXYZnrc 3ddose file with errors
		  //
		  // Authors : Francois DeBlois, Andrew Alexander
		  //
		  //
		  //
		  //--------------------------------------------
		  dim ts as textinputStream
		  dim tmpline,line(-1),whole_file(-1),ahalf,bhalf,newline,cutstring,firstchar as string
		  dim i,j,k,n,count,line_num,gcount,charaterpointer,lcount,lcount_total as integer
		  dim tmpdouble as double
		  dim d1, d2 as Date
		  //--------------------------------------------
		  
		  gdosxyz.egs_msg.append "Reading 3ddose file : "+file.Name
		  if file= Nil Then
		    Return False
		  end
		  d1 = new Date
		  
		  
		  ts=TextInputStream.Open( file )
		  if ts=nil Then
		    gdosxyz.egs_msg.append "Error reading 3ddose file : "+file.Name
		    Return False
		  end
		  
		  filename=file.name
		  
		  
		  While ts.EOF=False
		    tmpline=ts.ReadAll
		  Wend
		  ts.Close
		  
		  
		  While InStr(tmpline,"  ")>0
		    tmpline=ReplaceAll(tmpline,"  "," ")
		  Wend
		  
		  line_num=CountFields(tmpline,EndOfLine.UNIX)
		  for i=1 to line_num
		    whole_file.Append NthField(tmpline,EndOfLine.UNIX,i)
		  Next
		  
		  
		  // Loop through file and replace all double spaces with singe space
		  // Then replace spaces with ","
		  for i=0 to UBound(whole_file)
		    tmpline=whole_file(i)
		    tmpline=replaceall(tmpline," ",",")
		    whole_file(i)=tmpline
		  next
		  
		  
		  gdosxyz.egs_msg.append "Slowly parsing 3ddose file into chunks : "+file.Name
		  charaterpointer=100000
		  for i=0 to UBound(whole_file)
		    tmpline=whole_file(i)
		    gcount=CountFields(tmpline,",")
		    lcount_total=Len(tmpline)
		    
		    
		    if gcount>charaterpointer Then
		      ahalf=""
		      bhalf=""
		      lcount=Floor(lcount_total/2)
		      
		      cutstring=Right(tmpline,lcount)
		      firstchar=Left(cutstring, 1)
		      
		      While firstchar<>"," 
		        lcount=lcount+1
		        cutstring=Right(tmpline,lcount)
		        firstchar=Left(cutstring, 1)
		      Wend
		      
		      
		      
		      newline=""
		      
		      bhalf=cutstring
		      //gcount=CountFields(ahalf,",")
		      
		      ahalf=NthField(tmpline,bhalf,1)
		      //gcount=CountFields(bhalf,",")
		      
		      whole_file(i)=ahalf
		      whole_file.Insert(i+1,bhalf)
		      j=j
		    end
		  next
		  
		  
		  
		  // Now readin values of 3ddose file
		  if UBound(whole_file)>=5 Then
		    tmpline=whole_file(0)
		    whole_file.Remove 0
		    tmpline=trim(tmpline)
		    
		    line=Split(tmpline,",")
		    for i=UBound(line) DownTo 0
		      if Len(line(i))=0 Then
		        line.Remove i
		      end
		    next
		    
		    if UBound(line)<>2 Then
		      Return False
		    end
		    
		    Nx=val(line(0))
		    Ny=val(line(1))
		    Nz=val(line(2))
		    
		    if Nx=0 or ny=0 or nz=0 Then
		      Return False
		    end
		    
		    
		    
		    //now read all the Nx positions
		    redim boundaryx(Nx)
		    redim boundaryy(Ny)
		    redim boundaryz(Nz)
		    
		    
		    
		    //now read all the Nx positions
		    i=0
		    while i<Nx+1
		      tmpline=whole_file(0)
		      whole_file.Remove 0
		      tmpline=trim(tmpline)
		      j=1
		      while isnumeric(nthField(tmpline,",",j+1)) and i<Nx+1
		        tmpdouble=cdbl(nthField(tmpline,",",j+1))
		        boundaryx(i)=tmpdouble
		        j=j+1
		        i=i+1
		      wend
		    wend
		    if UBound(boundaryX)>0 Then
		      dx=boundaryX(1)-boundaryX(0)
		      Coord_X=boundaryX(0)+dx/2
		    end
		    
		    
		    //now read all the Ny positions
		    i=0
		    while i<Ny+1
		      tmpline=whole_file(0)
		      whole_file.Remove 0
		      tmpline=trim(tmpline)
		      j=1
		      while isnumeric(nthField(tmpline,",",j+1)) and i<Ny+1
		        tmpdouble=cdbl(nthField(tmpline,",",j+1))
		        boundaryY(i)=tmpdouble
		        j=j+1
		        i=i+1
		      wend
		    wend
		    if UBound(boundaryX)>0 Then
		      dy=boundaryy(1)-boundaryy(0)
		      Coord_y=boundaryy(0)+dy/2
		      
		    end
		    
		    
		    //now read all the Nz positions
		    i=0
		    while i<Nz+1
		      tmpline=whole_file(0)
		      whole_file.Remove 0
		      tmpline=trim(tmpline)
		      j=1
		      while isnumeric(nthField(tmpline,",",j+1)) and i<Nz+1
		        tmpdouble=cdbl(nthField(tmpline,",",j+1))
		        boundaryZ(i)=tmpdouble
		        j=j+1
		        i=i+1
		      wend
		    wend
		    
		    if UBound(boundaryz)>0 Then
		      dz=boundaryz(1)-boundaryz(0)
		      Coord_z=boundaryz(0)+dz/2
		    end
		    
		    //--------------------------------------------
		    //now read all the dose values
		    //--------------------------------------------
		    redim dose(Nx-1,Ny-1,Nz-1)
		    redim error(Nx-1,Ny-1,Nz-1)
		    
		    
		    //---------Readin Dose values------------------
		    imax=0
		    jmax=0
		    kmax=0
		    maxdose=-10000000
		    i=0
		    j=0
		    k=0
		    count=0
		    line_num=0
		    while count<Nx*Ny*Nz and  k<(Nz)  //k<Nz
		      if UBound(whole_file)>=line_num Then
		        tmpline=whole_file(line_num)
		        line_num=line_num+1
		        tmpline=trim(tmpline)
		        line=Split(tmpline,",")
		        n=0
		        
		        while  n<=UBound(line) and  k<(Nz)
		          if isnumeric(line(n)) Then
		            tmpdouble=val(line(n))
		            
		            dose(i,j,k)=tmpdouble
		            count=count+1
		            if dose(i,j,k)>maxdose then
		              maxdose=dose(i,j,k)
		              imax=i
		              jmax=j
		              kmax=k
		            end if
		            i=i+1
		            if i>Nx-1 then
		              i=0
		              j=j+1
		              if j>Ny-1 then
		                j=0
		                k=k+1
		                gdosxyz.egs_msg.append "Reading 3ddose file values : "+file.Name+" "+format(100*count/(Nx*Ny*Nz),"#.#")+" %"
		              end if
		            end if
		          end if 
		          n=n+1
		        wend
		        
		      else
		        Return False
		      end
		    wend
		    
		    
		    
		    //--------------------------------------------
		    //now read all the error values
		    //--------------------------------------------
		    
		    i=0
		    j=0
		    k=0
		    count=0
		    redim line(-1)
		    
		    while count<Nx*Ny*Nz and  k<(Nz)   //k<Nz
		      if UBound(whole_file)>=line_num Then
		        tmpline=whole_file(line_num)
		        line_num=line_num+1
		        tmpline=trim(tmpline)
		        line=Split(tmpline,",")
		        n=0
		        
		        
		        while  n<=UBound(line) and  k<(Nz)
		          if isnumeric(line(n)) Then
		            tmpdouble=val(line(n))
		            error(i,j,k)=tmpdouble
		            count=count+1
		            i=i+1
		            if i>Nx-1 then
		              i=0
		              j=j+1
		              if j>Ny-1 then
		                j=0
		                gdosxyz.egs_msg.append "Reading 3ddose file uncertainty : "+file.Name+" "+format(100*count/(Nx*Ny*Nz),"#.#")+" %"
		                k=k+1
		                
		              end if
		            end if
		          end if
		          n=n+1
		        wend
		      else
		        Return False
		      end
		    wend
		    
		  else
		    gdosxyz.egs_msg.append "Error reading 3ddose file : "+file.Name
		    Return False
		  end
		  
		  d2 = new Date
		  //MsgBox "N = " + str(N) + ". Total time..." + Str(d2.TotalSeconds - d1.TotalSeconds ) + " s"
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReadV5(file as FolderItem) As Boolean
		  //--------------------------------------------
		  // Readin any DOSXYZnrc 3ddose file with errors
		  //
		  // Authors : Francois DeBlois, Andrew Alexander
		  //
		  //
		  //
		  //--------------------------------------------
		  dim ts as textinputStream
		  dim tmpline,line(-1),whole_file(-1),ahalf,bhalf,newline,cutstring,firstchar as string
		  dim i,j,k,n,count,line_num,gcount,charaterpointer,lcount,lcount_total as integer
		  dim tmpdouble as double
		  dim d1, d2 as Date
		  //--------------------------------------------
		  
		  gdosxyz.egs_msg.append "Reading 3ddose file : "+file.Name
		  if file= Nil Then
		    Return False
		  end
		  d1 = new Date
		  
		  
		  ts=TextInputStream.Open(file)
		  if ts=nil Then
		    gdosxyz.egs_msg.append "Error reading 3ddose file : "+file.Name
		    Return False
		  end
		  
		  ts.Encoding=Encodings.UTF16
		  
		  
		  filename=file.name
		  
		  gdosxyz.egs_msg.append "Slowly parsing 3ddose file into chunks : "+file.Name
		  
		  charaterpointer=1000000
		  While ts.EOF=False
		    tmpline=""
		    tmpline=ts.ReadLine
		    lcount_total=CountFields(tmpline," ")
		    i=i
		    if lcount_total>charaterpointer Then
		      lcount=Floor(lcount_total/2)
		      
		      ahalf=""
		      bhalf=""
		      
		      cutstring=Right(tmpline,lcount)
		      firstchar=Left(cutstring, 1)
		      
		      While firstchar<>" " 
		        lcount=lcount+1
		        cutstring=Right(tmpline,lcount)
		        firstchar=Left(cutstring, 1)
		      Wend
		      
		      
		      bhalf=cutstring
		      ahalf=NthField(tmpline,bhalf,1)
		      
		      While InStr(ahalf,"  ")>0
		        ahalf=ReplaceAll(ahalf,"  "," ")
		      Wend
		      
		      While InStr(bhalf,"  ")>0
		        bhalf=ReplaceAll(bhalf,"  "," ")
		      Wend
		      
		      ahalf=replaceall(ahalf," ",",")
		      bhalf=replaceall(bhalf," ",",")
		      
		      
		      whole_file.Append ahalf
		      whole_file.Append bhalf
		      
		      
		    else
		      
		      While InStr(tmpline,"  ")>0
		        tmpline=ReplaceAll(tmpline,"  "," ")
		      Wend
		      tmpline=replaceall(tmpline," ",",")
		      whole_file.Append tmpline
		    end
		  Wend
		  ts.Close
		  
		  
		  
		  // Loop through file and replace all double spaces with singe space
		  // Then replace spaces with ","
		  
		  
		  charaterpointer=100000
		  
		  
		  
		  
		  
		  // Now readin values of 3ddose file
		  if UBound(whole_file)>=5 Then
		    tmpline=whole_file(0)
		    whole_file.Remove 0
		    tmpline=trim(tmpline)
		    
		    line=Split(tmpline,",")
		    for i=UBound(line) DownTo 0
		      if Len(line(i))=0 Then
		        line.Remove i
		      end
		    next
		    
		    if UBound(line)<>2 Then
		      Return False
		    end
		    
		    Nx=val(line(0))
		    Ny=val(line(1))
		    Nz=val(line(2))
		    
		    if Nx=0 or ny=0 or nz=0 Then
		      Return False
		    end
		    
		    
		    
		    //now read all the Nx positions
		    redim boundaryx(Nx)
		    redim boundaryy(Ny)
		    redim boundaryz(Nz)
		    
		    
		    
		    //now read all the Nx positions
		    i=0
		    while i<Nx+1
		      tmpline=whole_file(0)
		      whole_file.Remove 0
		      tmpline=trim(tmpline)
		      j=1
		      while isnumeric(nthField(tmpline,",",j+1)) and i<Nx+1
		        tmpdouble=cdbl(nthField(tmpline,",",j+1))
		        boundaryx(i)=tmpdouble
		        j=j+1
		        i=i+1
		      wend
		    wend
		    if UBound(boundaryX)>0 Then
		      dx=boundaryX(1)-boundaryX(0)
		      Coord_X=boundaryX(0)+dx/2
		    end
		    
		    
		    //now read all the Ny positions
		    i=0
		    while i<Ny+1
		      tmpline=whole_file(0)
		      whole_file.Remove 0
		      tmpline=trim(tmpline)
		      j=1
		      while isnumeric(nthField(tmpline,",",j+1)) and i<Ny+1
		        tmpdouble=cdbl(nthField(tmpline,",",j+1))
		        boundaryY(i)=tmpdouble
		        j=j+1
		        i=i+1
		      wend
		    wend
		    if UBound(boundaryX)>0 Then
		      dy=boundaryy(1)-boundaryy(0)
		      Coord_y=boundaryy(0)+dy/2
		      
		    end
		    
		    
		    //now read all the Nz positions
		    i=0
		    while i<Nz+1
		      tmpline=whole_file(0)
		      whole_file.Remove 0
		      tmpline=trim(tmpline)
		      j=1
		      while isnumeric(nthField(tmpline,",",j+1)) and i<Nz+1
		        tmpdouble=cdbl(nthField(tmpline,",",j+1))
		        boundaryZ(i)=tmpdouble
		        j=j+1
		        i=i+1
		      wend
		    wend
		    
		    if UBound(boundaryz)>0 Then
		      dz=boundaryz(1)-boundaryz(0)
		      Coord_z=boundaryz(0)+dz/2
		    end
		    
		    //--------------------------------------------
		    //now read all the dose values
		    //--------------------------------------------
		    redim dose(Nx-1,Ny-1,Nz-1)
		    redim error(Nx-1,Ny-1,Nz-1)
		    
		    
		    //---------Readin Dose values------------------
		    imax=0
		    jmax=0
		    kmax=0
		    maxdose=-10000000
		    i=0
		    j=0
		    k=0
		    count=0
		    line_num=0
		    while count<Nx*Ny*Nz and  k<(Nz)  //k<Nz
		      if UBound(whole_file)>=line_num Then
		        tmpline=whole_file(line_num)
		        line_num=line_num+1
		        tmpline=trim(tmpline)
		        line=Split(tmpline,",")
		        n=0
		        
		        while  n<=UBound(line) and  k<(Nz)
		          if isnumeric(line(n)) Then
		            tmpdouble=val(line(n))
		            
		            dose(i,j,k)=tmpdouble
		            count=count+1
		            if dose(i,j,k)>maxdose then
		              maxdose=dose(i,j,k)
		              imax=i
		              jmax=j
		              kmax=k
		            end if
		            i=i+1
		            if i>Nx-1 then
		              i=0
		              j=j+1
		              if j>Ny-1 then
		                j=0
		                k=k+1
		                gdosxyz.egs_msg.append "Reading 3ddose file values : "+file.Name+" "+format(100*count/(Nx*Ny*Nz),"#.#")+" %"
		              end if
		            end if
		          end if 
		          n=n+1
		        wend
		        
		      else
		        Return False
		      end
		    wend
		    
		    
		    
		    //--------------------------------------------
		    //now read all the error values
		    //--------------------------------------------
		    
		    i=0
		    j=0
		    k=0
		    count=0
		    redim line(-1)
		    
		    while count<Nx*Ny*Nz and  k<(Nz)   //k<Nz
		      if UBound(whole_file)>=line_num Then
		        tmpline=whole_file(line_num)
		        line_num=line_num+1
		        tmpline=trim(tmpline)
		        line=Split(tmpline,",")
		        n=0
		        
		        
		        while  n<=UBound(line) and  k<(Nz)
		          if isnumeric(line(n)) Then
		            tmpdouble=val(line(n))
		            error(i,j,k)=tmpdouble
		            count=count+1
		            i=i+1
		            if i>Nx-1 then
		              i=0
		              j=j+1
		              if j>Ny-1 then
		                j=0
		                gdosxyz.egs_msg.append "Reading 3ddose file uncertainty : "+file.Name+" "+format(100*count/(Nx*Ny*Nz),"#.#")+" %"
		                k=k+1
		                
		              end if
		            end if
		          end if
		          n=n+1
		        wend
		      else
		        Return False
		      end
		    wend
		    
		  else
		    gdosxyz.egs_msg.append "Error reading 3ddose file : "+file.Name
		    Return False
		  end
		  
		  d2 = new Date
		  //MsgBox "N = " + str(N) + ". Total time..." + Str(d2.TotalSeconds - d1.TotalSeconds ) + " s"
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReadV6(file as FolderItem) As Boolean
		  //--------------------------------------------
		  // Readin any DOSXYZnrc 3ddose file with errors
		  //
		  // Authors : Francois DeBlois, Andrew Alexander
		  //
		  //
		  //
		  //--------------------------------------------
		  dim ts as textinputStream
		  dim tmpline,line(-1),whole_file(-1),ahalf,bhalf,newline,cutstring,firstchar as string
		  dim i,j,k,n,count,line_num,gcount,charaterpointer,lcount,lcount_total as integer
		  dim tmpdouble as double
		  dim d1, d2 as Date
		  Dim position,chunkSize as Uint64
		  Dim binaryTextData  as MemoryBlock
		  
		  //--------------------------------------------
		  
		  gdosxyz.egs_msg.append "Reading 3ddose file : "+file.Name
		  if file= Nil Then
		    Return False
		  end
		  d1 = new Date
		  
		  
		  ts=TextInputStream.Open(file)
		  if ts=nil Then
		    gdosxyz.egs_msg.append "Error reading 3ddose file : "+file.Name
		    Return False
		  end
		  
		  
		  filename=file.name
		  
		  binaryTextData = new memoryblock( file.length)
		  
		  chunkSize = 2097152
		  position=0
		  While ts.EOF=False
		    if (position+chunkSize)>file.length Then
		      chunkSize=file.Length-position
		    end
		    binaryTextData.stringValue(position, chunkSize ) = ts.read( chunksize )
		    position = position + chunksize
		  wend
		  ts.Close
		  
		  
		  position=0
		  for i=0 to binaryTextData.Size
		    firstchar=binaryTextData.StringValue(i,1)
		    
		    if firstchar=EndOfLine.UNIX Then
		      tmpline=binaryTextData.StringValue(position,i)
		      position=i
		      whole_file.Append tmpline
		    else
		      
		      
		    end
		    
		    
		  Next
		  
		  
		  
		  
		  //tmpline=binaryTextData.StringValue(0,binaryTextData.Size)
		  
		  //whole_file=Split(tmpline,EndOfLine.UNIX)
		  
		  
		  
		  // Loop through file and replace all double spaces with singe space
		  // Then replace spaces with ","
		  
		  
		  charaterpointer=100000
		  
		  
		  
		  
		  
		  // Now readin values of 3ddose file
		  if UBound(whole_file)>=5 Then
		    tmpline=whole_file(0)
		    whole_file.Remove 0
		    tmpline=trim(tmpline)
		    
		    line=Split(tmpline,",")
		    for i=UBound(line) DownTo 0
		      if Len(line(i))=0 Then
		        line.Remove i
		      end
		    next
		    
		    if UBound(line)<>2 Then
		      Return False
		    end
		    
		    Nx=val(line(0))
		    Ny=val(line(1))
		    Nz=val(line(2))
		    
		    if Nx=0 or ny=0 or nz=0 Then
		      Return False
		    end
		    
		    
		    
		    //now read all the Nx positions
		    redim boundaryx(Nx)
		    redim boundaryy(Ny)
		    redim boundaryz(Nz)
		    
		    
		    
		    //now read all the Nx positions
		    i=0
		    while i<Nx+1
		      tmpline=whole_file(0)
		      whole_file.Remove 0
		      tmpline=trim(tmpline)
		      j=1
		      while isnumeric(nthField(tmpline,",",j+1)) and i<Nx+1
		        tmpdouble=cdbl(nthField(tmpline,",",j+1))
		        boundaryx(i)=tmpdouble
		        j=j+1
		        i=i+1
		      wend
		    wend
		    if UBound(boundaryX)>0 Then
		      dx=boundaryX(1)-boundaryX(0)
		      Coord_X=boundaryX(0)+dx/2
		    end
		    
		    
		    //now read all the Ny positions
		    i=0
		    while i<Ny+1
		      tmpline=whole_file(0)
		      whole_file.Remove 0
		      tmpline=trim(tmpline)
		      j=1
		      while isnumeric(nthField(tmpline,",",j+1)) and i<Ny+1
		        tmpdouble=cdbl(nthField(tmpline,",",j+1))
		        boundaryY(i)=tmpdouble
		        j=j+1
		        i=i+1
		      wend
		    wend
		    if UBound(boundaryX)>0 Then
		      dy=boundaryy(1)-boundaryy(0)
		      Coord_y=boundaryy(0)+dy/2
		      
		    end
		    
		    
		    //now read all the Nz positions
		    i=0
		    while i<Nz+1
		      tmpline=whole_file(0)
		      whole_file.Remove 0
		      tmpline=trim(tmpline)
		      j=1
		      while isnumeric(nthField(tmpline,",",j+1)) and i<Nz+1
		        tmpdouble=cdbl(nthField(tmpline,",",j+1))
		        boundaryZ(i)=tmpdouble
		        j=j+1
		        i=i+1
		      wend
		    wend
		    
		    if UBound(boundaryz)>0 Then
		      dz=boundaryz(1)-boundaryz(0)
		      Coord_z=boundaryz(0)+dz/2
		    end
		    
		    //--------------------------------------------
		    //now read all the dose values
		    //--------------------------------------------
		    redim dose(Nx-1,Ny-1,Nz-1)
		    redim error(Nx-1,Ny-1,Nz-1)
		    
		    
		    //---------Readin Dose values------------------
		    imax=0
		    jmax=0
		    kmax=0
		    maxdose=-10000000
		    i=0
		    j=0
		    k=0
		    count=0
		    line_num=0
		    while count<Nx*Ny*Nz and  k<(Nz)  //k<Nz
		      if UBound(whole_file)>=line_num Then
		        tmpline=whole_file(line_num)
		        line_num=line_num+1
		        tmpline=trim(tmpline)
		        line=Split(tmpline,",")
		        n=0
		        
		        while  n<=UBound(line) and  k<(Nz)
		          if isnumeric(line(n)) Then
		            tmpdouble=val(line(n))
		            
		            dose(i,j,k)=tmpdouble
		            count=count+1
		            if dose(i,j,k)>maxdose then
		              maxdose=dose(i,j,k)
		              imax=i
		              jmax=j
		              kmax=k
		            end if
		            i=i+1
		            if i>Nx-1 then
		              i=0
		              j=j+1
		              if j>Ny-1 then
		                j=0
		                k=k+1
		                gdosxyz.egs_msg.append "Reading 3ddose file values : "+file.Name+" "+format(100*count/(Nx*Ny*Nz),"#.#")+" %"
		              end if
		            end if
		          end if 
		          n=n+1
		        wend
		        
		      else
		        Return False
		      end
		    wend
		    
		    
		    
		    //--------------------------------------------
		    //now read all the error values
		    //--------------------------------------------
		    
		    i=0
		    j=0
		    k=0
		    count=0
		    redim line(-1)
		    
		    while count<Nx*Ny*Nz and  k<(Nz)   //k<Nz
		      if UBound(whole_file)>=line_num Then
		        tmpline=whole_file(line_num)
		        line_num=line_num+1
		        tmpline=trim(tmpline)
		        line=Split(tmpline,",")
		        n=0
		        
		        
		        while  n<=UBound(line) and  k<(Nz)
		          if isnumeric(line(n)) Then
		            tmpdouble=val(line(n))
		            error(i,j,k)=tmpdouble
		            count=count+1
		            i=i+1
		            if i>Nx-1 then
		              i=0
		              j=j+1
		              if j>Ny-1 then
		                j=0
		                gdosxyz.egs_msg.append "Reading 3ddose file uncertainty : "+file.Name+" "+format(100*count/(Nx*Ny*Nz),"#.#")+" %"
		                k=k+1
		                
		              end if
		            end if
		          end if
		          n=n+1
		        wend
		      else
		        Return False
		      end
		    wend
		    
		  else
		    gdosxyz.egs_msg.append "Error reading 3ddose file : "+file.Name
		    Return False
		  end
		  
		  d2 = new Date
		  //MsgBox "N = " + str(N) + ". Total time..." + Str(d2.TotalSeconds - d1.TotalSeconds ) + " s"
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Read_mb() As Boolean
		  ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
		  ' EGS3ddose Constructor
		  '
		  ' Arguments:
		  ' f - FolderItem pointing to the egsphant file
		  '
		  ' Description:
		  ' When initialized, the 3ddose file gets read, the dimensions and number of voxels get read and stored into
		  ' their proper variables, and the voxel values gets stored into "dose" - a 3D array of doubles.
		  ' Requires that the 3ddose and egsphant will have the same number voxels in all dimensions.
		  '
		  ' Mar 2011: AJLB
		  // Authors Avery Berman  and Andrew Alexander 2011
		  //
		  //---------------------------------
		  dim  i, j, k,totalvox, allk, progress as Int64
		  dim N as integer = 1000000      // Number of bytes to read at a time - this number seems to be optimal on my computer (trade-off between number of operations and amount of data in memory)
		  dim tempDouble as double
		  dim line, tempStr,aa as string
		  dim rg as new RegEx
		  dim myMatch as RegExMatch
		  dim d1, d2 as Date
		  //---------------------------------
		  
		  
		  d1 = new Date
		  
		  rg.SearchPattern = "([0-9.\-Ee+,]+)"     // Searches for any number which can include e, E, +, -, ., and "," (tried to list them in order of decreasing frequency of appearance)
		  
		  
		  
		  
		  
		  
		  // First line contains number of voxels in X, Y, Z dimensions delimited by spaces (may start with spaces)
		  Offset=0
		  
		  line = GetString(mb,N)
		  myMatch = rg.Search(line)
		  nx = CDbl(myMatch.SubExpressionString(0))
		  myMatch = rg.Search    // Searches for the next match in "line"
		  
		  if myMatch = Nil Then                // Start to read from the next N bytes of the file
		    line=GetString(mb,N)
		    myMatch = rg.Search(line)
		  end
		  ny = CDbl(myMatch.SubExpressionString(0))
		  myMatch = rg.Search    // Searches for the next match in "line"
		  
		  if myMatch = Nil  Then         // Start to read from the next N bytes of the file
		    line=GetString(mb,N)
		    myMatch = rg.Search(line)
		  end
		  nz = CDbl(myMatch.SubExpressionString(0))
		  myMatch = rg.Search    // Searches for the next match in "line"
		  
		  //MsgBox("nx = " + Str(nx) + ", ny = " + Str(ny) + ", nz = " + Str(nz)) 
		  
		  
		  // Resize the boundary arrays and the dose array
		  redim boundaryX(nx)
		  redim boundaryY(ny)
		  redim boundaryZ(nz)
		  redim dose(nx-1,ny-1,nz-1)
		  redim error(nx-1,ny-1,nz-1)
		  
		  // Initialize and start the progress bar
		  progress = 0
		  
		  
		  // voxel boundaries in the x-dimension
		  for i=0 to nx
		    if myMatch = Nil  Then         // Start to read from the next N bytes of the file
		      line=GetString(mb,N)
		      myMatch = rg.Search(line)
		    end
		    boundaryX(i) = CDbl(myMatch.SubExpressionString(0))
		    myMatch = rg.Search    // Searches for the next match in "line"
		  next
		  
		  
		  // voxel boundaries in the y-dimension
		  for i=0 to ny
		    if myMatch = Nil  Then         // Start to read from the next N bytes of the file
		      line=GetString(mb,N)
		      myMatch = rg.Search(line)
		    end
		    boundaryY(i) = CDbl(myMatch.SubExpressionString(0))
		    myMatch = rg.Search    // Searches for the next match in "line"
		  next
		  
		  // voxel boundaries in the z-dimension
		  for i=0 to nz
		    if myMatch = Nil  Then         // Start to read from the next N bytes of the file
		      line=GetString(mb,N)
		      myMatch = rg.Search(line)
		    end
		    boundaryZ(i) = CDbl(myMatch.SubExpressionString(0))
		    myMatch = rg.Search
		  next
		  
		  
		  if UBound(boundaryX)>0 Then
		    dx=boundaryX(1)-boundaryX(0)
		    Coord_X=boundaryX(0)+dx/2
		  end
		  
		  if UBound(boundaryX)>0 Then
		    dy=boundaryy(1)-boundaryy(0)
		    Coord_y=boundaryy(0)+dy/2
		  end
		  
		  
		  if UBound(boundaryz)>0 Then
		    dz=boundaryz(1)-boundaryz(0)
		    Coord_z=boundaryz(0)+dz/2
		  end
		  
		  // XY-arrays containing doses in each voxel, for each Z slice.
		  // Every nx-th value corresponds to the next row in the phantom/dose
		  // Every (nx*ny)-th value corresponds to the next slice in the phantom/dose
		  // Only reading in N bytes at a time because some 3ddose files have all of the dose values in a single line!
		  // This requires some diligent checks to make sure that a voxel value does not get split into two strings
		  
		  gdosxyz.egs_msg.append  "Reading dose data slices 1 through " + str(nz)
		  
		  totalvox=nx*ny*nz
		  i=0
		  j=0
		  k=0
		  
		  for allk=1 to totalvox
		    if myMatch = Nil then  // Start to read from the next N bytes of the file
		      line=GetString(mb,N)
		      myMatch = rg.Search(line)
		    end
		    tempDouble = CDbl(myMatch.SubExpressionString(0))
		    //aa=Format(tempDouble,"#.###e")
		    dose(i,j,k) = tempDouble
		    if tempDouble > maxDose then
		      maxDose = tempDouble
		      imax=i
		      jmax=j
		      kmax=k
		    elseif tempDouble < minDose then
		      minDose = tempDouble
		    end
		    myMatch = rg.Search    // Searches for the next match in "line"
		    if i<(Nx-1) Then
		      i=i+1
		    elseif j<(Ny-1) Then
		      j=j+1
		      i=0
		    else
		      k=k+1
		      i=0
		      j=0
		      gdosxyz.egs_msg.append  "Reading dose data " +  Format(100*allk/totalvox,"#")+ "%"
		    end
		  next   // z
		  
		  
		  
		  gdosxyz.egs_msg.append  "Reading uncertainty data slices 1 through " + str(nz)
		  
		  totalvox=nx*ny*nz
		  i=0
		  j=0
		  k=0
		  for allk=1 to totalvox
		    if myMatch = Nil then // Start to read from the next N bytes of the file
		      line=GetString(mb,N)
		      myMatch = rg.Search(line)
		    end
		    tempDouble = CDbl(myMatch.SubExpressionString(0))
		    error(i,j,k) = tempDouble
		    //aa=Format(tempDouble,"#.###e")
		    myMatch = rg.Search    // Searches for the next match in "line"
		    
		    if i<(Nx-1) Then
		      i=i+1
		    elseif j<(Ny-1) Then
		      j=j+1
		      i=0
		    else
		      k=k+1
		      i=0
		      j=0
		      gdosxyz.egs_msg.append  "Reading uncertainty data " + Format(100*allk/totalvox,"#")+ "%"
		    end
		    
		  next   // all
		  
		  d2 = new Date
		  //MsgBox "N = " + str(N) + ". Total time..." + Str(d2.TotalSeconds - d1.TotalSeconds ) + " s"
		  mb = new memoryblock(0)
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Read_text_file(file as FolderItem) As Boolean
		  //--------------------------------------------
		  // Readin any DOSXYZnrc 3ddose file with errors
		  //
		  // 2016 Updated A Alexander
		  //  This methods readin a text file into a memory block 
		  //  Loop over the text file and reads it in chunks really improves the 
		  // effieciency of reading in text files. 
		  //--------------------------------------------
		  dim ts as textinputStream
		  Dim position,chunkSize as Uint64
		  //--------------------------------------------
		  
		  filename=file.name
		  
		  gdosxyz.egs_msg.append "Reading 3ddose file : "+file.Name
		  if file= Nil Then
		    gdosxyz.egs_msg.append "Error in reading 3ddose file : "+file.Name+ ", file could not be found"
		    Return False
		  end
		  
		  ts=TextInputStream.Open(file)
		  if ts=nil Then
		    gdosxyz.egs_msg.append "Error reading 3ddose file : "+file.Name
		    Return False
		  end
		  
		  
		  
		  Try
		    mb = new memoryblock( file.length)
		  Catch err as OutOfMemoryException
		    Errors.Append "Insufficient memory to open "+file.name
		    Return False
		  end try
		  
		  
		  if mb=nil Then
		    gdosxyz.egs_msg.append "Error reading 3ddose file : "+file.Name+ ", could not create memory block"
		    Return False
		  end
		  
		  
		  chunkSize = 2097152
		  position=0
		  While ts.EOF=False
		    if (position+chunkSize)>file.length Then
		      chunkSize=file.Length-position
		    end
		    mb.stringValue(position, chunkSize ) = ts.read( chunksize )
		    position = position + chunksize
		  wend
		  ts.Close
		  
		  
		  
		  
		  
		  
		  Return True
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		boundaryX(0) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		boundaryY(0) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		boundaryZ(0) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Coord_X As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Coord_Y As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Coord_Z As single
	#tag EndProperty

	#tag Property, Flags = &h0
		dose(0,0,0) As double
	#tag EndProperty

	#tag Property, Flags = &h0
		dx As single
	#tag EndProperty

	#tag Property, Flags = &h0
		dy As single
	#tag EndProperty

	#tag Property, Flags = &h0
		dz As single
	#tag EndProperty

	#tag Property, Flags = &h0
		error(0,0,0) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		filename As string
	#tag EndProperty

	#tag Property, Flags = &h0
		imax As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		jmax As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		kmax As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		maxdose As double
	#tag EndProperty

	#tag Property, Flags = &h0
		mb As MemoryBlock
	#tag EndProperty

	#tag Property, Flags = &h0
		minDose As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Nx As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Ny As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Nz As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Offset As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Coord_X"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Coord_Y"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Coord_Z"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dx"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dy"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dz"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="filename"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="imax"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="jmax"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="kmax"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="maxdose"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="minDose"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Nx"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Ny"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Nz"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Offset"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
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
