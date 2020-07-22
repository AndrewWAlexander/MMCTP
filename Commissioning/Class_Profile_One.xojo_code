#tag Class
Protected Class Class_Profile_One
	#tag Method, Flags = &h0
		Function Distance_Between_Two_Points(a as Class_Points, b as Class_Points) As Single
		  //----------------------------
		  // Find the distance between two points what have a certain value
		  //
		  //----------------------------
		  Dim range_x,range_y,range_z,range as Single
		  //----------------------------
		  
		  
		  if a=nil or b=nil Then
		    MessageBox "Error within Distance function"
		    Return -1
		  end
		  
		  range_x=b.x_cm-a.x_cm
		  range_y=b.y_cm-a.y_cm
		  range_z=b.z_cm-a.z_cm
		  range=Sqrt(range_x*range_x+range_y*range_y+range_z*range_z)
		  
		  Return range
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_DTA_from_Point(x as Single, y as Single, z as Single, Pvalue as Single, wd as Single) As Single
		  //-------------------------------
		  // From the DTA from x,y,z of value vv within Profile
		  //
		  // Updates
		  // Method added Dec 2015, AA
		  //-------------------------------
		  Dim i,num_points as Integer
		  Dim dx,dy,dz,distance_x, distance_y, distance_z,xx,b as Single
		  Dim range,range_x,range_y,range_z,range_side1,slope,nx,ny,nz,distance_mm as Single
		  //------------------------------------
		  
		  if UBound(Points)<1 Then
		    Return 0
		  end
		  
		  dx=Points(1).x_cm-Points(0).x_cm
		  dy=Points(1).y_cm-Points(0).y_cm
		  dz=Points(1).z_cm-Points(0).z_cm
		  
		  num_points=UBound(Points)+1
		  
		  distance_mm=wd
		  
		  for i=0 to UBound(Points)-1
		    
		    if (Get_Value_at_i(i)<= Pvalue and Pvalue<=Get_Value_at_i(i+1)) or  (Get_Value_at_i(i)>= Pvalue and Pvalue >=Get_Value_at_i(i+1)) Then
		      
		      //3D Interpolate along a line
		      
		      distance_x=x-Points(i).x_cm
		      distance_y=y-Points(i).y_cm
		      distance_z=z-Points(i).z_cm
		      
		      range_x=Points(i+1).x_cm-Points(i).x_cm
		      range_y=Points(i+1).y_cm-Points(i).y_cm
		      range_z=Points(i+1).z_cm-Points(i).z_cm
		      range=Sqrt(range_x*range_x+range_y*range_y+range_z*range_z)
		      
		      slope=(Get_Value_at_i(i+1)-Get_Value_at_i(i))/range
		      b=Get_Value_at_i(i)
		      
		      xx=(Pvalue-b)/slope
		      
		      nx=x*dx+Points(i).x_cm
		      ny=y*dy+Points(i).y_cm
		      nz=z*dz+Points(i).z_cm
		      
		      range_x=nx-x
		      range_y=ny-y
		      range_z=nz-z
		      range_side1=Sqrt(range_x*range_x+range_y*range_y+range_z*range_z)
		      
		      if range_side1<distance_mm Then
		        distance_mm=range_side1
		      end
		    end
		  next
		  
		  Return distance_mm
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Get_FieldWidth()
		  //--------------------------------------------------
		  // Calculate the beam width, and center of beam
		  //--------------------------------------------------
		  Dim value50 as Single
		  Dim listp(-1) as Class_Points
		  //--------------------------------------------------
		  
		  
		  // PDD check
		  if TYPE=1 Then
		    Return
		  end
		  
		  CAX_Dose=Get_Value_at_Point(0,0,Depth,false)
		  value50=0.5*CAX_Dose
		  listp=Get_Point_at_Value(value50)
		  
		  if UBound(listp)>0 Then
		    FieldWidth=Distance_Between_Two_Points(listp(0), listp(1))
		    Center_Point=Get_MidPoint(listp(0), listp(1))
		    
		    if TYPE=2 or TYPE=3 Then
		      if TYPE=2 Then
		        Centre=Center_Point.X_cm
		      elseif TYPE=3 Then
		        Centre=Center_Point.y_cm
		      end
		    else
		      Centre=FieldWidth
		    end
		  end
		  
		  Center_Point.Value=Get_Value_at_Point(Center_Point.X_cm,Center_Point.Y_cm,Center_Point.Z_cm,false)
		  
		  
		  Catch err As NilObjectException
		    MessageBox("Nil Object Error within Get Field Width")
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Get_Flatness()
		  //----------------------------------------
		  // Calculate the beam Flatness
		  //
		  //----------------------------------------
		  Dim i,kk as Integer
		  Dim Fwidth80 ,dmin,dmax,x,y,z,dx,dy,dz,num_points,ddrange as Single
		  Dim pp as Class_Points
		  //----------------------------------------
		  
		  
		  if TYPE=1 Then
		    Return
		  end
		  
		  
		  // Need to find 80% of beam width
		  Get_FieldWidth
		  
		  CAX_Dose=Get_Value_at_Point(0,0,Depth,false)
		  
		  num_points=UBound(Points)+1
		  
		  dx=(Pointa.X_cm-Pointb.X_cm)/num_points
		  dy=(Pointa.y_cm-Pointb.y_cm)/num_points
		  dz=(Pointa.z_cm-Pointb.z_cm)/num_points
		  
		  ddrange=Sqrt(dx*dx+dy*dy+dz*dz)
		  
		  dmin=Center_Point.Value
		  dmax=dmin
		  
		  Fwidth80=FieldWidth*.8
		  kk=Round(Fwidth80/ddrange)
		  
		  
		  for i =0 to kk
		    pp = new Class_Points
		    
		    pp.X_cm=Center_Point.X_cm+dx*(i-kk/2)
		    pp.y_cm=Center_Point.y_cm+dy*(i-kk/2)
		    pp.z_cm=Center_Point.z_cm+dz*(i-kk/2)
		    
		    
		    pp.Value=Get_Value_at_Point(pp.X_cm,pp.Y_cm,pp.Z_cm,false)
		    if pp.Value>dmax Then
		      dmax=pp.Value
		    end
		    if pp.Value<dmin Then
		      dmin=pp.Value
		    end
		  Next
		  
		  
		  Flatness=100*(dmax-dmin)/(dmin+dmax)
		  
		  
		  Catch err As NilObjectException
		    MessageBox("Error within Get Flatness")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_MidPoint(a as Class_Points, b as Class_Points) As Class_Points
		  //--------------------------------
		  Dim i as Integer
		  Dim bb as Class_Points
		  //--------------------------------
		  
		  bb=new Class_Points
		  
		  
		  if TYPE=2 or TYPE=3 Then
		    if TYPE=2 Then
		      bb.X_cm=(a.X_cm+b.X_cm)/2
		      bb.Z_cm=a.Z_cm
		      bb.Y_cm=a.Y_cm
		    elseif TYPE=3 Then
		      bb.y_cm=(a.y_cm+b.y_cm)/2
		      bb.X_cm=a.X_cm
		      bb.Z_cm=a.Z_cm
		    end
		  else // Distance
		    bb.X_cm=(a.X_cm+b.X_cm)/2
		    bb.Z_cm=(a.z_cm+b.z_cm)/2
		    bb.Y_cm=(a.y_cm+b.y_cm)/2
		  end
		  
		  Return bb
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Get_PDD_Values()
		  //--------------------------------------------------
		  // Calculate the PDD beam Values
		  //--------------------------------------------------
		  //--------------------------------------------------
		  
		  Update_Profile
		  
		  
		  D_5=Get_Value_at_Point(0,0,5,false)*100/MaxPoint.Value
		  D_10=Get_Value_at_Point(0,0,10,false)*100/MaxPoint.Value
		  D_15=Get_Value_at_Point(0,0,15,false)*100/MaxPoint.Value
		  D_20=Get_Value_at_Point(0,0,20,false)*100/MaxPoint.Value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Get_Penumbra()
		  //----------------------------------------
		  // Calculate the beam Penumbra
		  //
		  //----------------------------------------
		  Dim i as Integer
		  Dim value20, value80 as Single
		  Dim lista(-1),listb(-1) as Class_Points
		  //----------------------------------------
		  
		  CAX_Dose=Get_Value_at_Point(0,0,Depth,false)
		  
		  value20=0.2*CAX_Dose
		  value80=0.8*CAX_Dose
		  
		  lista=Get_Point_at_Value(value20)
		  listb=Get_Point_at_Value(value80)
		  
		  if UBound(lista)<1 or UBound(listb)<1 Then
		    Return
		  end
		  
		  
		  Penumbra_Pointa=lista(0)
		  Penumbra_Pointb=listb(0)
		  
		  Penumbra_Pointc=lista(1)
		  Penumbra_Pointd=listb(1)
		  
		  
		  Penumbra_a=Distance_Between_Two_Points(Penumbra_Pointa,Penumbra_Pointb)
		  Penumbra_b=Distance_Between_Two_Points(Penumbra_Pointc,Penumbra_Pointd)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_Point_at_Distance(dis_points as Single) As Class_Points
		  //----------------------------
		  // Find the Point position at a known distance
		  //
		  //----------------------------
		  Dim i as Integer
		  Dim slope,a,b,range_x,range_y,range_z,range1,range2 as Single
		  Dim p as new Class_Points
		  //----------------------------
		  
		  
		  p = new Class_Points
		  range1=Distance_Between_Two_Points(Points(0),Points(UBound(Points)))
		  
		  if dis_points<range1 Then
		    // Distance is less than the total range , good
		    //Interpolate
		    
		    range2=Distance_Between_Two_Points(Points(1),Points(0))
		    
		    i=Round(dis_points/range2)
		    p.X_cm=Points(i).x_cm
		    p.y_cm=Points(i).y_cm
		    p.z_cm=Points(i).z_cm
		    p.Value=Points(i).value
		  end
		  
		  Return p
		  
		  
		  Exception errs As NilObjectException
		    MessageBox("Nil Object Error within Class Profile One - Get Point")
		    
		    
		    
		    
		    
		    
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_Point_at_Value(dvalue as Single) As Class_Points()
		  //----------------------------
		  // Find the list of points what have a certain value
		  //
		  //----------------------------
		  Dim i as Integer
		  Dim slope,a,b,range_x,range_y,range_z,range,c as Single
		  Dim pp(-1) as Class_Points
		  Dim p as new Class_Points
		  //----------------------------
		  
		  
		  for i=0 to UBound(Points)-1
		    
		    if Norm Then
		      b=Points(i).Value*100/Normalize_value
		      c=Points(i+1).Value*100/Normalize_value
		    else
		      b=Points(i).Value
		      c=Points(i+1).Value
		    end
		    
		    
		    if (b<= dvalue and dvalue<=c)  or (b>= dvalue and dvalue >=c )Then
		      //Interpolate
		      range_x=Points(i+1).x_cm-Points(i).x_cm
		      range_y=Points(i+1).y_cm-Points(i).y_cm
		      range_z=Points(i+1).z_cm-Points(i).z_cm
		      range=Sqrt(range_x*range_x+range_y*range_y+range_z*range_z)
		      
		      
		      slope=(c-b)/range
		      a=(dvalue-b)/slope
		      p = new Class_Points
		      p.X_cm=(a/range)*range_x +Points(i).x_cm
		      p.y_cm=(a/range)*range_y+Points(i).y_cm
		      p.z_cm=(a/range)*range_z+Points(i).z_cm
		      p.Value=dvalue
		      pp.Append p
		    end
		  next
		  Return pp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Get_Properties()
		  Get_FieldWidth
		  Get_Penumbra
		  Get_Symmetry
		  Get_Flatness
		  Get_PDD_Values
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Get_Symmetry()
		  //--------------------------------------------------
		  // Calculate the beam Symmetry
		  //--------------------------------------------------
		  Dim i as Integer
		  Dim areaL, areaR,xx as Single
		  //--------------------------------------------------
		  
		  areaL=0
		  areaR=0
		  for i =0 to UBound(Points)
		    if TYPE=2 Then
		      xx=Points(i).X_cm
		    elseif TYPE=3 Then
		      // y profile
		      xx= Points(i).y_cm
		    end
		    
		    if xx>0 Then
		      areaR=areaR+Points(i).Value
		    elseif xx<0 Then
		      areaL=areaL+Points(i).Value
		    end
		    
		    
		  Next
		  
		  Symmetry=100*(areaR-areaL)/(areaR+areaL)
		  
		  
		  
		  // Old symmetry code
		  'x_value=dx
		  'count=0
		  'sym=0
		  'While x_value<5
		  'a=pp.GetDoseValue_X(x_value)
		  'a=pp.GetDoseValue_X(-x_value)
		  '
		  'sym=sym+abs((a-b)/a)
		  'count=count+1
		  'x_value=x_value+dx
		  'Wend
		  '
		  'sym=sym/count
		  'ListBox_Profiles.CellValueAt(0,1)=str(sym)
		  '
		  'x_value=dx
		  'count=0
		  'sym=0
		  'While x_value<10
		  'a=pp.GetDoseValue_X(x_value)
		  'a=pp.GetDoseValue_X(-x_value)
		  '
		  'sym=sym+abs((a-b)/a)
		  'count=count+1
		  'x_value=x_value+dx
		  'Wend
		  '
		  'sym=sym/count
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_Value_at_i(i as Integer) As Single
		  //-------------------------------
		  // Get the value at a point
		  //
		  //-------------------------------
		  Dim dx as Single
		  //------------------------------------
		  
		  
		  
		  if Norm Then
		    dx=100*Points(i).Value/Normalize_value
		  else
		    dx=Points(i).Value
		  end
		  
		  
		  
		  Return dx
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_Value_at_Point(x as Single, y as Single, z as Single, nn as Boolean) As Single
		  //-------------------------------
		  // Interpolate dose at a point
		  //
		  //-------------------------------
		  Dim i, num_points as Integer
		  Dim dx,dy,dz,vv,a,b,distance_x, distance_y, distance_z,range,range_x,range_y,range_z,range_side1, range_side2,slope,p1,p2 as Single
		  //------------------------------------
		  
		  
		  if UBound(Points)<1 Then
		    Return 0
		  end
		  
		  dx=Points(1).x_cm-Points(0).x_cm
		  dy=Points(1).y_cm-Points(0).y_cm
		  dz=Points(1).z_cm-Points(0).z_cm
		  
		  num_points=UBound(Points)+1
		  
		  
		  for i=0 to UBound(Points)-1
		    if (Points(i).x_cm<= x and x<=Points(i+1).x_cm) or  (Points(i).x_cm>= x and x >=Points(i+1).x_cm) Then
		      if (Points(i).y_cm<= y and y<=Points(i+1).y_cm) or (Points(i).y_cm>= y and y>=Points(i+1).y_cm) Then
		        if (Points(i).z_cm<= z and z<=Points(i+1).z_cm) or (Points(i).z_cm>= z and z>=Points(i+1).z_cm) or dz=0 Then
		          //3D Interpolate along a line
		          
		          distance_x=x-Points(i).x_cm
		          distance_y=y-Points(i).y_cm
		          distance_z=z-Points(i).z_cm
		          
		          range_x=Points(i+1).x_cm-Points(i).x_cm
		          range_y=Points(i+1).y_cm-Points(i).y_cm
		          range_z=Points(i+1).z_cm-Points(i).z_cm
		          range=Sqrt(range_x*range_x+range_y*range_y+range_z*range_z)
		          
		          range_x=x-Points(i).x_cm
		          range_y=y-Points(i).y_cm
		          range_z=z-Points(i).z_cm
		          range_side1=Sqrt(range_x*range_x+range_y*range_y+range_z*range_z)
		          
		          range_x=Points(i+1).x_cm-x
		          range_y=Points(i+1).y_cm-y
		          range_z=Points(i+1).z_cm-z
		          range_side2=Sqrt(range_x*range_x+range_y*range_y+range_z*range_z)
		          
		          if nn Then
		            // For raw value lookup
		            p1=Points(i).Value
		            p2=Points(i+1).Value
		          else
		            p1=Get_Value_at_i(i)
		            p2=Get_Value_at_i(i+1)
		          end
		        end
		        
		        slope=(p2-p1)/range
		        
		        vv=slope*(range_side1)+p1
		        
		        Return vv
		        exit
		      end
		    end
		    
		  next
		  
		  
		  Return 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_X_at_Y(Y as Single) As Single
		  //-----------------------------
		  //
		  //
		  //-----------------------------
		  Dim i as Integer
		  Dim slope,out as Single
		  //-----------------------------
		  
		  For i =0 to UBound(Points)-1
		    if (Points(i).y_cm<=y and Points(i+1).Y_cm>=y ) or (Points(i).y_cm>=y and Points(i+1).Y_cm<=y ) Then
		      slope=(Points(i+1).x_cm-Points(i).x_cm)/(Points(i+1).y_cm-Points(i).y_cm)
		      out=slope*(y-Points(i).y_cm)+Points(i).x_cm
		      Return out
		    end
		  Next
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_X_at_Z(Z as Single) As Single
		  //-----------------------------
		  //
		  //
		  //-----------------------------
		  Dim i as Integer
		  Dim slope,out as Single
		  //-----------------------------
		  
		  For i =0 to UBound(Points)-1
		    if (Points(i).z_cm<=z and Points(i+1).z_cm>=z ) or (Points(i).z_cm>=z and Points(i+1).z_cm<=z ) Then
		      slope=(Points(i+1).x_cm-Points(i).x_cm)/(Points(i+1).z_cm-Points(i).z_cm)
		      out=slope*(z-Points(i).z_cm)+Points(i).x_cm
		      Return out
		    end
		  Next
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_Y_at_X(X as Single) As Single
		  //-----------------------------
		  //
		  //
		  //-----------------------------
		  Dim i as Integer
		  Dim slope,out as Single
		  //-----------------------------
		  
		  For i =0 to UBound(Points)-1
		    if (Points(i).X_cm<=x and Points(i+1).X_cm>=x ) or (Points(i).X_cm>=x and Points(i+1).X_cm<=x ) Then
		      slope=(Points(i+1).y_cm-Points(i).y_cm)/(Points(i+1).X_cm-Points(i).X_cm)
		      out=slope*(x-Points(i).X_cm)+Points(i).y_cm
		      Return out
		    end
		  Next
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_Y_at_Z(Z as Single) As Single
		  //-----------------------------
		  //
		  //
		  //-----------------------------
		  Dim i as Integer
		  Dim slope,out as Single
		  //-----------------------------
		  
		  For i =0 to UBound(Points)-1
		    if (Points(i).z_cm<=z and Points(i+1).z_cm>=z ) or (Points(i).z_cm>=z and Points(i+1).z_cm<=z ) Then
		      slope=(Points(i+1).y_cm-Points(i).y_cm)/(Points(i+1).z_cm-Points(i).z_cm)
		      out=slope*(z-Points(i).z_cm)+Points(i).y_cm
		      Return out
		    end
		  Next
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_Z_at_X(X as Single) As Single
		  //-----------------------------
		  //
		  //
		  //-----------------------------
		  Dim i as Integer
		  Dim slope,out as Single
		  //-----------------------------
		  
		  For i =0 to UBound(Points)-1
		    if (Points(i).X_cm<=x and Points(i+1).X_cm>=x ) or (Points(i).X_cm>=x and Points(i+1).X_cm<=x ) Then
		      slope=(Points(i+1).z_cm-Points(i).z_cm)/(Points(i+1).X_cm-Points(i).X_cm)
		      out=slope*(x-Points(i).X_cm)+Points(i).z_cm
		      Return out
		    end
		  Next
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_Z_at_Y(Y as Single) As Single
		  //-----------------------------
		  //
		  //
		  //-----------------------------
		  Dim i as Integer
		  Dim slope,out as Single
		  //-----------------------------
		  
		  For i =0 to UBound(Points)-1
		    if (Points(i).Y_cm<=y and Points(i+1).Y_cm>=Y ) or (Points(i).Y_cm>=Y and Points(i+1).Y_cm<=Y ) Then
		      slope=(Points(i+1).z_cm-Points(i).z_cm)/(Points(i+1).Y_cm-Points(i).Y_cm)
		      out=slope*(y-Points(i).Y_cm)+Points(i).z_cm
		      Return out
		    end
		  Next
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Is_Within(a as Class_Points, b as Class_Points, c as Class_Points) As Boolean
		  //--------------------------------
		  Dim i as Integer
		  Dim bb as Boolean
		  //--------------------------------
		  
		  
		  if TYPE=2 Then
		    if (a.X_cm<=c.X_cm and c.X_cm <= b.X_cm) or   (a.X_cm>=c.X_cm and c.X_cm >= b.X_cm) Then
		      Return True
		    end
		  elseif TYPE=3 Then
		    if (a.y_cm<=c.y_cm and c.y_cm <= b.y_cm) or   (a.y_cm>=c.y_cm and c.y_cm >= b.y_cm) Then
		      Return True
		    end
		  end
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub New_Profile()
		  Colour=gProfiles.Make_Colour
		  Pointa=new Class_Points
		  Pointb=new Class_Points
		  MaxPoint=new Class_Points
		  Center_Point=new Class_Points
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Swap_XY_Profile()
		  //--------------------------------------------------
		  // 
		  //--------------------------------------------------
		  Dim i as Integer
		  Dim xx as Single
		  //--------------------------------------------------
		  
		  
		  
		  if TYPE=2 Then
		    TYPE=3
		  elseif TYPE=3 Then
		    TYPE=2
		  end
		  
		  
		  for i =0 to UBound(Points)
		    xx=Points(i).X_cm
		    Points(i).X_cm=Points(i).Y_cm
		    Points(i).y_cm=xx
		  Next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Profile()
		  //---------------------------------
		  Dim k as Integer
		  Dim gg,y,x,z as Single
		  //---------------------------------
		  
		  
		  if MaxPoint=Nil Then
		    MaxPoint=new Class_Points
		  end
		  
		  if UBound(Points)=-1 Then
		    Return
		  end
		  
		  
		  if Norm Then
		    gg=Points(0).value*100/Normalize_value
		  else
		    gg=Points(0).value //This line causes the problem
		  end
		  
		  
		  for k=0 to UBound(Points)
		    if Points(k).value>gg Then
		      
		      if Norm Then
		        gg=Points(k).value*100/Normalize_value
		      else
		        gg=Points(k).value
		      end
		      
		      MaxPoint=Points(k)
		    end
		  next
		  
		  Pointa=Points(0) //If commented, it's this one instead
		  Pointb=Points(UBound(Points))
		  
		  x=Pointb.X_cm-Pointa.X_cm
		  y=Pointb.Y_cm-Pointa.Y_cm
		  z=Pointb.Z_cm-Pointa.Z_cm
		  Distance=Sqrt(x*x+y*y+z*z)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		AddOn As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Algorithm As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Bar_graph As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Bar_width As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		BEAM_ID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CAX_Dose As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Center_Max_Diff As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Center_Mean_Diff As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Center_Min_Diff As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Center_Point As class_points
	#tag EndProperty

	#tag Property, Flags = &h0
		Center_SD As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Centre As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Chi As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Colour As color
	#tag EndProperty

	#tag Property, Flags = &h0
		Comment As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Date As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Depth As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Distance As single
	#tag EndProperty

	#tag Property, Flags = &h0
		DTA(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		D_10 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		D_15 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		D_20 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		D_5 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Energy As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		FieldWidth As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Field_X As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Field_Y As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Flatness As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Gamma_Value As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Label As string = "data1"
	#tag EndProperty

	#tag Property, Flags = &h0
		Linac As String
	#tag EndProperty

	#tag Property, Flags = &h0
		MaxPoint As class_points
	#tag EndProperty

	#tag Property, Flags = &h0
		Norm As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Normalize_value As single = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		Penumbra_a As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Penumbra_b As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Penumbra_DTA As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Penumbra_Max As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Penumbra_Min As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Penumbra_Pointa As class_points
	#tag EndProperty

	#tag Property, Flags = &h0
		Penumbra_Pointb As class_points
	#tag EndProperty

	#tag Property, Flags = &h0
		Penumbra_Pointc As class_points
	#tag EndProperty

	#tag Property, Flags = &h0
		Penumbra_Pointd As class_points
	#tag EndProperty

	#tag Property, Flags = &h0
		Penumbra_SD As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Plane_value_cm As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Pointa As class_points
	#tag EndProperty

	#tag Property, Flags = &h0
		Pointb As class_points
	#tag EndProperty

	#tag Property, Flags = &h0
		Points(-1) As Class_Points
	#tag EndProperty

	#tag Property, Flags = &h0
		Point_Size As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Profile_Width As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Radiation_Type As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Show As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Show_Commissioning As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		show_line As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		Show_Marker As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			// 0 = Measured
			
			// 1 = Calculated
		#tag EndNote
		Source_TYPE As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		SSD As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Symbol As Integer = 2
	#tag EndProperty

	#tag Property, Flags = &h0
		Symmetry As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			// 0 = User
			// 1 = PDD
			// 2 = PROFILE X
			// 3 = Porfile Y
		#tag EndNote
		TYPE As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Umbra_Max_Diff As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Umbra_Mean_Diff As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Umbra_Min_Diff As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Umbra_SD As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Units_x As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Units_y As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Units_z As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Value_Label As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Value_Units As string
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			1= Commissinging
			2= User
		#tag EndNote
		WType As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		X_label As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Y_label As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Z_label As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AddOn"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Algorithm"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bar_graph"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bar_width"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BEAM_ID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CAX_Dose"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Center_Max_Diff"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Center_Mean_Diff"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Center_Min_Diff"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Center_SD"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Centre"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Chi"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Colour"
			Visible=false
			Group="Behavior"
			InitialValue="&h000000"
			Type="color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Comment"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Date"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Depth"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Distance"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="D_10"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="D_15"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="D_20"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="D_5"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Energy"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FieldWidth"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Field_X"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Field_Y"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Flatness"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Gamma_Value"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
			Name="Label"
			Visible=false
			Group="Behavior"
			InitialValue="data1"
			Type="string"
			EditorType="MultiLineEditor"
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
			Name="Linac"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="Norm"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Normalize_value"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Penumbra_a"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Penumbra_b"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Penumbra_DTA"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Penumbra_Max"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Penumbra_Min"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Penumbra_SD"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Plane_value_cm"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Point_Size"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Profile_Width"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Radiation_Type"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Show"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Show_Commissioning"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="show_line"
			Visible=false
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Show_Marker"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Source_TYPE"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SSD"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
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
			Name="Symbol"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Symmetry"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
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
			Name="TYPE"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Umbra_Max_Diff"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Umbra_Mean_Diff"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Umbra_Min_Diff"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Umbra_SD"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Units_x"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Units_y"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Units_z"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Value_Label"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Value_Units"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WType"
			Visible=false
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="X_label"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y_label"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Z_label"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
