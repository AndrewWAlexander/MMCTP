#tag Class
Protected Class Canvas_EMET
Inherits Canvas
	#tag Event
		Sub MouseEnter()
		  me.SetFocus
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  //------------------------
		  //draw the position
		  //------------------------
		  
		  if X>=me.x_bottom and X<=me.x_top then
		    x_mouse=X
		    Sx
		  end
		  if y<=me.y_bottom and y>=me.y_top Then
		    y_mouse=y
		    SY
		  end
		  
		  
		  if Abs(x_mouse)>0.01 Then
		    Mouse_Str_X=Format(x_mouse_value,"-#.###")
		  else
		    Mouse_Str_X=Format(x_mouse_value,"-#.###e")
		  end
		  
		  if Abs(y_mouse)>0.01 Then
		    Mouse_Str_Y=Format(y_mouse_value,"-#.###")
		  else
		    Mouse_Str_Y=Format(y_mouse_value,"-#.###e")
		  end
		  
		  
		  me.Refresh(False)
		  
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.TextFont="Geneva"
		  g.TextSize=10
		  g.DrawString (Mouse_Str_X+", "+Mouse_Str_Y,10,10)
		  
		  drawAxes(g)
		  drawLabels(g)
		  Plot_Data(g)
		  Plotactivepoint(g)
		  drawlegend(g)
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function axisPower(dataMin as double, dataMax as double) As integer
		  dim log_max, log_min, range as double
		  dim power as integer
		  
		  if dataMax = 0 then
		    log_max = -20
		  else
		    log_max=log10(abs(dataMax))
		  end
		  
		  if dataMin = 0 then
		    log_min =-20
		  else
		    log_min=log10(abs(dataMin))
		  end
		  
		  power = max(floor(log_min),floor(log_max))
		  
		  range = (dataMax-dataMin)/pow(10,power)
		  if range <= 1.4 then
		    power = power-1
		  end if
		  
		  return power
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Default_Settings()
		  //---------------------------------------------
		  // Load DVH default setting, basced on the
		  // profile values
		  //---------------------------------------------
		  Dim i,j as integer
		  Dim x1,y1 as Single
		  //---------------------------------------------
		  
		  
		  x_Minimum=30000
		  x_Maximum=-3000
		  y_Minimum=30000
		  y_Maximum=-3000
		  
		  for j=0 to UBound(Profiles.One_Profile) // first  plot lines
		    if Profiles.One_Profile(j)<> nil Then
		      if Profiles.One_Profile(j).Show Then
		        for i=0 to UBound(Profiles.One_Profile(j).Points)
		          x1=Profiles.One_Profile(j).Points(i).x_cm
		          y1=Profiles.One_Profile(j).Points(i).y_cm
		          if x1<me.x_Minimum Then
		            me.x_Minimum=x1
		          end
		          if x1>me.x_Maximum Then
		            me.x_Maximum= x1
		          end
		          if y1<me.y_Minimum Then
		            me.y_Minimum=y1
		          end
		          if y1>me.y_Maximum Then
		            me.y_Maximum= y1
		          end
		        next
		      end
		      Profiles.One_Profile(j).Point_Size=3
		      Profiles.One_Profile(j).show_line=True
		    end
		  next
		  
		  me.x_Maximum=Ceil(me.x_Maximum)
		  me.Y_Maximum=Ceil(me.Y_Maximum)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub drawAxes(g as graphics)
		  //-------------------------------
		  //
		  //
		  //-------------------------------
		  Dim i as integer
		  dim dataXmax, dataXmin, dataYmax, dataYmin as double
		  Dim sx, sXmin, sXmax, sXsub as integer
		  Dim sy, sYmin, sYmax, sYsub as integer
		  Dim extraSubXhigh, extraSubXlow as integer
		  Dim extraSubYhigh, extraSubYlow as integer
		  Dim xPos, yPos as integer
		  Dim labelString as string
		  Dim labelValue as double
		  Dim labelOffset as integer
		  Dim x, y as double
		  //-------------------------------
		  
		  g.ForeColor=RGB(0,0,0)
		  g.TextFont="Geneva"
		  g.TextSize = 10
		  
		  // sx and sy are the number of major divisions
		  // sXmin and sYmin are the values of the smallest major division
		  // sXmax and sYmax are the values of the largest major division
		  // sXsub and sYsub are the number of sub-intervals per interval
		  // extraSubXhigh and extraSubYhigh are the number of extra sub-intervals
		  // to add to the high end of the scales
		  // extraSubXlow and extraSubYlow are the number of extra sub-intervals
		  // to add to the low end of the scales
		  
		  // auto-scaling
		  // first check specified min and max
		  // if they don't make sense, use autoscaling
		  
		  dataXmin = x_Minimum
		  dataXmax = x_Maximum
		  
		  dataYmin = y_Minimum
		  dataYmax = y_Maximum
		  
		  // x-axis calculations
		  //Compute x_Pow
		  x_pow = axisPower(dataXmin, dataXmax)
		  if xLabelPowerAuto then
		    xLabelPower = x_pow
		  end if
		  
		  
		  //Compute sXmax, value of largest x division
		  sXmax = floor(dataXMax/pow(10,x_pow))
		  
		  //Compute sXmin, value of smallest x division
		  sXmin = ceil(dataXmin/pow(10,x_pow))
		  
		  // calculate number of intervals
		  sx = sXmax - sXmin
		  
		  // calculate number sub-intervals per interval
		  sXsub = subIntCt(sx)
		  
		  
		  // calculate number of extra sub-intervals
		  extraSubXhigh = ceil((dataXmax/pow(10,x_pow) - sXMax)*sXsub)
		  extraSubXlow =ceil((sXmin-dataXmin/pow(10,x_pow))*sXsub)
		  
		  // check to make sure that extra subintervals don't actually create a new full interval
		  if extraSubXhigh = sXsub then
		    sXmax = sXmax + 1
		    extraSubXhigh = 0
		  end if
		  if extraSubXlow = sXsub then
		    sXmin = sXmin -1
		    extraSubXlow = 0
		  end if
		  // recalculate total number of full intervals
		  sx = sXmax - sXmin
		  
		  
		  // determine max and min of scale range
		  // (these are properties of Canvas_DVH_Plot)
		  xScaleMax = sXmax + extraSubXhigh/sXsub
		  xScaleMin = sXmin - extraSubXlow/sXsub
		  
		  xRange = xScaleMax - xScaleMin
		  
		  // y-axis calculations
		  //
		  //Compute y_pow
		  y_pow = axisPower(dataYmin, dataYmax)
		  if yLabelPowerAuto then
		    yLabelPower = y_pow
		  end if
		  
		  
		  //Compute sYmax, value of largest y division
		  sYmax = floor(dataYMax/pow(10,y_pow))
		  
		  //Compute sXmin, value of smallest x division
		  sYmin = ceil(dataYmin/pow(10,y_pow))
		  
		  // calculate number of intervals
		  sy = sYmax - sYmin
		  
		  // calculate number sub-intervals per interval
		  sYsub = subIntCt(sy)
		  
		  
		  // calculate number of extra sub-intervals
		  extraSubYhigh = ceil((dataYmax/pow(10,y_pow) - sYMax)*sYsub)
		  extraSubYlow =ceil((sYmin-dataYmin/pow(10,y_pow))*sYsub)
		  
		  // check to make sure that extra subintervals don't actually create a new full interval
		  if extraSubYhigh = sYsub then
		    sYmax = sYmax + 1
		    extraSubYhigh = 0
		  end if
		  if extraSubYlow = sYsub then
		    sYmin = sYmin - 1
		    extraSubYlow = 0
		  end if
		  // recalculate total number of full intervals
		  sy = sYmax - sYmin
		  
		  
		  // determine max and min of scale range
		  // (these are properties of Canvas_DVH_Plot)
		  yScaleMax = sYmax + extraSubYhigh/sYsub
		  yScaleMin = sYmin - extraSubYlow/sYsub
		  
		  yRange = yScaleMax - yScaleMin
		  
		  
		  
		  //Draw x-axis
		  g.DrawLine(x_bottom,y_bottom,x_top,y_bottom)
		  if Axis_Visible then //X axis setup
		    if (yScaleMin <= 0 and yscaleMax >= 0) then
		      g.DrawLine(x_bottom,Ys(0),x_top,Ys(0))
		    end if
		  end
		  
		  if Center_Scale then
		    yPos = YS(0)
		  else
		    yPos = y_bottom
		  end if
		  
		  if xLabelPower <> 0 then
		    g.DrawString("x10",x_top+5,yPos,30)
		    g.DrawString(Format(xLabelPower,"\ ##;-##"),x_top+20,yPos-10,30)
		  end if
		  
		  // draw major interval markers and labels
		  
		  for i = 0 to sx
		    x=(sXmin + i)*pow(10,x_Pow)
		    xPos = XS(x)
		    g.DrawLine(xPos,yPos,xPos,yPos-6)
		    labelValue = (i+sXmin)*pow(10,(x_pow-xLabelPower))
		    if 0 < abs(labelValue) and abs(labelValue) < 1 then
		      labelString = Format(labelValue,"#.######;-#.######")
		    else
		      labelString = Format(labelValue,"#;-#")
		    end if
		    labelOffset = Len(labelString)*0.35*g.TextAscent
		    g.DrawString(labelString,xPos-labelOffset,yPos+15,5*g.TextAscent)
		  next
		  
		  // draw sub interval markers, if appropriate
		  if (drawXsub) then
		    // draw minor interval markers
		    for i = 0 to sx*sXsub + extraSubXhigh + extraSubXlow
		      x=(xScaleMin + i/sXsub)*pow(10,x_Pow)
		      xPos = XS(x)
		      g.DrawLine(xPos,yPos,xPos,yPos-3)
		    next
		  end if
		  
		  //
		  //Draw y-axis
		  g.DrawLine(x_bottom,y_top,x_bottom,y_bottom) //Y axis setup
		  if Axis_Visible then
		    if (xScaleMin <= 0 and xScaleMax >= 0) then
		      g.DrawLine(Xs(0),y_top,Xs(0),y_bottom)
		    end if
		  end
		  
		  if Center_Scale then
		    xPos = XS(0)
		  else
		    xPos = x_bottom
		  end if
		  
		  if yLabelPower <> 0 then
		    g.DrawString("x10",xPos,y_top-10,30)
		    g.DrawString(Format(yLabelPower,"-##"),xPos+25,y_top-20,30)
		  end if
		  
		  
		  
		  // draw major interval markers and labels
		  
		  for i = 0 to sy
		    y=(sYmin + i)*pow(10,y_Pow)
		    yPos = YS(y)
		    labelValue = (i+sYmin)*pow(10,(y_pow-yLabelPower))
		    if 0 < abs(labelValue) and abs(labelValue) < 1 then
		      labelString = Format(labelValue,"#.######;-#.######")
		    else
		      labelString = Format(labelValue,"#;-#")
		    end if
		    labelOffset = Len(labelString)*0.5*g.TextAscent
		    g.DrawLine(xPos,yPos,xPos+6,yPos)
		    g.DrawString(labelString,xPos-10-labelOffset,yPos+5,5*g.TextAscent)
		  next
		  if (drawYsub) then
		    // draw minor interval markers
		    for i = 0 to sy*sYsub + extraSubYhigh + extraSubYlow
		      y=(yScaleMin + i/sYsub)*pow(10,y_Pow)
		      yPos = YS(y)
		      g.DrawLine(xPos,yPos,xPos+3,yPos)
		    next
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub drawLabels(g as graphics)
		  dim midY,midX as integer
		  dim textVfact, textHfact as double
		  
		  
		  g.ForeColor=RGB(0,0,0)
		  g.TextFont="Geneva"
		  g.TextSize=10
		  midY=y_top + ( y_bottom-y_top)/2
		  midX=x_top - (x_top-x_bottom)/2
		  
		  // textVfact and textHfact are used to center X and Y axis labels
		  // based on lengths of labels.
		  // g.TextAscent gives height of tallest character above baseline
		  // This doesn't work very well!
		  
		  textVfact= 1.3*g.TextAscent
		  textHfact = 0.6*g.TextAscent
		  
		  g.TextSize=12
		  g.DrawString(Graph_Title,(x_top-Len(Graph_Title))/2,y_top-30,Len(Graph_Title)*g.TextAscent)
		  g.DrawString(X_Label,midX-Len(X_Label)*textHfact/2,y_bottom+40,Len(X_Label)*g.TextAscent)
		  g.DrawString(Y_Label,x_bottom-60,midY-Len(Y_Label)*textVfact/2,1)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub drawLegend(g as graphics)
		  //----------------------------
		  // Make Legend
		  //
		  //----------------------------
		  dim midY,midX as integer
		  dim textVfact, textHfact as double
		  dim i,x,y,cc as Integer
		  //----------------------------
		  
		  
		  g.ForeColor=RGB(0,0,0)
		  g.TextFont="Geneva"
		  g.TextSize=10
		  midY=y_top+( y_bottom-y_top)/2
		  midX=x_top-(x_top-x_bottom)/2
		  
		  // textVfact and textHfact are used to center X and Y axis labels
		  // based on lengths of labels.
		  // g.TextAscent gives height of tallest character above baseline
		  // This doesn't work very well!
		  
		  textVfact= 1.3*g.TextAscent
		  textHfact = 0.6*g.TextAscent
		  
		  g.TextSize=9
		  cc=0
		  for i=0 to UBound(Profiles.One_Profile)
		    if Profiles.One_Profile(i).Show Then
		      x=g.Width-200
		      y=20+cc*20-Profiles.One_Profile(i).Point_Size/2
		      g.ForeColor=Profiles.One_Profile(i).Colour
		      drawSymbol(g,x,y,Profiles.One_Profile(i).symbol,Profiles.One_Profile(i).Point_Size)
		      x=x+7
		      y=20+cc*20
		      g.ForeColor=RGB(0,0,0)
		      g.DrawString(Profiles.One_Profile(i).Label,x,y)
		      cc=cc+1
		    end
		  next
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub drawSymbol(g as graphics, x as integer, y as integer, style as integer, size as integer)
		  dim points(9) as integer
		  
		  if (size = 0) then
		    g.drawline(x,y,x,y)
		    return
		  end if
		  
		  Select Case style
		    
		  case 0 // no symbol
		    
		  case 1 // filled circle
		    g.fillOval(x-size,y-size,2*size,2*size)
		  case 2 // open circle
		    g.drawOval(x-size,y-size,2*size,2*size)
		  case 3 // filled square
		    g.fillRect(x-size,y-size,2*size,2*size)
		  case 4 // open square
		    g.drawRect(x-size,y-size,2*size,2*size)
		  case 5 // filled diamond
		    points(1) = x
		    points(2) = y-(size+1)
		    points(3)= x+(size+1)
		    points(4) = y
		    points(5) = x
		    points(6) = y + (size+1)
		    points(7) = x -(size+1)
		    points(8) = y
		    g.fillPolygon(points)
		  case 6 // open diamond
		    points(1) = x
		    points(2) = y-(size+1)
		    points(3)= x+(size+1)
		    points(4) = y
		    points(5) = x
		    points(6) = y + (size+1)
		    points(7) = x -(size+1)
		    points(8) = y
		    g.drawPolygon(points)
		  else // default to filled circle
		    g.fillOval(x-size,y-size,2*size,2*size)
		  end select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Log10(x as double) As double
		  return log(x)/log(10)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Plotactivepoint(g as graphics)
		  Dim i as integer
		  Dim slope as Single
		  Dim ss as String
		  
		  
		  
		  
		  if x_mouse <=x_top and x_mouse >= x_bottom and Interactive_index>=0 and Interactive_index<=UBound(Profiles.One_Profile) then
		    g.ForeColor=Profiles.One_Profile(Interactive_index).Colour
		    
		    // Determine the Y point from the X value
		    for i =0 to UBound(Profiles.One_Profile(Interactive_index).Points)-1
		      if x_mouse_value>Profiles.One_Profile(Interactive_index).Points(i).x_cm and x_mouse_value<=Profiles.One_Profile(Interactive_index).Points(i+1).x_cm then
		        slope=(Profiles.One_Profile(Interactive_index).Points(i+1).y_cm-Profiles.One_Profile(Interactive_index).Points(i).y_cm)/(Profiles.One_Profile(Interactive_index).Points(i+1).x_cm-Profiles.One_Profile(Interactive_index).Points(i).x_cm)
		        y_mouse_value=(x_mouse_value-Profiles.One_Profile(Interactive_index).Points(i).x_cm)*slope+Profiles.One_Profile(Interactive_index).Points(i).y_cm
		        y_mouse=YS(y_mouse_value)
		        
		        
		        if Abs(x_mouse)<0.01 Then
		          ss=Format(x_mouse_value,"-#.##e")
		        else
		          ss=Format(x_mouse_value,"-#.###")
		        end
		        
		        if Abs(x_mouse)<0.01 Then
		          ss=ss+", "+Format(y_mouse_value,"-#.##e")
		        else
		          ss=ss+", "+Format(y_mouse_value,"-#.###")
		        end
		        
		        if x_mouse/me.Width >0.5 Then
		          g.DrawString ss,x_mouse-5-g.StringWidth(ss),y_mouse-5
		        else
		          g.DrawString ss,x_mouse+5,y_mouse-5
		        end
		        //Window_EMET.EditField_XY.value = ss
		        
		        Exit
		      end
		    next
		    
		  end
		  
		  g.ForeColor=RGB(0,0,0)
		  
		  drawSymbol(g,x_mouse,y_mouse,2,5)
		  g.DrawLine x_bottom,y_mouse,x_mouse,y_mouse
		  g.DrawLine x_mouse,y_bottom,x_mouse,y_mouse
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Plot_Constraints(g as graphics)
		  'Dim i,k,x_int,y_int as integer
		  'Dim slope,x_p,y_p as Single
		  '
		  '
		  '
		  'for i=0 to UBound(Window_EMET.Opt.Oarray.organ)
		  'for k=0 to 1
		  'x_p=Window_EMET.Opt.Oarray.Organ(i).Constraints(k).dose
		  'y_p=Window_EMET.Opt.Oarray.Organ(i).Constraints(k).volume
		  '
		  'g.ForeColor=Profiles.One_Profile(i).Colour
		  '// Determine the Y point from the X value
		  'x_int=xs(x_p)
		  'y_int=ys(y_p)
		  'drawSymbol(g,x_int,y_int,6,5)
		  '
		  'next
		  'next
		  '
		  '
		  '
		  'for i=0 to UBound(Window_EMET.Opt.Tarray.Target)
		  '
		  'x_p=Window_EMET.Opt.Tarray.Target(i).MaxDose
		  'y_p=0
		  '
		  'g.ForeColor=rgb(255,0,0)
		  '// Determine the Y point from the X value
		  'x_int=xs(x_p)
		  'y_int=ys(y_p)
		  'drawSymbol(g,x_int,y_int,1,5)
		  '
		  '
		  'x_p=Window_EMET.Opt.Tarray.Target(i).MinDose
		  'y_p=0
		  '
		  'g.ForeColor=rgb(0,255,0)
		  '// Determine the Y point from the X value
		  'x_int=xs(x_p)
		  'y_int=ys(y_p)
		  'drawSymbol(g,x_int,y_int,1,5)
		  '
		  '
		  '
		  'next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Plot_Data(g as graphics)
		  Dim i,j,x,y,xo,yo as integer
		  g.PenHeight=1
		  g.PenWidth=1
		  
		  
		  if Profiles=nil Then
		    Return
		  end
		  
		  for j=0 to UBound(Profiles.One_Profile) // first  plot lines
		    if Profiles.One_Profile(j)<> nil Then
		      if Profiles.One_Profile(j).Show  Then
		        if Profiles.One_Profile(j).show_line then
		          for i=0 to UBound(Profiles.One_Profile(j).Points)
		            x=XS(Profiles.One_Profile(j).Points(i).x_cm)
		            y=YS(Profiles.One_Profile(j).Points(i).y_cm)
		            if x <=x_top and x >= x_bottom and y>= y_top and y <= y_bottom then
		              if i < UBound(Profiles.One_Profile(j).Points) then
		                xo=XS(Profiles.One_Profile(j).Points(i+1).x_cm)
		                yo=YS(Profiles.One_Profile(j).Points(i+1).y_cm)
		                if xo <= x_top and xo >= x_bottom and yo >= y_top and yo <= y_bottom then
		                  g.ForeColor=Profiles.One_Profile(j).Colour
		                  g.DrawLine(x,y,xo,yo)
		                end if
		              end if
		            end if
		          next
		        end if
		      end
		    end
		  next
		  
		  
		  
		  for j=0 to UBound(Profiles.One_Profile) // then plot points
		    if Profiles.One_Profile(j)<> nil Then
		      if Profiles.One_Profile(j).Show  Then
		        if not (Profiles.One_Profile(j).symbol = 0) then
		          for i=0 to UBound(Profiles.One_Profile(j).Points)
		            x=XS(Profiles.One_Profile(j).Points(i).x_cm)
		            y=YS(Profiles.One_Profile(j).Points(i).y_cm)
		            if x <=x_top and x >= x_bottom and y>= y_top and y <= y_bottom then
		              g.ForeColor=Profiles.One_Profile(j).Colour
		              drawSymbol(g,x,y,Profiles.One_Profile(j).symbol,Profiles.One_Profile(j).Point_Size)
		            end if
		          next
		        end if
		      end
		    end
		  next
		  
		  
		  
		  g.ForeColor=rgb(0,0,0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Resize_Canvas()
		  x_bottom=75
		  y_bottom=me.height-80
		  x_top=me.width-40
		  y_top=40
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function subIntCt(s as integer) As integer
		  // return number of subintervals per interval
		  
		  if (s < 4) then
		    return 10
		  elseif s < 10 then
		    return 5
		  elseif s < 15 then
		    return 2
		  else
		    return 1
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SX()
		  x_mouse_value=((x_mouse-x_bottom)*xRange/(x_top-x_bottom)+xScaleMin)*Pow(10,x_Pow)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SY()
		  y_mouse_value=((y_mouse-y_bottom)*yRange/(y_top-y_bottom)+yScaleMin)*Pow(10,y_Pow)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function XS(x as double) As integer
		  // input is raw x value, without scaling
		  return Round( (x_top-x_bottom)/xRange * (x/pow(10,x_Pow)-xScaleMin)+x_bottom)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function YS(y as double) As integer
		  // input is raw y value, without scaling
		  return Round((y_top-y_bottom)/yRange*(y/Pow(10,y_Pow)-yScaleMin)+y_bottom)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h4
		Axis_Visible As boolean
	#tag EndProperty

	#tag Property, Flags = &h4
		Box As boolean
	#tag EndProperty

	#tag Property, Flags = &h4
		Center_Scale As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		drawXsub As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		drawYsub As boolean
	#tag EndProperty

	#tag Property, Flags = &h4
		Graph_Title As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Interactive As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Interactive_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Mouse_Str_X As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Mouse_Str_Y As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Profiles As Class_Profiles_All
	#tag EndProperty

	#tag Property, Flags = &h0
		ReCal As Thread_EMET_Canvas
	#tag EndProperty

	#tag Property, Flags = &h0
		xLabelPower As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		xLabelPowerAuto As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		xRange As double
	#tag EndProperty

	#tag Property, Flags = &h0
		xScaleMax As double
	#tag EndProperty

	#tag Property, Flags = &h0
		xScaleMin As double
	#tag EndProperty

	#tag Property, Flags = &h4
		x_bottom As integer
	#tag EndProperty

	#tag Property, Flags = &h4
		X_Label As string
	#tag EndProperty

	#tag Property, Flags = &h4
		x_Maximum As double
	#tag EndProperty

	#tag Property, Flags = &h4
		x_Minimum As double
	#tag EndProperty

	#tag Property, Flags = &h0
		x_mouse As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		x_mouse_value As single
	#tag EndProperty

	#tag Property, Flags = &h4
		x_Pow As integer
	#tag EndProperty

	#tag Property, Flags = &h4
		x_top As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		yLabelPower As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		yLabelPowerAuto As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		yRange As double
	#tag EndProperty

	#tag Property, Flags = &h0
		yScaleMax As double
	#tag EndProperty

	#tag Property, Flags = &h0
		yScaleMin As double
	#tag EndProperty

	#tag Property, Flags = &h4
		y_bottom As integer
	#tag EndProperty

	#tag Property, Flags = &h4
		Y_Label As string
	#tag EndProperty

	#tag Property, Flags = &h4
		y_Maximum As double
	#tag EndProperty

	#tag Property, Flags = &h4
		y_Minimum As double
	#tag EndProperty

	#tag Property, Flags = &h0
		y_mouse As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		y_mouse_value As single
	#tag EndProperty

	#tag Property, Flags = &h4
		y_Pow As integer
	#tag EndProperty

	#tag Property, Flags = &h4
		y_top As integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowAutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tooltip"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFocus"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowTabs"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Axis_Visible"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Box"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Center_Scale"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="drawXsub"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="drawYsub"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Graph_Title"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Visible=false
			Group=""
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Interactive"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Interactive_index"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Mouse_Str_X"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Mouse_Str_Y"
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
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Visible=false
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="xLabelPower"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="xLabelPowerAuto"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="xRange"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="xScaleMax"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="xScaleMin"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="x_bottom"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="X_Label"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="x_Maximum"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="x_Minimum"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="x_mouse"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="x_mouse_value"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="x_Pow"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="x_top"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="yLabelPower"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="yLabelPowerAuto"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="yRange"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="yScaleMax"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="yScaleMin"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="y_bottom"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y_Label"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="y_Maximum"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="y_Minimum"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="y_mouse"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="y_mouse_value"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="y_Pow"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="y_top"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
