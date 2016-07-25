#tag Class
Protected Class Class_Polygon
	#tag Method, Flags = &h0
		Sub AddPoint(px as integer, py as integer)
		  'adds that point to the Points array
		  Points.append px
		  Points.append py
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddPoint_D(px as double, py as double)
		  'adds that point to the Points array
		  Points_D.append px
		  Points_D.append py
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AngleFromCenter(p as integer) As Double
		  'returns the angle of point p from center, in degrees
		  dim ang,dist as double
		  dim cx,cy,cang as double
		  
		  const DegByPI=57.29577951308232286464772187173366550
		  
		  cx=me.XCenter
		  cy=me.YCenter
		  
		  dist=sqrt(pow((Points(p*2-1)-cx),2)+pow((Points(p*2)-cy),2))
		  
		  cang=(Points(p*2-1)-cx)/dist
		  ang=acos(cang)
		  if Points(p*2)<cy then
		    ang=-ang
		  end if
		  
		  return (ang*DegByPI)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Area() As double
		  'returns the area of this polygon:
		  'The area of a polygon whose vertices are P1, P2, .., Pn is given by the expression
		  'K = [(x1y2 + x2y3 + x3y4 + ... + xny1) - (x2y1 + x3y2 + x4y3 + ... + x1yn)]/2.
		  
		  dim result as double, i,n,p1,p2 as integer
		  
		  result=0.0
		  
		  n=me.NumberOfPoints
		  
		  if n<3 then
		    return result
		  end if
		  
		  p1=1
		  p2=2
		  
		  for i=1 to n
		    result=result + (me.Points(p1*2-1)*me.Points(p2*2)) - (me.Points(p2*2-1)*me.Points(p1*2))
		    p1=p2
		    p2=me.NextPointAfter(p2)
		  next
		  
		  return result/2
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Area_D() As double
		  'returns the area of this polygon:
		  'The area of a polygon whose vertices are P1, P2, .., Pn is given by the expression
		  'K = [(x1y2 + x2y3 + x3y4 + ... + xny1) - (x2y1 + x3y2 + x4y3 + ... + x1yn)]/2.
		  
		  dim result as double, i,n,p1,p2 as integer
		  
		  result=0.0
		  
		  n=me.NumberOfPoints_D
		  
		  if n<3 then
		    return result
		  end if
		  
		  p1=1
		  p2=2
		  
		  for i=1 to n
		    result=result + (me.Points_D(p1*2-1)*me.Points_D(p2*2)) - (me.Points_D(p2*2-1)*me.Points_D(p1*2))
		    p1=p2
		    p2=me.NextPointAfter_D(p2)
		  next
		  
		  return result/2
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Ascent(p as integer) As Double
		  'returns the ascent or descent from point p to the next point,
		  'as seen from the point p's perspective, i.e. positive is going up/left,
		  'negative down/right
		  
		  dim p2 as integer
		  
		  p2=me.NextPointAfter(p)
		  
		  if me.Points(p2*2-1)=me.Points(p*2-1) then
		    return (Points(p2*2)-Points(p*2))*100000
		  end if
		  
		  return (me.Points(p2*2)-me.Points(p*2))/(me.Points(p2*2-1)-me.Points(p*2-1))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BottomEdge() As Integer
		  'returns the highest Y value in the polygon:
		  dim x,n,r as integer
		  n=me.NumberOfpoints
		  if n<1 then
		    return 0
		  end if
		  r=Points(2)
		  for x=2 to n
		    r=Max(r,Points(2*x))
		  next
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BottomEdge_D() As Double
		  'returns the highest Y value in the polygon:
		  dim x,n as integer
		  Dim r as Double
		  n=me.NumberOfPoints_D
		  if n<1 then
		    return 0
		  end if
		  r=Points_D(2)
		  for x=2 to n
		    r=Max(r,Points_D(2*x))
		  next
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Carve(d as integer)
		  'thickens or thins the outline of the polygon by d pixels.
		  'note that this changes the number of points in the polygon!
		  dim pts(0) as integer
		  dim n as integer
		  dim p1,p2,p3 as integer
		  
		  n=me.NumberOfPoints
		  
		  for p1=1 to n
		    p2=me.NextPointAfter(p1)
		    p3=me.NextPointAfter(p2)
		    
		    Line(1,1)=me.Points(p1*2-1)
		    Line(1,2)=me.Points(p1*2)
		    Line(1,3)=me.Points(p2*2-1)
		    Line(1,4)=me.Points(p2*2)
		    Line(2,1)=me.Points(p2*2-1)
		    Line(2,2)=me.Points(p2*2)
		    Line(2,3)=me.Points(p3*2-1)
		    Line(2,4)=me.Points(p3*2)
		    ShiftLine(1,d)
		    ShiftLine(2,d)
		    GetIntersection
		    if me.LinesIntersect then
		      pts.append round(Line(0,1))
		      pts.append round(Line(0,2))
		    else
		      pts.append round(Line(1,3))
		      pts.append round(Line(1,4))
		      pts.append round(Line(2,1))
		      pts.append round(Line(2,2))
		    end if
		  next
		  
		  pts.append round(Line(2,3))
		  pts.append round(Line(2,4))
		  
		  n=ubound(pts)
		  redim me.Points(n)
		  for p1=1 to n
		    me.Points(p1)=pts(p1)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearArtefacts()
		  'Removes double point entries, and lines sticking out into nowhere, i.e. points
		  'connected to points with identical coordinates.
		  'first we remove double points:
		  dim n1,k1,c1,c2 as integer
		  
		  n1=me.NumberOfPoints
		  k1=1 'our counter
		  c1=1
		  c2=me.NextPointAfter(c1)
		  while k1<=n1
		    if me.Points(c1*2-1)=me.Points(c2*2-1) and (me.Points(c1*2)=me.Points(c2*2)) then
		      me.removePoint c1
		      c1=me.NextPointAfter(me.PointBefore(c1))
		      c2=me.NextPointAfter(c1)
		    else
		      k1=k1+1
		      c1=me.NextPointAfter(c1)
		      c2=me.NextPointAfter(c2)
		    end if
		  wend
		  
		  'now line artefacts:
		  if n1>2 then
		    c1=1
		    c2=me.NextPointAfter(me.NextPointAfter(c1))
		    k1=1 'our counter
		    while k1<=n1
		      if me.Points(c1*2-1)=me.Points(c2*2-1) and me.Points(c1*2)=me.Points(c2*2) then
		        me.removePoint c1
		        c1=me.NextPointAfter(me.PointBefore(c1))
		        me.removePoint c1
		        c1=me.PointBefore(c1)
		        c2=me.NextPointAfter(me.NextPointAfter(c1))
		      else
		        c1=me.NextPointAfter(c1)
		        c2=me.NextPointAfter(c2)
		        k1=k1+1
		      end if
		    wend
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Clockwise() As boolean
		  'returns true if this polygon is clockwise arranged, i.e. each consecutive point is on the
		  'left of the polygon's centre.
		  'note that overlapping polygons that criss-cross themselves might
		  'yield bad results. this should preferably be used for closed, non-self-intersecting
		  'polygons.
		  
		  dim radcount,cang,angle as double
		  dim p0,p1,p2,n,i,dx1,dx2,dy1,dy2 as integer
		  
		  n=me.NumberOfPoints
		  if n<3 then
		    return false
		  end if
		  
		  p0=n
		  p1=1
		  p2=2
		  
		  for i=1 to n
		    
		    dx1=me.Points(p1*2-1)-me.Points(p0*2-1)
		    dy1=me.Points(p1*2)-me.Points(p0*2)
		    dx2=me.Points(p2*2-1)-me.Points(p1*2-1)
		    dy2=me.Points(p2*2)-me.Points(p1*2)
		    
		    cang=( (dx1*dx2) + (dy1*dy2) ) / ( sqrt(dx1*dx1 + dy1*dy1) * sqrt(dx2*dx2 + dy2*dy2) )
		    
		    angle=abs(acos(cang))
		    
		    if (dx2*dy1)>(dy2*dx1) then
		      angle=-angle
		    end if
		    radcount=radcount+angle
		    
		    p0=p1
		    p1=p2
		    p2=me.NextPointAfter(p2)
		    
		  next
		  
		  if radcount>0 then
		    return true
		  else
		    return false
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ClosestPointTo(px as integer, py as integer) As Integer
		  'returns the point number of the point closest to px/py
		  dim p,n,x as integer
		  dim mindis,newdis as double
		  
		  n=me.NumberOfPoints
		  if n=1 then
		    return 1
		  end if
		  
		  mindis=1000000 'the minimum distance.
		  x=0
		  
		  for p=1 to n
		    newdis=sqrt(pow((px-Points(p*2-1)),2)+pow((py-Points(p*2)),2))
		    if newdis<mindis then
		      x=p
		      mindis=newdis
		    end if
		  next
		  
		  return x
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CommentAndVersion()
		  'Version 1.7.0
		  '04-21-2002
		  
		  '1.7.0
		  '-added PI constants to functions for RAM and speed improvement
		  '-added ReturnJointEdgeWith(neighbor as class_Polygon) as class_Polygon
		  '-added RemoveRange() method
		  '-added InsertRange() method
		  '-added InsertPolygon() method
		  '-added Clockwise() function
		  '-added Area() method
		  
		  '1.6.0
		  '-Totally rewrote the bloody mergewith routine to make it do what it was supposed to do:
		  '    correctly snap together perfectly adjacent 2D polygons.
		  '-fixed a bug in the 'IterateForward' routine
		  
		  '1.5.0
		  '-added constructor to induce PI, degPI and HalfPI [increasing speed for RAM, at 12 bytes per polygon]
		  '-fixed insertpoint bug that could add points twice to end of points array
		  '-rewrote [and hopefully finally finished] MergeWith function
		  
		  '1.4.3:
		  '-fixed an unhandled out of bounds occuring in mergeWith
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Copy() As class_Polygon
		  'returns an exact copy of this polygon
		  dim cp as class_Polygon
		  dim p,n as integer
		  
		  n=ubound(me.Points)
		  
		  cp=New class_Polygon
		  redim cp.Points(n)
		  
		  for p=1 to n
		    cp.Points(p)=me.Points(p)
		  next
		  
		  return cp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CrossSectionWidth(d as double) As single
		  //-----------------------------------------
		  // 
		  // Rotates all points by d degrees around the center of the polygon,
		  // then return the cross section width
		  //-----------------------------------------
		  dim p,n as integer
		  dim cx,cy,rot,dist,ang,cang as double
		  dim pp as Class_Polygon
		  dim gg as Picture
		  //-----------------------------------------
		  
		  gg=New Picture(256,256,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		  gg.Graphics.ForeColor=RGB(0,0,0)
		  gg.Graphics.FillRect(0,0,256,256)
		  gg.Graphics.ForeColor=RGB(0,255,0)
		  gg.Graphics.FillPolygon Points
		  
		  pp=new Class_Polygon
		  
		  ReDim pp.Points(UBound(Points))
		  
		  for p=0 to UBound(Points)
		    pp.Points(p)=Points(p)
		    
		  next
		  
		  
		  
		  cx=me.XCenter
		  cy=me.YCenter
		  rot=d*pi/180
		  n=me.NumberOfPoints
		  
		  for p=1 to n
		    dist=sqrt(pow((Points(p*2-1)-cx),2)+pow((Points(p*2)-cy),2))
		    cang=(Points(p*2-1)-cx)/dist
		    ang=acos(cang)
		    if Points(p*2)<cy then
		      ang=-ang
		    end if
		    ang=ang-rot
		    pp.Points(p*2-1)=cx + dist*cos( ang )
		    pp.Points(p*2)=cy + dist*sin( ang )
		    if abs(pp.Points(p*2))>1000 or abs(pp.Points(p*2-1))>1000 Then
		      pp.Points.Remove p*2
		      pp.Points.Remove P*2-1
		      p=p-1
		      n=n-1
		    end
		  next
		  
		  
		  gg.Graphics.ForeColor=RGB(255,0,0)
		  gg.Graphics.FillPolygon pp.Points
		  
		  ang=pp.LeftEdge-pp.RightEdge
		  
		  if ang>20 Then
		    Break
		  end
		  
		  Return ang
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DistanceToPoint(p as integer, x as integer, y as integer) As double
		  'returns the distance of the point x/y from the point p in the polygon
		  'returns zero if point does not exist
		  dim d as double
		  if p<=me.NumberOfPoints then
		    d=sqrt(pow(abs(x-me.Points(p*2-1)),2)+pow(abs(y-me.Points(p*2)),2))
		  end if
		  return d
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FlipHorizontal()
		  'This will flip all points from left to right and vice versa.
		  dim n,CX,p as integer
		  n=me.NumberOfPoints
		  if n>1 then
		    CX=me.XCenter
		    for p=1 to n
		      me.Points(p*2-1)=CX-(me.Points(p*2-1)-CX)
		    next
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FlipRange(p as integer, r as integer)
		  'Flips the order of the points in the array from p to (p+r),
		  'so that p becomes p+r and vice versa, (p+1) becomes (p+r-1) etc.
		  dim n,hr,a,x,y,pa,pb as integer
		  n=me.NumberofPoints
		  if r<2 then
		    return
		  end if
		  hr=p + r\2
		  
		  pa=p
		  pb=me.StepPointsAway(p,r)
		  
		  for a=p to hr
		    x=Points(pa*2-1)
		    y=Points(pa*2)
		    Points(pa*2-1)=Points(pb*2-1)
		    Points(pa*2)=Points(pb*2)
		    Points(pb*2-1)=x
		    Points(pb*2)=y
		    pa=me.NextPointAfter(pa)
		    pb=me.PointBefore(pb)
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FlipVertical()
		  'This will flip all points from top to down and vice versa.
		  dim n,CY,p as integer
		  n=me.NumberOfPoints
		  if n>1 then
		    CY=me.YCenter
		    for p=1 to n
		      me.Points(p*2)=CY-(me.Points(p*2)-CY)
		    next
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetIntersection()
		  'stores the intersect point between
		  'Line (1,...) and Line(2,...) in Line(0,...)
		  dim den as double
		  dim r,s as double
		  
		  den=(Line(1,3)-Line(1,1))*(Line(2,4)-Line(2,2))-(Line(1,4)-Line(1,2))*(Line(2,3)-Line(2,1))
		  
		  r=((Line(1,2)-Line(2,2))*(Line(2,3)-Line(2,1)) - (Line(1,1)-Line(2,1))*(Line(2,4)-Line(2,2))) / den
		  
		  s=((Line(1,2)-Line(2,2))*(Line(1,3)-Line(1,1)) - (Line(1,1)-Line(2,1))*(Line(1,4)-Line(1,2))) / den
		  
		  Line(0,1)=Line(1,1)+(r*Line(1,3)-r*Line(1,1))
		  Line(0,2)=Line(1,2)+(r*Line(1,4)-r*Line(1,2))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HypoAscent(p as integer) As Double
		  'returns the ascent of the hypothenusis opposite
		  'the angle in p:
		  dim n as integer
		  dim r as double
		  dim p0,p2 as integer
		  
		  n=NumberOfPoints
		  
		  if n<3 then
		    return 0
		  end if
		  
		  p0=me.PointBefore(p)
		  p2=me.NextPointAfter(p)
		  
		  if Points(p2*2-1)=Points(p0*2-1) then
		    return (Points(p2*2)-Points(p0*2))*100000
		  end if
		  
		  r=(Points(p2*2)-Points(p0*2))/(Points(p2*2-1)-Points(p0*2-1))
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertPoint(p as integer, px as integer, py as integer)
		  dim n as integer
		  n=NumberOfPoints
		  
		  if p=0 then
		    return
		  elseif p>n then
		    AddPoint px,py
		    return
		  end if
		  
		  Points.Insert (p*2-1),py
		  Points.Insert (p*2-1),px
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertPolygon(pg as class_Polygon, PointNr as integer, Reversed as boolean)
		  'Inserts the handed polygon pg into this polygon, behind PointNr.
		  'Note that it's your own responsibility to assure keeping the
		  'clockwise order. Use the Reversed boolean for this.
		  dim pn,n,n2,p1,p2 as integer
		  
		  if pg<>nil then
		    pn=me.NextPointAfter(me.PointBefore(PointNr))
		    n2=pg.NumberOfPoints
		    if n2>0 then
		      me.InsertRange(pn,n2,0,0)
		      p1=me.NextPointAfter(pn)
		      if Reversed then
		        for p2=n2 downto 1
		          me.Points(p1*2-1)=pg.Points(p2*2-1)
		          me.Points(p1*2)=pg.Points(p2*2)
		          p1=me.NextPointAfter(p1)
		        next
		      else
		        for p2=1 to n2
		          me.Points(p1*2-1)=pg.Points(p2*2-1)
		          me.Points(p1*2)=pg.Points(p2*2)
		          p1=me.NextPointAfter(p1)
		        next
		      end if
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertRange(PointNr as integer, Lngth as integer, DefaultX as integer, DefaultY as integer)
		  'inserts Lngth new points behind PointNr with the handed Default Values.
		  
		  dim l,pstart,pend,n,i,i2,cl,cp as integer
		  
		  'the trick is to copy the old ones fast, and then redim, instead of inserting the points
		  'one by one which is slower. If however, the number to be inserted is very low, the opposite
		  'could happen. Therefore, the algorithm splits up for speed improvement depending on the size
		  'of the wanted insertion.
		  
		  n=me.NumberOfPoints
		  l=max(0,Lngth) 'validated length of the insertion sequence
		  
		  if l>0 then 'we actually have something to insert:
		    
		    cl=n+l
		    redim me.Points(cl*2)
		    
		    if l>4 then 'its a big insertion so we go with the mass method
		      
		      pstart=me.NextPointAfter(me.PointBefore(PointNr))
		      pend=me.StepPointsAway(pstart,l)
		      if pstart<=n then 'copy the moveable sequence up:
		        i=me.NextPointAfter(pend)
		        i2=me.NextPointAfter(pstart)
		        for cp=1 to l
		          me.Points(i2*2-1)=me.Points(i*2-1)
		          me.Points(i2*2)=me.Points(i*2)
		          me.Points(i*2-1)=DefaultX
		          me.Points(i*2)=DefaultY
		          i=me.NextPointAfter(i)
		          i2=me.NextPointAfter(i2)
		        next
		      else 'just append default values
		        i=me.NextPointAfter(pstart)
		        for i2=1 to l
		          me.Points(i*2-1)=DefaultX
		          me.Points(i*2)=DefaultY
		          i=me.NextPointAfter(i)
		        next
		      end if
		      
		    else 'just loop through and insert:
		      i=me.NextPointAfter(pstart)
		      for cp=1 to l
		        me.InsertPoint(i,DefaultX,DefaultY)
		      next
		    end if
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsWithin(px as integer, py as integer) As boolean
		  'Returns true if the point px/py is within the polygon.
		  'Thanks to Doug Holton for the smooth code!
		  
		  dim within as boolean
		  dim n as integer
		  dim p1,p2 as integer
		  
		  n=me.NumberOfPoints
		  if n<2 then
		    return false
		  end if
		  
		  within=false
		  
		  for p1=1 to n
		    p2=me.NextPointAfter(p1)
		    
		    if ((me.Points(p1*2)<=py and py<me.Points(p2*2)) or (me.Points(p2*2)<=py and py<me.Points(p1*2))) and (px<(me.Points(p2*2-1)-me.Points(p1*2-1))*(py-me.Points(p1*2))/(me.Points(p2*2)-me.Points(p1*2))+me.Points(p1*2-1)) then
		      within=not within
		    end if
		    
		  next
		  
		  return within
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function iswithinscale(px as integer, py as integer, scale as double) As boolean
		  'Returns true if the point px/py is within the polygon.
		  'Thanks to Doug Holton for the smooth code!
		  
		  dim within as boolean
		  dim n as integer
		  dim p1,p2 as integer
		  dim thispoly as class_polygon
		  
		  thispoly=me.copy
		  thispoly.scaletopleft(scale,scale)
		  
		  n=thispoly.NumberOfPoints
		  if n<2 then
		    return false
		  end if
		  
		  within=false
		  
		  for p1=1 to n
		    p2=thispoly.NextPointAfter(p1)
		    
		    if ((thispoly.Points(p1*2)<=py and py<thispoly.Points(p2*2)) or (thispoly.Points(p2*2)<=py and py<thispoly.Points(p1*2))) and (px<(thispoly.Points(p2*2-1)-thispoly.Points(p1*2-1))*(py-thispoly.Points(p1*2))/(thispoly.Points(p2*2)-thispoly.Points(p1*2))+thispoly.Points(p1*2-1)) then
		      within=not within
		    end if
		    
		  next
		  
		  return within
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsWithin_1D(px as integer) As Boolean
		  'Returns true if the l px is within the polygon.
		  
		  
		  
		  dim n as integer
		  dim p1,p2 ,max,min as integer
		  
		  n=me.NumberOfPoints
		  max=Points(1)
		  min=Points(1)
		  
		  
		  for p1=1 to n
		    p2=Points(p1*2-1)
		    if p2>max then
		      max=p2
		    elseif p2 <min then
		      min=p2
		    end
		    if px>=min and px<=max then
		      Return(true)
		    end
		    
		  next
		  Return(False)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsWithin_D(px as double, py as double) As Boolean
		  //--------------------------------------------------
		  // 'Returns true if the point px/py is within the polygon.
		  // 'Thanks to Doug Holton for the smooth code!
		  //--------------------------------------------------
		  dim within as boolean
		  dim n as integer
		  dim p1,p2 as integer
		  //--------------------------------------------------
		  
		  n=me.NumberOfPoints
		  if n<2 then
		    return false
		  end if
		  
		  within=false
		  
		  for p1=1 to n
		    p2=me.NextPointAfter(p1)
		    
		    if ((me.Points_D(p1*2)<=py and py<me.Points_D(p2*2)) or (me.Points_D(p2*2)<=py and py<me.Points_D(p1*2))) and (px<(me.Points_D(p2*2-1)-me.Points_D(p1*2-1))*(py-me.Points_D(p1*2))/(me.Points_D(p2*2)-me.Points_D(p1*2))+me.Points_D(p1*2-1)) then
		      within=not within
		    end if
		    
		  next
		  
		  return within
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub IterateBackward()
		  'moves all points backward 1 step
		  dim n,x,px,py,p1 as integer
		  
		  n=me.NumberOfPoints
		  
		  px=Points(n*2-1)
		  py=Points(n*2)
		  
		  for x=n downto 2
		    p1=me.PointBefore(x)
		    Points(x*2-1)=Points(p1*2-1)
		    Points(x*2)=Points(p1*2)
		  next
		  Points(1)=px
		  Points(2)=py
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub IterateForward()
		  'moves all points forward 1 step
		  dim n,x,px,py,p1 as integer
		  
		  n=me.NumberOfPoints
		  
		  px=Points(n*2-1)
		  py=Points(n*2)
		  
		  for x=n downto 1
		    p1=me.PointBefore(x)
		    Points(x*2-1)=Points(p1*2-1)
		    Points(x*2)=Points(p1*2)
		  next
		  Points(1)=px
		  Points(2)=py
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub IteratePoints(s as integer)
		  'Moves all points forwards or backwards by s steps within the array:
		  dim n,p1,p2 as integer
		  dim pts(0) as integer
		  n=me.NumberofPoints
		  if n<2 then
		    return
		  end if
		  
		  redim Pts(n*2)
		  
		  for p1=1 to n
		    p2=me.StepPointsAway(p1,s)
		    Pts(p2*2-1)=me.Points(p1*2-1)
		    Pts(p2*2)=me.Points(p1*2)
		  next
		  for p1=1 to n*2
		    me.Points(p1)=Pts(p1)
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LeftEdge() As INTEGER
		  'returns the lowest X value in the polygon:
		  dim x,n,r as integer
		  n=me.NumberOfpoints
		  if n<1 then
		    return 0
		  end if
		  r=Points(1)
		  for x=2 to n
		    r=Min(r,Points(2*x-1))
		  next
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LeftEdge_D() As Double
		  'returns the lowest X value in the polygon:
		  dim x,n as integer
		  Dim r as Double
		  
		  n=me.NumberOfPoints_D
		  if n<1 then
		    return 0
		  end if
		  r=Points_D(1)
		  for x=2 to n
		    r=Min(r,Points_D(2*x-1))
		  next
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LinesIntersect() As Boolean
		  'returns true if the line in Line(1,...) intersects with the Line in Line(2,...):
		  dim den as double
		  dim r,s as double
		  
		  den=(Line(1,3)-Line(1,1))*(Line(2,4)-Line(2,2))-(Line(1,4)-Line(1,2))*(Line(2,3)-Line(2,1))
		  
		  r=((Line(1,2)-Line(2,2))*(Line(2,3)-Line(2,1)) - (Line(1,1)-Line(2,1))*(Line(2,4)-Line(2,2))) / den
		  
		  s=((Line(1,2)-Line(2,2))*(Line(1,3)-Line(1,1)) - (Line(1,1)-Line(2,1))*(Line(1,4)-Line(1,2))) / den
		  
		  return ((0 < r) and ( r < 1 ) and (0 < s) and ( s < 1))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MergeWith(pg as class_Polygon) As boolean
		  'Merges the handed polygon pg with this polygon.
		  'Merging means that that polygon will be integrated into this one if
		  'it has a common edge, i.e. an uninterrupted sequence of points identical with this one,
		  'in reverse order. Both polygons' points should be arranged in clockwise order, or it won't work.
		  
		  dim n1,n2 as integer
		  dim p1start,p1end,p2start,p2end,k1,k2,c1,c2 as integer
		  dim e1start,e2start,e1end,e2end,lngth,dd,ip as integer
		  dim found as boolean
		  n1=me.NumberOfPoints
		  n2=pg.NumberOfPoints
		  
		  if n1<3 or n2<3 then
		    return false
		  end if
		  
		  'first we should get an identical edge between both polygons:
		  found=false
		  
		  p1start=0
		  k1=1
		  
		  while not found and k1<=n1
		    p1start=me.NextPointAfter(p1start)
		    p2end=0 'has to be set back to zero here
		    k2=1
		    
		    while not found and k2<=n2
		      p2end=pg.PointBefore(p2end)
		      
		      if me.Points(p1start*2-1)=pg.Points(p2end*2-1) and me.Points(p1start*2)=pg.Points(p2end*2) then
		        'we now have an identical point
		        p1end=me.NextPointAfter(p1start)
		        p2start=pg.PointBefore(p2end)
		        
		        if me.Points(p1end*2-1)=pg.Points(p2start*2-1) and me.Points(p1end*2)=pg.Points(p2start*2) then
		          'we have found a common edge:
		          found=true
		          k1=n1+3 'will make sure we leave the main loop further down
		          k2=n2+3 'will make sure we leave the main loop further down
		          
		          lngth=2 'this will store the entire length of the lines to be deleted, in points
		          
		          c1=0 'the number of points we have FOUND in this polygon to edge on the other
		          c2=0
		          'same for the other polygon; since the first found edge is not deleted [both points
		          'remain] they are both set to zero
		          'We will compare these to n1 and n2 to ensure that we don't search two identical polygons'
		          'edges beginnings forever
		          
		          'now we must search for the joint start and end in both directions :
		          e1start=p1start
		          e2end=p2end
		          
		          e2start=p2start
		          e1end=p1end
		          
		          'first backwards on this polygon...
		          p1start=me.PointBefore(p1start)
		          p2end=pg.NextPointAfter(p2end)
		          while c1<n1 and me.Points(p1start*2-1)=pg.Points(p2end*2-1) and me.Points(p1start*2)=pg.Points(p2end*2)
		            e1start=p1start
		            e2end=p2end
		            p1start=me.PointBefore(p1start)
		            p2end=pg.NextPointAfter(p2end)
		            lngth=lngth+1
		            c1=c1+1
		          wend
		          
		          'and then forward on the other:
		          p2start=pg.PointBefore(p2start)
		          p1end=me.NextPointAfter(p1end)
		          while c2<n2 and me.Points(p1end*2-1)=pg.Points(p2start*2-1) and me.Points(p1end*2)=pg.Points(p2start*2)
		            e2start=p2start
		            e1end=p1end
		            p2start=pg.PointBefore(p2start)
		            p1end=me.NextPointAfter(p1end)
		            lngth=lngth+1
		            c2=c2+1
		          wend
		          
		        end if
		        'otherwise the polygons touch at a single point, but cannot merge
		      end if
		      
		      k2=k2+1
		    wend
		    k1=k1+1
		  wend
		  
		  if found then 'we can now insert-merge the polygon pg from position e2start to e2end at one after e1start:
		    
		    me.IteratePoints(-e1start)
		    'this is where the joint edge begins - delete this first:
		    dd=lngth-2
		    while dd>=0
		      me.removePoint 1
		      dd=dd-1
		    wend
		    
		    'now insert there all the points after from the other polygon for (n2-lngth) points:
		    dd=n2-lngth
		    'ip=pg.PointBefore(p2start)
		    ip=e2start
		    while dd>=0
		      me.InsertPoint 1,pg.Points(ip*2-1),pg.Points(ip*2)
		      ip=pg.PointBefore(ip)
		      dd=dd-1
		    wend
		    
		    'and finally, simplify the polygon by removing line artefacts, double points etc:
		    'first we remove double points:
		    n1=me.NumberOfPoints
		    k1=1 'our counter
		    c1=1
		    c2=me.NextPointAfter(c1)
		    while k1<=n1
		      if me.Points(c1*2-1)=me.Points(c2*2-1) and (me.Points(c1*2)=me.Points(c2*2)) then
		        me.removePoint c1
		        c1=me.NextPointAfter(me.PointBefore(c1))
		        c2=me.NextPointAfter(c1)
		      else
		        k1=k1+1
		        c1=me.NextPointAfter(c1)
		        c2=me.NextPointAfter(c2)
		      end if
		    wend
		    
		    'now line artefacts:
		    if n1>2 then
		      c1=1
		      c2=me.NextPointAfter(me.NextPointAfter(c1))
		      k1=1 'our counter
		      while k1<=n1
		        if me.Points(c1*2-1)=me.Points(c2*2-1) and me.Points(c1*2)=me.Points(c2*2) then
		          me.removePoint c1
		          c1=me.NextPointAfter(me.PointBefore(c1))
		          me.removePoint c1
		          c1=me.PointBefore(c1)
		          c2=me.NextPointAfter(me.NextPointAfter(c1))
		        else
		          c1=me.NextPointAfter(c1)
		          c2=me.NextPointAfter(c2)
		          k1=k1+1
		        end if
		      wend
		    end if
		    
		    return true
		  else
		    return false
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveBy(x as integer, y as integer)
		  'Moves all points by x and y coords.
		  dim p,n as integer
		  n=me.NumberOfPoints
		  for p=1 to n
		    me.Points(p*2-1)=me.Points(p*2-1)+x
		    me.Points(p*2)=me.Points(p*2)+y
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NextPointAfter(p as integer) As Integer
		  'returns the next higher point after p
		  dim n,r as integer
		  n=me.NumberOfPoints
		  r=p+1
		  if r>n or r<1 then
		    r=1
		  end if
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NextPointAfter_D(p as integer) As Integer
		  'returns the next higher point after p
		  dim n,r as integer
		  n=me.NumberOfPoints_D
		  r=p+1
		  if r>n or r<1 then
		    r=1
		  end if
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NumberOfPoints() As Integer
		  return Ubound(me.Points)\2
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NumberOfPoints_D() As Integer
		  return Ubound(me.Points_D)\2
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PointBefore(p as integer) As Integer
		  'returns the point before p
		  dim n,r as integer
		  n=NumberOfPoints
		  r=p-1
		  if r<1 or r>n then
		    r=n
		  end if
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Polygon()
		  'constructor method - not in use in this version any longer.
		  
		  'PI=3.14159265358979323846264338327950
		  'DegPI=0.0174532925199432954743716805978692719
		  'HalfPI=1.57079632679489655799898173427209258
		  
		  'In case this is ever needed anywhere again: Here is PI to many many digits exactness
		  
		  '3.14159265358979323846264338327950288419716939937510582097494459
		  '230781640628620899862803482534211706798214808651328230664709384
		  '460955058223172535940812848111745028410270193852110555964462294
		  '895493038196442881097566593344612847564823378678316527120190914
		  '564856692346034861045432664821339360726024914127372458700660631
		  '558817488152092096282925409171536436789259036001133053054882046
		  '652138414695194151160943305727036575959195309218611738193261179
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemovePoint(p as integer)
		  'removes that point number from the array:
		  dim n as integer
		  n=NumberOfPoints
		  
		  if p>n then
		    Points.Remove n*2-1
		    Points.Remove n*2-1
		  elseif p=0 then
		    Points.Remove 1
		    Points.Remove 1
		  end if
		  
		  Points.Remove p*2-1
		  Points.Remove p*2-1
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveRange(PointNr as integer, Lngth as integer)
		  'Removes Lngth points starting with point PointNr from this polygon:
		  dim l,pstart,pend,n,i,i2,cl,cp as integer
		  
		  'the trick is to copy the wanted ones fast, and then redim, instead of removing the points
		  'one by one which is slower. If however, the number to be removed is very low, the opposite
		  'could happen. Therefore, the algorithm splits up for speed improvement depending on the relation
		  'of these values to each other.
		  
		  n=me.NumberOfPoints
		  l=max(0,min(Lngth,n)) 'validated length of the deleteable sequence
		  
		  if l>0 then 'we actually have something to delete:
		    
		    if l>4 then 'its a big polygon or removal so we go with the mass copy method
		      
		      pstart=me.NextPointAfter(me.PointBefore(PointNr))
		      pend=me.StepPointsAway(pstart,l)
		      
		      cl=n-l 'the length of the remaining polygon
		      
		      if pstart>=pend then 'the sequence is going over the bounds and into the beginning,
		        'So we have to move our remaining points sequence back:
		        i=me.NextPointAfter(pend)
		        cl=n-l
		        for cp=1 to cl
		          me.Points(cp*2-1)=me.Points(i*2-1)
		          me.Points(cp*2)=me.Points(i*2)
		          i=me.NextPointAfter(i)
		        next
		      else 'deletable sequence is contained within, so copy the top down:
		        i=me.NextPointAfter(pend)
		        i2=me.NextPointAfter(pstart)
		        cl=n-l
		        for cp=1 to cl
		          me.Points(i2*2-1)=me.Points(i*2-1)
		          me.Points(i2*2)=me.Points(i*2)
		          i=me.NextPointAfter(i)
		          i2=me.NextPointAfter(i2)
		        next
		      end if
		      
		      redim me.Points(cl*2)
		      
		    else 'just loop through the removables:
		      i=me.NextPointAfter(me.PointBefore(PointNr))
		      for cp=1 to l
		        me.Points.remove i*2
		        me.Points.remove i*2
		        i=me.NextPointAfter(i)
		      next
		    end if
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReturnJointEdgeWith(neighbor as Class_Polygon) As class_Polygon
		  'returns the edge of a neighboring polygon p this polygon has
		  'in common with that polygon. Note that the points have to be identical.
		  'The returned joint edge ends at the first non-identical point found, excluding it.
		  'A single joint point does not constitute an edge.
		  
		  dim edge as class_Polygon
		  dim n1,n2,p1start,p1end,p2start,p2end,k1,k2,c1,c2 as integer
		  dim e1start,e2start,e1end,e2end,lngth,dd as integer
		  dim found as boolean
		  
		  edge=new class_Polygon 'our result
		  
		  n1=me.NumberOfPoints
		  n2=neighbor.NumberOfPoints
		  
		  if n1<1 or n2<1 then
		    return edge
		  end if
		  
		  'first we should get an identical edge between both polygons:
		  found=false
		  
		  p1start=0
		  k1=1
		  
		  while not found and k1<=n1
		    p1start=me.NextPointAfter(p1start)
		    p2end=0 'has to be set back to zero here
		    k2=1
		    
		    while not found and k2<=n2
		      p2end=neighbor.PointBefore(p2end)
		      
		      if me.Points(p1start*2-1)=neighbor.Points(p2end*2-1) and me.Points(p1start*2)=neighbor.Points(p2end*2) then
		        'we now have an identical point
		        p1end=me.NextPointAfter(p1start)
		        p2start=neighbor.PointBefore(p2end)
		        
		        if me.Points(p1end*2-1)=neighbor.Points(p2start*2-1) and me.Points(p1end*2)=neighbor.Points(p2start*2) then
		          'we have found a common edge:
		          found=true
		          k1=n1+3 'will make sure we leave the main loop further down
		          k2=n2+3 'will make sure we leave the main loop further down
		          
		          lngth=2 'this will store the entire length of the lines in points
		          
		          c1=0 'the number of points we have FOUND in this polygon to edge on the other
		          c2=0
		          
		          'We will compare these to n1 and n2 to ensure that we don't search two identical polygons'
		          'edges beginnings forever
		          
		          'now we must search for the joint start and end in both directions :
		          e1start=p1start
		          e2end=p2end
		          
		          e2start=p2start
		          e1end=p1end
		          
		          'first backwards on this polygon...
		          p1start=me.PointBefore(p1start)
		          p2end=neighbor.NextPointAfter(p2end)
		          while c1<n1 and me.Points(p1start*2-1)=neighbor.Points(p2end*2-1) and me.Points(p1start*2)=neighbor.Points(p2end*2)
		            e1start=p1start
		            e2end=p2end
		            p1start=me.PointBefore(p1start)
		            p2end=neighbor.NextPointAfter(p2end)
		            lngth=lngth+1
		            c1=c1+1
		          wend
		          
		          'and then forward on the other:
		          p2start=neighbor.PointBefore(p2start)
		          p1end=me.NextPointAfter(p1end)
		          while c2<n2 and me.Points(p1end*2-1)=neighbor.Points(p2start*2-1) and me.Points(p1end*2)=neighbor.Points(p2start*2)
		            e2start=p2start
		            e1end=p1end
		            p2start=neighbor.PointBefore(p2start)
		            p1end=me.NextPointAfter(p1end)
		            lngth=lngth+1
		            c2=c2+1
		          wend
		          
		          'now we know that points e1start to e1end in this polygon edge on neighbor.
		          
		        end if
		        'otherwise the polygons touch at a single point, but do not form an edge
		      end if
		      
		      k2=k2+1
		    wend
		    k1=k1+1
		  wend
		  
		  if found then 'we can add the point sequence into our result:
		    
		    redim edge.Points(lngth*2)
		    k1=e1start
		    dd=1 'pour position counter for the result:
		    while dd<=lngth
		      edge.Points(dd*2-1)=me.Points(k1*2-1)
		      edge.Points(dd*2)=me.Points(k1*2)
		      dd=dd+1
		      k1=me.NextPointAfter(k1)
		    wend
		  end if
		  
		  return edge
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RightEdge() As Integer
		  'returns the highest value in the polygon:
		  dim x,n,r as integer
		  n=me.NumberOfpoints
		  if n<1 then
		    return 0
		  end if
		  r=Points(1)
		  for x=2 to n
		    r=Max(r,Points(2*x-1))
		  next
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RightEdge_D() As Double
		  'returns the highest value in the polygon:
		  dim x,n as integer
		  Dim r as Double
		  
		  n=me.NumberOfPoints_D
		  if n<1 then
		    return 0
		  end if
		  r=Points_D(1)
		  for x=2 to n
		    r=Max(r,Points_D(2*x-1))
		  next
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RotateAround(px as integer, py as integer, d as double)
		  'Rotates all points by d degrees around the handed coordinates px/py.
		  'd is the angle in degrees.
		  
		  dim p,n as integer
		  dim rot,dist,ang,cang as double
		  
		  const DegPI=0.0174532925199432954743716805978692719
		  
		  rot=d*DegPI 'PI/180
		  n=me.NumberOfPoints
		  
		  for p=1 to n
		    
		    dist=sqrt(pow((Points(p*2-1)-px),2)+pow((Points(p*2)-py),2))
		    
		    cang=(Points(p*2-1)-px)/dist
		    ang=acos(cang)
		    if Points(p*2)<py then
		      ang=-ang
		    end if
		    
		    ang=ang+rot
		    
		    Points(p*2-1)=px + dist*cos( ang )
		    Points(p*2)=py + dist*sin( ang )
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RotateAroundCenter(d as double)
		  'Rotates all points by d degrees around the center of the polygon.
		  
		  dim p,n as integer
		  dim cx,cy,rot,dist,ang,cang,DegPI as double
		  
		  //const DegPI=0.0174532925199432954743716805978692719
		  
		  cx=me.XCenter
		  cy=me.YCenter
		  rot=d*DegPI 'PI/180
		  n=me.NumberOfPoints
		  
		  for p=1 to n
		    
		    dist=sqrt(pow((Points(p*2-1)-cx),2)+pow((Points(p*2)-cy),2))
		    
		    cang=(Points(p*2-1)-cx)/dist
		    ang=acos(cang)
		    if Points(p*2)<cy then
		      ang=-ang
		    end if
		    
		    ang=ang+rot
		    
		    Points(p*2-1)=cx + dist*cos( ang )
		    Points(p*2)=cy + dist*sin( ang )
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Scale(sx as double, sy as double)
		  //--------------------------------
		  // This will stretch the polygon by 
		  // sx% left/right and sy% top/down from the center.
		  //--------------------------------------------
		  dim p,n,CX,CY,dx,dy as integer
		  dim sfx,sfy as double
		  //--------------------------------------------
		  
		  n=me.NumberOfPoints
		  if n>1 then
		    CX=me.XCenter
		    CY=me.YCenter
		    sfx=sx/100
		    sfy=sy/100
		    
		    for p=1 to n
		      
		      dx=sfx*(me.Points(p*2-1)-CX)
		      dy=sfy*(me.Points(p*2)-CY)
		      me.Points(p*2-1)=CX+dx
		      me.Points(p*2)=CY+dy
		      
		    next
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub scaletopleft(sx as double, sy as double)
		  'This will stretch the polygon by sx% left/right and sy% top/down from the center.
		  dim p,n,dx,dy as integer
		  
		  n=me.NumberOfPoints
		  if n>1 then
		    for p=1 to n
		      dx=sx*me.Points(p*2-1)
		      dy=sy*me.Points(p*2)
		      me.Points(p*2-1)=dx
		      me.Points(p*2)=dy
		    next
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Scale_D(sx as double, sy as double)
		  'This will stretch the polygon by sx% left/right and sy% top/down from the center.
		  dim p,n as integer
		  dim sfx,sfy,CX,CY,dx,dy as double
		  
		  n=me.NumberOfPoints_D
		  if n>1 then
		    CX=me.XCenter_D
		    CY=me.YCenter_D
		    sfx=sx/100
		    sfy=sy/100
		    
		    for p=1 to n
		      
		      dx=sfx*(me.Points_D(p*2-1)-CX)
		      dy=sfy*(me.Points_D(p*2)-CY)
		      me.Points_D(p*2-1)=CX+dx
		      me.Points_D(p*2)=CY+dy
		      
		    next
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Scale_Points(delx as integer, dely as integer,sx as double, sy as double)
		  'This will stretch the polygon by sx% left/right and sy% top/down from the center.
		  dim n,x,y,i as integer
		  
		  n=me.NumberOfPoints_D
		  ReDim Points(0)
		  
		  if n>1 then
		    for i=1 to (UBound(Points_D)-1)
		      x=Round(delx+Points_D(i)*sx)
		      i=i+1
		      y=Round(dely+Points_D(i)*sy)
		      
		      Points.Append x
		      Points.Append y
		      
		      
		    next
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Scale_Points_Canvas(sx as double)
		  'This will stretch the polygon by sx% left/right and sy% top/down from the center.
		  dim n,x,y,i as integer
		  
		  n=me.NumberOfPoints_D
		  ReDim Points(0)
		  
		  if n>1 then
		    for i=1 to (UBound(Points_D)-1)
		      x=Round(Points_D(i)*sx)
		      i=i+1
		      y=Round(Points_D(i)*sx)
		      
		      Points.Append x
		      Points.Append y
		      
		      
		    next
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShiftLine(n as integer, d as integer)
		  'shifts the line in the line array of number n by distance d:
		  dim xv,yv, nxv, nyv as double
		  dim lv as double
		  dim ang,cang as double
		  
		  const HalfPI=1.57079632679489655799898173427209258
		  
		  xv = Line(n,3)-Line(n,1)
		  yv = Line(n,4)-Line(n,2)
		  
		  lv = sqrt( xv * xv + yv * yv)
		  
		  cang = xv / lv
		  
		  ang = acos( cang )
		  
		  ang = ang - HalfPI
		  
		  nxv = ( cos(ang) * d )
		  nyv = ( sin(ang) * d )
		  
		  if yv < 0 then
		    nxv = nxv * -1
		  end if
		  
		  Line(n,1) = Line(n,1) + nxv
		  Line(n,2) = Line(n,2) + nyv
		  
		  Line(n,3) = Line(n,3) + nxv
		  Line(n,4) = Line(n,4) + nyv
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Skew(sh as double, sv as double)
		  'Skews, ie tilts a polygon by +sh% horizontally
		  'and sv% vertically.
		  
		  dim p,n,CX,CY,dx,dy,w,h as integer
		  dim sfx,sfy as double
		  
		  n=me.NumberOfPoints
		  if n>1 then
		    CX=me.XCenter
		    CY=me.YCenter
		    
		    w=me.RightEdge-me.LeftEdge
		    h=me.BottomEdge-me.TopEdge
		    
		    sfx=2*(sh*w)/(100*h)
		    sfy=2*(sv*h)/(100*w)
		    
		    for p=1 to n
		      
		      dx=me.Points(p*2-1)+(CY-Points(p*2))*sfx
		      dy=me.Points(p*2)+(CX-Points(p*2-1))*sfy
		      
		      me.Points(p*2-1)=dx
		      me.Points(p*2)=dy
		      
		    next
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StepPointsAway(p as integer, d as integer) As Integer
		  'returns the number of the dth point after point p in this polygon:
		  dim n,r as integer
		  n=me.NumberOfPoints
		  if p<1 or p>n then
		    return 1
		  end if
		  
		  r=(p+d) mod n
		  if r<1 then
		    r=r+n
		  end if
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SwapPoints(p1 as integer, p2 as integer)
		  'Swaps the values of p1 and p2:
		  dim x,y,n as integer
		  n=me.NumberofPoints
		  if n<2 or p1>n or p1<1 or p2>n or p2<1 then
		    return
		  end if
		  x=Points(p1*2-1)
		  y=Points(p1*2)
		  Points(p1*2-1)=Points(p2*2-1)
		  Points(p1*2)=Points(p2*2)
		  Points(p2*2-1)=x
		  Points(p2*2)=y
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TopEdge() As Integer
		  'returns the lowest Y value in the polygon:
		  dim x,n,r as integer
		  n=me.NumberOfpoints
		  if n<1 then
		    return 0
		  end if
		  r=Points(2)
		  for x=2 to n
		    r=Min(r,Points(2*x))
		  next
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TopEdge_D() As double
		  'returns the lowest Y value in the polygon:
		  dim x,n as integer
		  Dim r as Double
		  n=me.NumberOfPoints_D
		  if n<1 then
		    return 0
		  end if
		  r=Points_D(2)
		  for x=2 to n
		    r=Min(r,Points_D(2*x))
		  next
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function XCenter() As Integer
		  'hands out the x-coordinate of the center point
		  return (me.LeftEdge+me.RightEdge)/2
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function XCenter_D() As double
		  'hands out the x-coordinate of the center point
		  return (me.LeftEdge_D+me.RightEdge_D)/2
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function YCenter() As INTEGer
		  'hands out the Y-Coordinate of the center point
		  return (me.TopEdge+Me.BottomEdge)/2
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function YCenter_D() As Double
		  'hands out the Y-Coordinate of the center point
		  return (me.TopEdge_D+Me.BottomEdge_D)/2
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Colour As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		Line(2,4) As double
	#tag EndProperty

	#tag Property, Flags = &h0
		npoints As integer
	#tag EndProperty

	#tag Property, Flags = &h4
		Points(0) As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Points_D(0) As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		PointWithin_OtherPoly As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		PolyIsWithin_Index As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Colour"
			Group="Behavior"
			InitialValue="&h000000"
			Type="Color"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="npoints"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PointWithin_OtherPoly"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PolyIsWithin_Index"
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
