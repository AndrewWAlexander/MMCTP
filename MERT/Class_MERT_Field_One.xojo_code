#tag Class
Protected Class Class_MERT_Field_One
	#tag Method, Flags = &h0
		Sub Depth_IsoValues(Z(,) as single,  X() as single, Y() as single)
		  '=============================================================================
		  '     CONREC is a contouring subroutine for rectangularily spaced data.
		  '
		  '     It emits calls to a line drawing subroutine supplied by the user
		  '     which draws a contour map corresponding to real*4 (double) data
		  '     on a randomly spaced rectangular grid.
		  '     The coordinates emitted are in the same units given in the X() and Y() arrays.
		  '     Any number of contour levels may be specified but they must be
		  '     in order of increasing value.
		  '
		  '     adapted from the fortran-77 routine CONREC.F developed by Paul D. Bourke
		  '=============================================================================
		  Dim Nullcode,temp1,temp2,dmin,dmax as Single
		  Dim nc, im(4), jm(4), castab(3, 3, 3),j,i,k,m As Integer
		  dim  ilb,iub,jlb,jub as integer' index bounds of data matrix (x-lower,x-upper,y-lower,y-upper)
		  Dim h(5), xh(5), yh(5) As Single
		  Dim sh(5),m1, m2, m3,case_value As Integer
		  Dim x1, x2, y1, y2 As Single
		  Dim Line as Class_Line
		  //------------------------------------------------------------------
		  
		  
		  ReDim Isolines_Main(-1)
		  
		  jlb=0
		  jub =ubound(Y)
		  ilb=0
		  iub= ubound(X)
		  Nullcode = 1e+37
		  // number of contour levels
		  nc=ubound(Window_EMET_Setup.Iso_Values.values)
		  im(0) = 0
		  im(1) = 1
		  im(2) = 1
		  im(3) = 0
		  jm(0) = 0
		  jm(1) = 0
		  jm(2) = 1
		  jm(3) = 1
		  castab(0, 0, 0) = 0
		  castab(0, 0, 1) = 0
		  castab(0, 0, 2) = 8 '
		  castab(0, 1, 0) = 0
		  castab(0, 1, 1) = 2
		  castab(0, 1, 2) = 5 '
		  castab(0, 2, 0) = 7
		  castab(0, 2, 1) = 6
		  castab(0, 2, 2) = 9 '
		  castab(1, 0, 0) = 0
		  castab(1, 0, 1) = 3
		  castab(1, 0, 2) = 4 '
		  castab(1, 1, 0) = 1
		  castab(1, 1, 1) = 3
		  castab(1, 1, 2) = 1 '
		  castab(1, 2, 0) = 4
		  castab(1, 2, 1) = 3
		  castab(1, 2, 2) = 0 '
		  castab(2, 0, 0) = 9
		  castab(2, 0, 1) = 6
		  castab(2, 0, 2) = 7 '
		  castab(2, 1, 0) = 5
		  castab(2, 1, 1) = 2
		  castab(2, 1, 2) = 0 '
		  castab(2, 2, 0) = 8
		  castab(2, 2, 1) = 0
		  castab(2, 2, 2) = 0 '
		  If nc <> -1 Then
		    For j = jub - 1 downTo jlb
		      For i = ilb To iub - 1
		        temp1 = Min(Z(i, j), Z(i, j + 1))
		        temp2 = Min(Z(i + 1, j), Z(i + 1, j + 1))
		        dmin = Min(temp1, temp2)
		        temp1 = Max(Z(i, j), Z(i, j + 1))
		        temp2 = Max(Z(i + 1, j), Z(i + 1, j + 1))
		        dmax = Max(temp1, temp2)
		        
		        '-------------------------------------------------------------------------
		        'extra conditional added here to insure that large values are not plotted
		        'if an area should not be contoured, values above nullcode should be entered in
		        'the matrix Z
		        
		        '------------------------------------------------------------------------
		        If dmax >= Window_EMET_Setup.Iso_Values.values(0) And dmin <= Window_EMET_Setup.Iso_Values.values(nc) And dmax < Nullcode Then
		          For k = 0 To nc
		            If Window_EMET_Setup.Iso_Values.values(k) >= dmin And Window_EMET_Setup.Iso_Values.values(k) < dmax and Window_EMET_Setup.Iso_Values.each_show(k) Then
		              //g.foreColor=values.colours(k)
		              //g.PenWidth=gvis.iso.thickness
		              For m = 4 downTo 0
		                If (m > 0) Then
		                  h(m) = Z(i + im(m - 1), j + jm(m - 1)) - Window_EMET_Setup.Iso_Values.values(k)
		                  xh(m) =X(i + im(m - 1))
		                  yh(m) = Y(j + jm(m - 1))
		                Else
		                  h(0) = 0.25 * (h(1) + h(2) + h(3) + h(4))
		                  xh(0) = 0.5 * (X(i) + X(i + 1))
		                  yh(0) = 0.5 * (Y(j) + Y(j + 1))
		                End If
		                If (h(m) > 0) Then
		                  sh(m) = 1
		                ElseIf h(m) < 0 Then
		                  sh(m) = -1
		                Else
		                  sh(m) = 0
		                End If
		              Next m
		              
		              '=================================================================
		              '
		              ' Note: at this stage the relative heights of the corners and the
		              ' centre are in the h array, and the corresponding coordinates are
		              ' in the xh and yh arrays. The centre of the box is indexed by 0
		              ' and the 4 corners by 1 to 4 as shown below.
		              ' Each triangle is then indexed by the parameter m, and the 3
		              ' vertices of each triangle are indexed by parameters m1,m2,and m3.
		              ' It is assumed that the centre of the box is always vertex 2
		              ' though this isimportant only when all 3 vertices lie exactly on
		              ' the same contour level, in which case only the side of the box
		              ' is drawn.
		              '
		              '
		              '      vertex 4 +-------------------+ vertex 3
		              '               | \               / |
		              '               |   \    m-3    /   |
		              '               |     \       /     |
		              '               |       \   /       |
		              '               |  m=2    X   m=2   |       the centre is vertex 0
		              '               |       /   \       |
		              '               |     /       \     |
		              '               |   /    m=1    \   |
		              '               | /               \ |
		              '      vertex 1 +-------------------+ vertex 2
		              '
		              '
		              '
		              '               Scan each triangle in the box
		              '
		              
		              '=================================================================
		              For m = 1 To 4
		                m1 = m
		                m2 = 0
		                If (m <> 4) Then
		                  m3 = m + 1
		                Else
		                  m3 = 1
		                End If
		                case_value = castab(sh(m1) + 1, sh(m2) + 1, sh(m3) + 1)
		                If case_value <> 0 Then
		                  Select Case case_value
		                    
		                    '===========================================================
		                    '     Case 1 - Line between vertices 1 and 2
		                    
		                    '===========================================================
		                  Case 1
		                    x1 = xh(m1)
		                    y1 = yh(m1)
		                    x2 = xh(m2)
		                    y2 = yh(m2)
		                    
		                    '===========================================================
		                    '     Case 2 - Line between vertices 2 and 3
		                    
		                    '===========================================================
		                  Case 2
		                    x1 = xh(m2)
		                    y1 = yh(m2)
		                    x2 = xh(m3)
		                    y2 = yh(m3)
		                    
		                    '===========================================================
		                    '     Case 3 - Line between vertices 3 and 1
		                    
		                    '===========================================================
		                  Case 3
		                    x1 = xh(m3)
		                    y1 = yh(m3)
		                    x2 = xh(m1)
		                    y2 = yh(m1)
		                    
		                    '===========================================================
		                    '     Case 4 - Line between vertex 1 and side 2-3
		                    
		                    '===========================================================
		                  Case 4
		                    x1 = xh(m1)
		                    y1 = yh(m1)
		                    x2 = (h(m3) * xh(m2) - h(m2) * xh(m3)) / (h(m3) - h(m2))
		                    y2 = (h(m3) * yh(m2) - h(m2) * yh(m3)) / (h(m3) - h(m2))
		                    
		                    
		                    '===========================================================
		                    '     Case 5 - Line between vertex 2 and side 3-1
		                    
		                    '===========================================================
		                  Case 5
		                    x1 = xh(m2)
		                    y1 = yh(m2)
		                    x2 = (h(m1) * xh(m3) - h(m3) * xh(m1)) / (h(m1) - h(m3))
		                    y2 = (h(m1) * yh(m3) - h(m3) * yh(m1)) / (h(m1) - h(m3))
		                    
		                    '===========================================================
		                    '     Case 6 - Line between vertex 3 and side 1-2
		                    
		                    '===========================================================
		                  Case 6
		                    x1 = xh(m3)
		                    y1 = yh(m3)
		                    x2 = (h(m2) * xh(m1) - h(m1) * xh(m2)) / (h(m2) - h(m1))
		                    y2 = (h(m2) * yh(m1) - h(m1) * yh(m2)) / (h(m2) - h(m1))
		                    
		                    '===========================================================
		                    '     Case 7 - Line between sides 1-2 and 2-3
		                    
		                    '===========================================================
		                  Case 7
		                    x1 = (h(m2) * xh(m1) - h(m1) * xh(m2)) / (h(m2) - h(m1))
		                    y1 = (h(m2) * yh(m1) - h(m1) * yh(m2)) / (h(m2) - h(m1))
		                    x2 = (h(m3) * xh(m2) - h(m2) * xh(m3)) / (h(m3) - h(m2))
		                    y2 = (h(m3) * yh(m2) - h(m2) * yh(m3)) / (h(m3) - h(m2))
		                    
		                    
		                    '===========================================================
		                    '     Case 8 - Line between sides 2-3 and 3-1
		                    
		                    '===========================================================
		                  Case 8
		                    x1 = (h(m3) * xh(m2) - h(m2) * xh(m3)) / (h(m3) - h(m2))
		                    y1 = (h(m3) * yh(m2) - h(m2) * yh(m3)) / (h(m3) - h(m2))
		                    x2 = (h(m1) * xh(m3) - h(m3) * xh(m1)) / (h(m1) - h(m3))
		                    y2 = (h(m1) * yh(m3) - h(m3) * yh(m1)) / (h(m1) - h(m3))
		                    
		                    '===========================================================
		                    '     Case 9 - Line between sides 3-1 and 1-2
		                    
		                    '===========================================================
		                  Case 9
		                    x1 = (h(m1) * xh(m3) - h(m3) * xh(m1)) / (h(m1) - h(m3))
		                    y1 = (h(m1) * yh(m3) - h(m3) * yh(m1)) / (h(m1) - h(m3))
		                    x2 = (h(m2) * xh(m1) - h(m1) * xh(m2)) / (h(m2) - h(m1))
		                    y2 = (h(m2) * yh(m1) - h(m1) * yh(m2)) / (h(m2) - h(m1))
		                  End Select
		                  '--------------------------------------------------------------
		                  'this is where the program specific drawing routine comes in.
		                  'This specific command will work well for a properly dimensioned
		                  'vb picture box or vb form (where "Form1" is the name of the form)
		                  
		                  '-------------------------------------------------------------------
		                  
		                  'from x1 in cm, now go to pixel value
		                  'scale width (cm/pixel)
		                  'scale image is zoom of image
		                  'buffer is the pan offset
		                  
		                  
		                  
		                  
		                  Line=new Class_Line
		                  
		                  Line.X1=x1
		                  Line.y1=y1
		                  
		                  Line.x2=x2
		                  Line.y2=y2
		                  
		                  Line.Colour=Window_EMET_Setup.Iso_Values.colours(k)
		                  Isolines_Main.Append line
		                  
		                  
		                  
		                  '-------------------------------------------------------------------
		                End If
		              Next m
		            End If
		          Next k
		        End If
		      Next i
		    Next j
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PolyIso()
		  //-------------------------------------------------
		  //
		  //
		  //-------------------------------------------------
		  Dim i,x,y,nc,x1,y1,y2,x2,k,xmin,xmax,ymin,ymax as Integer
		  Dim FF as Class_FLEC
		  Dim xmin_cm,ymin_cm,xmax_cm,ymax_cm as Single
		  //-------------------------------------------------
		  
		  Plot_PolyIso=new Picture(Plot.Width,Plot.Height,32)
		  nc=ubound(Window_EMET_Setup.Iso_Values.values)
		  
		  for i=0 to nc
		    Plot_PolyIso.Graphics.ForeColor=Window_EMET_Setup.Iso_Values.colours(i)
		    xmin=1000
		    ymin=1000
		    xmax=-100
		    ymax=-100
		    for k=0 to UBound(Isolines_Main)
		      if Isolines_Main(k).Colour=Window_EMET_Setup.Iso_Values.colours(i) Then
		        x1=Round((Isolines_Main(k).x1-(X_offset-Del_x/2))/Del_x)
		        y1=Round((-Isolines_Main(k).y1+(Y_offset+gVis.scale_thickness/2))/gvis.scale_thickness)
		        x2=Round((Isolines_Main(k).x2-(X_offset-Del_x/2))/Del_x)
		        y2=Round((-Isolines_Main(k).y2+(Y_offset+gVis.scale_thickness/2))/gvis.scale_thickness)
		        if x1>xmax Then
		          xmax=x1
		        end
		        if x2>xmax Then
		          xmax=x2
		        end
		        if x1<xmin Then
		          xmin=x1
		        end
		        if x2<xmin Then
		          xmin=x2
		        end
		        if y1>ymax Then
		          ymax=y1
		        end
		        if y2>ymax Then
		          ymax=y2
		        end
		        if y1<ymin Then
		          ymin=y1
		        end
		        if y2<ymin Then
		          ymin=y2
		        end
		      end
		    next
		    
		    if xmin<>1000 and xmax<>-100 Then
		      Plot_PolyIso.Graphics.FillRect xmin,ymin,xmax-xmin,ymax-ymin
		    end
		  next
		  
		  
		  
		  nc=ubound(Window_EMET_Setup.Iso_Values.values)
		  
		  for i=0 to nc
		    xmin=1000
		    ymin=1000
		    xmax=-100
		    ymax=-100
		    for x=0 to Plot_PolyIso.Width 
		      for y=0 to Plot_PolyIso.Height
		        if Plot_PolyIso.RGBSurface.Pixel(x,y)=Window_EMET_Setup.Iso_Values.colours(i) Then
		          if x>xmax Then
		            xmax=x
		          end
		          if x<xmin Then
		            xmin=x
		          end
		          if y>ymax Then
		            ymax=y
		          end
		          if y<ymin Then
		            ymin=y
		          end
		        end
		      next
		    next
		    
		    if xmin<>1000 and xmax<>-100 Then
		      
		      xmin_cm=xmin*Del_x+X_offset-Del_x/2
		      xmax_cm=xmax*Del_x+X_offset-Del_x/2
		      ymin_cm=-(ymin*gvis.scale_thickness-(Y_offset+gVis.scale_thickness/2))
		      ymax_cm=-(ymax*gvis.scale_thickness-(Y_offset+gVis.scale_thickness/2))
		      
		      ff=new Class_FLEC
		      Rect_Depth_Fields.Append ff
		      
		      ff.x1=-xmin_cm+.25
		      ff.x2=xmax_cm+.25
		      ff.y1=-1*(ymax_cm-isoZ+.25)
		      ff.y2=-1*(isoZ-ymin_cm+.25)
		      
		    end
		    
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		AvgDistDepth As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Coronal_Depths(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Coronal_Slices(-1) As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		Del_x As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Del_Y As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Distal_Depth(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Fields(-1) As Class_MERT_Field_Sub
	#tag EndProperty

	#tag Property, Flags = &h0
		Gantry As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Isolines_Main(-1) As Class_Line
	#tag EndProperty

	#tag Property, Flags = &h0
		isoX As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		isoY As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		isoZ As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		MaxDistalDepth As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Max_D(-1,-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		MinDistalDepth As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Normal_Slices(-1) As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		nx As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		nz As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Plot As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		Plot_PolyIso As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		Rect_Depth_Fields(-1) As Class_FLEC
	#tag EndProperty

	#tag Property, Flags = &h0
		Rotated_Slices(-1) As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		X(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		X_offset As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Y(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Y_offset As Single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AvgDistDepth"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Del_x"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Del_Y"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Gantry"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
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
			Name="isoX"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="isoY"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="isoZ"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
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
			Name="MaxDistalDepth"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinDistalDepth"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
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
			Name="nx"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="nz"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Plot"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Plot_PolyIso"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Picture"
			EditorType=""
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="X_offset"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y_offset"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
