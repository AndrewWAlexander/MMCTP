#tag Class
Protected Class Canvas_Plot
Inherits Canvas
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  dim MI as MenuItem
		  
		  MI = New MenuItem
		  MI.Text = "Change Colour"
		  base.addmenu( MI )
		  MI = New MenuItem
		  MI.Text = "Change BG Colour"
		  base.addmenu( MI )
		  MI = New MenuItem
		  MI.Text = "Rescale"
		  base.addmenu( MI )
		  
		  
		  Return True
		End Function
	#tag EndEvent

	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  //--------------------------
		  //
		  //
		  //--------------------------
		  Dim c as Color
		  Dim b as Boolean
		  //--------------------------
		  
		  
		  Select Case hitItem.Text
		  Case "Change Colour"
		    c= Profiles.One_Profile(Interactive_index).Colour//choose the default color shown in color picker
		    b=SelectColor(c,"Select a Color")
		    Profiles.One_Profile(Interactive_index).Colour=c
		    
		    
		  Case "Change BG Colour"
		    c= BG //choose the default color shown in color picker
		    b=SelectColor(c,"Select a Color")
		    BG=c
		    
		  Case "Rescale"
		    Default_Settings
		    me.Redraw
		    
		    
		    
		    
		  Case "Graph Properties"
		    //Window_Graph_Properties.Show
		    
		  End Select
		  me.Redraw
		  
		  Return True
		  
		  
		End Function
	#tag EndEvent

	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  if IsContextualClick Then
		    Return False
		  end
		  
		  
		  if X>=me.x_bottom and X<=me.x_top then
		    me.x_mouse=X
		    me.Sx
		  end
		  if y<=me.y_bottom and y>=me.y_top Then
		    me.y_mouse=y
		    me.SY
		  end
		  
		  X1_Old=me.x_mouse_value
		  Y1_Old=me.y_mouse_value
		  
		  Return true
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  if X>=me.x_bottom and X<=me.x_top then
		    me.x_mouse=X
		    me.Sx
		  end
		  if y<=me.y_bottom and y>=me.y_top Then
		    me.y_mouse=y
		    me.SY
		  end
		  
		  X2_New=me.x_mouse_value
		  Y2_New=me.y_mouse_value
		  
		  if X1_Old<>X2_New and Y1_Old<>Y2_New Then
		    NewScale=True
		  end
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseEnter()
		  me.SetFocus
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  if NewScale Then
		    Determine_Scale
		    NewScale=False
		  end
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  bg=app.BackColour
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.DrawPicture Display, 0, 0
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function AxisPower(dataMin as double, dataMax as double) As integer
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
		  //-------------------------------------------------
		  // Determine x and y max and min values based 
		  // on graph values
		  //-------------------------------------------------
		  Dim i,j as integer
		  Dim x1,y1,norm as Single
		  //-----------------------------
		  
		  x_Minimum=300000000000
		  x_Maximum=-30000000000
		  y_Minimum=300000000000
		  y_Maximum=-30000000000
		  
		  for j=0 to UBound(Profiles.One_Profile) // first  plot lines
		    
		    //Get Normalization
		    if Profiles.One_Profile(j).Norm Then
		      norm=100/Profiles.One_Profile(j).Normalize_value
		    else
		      norm=1
		    end
		    
		    if Profiles.One_Profile(j).Show Then
		      for i=0 to UBound(Profiles.One_Profile(j).Points)
		        // Pickup X, and Y values
		        if xyz_index=0  Then
		          x1=Profiles.One_Profile(j).Points(i).x_cm
		        elseif xyz_index=1 Then
		          x1=Profiles.One_Profile(j).Points(i).y_cm
		        elseif xyz_index=2 Then
		          x1=Profiles.One_Profile(j).Points(i).z_cm
		        elseif xyz_index=3 Then
		          x1=i*Profiles.One_Profile(j).Distance/(UBound(Profiles.One_Profile(j).Points)+1)
		        end
		        // Pickup Y value
		        y1=Profiles.One_Profile(j).Points(i).value*norm
		        
		        // Determine new X min and Y min values
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
		  next
		  
		  if x_Maximum=x_Minimum Then
		    x_Maximum=x_Minimum+1
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Determine_Scale()
		  Dim i as Single
		  
		  x_Minimum=X1_Old
		  x_Maximum=X2_New
		  
		  if x_Maximum<x_Minimum Then
		    i=x_Minimum
		    x_Minimum=x_Maximum
		    x_Maximum=i
		  end
		  
		  y_Minimum=Y1_Old
		  y_Maximum=Y2_New
		  
		  if y_Maximum<y_Minimum Then
		    i=y_Minimum
		    y_Minimum=y_Maximum
		    y_Maximum=i
		  end
		  Redraw
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawAxes(g as graphics)
		  //------------------------------------------------------
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
		  //------------------------------------------------------
		  Dim i as integer
		  Dim dataXmax, dataXmin, dataYmax, dataYmin as double
		  Dim sx, sXmin, sXmax, sXsub as integer
		  Dim sy, sYmin, sYmax, sYsub as integer
		  Dim extraSubXhigh, extraSubXlow as integer
		  Dim extraSubYhigh, extraSubYlow as integer
		  Dim xPos, yPos as integer
		  Dim labelString as string
		  Dim labelValue as double
		  Dim labelOffset as integer
		  Dim x, y as double
		  //------------------------------------------------------
		  
		  g.TextFont="Geneva"
		  g.TextSize = 10
		  g.ForeColor=RGB(0,0,0)
		  
		  
		  
		  
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
		  
		  
		  //------------------------------------------------------
		  //Draw x-axis
		  //------------------------------------------------------
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
		      labelString = Format(labelValue,"-#.#####e")
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
		  
		  //------------------------------------------------------
		  //Draw y-axis
		  //------------------------------------------------------
		  
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
		      labelString = Format(labelValue,"-#.######e")
		    else
		      labelString = Format(labelValue,"#;-#")
		    end if
		    labelOffset = Len(labelString)*0.5*g.TextAscent
		    g.DrawLine(xPos,yPos,xPos+6,yPos)
		    if Axis_Grid Then
		      g.DrawLine(xPos,yPos,XS(dataXmax),yPos)
		    end
		    g.DrawString(labelString,xPos-10-labelOffset,yPos+5,5*g.TextAscent)
		  next
		  
		  if (drawYsub) then // draw minor interval markers
		    for i = 0 to sy*sYsub + extraSubYhigh + extraSubYlow
		      y=(yScaleMin + i/sYsub)*pow(10,y_Pow)
		      yPos = YS(y)
		      g.DrawLine(xPos,yPos,xPos+3,yPos)
		    next
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawLabels(g as graphics)
		  //---------------------------------------
		  //
		  //---------------------------------------
		  dim midY,midX,i as integer
		  dim textVfact, textHfact as double
		  //---------------------------------------
		  
		  
		  
		  g.TextFont="Geneva"
		  g.TextSize=10
		  g.ForeColor=RGB(0,0,0)
		  
		  midY=y_top + ( y_bottom-y_top)/2
		  midX=x_top - (x_top-x_bottom)/2
		  
		  // textVfact and textHfact are used to center X and Y axis labels
		  // based on lengths of labels.
		  // g.TextAscent gives height of tallest character above baseline
		  // This doesn't work very well!
		  textVfact= 1.3*g.TextAscent
		  textHfact = 0.6*g.TextAscent
		  
		  if Profiles=nil Then
		    Return
		  end
		  
		  Plot_Data(g)
		  g.TextSize=12
		  g.DrawString(Graph_Title,(x_top-Len(Graph_Title))/2,y_top-30,Len(Graph_Title)*g.TextAscent)
		  
		  
		  
		  for i=0 to UBound(Profiles.One_Profile)
		    if Profiles.One_Profile(i).Show  Then
		      if xyz_index=0 Then
		        X_Label=Profiles.One_Profile(i).X_label+" ("+Profiles.One_Profile(i).Units_x+")"
		      elseif xyz_index=1 Then
		        X_Label=Profiles.One_Profile(i).y_label+" ("+Profiles.One_Profile(i).Units_y+")"
		      elseif xyz_index=2 Then
		        X_Label=Profiles.One_Profile(i).z_label+" ("+Profiles.One_Profile(i).Units_z+")"
		      elseif xyz_index=3 Then
		        X_Label="Distance (cm)"
		      end
		      if Profiles.One_Profile(i).Norm Then
		        Y_Label="Relative (%)"
		      else
		        Y_Label=Profiles.One_Profile(i).Value_Label+" ("+Profiles.One_Profile(i).Value_Units+")"
		      end
		    end
		  next
		  
		  g.DrawString(X_Label,midX-Len(X_Label)*textHfact/2,y_bottom+40,Len(X_Label)*g.TextAscent)
		  g.DrawString(Y_Label,x_bottom-60,midY-Len(Y_Label)*textVfact/2,1)
		  
		  g.DrawString("X, Y : "+x_mouse_value_str+", " +y_mouse_value_str,x_bottom-60,10)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawSymbol(g as graphics, x as integer, y as integer, style as integer, size as integer)
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
		  
		  
		  
		  if x_mouse <=x_top and x_mouse >= x_bottom and  Interactive_index>=0 and Interactive_index<= UBound(Profiles.One_Profile) then
		    g.ForeColor=Profiles.One_Profile(Interactive_index).Colour
		    
		    
		    if x_mouse/me.Width >0.5 Then
		      g.DrawString Interactive_String,x_mouse-5-g.StringWidth(Interactive_String),y_mouse-5
		    else
		      g.DrawString Interactive_String,x_mouse+5,y_mouse-5
		    end
		    
		    
		    DrawSymbol(g,x_mouse,y_mouse,2,5)
		    g.DrawLine x_bottom,y_mouse,x_mouse,y_mouse
		    g.DrawLine x_mouse,y_bottom,x_mouse,y_mouse
		    g.ForeColor=RGB(0,0,0)
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Plotactivepoint_CalculateValue()
		  //-------------------------------
		  //
		  //-------------------------------
		  Dim i as integer
		  Dim slope,x1,x2,norm as Single
		  //-------------------------------
		  
		  
		  if x_mouse <=x_top and x_mouse >= x_bottom and  Interactive_index>=0 and Interactive_index<= UBound(Profiles.One_Profile) then
		    // Get Normalization
		    if Profiles.One_Profile(Interactive_index).Norm Then
		      norm=100/Profiles.One_Profile(Interactive_index).Normalize_value
		    else
		      norm=1
		    end
		    
		    
		    // Determine the Y point from the X value
		    for i =0 to UBound(Profiles.One_Profile(Interactive_index).Points)-1
		      if xyz_Index=0 Then
		        x1=Profiles.One_Profile(Interactive_index).Points(i).x_cm
		        x2=Profiles.One_Profile(Interactive_index).Points(i+1).x_cm
		      elseif xyz_Index=1 Then
		        x1=Profiles.One_Profile(Interactive_index).Points(i).y_cm
		        x2=Profiles.One_Profile(Interactive_index).Points(i+1).y_cm
		      elseif xyz_Index=2 Then
		        x1=Profiles.One_Profile(Interactive_index).Points(i).z_cm
		        x2=Profiles.One_Profile(Interactive_index).Points(i+1).z_cm
		      elseif xyz_Index=3 Then
		        x1=i*Profiles.One_Profile(Interactive_index).Distance/(UBound(Profiles.One_Profile(Interactive_index).Points)+1)
		        x2=(i+1)*Profiles.One_Profile(Interactive_index).Distance/(UBound(Profiles.One_Profile(Interactive_index).Points)+1)
		      end
		      
		      if (x_mouse_value>=x1 and x_mouse_value<=x2) or (x_mouse_value<=x1 and x_mouse_value>=x2) then
		        slope=(Profiles.One_Profile(Interactive_index).Points(i+1).value- Profiles.One_Profile(Interactive_index).Points(i).value)/(x2-x1)
		        y_mouse_value=norm*((x_mouse_value-x1)*slope+Profiles.One_Profile(Interactive_index).Points(i).value)
		        y_mouse=YS(y_mouse_value)
		        PlotactivePoint_Label
		        exit for i
		      end
		    next
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PlotactivePoint_Label()
		  
		  if abs(x_mouse_value)<0.1 Then
		    x_mouse_value_str=Format(x_mouse_value,"-###.####e")
		  else
		    x_mouse_value_str=Format(x_mouse_value,"-###.###")
		  end
		  
		  if abs(y_mouse_value)<0.1 Then
		    y_mouse_value_str=Format(y_mouse_value,"-###.####e")
		  else
		    y_mouse_value_str=Format(y_mouse_value,"-###.###")
		  end
		  
		  Interactive_String="("+x_mouse_value_str+" , "+y_mouse_value_str+")"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Plot_Data(g as graphics)
		  //--------------------------------
		  //
		  //--------------------------------
		  Dim i,j,x,y,xo,yo,x2 as integer
		  Dim x_value,x_valueb,norm,distance_x,distance_y,y_bot as Single
		  //--------------------------------
		  
		  g.PenHeight=1
		  g.PenWidth=1
		  
		  if Profiles=Nil Then
		    Return
		  end
		  
		  for j=0 to UBound(Profiles.One_Profile) // first  plot lines
		    
		    //Get Normalization
		    if Profiles.One_Profile(j).Norm Then
		      norm=100/Profiles.One_Profile(j).Normalize_value
		    else
		      norm=1
		    end
		    
		    g.ForeColor=Profiles.One_Profile(j).Colour
		    
		    if Profiles.One_Profile(j).Show  Then
		      if Profiles.One_Profile(j).show_line then
		        for i=0 to UBound(Profiles.One_Profile(j).Points)
		          
		          // Pickup the correct X value
		          if xyz_index=0 Then
		            x_value=Profiles.One_Profile(j).Points(i).x_cm
		          elseif xyz_index=1 Then
		            x_value=Profiles.One_Profile(j).Points(i).y_cm
		          elseif xyz_index=2 Then
		            x_value=Profiles.One_Profile(j).Points(i).z_cm
		          elseif xyz_index=3 Then
		            x_value=i*Profiles.One_Profile(j).Distance/(UBound(Profiles.One_Profile(j).Points)+1)
		          end
		          
		          
		          x=XS(x_value)
		          y=YS(Profiles.One_Profile(j).Points(i).value*norm)
		          if x <=x_top and x >= x_bottom and y>= y_top and y <= y_bottom then
		            if i < UBound(Profiles.One_Profile(j).Points) then
		              
		              // Pickup the correct X value
		              if xyz_index=0 Then
		                x_valueb=Profiles.One_Profile(j).Points(i+1).x_cm
		              elseif xyz_index=1 Then
		                x_valueb=Profiles.One_Profile(j).Points(i+1).y_cm
		              elseif xyz_index=2 Then
		                x_valueb=Profiles.One_Profile(j).Points(i+1).z_cm
		              elseif xyz_index=3 Then
		                x_valueb=(i+1)*Profiles.One_Profile(j).Distance/(UBound(Profiles.One_Profile(j).Points)+1)
		              end
		              
		              xo=XS(x_valueb)
		              yo=YS(Profiles.One_Profile(j).Points(i+1).value*norm)
		              
		              if xo <= x_top and xo >= x_bottom and yo >= y_top and yo <= y_bottom then
		                
		                g.DrawLine(x,y,xo,yo)
		              end if
		            end if
		          end if
		        next
		      end if
		      
		      
		      // Plot Points
		      if not (Profiles.One_Profile(j).symbol=0) and Profiles.One_Profile(j).Show_Marker then
		        for i=0 to UBound(Profiles.One_Profile(j).Points)
		          
		          // Pickup the correct X value
		          if xyz_index=0 Then
		            x_value=Profiles.One_Profile(j).Points(i).x_cm
		          elseif xyz_index=1 Then
		            x_value=Profiles.One_Profile(j).Points(i).y_cm
		          elseif xyz_index=2 Then
		            x_value=Profiles.One_Profile(j).Points(i).z_cm
		          elseif xyz_index=3 Then
		            x_value=i*Profiles.One_Profile(j).Distance/(UBound(Profiles.One_Profile(j).Points)+1)
		          end
		          
		          
		          x=XS(x_value)
		          y=YS(Profiles.One_Profile(j).Points(i).value*norm)
		          if x <=x_top and x >= x_bottom and y>= y_top and y <= y_bottom then
		            drawSymbol(g,x,y,Profiles.One_Profile(j).symbol,Profiles.One_Profile(j).Point_Size)
		          end if
		          
		          
		          if Errors Then // If Plot Errors
		            y=YS(Profiles.One_Profile(j).Points(i).value*norm-Profiles.One_Profile(j).Points(i).value*Profiles.One_Profile(j).Points(i).uncertainty*norm)
		            yo=YS(Profiles.One_Profile(j).Points(i).value*norm+Profiles.One_Profile(j).Points(i).value*Profiles.One_Profile(j).Points(i).uncertainty*norm)
		            if x <=x_top and x >= x_bottom and y>= y_top and y <= y_bottom then
		              g.DrawLine(x,y,x,yo)
		            end if
		          end // End Plot Errors
		        next
		      end if // End plot points
		      
		      
		      
		      
		      if not (Profiles.One_Profile(j).symbol = 0) and Profiles.One_Profile(j).Bar_graph then //  Bar graph
		        for i=0 to UBound(Profiles.One_Profile(j).Points)
		          
		          // Pickup the correct X value
		          if xyz_index=0 Then
		            x_value=Profiles.One_Profile(j).Points(i).x_cm-profiles.One_Profile(j).bar_width/2
		            distance_x=Profiles.One_Profile(j).Points(i).x_cm+profiles.One_Profile(j).bar_width/2
		          elseif xyz_index=1 Then
		            x_value=Profiles.One_Profile(j).Points(i).y_cm
		          elseif xyz_index=2 Then
		            x_value=Profiles.One_Profile(j).Points(i).z_cm
		          elseif xyz_index=3 Then
		            x_value=i*Profiles.One_Profile(j).Distance/(UBound(Profiles.One_Profile(j).Points)+1)
		          end
		          
		          
		          x=XS(x_value)
		          x2=XS(distance_x)
		          
		          y=YS(Profiles.One_Profile(j).Points(i).value*norm)
		          y_bot=YS(0)
		          if x <=x_top and x >= x_bottom and y>= y_top and y <= y_bottom then
		            g.ForeColor=Profiles.One_Profile(j).Colour
		            g.FillRect(x,y,x2-x,y_bot-y)
		          end if
		        next
		      end if // End Bar graph
		      
		    end // End show
		  next
		  
		  
		  
		  g.ForeColor=rgb(0,0,0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Redraw()
		  Display=New Picture(me.Width,me.Height,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		  //I don't know what makes this a improvement, but if it's proper practice, okay then
		  
		  if Display=nil Then
		    Return
		  end
		  
		  Display.Graphics.ForeColor=bg
		  Display.Graphics.FillRect(0,0,me.Width,me.Height)
		  
		  drawAxes(Display.Graphics)
		  drawLabels(Display.Graphics)
		  Plot_Data(Display.Graphics)
		  
		  if Interactive Then
		    Plotactivepoint(Display.Graphics)
		  end
		  
		  if Box then
		    Display.Graphics.DrawRect(x_bottom,y_bottom,x_top-x_bottom,y_top-y_bottom)
		  end
		  
		  me.Refresh(False)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Resize_Canvas()
		  x_bottom=75
		  y_bottom=me.height-80
		  x_top=me.width-40
		  y_top=40
		  Redraw
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
		  
		  if abs(x_mouse_value)<0.1 Then
		    x_mouse_value_str=Format(x_mouse_value,"-#.###e")
		  else
		    x_mouse_value_str=Format(x_mouse_value,"-#.###")
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SY()
		  y_mouse_value=((y_mouse-y_bottom)*yRange/(y_top-y_bottom)+yScaleMin)*Pow(10,y_Pow)
		  
		  
		  if abs(y_mouse_value)<0.1 Then
		    y_mouse_value_str=Format(y_mouse_value,"-#.###e")
		  else
		    y_mouse_value_str=Format(y_mouse_value,"-#.###")
		  end
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


	#tag Property, Flags = &h0
		Analysis As Window_Profile_analysis
	#tag EndProperty

	#tag Property, Flags = &h0
		Axis_Grid As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h4
		Axis_Visible As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		BG As Color
	#tag EndProperty

	#tag Property, Flags = &h4
		Box As boolean
	#tag EndProperty

	#tag Property, Flags = &h4
		Center_Scale As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Display As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		drawXsub As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		drawYsub As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Errors As Boolean = false
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
		Interactive_String As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NewScale As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Profiles As Class_Profiles_All
	#tag EndProperty

	#tag Property, Flags = &h0
		X1_Old As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		X2_New As Single
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

	#tag Property, Flags = &h0
		xyz_index As Integer
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

	#tag Property, Flags = &h0
		x_mouse_value_str As String
	#tag EndProperty

	#tag Property, Flags = &h4
		x_Pow As integer
	#tag EndProperty

	#tag Property, Flags = &h4
		x_top As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Y1_Old As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Y2_New As Single
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

	#tag Property, Flags = &h0
		y_mouse_value_str As String = "0"
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
			Name="Axis_Grid"
			Visible=false
			Group="Behavior"
			InitialValue="true"
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
			Name="BG"
			Visible=false
			Group="Behavior"
			InitialValue="&h000000"
			Type="Color"
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
			Name="Display"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Picture"
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
			Name="Errors"
			Visible=false
			Group="Behavior"
			InitialValue="false"
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
			Name="Interactive_String"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NewScale"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
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
			Name="X1_Old"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="X2_New"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
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
			Name="xyz_index"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
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
			Name="x_mouse_value_str"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="Y1_Old"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y2_New"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Single"
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
			Name="y_mouse_value_str"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="String"
			EditorType="MultiLineEditor"
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
