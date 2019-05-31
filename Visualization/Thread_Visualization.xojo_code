#tag Class
Protected Class Thread_Visualization
Inherits Thread
	#tag Event
		Sub Run()
		  //------------------------------
		  // Update image window and level
		  //
		  // Alexander 
		  // June 2011
		  // Update if condition on voxel number
		  //------------------------------
		  dim j, cvalue,i,k  as integer
		  dim p as Picture
		  Dim a,tran,pixx,pixy,d1,d2 as integer
		  Dim file as RTOG_Structure_Slice
		  Dim poly as class_polygon
		  Dim one_slice as Picture
		  Dim gg,bb as Graphics
		  Dim y,x as Single
		  //------------------------------
		  
		  
		  
		  While WL_Image
		    WL_Image=False
		    For k=0 to ubound(gRTOG.Scan)
		      p=gvis.Scans(k)
		      scansok(k)=False
		      if  p<>Nil Then
		        for j=0 to gvis.ny-1
		          for i=0 to gvis.nx-1
		            if (i+j*gvis.nx)<=UBound(grtOG.Scan(k).voxel) and (i+j*gvis.nx)>-1 Then
		              cvalue=grtOG.Scan(k).voxel(i+j*gvis.nx)
		              if ( (cvalue>=min_pic) and (cvalue<=max_pic) ) then
		                cvalue= Round((cvalue-min_pic)*m)
		                p.RGBSurface.pixel(i,j)=rgb(cvalue,cvalue,cvalue)
		              else
		                if cvalue<min_pic then
		                  cvalue=0
		                  p.RGBSurface.pixel(i,j)=rgb(cvalue,cvalue,cvalue)
		                elseif cvalue>max_pic then
		                  cvalue=255
		                  p.RGBSurface.pixel(i,j)=rgb(cvalue,cvalue,cvalue)
		                end if
		              end
		            end
		          next
		        next
		      end
		      scansok(k)=True
		    next
		    
		    if app.which_window_TreatmentPlanning  then 'if beam window is open
		      Window_Treatment.Canvas_refresh_Image_WL=true
		    end
		  Wend
		  
		  
		  
		  
		  Exception err as TypeMismatchException
		    Errors.Append "Tried to retype an object!"
		  Exception err as NilObjectException
		    Errors.Append "Tried to access a Nil object!"
		  Exception err as RuntimeException  // NOT RECOMMENDED
		    Errors.Append "Another exception"
		  Catch err as OutOfMemoryException
		    Errors.Append  "Insufficient memory to draw the picture within gVis!"
		    
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Colour_hot()
		  Dim n,tmpint as Single
		  dim thisblue, i,thisred,thisgreen as integer
		  
		  
		  n=(3/8)*256  //gives 96
		  for i =1 to 256
		    tmpint=i
		    if tmpint <n  then
		      thisred=tmpint/n*256
		      thisblue=0
		      thisgreen=0
		    elseif tmpint<2*n then
		      thisred=256
		      thisgreen=256*(tmpint-n)/n
		      thisblue=0
		    else
		      thisred=256
		      thisgreen=256
		      thisblue=256*(tmpint-2*n)/n
		    end
		    colour_map_hot(i)=rgb(thisred,thisgreen,thisblue)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Colour_Jet()
		  Dim i, n,m ,g(-1),r(-1),b(-1),x as integer
		  Dim u(-1),J(256,2) as Single
		  
		  m=256
		  
		  n = ceil(m/4)
		  
		  redim u(n*3-1)
		  for i=1 to UBound(u)
		    if i<n then
		      u(i)=i/n
		    ElseIf i <=n*2 and i>=n then
		      u(i)=1
		    Else
		      u(i)=(3*n-i)/n
		    end
		  next
		  
		  redim  g(n*3-1)
		  for i=1 to UBound(g)
		    g(i)=32+i
		  next
		  
		  
		  redim  r(256-32-n)
		  for i=1 to UBound(r)
		    r(i)=g(i)+n
		  next
		  
		  
		  
		  redim  b(3*n-33)
		  for i=1 to UBound(b)
		    b(i)=i
		  next
		  
		  for i=1 to m
		    J(i,0)=0
		    J(i,1)=0
		    J(i,2)=0
		  next
		  
		  for i=1 to UBound(r)
		    J(r(i),0)=u(i)
		  next
		  'J(r,1) = u(1:length(r));
		  
		  for i=1 to UBound(g)
		    J(g(i),1)=u(i)
		  next
		  'J(g,2) = u(1:length(g));
		  
		  
		  for i=UBound(u)-UBound(b)+1 to UBound(u)
		    x=i-(UBound(u)-UBound(b))
		    J(b(x),2)=u(i)
		  next
		  'J(b,3) = u(end-length(b)+1:end);
		  
		  for i=1 to m
		    colour_map_jet(i)=rgb(J(i,0)*255,j(i,1)*255,j(i,2)*255)
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor()
		  '//-------------------------------------
		  '// Open the Vis variables
		  '//
		  '// Condensed list of variables use to display images, dose, Structures
		  '//
		  '// Update 2013 Alexander - window level class
		  '// 
		  '//-------------------------------------
		  'Dim i,k as Integer
		  'Dim aa as Class_Window_Level
		  '//-------------------------------------
		  'PW_Title="Loading McGill RT Images"
		  'PW_Progress_Max=UBound(gRTOG.Scan)+1
		  'PW_Show=true
		  '
		  'Contours = new Thread_Contours
		  '
		  'if UBound(gRTOG.Scan)<=-1 Then
		  'Return
		  'end
		  '
		  'nx=grtOG.Scan(0).size_of_dimension1// num of columns
		  'ny=grtOG.Scan(0).size_of_dimension2//num of rows
		  'nz=UBound(gRTOG.Scan)+1
		  'scale_width=grtOG.Scan(0).grid_Units_Width
		  'scale_height=grtOG.Scan(0).grid_Units_Height
		  'scale_thickness=gRTOG.Scan(0).Slice_Thickness
		  'xoff_set=grtOG.Scan(0).X_offset
		  'yoff_set=grtOG.Scan(0).y_offset
		  'zoff_set=gRTOG.Scan(UBound(gRTOG.Scan)).Z_Value
		  'Lowest_Z=gRTOG.Scan(0).Z_Value
		  'Structure_colour
		  '
		  'pixel_resolution=scale_width
		  'if pixel_resolution>scale_height Then
		  'pixel_resolution=scale_height
		  'end
		  '
		  'redim scansok(ubound(gRTOG.Scan))
		  'redim scans(ubound(gRTOG.Scan))
		  'redim contours.Axial_Pic(ubound(gRTOG.Scan))
		  '
		  'WL=gRTOG.Scan(0).WinLevel
		  'WW=gRTOG.Scan(0).WinWidth
		  '
		  'if nx>0 and ny>0 Then
		  'for i=0 to UBound(gRTOG.Scan)
		  'contours.Axial_Pic(i)=NewPicture(gvis.nx,gvis.ny,32)
		  'scans(i)=NewPicture(gvis.nx,gvis.ny,32)
		  'scans(i).Graphics.forecolor=rgb(0,0,0)
		  'scans(i).Graphics.FillRect 0,0,gvis.nx,gvis.ny
		  'PW_Progress=i+1
		  '
		  'next
		  'end
		  '
		  'ReDim contour_fill(UBound(grtog.Structures.Structures))
		  'ReDim contour_show(UBound(grtog.Structures.Structures))
		  '
		  'for i =0 to UBound(contour_show)
		  'contour_fill(i)=False
		  'contour_show(i)=true
		  'next
		  'Read_Settings
		  '
		  'Structure_Transparency=160
		  '
		  'WL_Recalculate
		  'Contours.Recalculate_Poly
		  'Contours.Recalculate_Images
		  'Contours.Recalculate_Points
		  '
		  'gVis.Iso=new Class_Iso_Dose
		  '
		  'colour_hot
		  'colour_Jet
		  '
		  '//Setup window level default values
		  '
		  '
		  'PW_Show=false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Make_Clour() As color
		  Dim rand as Random
		  
		  rand=new Random
		  
		  
		  Return RGB(rand.InRange(0,255),rand.InRange(0,255),rand.InRange(0,255))
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Open()
		  //-------------------------------------
		  // Open the Vis variables
		  //
		  // Condensed list of variables use to display images, dose, Structures
		  //
		  // Update 2013 Alexander - window level class
		  // 
		  //-------------------------------------
		  Dim i,k as Integer
		  Dim aa as Class_Window_Level
		  //-------------------------------------
		  PW_Title="Loading McGill RT Images"
		  PW_Progress_Max=UBound(gRTOG.Scan)+1
		  
		  
		  Contours = new Thread_Contours
		  
		  if UBound(gRTOG.Scan)<=-1 Then
		    Return
		  end
		  
		  nx=grtOG.Scan(0).size_of_dimension1// num of columns
		  ny=grtOG.Scan(0).size_of_dimension2//num of rows
		  nz=UBound(gRTOG.Scan)+1
		  scale_width=grtOG.Scan(0).grid_Units_Width
		  scale_height=grtOG.Scan(0).grid_Units_Height
		  scale_thickness=gRTOG.Scan(0).Slice_Thickness
		  xoff_set=grtOG.Scan(0).X_offset
		  yoff_set=grtOG.Scan(0).y_offset
		  zoff_set=gRTOG.Scan(UBound(gRTOG.Scan)).Z_Value
		  Lowest_Z=gRTOG.Scan(0).Z_Value
		  Structure_colour
		  
		  pixel_resolution=scale_width
		  if pixel_resolution>scale_height Then
		    pixel_resolution=scale_height
		  end
		  
		  redim scansok(ubound(gRTOG.Scan))
		  redim scans(ubound(gRTOG.Scan))
		  redim contours.Axial_Pic(ubound(gRTOG.Scan))
		  
		  WL=gRTOG.Scan(0).WinLevel
		  WW=gRTOG.Scan(0).WinWidth
		  
		  
		  if nx>0 and ny>0 Then
		    for i=0 to UBound(gRTOG.Scan)
		      Try
		        contours.Axial_Pic(i)=New Picture(gvis.nx,gvis.ny,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		      Catch err as OutOfMemoryException
		        Errors.Append "Error within gVis.open, Insufficient memory to draw the picture!"
		      end
		      Try
		        scans(i)=New Picture(gvis.nx,gvis.ny,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		      Catch err as OutOfMemoryException
		        Errors.Append "Error within gVis.open, Insufficient memory to draw the picture!"
		      end
		      scans(i).Graphics.forecolor=rgb(0,0,0)
		      scans(i).Graphics.FillRect 0,0,gvis.nx,gvis.ny
		      PW_Progress=i+1
		    next
		  end
		  
		  ReDim contour_fill(UBound(grtog.Structures.Structures))
		  ReDim contour_show(UBound(grtog.Structures.Structures))
		  
		  for i =0 to UBound(contour_show)
		    contour_fill(i)=False
		    contour_show(i)=true
		  next
		  
		  Read_Settings
		  
		  Structure_Transparency=160
		  
		  WL_Recalculate
		  Contours.Recalculate_Poly
		  Contours.Recalculate_Images
		  Contours.Recalculate_Points
		  
		  gVis.Iso=new Class_Iso_Dose
		  
		  colour_hot
		  colour_Jet
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_Settings()
		  //-----------------------------------
		  // Read the structre setting preferences file
		  //
		  //-----------------------------------
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  Dim i as Integer
		  Dim line,a,b as String
		  //-----------------------------------
		  
		  
		  f=gRTOG.path
		  f=f.Child("McGill_RT")
		  
		  if f.Exists Then
		    f= f.child("Structures.txt")
		    if f.Exists Then
		      ts=f.OpenAsTextFile
		      if ts<> nil Then
		        for i=0 to UBound(contour_show)
		          line=ts.ReadLine
		          a=Trim(NthField(line,",",1))
		          b=trim(NthField(line,",",2))
		          if a="1" Then
		            contour_show(i)=True
		          else
		            contour_show(i)=False
		          end
		          if b="1" Then
		            contour_fill(i)=True
		          else
		            contour_fill(i)=False
		          end
		        next
		        ts.Close
		      end
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Structure_colour()
		  Dim i as integer
		  
		  
		  
		  Redim colour(ubound(grtog.Structures.Structures))
		  for i =0 to ubound(grtog.Structures.Structures)
		    if grtog.Structures.Structures(i).colour = "RED" Then
		      colour(i) = &cFF0000
		    ElseIf grtog.Structures.Structures(i).colour = "Green" Then
		      colour(i) = &c00FF00
		    ElseIf grtog.Structures.Structures(i).colour = "Blue" Then
		      colour(i) = &c0000FF
		    ElseIf grtog.Structures.Structures(i).colour = "Yellow" Then
		      colour(i) =cmy(0,0,1)
		    ElseIf grtog.Structures.Structures(i).colour = "Magenta" Then
		      colour(i) =cmy(0,1,0)
		    ElseIf grtog.Structures.Structures(i).colour = "Cyan" Then
		      colour(i) =cmy(1,0,0)
		    ElseIf grtog.Structures.Structures(i).colour = "White" Then
		      colour(i) =&c000000
		    elseif grtog.Structures.Structures(i).scolor<>RGB(0,0,0) then
		      colour(i) =grtog.Structures.Structures(i).scolor
		    elseif grtog.Structures.Structures(i).colour = "" and  grtog.Structures.Structures(i).scolor=RGB(0,0,0) then
		      if ubound(grtog.Structures.Structures)-i >-1 then
		        colour(i)=&c332211
		      end
		      if ubound(grtog.Structures.Structures)-i >0 then
		        colour(i)=&c00FF00
		      end
		      if ubound(grtog.Structures.Structures)-i >1 then
		        colour(i)=&c0000FF
		      end
		      if ubound(grtog.Structures.Structures)-i >2 then
		        colour(i)=&cFFFF00
		      end
		      if ubound(grtog.Structures.Structures)-i >3 then
		        colour(i)=&c00FFFF
		      end
		      if ubound(grtog.Structures.Structures)-i >4 then
		        colour(i)=&cFF00FF
		      end
		      if ubound(grtog.Structures.Structures)-i >5 then
		        colour(i)=&c2266FF
		      end
		      if ubound(grtog.Structures.Structures)-i >6 then
		        colour(i)=&c442200
		      end
		      if ubound(grtog.Structures.Structures)-i >7 then
		        colour(i)=&c3333FF
		      end
		      if ubound(grtog.Structures.Structures)-i >8 then
		        colour(i)=&c331111
		      end
		    end
		  next
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function WL_Preset(base as MenuItem) As MenuItem
		  //-----------------------------------
		  //
		  //
		  //-----------------------------------
		  dim MI as MenuItem
		  
		  MI = New MenuItem
		  MI.Text = "CT Abdomen: W400, L50"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "CT Bone: W1200, L350"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "CT Head: W300, L120"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "CT Lung: W1500, L-550"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "Soft Tissue: W600, L40"
		  base.Append MI
		  
		  Return base
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WL_Preset_Select(Text as String)
		  //-----------------------------------
		  //
		  //
		  //-----------------------------------
		  
		  Dim num as String
		  Dim sl,sw as Integer
		  
		  num=NthField(Text,":",2)
		  
		  sl=val(NthField(num,"L",2))
		  sw=val(NthField(num,"W",2))
		  
		  
		  
		  if sl<>gvis.wl or sw<>gvis.WW then
		    gvis.WL=sl
		    gVis.WW=sw
		    gvis.WL_Recalculate
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WL_Recalculate()
		  //-----------------------------------
		  //
		  //
		  //-----------------------------------
		  Dim f as FolderItem
		  Dim ts as TextOutputStream
		  Dim k as Integer
		  //-----------------------------------
		  
		  max_pic=Round(gvis.WL+gvis.WW/2)
		  min_pic=Round(gvis.WL-gvis.ww/2)
		  m=255/(max_pic-min_pic)
		  
		  //255 set to white now...
		  
		  if App.which_window_TreatmentPlanning Then
		    if Window_Treatment.Canvas_Top.ViewFlag=1 Then
		      WL_UpDate_One_Scan(Window_Treatment.Canvas_Top.canvas_slice)
		      Window_Treatment.Canvas_Top.Make_Image_Axial
		      Window_Treatment.Canvas_Top.RePaint
		    end
		    if Window_Treatment.Canvas_Right.ViewFlag=1 Then
		      WL_UpDate_One_Scan(Window_Treatment.Canvas_Right.canvas_slice)
		      Window_Treatment.Canvas_Right.Make_Image_Axial
		      
		      Window_Treatment.Canvas_Right.RePaint
		    end
		    if Window_Treatment.Canvas_Left.ViewFlag=1 Then
		      WL_UpDate_One_Scan(Window_Treatment.Canvas_Left.canvas_slice)
		      Window_Treatment.Canvas_Left.Make_Image_Axial
		      
		      Window_Treatment.Canvas_Left.RePaint
		    end
		    
		    
		    //Window_Treatment.StaticText_Level.Text="Level : "+Format(wl,"-#") //Commented out by William Davis to avoid crash due to exception
		    //Window_Treatment.StaticText_Window.Text="Window : "+Format(ww,"-#") //Commented out by William Davis to avoid crash due to exception
		    
		    //Window_Treatment.Slider_Window_Level.Value=wl //Commented out by William Davis to avoid crash due to exception
		    //Window_Treatment.Slider_Window_Width.Value=ww //Commented out by William Davis to avoid crash due to exception
		    
		    
		  elseif app.which_window_Contouring Then
		  end
		  
		  
		  // Write new WL settings
		  gRTOG.Scan(0).WinLevel=gvis.wl
		  gRTOG.Scan(0).WinWidth=gvis.ww
		  f=gRTOG.path
		  f=f.Child("McGill_RT").Child("RT.dir")
		  if f.Exists Then
		    f.Delete
		  end
		  
		  if f<> nil Then
		    ts=f.createTextFile
		    if ts<> nil Then
		      gRTOG.write_McGill_RT(ts)
		      ts.Close
		    end
		  end
		  
		  
		  // Update All Images
		  WL_Image=True
		  
		  if State= 4 then
		    Run
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WL_UpDate_One_Scan(num as integer)
		  //------------------------------
		  //
		  //------------------------------
		  dim j, cvalue,i  as integer
		  dim p as Picture
		  //------------------------------
		  
		  
		  gvis.scansok(num)=False
		  p=gvis.Scans(num)
		  if  p<>Nil Then
		    for j=0 to gvis.ny-1
		      for i=0 to gvis.nx-1
		        cvalue=grtOG.Scan(num).voxel(i+j*gvis.nx)
		        if ( (cvalue>=min_pic) and (cvalue<=max_pic) ) then
		          cvalue= (cvalue-min_pic)*m
		          p.rgBSurface.pixel(i,j)=rgb(cvalue,cvalue,cvalue)
		        else
		          if cvalue<min_pic then // Set to black
		            cvalue=0
		            p.rgBSurface.pixel(i,j)=rgb(cvalue,cvalue,cvalue)
		          elseif cvalue>max_pic then // Set to White
		            cvalue=255
		            p.rgBSurface.pixel(i,j)=rgb(cvalue,cvalue,cvalue)
		          end if
		        end
		      next
		    next
		  end
		  gvis.scansok(num)=True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_Settings()
		  //-----------------------------------
		  // Load the structre setting preferences file
		  //
		  //-----------------------------------
		  Dim f as FolderItem
		  Dim ts as TextOutputStream
		  Dim i as Integer
		  Dim line as String
		  //-----------------------------------
		  
		  
		  f=gRTOG.path
		  f=f.Child("McGill_RT")
		  if f.Exists Then
		    f= f.child("Structures.txt")
		    if f.Exists Then
		      f.Delete 
		    end
		    ts=f.CreateTextFile
		    if ts<> nil Then
		      for i=0 to  UBound(contour_show)
		        if contour_show(i) Then
		          line="1, "
		        else
		          line="0, "
		        end
		        if contour_fill(i) Then
		          line=line+"1"
		        else
		          line=line+"0"
		        end
		        ts.WriteLine line
		      next
		      ts.Close
		    end
		  end
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		colour(-1) As color
	#tag EndProperty

	#tag Property, Flags = &h0
		ColourWashMax As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ColourWashMin As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Colourwash_options As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		colour_map_hot(256) As color
	#tag EndProperty

	#tag Property, Flags = &h0
		colour_map_jet(256) As color
	#tag EndProperty

	#tag Property, Flags = &h0
		Contours As Thread_Contours
	#tag EndProperty

	#tag Property, Flags = &h0
		contour_fill(-1) As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		contour_show(-1) As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Iso As Class_Iso_Dose
	#tag EndProperty

	#tag Property, Flags = &h0
		Lowest_Z As single
	#tag EndProperty

	#tag Property, Flags = &h0
		m As single
	#tag EndProperty

	#tag Property, Flags = &h0
		max_pic As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		max_pix As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		min_pic As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		min_pix As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		nx As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ny As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		nz As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		pixel_resolution As single
	#tag EndProperty

	#tag Property, Flags = &h0
		scale_height As single
	#tag EndProperty

	#tag Property, Flags = &h0
		scale_thickness As single
	#tag EndProperty

	#tag Property, Flags = &h0
		scale_width As single
	#tag EndProperty

	#tag Property, Flags = &h0
		scans(-1) As picture
	#tag EndProperty

	#tag Property, Flags = &h0
		scansok(-1) As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Structure_Transparency As Integer = 160
	#tag EndProperty

	#tag Property, Flags = &h0
		WL As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		WLSettings(-1) As Class_Window_Level
	#tag EndProperty

	#tag Property, Flags = &h0
		WL_Image As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		WW As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		xoff_set As single
	#tag EndProperty

	#tag Property, Flags = &h0
		yoff_set As single
	#tag EndProperty

	#tag Property, Flags = &h0
		zoff_set As single
	#tag EndProperty


	#tag Constant, Name = Untitled, Type = , Dynamic = False, Default = \"", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="ColourWashMax"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColourWashMin"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Colourwash_options"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Lowest_Z"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="m"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="max_pic"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="max_pix"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="min_pic"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="min_pix"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="nx"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ny"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="nz"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pixel_resolution"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Priority"
			Visible=true
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="scale_height"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="scale_thickness"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="scale_width"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StackSize"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Structure_Transparency"
			Group="Behavior"
			InitialValue="160"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WL"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WL_Image"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WW"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="xoff_set"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="yoff_set"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="zoff_set"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
