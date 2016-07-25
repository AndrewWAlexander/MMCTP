#tag Module
Protected Module MathUtils
	#tag Method, Flags = &h0
		Sub ClipPoly(inPts() As Vector3D, planeNormal As Vector3D, planePt As Vector3D, outPts() As Vector3D)
		  '// Clip the given polygon (inPts) to the "inside" of the given plane.
		  '// Stuff the resulting polygon into outPts.
		  '
		  '// This uses the Sutherland-Hodgman algorithm.
		  '
		  'Dim i, maxi, count As Integer
		  'Dim lastPt, nowPt As Vector3D
		  'Dim lastIn, nowIn As Boolean
		  'Dim D As Double
		  '
		  'D = planeNormal.Times(-1).Dot(planePt)
		  '
		  'Redim outPts(-1)
		  'maxi = UBound(inPts)
		  'count = maxi+1
		  'lastPt = inPts(maxi)
		  'lastIn = planeNormal.Dot(lastPt) + D > 0
		  'for i = 0 to maxi
		  'nowPt = inPts(i)
		  'nowIn = planeNormal.Dot(nowPt) + D > 0
		  'if lastIn then
		  'if nowIn then
		  '// inside-inside, append the second node
		  'outPts.Append nowPt
		  'else
		  '// inside-outside, compute and append the intersection
		  'outPts.Append PlaneIntersection(planeNormal, D, lastPt, nowPt)
		  'end if
		  'else
		  'if nowIn then
		  '// outside-inside, compute & append the intersection, then the second node
		  'outPts.Append PlaneIntersection(planeNormal, D, lastPt, nowPt)
		  'outPts.Append nowPt
		  'else
		  '// outside-outside, do nothing
		  'end if
		  'end if
		  'lastPt = nowPt
		  'lastIn = nowIn
		  'next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function OrbitCylinder(POI As Vector3D, radius As Double, angle As Double, altitude As Double) As Vector3D
		  // Compute a position on a virtual Y-aligned cylinder, centered on POI,
		  // with the given radius, angle, and altitude.
		  Dim out As Vector3D
		  out = New Vector3D
		  out.x = POI.x + radius * cos(angle)
		  out.z = POI.z + radius * sin(angle)
		  out.y = POI.y + altitude
		  return out
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function OrbitSphere(POI As Vector3D, radius As Double, longitude As Double, latitude As Double) As Vector3D
		  '// Compute a position on a virtual sphere, centered on POI
		  '// with the given radius, longitude, and latitude (in radians).
		  'Dim v As Vector3D
		  'Dim q,q2 As Quaternion
		  '
		  'q = New Quaternion
		  '
		  'q.SetRotateAboutAxis 0,1,0, longitude
		  'q2 = New Quaternion
		  'q2.SetRotateAboutAxis 0,0,1, latitude
		  'q2.MultiplyBy q
		  '
		  'v = New Vector3D
		  'v.x = radius
		  'return q2.Transform(v).Plus(POI)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PlaneIntersection(planeNormal As Vector3D, planeD As Double, p0 As Vector3D, p1 As Vector3D) As Vector3D
		  '// Find the intersection of the line from p0 to p1 with the given plane.
		  '
		  '// See Lengyel p. 85.
		  '
		  'Dim t As Double
		  'Dim V As Vector3D
		  '
		  'V = p1.Minus(p0)
		  't = -(planeNormal.dot(p0) + planeD) / (planeNormal.Dot(V))
		  'return p0.Plus(V.Times(t))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PointObjectAt(obj As Object3D, POI As Vector3D)
		  '// Make object 'obj' point towards the point of interest 'POI',
		  '// by first doing a yaw (from the default orientation), and
		  '// then a pitch.  The object's previous orientation is not
		  '// involved.
		  '
		  'Dim yawAngle As Double
		  'Dim pitchAngle As Double
		  'Dim v1, v2 As Vector3D
		  '
		  '// Find the yaw angle needed to get in the right general direction
		  '// (i.e., ignoring Y, get it facing the right XZ direction).
		  '// The Atan2 function provides a very easy way to find this.
		  'yawAngle = Atan2(POI.x-obj.position.x, POI.z-obj.position.z)
		  '
		  '// Set the object's orientation to a yaw by that amount.
		  'obj.orientation.SetRotateAboutAxis 0,1,0, yawAngle
		  '
		  '// Now, find the pitch angle needed to account for Y.
		  '// We use a dot product to get the angle between a vector in
		  '// the direction the object's facing now, and a vector that
		  '// points towards the POI.
		  'v1 = New Vector3D
		  'v1.z = 1.0
		  'v1 = obj.orientation.Transform(v1)
		  'v2 = New Vector3D
		  'v2.x = POI.x - obj.position.x
		  'v2.y = POI.y - obj.position.y
		  'v2.z = POI.z - obj.position.z
		  'v2.Normalize
		  'pitchAngle = Acos( MIN(MAX(v1.Dot(v2),-1.0),1.0) )
		  'if v2.y > 0 then
		  'pitchAngle = -pitchAngle
		  'end if
		  '
		  '// Apply that pitch.
		  'obj.Pitch pitchAngle
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PolyInPoly(x1() As Integer, y1() As Integer, x2() As Integer, y2() As Integer) As Boolean
		  // For now, we'll assume convex polygons.
		  // One convex polygon is inside another if all its points are.
		  
		  Dim i As Integer
		  for i = UBound(x1) DownTo 0
		    if not PtInConvexPoly(x1(i), y1(i), x2,y2) then
		      return false
		    end if
		  next
		  
		  return true
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PtInConvexPoly(X As Double, Y As Double, polyX() As Double, polyY() As Double) As Boolean
		  // Checks whether an X,Y point is within a 2D convex polygon.
		  //
		  // This implementation uses the fact that for a convex poly,
		  // a point is always on the right side of each line segment.
		  // See: http://astronomy.swin.edu.au/~pbourke/geometry/insidepoly/
		  // solution #2.
		  
		  Dim i,i1 As Integer
		  Dim maxi As Integer
		  
		  maxi = UBound(polyX)
		  for i = 0 to maxi
		    i1 = (i+1) mod (maxi+1)
		    if (y - polyY(i))*(polyX(i1) - polyX(i)) - (x - polyX(i))*(polyY(i1) - polyY(i)) < 0 then
		      return false
		    end if
		  next
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PtInConvexPoly(X As Integer, Y As Integer, polyX() As Integer, polyY() As Integer) As Boolean
		  // Checks whether an X,Y point is within a 2D convex polygon.
		  //
		  // This implementation uses the fact that for a convex poly,
		  // a point is always on the right side of each line segment.
		  // See: http://astronomy.swin.edu.au/~pbourke/geometry/insidepoly/
		  // solution #2.
		  
		  Dim i,i1 As Integer
		  Dim maxi As Integer
		  
		  maxi = UBound(polyX)
		  for i = 0 to maxi
		    i1 = (i+1) mod (maxi+1)
		    if (y - polyY(i))*(polyX(i1) - polyX(i)) - (x - polyX(i))*(polyY(i1) - polyY(i)) < 0 then
		      return false
		    end if
		  next
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RoundToTenth(num As Double) As Double
		  return Round(num * 10.0) * 0.1
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScreenToWorld(view as Rb3DSpace, X as Integer, Y As Integer) As Vector3D
		  '// Find the point in 3D space represented by the given
		  '// point in the 2D rendering.
		  'Dim dist As Double
		  'Dim screenPos As Vector3D
		  '
		  'dist = Min(view.width, view.height) * 0.5 / tan(view.FieldOfView * kDegrees * 0.5)
		  '
		  'screenPos = New Vector3D
		  'screenPos.X = (view.width/2 - X)
		  'screenPos.Y = (view.height/2 - Y)
		  'screenPos.Z = dist
		  'screenPos = view.camera.orientation.Transform(screenPos)
		  'screenPos.Add view.camera.position
		  '
		  'return screenPos
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScreenToYPlaneIntercept(view As Rb3DSpace, planeY as Double, X as Integer, Y As Integer) As Vector3D
		  '// Find the place at which a ray through the X,Y point in the
		  '// given view would intercept a horizontal plane at planeY.
		  '
		  'Dim Q,V, out As Vector3D
		  'Dim t As Double
		  '
		  'Q = ScreenToWorld(view, X, Y)
		  'V = Q.Minus(view.Camera.Position)
		  '
		  '// The desired plane is a Y plane, with normal N=<0, 1, 0>
		  '// and offset (D) at -planeY.  The intersection of
		  '// this plane and a line Q+t*V occurs at:
		  '//  t = -(N.Dot(Q) + D) / (N.Dot(V))
		  '//
		  '// But for our simple Y plane, this reduces to:
		  '//  t = -(Q.y + D) / V.y
		  '
		  'if v.y = 0 then
		  'return nil     // our ray is parallel to the floor, never intersects it
		  'end if
		  '
		  't = -(Q.y - planeY) / V.y
		  'return Q.Plus(V.Times(t))
		  
		End Function
	#tag EndMethod


	#tag Constant, Name = k2Pi, Type = Double, Dynamic = False, Default = \"6.2831853072", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDegrees, Type = Double, Dynamic = False, Default = \"0.0174532925", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPi, Type = Double, Dynamic = False, Default = \"3.1415926536", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPiOver2, Type = Double, Dynamic = False, Default = \"1.5707963268", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
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
End Module
#tag EndModule
