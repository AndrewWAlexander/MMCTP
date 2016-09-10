#tag Class
Protected Class Class_DOSXYZ_EGSPhantSettings
	#tag Method, Flags = &h0
		Sub Make_ImageMap()
		  //------------------------------------------------
		  // Make Image Map of EGSPhant file
		  //
		  //------------------------------------------------
		  Dim i,k,j,order,RTOG_Contour_Index,z_index,p,px,py as Integer
		  Dim file as RTOG_Structure_One_Structure
		  Dim z,x,y as Single
		  Dim ss as RGBSurface
		  Dim poly as class_Polygon
		  
		  //------------------------------------------------
		  
		  
		  redim imagemask(ny-1)
		  gdosxyz.egs_msg.append "Creating Image Map" //Commented out by William Davis to avoid crash due to exception
		  
		  
		  
		  for k=0 to ny-1
		    gdosxyz.egs_msg.append "Creating Image Map "+Format(k/ny,"#") //Commented out by William Davis to avoid crash due to exception
		    
		    
		    z=z_min+Del_Z/2+Del_z*k
		    imagemask(k)=New Picture(nx,nz,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		    imagemask(k).Graphics.Useoldrenderer=true
		    if Cleancontours then //fill with air or not
		      imagemask(k).graphics.forecolor=rgb(200,200,200) 'Fill with 200 means air!
		    else
		      imagemask(k).graphics.forecolor=rgb(255,255,255) '255 Means we'll get the CT2density value for that pixel
		    end
		    imagemask(k).graphics.fillrect 0,0,imagemask(k).graphics.width, imagemask(k).graphics.height 'sets image to 200 or 255
		    for order = 1 to UBound(Contous) +1
		      ' The order is set by the user, largest structures should go 1st to avoid overlaping
		      if Contous(order-1).Use_Material  or _
		        (Cleancontours and Cleancontour_Index =Contous(order-1).RTOG_Contour_Index) then
		        ' if user checked ok for this density and the order is correct
		        'or
		        'if we're useing cleancountours and this is the 1st ordered contour which should be the external contour
		        'Make sure we are using the right Z value for the structures
		        RTOG_Contour_Index=Contous(order-1).RTOG_Contour_Index
		        // Look for closest structure plane to Z value
		        z_index=-1
		        for p=0 to UBound(gRTOG.structures(RTOG_Contour_Index).structure_Data)
		          if abs(z-gRTOG.structures(RTOG_Contour_Index).structure_Data(p).Z)<gRTOG.Scan(0).Slice_Thickness then
		            z_index=p
		            exit
		          end
		        next
		        if z_index=-1 then
		          Break
		        end
		        file = new RTOG_Structure_One_Structure
		        file = gRTOG.structures(RTOG_Contour_Index).structure_Data(z_index)
		        for i=0 to ubound(file.segments)
		          poly = new class_polygon
		          poly.PointWithin_OtherPoly=file.Structure_Poly(i).PointWithin_OtherPoly
		          for p =0 to ubound(file.segments(i).Points)
		            x=file.segments(i).Points(p).x-X_min
		            y=file.segments(i).Points(p).y-Y_min
		            px=Round(x/Del_X) // Commissioned March 2010 round works best!, although Floor seems more logical cause we want 0 for values between X_min and X_min+Del_X
		            py=Round(y/Del_y)
		            // Min point at 0, max point at ee.nx-1 and ee.ny-1
		            poly.AddPoint px,py
		          next
		          
		          if UBound(poly.points)>0 then //if that contours has some points
		            
		            if Contous(order-1).Use_Material and Poly.PointWithin_OtherPoly=False Then
		              imagemask(k).graphics.foreColor=rgb(order,0,0) //set to that color (basically index of the structure...then later look up its density
		            else
		              imagemask(k).graphics.forecolor=rgb(255,255,255) '255 Means we'll get the CT2density value for that pixel
		            end if
		            
		            imagemask(k).graphics.penHeight=0
		            imagemask(k).graphics.penwidth=0
		            imagemask(k).Graphics.UseOldRenderer=True
		            imagemask(k).graphics.fillPolygon poly.points
		          end if
		        next 'for all segments points within slize
		        
		      end if
		    next
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_EGSPhantfile_Header()
		  //-------------------------------------------------------------------
		  // Readin any EGSPhant file
		  //
		  //-------------------------------------------------------------------
		  dim ts as textinputStream
		  dim tmpline as string
		  dim i,j,k,n,count,vv as integer
		  dim gotvalues as boolean
		  dim tmpdouble as double
		  dim value,pos,imax,jmax,kmax as integer
		  dim rand as random
		  dim done as boolean
		  dim thisnumber,line(-1) as string
		  dim thisstart, thisend as double
		  dim file as FolderItem
		  //-------------------------------------------------------------------
		  thisstart=microseconds
		  
		  rand = new random
		  
		  rand.Seed=50  //always same seed for colors
		  
		  file=gRTOG.path.Child("McGill_RT")
		  file=file.Child(gRTOG.Patient_ID+"_"+gRTOG.StudyID+gRTOG.SeriesNumber+"_"+Name+".egsphant")
		  
		  if file.Exists=False Then
		    Return
		  end
		  
		  gdosxyz.egs_msg.append "Reading in EGSPhant file : "+file.Name //Commented out by William Davis to avoid crash due to exception
		  
		  
		  ts=file.openasTextFile
		  if ts=Nil Then
		    Return
		  end
		  
		  filename=file.name
		  tmpline=ts.readline
		  redim Materials(cdbl(tmpline))
		  redim mediacolor(cdbl(tmpline))
		  
		  Materials(0)="Vacuum"
		  mediacolor(0)=gVis.Make_Clour
		  
		  for i=1 to ubound(Materials)
		    Materials(i)=ts.readline
		    mediacolor(i)=gVis.Make_Clour
		  next
		  
		  //skip the same # of lines for estep...not used anymore
		  //have to read ubound(medianame)-1 values of estep...should be 0
		  done=false
		  //
		  i=0
		  while i<ubound(Materials)
		    tmpline=ts.readline
		    tmpline=trim(tmpline)
		    tmpline=replaceAll(tmpline,"   "," ")
		    tmpline=replaceall(tmpline,"  "," ")
		    tmpline=replaceall(tmpline," ",",")
		    j=1
		    while isnumeric(nthField(tmpline,",",j)) and i<ubound(Materials)
		      tmpdouble=cdbl(nthField(tmpline,",",j))
		      j=j+1
		      i=i+1
		    wend
		  wend
		  
		  
		  //now read nx ny and nz
		  
		  tmpline=ts.readline
		  tmpline=trim(tmpline)
		  tmpline=replaceAll(tmpline,"   "," ")
		  tmpline=replaceall(tmpline,"  "," ")
		  tmpline=replaceall(tmpline," ",",")
		  
		  Nx=CDbl(nthField(tmpline,",",1))
		  Ny=CDbl(nthField(tmpline,",",2))
		  Nz=CDbl(nthField(tmpline,",",3))
		  
		  
		  redim boundaryx(Nx)
		  redim boundaryy(Ny)
		  redim boundaryz(Nz)
		  
		  
		  
		  
		  
		  
		  // X boundaries
		  i=0
		  while i<=Nx
		    tmpline=ts.readline
		    tmpline=trim(tmpline)+" "
		    while len(tmpline)>0
		      pos=instr(1,tmpline," ")
		      //tmpdouble=cdbl(left(tmpline,pos))
		      boundaryx(i)=cdbl(left(tmpline,pos))//tmpdouble
		      i=i+1
		      tmpline=ltrim(mid(tmpline,pos))
		    wend
		  wend
		  
		  
		  
		  // Y boundaries
		  i=0
		  while i<=Ny
		    tmpline=ts.readline
		    tmpline=trim(tmpline)+" "
		    //======
		    while len(tmpline)>0
		      pos=instr(1,tmpline," ")
		      //tmpdouble=cdbl(left(tmpline,pos))
		      boundaryy(i)=cdbl(left(tmpline,pos))//tmpdouble
		      i=i+1
		      tmpline=ltrim(mid(tmpline,pos))
		    wend
		  wend
		  //======
		  
		  
		  
		  // Z boundaries
		  i=0
		  while i<=Nz
		    tmpline=ts.readline
		    tmpline=trim(tmpline)+ " "
		    while len(tmpline)>0
		      pos=instr(1,tmpline," ")
		      boundaryz(i)=cdbl(left(tmpline,pos))//tmpdouble
		      i=i+1
		      tmpline=ltrim(mid(tmpline,pos))
		    wend
		  wend
		  
		  
		  if gDOSXYZ.LoadEGSPhant Then
		    Read_EGSPhantfile_Voxels(ts)
		    gDOSXYZ.egs_msg.append "EGSPhant file : "+file.Name+" fully loaded" //Changed to Errors.append by William Davis to avoid crash due to exception
		  else
		    gDOSXYZ.egs_msg.append "EGSPhant file : "+file.Name +" loaded (voxels not loaded)" //Changed to Errors.append by William Davis to avoid crash due to exception
		  end
		  ts.close
		  
		  if UBound(boundaryx)>0 and UBound(boundaryy)>0 and UBound(boundaryz)>0 Then
		    Del_X=boundaryx(1)-boundaryx(0)
		    Del_y=boundaryy(1)-boundaryy(0)
		    Del_z=boundaryz(1)-boundaryz(0)
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_EGSPhantfile_Voxels(ts as TextInputStream)
		  //-------------------------------------------------------------------
		  // Readin any EGSPhant file voxels and media
		  //
		  //-------------------------------------------------------------------
		  dim tmpline as string
		  dim i,j,k,n,count,vv as integer
		  dim gotvalues as boolean
		  dim tmpdouble as double
		  dim value,pos,imax,jmax,kmax as integer
		  dim rand as random
		  dim done as boolean
		  dim thisnumber,line(-1) as string
		  dim thisstart, thisend as double
		  //-------------------------------------------------------------------
		  
		  
		  //---------------------------------------------
		  //reading the medium values
		  ReDim media(Nx-1,Ny-1,Nz-1)
		  i=0
		  j=0
		  k=0
		  count=0
		  while count<Nx*Ny*Nz  
		    gdosxyz.egs_msg.append "Reading in EGSPhant file : "+Name+" medium values "+Format(100*Count/(Nx*Ny*Nz),"#")+"%" //Commented out by William Davis to avoid crash due to exception
		    
		    tmpline=Trim(ts.ReadLine)
		    line=Split(tmpline,"")
		    n=0
		    while  n<=UBound(line)
		      if isnumeric(line(n)) Then
		        vv=val(line(n))
		        if j>(Ny-1) or k>(nz-1) or i>(nx-1) Then
		          Return
		        end
		        media(i,j,k)=vv
		        count=count+1
		        i=i+1
		        if i>Nx-1 then
		          i=0
		          j=j+1
		          if j>Ny-1 then
		            j=0
		            k=k+1
		          end if
		        end if
		      end if
		      n=n+1
		    wend
		  wend
		  
		  
		  //--------------------------------------------------------
		  //reading the density image
		  
		  redim density(Nx-1,Ny-1,Nz-1)
		  maxdensity=-10000
		  mindensity=10000
		  //here
		  imax=0
		  jmax=0
		  kmax=0
		  i=0
		  j=0
		  k=0
		  count=0
		  while count<Nx*Ny*Nz  
		    gdosxyz.egs_msg.append "Reading in EGSPhant file : "+Name+" density values "+Format(100*Count/(Nx*Ny*Nz),"#")+"%" //Commented out by William Davis to avoid crash due to exception
		    tmpline=ts.readline
		    tmpline=trim(tmpline)+" "
		    while len(tmpline)>1
		      pos=instr(1,tmpline," ")
		      density(i,j,k)=cdbl(left(tmpline,pos))//tmpdouble
		      count=count+1
		      tmpline=ltrim(mid(tmpline,pos))
		      if density(i,j,k)>maxdensity then
		        maxdensity=density(i,j,k)
		        imax=i
		        jmax=j
		        kmax=k
		      end if
		      if density(i,j,k)<mindensity then
		        mindensity=density(i,j,k)
		      end if
		      i=i+1
		      if i>Nx-1 then
		        i=0
		        j=j+1
		        if j>Ny-1 then
		          j=0
		          k=k+1
		          tmpline=ts.readline
		        end if
		      end if
		    wend
		  wend
		  
		  Loaded=True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function squeeze(s as string, charset as string = " ") As string
		  // Find any repeating characters, where the character is a member of
		  // charSet, and replace the run with a single character.  Example:
		  // Squeeze("wooow maaan", "aeiou") = "wow man".
		  
		  Dim sLenB As Integer = s.LenB
		  if sLenB < 2 then return s
		  
		  Dim m As MemoryBlock
		  m = new MemoryBlock( sLenB )  //Changed to "new MemoryBlock" by William Davis when newmemoryBlock was found to have been deprecated
		  
		  charSet = ConvertEncoding( charSet, s.Encoding )
		  
		  Dim sLen As Integer = s.Len
		  
		  Dim char, lastChar As String
		  Dim charLen, spos, mpos As Integer
		  Dim skip As Boolean
		  for spos = 1 to sLen
		    char = Mid( s, spos, 1 )
		    if char = lastChar then
		      skip = InStrB( charSet, char ) > 0
		    else
		      skip = false
		      lastChar = char
		    end if
		    if not skip then
		      charLen = char.LenB
		      m.StringValue( mpos, charLen ) = char
		      mpos = mpos + charLen
		    end if
		  next
		  
		  return DefineEncoding( m.StringValue(0, mpos), s.Encoding )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_MaterialsUD()
		  //-------------------------------
		  //
		  //
		  //-------------------------------
		  Dim i,k as Integer
		  Dim temp as String
		  Dim found as Boolean
		  //-------------------------------
		  
		  ReDim Materials(-1)
		  
		  Materials.append "Vacuum"
		  
		  if Create_wth_CTcontours Then
		    if Cleancontours Then
		      found=False
		      for k=0 to UBound(Materials)
		        if Clean_material=Materials(k) then
		          found=True
		        end
		      next
		      if found=False then
		        Materials.append Clean_material
		      end
		    end
		    
		    for i=0 to UBound(Contous)
		      if Contous(i).Use_Material Then
		        temp=Trim(Contous(i).materials)
		        found=False
		        for k=0 to UBound(Materials)
		          if Materials(k)=temp then
		            found=True
		          end
		        next
		        if found=False then
		          Materials.append temp
		        end
		      end
		    next
		    
		    if  CT_model>-1 and CT_model<=UBound(gCT.All_CT) Then
		      for i=0 to UBound(gCT.All_CT(CT_model).CalibrationM)
		        temp=gCT.All_CT(CT_model).CalibrationM(i).m_name
		        found=False
		        for k=0 to UBound(Materials)
		          if Materials(k)=temp then
		            found=True
		          end
		        next
		        if found=False then
		          Materials.append temp
		        end
		      next
		    end
		    
		  else // Create with manual settings
		    Materials.Append media_of_outside
		    for i=0 to UBound(Voxels)
		      Materials.Append Voxels(i).Material
		    next
		    
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_EGSPhant()
		  //-----------------------------------------------------------------------
		  // Write EGSPhant file based on memory settings
		  //
		  //-----------------------------------------------------------------------
		  Dim f ,dosfile as FolderItem
		  Dim dhead,dmater,ddens,s,bx,by,bz,m_name,material_value,one_row_m,one_row_d,_
		  density_value,one_slice_d,one_slice_m,dumb_v,endline,temp,check,dosxyz_mat,ct_cal as String
		  Dim ts as textOutputStream
		  Dim i,j,k as Integer
		  //-----------------------------------------------------------------------
		  
		  endline=chr(10)
		  
		  dhead=Format(UBound(Materials),"#")+endline
		  
		  
		  for i=1 to UBound(Materials)
		    s=Materials(i)
		    dhead=dhead+s+endline
		  next
		  dumb_v=""
		  for i=1 to UBound(Materials)
		    dumb_v=dumb_v+ "0 "
		  next
		  dhead=dhead+dumb_v+endline
		  
		  
		  dhead=dhead + "  "+Format(nx,"#")+"  "+Format(ny,"#")+"  "+Format(nz,"#")+endline
		  
		  // X voxels
		  bx=""
		  for i=0 to nx
		    bx=bx+Format(boundaryx(i),"-#.####")+" "
		  next
		  
		  // Y voxels
		  by=""
		  for i=0 to  ny 
		    by=by+Format(boundaryy(i),"-#.####")+" "
		  next
		  
		  //Z voxels
		  bz=""
		  for i=0 to nz 
		    bz=bz+Format(boundaryz(i),"-#.####")+" "
		  next
		  dhead=dhead+bx+endline+by+endline+bz+endline
		  // finished egsphant header
		  
		  
		  gdosxyz.egs_msg.append "Writing EGSPhant file "+Name //Commented out by William Davis to avoid crash due to exception
		  
		  
		  
		  for k= 0 to Nz-1
		    one_slice_m=""
		    one_slice_d=""
		    for j= 0 to ny-1 
		      one_row_d=""
		      one_row_m=""
		      for i=0 to nx-1
		        material_value=Format(media(i,j,k),"-#")
		        density_value=Format(density(i,j,k),"-0.00###")
		        one_row_m=one_row_m+material_value
		        one_row_d=one_row_d+density_value+" "
		      next
		      one_slice_m=one_slice_m+one_row_m+endline
		      one_slice_d=one_slice_d+one_row_d+endline
		    next
		    dmater=dmater+one_slice_m+endline
		    ddens=ddens+one_slice_d+endline
		  next
		  
		  
		  f=new FolderItem
		  f=gRTOG.Path.Child("McGill_RT")
		  dosfile=f.child((gRTOG.Patient_ID)+"_"+gRTOG.StudyID+grtog.seriesnumber+"_"+Name+".egsphant")
		  if dosfile <> nil then
		    ts=dosfile.CreateTextFile
		    ts.Write(dhead+dmater+ddens)
		    ts.Close
		  end
		  
		  Errors.append "EGSPhant file Finished" //Changed to Errors.append by William Davis as a test
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Auto_Make As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		boundaryx(0) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		boundaryy(0) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		boundaryZ(0) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Cleancontours As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		Cleancontour_Index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Cleancontour_Name As String = "BODY"
	#tag EndProperty

	#tag Property, Flags = &h0
		Clean_density As string = "0.0012"
	#tag EndProperty

	#tag Property, Flags = &h0
		Clean_material As string = "AIR700ICRU"
	#tag EndProperty

	#tag Property, Flags = &h0
		Contous(-1) As Class_DOSXYZ_EGSPhant_Contour
	#tag EndProperty

	#tag Property, Flags = &h0
		Create_wth_CTcontours As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		CT_model As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		CT_modelName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Del_X As single = 0.3
	#tag EndProperty

	#tag Property, Flags = &h0
		Del_Y As single = 0.3
	#tag EndProperty

	#tag Property, Flags = &h0
		Del_Z As single = 0.3
	#tag EndProperty

	#tag Property, Flags = &h0
		density(0,0,0) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		filename As String
	#tag EndProperty

	#tag Property, Flags = &h0
		imagemask(0) As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		Loaded As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Make_EGSPhant As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Materials(-1) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		maxdensity As double = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		media(0,0,0) As UInt16
	#tag EndProperty

	#tag Property, Flags = &h0
		mediacolor(0) As color
	#tag EndProperty

	#tag Property, Flags = &h0
		media_of_outside As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mindensity As double = 1000
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As string = "3mmHC"
	#tag EndProperty

	#tag Property, Flags = &h0
		Non_CT_Phantom As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Nx As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Ny As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Nz As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Pegsfile As string = "700icru"
	#tag EndProperty

	#tag Property, Flags = &h0
		Shells(-1) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Voxels(-1) As Class_DOSXYZ_EGSPhant_Voxels
	#tag EndProperty

	#tag Property, Flags = &h0
		X_Max As single
	#tag EndProperty

	#tag Property, Flags = &h0
		X_min As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Y_max As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Y_min As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Z_max As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Z_min As single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Auto_Make"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Cleancontours"
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Cleancontour_Index"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Cleancontour_Name"
			Group="Behavior"
			InitialValue="BODY"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Clean_density"
			Group="Behavior"
			InitialValue="0.0012"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Clean_material"
			Group="Behavior"
			InitialValue="AIR521ICRU"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Create_wth_CTcontours"
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CT_model"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CT_modelName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Del_X"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Del_Y"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Del_Z"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="filename"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
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
			Name="Loaded"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Make_EGSPhant"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="maxdensity"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="media_of_outside"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mindensity"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Non_CT_Phantom"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Nx"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Ny"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Nz"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pegsfile"
			Group="Behavior"
			InitialValue="CTStudy"
			Type="string"
			EditorType="MultiLineEditor"
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
		#tag ViewProperty
			Name="X_Max"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="X_min"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y_max"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y_min"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Z_max"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Z_min"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
