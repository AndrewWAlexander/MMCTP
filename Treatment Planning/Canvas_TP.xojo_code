#tag Class
Protected Class Canvas_TP
Inherits Canvas
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  dim MI as MenuItem
		  
		  MI = New MenuItem
		  MI.Text = "Axial"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "Sagittal"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "Coronal"
		  base.Append MI
		  
		  'MI = New MenuItem
		  'MI.Text = "BEV"
		  'base.Append MI
		  'MI = New MenuItem
		  'MI.Text = "DRR"
		  'base.Append MI
		  'MI = New MenuItem
		  'MI.Text = "REV"
		  'base.Append MI
		  
		  
		  MI = New MenuItem
		  MI.Text = "Centre Image"
		  base.Append MI
		  MI = New MenuItem
		  MI.Text = "BG Colour"
		  base.Append MI
		  
		  Return True
		  
		End Function
	#tag EndEvent

	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Dim cc as Color
		  Dim b as Boolean
		  
		  
		  Select Case hitItem.Text
		  Case "Axial"
		    ViewFlag=1
		  Case "Sagittal"
		    ViewFlag=2
		  Case "Coronal"
		    ViewFlag=3
		  Case "BEV"
		    ViewFlag=4
		  Case "DRR"
		    ViewFlag=5
		  Case "REV"
		    ViewFlag=6
		  case "Centre Image"
		    Pan_X=0
		    Pan_Y=0
		    
		  case "BG Colour"
		    cc= BG //choose the default color shown in color picker
		    b=SelectColor(cc,"Select a Color")
		    BG=cc
		    
		  End Select
		  me.ReMake
		  
		  Return True
		  
		End Function
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  Dim test as Single
		  
		  
		  '==========================================
		  if ViewFlag=1 then
		    If Keyboard.AsyncKeyDown(123) or  Keyboard.AsyncKeyDown(&h7B)  then
		      //do something with the left arrow key
		      canvas_slice=canvas_slice -1
		      if canvas_slice <0 then
		        canvas_slice =0
		      end
		      ReMake
		    end if
		    If Keyboard.AsyncKeyDown(124)  or Keyboard.AsyncKeyDown(&h7C) then
		      //do something with the right arrow key...
		      canvas_slice=canvas_slice+1
		      if canvas_slice>UBound(gvis.scans) then
		        canvas_slice=canvas_slice-1
		      end
		      ReMake
		    end if
		    '==========================================
		  elseif ViewFlag=2 then
		    If Keyboard.AsyncKeyDown(123) then
		      //do something with the left arrow key
		      canvas_sag=canvas_sag -1
		      if canvas_sag <0 then
		        canvas_sag =0
		      else
		        ReMake
		      end
		    end if
		    
		    If Keyboard.AsyncKeyDown(124) then
		      //do something with the right arrow key...
		      canvas_sag=canvas_sag+1
		      if canvas_sag>gvis.nx-1 then
		        canvas_sag=canvas_sag-1
		      else
		        ReMake
		      end
		    end if
		    
		    '==========================================
		  elseif ViewFlag=3 then
		    If Keyboard.AsyncKeyDown(123) then
		      //do something with the left arrow key
		      canvas_cor=canvas_cor -1
		      if canvas_cor <0 then
		        canvas_cor =0
		      else
		        ReMake
		      end
		    end if
		    
		    If Keyboard.AsyncKeyDown(124) then
		      //do something with the right arrow key...
		      canvas_cor=canvas_cor+1
		      if canvas_cor>gvis.ny-1 then
		        canvas_cor=canvas_cor-1
		      else
		        ReMake
		      end
		    end if
		  end
		  
		  Mouse_Getvalue(mouse_xpixel,mouse_ypixel)
		  
		  //do the point dose calculation
		  If Window_Treatment.dose_index<>-1 then
		    test=RTOG_Dose_Interpolate(mouse_xcm,mouse_ycm,mouse_zcm,gRTOG.Plan(Plan_Index).Dose(Window_Treatment.dose_index))
		    Dose_Value=Format(test,"-#.###e")
		    RePaint
		  end
		  
		  me.SetFocus
		  '==========================================
		End Function
	#tag EndEvent

	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  // -------------------------------
		  // Function to determine what to do if the mouse is clicked
		  //
		  // 1) determine x,y pixel and x,y in cm
		  // 2) pan image
		  // 3) Adjust window and level
		  // 4) do dose painter
		  // 5) Move cross hairs
		  // 6) Move Ruler
		  // 6) do dose point calculation
		  //
		  //--------------------------------
		  Dim test as Single
		  //--------------------------------
		  
		  Mouse_Getvalue(x,y)
		  mouse_xpixel=x
		  mouse_ypixel=y
		  
		  //do the point dose calculation
		  If Window_Treatment.dose_index<>-1 then
		    test=RTOG_Dose_Interpolate(mouse_xcm,mouse_ycm,mouse_zcm,gRTOG.Plan(Plan_Index).Dose(Window_Treatment.dose_index))
		    if Abs(test)<0.1 Then
		      Dose_Value=Format(test,"-#.###e")
		    else
		      Dose_Value=Format(test,"-#.##")
		    end
		    test=100*RTOG_Dose_Errors_Interpolate(mouse_xcm,mouse_ycm,mouse_zcm,gRTOG.Plan(Plan_Index).Dose(Window_Treatment.dose_index))
		    if Abs(test)<0.1 Then
		      Dose_Error=Format(test,"-#.###e")
		    else
		      Dose_Error=Format(test,"-#.##")
		    end
		  end
		  
		  
		  Image_Value=Format(RTOG_Image_Interpolate(mouse_xcm,mouse_ycm,mouse_zcm),"-#")
		  
		  
		  
		  if Keyboard.AsyncKeyDown(49) then'Pan
		    Return True
		    
		  Elseif Keyboard.AsyncKeyDown( &h0D) and ViewFlag=1 then 'Adjust window and level
		    WL_Mouse=True
		    Window_Treatment.CheckBox_show_struc.Value=False
		    Window_Treatment.CheckBox_Iso.Value=False
		    Window_Treatment.CheckBox_dose.Value=False
		    initial_WL=gvis.WL
		    initial_WW=gvis.ww
		    Return True
		    
		    
		  Elseif Window_Treatment.BevelButton_DosePaint_on.Value then 'Dose painter
		    Return True
		  ElseIf Window_Treatment.CheckBox_cross.Value then //Move the Cross hairs
		    Cross_Hairs_WhichOne(x,y)
		    Return True
		    
		  ElseIf Window_Treatment.CheckBox_Profile_showR.Value Then
		    if abs(x-ruler.x1pix)<5 and abs(y-ruler.y1pix)<5 then
		      Ruler.Move_Point1=true
		      Return True
		      
		    elseif  abs(x-ruler.x2pix)<5 and abs(y-ruler.y2pix)<5 then
		      Ruler.Move_Point2=true
		      Return True
		    end
		  end
		  
		  
		  
		  RePaint
		  me.SetFocus
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  //------------------------------------------------
		  //
		  //
		  //------------------------------------------------
		  Dim tempx,tempy,buffer_offx ,buffer_offy  as integer
		  Dim xcm,ycm,test as Single
		  //------------------------------------------------
		  
		  // Get X,Y,Z value (cm) of mouse click
		  Mouse_Getvalue(x,y)
		  
		  
		  // Pan Image
		  if Keyboard.AsyncKeyDown(49) then
		    tempx=mouse_xpixel-x
		    Pan_X=Pan_X+tempx
		    
		    tempy=mouse_ypixel-y
		    Pan_Y=Pan_Y+tempy
		    
		    RePaint
		    mouse_ypixel=y
		    mouse_xpixel=x
		    
		    
		    // Adjust window and level
		  Elseif Keyboard.AsyncKeyDown( &h0D) and ViewFlag=1 then
		    Image_WL(x,y)
		    
		    
		    //Paint Dose values
		  Elseif Window_Treatment.BevelButton_DosePaint_on.Value then
		    if ViewFlag=1 Then
		      Buffer
		      xcm=mouse_xcm
		      ycm=mouse_ycm
		      Dose_Paint(xcm,ycm)
		      ReMake
		    end
		    
		    
		    
		    //Adjust Cross Hairs
		  elseif Window_Treatment.CheckBox_cross.Value then
		    Cross_Hairs(x,y)
		    RePaint
		    
		    
		    // Adjust Ruler points
		  elseif Window_Treatment.CheckBox_Profile_showR.Value Then
		    if Ruler.Move_Point1 Then
		      Ruler.x1pix=x
		      Ruler.y1pix=y
		      Ruler.Point1.X_cm=mouse_xcm
		      Ruler.Point1.Y_cm=mouse_ycm
		      Ruler.Point1.Z_cm=mouse_zcm
		    elseif Ruler.Move_Point2 Then
		      Ruler.x2pix=x
		      Ruler.y2pix=y
		      Ruler.Point2.X_cm=mouse_xcm
		      Ruler.Point2.Y_cm=mouse_ycm
		      Ruler.Point2.Z_cm=mouse_zcm
		    end
		    Window_Treatment.Profile_RulerUpdate
		    RePaint
		  end
		  
		  
		  
		  //Do the point dose calculation
		  If Window_Treatment.dose_index<>-1 then
		    test=RTOG_Dose_Interpolate(mouse_xcm,mouse_ycm,mouse_zcm,gRTOG.Plan(Plan_Index).Dose(Window_Treatment.dose_index))
		    if abs(Test)<0.1 Then
		      Dose_Value=Format(test,"-#.###e")
		    else
		      Dose_Value=Format(test,"-#.##")
		    end
		    RePaint
		  end
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseEnter()
		  me.SetFocus
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  Mouse_Getvalue(x,y)
		  me.Repaint
		  
		  if MouseCross Then
		    me.Display.Graphics.ForeColor=RGB(255,255,255)
		    me.Display.Graphics.DrawLine(x,0,x,me.Height)
		    me.Display.Graphics.DrawLine(0,y,me.Width,y)
		  end
		  me.Refresh(False)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  if Window_Treatment.Move_CrossHairs then
		    Window_Treatment.Move_CrossHairs=False
		    Window_Treatment.Window_canvas_refresh
		    
		    Window_Treatment.Canvas_Left.cross_axial=False
		    Window_Treatment.Canvas_Left.cross_sagittal=False
		    Window_Treatment.Canvas_Left.cross_coronal=False
		    
		    Window_Treatment.Canvas_Right.cross_axial=False
		    Window_Treatment.Canvas_Right.cross_sagittal=False
		    Window_Treatment.Canvas_Right.cross_coronal=False
		    
		    Window_Treatment.Canvas_Top.cross_axial=False
		    Window_Treatment.Canvas_Top.cross_sagittal=False
		    Window_Treatment.Canvas_Top.cross_coronal=False
		  end
		  
		  Ruler.Move_Point1=False
		  Ruler.Move_Point2=False
		  
		  if WL_Mouse Then
		    WL_Mouse=False
		    gVis.WL_Recalculate
		  end
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  bg=RGB(0,0,0)
		  Ruler=new Class_Ruler
		  Ruler.Point1=new Class_Points
		  Ruler.Point2=new Class_Points
		  Ruler.x1pix=-1
		  Ruler.x2pix=-1
		  Ruler.y1pix=10
		  Ruler.y2pix=35
		  TheDose=new RTOG_Dose_Distribution
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  if g<> nil Then
		    if g.Width>0 and g.Height>0 Then
		      g.DrawPicture Display,0,0
		    end
		  end
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Buffer()
		  // Distance to outer edge of image
		  
		  
		  if ViewFlag=1 Then
		    // Axial Picture
		    buffer_offx=round((me.Display.Width-gvis.nx*canvas_scale*gvis.scale_width/gvis.pixel_resolution)/2)-Pan_X
		    buffer_offy=round((me.Display.Height-gvis.ny*canvas_scale*gvis.scale_height/gvis.pixel_resolution)/2)-Pan_Y
		    
		  elseif ViewFlag=2 Then
		    // Sagittal Picture
		    buffer_offx=round((me.Display.Width-gvis.ny*canvas_scale*gvis.scale_height/gvis.pixel_resolution)/2)-Pan_x
		    buffer_offy=Round((me.Display.Height-gvis.nz*canvas_scale*gvis.scale_thickness/gvis.pixel_resolution)/2)-Pan_Y
		    
		  elseif ViewFlag=3 Then
		    // Coronal Picture
		    buffer_offx=round((me.Display.Width-gvis.nx*canvas_scale*gvis.scale_width/gvis.pixel_resolution)/2)-Pan_X
		    buffer_offy=Round((me.Display.Height-gvis.nz*canvas_scale*gvis.scale_thickness/gvis.pixel_resolution)/2)-Pan_Y
		    
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Canvas_Resize()
		  RePaint
		  Ruler_cm_to_pix
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function cm_to_pix_x() As integer
		  
		  if ViewFlag=1 Then
		    Ruler.x1pix=round((Ruler.point1.x_cm/gvis.scale_width+gvis.nx/2-gvis.xoff_set)*canvas_scale+buffer_offx)
		    Ruler.x2pix=round((Ruler.Point2.x_cm/gvis.scale_width+gvis.nx/2-gvis.xoff_set)*canvas_scale+buffer_offx)
		    Ruler.y2pix=round((Ruler.point2.y_cm/gvis.scale_height+gvis.ny/2+gvis.yoff_set)*canvas_scale+buffer_offy)
		    Ruler.y1pix=round((Ruler.Point1.y_cm/gvis.scale_height+gvis.ny/2+gvis.yoff_set)*canvas_scale+buffer_offy)
		  elseif ViewFlag=2 Then
		    Ruler.x1pix=round((Ruler.point1.x_cm/gvis.scale_height + gvis.ny/2 - gvis.yoff_set)*canvas_scale)+buffer_offx
		    Ruler.x2pix=round((Ruler.Point2.x_cm/gvis.scale_height + gvis.ny/2 - gvis.yoff_set)*canvas_scale)+buffer_offx
		    Ruler.y2pix=round(((gRTOG.Scan(UBound(gRTOG.Scan)).Z_Value-Ruler.point2.y_cm)*gvis.scale_thickness/gvis.pixel_resolution)*canvas_scale)+buffer_offy
		    Ruler.y1pix=round(((gRTOG.Scan(UBound(gRTOG.Scan)).Z_Value-Ruler.Point1.y_cm)*gvis.scale_thickness/gvis.pixel_resolution)*canvas_scale)+buffer_offy
		  elseif ViewFlag=3 Then
		    Ruler.x2pix=round((Ruler.Point2.x_cm/gvis.pixel_resolution + gvis.nx*gvis.scale_width/gvis.pixel_resolution/2 - gvis.xoff_set)*canvas_scale)+buffer_offx
		    Ruler.x1pix=round((Ruler.point1.x_cm/gvis.pixel_resolution + gvis.nx*gvis.scale_width/gvis.pixel_resolution/2 - gvis.xoff_set)*canvas_scale)+buffer_offx
		    Ruler.y1pix=round(((gRTOG.Scan(UBound(gRTOG.Scan)).Z_Value-Ruler.Point1.y_cm+gvis.scale_thickness/2)/gvis.pixel_resolution)*canvas_scale)+buffer_offy
		    Ruler.y2pix=round(((gRTOG.Scan(UBound(gRTOG.Scan)).Z_Value-Ruler.point2.y_cm+gvis.scale_thickness/2)/gvis.pixel_resolution)*canvas_scale)+buffer_offy
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function cm_to_pix_y() As integer
		  
		  if ViewFlag=1 Then
		    
		  elseif ViewFlag=2 Then
		    
		  elseif ViewFlag=3 Then
		    
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Cross_Hairs(x as integer, y as integer)
		  //-----------------------------------------
		  //
		  //
		  //-----------------------------------------
		  Dim tempx,tempy  as integer
		  Dim xcm,ycm,test,snx,sny,snz as Single
		  //-----------------------------------------
		  
		  
		  
		  snx=gvis.scale_width/gvis.pixel_resolution
		  sny=gvis.scale_height/gvis.pixel_resolution
		  snz=gvis.scale_thickness/gvis.pixel_resolution
		  
		  if ViewFlag=1 Then
		    
		    if Window_Treatment.Canvas_Left.ViewFlag=2 then
		      if Window_Treatment.Canvas_Left.cross_sagittal then
		        Window_Treatment.Canvas_Left.canvas_sag=Round((x-buffer_offx)/me.canvas_scale/snx)
		        if Window_Treatment.Canvas_Left.canvas_sag<0 then
		          Window_Treatment.Canvas_Left.canvas_sag=0
		        elseif Window_Treatment.Canvas_Left.canvas_sag>=gvis.nx then
		          Window_Treatment.Canvas_Left.canvas_sag=gvis.nx-1
		        end
		        RePaint
		        Window_Treatment.Canvas_left.ReMake
		      end
		    elseif Window_Treatment.Canvas_Left.ViewFlag=3 then
		      if Window_Treatment.Canvas_Left.cross_coronal  then
		        Window_Treatment.Canvas_Left.canvas_cor=(y-buffer_offy)/me.canvas_scale
		        if Window_Treatment.Canvas_Left.canvas_cor<0 then
		          Window_Treatment.Canvas_Left.canvas_cor=0
		        elseif Window_Treatment.Canvas_Left.canvas_cor>=gvis.ny then
		          Window_Treatment.Canvas_Left.canvas_cor=gvis.ny-1
		        end
		        RePaint
		        Window_Treatment.Canvas_left.ReMake
		      end
		    end
		    
		    if Window_Treatment.Canvas_Right.ViewFlag=2 then
		      if Window_Treatment.Canvas_Right.cross_sagittal then
		        Window_Treatment.Canvas_Right.canvas_sag=(x-buffer_offx)/me.canvas_scale/snx
		        if Window_Treatment.Canvas_Right.canvas_sag<0 then
		          Window_Treatment.Canvas_Right.canvas_sag=0
		        elseif Window_Treatment.Canvas_Right.canvas_sag>=gvis.nx then
		          Window_Treatment.Canvas_Right.canvas_sag=gvis.nx-1
		        end
		        RePaint
		        Window_Treatment.Canvas_Right.ReMake
		      end
		    elseif Window_Treatment.Canvas_Right.ViewFlag=3 then
		      if  Window_Treatment.Canvas_Right.cross_coronal Then
		        Window_Treatment.Canvas_Right.canvas_cor=(y-buffer_offy)/me.canvas_scale
		        if Window_Treatment.Canvas_Right.canvas_cor<0 then
		          Window_Treatment.Canvas_Right.canvas_cor=0
		        elseif Window_Treatment.Canvas_Right.canvas_cor>=gvis.ny then
		          Window_Treatment.Canvas_Right.canvas_cor=gvis.ny-1
		        end
		        RePaint
		        Window_Treatment.Canvas_Right.ReMake
		      end
		    end
		    
		    if Window_Treatment.Canvas_Top.ViewFlag=2 then
		      if Window_Treatment.Canvas_Top.cross_sagittal then
		        Window_Treatment.Canvas_Right.canvas_sag=(x-buffer_offx)/me.canvas_scale
		        if Window_Treatment.Canvas_Top.canvas_sag<0 then
		          Window_Treatment.Canvas_Top.canvas_sag=0
		        elseif Window_Treatment.Canvas_Top.canvas_sag>=gvis.nx then
		          Window_Treatment.Canvas_Top.canvas_sag=gvis.nx-1
		        end
		        RePaint
		        Window_Treatment.Canvas_Top.ReMake
		      end
		    elseif Window_Treatment.Canvas_Top.ViewFlag=3 then
		      if Window_Treatment.Canvas_Top.cross_coronal then
		        Window_Treatment.Canvas_Top.canvas_cor=(y-buffer_offy)/me.canvas_scale
		        if Window_Treatment.Canvas_Top.canvas_cor<0 then
		          Window_Treatment.Canvas_Top.canvas_cor=0
		        elseif Window_Treatment.Canvas_Top.canvas_cor>=gvis.ny then
		          Window_Treatment.Canvas_Top.canvas_cor=gvis.ny-1
		        end
		        RePaint
		        Window_Treatment.Canvas_Top.ReMake
		      end
		    end
		    
		  elseif ViewFlag =2 then
		    if Window_Treatment.Canvas_Top.ViewFlag=1 Then
		      if Window_Treatment.Canvas_Top.cross_axial then
		        Window_Treatment.Canvas_Top.canvas_slice=gvis.nz-(y-buffer_offy)*gvis.scale_height/gvis.scale_thickness/me.canvas_scale
		        if  Window_Treatment.Canvas_Top.canvas_slice<0 then
		          Window_Treatment.Canvas_Top.canvas_slice=0
		        elseif  Window_Treatment.Canvas_Top.canvas_slice>=gvis.nz then
		          Window_Treatment.Canvas_Top.canvas_slice=gvis.nz-1
		        end
		        RePaint
		        Window_Treatment.Canvas_Top.ReMake
		      end
		    elseif Window_Treatment.Canvas_Top.ViewFlag=3 Then
		      if Window_Treatment.Canvas_Top.cross_coronal then
		        Window_Treatment.Canvas_Top.canvas_cor=(x-buffer_offx)/me.canvas_scale
		        if Window_Treatment.Canvas_Top.canvas_cor<0 then
		          Window_Treatment.Canvas_Top.canvas_cor=0
		        elseif Window_Treatment.Canvas_Top.canvas_cor>=gvis.ny then
		          Window_Treatment.Canvas_Top.canvas_cor=gvis.ny-1
		        end
		        RePaint
		        Window_Treatment.Canvas_Top.ReMake
		      end
		    end
		    
		    
		    if Window_Treatment.Canvas_Left.ViewFlag=1 Then
		      if Window_Treatment.Canvas_Left.cross_axial then
		        Window_Treatment.Canvas_Left.canvas_slice=gvis.nz-(y-buffer_offy)*gvis.scale_height/gvis.scale_thickness/me.canvas_scale
		        if  Window_Treatment.Canvas_Left.canvas_slice<0 then
		          Window_Treatment.Canvas_Left.canvas_slice=0
		        elseif  Window_Treatment.Canvas_Left.canvas_slice>=gvis.nz then
		          Window_Treatment.Canvas_Left.canvas_slice=gvis.nz-1
		        end
		        RePaint
		        Window_Treatment.Canvas_Left.ReMake
		      end
		    elseif Window_Treatment.Canvas_Left.ViewFlag=3 Then
		      if Window_Treatment.Canvas_Left.cross_coronal then
		        Window_Treatment.Canvas_Left.canvas_cor=(x-buffer_offx)/me.canvas_scale
		        if Window_Treatment.Canvas_Left.canvas_cor<0 then
		          Window_Treatment.Canvas_Left.canvas_cor=0
		        elseif Window_Treatment.Canvas_Left.canvas_cor>=gvis.ny then
		          Window_Treatment.Canvas_Left.canvas_cor=gvis.ny-1
		        end
		        RePaint
		        Window_Treatment.Canvas_Left.ReMake
		      end
		    end
		    
		    
		    if Window_Treatment.Canvas_Right.ViewFlag=1 Then
		      if Window_Treatment.Canvas_Right.cross_axial then
		        
		        Window_Treatment.Canvas_Right.canvas_slice=gvis.nz-(y-buffer_offy)*gvis.scale_height/gvis.scale_thickness/me.canvas_scale
		        if  Window_Treatment.Canvas_Right.canvas_slice<0 then
		          Window_Treatment.Canvas_Right.canvas_slice=0
		        elseif  Window_Treatment.Canvas_Right.canvas_slice>=gvis.nz then
		          Window_Treatment.Canvas_Right.canvas_slice=gvis.nz-1
		        end
		        RePaint
		        Window_Treatment.Canvas_Right.ReMake
		      end
		      
		    elseif Window_Treatment.Canvas_Right.ViewFlag=3 Then
		      
		      if Window_Treatment.Canvas_Right.cross_coronal then
		        Window_Treatment.Canvas_Right.canvas_cor=(x-buffer_offx)/me.canvas_scale
		        if Window_Treatment.Canvas_Right.canvas_cor<0 then
		          Window_Treatment.Canvas_Right.canvas_cor=0
		        elseif Window_Treatment.Canvas_Right.canvas_cor>=gvis.ny then
		          Window_Treatment.Canvas_Right.canvas_cor=gvis.ny-1
		        end
		        
		        RePaint
		        Window_Treatment.Canvas_Right.ReMake
		      end
		    end
		    
		    
		    
		  Elseif ViewFlag = 3 then
		    
		    if Window_Treatment.Canvas_Top.ViewFlag=1 Then
		      if Window_Treatment.Canvas_Top.cross_axial Then
		        
		        Window_Treatment.Canvas_Top.canvas_slice=gvis.nz-(y-buffer_offy)*gvis.scale_height/gvis.scale_thickness/me.canvas_scale
		        if Window_Treatment.Canvas_Top.canvas_slice<0 then
		          Window_Treatment.Canvas_Top.canvas_slice=0
		        elseif Window_Treatment.Canvas_Top.canvas_slice>=gvis.nz then
		          Window_Treatment.Canvas_Top.canvas_slice=gvis.nz-1
		        end
		        RePaint
		        Window_Treatment.Canvas_Top.ReMake
		      end
		    elseif Window_Treatment.Canvas_Top.ViewFlag=2 Then
		      if Window_Treatment.Canvas_Top.cross_sagittal Then
		        Window_Treatment.Canvas_Top.canvas_sag=(x-buffer_offx)/me.canvas_scale
		        if Window_Treatment.Canvas_Top.canvas_sag<0 then
		          Window_Treatment.Canvas_Top.canvas_sag=0
		        elseif Window_Treatment.Canvas_Top.canvas_sag>=gvis.nx then
		          Window_Treatment.Canvas_Top.canvas_sag=gvis.nx-1
		        end
		        RePaint
		        Window_Treatment.Canvas_Top.ReMake
		      end
		    end
		    
		    if Window_Treatment.Canvas_Left.ViewFlag=1 Then
		      if Window_Treatment.Canvas_Left.cross_axial Then
		        Window_Treatment.Canvas_Left.canvas_slice=gvis.nz-(y-buffer_offy)*gvis.scale_height/gvis.scale_thickness/me.canvas_scale
		        if Window_Treatment.Canvas_Left.canvas_slice<0 then
		          Window_Treatment.Canvas_Left.canvas_slice=0
		        elseif Window_Treatment.Canvas_Left.canvas_slice>=gvis.nz then
		          Window_Treatment.Canvas_Left.canvas_slice=gvis.nz-1
		        end
		        RePaint
		        Window_Treatment.Canvas_Left.ReMake
		      end
		    elseif Window_Treatment.Canvas_Left.ViewFlag=2 Then
		      if Window_Treatment.Canvas_Left.cross_sagittal Then
		        Window_Treatment.Canvas_Left.canvas_sag=(x-buffer_offx)/me.canvas_scale
		        if Window_Treatment.Canvas_Left.canvas_sag<0 then
		          Window_Treatment.Canvas_Left.canvas_sag=0
		        elseif Window_Treatment.Canvas_Left.canvas_sag>=gvis.nx then
		          Window_Treatment.Canvas_Left.canvas_sag=gvis.nx-1
		        end
		        RePaint
		        Window_Treatment.Canvas_Left.ReMake
		      end
		      
		      
		      
		      if Window_Treatment.Canvas_Right.ViewFlag=1 Then
		        if Window_Treatment.Canvas_Right.cross_axial Then
		          Window_Treatment.Canvas_Right.canvas_slice=gvis.nz-(y-buffer_offy)*gvis.scale_height/gvis.scale_thickness/me.canvas_scale
		          if Window_Treatment.Canvas_Right.canvas_slice<0 then
		            Window_Treatment.Canvas_Right.canvas_slice=0
		          elseif Window_Treatment.Canvas_Right.canvas_slice>=gvis.nz then
		            Window_Treatment.Canvas_Right.canvas_slice=gvis.nz-1
		          end
		          RePaint
		          Window_Treatment.Canvas_Right.ReMake
		        end
		      elseif Window_Treatment.Canvas_Right.ViewFlag=2 Then
		        if Window_Treatment.Canvas_Right.cross_sagittal Then
		          Window_Treatment.Canvas_Right.canvas_sag=(x-buffer_offx)/me.canvas_scale
		          if Window_Treatment.Canvas_Right.canvas_sag<0 then
		            Window_Treatment.Canvas_Right.canvas_sag=0
		          elseif Window_Treatment.Canvas_Right.canvas_sag>=gvis.nx then
		            Window_Treatment.Canvas_Right.canvas_sag=gvis.nx-1
		          end
		          RePaint
		          Window_Treatment.Canvas_Right.ReMake
		        end
		      end
		      
		    end
		    
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Cross_Hairs_WhichOne(x as integer, y as integer)
		  // -------------------------------------
		  // Function to determine which cross hair to move
		  //
		  // -------------------------------------
		  
		  Dim tempx,tempy  as integer
		  dim xcm,ycm,test,snx,sny,snz as Single
		  
		  snx=gvis.scale_width/gvis.pixel_resolution
		  sny=gvis.scale_height/gvis.pixel_resolution
		  snz=gvis.scale_thickness/gvis.pixel_resolution
		  
		  
		  if ViewFlag=1 Then
		    if Window_Treatment.Canvas_Left.ViewFlag=2 then
		      if abs(Window_Treatment.Canvas_Left.canvas_sag*snx-(x-buffer_offx)/me.canvas_scale)<10 then
		        Window_Treatment.Canvas_Left.cross_sagittal=True
		        Window_Treatment.Move_CrossHairs=True
		      end
		    elseif Window_Treatment.Canvas_Left.ViewFlag=3 then
		      if abs(Window_Treatment.Canvas_Left.canvas_cor*sny-(y-buffer_offy)/me.canvas_scale)< 10 Then
		        Window_Treatment.Canvas_Left.cross_coronal=True
		        Window_Treatment.Move_CrossHairs=True
		      end
		    end
		    if Window_Treatment.Canvas_Right.ViewFlag=2 then
		      if abs(Window_Treatment.Canvas_Right.canvas_sag*snx-(x-buffer_offx)/me.canvas_scale)<10 then
		        Window_Treatment.Canvas_Right.cross_sagittal=True
		        Window_Treatment.Move_CrossHairs=True
		      end
		    elseif Window_Treatment.Canvas_Right.ViewFlag=3 then
		      if abs(Window_Treatment.Canvas_Right.canvas_cor*sny-(y-buffer_offy)/me.canvas_scale)< 10 Then
		        Window_Treatment.Canvas_Right.cross_coronal=True
		        Window_Treatment.Move_CrossHairs=True
		      end
		    end
		    
		    
		    
		  elseif ViewFlag =2 then
		    if Window_Treatment.Canvas_Top.ViewFlag=1 Then
		      if abs((y-buffer_offy)*gvis.scale_height/gvis.scale_thickness/me.canvas_scale-(gvis.nz-Window_Treatment.Canvas_Top.canvas_slice))<10 then
		        Window_Treatment.Canvas_top.cross_axial=True
		        Window_Treatment.Move_CrossHairs=True
		      end
		    elseif Window_Treatment.Canvas_Top.ViewFlag=3 Then
		      if abs(Window_Treatment.Canvas_Top.canvas_cor-(x-buffer_offx)/me.canvas_scale)<10 Then
		        Window_Treatment.Canvas_top.cross_coronal=True
		        Window_Treatment.Move_CrossHairs=True
		      end
		    end
		    
		    if Window_Treatment.Canvas_Left.ViewFlag=1 Then
		      if abs((y-buffer_offy)*gvis.scale_height/gvis.scale_thickness/me.canvas_scale-(gvis.nz-Window_Treatment.Canvas_Left.canvas_slice))<10 then
		        Window_Treatment.Canvas_Left.cross_axial=True
		        Window_Treatment.Move_CrossHairs=True
		      end
		    elseif Window_Treatment.Canvas_Left.ViewFlag=3 Then
		      if abs(Window_Treatment.Canvas_Left.canvas_cor-(x-buffer_offx)/me.canvas_scale)<10 Then
		        if abs((y-buffer_offy)*gvis.scale_height/gvis.scale_thickness/me.canvas_scale-Window_Treatment.Canvas_Left.canvas_slice)<10 then
		          Window_Treatment.Canvas_Left.cross_coronal=True
		          Window_Treatment.Move_CrossHairs=True
		        end
		      end
		    end
		    if Window_Treatment.Canvas_Right.ViewFlag=1 Then
		      if abs((y-buffer_offy)*gvis.scale_height/gvis.scale_thickness/me.canvas_scale-(gvis.nz-Window_Treatment.Canvas_Right.canvas_slice))<10 then
		        Window_Treatment.Canvas_Right.cross_axial=True
		        Window_Treatment.Move_CrossHairs=True
		      end
		    elseif Window_Treatment.Canvas_Right.ViewFlag=3 Then
		      if abs(Window_Treatment.Canvas_Right.canvas_cor-(x-buffer_offx)/me.canvas_scale)<10 Then
		        Window_Treatment.Canvas_Right.cross_coronal=True
		        Window_Treatment.Move_CrossHairs=True
		      end
		    end
		    
		    
		  Elseif ViewFlag = 3 then
		    if Window_Treatment.Canvas_Top.ViewFlag=1 Then
		      if Abs((gvis.nz-Window_Treatment.Canvas_Top.canvas_slice)-(y-buffer_offy)*gvis.scale_height/gvis.scale_thickness/me.canvas_scale)<10 Then
		        Window_Treatment.Canvas_top.cross_axial=True
		        Window_Treatment.Move_CrossHairs=True
		      end
		    elseif Window_Treatment.Canvas_Top.ViewFlag=2Then
		      if abs(Window_Treatment.Canvas_Top.canvas_sag*snx-(x-buffer_offx)/me.canvas_scale)<10 Then
		        Window_Treatment.Canvas_top.cross_sagittal=True
		        Window_Treatment.Move_CrossHairs=True
		      end
		    end
		    
		    if Window_Treatment.Canvas_Left.ViewFlag=1 Then
		      if Abs((gvis.nz-Window_Treatment.Canvas_Left.canvas_slice)-(y-buffer_offy)*gvis.scale_height/gvis.scale_thickness/me.canvas_scale)<10 Then
		        Window_Treatment.Canvas_Left.cross_axial=True
		        Window_Treatment.Move_CrossHairs=True
		      end
		    elseif Window_Treatment.Canvas_Left.ViewFlag=2Then
		      if abs(Window_Treatment.Canvas_Left.canvas_sag*snx-(x-buffer_offx)/me.canvas_scale)<10 Then
		        Window_Treatment.Canvas_Left.cross_sagittal=True
		        Window_Treatment.Move_CrossHairs=True
		      end
		    end
		    if Window_Treatment.Canvas_Right.ViewFlag=1 Then
		      if Abs((gvis.nz-Window_Treatment.Canvas_Right.canvas_slice)-(y-buffer_offy)*gvis.scale_height/gvis.scale_thickness/me.canvas_scale)<10 Then
		        Window_Treatment.Canvas_Right.cross_axial=True
		        Window_Treatment.Move_CrossHairs=True
		      end
		    elseif Window_Treatment.Canvas_Right.ViewFlag=2Then
		      if abs(Window_Treatment.Canvas_Right.canvas_sag*snx-(x-buffer_offx)/me.canvas_scale)<10 Then
		        Window_Treatment.Canvas_Right.cross_sagittal=True
		        Window_Treatment.Move_CrossHairs=True
		      end
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Dose_Paint(x as single, y as single)
		  //---------------------------------------------------------
		  //
		  // Paint a dose distribution
		  //
		  //---------------------------------------------------------
		  Dim dose_data_index,i,xindex,yinidex,startx,starty ,k as integer
		  Dim xcm ,ycm,dv as Single
		  //---------------------------------------------------------
		  
		  
		  if Window_Treatment.dose_index<0 or plan_index<0  or Window_Treatment.Move_CrossHairs Then
		    Return
		  end
		  
		  // 1st generate a 2D dose plane
		  if UBound(gRTOG.Plan(Plan_Index).Dose)>=Window_Treatment.dose_index Then
		    thedose=gRTOG.plan(plan_index).dose(Window_Treatment.dose_index)
		  else
		    Return
		  end
		  
		  TheDose.Save=True
		  
		  dose_data_index=-1
		  
		  'Find the Right dose distribution depending on the Z value
		  
		  dose_data_index=canvas_slice
		  
		  
		  dv=val(Window_Treatment.EditField_DoseValue.Text)
		  
		  
		  startx=Round((X-thedose.Coord_1_1st_point)/thedose.Horizontal_Grid)
		  starty=Round((Y-thedose.Coord_2_1st_point)/thedose.Vertical_Grid)
		  
		  
		  
		  for k=1 to Window_Treatment.dose_paint_size
		    for i=1 to Window_Treatment.dose_paint_size
		      
		      if  Window_Treatment.dose_paint_size=1 then
		        xindex=startx
		        yinidex=starty
		      else
		        xindex=startx-Window_Treatment.dose_paint_size/2+i
		        yinidex=starty-Window_Treatment.dose_paint_size/2+k
		      end
		      
		      
		      
		      if xindex>=0 and xindex<thedose.Size_of_Dimension1 and yinidex>=0 and yinidex<thedose.Size_of_Dimension2 then
		        thedose.Dose_Distribution(dose_data_index).Points(xindex+yinidex*(thedose.Size_of_Dimension1))=dv
		        
		        if dv> thedose.Dmax then
		          thedose.Dmax=dv
		        end
		      end
		    next
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Image_WL(x as integer, y as integer)
		  //---------------------------------------
		  //
		  //---------------------------------------
		  Dim Tempx,tempy as integer
		  //---------------------------------------
		  
		  tempx=Round(2*(gvis.max_pix-abs(gvis.min_pix))/me.Width)*(mouse_xpixel-x)
		  tempy=Round(2*(gvis.max_pix-abs(gvis.min_pix))/me.Height)*(mouse_ypixel-y)
		  
		  tempx=initial_WW-tempx
		  tempy=initial_WL-tempy
		  
		  if Tempy< gvis.min_pix then
		    Tempy=gvis.min_pix
		  end
		  if tempy>gvis.max_pix Then
		    Tempy=gvis.max_pix
		  end
		  
		  
		  if Tempx< 0 then
		    Tempx=0
		  end
		  if tempx> (gvis.max_pix-abs(gvis.min_pix)) Then
		    Tempx=gvis.max_pix-abs(gvis.min_pix)
		  end
		  
		  
		  Window_Treatment.Slider_Window_Level.Value=tempy
		  Window_Treatment.Slider_Window_Width.Value=Tempx
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Make_ColourWash(value as Single,dmin as Single, dmax as Single) As Integer
		  //-----------------------------------------------------
		  // Method to draw Axial Dose properties
		  //
		  //-----------------------------------------------------
		  dim tmpint as integer
		  dim rangecw,h as Single
		  //==========================
		  
		  
		  
		  
		  if gVis.Colourwash_options Then
		    rangecw=gVis.ColourWashMax-gVis.ColourWashMin
		  else
		    rangecw=dmax-dmin
		  end
		  
		  if rangecw=0 then
		    tmpint=0
		  else
		    
		    if gVis.Colourwash_options Then
		      h=value-gVis.ColourWashMin
		      
		      if h<gVis.ColourWashMin Then
		        h=0
		      elseif h>gVis.ColourWashMax Then
		        h=gVis.ColourWashMax
		        tmpint=255
		      else
		        tmpint=abs(Round(255*h/rangecw))
		      end
		      
		      if tmpint>255 Then
		        tmpint=255
		      end
		      
		      
		    else
		      h=value-dmin
		      
		      tmpint=abs(Round(255*h/rangecw))
		      if tmpint>255 or tmpint<0 Then
		        tmpint=0
		      end
		    end
		    
		    
		    
		  end
		  
		  
		  Return tmpint
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Make_Dose_Axial()
		  //-----------------------------------------------------
		  // Method to draw Axial Dose properties
		  //
		  //-----------------------------------------------------
		  Dim  Z(-1,-1), X(), Y()   as Single
		  Dim dose_data_index,x1,x2,y1,y2,i, j,texth,isospace,isoone As Integer
		  Dim hot_p,cold_p As Single
		  Dim data as RTOG_Dose_Plane
		  Dim tmpsurf as RGBSurface
		  dim tmpint,startx,starty,real_sizex,real_sizey,tran as integer
		  Dim gg as Graphics
		  //==========================
		  
		  Pic_Dose=nil
		  
		  ReDim Isolines_Main(-1)
		  
		  if Window_Treatment.dose_index<0 or plan_index<0  or Window_Treatment.Move_CrossHairs Then
		    Return
		  end 
		  
		  
		  
		  
		  
		  dose_data_index=-1
		  
		  hot_p=gRTOG.Scan(canvas_slice).Z_Value
		  
		  // Check to see the dose limits
		  
		  
		  if hot_p>(thedose.Coord_3_1st_point-thedose.Depth_Grid/2) and hot_p<(thedose.Coord_3_1st_point+thedose.Depth_Grid/2+thedose.Depth_Grid*(thedose.Size_of_Dimension3-1)) Then
		    
		  else
		    Return
		  end
		  
		  'Find the Right dose distribution depending on the Z value
		  for i=0 to UBound(thedose.Dose_Distribution)
		    if (gRTOG.Scan(canvas_slice).Z_Value - thedose.Dose_Distribution(i).Z)<thedose.Depth_Grid/2 then
		      dose_data_index=i
		      axial_Dose_Zvalue=thedose.Dose_Distribution(i).Z
		      exit
		    end
		  next
		  
		  
		  if dose_data_index<0 then
		    'MsgBox "Could not find correct Z plane"
		    Return
		  end
		  
		  
		  redim Z(thedose.Size_of_Dimension1-1,thedose.Size_of_Dimension2-1)'Dose data array
		  redim Axial_dose_plane(thedose.Size_of_Dimension1-1,thedose.Size_of_Dimension2-1)'Dose data array
		  redim X(thedose.Size_of_Dimension1-1) 'X values of grid in cm
		  redim Y(thedose.Size_of_Dimension2-1) 'Y values of grid in cm
		  
		  
		  data=thedose.Dose_Distribution(dose_data_index)
		  
		  Axial_Dose_delx=thedose.Horizontal_Grid
		  Axial_Dose_dely=thedose.Vertical_Grid
		  
		  
		  'Populate Y grid in cm
		  for i=0 to thedose.Size_of_Dimension2-1
		    Y(i)=thedose.Coord_2_1st_point+Axial_Dose_dely*i
		  next
		  
		  'Populate X grid in cm
		  for i=0 to thedose.Size_of_Dimension1-1
		    X(i)=thedose.Coord_1_1st_point+Axial_Dose_delx*i
		  next
		  
		  hot_p=-100000000000
		  cold_p=100000000000
		  
		  'Populate Dose data array
		  for j=0 to thedose.Size_of_Dimension2-1
		    for i=0 to thedose.Size_of_Dimension1-1
		      Z(i,j)=data.Points(j*thedose.Size_of_Dimension1+i)
		      Axial_Dose_Plane(i,j)=Z(i,j)
		      if Z(i,j)> hot_p then
		        hot_p=Z(i,j)
		        Axial_Dose_Max_x1=i*Axial_Dose_delx+thedose.Coord_1_1st_point
		        Axial_Dose_Max_y1=j*Axial_Dose_dely+thedose.Coord_2_1st_point
		      end
		      if Z(i,j)< cold_p then
		        cold_p=Z(i,j)
		        Axial_Dose_Min_x1=i*Axial_Dose_delx+thedose.Coord_1_1st_point
		        Axial_Dose_Min_y1=j*Axial_Dose_dely+thedose.Coord_2_1st_point
		      end
		    next
		  next
		  // 2D dose plane finished
		  
		  //=================draw colour wash====================
		  Axial_Dose_x1=thedose.Coord_1_1st_point-thedose.Horizontal_Grid/2
		  Axial_Dose_y1=thedose.Coord_2_1st_point-thedose.vertical_grid/2
		  
		  
		  Pic_Dose=New Picture(thedose.Size_of_Dimension1,thedose.Size_of_Dimension2,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		  if Pic_Dose=nil Then
		    Return
		  end
		  
		  gg = Pic_Dose.graphics
		  for i=0 to thedose.Size_of_Dimension2-1
		    for j=0 to thedose.Size_of_Dimension1-1
		      tmpint=Make_ColourWash(Z(j,i),TheDose.Dmin,TheDose.Dmax)
		      if Window_Treatment.colour_wash=2 then
		        gg.Pixel(j,i)=gvis.colour_map_jet(tmpint)
		      else
		        gg.Pixel(j,i)=gvis.colour_map_hot(tmpint)
		      end
		    next
		  next
		  
		  
		  // 255 fully transparent, 0 is not transparent
		  tran=(Window_Treatment.Slider_Dose_Trans.Value/100)*255
		  gg=Pic_Dose.Mask.Graphics
		  gg.ClearRect 0,0,thedose.Size_of_Dimension1,thedose.Size_of_Dimension2
		  gg.ForeColor=rgb(tran,tran,tran)
		  gg.FillRect 0,0,thedose.Size_of_Dimension1,thedose.Size_of_Dimension2
		  
		  '== END Colour wash display==============================
		  if Window_Treatment.CheckBox_Iso.Value then
		    Make_Dose_IsoValues(Z,X,Y)
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Make_Dose_Coronal()
		  //-----------------------------------------------------
		  // Method to draw Coronal Dose properties
		  //
		  //-----------------------------------------------------
		  dim  Z(0,0),X(0),Y(0) as Single
		  Dim i, j,m,k,the_one As Integer
		  Dim dose as RTOG_Dose_Distribution
		  dim dx,dz,max,Y_start as Single
		  dim tmpint,tran as integer
		  Dim cor_cm,cor_y_index as Single
		  Dim gg as Graphics
		  //==========================
		  
		  Pic_Dose=nil
		  
		  
		  ReDim Isolines_Main(-1)
		  
		  if Window_Treatment.dose_index<>-1 and plan_index<>-1 and not Window_Treatment.Move_CrossHairs and (Window_Treatment.CheckBox_dose.Value or Window_Treatment.CheckBox_Iso.Value) then
		    if Window_Treatment.dose_index<0 or Window_Treatment.Move_CrossHairs Then 
		      Return
		    end
		    
		    cor_cm=canvas_cor*gvis.scale_height+gVis.yoff_set
		    
		    dose=new RTOG_Dose_Distribution
		    dose=gRTOG.plan(plan_index).dose(Window_Treatment.dose_index)
		    
		    'Find the Right dose distribution depending on the Y value
		    
		    
		    redim Z(dose.Size_of_Dimension1-1,dose.Size_of_Dimension3-1)'Dose data array
		    redim X(dose.Size_of_Dimension1-1) 'X values of grid in cm
		    redim Y(dose.Size_of_Dimension3-1) 'Z values of grid in cm
		    
		    
		    dx=dose.Horizontal_Grid
		    dz=dose.Depth_Grid
		    
		    Axial_Dose_delx=dx
		    Axial_Dose_dely=dz
		    Axial_Dose_x1=dose.Coord_1_1st_point-dx/2
		    Axial_Dose_y1=dose.Coord_3_1st_point+(dose.Size_of_Dimension3-1)*dz+dz/2
		    
		    
		    // Populate Y grid in cm
		    for i=0 to dose.Size_of_Dimension3-1
		      Y(i)=dose.Coord_3_1st_point+dz*(dose.Size_of_Dimension3-1-i)
		    next
		    
		    'Populate X grid in cm
		    for i=0 to dose.Size_of_Dimension1-1
		      X(i)=dose.Coord_1_1st_point+dx*i
		    next
		    
		    
		    if cor_cm > (dose.Coord_2_1st_point) and cor_cm < (dose.Coord_2_1st_point+(dose.Size_of_Dimension2-1)*dose.Vertical_Grid) then
		    else
		      Return
		    end
		    
		    cor_y_index=Round((cor_cm-dose.Coord_2_1st_point)/dose.Vertical_Grid)
		    
		    // Find right dose distribution, create dose plane
		    for j=0 to dose.Size_of_Dimension3-1
		      the_one=dose.Size_of_Dimension3-1-j
		      for i=0 to dose.Size_of_Dimension1-1
		        Z(i,j)=dose.Dose_Distribution(the_one).Points(cor_y_index*(dose.Size_of_Dimension1)+i)
		      next
		    next
		    
		    
		    
		    
		    if Window_Treatment.CheckBox_Iso.Value then
		      Make_Dose_IsoValues(Z,X,Y)
		    end
		    
		    
		    '//================Draw colour wash display
		    if Window_Treatment.CheckBox_dose.Value then
		      Pic_Dose=New Picture(dose.Size_of_Dimension1,dose.Size_of_Dimension3,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		      if Pic_Dose=nil Then
		        Return
		      end
		      gg = Pic_Dose.graphics
		      for i=0 to dose.Size_of_Dimension3-1
		        for j=0 to dose.Size_of_Dimension1-1
		          tmpint=Make_ColourWash(Z(j,i),TheDose.Dmin,TheDose.Dmax)
		          if Window_Treatment.colour_wash=2 then
		            gg.Pixel(j,i)=gvis.colour_map_jet(tmpint)
		          else
		            gg.Pixel(j,i)=gvis.colour_map_hot(tmpint)
		          end
		        next
		      next
		      
		      
		      
		      // 255 fully transparent, 0 is not transparent
		      tran=(Window_Treatment.Slider_Dose_Trans.Value/100)*255
		      gg=Pic_Dose.Mask.Graphics
		      gg.ClearRect 0,0,dose.Size_of_Dimension1,dose.Size_of_Dimension3
		      gg.ForeColor=rgb(tran,tran,tran)
		      gg.FillRect 0,0,dose.Size_of_Dimension1,dose.Size_of_Dimension3
		    end' end colour wash display
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Make_Dose_IsoValues(Z(,) as single,  X() as single, Y() as single)
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
		  //
		  // Updates
		  //
		  // 2012 Alexander: Removed and if filter on dose value
		  '=============================================================================
		  Dim Nullcode,temp1,temp2,dmin,dmax as Single
		  Dim nc, im(4), jm(4), castab(3, 3, 3),j,i,k,m As Integer
		  dim  ilb,iub,jlb,jub as integer' index bounds of data matrix (x-lower,x-upper,y-lower,y-upper)
		  Dim h(5), xh(5), yh(5) As Single
		  Dim sh(5),m1, m2, m3,case_value As Integer
		  Dim x1, x2, y1, y2 As Single
		  Dim Line as Class_Line
		  Dim values as Class_Iso_Dose_Settings
		  //------------------------------------------------------------------
		  
		  if gVis.iso.values=Nil Then
		    Return
		  end
		  
		  
		  ReDim Isolines_Main(UBound(gVis.iso.values.lines))
		  values=gVis.Iso.Values
		  
		  jlb=0
		  jub =ubound(Y)
		  
		  ilb=0
		  iub= ubound(X)
		  
		  Nullcode = 1e+37
		  // number of contour levels
		  nc=ubound(gVis.Iso.Values.values)
		  if nc <= -1 Then
		    Return
		  end
		  
		  for i=0 to UBound(gVis.iso.values.lines)
		    Isolines_Main(i)=new Class_IsoDose_Lines
		    ReDim Isolines_Main(i).line(-1)
		  next
		  
		  
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
		  castab(0, 0, 2) = 8
		  castab(0, 1, 0) = 0
		  castab(0, 1, 1) = 2
		  castab(0, 1, 2) = 5
		  castab(0, 2, 0) = 7
		  castab(0, 2, 1) = 6
		  castab(0, 2, 2) = 9
		  castab(1, 0, 0) = 0
		  castab(1, 0, 1) = 3
		  castab(1, 0, 2) = 4
		  castab(1, 1, 0) = 1
		  castab(1, 1, 1) = 3
		  castab(1, 1, 2) = 1 
		  castab(1, 2, 0) = 4
		  castab(1, 2, 1) = 3
		  castab(1, 2, 2) = 0 
		  castab(2, 0, 0) = 9
		  castab(2, 0, 1) = 6
		  castab(2, 0, 2) = 7 
		  castab(2, 1, 0) = 5
		  castab(2, 1, 1) = 2
		  castab(2, 1, 2) = 0 
		  castab(2, 2, 0) = 8
		  castab(2, 2, 1) = 0
		  castab(2, 2, 2) = 0 
		  
		  For j = jub - 1 downTo jlb // Loop over Y values
		    For i = ilb To iub - 1 // Loop over X values
		      temp1 = Min(Z(i, j), Z(i, j+1))
		      temp2 = Min(Z(i+1, j), Z(i+1, j+1))
		      dmin = Min(temp1, temp2)
		      
		      temp1 = Max(Z(i, j), Z(i, j + 1))
		      temp2 = Max(Z(i+1, j), Z(i+1, j+1))
		      dmax = Max(temp1, temp2)
		      
		      if dmax>0 Then
		        i=i
		      end
		      
		      '-------------------------------------------------------------------------
		      'extra conditional added here to insure that large values are not plotted
		      'if an area should not be contoured, values above nullcode should be entered in
		      'the matrix Z
		      '------------------------------------------------------------------------
		      //If dmax >= values.values(0) And dmin <= values.values(nc) And dmax < Nullcode Then 
		      //Update 2012 Alexander: Why would we want this if condition, Removed April 2012
		      //
		      For k = 0 To nc
		        If values.values(k) >= dmin And values.values(k) < dmax and values.each_show(k) Then
		          
		          //g.foreColor=values.colours(k)
		          //g.PenWidth=gvis.iso.thickness
		          For m = 4 downTo 0
		            If (m > 0) Then
		              h(m) = Z(i + im(m - 1), j + jm(m - 1)) - values.values(k)
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
		          '               | \               /  |
		          '               |   \  m-3  /    |
		          '               |     \       /      |
		          '               |       \   /        |
		          '               |m=2  X m=2  |       the centre is vertex 0
		          '               |       /   \        |
		          '               |     /       \      |
		          '               |   /  m=1 \    |
		          '               | /               \  |
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
		              Line.Colour=values.colours(k)
		              //gVis.iso.Values.Lines(k).line.Append line
		              
		              Isolines_Main(k).line.Append line
		              '-------------------------------------------------------------------
		            End If
		          Next m
		        End If
		      Next k
		      //End If
		    Next i
		  Next j
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Make_Dose_Sagittal()
		  //-----------------------------------------------------
		  // Method to draw Sagittal Dose properties
		  //
		  //-----------------------------------------------------
		  Dim Z(0,0), X(0), Y(0),dy,dx,sag_cm,sag_x_index,Y_start as Single
		  Dim i,j,the_one,tmpint,tran As Integer
		  Dim dose as RTOG_Dose_Distribution
		  //==========================
		  
		  
		  Pic_Dose=nil
		  ReDim Isolines_Main(-1)
		  if Window_Treatment.dose_index<>-1 and plan_index<>-1 and not Window_Treatment.Move_CrossHairs and (Window_Treatment.CheckBox_dose.Value or Window_Treatment.CheckBox_Iso.Value) then
		    if Window_Treatment.dose_index<0 or Window_Treatment.Move_CrossHairs Then 
		      Return
		    end
		    
		    sag_cm=canvas_sag*gvis.scale_width+gVis.xoff_set
		    
		    dose=new RTOG_Dose_Distribution
		    dose=gRTOG.plan(plan_index).dose(Window_Treatment.dose_index)
		    
		    
		    'Find the Right dose distribution depending on the X value
		    redim Z(dose.Size_of_Dimension2-1,dose.Size_of_Dimension3-1)'Dose data array
		    redim X(dose.Size_of_Dimension2-1) 'Y values of grid in cm
		    redim Y(dose.Size_of_Dimension3-1) 'Z values of grid in cm
		    dx=dose.Vertical_Grid
		    dy=dose.Depth_Grid
		    
		    Axial_Dose_delx=dx
		    Axial_Dose_dely=dy
		    Axial_Dose_x1=dose.Coord_2_1st_point-dx/2
		    
		    Axial_Dose_y1=dose.Coord_3_1st_point+(dose.Size_of_Dimension3-1)*dy+dy/2
		    
		    // Populate Y grid in cm
		    for i=0 to dose.Size_of_Dimension3-1  
		      Y(i)=dose.Coord_3_1st_point+dy*(dose.Size_of_Dimension3-1-i)
		    next
		    
		    // Populate X grid in cm
		    for i=0 to dose.Size_of_Dimension2-1
		      X(i)=dose.Coord_2_1st_point+dx*i
		    next
		    
		    if sag_cm> (dose.Coord_1_1st_point) and sag_cm< (dose.Coord_1_1st_point+(dose.Size_of_Dimension1-1)*dose.Horizontal_Grid) then
		      sag_x_index=Round((sag_cm-dose.Coord_1_1st_point-gVis.scale_width/2)/dose.Horizontal_Grid)
		      
		      
		      
		      // Find right dose distribution, create dose plane
		      for j=0 to dose.Size_of_Dimension3-1
		        the_one=dose.Size_of_Dimension3-1-j
		        for i=0 to dose.Size_of_Dimension2-1
		          Z(i,j)=dose.Dose_Distribution(the_one).Points(sag_x_index+i*(dose.Size_of_Dimension1))
		        next
		      next
		      
		      
		      // Draw Isodose Values and legend
		      if Window_Treatment.CheckBox_Iso.Value then
		        Make_Dose_IsoValues(z,x,y)
		      end
		      
		      
		      
		      //  Draw Colour Wash display
		      if Window_Treatment.CheckBox_dose.Value then
		        Pic_Dose=New Picture(dose.Size_of_Dimension2,dose.Size_of_Dimension3,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		        if Pic_Dose<> Nil Then
		          for i=0 to dose.Size_of_Dimension3-1
		            for j=0 to dose.Size_of_Dimension2-1
		              tmpint=Make_ColourWash(Z(j,i),TheDose.Dmin,TheDose.Dmax)
		              if Window_Treatment.colour_wash=2 then
		                Pic_Dose.Graphics.Pixel(j,i)=gvis.colour_map_jet(tmpint)
		              else
		                Pic_Dose.Graphics.Pixel(j,i)=gvis.colour_map_hot(tmpint)
		              end
		            next
		          next
		          
		          // 255 fully transparent, 0 is not transparent
		          tran=(Window_Treatment.Slider_Dose_Trans.Value/100)*255
		          Pic_Dose.Mask.Graphics.ClearRect 0,0,dose.Size_of_Dimension2,dose.Size_of_Dimension3
		          Pic_Dose.Mask.Graphics.ForeColor=rgb(tran,tran,tran)
		          Pic_Dose.Mask.Graphics.FillRect 0,0,dose.Size_of_Dimension2,dose.Size_of_Dimension3
		        end
		      end
		    end
		  End
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Make_Image_Axial()
		  // ------------------------------------------
		  // Main method to Draw Axial images (ct, mr or whatever)
		  // Includes calls to draw contours and dose distributions
		  //
		  //-------------------------------------------
		  Dim x1,x2,y1,y2,size_x,size_y,start_x,start_y as integer
		  //-------------------------------------------
		  
		  size_x=Round(gvis.nx*gvis.scale_width/gvis.pixel_resolution)
		  size_y=Round(gvis.ny*gvis.scale_height/gvis.pixel_resolution)
		  
		  
		  x1=0
		  y1=0
		  x2=gVis.nx
		  y2=gVis.ny
		  
		  
		  if size_x <0 or size_y<0 Then
		    Return
		  end
		  
		  Pic_Image=NewPicture(size_x,size_y,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		  
		  if Pic_Image=nil Then
		    Return
		  end
		  
		  
		  Pic_Image.Graphics.ForeColor=bg
		  Pic_Image.Graphics.FillRect(0,0,size_x,size_y)
		  
		  
		  // Update CT/MRI image
		  if Window_Treatment.CheckBox_image.Value then
		    if gVis.scansok(canvas_slice) Then
		      Pic_Image.Graphics.DrawPicture(gvis.Scans(canvas_slice),0,0,size_x,size_y,x1,y1,x2,y2)
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Make_Image_Coronal()
		  // ------------------------------------------
		  // Main method to Draw Coronal images
		  // Includes calls to draw contours and dose distributions
		  //
		  //-------------------------------------------
		  dim pstrip as picture
		  dim pstriprgb as RGBSurface
		  Dim a as integer
		  //-------------------------------------------
		  
		  //pos in y to read from (the coronal plane in question...)
		  
		  Pic_Image=New Picture(gvis.nx,gvis.nz,32)  // for coronal y=znumber of slices(nz) and x is the same nx.
		  //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		  if Pic_Image=nil Then
		    Return
		  end
		  
		  
		  for a=UBound(gvis.scans) DownTo 0
		    pstrip=New Picture(gvis.nx,1,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		    if gvis.scansok(a) Then
		      pstrip.Graphics.DrawPicture gvis.scans(a),0,-canvas_cor
		    end
		    '//add drawing organ transparrently draw it with the shift....
		    pstriprgb=pstrip.RGBSurface
		    Pic_Image.Graphics.DrawPicture pstrip,0,UBound(gvis.scans)-a
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Make_Image_Sagittal()
		  // ------------------------------------------
		  // Main method to Draw sagittal images
		  // Includes calls to draw contours and dose distributions
		  //
		  //-------------------------------------------//
		  dim pstrip as picture
		  dim pstriprgb as RGBSurface
		  Dim gg as Graphics
		  dim b,a as Integer
		  '======================================
		  
		  Pic_Image=New Picture(gVis.ny,gVis.nz,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		  if Pic_Image=nil Then
		    Return
		  end
		  gg=Pic_Image.Graphics
		  gg.ForeColor=bg
		  gg.FillRect(0,0,gg.Width,gg.Height)
		  
		  //pos in x to read from (the sagittal plane in question...)
		  //now try with center of the stack...say 100
		  for a=0 to UBound(gvis.scans)
		    pstrip=New Picture(1,gvis.ny,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		    if gVis.scansok(a) Then
		      pstrip.Graphics.DrawPicture gvis.scans(a),-canvas_sag,0
		    end
		    pstriprgb=pstrip.RGBSurface
		    for b=0 to gvis.ny-1
		      Pic_Image.RGBSurface.Pixel(b,UBound(gvis.scans)-a)=pstriprgb.Pixel(0,b)
		    next
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Make_Structure_Axial()
		  // ------------------------------------------
		  // Main method to Draw Axial images (ct, mr or whatever)
		  // Includes calls to draw contours and dose distributions
		  //
		  //-------------------------------------------
		  Dim a,i,j,k,xx,tran,pixx,pixy,pixx2,pixy2,d1,d2,x1,x2,y1,y2,size_x,size_y,p_count as integer
		  Dim file as RTOG_Structure_One_Structure
		  Dim poly as class_polygon
		  Dim y,x,Isox,Isoy,Isoz as Single
		  Dim Structure_ready,haspoints as Boolean
		  Dim polystruc as Class_Structures
		  //-------------------------------------------
		  
		  size_x=Round(gvis.nx*gvis.scale_width/gvis.pixel_resolution)
		  size_y=Round(gvis.ny*gvis.scale_height/gvis.pixel_resolution)
		  
		  
		  if size_x<0 or size_y< 0 Then
		    Return
		  end
		  
		  Pic_Structure=New Picture(size_x,size_y,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		  if Pic_Structure=nil Then
		    Return
		  end
		  
		  Pic_Structure.Graphics.ForeColor=bg
		  Pic_Structure.Graphics.UseOldRenderer=True
		  Pic_Structure.Graphics.FillRect(0,0,size_x,size_y)
		  Pic_Structure.Mask.Graphics.ForeColor=RGB(255,255,255)
		  Pic_Structure.Mask.Graphics.FillRect(0,0,size_x,size_y)
		  Pic_Structure.Mask.Graphics.UseOldRenderer=True
		  
		  
		  
		  //-------------Draw Strucutres-------------------------------
		  // Check to see that all Structure are ready to be drawn
		  if Window_Treatment.CheckBox_show_struc.Value and not Window_Treatment.Move_CrossHairs  Then
		    if gvis.contours.Axial_Pic(canvas_slice)<> nil and gVis.Contours.Update Then
		      Pic_Structure.Graphics.DrawPicture(gvis.contours.Axial_Pic(canvas_slice),0,0,size_x,size_y,0,0,gvis.nx,gvis.ny)
		      Pic_Structure.Mask.Graphics.DrawPicture(gvis.contours.Axial_Pic(canvas_slice).mask,0,0,size_x,size_y,0,0,gvis.nx,gvis.ny) 
		    end
		    
		    p_count=-1
		    // Remake the Structure contours
		    for i = 0 to ubound(gRTOG.structures)
		      if gVis.contour_show(i) then
		        haspoints=False
		        file = new RTOG_Structure_One_Structure
		        file = gRTOG.structures(i).structure_Data(canvas_slice)
		        for j = 0 to ubound(file.segments)
		          if j=0 Then
		            polystruc=new Class_Structures
		            polystruc.structure_num=i
		          end
		          
		          poly = new class_polygon
		          poly.Colour=gvis.colour(i)
		          for k =0 to ubound(file.segments(j).Points)
		            haspoints=True
		            x=(file.segments(j).Points(k).x-gvis.xoff_set+gVis.scale_width/2)/gvis.scale_width 
		            y=(file.segments(j).Points(k).y-gvis.yoff_set+gVis.scale_height/2)/gvis.scale_height
		            poly.AddPoint_D x,y
		            
		            if Poly.PointWithin_OtherPoly=False Then
		              for xx=0 to UBound(polystruc.Structure_Poly)
		                if polystruc.Structure_Poly(xx).IsWithin_D(x,y) Then
		                  Poly.PointWithin_OtherPoly=True
		                  Poly.PolyIsWithin_Index=xx
		                  exit for xx
		                end
		              Next
		            end
		            
		          next
		          
		          // Update each segment to Structure
		          polystruc.Structure_Poly.Append poly
		          
		          
		        next
		        if haspoints Then
		          p_count=p_count+1
		          if p_count>UBound(Poly_Structures) Then
		            ReDim Poly_Structures(p_count)
		          end
		          Poly_Structures(p_count)=polystruc
		        end
		      end
		    next
		  end
		  
		  //Update the array holder for all Structure
		  ReDim Poly_Structures(p_count)
		  // -------------End Draw Strucutres-------------------------------
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Make_Structure_Coronal()
		  // ------------------------------------------
		  // Main method to Draw Coronal images
		  // Includes calls to draw contours and dose distributions
		  //
		  //-------------------------------------------
		  dim pstrip as picture
		  dim pstriprgb as RGBSurface
		  Dim a as integer
		  //-------------------------------------------
		  
		  
		  
		  
		  //=============' Draw Strucutres================
		  'Check to see that all Structure are ready to be drawn
		  if Window_Treatment.CheckBox_show_struc.Value and gVis.Contours.Update and not Window_Treatment.Move_CrossHairs Then
		    // for sagittal x=znumber of slices and y is the same y.
		    Pic_Structure=New Picture(gvis.nx,gvis.nz,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		    if Pic_Structure=nil Then
		      Return
		    end
		    Pic_Structure.Graphics.UseOldRenderer=True
		    Pic_Structure.Mask.Graphics.Underline=True
		    for a=0 to UBound(gvis.Contours.Axial_Pic)
		      if  gVis.Contours.Update  Then
		        pstrip=New Picture(gvis.nx,1,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		        pstrip.Graphics.UseOldRenderer=True
		        pstrip.Graphics.DrawPicture gvis.contours.Axial_Pic(gvis.nz-1-a),0,-(canvas_cor)
		        Pic_Structure.Graphics.DrawPicture pstrip,0,a
		        Pic_Structure.Mask.Graphics.DrawPicture gvis.contours.Axial_Pic(gvis.nz-1-a).mask,0,a,gvis.nx,1,0,canvas_cor,gvis.nx,1
		      end
		    next
		  end
		  //=============End Draw Strucutres================
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Make_Structure_Sagittal()
		  // ------------------------------------------
		  // Main method to Draw sagittal images
		  // Includes calls to draw contours and dose distributions
		  //
		  //-------------------------------------------//
		  dim sagbuffer as Picture
		  dim pstrip as picture
		  Dim a,pixx,pixy  as integer
		  Dim px,py as PixmapShape
		  
		  '======================================
		  
		  
		  ' ==========Draw Strucutres============
		  'Check to see that all Structure are ready to be drawn
		  if Window_Treatment.CheckBox_show_struc.Value and gVis.Contours.Update and not Window_Treatment.Move_CrossHairs Then
		    // for sagittal x=znumber of slices and y is the same y.
		    if gvis.nz Mod 2=0 then
		      sagbuffer=New Picture(gvis.nz,gvis.ny,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		    else
		      sagbuffer=New Picture(gvis.nz+1,gvis.ny,32)  //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		    end
		    if sagbuffer=nil Then
		      Return
		    end
		    
		    for a=0 to UBound(gvis.contours.Axial_Pic)
		      if gVis.Contours.Update Then
		        pstrip=New Picture(1,gvis.ny,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		        pstrip.Graphics.UseOldRenderer=True
		        pstrip.Graphics.DrawPicture gvis.contours.Axial_Pic(gvis.nz-1-a),-(canvas_sag),0
		        sagbuffer.Graphics.UseOldRenderer=True
		        sagbuffer.Graphics.DrawPicture pstrip,UBound(gvis.contours.Axial_Pic)-a,0
		        sagbuffer.Mask.Graphics.DrawPicture gvis.contours.Axial_Pic(gvis.nz-1-a).mask,UBound(gvis.contours.Axial_Pic)-a,0, 1,gvis.ny,canvas_sag,0,1,gvis.ny
		      end
		    next
		    px= New PixmapShape(sagbuffer)
		    py= New PixmapShape(sagbuffer.Mask)
		    px.rotation =-90/57.2958 //45 Degrees in radians
		    px.x=gvis.ny/2
		    px.y=(sagbuffer.Width)/2
		    py.rotation =-90/57.2958 //45 Degrees in radians
		    py.x=gvis.ny/2
		    py.y=(sagbuffer.Width)/2
		    
		    Pic_Structure=New Picture(gvis.ny,gvis.nz,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		    Pic_Structure.Graphics.UseOldRenderer=True
		    Pic_Structure.Mask.Graphics.UseOldRenderer=True
		    if gvis.nz Mod 2=0 then
		      Pic_Structure.Graphics.DrawObject px,0,-1
		      Pic_Structure.Mask.Graphics.DrawObject py,0,-1
		    else
		      Pic_Structure.Graphics.DrawObject px,0,-2
		      Pic_Structure.Mask.Graphics.DrawObject py,0,-2
		    end
		  end
		  '=================End Draw Structures==================
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Mouse_Getvalue(x as integer, y as integer)
		  //-------------------------------------
		  // Method to return the x,y,z position of the mouse click
		  // in cm
		  //
		  //-------------------------------------
		  
		  if ViewFlag=1 Then
		    mouse_xcm=((x-buffer_offx)/canvas_scale)*gvis.pixel_resolution+gVis.xoff_set-gVis.scale_width/2
		    mouse_ycm=((y-buffer_offY)/canvas_scale)*gvis.pixel_resolution+gVis.yoff_set-gVis.scale_width/2
		    mouse_zcm=gRTOG.Scan(canvas_slice).Z_Value
		    
		  elseif ViewFlag=2 Then
		    mouse_zcm=gVis.zoff_set-(y-buffer_offY)*gvis.pixel_resolution/canvas_scale+gVis.scale_thickness/2
		    mouse_ycm=((x-buffer_offx)/canvas_scale)*gvis.pixel_resolution+gVis.yoff_set-gVis.scale_height/2
		    mouse_xcm=(canvas_sag)*gvis.scale_width+gVis.xoff_set
		    
		    
		  elseif ViewFlag=3 Then
		    mouse_xcm=(x-buffer_offx)/canvas_scale*gvis.pixel_resolution+gVis.xoff_set-gVis.scale_width/2
		    mouse_zcm=gVis.zoff_set-(y-buffer_offY)*gvis.pixel_resolution/canvas_scale+gVis.scale_thickness/2
		    mouse_ycm=(canvas_cor)*gvis.scale_height+gVis.yoff_set
		  end
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReMake()
		  if me.Width>0 and me.Height>0 then
		    ReMake_Image
		    ReMake_Structure
		    ReMake_Dose
		  end if
		  RePaint
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReMake_Dose()
		  if me.Width>0 and me.Height>0 then
		    if ViewFlag=1 then
		      Make_Dose_Axial
		    elseif ViewFlag=2 then
		      Make_Dose_Sagittal
		    elseif ViewFlag=3 then
		      Make_Dose_Coronal
		    end if
		    RePaint
		  end
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReMake_Image()
		  if me.Width>0 and me.Height>0 then
		    if ViewFlag=1 then
		      Make_Image_Axial
		    elseif ViewFlag=2 then
		      Make_Image_Sagittal
		    elseif ViewFlag=3 then
		      Make_Image_Coronal
		    end
		  end
		  RePaint
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReMake_Structure()
		  if me.Width>0 and me.Height>0 then
		    
		    
		    if ViewFlag=1 then
		      Make_Structure_Axial
		      
		    elseif ViewFlag=2 then
		      Make_Structure_Sagittal
		      
		    elseif ViewFlag=3 then
		      Make_Structure_Coronal
		      
		    end if
		    
		    RePaint
		  end
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RePaint()
		  //------------------------------------
		  //
		  //
		  //------------------------------------
		  Dim pixx,pixy,x1,y2,y1,j,x2,i,image_sizex,image_sizey,startx,texth,isospace,Starty,isoone,Axial_Image_x1,Axial_Image_y1,real_sizex,real_sizey,disx,disy as Integer
		  Dim cc(256) as color
		  Dim gg as Graphics
		  Dim maxdose,mindose as String
		  //------------------------------------
		  
		  
		  
		  if me.Width>0 and me.Height>0 then
		    Display=new Picture(me.Width,me.Height,32)
		    gg=Display.Graphics
		    Display.Graphics.ForeColor=bg
		    Display.Graphics.FillRect 0,0,me.Width,me.Height
		    
		    if ViewFlag=1 then // ------------------ Axial image-----------
		      Repaint_Axial
		    elseif ViewFlag=2 then
		      Repaint_Sagittal
		    elseif ViewFlag=3 then //----------------------------------------------------------
		      Repaint_Coronal
		    end // Different View Flags
		    
		    '==================Patient info=================
		    
		    Display.Graphics.foreColor=&c00FFFF
		    Display.Graphics.textSize=10
		    if gPref.Show_Patient_Info Then
		      Display.Graphics.drawstring ("Name : "+gRTOG.Patient_Name+" "+gRTOG.Patient_Surname, 10, 12)
		      Display.Graphics.drawstring ("PatientID : "+gRTOG.Patient_ID+ ", StudyID : "+gRTOG.StudyID+ ", SeriesNumber : "+gRTOG.SeriesNumber, 10, 24)
		    end
		    
		    
		    // Dose info
		    Display.Graphics.foreColor=rgb(255,102,102)
		    if  Plan_Index >-1 and UBound(gRTOG.Plan) >= Plan_Index and Window_Treatment.dose_index>-1  then // removed By A Alexander Feb/2013 don't think this is needed "or Window_Treatment.BevelButton_DosePaint_on.value"
		      if Window_Treatment.dose_index<= UBound(gRTOG.Plan(Plan_Index).Dose)  then //removed or Window_Treatment.BevelButton_DosePaint_on.value
		        TheDose=gRTOG.Plan(plan_index).Dose(Window_Treatment.dose_index)
		        Display.Graphics.drawstring "Dose ("+Format(mouse_xcm,"-#.##")+", "+Format(mouse_ycm,"-#.##")+", "+Format(mouse_zcm,"-#.##") +") : "+Dose_Value+" "+TheDose.Dose_Units+ " "+Dose_Error+" %", 10,84
		        
		        if Val(Format(TheDose.dmax,"-#.###"))=0 Then
		          maxdose=Format(TheDose.dmax,"-#.###e")
		        else
		          maxdose=Format(TheDose.dmax,"-#.####")
		        end
		        
		        if Val(Format(TheDose.dmin,"-#.###"))=0 Then
		          mindose=Format(TheDose.dmin,"-#.###e")
		        else
		          mindose=Format(TheDose.dmin,"-#.####")
		        end
		        
		        Display.Graphics.drawstring "Max Dose : "+maxdose+" "+TheDose.Dose_Units,10,96
		        Display.Graphics.drawstring "Min Dose : "+mindose+" "+TheDose.Dose_Units, 10,108
		      end
		    end
		    
		    
		    //-------------- Draw Ruler -----------------------------
		    if Window_Treatment.CheckBox_Profile_showR.Value Then
		      if Ruler.x1pix=-1 Then
		        Ruler.x1pix=me.Width-10
		        Ruler.x2pix=me.Width-10
		      end
		      Display.Graphics.ForeColor=RGB(0,0,255)
		      Display.Graphics.DrawLine(Ruler.x1pix,Ruler.y1pix,Ruler.x2pix,Ruler.y2pix)
		      Display.Graphics.ForeColor=RGB(0,255,0)
		      Display.Graphics.drawoval Ruler.x1pix-5,Ruler.y1pix-5,11,11
		      Display.Graphics.ForeColor=RGB(255,0,0)
		      Display.Graphics.drawoval Ruler.x2pix-5,Ruler.y2pix-5,11,11
		    end
		    
		    
		    '==================Draw Isodose Legend=================
		    if Window_Treatment.CheckBox_Iso.Value then
		      Display.graphics.PenWidth=gVis.Iso.thickness
		      Display.graphics.PenHeight=gVis.Iso.thickness
		      Display.graphics.TextFont=gVis.Iso.FONT
		      Display.graphics.TextSize=gVis.Iso.FONT_Size
		      startx=Display.graphics.Width-175
		      texth=Display.Graphics.TextHeight
		      isospace=texth+5
		      Starty=Round(Display.graphics.Height/2-(UBound(gVis.Iso.Values.values)+1)*isospace/2)
		      '==========Draw Legend=========
		      for i=0 to (UBound(gVis.Iso.Values.values))
		        isoone=starty+i*isospace
		        Display.graphics.ForeColor=gVis.Iso.Values.colours(i)
		        Display.graphics.DrawLine startx,isoone,startx+20,isoone
		        if gVis.Iso.Values.values(i)>0.01 and  gVis.Iso.Values.values(i)<1000 Then
		          Display.graphics.DrawString (Format(gVis.Iso.Values.values(i),"-#.#0")+" "+dose_units,startx+30,isoone)
		        else
		          Display.graphics.DrawString (Format(gVis.Iso.Values.values(i),"-#.###e")+" "+dose_units,startx+30,isoone)
		        end
		      next
		      '==========end Draw Legend=========
		    end
		    
		    '==================Draw Dose Legend========
		    if Window_Treatment.CheckBox_dose.Value Then
		      if Window_Treatment.colour_wash=2 then
		        cc=gvis.colour_map_jet
		      else
		        cc=gvis.colour_map_hot
		      end
		      startx=Display.graphics.Width-80
		      starty=Display.graphics.Height/2+256/2
		      
		      Display.graphics.PenHeight=1
		      for i=256 DownTo 1
		        Starty=starty-1
		        
		        Display.graphics.ForeColor=cc(i)
		        Display.graphics.DrawLine startx,starty,startx+10,starty+1
		        if i=64 or i=128 or i=192 or i=256 or i=1 then
		          Display.graphics.ForeColor=rgb(255,255,255)
		          Display.graphics.Drawline startx+10,starty,startx+20,starty+1
		          if i=1 then
		            Display.graphics.DrawString "0 Min",startx+25,starty
		          elseif i=64 then
		            Display.graphics.DrawString "25",startx+25,starty
		          elseif i=128 then
		            Display.graphics.DrawString "50",startx+25,starty
		          elseif i=192 then
		            Display.graphics.DrawString "75",startx+25,starty
		          else
		            Display.graphics.DrawString "100 Max",startx+25,starty
		          end
		        end
		        
		      next'loop for legend
		    end // End Isodose line legend
		    
		    Display.Graphics.foreColor=&cFFFFFF
		    Display.Graphics.FillOval mouse_xpixel,mouse_ypixel,1,1
		    me.Refresh(False)
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Repaint_Axial()
		  //--------------------------------------------------------------------------------
		  //
		  //
		  //--------------------------------------------------------------------------------
		  Dim Axial_Image_x1,Axial_Image_y1,image_sizex,image_sizey,i,x1,x2,y1,y2,disx,disy,startx,starty,real_sizex,real_sizey,pixx,pixy,j as Integer
		  Dim pp as Class_Polygon
		  Dim y,x,Isox,Isoy,Isoz,cor_cm,sag_cm as Single
		  Dim ss as String
		  //--------------------------------------------------------------------------------
		  
		  Buffer
		  // Axial_Image_x1,Axial_Image_y1 is to outer edge of Image
		  Axial_Image_x1=buffer_offx
		  Axial_Image_y1=buffer_offy
		  
		  image_sizex=Round(gvis.nx*canvas_scale*gvis.scale_width/gvis.pixel_resolution)
		  image_sizey=Round(gvis.ny*canvas_scale*gvis.scale_height/gvis.pixel_resolution)
		  
		  if Window_Treatment.CheckBox_image.Value and Pic_Image<> nil Then
		    Display.Graphics.UseOldRenderer=True
		    Display.Graphics.DrawPicture(Pic_Image,Axial_Image_x1,Axial_Image_y1,image_sizex,image_sizey,0,0,gvis.nx,gvis.ny)
		    Display.Graphics.UseOldRenderer=False
		  end
		  
		  // Redraw Structures
		  if Window_Treatment.CheckBox_show_struc.Value and not Window_Treatment.Move_CrossHairs  and Pic_Structure<> nil  Then
		    Display.Graphics.UseOldRenderer=True
		    Display.Graphics.DrawPicture(Pic_Structure,Axial_Image_x1,Axial_Image_y1,image_sizex,image_sizey,0,0,gvis.nx,gvis.ny)
		    Display.Graphics.UseOldRenderer=False
		  end
		  
		  
		  // Redraw Dose, set image size and origin
		  if Window_Treatment.CheckBox_dose.Value and Pic_Dose<>nil and not Window_Treatment.Move_CrossHairs  Then
		    Axial_Image_x1=Round( (Axial_Dose_x1-(gVis.xoff_set-gVis.scale_width/2))*canvas_scale/gvis.pixel_resolution + buffer_offx)
		    Axial_Image_y1=Round( (Axial_Dose_y1-(gVis.yoff_set-gVis.scale_height/2))*canvas_scale/gvis.pixel_resolution + buffer_offy)
		    image_sizex=Round(Axial_Dose_delx*Pic_Dose.Width*canvas_scale/gvis.pixel_resolution)
		    image_sizey=Round(Axial_Dose_dely*Pic_Dose.Height*canvas_scale/gvis.pixel_resolution)
		    Display.Graphics.DrawPicture(Pic_Dose,Axial_Image_x1,Axial_Image_y1,image_sizex,image_sizey,0,0,Pic_Dose.Width,Pic_Dose.Height)
		  end
		  
		  
		  // Redraw Structures
		  if Window_Treatment.CheckBox_show_struc.Value and not Window_Treatment.Move_CrossHairs  and Pic_Structure<> nil  Then
		    Display.Graphics.UseOldRenderer=True
		    for i=0 to UBound(Poly_Structures)
		      if Poly_Structures(i)<> nil Then
		        for j=0 to UBound(Poly_Structures(i).Structure_Poly)
		          pp=Poly_Structures(i).Structure_Poly(j)
		          pp.Scale_Points(buffer_offx,buffer_offy,canvas_scale,canvas_scale)
		          Display.Graphics.ForeColor=pp.Colour
		          Display.Graphics.DrawPolygon pp.Points
		        Next
		      end
		    next
		    Display.Graphics.UseOldRenderer=False
		  end
		  
		  
		  // Redraw Isodose lines
		  if Window_Treatment.CheckBox_Iso.Value and not Window_Treatment.Move_CrossHairs  Then
		    // Draw Isodose lines
		    for i=0 to UBound(Isolines_Main)
		      for j=0 to UBound(Isolines_Main(i).Line)
		        if i<= UBound(Isolines_Main) then
		          if  j<=UBound(Isolines_Main(i).Line) Then
		            Display.graphics.ForeColor=Isolines_Main(i).Line(j).Colour
		            Display.graphics.PenHeight=gVis.Iso.thickness
		            Display.graphics.PenWidth=gVis.Iso.thickness
		            x1=Round( (Isolines_Main(i).Line(j).x1-(gVis.xoff_set-gVis.scale_width/2))*canvas_scale/gvis.pixel_resolution + buffer_offx)
		            y1=Round( (Isolines_Main(i).Line(j).y1-(gVis.yoff_set-gVis.scale_height/2))*canvas_scale/gvis.pixel_resolution + buffer_offy)
		            
		            x2=Round( (Isolines_Main(i).Line(j).x2-(gVis.xoff_set-gVis.scale_width/2))*canvas_scale/gvis.pixel_resolution + buffer_offx)
		            y2=Round( (Isolines_Main(i).Line(j).y2-(gVis.yoff_set-gVis.scale_height/2))*canvas_scale/gvis.pixel_resolution + buffer_offy)
		            Display.graphics.DrawLine x1,y1,x2,y2
		          end
		        end
		      Next
		    next
		    
		    // Draw 2nd Isodose lines
		    for i=0 to UBound(Isolines_Saved)
		      for j=0 to UBound(Isolines_Saved(i).Line)
		        
		        Display.graphics.ForeColor=Isolines_Saved(i).Line(j).Colour
		        Display.graphics.PenHeight=gVis.Iso.thicknessSave
		        Display.graphics.PenWidth=gVis.Iso.thicknessSave
		        x1=Round((Isolines_Saved(i).Line(j).x1-(gVis.xoff_set-gVis.scale_width/2))*canvas_scale/gvis.pixel_resolution + buffer_offx)
		        y1=Round((Isolines_Saved(i).Line(j).y1-(gVis.yoff_set-gVis.scale_height/2))*canvas_scale/gvis.pixel_resolution + buffer_offy)
		        
		        x2=Round((Isolines_Saved(i).Line(j).x2-(gVis.xoff_set-gVis.scale_width/2))*canvas_scale/gvis.pixel_resolution + buffer_offx)
		        y2=Round((Isolines_Saved(i).Line(j).y2-(gVis.yoff_set-gVis.scale_height/2))*canvas_scale/gvis.pixel_resolution + buffer_offy)
		        
		        
		        if gvis.Iso.SaveType=0 Then //dashed
		          disx=x2-x1
		          disy=y2-y1
		          x2=Round(x1+disx*0.5)
		          y2=y1+round(disy*0.5)
		          
		          Display.graphics.DrawLine x1,y1,x2,y2
		          
		        elseif  gvis.Iso.SaveType=1  then // solid lines
		          
		          Display.graphics.DrawLine x1,y1,x2,y2
		          
		        else // Draw ovals
		          
		          Display.graphics.DrawOval x1-1,y1-1,3,3
		          Display.graphics.DrawOval x2-1,y2-1,3,3
		        end
		        
		        
		      Next
		    next
		  end
		  
		  
		  //=========='Draw  Dose grid=======================
		  // Note: Lines cross at the center of each voxel
		  // This point indicates the x,y,z poition of the dose value!
		  //  dose grid is only coded for the axial images
		  if Window_Treatment.CheckBox_DoseGrid.Value and not Window_Treatment.Move_CrossHairs and Pic_Dose<>nil  Then
		    Axial_Image_x1=Round((Axial_Dose_x1-(gVis.xoff_set-gVis.scale_width/2))*canvas_scale/gvis.pixel_resolution + buffer_offx)
		    Axial_Image_y1=Round((Axial_Dose_y1-(gVis.yoff_set-gVis.scale_height/2))*canvas_scale/gvis.pixel_resolution + buffer_offy)
		    
		    image_sizex=Round(Axial_Dose_delx*Pic_Dose.Width*canvas_scale/gvis.pixel_resolution)
		    image_sizey=Round(Axial_Dose_dely*Pic_Dose.Height*canvas_scale/gvis.pixel_resolution)
		    
		    Display.graphics.ForeColor=CMY( 0, 0,1 )
		    startx=Axial_Image_x1
		    Starty=Axial_Image_y1
		    real_sizex=image_sizex
		    real_sizey=image_sizey
		    
		    x1=startx
		    x2=startx+real_sizex
		    // draw horizontal lines
		    for j=0 to Pic_Dose.Height-1
		      y1=starty+round(0.5*Axial_Dose_dely*canvas_scale/gvis.pixel_resolution+j*canvas_scale*Axial_Dose_dely/gvis.pixel_resolution)
		      //y2=starty+round(Axial_Dose_delx*canvas_scale/(2*gvis.pixel_resolution))+round(j*(canvas_scale*Axial_Dose_delx/gvis.pixel_resolution))
		      Display.graphics.DrawLine x1,y1,x2,y1
		    next
		    
		    
		    y1=starty
		    y2=starty+real_sizey
		    // draw vertical lines
		    for j=0 to Pic_Dose.Width-1
		      x1= startx+round(Axial_Dose_delx*canvas_scale/(2*gvis.pixel_resolution))+round(j*(canvas_scale*Axial_Dose_delx/gvis.pixel_resolution))
		      //x2= startx+round(Axial_Dose_dely*canvas_scale/(2*gvis.pixel_resolution))+round(j*(canvas_scale*Axial_Dose_dely/gvis.pixel_resolution))
		      Display.graphics.DrawLine x1,y1,x1,y2
		    next
		    
		    // Draw Box
		    Display.graphics.ForeColor=cmy(0,1,0)
		    Display.graphics.DrawRect(startx,starty,real_sizex+1,real_sizey+1)
		    
		    
		    Display.graphics.ForeColor=cmy(1,1,0)
		    
		    if Window_Treatment.CheckBox_DoseGrid_values.Value Then
		      
		      for y1=0 to Pic_Dose.Height-1
		        for x1=0 to Pic_Dose.Width-1
		          startx=Axial_Image_x1+round(0.5*Axial_Dose_delx*canvas_scale/gvis.pixel_resolution+x1*canvas_scale*Axial_Dose_delx/gvis.pixel_resolution)
		          starty=Axial_Image_y1+round(0.5*Axial_Dose_dely*canvas_scale/gvis.pixel_resolution+y1*canvas_scale*Axial_Dose_dely/gvis.pixel_resolution)
		          Display.Graphics.DrawString (Format(Axial_Dose_Plane(x1,y1),"-#.###e"),startx,starty)
		        next
		      next
		    end
		    
		    
		  end
		  // --------' End draw dose grid---------------
		  
		  
		  
		  '==========Draw hot point===========
		  if Window_Treatment.CheckBox_hot.Value then
		    startx=round((Axial_Dose_Max_x1-(gVis.xoff_set-gVis.scale_width/2))*canvas_scale/gvis.pixel_resolution + buffer_offx)
		    starty=round((Axial_Dose_Max_y1-(gVis.yoff_set-gVis.scale_height/2))*canvas_scale/gvis.pixel_resolution + buffer_offy)
		    
		    Display.graphics.ForeColor=cmy(0,1,.5)
		    Display.graphics.DrawLine startx-3, starty, startx+3, starty
		    Display.graphics.DrawLine startx, starty-3, startx, starty+3
		    Display.graphics.DrawLine startx-3, starty-3, startx+3, starty+3
		    Display.graphics.DrawLine startx-3, starty+3, startx+3, starty-3
		    
		    
		    startx=round((Axial_Dose_Min_x1-(gVis.xoff_set-gVis.scale_width/2))*canvas_scale/gvis.pixel_resolution + buffer_offx)
		    starty=round((Axial_Dose_Min_y1-(gVis.yoff_set-gVis.scale_height/2))*canvas_scale/gvis.pixel_resolution + buffer_offy)
		    
		    Display.graphics.ForeColor=RGB(0,0,255)
		    Display.graphics.DrawLine startx-3, starty, startx+3, starty
		    Display.graphics.DrawLine startx, starty-3, startx, starty+3
		    Display.graphics.DrawLine startx-3, starty-3, startx+3, starty+3
		    Display.graphics.DrawLine startx-3, starty+3, startx+3, starty-3
		    
		    
		  end
		  
		  
		  
		  
		  
		  
		  
		  //------------- Display isocenter=========
		  if UBound(gRTOG.Plan)>-1and Plan_Index>-1 then
		    if UBound(gRTOG.Plan(Plan_Index).Beam)>-1 and RTOGBeam_Index<=UBound(gRTOG.Plan(Plan_Index).Beam) and RTOGBeam_Index>-1 then
		      Isox = gRTOG.Plan(plan_index).Beam(RTOGBeam_Index).Collimator.Fields(0).isocenter.x-(gVis.xoff_set-gVis.scale_width/2)
		      Isoy = gRTOG.Plan(plan_index).Beam(RTOGBeam_Index).Collimator.Fields(0).isocenter.y-gVis.yoff_set+gVis.scale_height/2
		      Isoz = gRTOG.Plan(plan_index).Beam(RTOGBeam_Index).Collimator.Fields(0).isocenter.z
		      if Window_Treatment.CheckBox_show_isocenter.Value then
		        if abs(Isoz - gRTOG.Scan(canvas_slice).Z_Value) < (gvis.scale_thickness-gvis.scale_thickness/10) Then
		          pixx=round((Isox/gvis.pixel_resolution)*canvas_scale)+buffer_offx
		          pixy=round((Isoy/gvis.pixel_resolution)*canvas_scale)+buffer_offy
		          if pixx>2 and pixy>2 and pixx<=(Display.Width-2) and pixy<=(Display.Height-2) Then
		            Display.Graphics.Pixel (pixx-2,pixy-2) = RGB(255,0,0)
		            Display.Graphics.Pixel(pixx+2,pixy-2) = RGB(255,0,0)
		            Display.Graphics.Pixel(pixx-1,pixy-1) = RGB(255,0,0)
		            Display.Graphics.Pixel(pixx+1,pixy-1) = RGB(255,0,0)
		            Display.Graphics.Pixel(pixx,pixy) = RGB(255,0,0)
		            Display.Graphics.Pixel(pixx-1,pixy+1) = RGB(255,0,0)
		            Display.Graphics.Pixel(pixx+1,pixy+1) = RGB(255,0,0)
		            Display.Graphics.Pixel(pixx-2,pixy+2) = RGB(255,0,0)
		            Display.Graphics.Pixel(pixx+2,pixy+2) = RGB(255,0,0)
		          end
		        end if
		      end
		    end if
		  end
		  //==========End Display isocenter=========
		  
		  
		  //==========Draw Crosshairs=========
		  if Window_Treatment.CheckBox_cross.Value then
		    Display.Graphics.PenWidth=2
		    Display.Graphics.foreColor=&cff0000
		    if Window_Treatment.canvas_left.ViewFlag=2 then
		      x1=((Window_Treatment.Canvas_Left.canvas_sag+0.5)*gvis.scale_width)*canvas_scale/gvis.pixel_resolution+buffer_offx
		      y1=buffer_offy
		      x2=((Window_Treatment.Canvas_Left.canvas_sag+0.5)*gvis.scale_width)*canvas_scale/gvis.pixel_resolution+buffer_offx
		      y2=gvis.ny*gvis.scale_height*canvas_scale/gvis.pixel_resolution+buffer_offy
		      Display.Graphics.DrawLine x1,y1,x2,y2
		    elseif Window_Treatment.canvas_left.ViewFlag=3 then
		      Display.Graphics.DrawLine buffer_offx,_
		      ((Window_Treatment.Canvas_left.canvas_cor+0.5)*gvis.scale_height)*canvas_scale/gvis.pixel_resolution+buffer_offy,_
		      gvis.nx*gvis.scale_width*canvas_scale/gvis.pixel_resolution+buffer_offx,_
		      (Window_Treatment.Canvas_Left.canvas_cor+0.5)*canvas_scale+buffer_offy
		    end
		    Display.Graphics.foreColor=&cffff00
		    if Window_Treatment.Canvas_Right.ViewFlag=2 then
		      Display.Graphics.DrawLine ((Window_Treatment.Canvas_Right.canvas_sag+0.5)*gvis.scale_width)*canvas_scale/gvis.pixel_resolution+buffer_offx,_
		      buffer_offy,_
		      ((Window_Treatment.Canvas_Right.canvas_sag+0.5)*gvis.scale_width)*canvas_scale/gvis.pixel_resolution+buffer_offx,_
		      gvis.ny*gvis.scale_height*canvas_scale/gvis.pixel_resolution+buffer_offy
		    elseif Window_Treatment.Canvas_Right.ViewFlag=3 then
		      Display.Graphics.DrawLine buffer_offx,_
		      (Window_Treatment.Canvas_Right.canvas_cor+0.5)*canvas_scale+buffer_offy,_
		      gvis.nx*gvis.scale_width*canvas_scale/gvis.pixel_resolution+buffer_offx,_
		      (Window_Treatment.Canvas_Right.canvas_cor+0.5)*canvas_scale+buffer_offy
		    end
		    me.Display.Graphics.foreColor=&cffffff
		    if Window_Treatment.Canvas_Top.ViewFlag=2 then
		      Display.Graphics.DrawLine ((Window_Treatment.Canvas_Top.canvas_sag+0.5)*gvis.scale_width)*canvas_scale/gvis.pixel_resolution+buffer_offx,_
		      buffer_offy,_
		      ((Window_Treatment.Canvas_Top.canvas_sag+0.5)*gvis.scale_height)*canvas_scale/gvis.pixel_resolution+buffer_offx,_
		      gvis.ny*canvas_scale*gvis.scale_height/gvis.pixel_resolution+buffer_offy
		    elseif Window_Treatment.Canvas_Top.ViewFlag=3 then
		      Display.Graphics.DrawLine buffer_offx,_
		      (Window_Treatment.Canvas_Top.canvas_cor+0.5)*canvas_scale+buffer_offy,_
		      gvis.nx*canvas_scale*gvis.scale_width/gvis.pixel_resolution+buffer_offx,_
		      (Window_Treatment.Canvas_Top.canvas_cor+0.5)*canvas_scale+buffer_offy
		    end
		  end
		  
		  
		  
		  //-------------------Draw Axis----------------------------
		  if Window_Treatment.CheckBox_axis.Value then
		    // Draws the MMCTP coordinate system in cm
		    Display.Graphics.foreColor=&c000FFF
		    Display.Graphics.PenHeight=1
		    Display.Graphics.PenWidth=1
		    pixy = Round(buffer_offy+gVis.scale_height/2*canvas_scale/gvis.pixel_resolution)
		    for i =0 to 50
		      x=(gvis.xoff_set+i)
		      pixx=round(((x-gvis.xoff_set)*canvas_scale/gvis.pixel_resolution)+buffer_offx+gVis.scale_width/2*canvas_scale/gvis.pixel_resolution)
		      Display.Graphics.DrawLine pixx,pixy-10,pixx,pixy+10
		    next
		    pixx=Round(buffer_offx+gVis.scale_width/2*canvas_scale/gvis.pixel_resolution)
		    for i =0 to 50
		      y=(gvis.yoff_set+i)
		      pixy=round(((y-gvis.yoff_set)*canvas_scale/gvis.pixel_resolution)+buffer_offy+gVis.scale_width/2*canvas_scale/gvis.pixel_resolution)
		      Display.Graphics.DrawLine pixx-10,pixy,pixx+10,pixy
		    next
		  end
		  
		  
		  //-------------------Draw EGSPhant Limits----------------------------
		  if app.which_window_DOSXYZ_EGSphant  then
		    Display.Graphics.foreColor=&cFF0000
		    Display.Graphics.PenHeight=1
		    Display.Graphics.PenWidth=1
		    x1 = Round(buffer_offx+(gDOSXYZ.EGSPhantSettings.X_min-(gvis.xoff_set-gVis.scale_width/2))*canvas_scale/gvis.pixel_resolution)
		    x2 = Round(buffer_offx+(gDOSXYZ.EGSPhantSettings.X_Max-(gvis.xoff_set-gVis.scale_width/2))*canvas_scale/gvis.pixel_resolution)
		    y1 = Round(buffer_offy+(gDOSXYZ.EGSPhantSettings.y_min-(gvis.yoff_set-gVis.scale_height/2))*canvas_scale/gvis.pixel_resolution)
		    y2 = Round(buffer_offy+(gDOSXYZ.EGSPhantSettings.y_Max-(gvis.yoff_set-gVis.scale_height/2))*canvas_scale/gvis.pixel_resolution)
		    Display.Graphics.DrawRect x1,y1,x2-x1,y2-y1
		  end
		  
		  
		  //----------------Draw Legend
		  Display.Graphics.foreColor=&c00FFFF
		  Display.Graphics.textSize=10
		  Display.Graphics.drawstring "Z ("+str(canvas_slice+1)+"/"+str(UBound(gvis.scans)+1)+") : "+Format(gRTOG.Scan(canvas_slice).Z_Value,"-#.##")+ " cm", 10,36
		  Display.Graphics.drawstring "X ("+Format((mouse_xcm-gVis.xoff_set)/gvis.scale_width+1,"-#")+"/"+str(gvis.nx)+") : "+format(mouse_xcm,"-##.##") + " cm ", 10,48
		  Display.Graphics.drawstring "Y ("+Format((mouse_ycm-gVis.yoff_set)/gvis.scale_height+1,"-#")+"/"+str(gvis.ny)+") :"+format(mouse_ycm,"-##.##") + " cm" , 10,60
		  Display.Graphics.drawstring "Pixel Value "+Image_Value, 10,72
		  
		  
		  if gRTOG.PatientPosition="HFS" Then
		    ss="L"
		  elseif gRTOG.PatientPosition="HFP" Then
		    ss="R"
		  end
		  Display.Graphics.DrawString ss,Display.Graphics.Width-10,Display.Graphics.Height/2
		  
		  if gRTOG.PatientPosition="HFS" Then
		    ss="R"
		  elseif gRTOG.PatientPosition="HFP" Then
		    ss="L"
		  end
		  Display.Graphics.DrawString ss,10,Display.Graphics.Height/2
		  
		  if gRTOG.PatientPosition="HFS" Then
		    ss="A"
		  elseif gRTOG.PatientPosition="HFP" Then
		    ss="P"
		  end
		  Display.Graphics.DrawString ss,Display.Graphics.Width/2,10
		  
		  if gRTOG.PatientPosition="HFS" Then
		    ss="P"
		  elseif gRTOG.PatientPosition="HFP" Then
		    ss="A"
		  end
		  Display.Graphics.DrawString ss,Display.Graphics.Width/2,me.Graphics.Height-10
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Repaint_Coronal()
		  //----------------------------------------------
		  //
		  //
		  //----------------------------------------------
		  Dim Axial_Image_x1,Axial_Image_y1,image_sizex,image_sizey,i,x1,x2,y1,y2,disx,disy,startx,starty,real_sizex,real_sizey,pixx,pixy,j as Integer
		  Dim pp as Class_Polygon
		  Dim y,x,Isox,Isoy,Isoz,cor_cm,sag_cm as Single
		  Dim gg as Graphics
		  Dim ss as String
		  //----------------------------------------------
		  
		  gg=Display.Graphics
		  
		  Buffer
		  Axial_Image_x1=Round(buffer_offx)
		  Axial_Image_y1=Round(buffer_offy)
		  
		  
		  image_sizex=Round(gvis.nx*canvas_scale*gvis.scale_width/gvis.pixel_resolution)
		  image_sizey=Round(gvis.nz*canvas_scale*gvis.scale_thickness/gvis.pixel_resolution)
		  Display.Graphics.UseOldRenderer=True
		  
		  if Window_Treatment.CheckBox_image.Value and Pic_Image<> nil Then
		    Display.Graphics.DrawPicture(Pic_Image,Axial_Image_x1,Axial_Image_y1,image_sizex,image_sizey,0,0,gvis.nx,gvis.nz)
		  end
		  
		  // Redraw Structures
		  if Window_Treatment.CheckBox_show_struc.Value and not Window_Treatment.Move_CrossHairs  and Pic_Structure<> nil Then
		    Display.Graphics.DrawPicture(Pic_Structure,Axial_Image_x1,Axial_Image_y1,image_sizex,image_sizey,0,0,gvis.nx,gvis.nz)
		  end
		  Display.Graphics.UseOldRenderer=False
		  
		  
		  // Redraw Dose Distribution
		  if Window_Treatment.CheckBox_dose.Value and Pic_Dose<>nil and not Window_Treatment.Move_CrossHairs Then
		    
		    Axial_Image_x1=Round( (Axial_Dose_x1-gVis.xoff_set+gvis.scale_width/2)*canvas_scale/gvis.pixel_resolution + buffer_offx)
		    Axial_Image_y1=Round((-Axial_Dose_y1+gVis.zoff_set+gvis.scale_thickness/2)*canvas_scale/gvis.pixel_resolution + buffer_offy)
		    
		    image_sizex=Round(Axial_Dose_delx*Pic_Dose.Width*canvas_scale/gvis.pixel_resolution)
		    image_sizey=Round(Axial_Dose_dely*Pic_Dose.Height*canvas_scale/gvis.pixel_resolution)
		    
		    Display.Graphics.DrawPicture(Pic_Dose,Axial_Image_x1,Axial_Image_y1,image_sizex,image_sizey,0,0,Pic_Dose.Width,Pic_Dose.Height)
		  end
		  
		  
		  // Draw Isodose lines
		  if Window_Treatment.CheckBox_Iso.Value and not Window_Treatment.Move_CrossHairs Then
		    for i=0 to UBound(Isolines_Main)
		      for j=0 to UBound(Isolines_Main(i).Line)
		        
		        Display.graphics.ForeColor=Isolines_Main(i).Line(j).Colour
		        Display.graphics.PenHeight=gVis.Iso.thickness
		        Display.graphics.PenWidth=gVis.Iso.thickness
		        x1=Round( (Isolines_Main(i).Line(j).x1-gVis.xoff_set+gVis.scale_width/2)*canvas_scale/gvis.pixel_resolution + buffer_offx)
		        x2=Round( (Isolines_Main(i).Line(j).x2-gVis.xoff_set+gVis.scale_width/2)*canvas_scale/gvis.pixel_resolution + buffer_offx)
		        
		        y1=Round( (-Isolines_Main(i).Line(j).y1+(gVis.zoff_set+gvis.scale_thickness/2))*canvas_scale/gvis.pixel_resolution + buffer_offy)
		        y2=Round( (-Isolines_Main(i).Line(j).y2+(gVis.zoff_set+gvis.scale_thickness/2))*canvas_scale/gvis.pixel_resolution + buffer_offy)
		        Display.graphics.DrawLine x1,y1,x2,y2
		      Next
		    next
		    
		    
		    for i=0 to UBound(Isolines_Saved)
		      for j=0 to UBound(Isolines_Saved(i).Line)
		        
		        Display.graphics.ForeColor=Isolines_Saved(i).Line(j).Colour
		        Display.graphics.PenHeight=gVis.Iso.thicknessSave
		        Display.graphics.PenWidth=gVis.Iso.thicknessSave
		        x1=Round( (Isolines_Saved(i).Line(j).x1-gVis.xoff_set+gVis.scale_width/2)*canvas_scale/gvis.pixel_resolution + buffer_offx)
		        x2=Round( (Isolines_Saved(i).Line(j).x2-gVis.xoff_set+gVis.scale_width/2)*canvas_scale/gvis.pixel_resolution + buffer_offx)
		        
		        y1=Round( (-Isolines_Saved(i).Line(j).y1+(gVis.zoff_set+gvis.scale_thickness/2))*canvas_scale/gvis.pixel_resolution + buffer_offy)
		        y2=Round( (-Isolines_Saved(i).Line(j).y2+(gVis.zoff_set+gvis.scale_thickness/2))*canvas_scale/gvis.pixel_resolution + buffer_offy)
		        
		        
		        if gvis.Iso.SaveType=0 Then //dashed
		          disx=x2-x1
		          disy=y2-y1
		          x2=Round(x1+disx*0.5)
		          y2=y1+round(disy*0.5)
		          
		          Display.graphics.DrawLine x1,y1,x2,y2
		          
		        elseif  gvis.Iso.SaveType=1 then  // solid lines
		          
		          Display.graphics.DrawLine x1,y1,x2,y2
		          
		        else // Draw ovals
		          
		          Display.graphics.DrawOval x1-1,y1-1,3,3
		          Display.graphics.DrawOval x2-1,y2-1,3,3
		        end
		        
		        
		        
		        
		      Next
		      
		    next
		    
		    
		  end
		  
		  
		  
		  
		  //========// Draw isocenter========
		  
		  if UBound(gRTOG.Plan)>-1 and Plan_Index>-1 then
		    cor_cm=(canvas_cor-gvis.ny/2)*gvis.scale_height
		    if UBound(gRTOG.Plan(Plan_Index).Beam)>-1 and RTOGBeam_Index<=UBound(gRTOG.Plan(Plan_Index).Beam) and RTOGBeam_Index>-1 then
		      Isox = gRTOG.Plan(plan_index).Beam(RTOGBeam_Index).Collimator.Fields(0).isocenter.x
		      Isoy = gRTOG.Plan(plan_index).Beam(RTOGBeam_Index).Collimator.Fields(0).isocenter.y
		      Isoz = gRTOG.Plan(plan_index).Beam(RTOGBeam_Index).Collimator.Fields(0).isocenter.z
		      if Window_Treatment.CheckBox_show_isocenter.Value then
		        if abs(Isoy -cor_cm) < gvis.scale_height Then
		          pixx=round((Isox-gVis.xoff_set+gVis.scale_width/2)/gvis.scale_width*canvas_scale)+buffer_offx
		          pixy=round(((gVis.zoff_set-isoz+gVis.scale_thickness/2)/gvis.pixel_resolution)*canvas_scale)+buffer_offy
		          if (pixx-2) >0 and (pixx+2)<gg.Width then
		            if (pixy-2) >0 and (pixy+2)<gg.Height then
		              gg.Pixel(pixx-2,pixy-2) = RGB(255,0,0)
		              gg.Pixel(pixx+2,pixy-2) = RGB(255,0,0)
		              gg.Pixel(pixx-1,pixy-1) = RGB(255,0,0)
		              gg.Pixel(pixx+1,pixy-1) = RGB(255,0,0)
		              gg.Pixel(pixx,pixy) = RGB(255,0,0)
		              gg.Pixel(pixx-1,pixy+1) = RGB(255,0,0)
		              gg.Pixel(pixx+1,pixy+1) = RGB(255,0,0)
		              gg.Pixel(pixx-2,pixy+2) = RGB(255,0,0)
		              gg.Pixel(pixx+2,pixy+2) = RGB(255,0,0)
		            end
		          end
		        end if
		      end
		    end if
		  end
		  
		  
		  
		  
		  
		  
		  '==========Draw Crosshairs=========
		  if Window_Treatment.CheckBox_cross.Value then
		    gg.foreColor=&cffffff
		    gg.PenWidth=2
		    if Window_Treatment.Canvas_Top.ViewFlag=1 then ' If top is axial
		      gg.DrawLine buffer_offx,_
		      canvas_scale*(gvis.nz-Window_Treatment.Canvas_Top.canvas_slice-0.5)*gvis.scale_thickness/gvis.pixel_resolution+buffer_offy,_
		      buffer_offx+gvis.nx*gvis.scale_width*canvas_scale/gvis.pixel_resolution,_
		      canvas_scale*(gvis.nz-Window_Treatment.Canvas_Top.canvas_slice-0.5)*gvis.scale_thickness/gvis.pixel_resolution+buffer_offy
		    elseif Window_Treatment.Canvas_Top.ViewFlag=2 then ' if top is Sagittal
		      gg.DrawLine (Window_Treatment.Canvas_Top.canvas_sag+0.5)*canvas_scale+buffer_offx,_
		      buffer_offy,_
		      (Window_Treatment.Canvas_Top.canvas_sag+0.5)*canvas_scale+buffer_offx,_
		      (gvis.ny*canvas_scale+buffer_offy)
		    end
		    gg.foreColor=&cff0000
		    if Window_Treatment.Canvas_Left.ViewFlag=1 then
		      gg.DrawLine (buffer_offx,_
		      (canvas_scale*(gvis.nz-Window_Treatment.Canvas_Left.canvas_slice-0.5)*gvis.scale_thickness/gvis.scale_height+buffer_offy),_
		      (buffer_offx+gvis.ny*canvas_scale),_
		      canvas_scale*(gvis.nz-Window_Treatment.Canvas_Left.canvas_slice-0.5)*gvis.scale_thickness/gvis.scale_height+buffer_offy)
		    elseif Window_Treatment.Canvas_Left.ViewFlag=2 then
		      gg.DrawLine _
		      Round((Window_Treatment.Canvas_Left.canvas_sag+0.5)*gvis.scale_width*canvas_scale/gvis.pixel_resolution)+buffer_offx,_
		      buffer_offy,_
		      Round((Window_Treatment.Canvas_Left.canvas_sag+0.5)*gvis.scale_width*canvas_scale/gvis.pixel_resolution)+buffer_offx,_
		      Round(gvis.nz*gvis.scale_thickness*canvas_scale/gvis.pixel_resolution)+buffer_offy
		    end
		    gg.foreColor=&cffff00
		    if Window_Treatment.Canvas_Right.ViewFlag=1 then
		      gg.DrawLine (buffer_offx,_
		      canvas_scale*(gvis.nz-Window_Treatment.Canvas_Right.canvas_slice-0.5)*gvis.scale_thickness/gvis.scale_height+buffer_offy),_
		      (buffer_offx+gvis.ny*canvas_scale),_
		      canvas_scale*(gvis.nz-Window_Treatment.Canvas_Right.canvas_slice-0.5)*gvis.scale_thickness/gvis.scale_height+buffer_offy
		    elseif Window_Treatment.Canvas_Right.ViewFlag=2 then
		      gg.DrawLine (Window_Treatment.Canvas_Right.canvas_sag+0.5)*canvas_scale+buffer_offx,_
		      (buffer_offy),_
		      (Window_Treatment.Canvas_Right.canvas_sag+0.5)*canvas_scale+buffer_offx,_
		      (gvis.ny*canvas_scale+buffer_offy)
		    end
		    
		    
		    
		  end
		  
		  //========// Draw legend========
		  cor_cm=gVis.yoff_set+(canvas_cor)*gvis.scale_height
		  
		  Display.Graphics.foreColor=&c00FFFF
		  Display.Graphics.textSize=10
		  Display.Graphics.drawstring "Y : "+Format(cor_cm,"-#.##")+ " cm   ("+Format(canvas_cor+1,"-#")+"/"+Format(gvis.ny,"-#")+")", 10,36
		  Display.Graphics.drawstring "X : "+format(mouse_xcm,"-#.##") + " cm   ("+Format((mouse_xcm-gvis.xoff_set)/gvis.scale_width+1,"-#")+"/"+str(gvis.ny)+")", 10,48
		  Display.Graphics.drawstring "Z : "+format(mouse_zcm,"-#.##")+ " cm   ("+Format((mouse_zcm-gvis.zoff_set)/gvis.scale_thickness+1,"-#")+"/"+str(gvis.nz)+")", 10,60
		  
		  
		  if gRTOG.PatientPosition="HFS" Then
		    ss="R"
		  elseif gRTOG.PatientPosition="HFP" Then
		    ss="L"
		  end
		  Display.Graphics.DrawString  ss,10,Display.Graphics.Height/2-Display.Graphics.StringHeight("R",1)/2
		  
		  if gRTOG.PatientPosition="HFS" Then
		    ss="L"
		  elseif gRTOG.PatientPosition="HFP" Then
		    ss="R"
		  end
		  Display.Graphics.DrawString ss,Display.Graphics.Width-10,Display.Graphics.Height/2-gg.StringHeight("L",1)/2
		  
		  
		  
		  
		  if gRTOG.PatientPosition="HFS" or gRTOG.PatientPosition="HFP"  Then
		    ss="S"
		  else
		    ss="I"
		  end
		  Display.Graphics.DrawString ss,Display.Graphics.Width/2-Display.Graphics.StringWidth("S")/2,10
		  
		  
		  if gRTOG.PatientPosition="HFS" or gRTOG.PatientPosition="HFP" Then
		    ss="I"
		  else
		    ss="S"
		  end
		  Display.Graphics.DrawString ss,Display.Graphics.Width/2-Display.Graphics.StringWidth("I")/2,Display.Graphics.Height-Display.Graphics.StringHeight("I",1)/2
		  
		  
		  
		  '=========='Draw Dose grid=======================
		  // Note: Lines cross at the center of each voxel
		  // This point indicates the x,y,z poition of the dose value!
		  if Window_Treatment.CheckBox_DoseGrid.Value and Pic_Dose<>nil then
		    real_sizex=Round(Axial_Dose_delx*Pic_Dose.Width/gvis.pixel_resolution*canvas_scale)
		    real_sizey=Round(Axial_Dose_dely*Pic_Dose.Height/gvis.pixel_resolution*canvas_scale)
		    
		    startx=Round((Axial_Dose_x1 -gVis.xoff_set+gVis.scale_width/2)*canvas_scale/gvis.pixel_resolution+buffer_offx)
		    
		    starty=buffer_offy+Round((gVis.zoff_set-Axial_Dose_y1+gVis.scale_thickness/2)*canvas_scale/gvis.pixel_resolution)
		    
		    Display.graphics.ForeColor=CMY( 0, 0,1 )
		    
		    // draw horizontal lines
		    for j=0 to Pic_Dose.Height-1
		      x1=startx
		      y1=starty+Round((Axial_Dose_dely*canvas_scale/(2*gvis.pixel_resolution))+(j*(canvas_scale*Axial_Dose_dely/gvis.pixel_resolution)))
		      x2=startx+real_sizex
		      y2=y1
		      Display.graphics.DrawLine x1,y1,x2,y2
		    next
		    
		    // draw vertical lines
		    for j=0 to Pic_Dose.Width-1
		      x1= startx+round(Axial_Dose_delx*canvas_scale/(2*gvis.pixel_resolution))+round(j*(canvas_scale*Axial_Dose_delx/gvis.pixel_resolution))
		      y1=starty
		      x2=x1
		      y2=starty+real_sizey
		      Display.graphics.DrawLine x1,y1,x2,y2
		    next
		    
		    // Draw boundaries
		    Display.graphics.ForeColor=cmy(0,1,0)
		    Display.graphics.DrawRect(startx,starty,real_sizex+1,real_sizey+1)
		  end
		  // --------' End draw dose grid---------------
		  
		  
		  
		  
		  //-------------------Draw EGSPhant Limits----------------------------
		  if app.which_window_DOSXYZ_EGSphant  then
		    Display.Graphics.foreColor=&cFF0000
		    Display.Graphics.PenHeight=1
		    Display.Graphics.PenWidth=1
		    x1 = Round(buffer_offx+(gDOSXYZ.EGSPhantSettings.x_min-(gvis.xoff_set-gVis.scale_width/2))*canvas_scale/gvis.pixel_resolution)
		    x2 = Round(buffer_offx+(gDOSXYZ.EGSPhantSettings.x_Max-(gvis.xoff_set-gVis.scale_width/2))*canvas_scale/gvis.pixel_resolution)
		    y1 = Round(buffer_offy+(-gDOSXYZ.EGSPhantSettings.Z_max+(gvis.zoff_set+gvis.scale_thickness/2))*canvas_scale/gvis.pixel_resolution)
		    y2 = Round(buffer_offy+(-gDOSXYZ.EGSPhantSettings.Z_min+(gvis.zoff_set+gvis.scale_thickness/2))*canvas_scale/gvis.pixel_resolution)
		    Display.Graphics.DrawRect x1,y1,x2-x1,y2-y1
		  end
		  
		  
		  //-------------------Draw Axis----------------------------
		  if Window_Treatment.CheckBox_axis.Value then
		    // Draws the MMCTP coordinate system in cm
		    Display.Graphics.foreColor=&c000FFF
		    Display.Graphics.PenHeight=1
		    Display.Graphics.PenWidth=1
		    pixy = (-gRTOG.Scan(0).Z_Value+gvis.zoff_set)*canvas_scale/gvis.pixel_resolution+buffer_offy
		    for i =0 to 50
		      x=(gvis.yoff_set+i)
		      pixx=round((x-gvis.yoff_set)*canvas_scale/gvis.pixel_resolution+buffer_offx)
		      Display.Graphics.DrawLine pixx,pixy-10,pixx,pixy+10
		    next
		    
		    pixx=buffer_offx
		    for i =0 to 50
		      y=(gRTOG.Scan(0).Z_Value+i)
		      pixy=round((-y+gvis.zoff_set)*canvas_scale/gvis.pixel_resolution+buffer_offy)
		      Display.Graphics.DrawLine pixx-10,pixy,pixx+10,pixy
		    next
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Repaint_Sagittal()
		  //----------------------------------------------
		  //
		  //
		  //----------------------------------------------
		  Dim Axial_Image_x1,Axial_Image_y1,image_sizex,image_sizey,i,x1,x2,y1,y2,disx,disy,startx,starty,real_sizex,real_sizey,pixx,pixy,j as Integer
		  Dim pp as Class_Polygon
		  Dim y,x,Isox,Isoy,Isoz,cor_cm,sag_cm as Single
		  Dim gg as Graphics
		  Dim ss as String
		  //----------------------------------------------
		  
		  Buffer
		  Axial_Image_x1=Round(buffer_offx)
		  Axial_Image_y1=Round(buffer_offy)
		  
		  
		  image_sizex=Round(gvis.ny*canvas_scale*gvis.scale_height/gvis.pixel_resolution)
		  image_sizey=Round(gvis.nz*canvas_scale*gvis.scale_thickness/gvis.pixel_resolution)
		  Display.Graphics.UseOldRenderer=True
		  if Window_Treatment.CheckBox_image.Value and Pic_Image<> nil Then
		    Display.Graphics.DrawPicture(Pic_Image,Axial_Image_x1,Axial_Image_y1,image_sizex,image_sizey,0,0,gvis.ny,gvis.nz)
		  end
		  
		  
		  if Window_Treatment.CheckBox_show_struc.Value and not Window_Treatment.Move_CrossHairs and Pic_Structure<> nil Then
		    Display.Graphics.DrawPicture(Pic_Structure,Axial_Image_x1,Axial_Image_y1,image_sizex,image_sizey,0,0,gvis.ny,gvis.nz)
		  end
		  Display.Graphics.UseOldRenderer=False
		  
		  
		  // Redraw Dose Distribution
		  if Window_Treatment.CheckBox_dose.Value  and Pic_Dose<>nil and not Window_Treatment.Move_CrossHairs Then
		    Axial_Image_x1=Round( (Axial_Dose_x1-gVis.yoff_set+gVis.scale_width/2)*canvas_scale/gvis.pixel_resolution + buffer_offx)
		    Axial_Image_y1=Round((gVis.scale_thickness/2+gvis.zoff_set-Axial_Dose_y1)*canvas_scale/gvis.pixel_resolution + buffer_offy)
		    image_sizex=Round(Axial_Dose_delx*Pic_Dose.Width*canvas_scale/gvis.pixel_resolution)
		    image_sizey=Round(Axial_Dose_dely*Pic_Dose.Height*canvas_scale/gvis.pixel_resolution)
		    Display.Graphics.DrawPicture(Pic_Dose,Axial_Image_x1,Axial_Image_y1,image_sizex,image_sizey,0,0,Pic_Dose.Width,Pic_Dose.Height)
		  end
		  
		  // Draw Isodose lines
		  if Window_Treatment.CheckBox_Iso.Value and not Window_Treatment.Move_CrossHairs Then
		    for i=0 to UBound(Isolines_Main)
		      for j=0 to UBound(Isolines_Main(i).Line)
		        Display.graphics.ForeColor=Isolines_Main(i).Line(j).Colour
		        Display.graphics.PenHeight=gVis.Iso.thickness
		        Display.graphics.PenWidth=gVis.Iso.thickness
		        x1=Round( (Isolines_Main(i).Line(j).x1-gVis.yoff_set+gVis.scale_height/2)*canvas_scale/gvis.pixel_resolution + buffer_offx)
		        x2=Round( (Isolines_Main(i).Line(j).x2-gVis.yoff_set+gVis.scale_height/2)*canvas_scale/gvis.pixel_resolution + buffer_offx)
		        y=Isolines_Main(i).Line(j).y1
		        y1=Round( (-Isolines_Main(i).Line(j).y1+gVis.zoff_set+gVis.scale_thickness/2)*canvas_scale/gvis.pixel_resolution + buffer_offy)
		        y2=Round( (-Isolines_Main(i).Line(j).y2+gVis.zoff_set+gVis.scale_thickness/2)*canvas_scale/gvis.pixel_resolution + buffer_offy)
		        Display.graphics.DrawLine x1,y1,x2,y2
		      Next
		    next
		    
		    //Draw 2nd Isodose lines
		    for i=0 to UBound(Isolines_Saved)
		      for j=0 to UBound(Isolines_Saved(i).Line)
		        Display.graphics.ForeColor=Isolines_Saved(i).Line(j).Colour
		        Display.graphics.PenHeight=gVis.Iso.thicknessSave
		        Display.graphics.PenWidth=gVis.Iso.thicknessSave
		        x1=Round( (Isolines_Saved(i).Line(j).x1-gVis.yoff_set+gVis.scale_height/2)*canvas_scale/gvis.pixel_resolution + buffer_offx)
		        x2=Round( (Isolines_Saved(i).Line(j).x2-gVis.yoff_set+gVis.scale_height/2)*canvas_scale/gvis.pixel_resolution + buffer_offx)
		        y1=Round( (-Isolines_Saved(i).Line(j).y1+gVis.zoff_set+gVis.scale_thickness/2)*canvas_scale/gvis.pixel_resolution + buffer_offy)
		        y2=Round( (-Isolines_Saved(i).Line(j).y2+gVis.zoff_set+gVis.scale_thickness/2)*canvas_scale/gvis.pixel_resolution + buffer_offy)
		        //Display.graphics.DrawOval x1-1,y1-1,3,3
		        //Display.graphics.DrawOval x2-1,y2-1,3,3
		        
		        if gvis.Iso.SaveType=0 Then //dashed
		          disx=x2-x1
		          disy=y2-y1
		          x2=Round(x1+disx*0.5)
		          y2=y1+round(disy*0.5)
		        else // solid
		          
		          
		        end
		        
		        
		        Display.graphics.DrawLine x1,y1,x2,y2
		      Next
		    next
		  end
		  
		  
		  gg=Display.Graphics
		  
		  '========// Draw isocenter========
		  sag_cm=canvas_sag*gvis.scale_width+gVis.xoff_set
		  if UBound(gRTOG.Plan)>-1 and Plan_Index>-1 then
		    if UBound(gRTOG.Plan(Plan_Index).Beam)>-1 and RTOGBeam_Index<=UBound(gRTOG.Plan(Plan_Index).Beam) and RTOGBeam_Index>-1 then
		      Isox = gRTOG.Plan(plan_index).Beam(RTOGBeam_Index).Collimator.Fields(0).isocenter.x
		      Isoy = gRTOG.Plan(plan_index).Beam(RTOGBeam_Index).Collimator.Fields(0).isocenter.y
		      Isoz = gRTOG.Plan(plan_index).Beam(RTOGBeam_Index).Collimator.Fields(0).isocenter.z
		      if Window_Treatment.CheckBox_show_isocenter.Value then
		        if abs(Isox -sag_cm) < gvis.scale_width Then
		          pixx=round((Isoy-gvis.yoff_set+gvis.scale_height/2)*canvas_scale/gvis.pixel_resolution)+buffer_offx
		          pixy=round(((gRTOG.Scan(UBound(gRTOG.Scan)).Z_Value-isoz+gVis.scale_thickness/2)/gvis.pixel_resolution)*canvas_scale)+buffer_offy
		          if (pixx-2) >0 and (pixx+2)<Display.Width then
		            if (pixy-2) >0 and (pixy+2)<Display.Height then
		              Display.Graphics.Pixel(pixx-2,pixy-2) = RGB(255,0,0)
		              gg.Pixel(pixx+2,pixy-2) = RGB(255,0,0)
		              gg.Pixel(pixx-1,pixy-1) = RGB(255,0,0)
		              gg.Pixel(pixx+1,pixy-1) = RGB(255,0,0)
		              gg.Pixel(pixx,pixy) = RGB(255,0,0)
		              gg.Pixel(pixx-1,pixy+1) = RGB(255,0,0)
		              gg.Pixel(pixx+1,pixy+1) = RGB(255,0,0)
		              gg.Pixel(pixx-2,pixy+2) = RGB(255,0,0)
		              gg.Pixel(pixx+2,pixy+2) = RGB(255,0,0)
		            end
		          end
		          'g.drawstring "Xiso , Yiso, Ziso : "+format(Isox,"-#.###") +" , "+format(Isoy,"-#.###")  +" , " + format(Isoz,"-#.###") + " cm", 10,60
		        end if
		      end
		    end if
		  end
		  '
		  
		  
		  //==========Draw Crosshairs=========
		  if Window_Treatment.CheckBox_cross.Value then
		    gg.foreColor=&cffffff
		    gg.PenWidth=2
		    if Window_Treatment.Canvas_Top.ViewFlag=1 then
		      gg.DrawLine buffer_offx,_
		      canvas_scale*(gvis.nz-Window_Treatment.Canvas_Top.canvas_slice-0.5)*gvis.scale_thickness/gvis.pixel_resolution+buffer_offy,_
		      buffer_offx+gvis.ny*gvis.scale_height*canvas_scale/gvis.pixel_resolution,_
		      canvas_scale*(gvis.nz-Window_Treatment.Canvas_Top.canvas_slice-0.5)*gvis.scale_thickness/gvis.pixel_resolution+buffer_offy
		      
		    elseif Window_Treatment.Canvas_Top.ViewFlag=3 then
		      gg.DrawLine (Window_Treatment.Canvas_Top.canvas_cor*canvas_scale+buffer_offx),_
		      (buffer_offy),_
		      (Window_Treatment.Canvas_Top.canvas_cor*canvas_scale+buffer_offx),_
		      (gvis.ny*canvas_scale+buffer_offy)
		    end
		    gg.foreColor=&cffff00
		    if Window_Treatment.Canvas_right.ViewFlag=1 then
		      gg.DrawLine buffer_offx,_
		      canvas_scale*(gvis.nz-Window_Treatment.Canvas_right.canvas_slice-0.5)*gvis.scale_thickness/gvis.pixel_resolution+buffer_offy,_
		      buffer_offx+gvis.ny*gvis.scale_height*canvas_scale/gvis.pixel_resolution,_
		      canvas_scale*(gvis.nz-Window_Treatment.Canvas_right.canvas_slice-0.5)*gvis.scale_thickness/gvis.pixel_resolution+buffer_offy
		    elseif Window_Treatment.Canvas_right.ViewFlag=3 then
		      gg.DrawLine (Window_Treatment.Canvas_right.canvas_cor+0.5)*gvis.scale_height*canvas_scale/gvis.pixel_resolution+buffer_offx,_
		      buffer_offy,_
		      (Window_Treatment.Canvas_Right.canvas_cor+0.5)*gvis.scale_height*canvas_scale/gvis.pixel_resolution+buffer_offx,_
		      gvis.nz*gvis.scale_thickness*canvas_scale/gvis.pixel_resolution+buffer_offy
		    end
		    gg.foreColor=&cff0000
		    if Window_Treatment.Canvas_Left.ViewFlag=1 then
		      gg.DrawLine buffer_offx,_
		      canvas_scale*(gvis.nz-Window_Treatment.Canvas_Left.canvas_slice-0.5)*gvis.scale_thickness/gvis.pixel_resolution+buffer_offy,_
		      buffer_offx+gvis.ny*gvis.scale_height*canvas_scale/gvis.pixel_resolution,_
		      canvas_scale*(gvis.nz-Window_Treatment.Canvas_Left.canvas_slice-0.5)*gvis.scale_thickness/gvis.pixel_resolution+buffer_offy
		      
		    elseif Window_Treatment.Canvas_Left.ViewFlag=3 then
		      gg.DrawLine Window_Treatment.Canvas_Left.canvas_cor*canvas_scale*gvis.scale_height/gvis.pixel_resolution+buffer_offx,_
		      buffer_offy,_
		      Window_Treatment.Canvas_Left.canvas_cor*canvas_scale*gvis.scale_height/gvis.pixel_resolution+buffer_offx,_
		      gvis.ny*gvis.scale_height*canvas_scale/gvis.pixel_resolution+buffer_offy
		    end
		  end
		  '
		  sag_cm=gVis.xoff_set+canvas_sag*gvis.scale_width
		  Display.Graphics.foreColor=&c00FFFF
		  gg.textSize=10
		  gg.drawstring "X : "+Format(sag_cm,"-#.##")+ " cm   ("+str(canvas_sag+1)+"/"+str(gvis.nx)+")", 10,36
		  gg.drawstring "Y : "+format(mouse_ycm,"-#.##") + " cm   ("+Format(Round((mouse_ycm-gvis.yoff_set)/gvis.scale_height+1),"-#")+"/"+str(gvis.ny)+")", 10,48
		  gg.drawstring "Z : "+format(mouse_zcm,"-#.##")+ " cm   ("+Format(Round((mouse_zcm-gvis.zoff_set)/gvis.scale_thickness+1),"-#")+"/"+str(gvis.nz)+")", 10,60
		  
		  
		  if gRTOG.PatientPosition="HFS" Then
		    ss="A"
		  elseif gRTOG.PatientPosition="HFP" Then
		    ss="P"
		  end 
		  gg.DrawString ss,10,gg.Height/2-gg.StringHeight("A",1)/2
		  
		  if gRTOG.PatientPosition="HFS" Then
		    ss="P"
		  elseif gRTOG.PatientPosition="HFP" Then
		    ss="A"
		  end
		  gg.DrawString ss, gg.Width-10,gg.Height/2-gg.StringHeight("P",1)/2
		  
		  if gRTOG.PatientPosition="HFS" or gRTOG.PatientPosition="HFP" Then
		    ss="S"
		  else
		    
		    ss="I"
		  end
		  gg.DrawString ss,gg.Width/2-gg.StringWidth("S")/2,10
		  
		  if gRTOG.PatientPosition="HFS" or gRTOG.PatientPosition="HFP" Then
		    ss="I"
		  else
		    ss="S"
		  end
		  gg.DrawString ss,gg.Width/2-gg.StringWidth("I")/2,gg.Height-gg.StringHeight("I",1)/2
		  
		  
		  '=========='Draw  Dose grid=======================
		  // Note: Lines cross at the center of each voxel
		  // This point indicates the x,y,z poition of the dose value!
		  
		  if Window_Treatment.CheckBox_DoseGrid.Value and Pic_Dose<>nil then
		    real_sizex=Round(Axial_Dose_delx*Pic_Dose.Width/gvis.pixel_resolution*canvas_scale)
		    real_sizey=Round(Axial_Dose_dely*Pic_Dose.Height/gvis.pixel_resolution*canvas_scale)
		    
		    startx=Round((Axial_Dose_x1 -gVis.yoff_set+gVis.scale_height/2)*canvas_scale/gvis.pixel_resolution+buffer_offx)
		    
		    starty=buffer_offy+Round((gVis.scale_thickness/2+gVis.zoff_set-Axial_Dose_y1)*canvas_scale/gvis.pixel_resolution)
		    
		    Display.graphics.ForeColor=CMY( 0, 0,1 )
		    
		    // draw horizontal lines
		    for j=0 to Pic_Dose.Height-1
		      x1=startx
		      y1=starty+Round((Axial_Dose_dely*canvas_scale/(2*gvis.pixel_resolution))+(j*(canvas_scale*Axial_Dose_dely/gvis.pixel_resolution)))
		      x2=startx+real_sizex
		      y2=y1
		      Display.graphics.DrawLine x1,y1,x2,y2
		    next
		    
		    // draw vertical lines
		    for j=0 to Pic_Dose.Width-1
		      x1= startx+round(Axial_Dose_delx*canvas_scale/(2*gvis.pixel_resolution))+round(j*(canvas_scale*Axial_Dose_delx/gvis.pixel_resolution))
		      y1=starty
		      x2=x1
		      y2=starty+real_sizey
		      Display.graphics.DrawLine x1,y1,x2,y2
		    next
		    
		    // Draw boundaries
		    Display.graphics.ForeColor=cmy(0,1,0)
		    Display.graphics.DrawRect(startx,starty,real_sizex+1,real_sizey+1)
		  end
		  // --------' End draw dose grid---------------
		  
		  
		  
		  
		  
		  //-------------------Draw EGSPhant Limits----------------------------
		  if app.which_window_DOSXYZ_EGSphant  then
		    Display.Graphics.foreColor=&cFF0000
		    Display.Graphics.PenHeight=1
		    Display.Graphics.PenWidth=1
		    x1 = Round(buffer_offx+(gDOSXYZ.EGSPhantSettings.y_min-(gvis.yoff_set-gVis.scale_height/2))*canvas_scale/gvis.pixel_resolution)
		    x2 = Round(buffer_offx+(gDOSXYZ.EGSPhantSettings.y_Max-(gvis.yoff_set-gVis.scale_height/2))*canvas_scale/gvis.pixel_resolution)
		    y1 = Round(buffer_offy+(-gDOSXYZ.EGSPhantSettings.Z_max+(gvis.zoff_set+gvis.scale_thickness/2))*canvas_scale/gvis.pixel_resolution)
		    y2 = Round(buffer_offy+(-gDOSXYZ.EGSPhantSettings.Z_min+(gvis.zoff_set+gvis.scale_thickness/2))*canvas_scale/gvis.pixel_resolution)
		    Display.Graphics.DrawRect x1,y1,x2-x1,y2-y1
		  end
		  
		  //-------------------Draw Axis----------------------------
		  if Window_Treatment.CheckBox_axis.Value then
		    // Draws the MMCTP coordinate system in cm
		    Display.Graphics.foreColor=&c000FFF
		    Display.Graphics.PenHeight=1
		    Display.Graphics.PenWidth=1
		    pixy = (-gRTOG.Scan(0).Z_Value+gvis.zoff_set)*canvas_scale/gvis.pixel_resolution+buffer_offy
		    for i =0 to 50
		      x=(gvis.yoff_set+i)
		      pixx=round((x-gvis.yoff_set)*canvas_scale/gvis.pixel_resolution+buffer_offx)
		      Display.Graphics.DrawLine pixx,pixy-10,pixx,pixy+10
		    next
		    
		    pixx=buffer_offx
		    for i =0 to 50
		      y=(gRTOG.Scan(0).Z_Value+i)
		      pixy=round((-y+gvis.zoff_set)*canvas_scale/gvis.pixel_resolution+buffer_offy)
		      Display.Graphics.DrawLine pixx-10,pixy,pixx+10,pixy
		    next
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Ruler_cm_to_pix()
		  
		  if ViewFlag=1 Then
		    Ruler.x1pix=round((Ruler.Point1.X_cm-gvis.xoff_set+gVis.scale_width/2)*canvas_scale/gvis.pixel_resolution+buffer_offx)
		    Ruler.x2pix=round((Ruler.Point2.X_cm-gvis.xoff_set+gVis.scale_width/2)*canvas_scale/gvis.pixel_resolution+buffer_offx)
		    Ruler.y2pix=round((Ruler.Point2.y_cm-gvis.yoff_set+gVis.scale_height/2)*canvas_scale/gvis.pixel_resolution+buffer_offy)
		    Ruler.y1pix=round((Ruler.Point1.y_cm-gvis.yoff_set+gVis.scale_height/2)*canvas_scale/gvis.pixel_resolution+buffer_offy)
		    
		  elseif ViewFlag=2 Then
		    Ruler.x1pix=round((Ruler.Point1.y_cm - gvis.yoff_set+gVis.scale_height/2)*canvas_scale/gvis.pixel_resolution)+buffer_offx
		    Ruler.x2pix=round((Ruler.Point2.y_cm - gvis.yoff_set+gVis.scale_height/2)*canvas_scale/gvis.pixel_resolution)+buffer_offx
		    Ruler.y1pix=round((gVis.scale_thickness/2+gVis.zoff_set-Ruler.Point1.z_cm)/gvis.pixel_resolution*canvas_scale)+buffer_offy
		    Ruler.y2pix=round((gVis.scale_thickness/2+gVis.zoff_set-Ruler.Point2.z_cm)/gvis.pixel_resolution*canvas_scale)+buffer_offy
		    
		  elseif ViewFlag=3 Then
		    Ruler.y1pix=round((gVis.scale_thickness/2+gVis.zoff_set-Ruler.Point1.z_cm)/gvis.pixel_resolution*canvas_scale)+buffer_offy
		    Ruler.y2pix=round((gVis.scale_thickness/2+gVis.zoff_set-Ruler.Point2.z_cm)/gvis.pixel_resolution*canvas_scale)+buffer_offy
		    Ruler.x1pix=round((Ruler.Point1.X_cm-gvis.xoff_set+gVis.scale_width/2)*canvas_scale/gvis.pixel_resolution+buffer_offx)
		    Ruler.x2pix=round((Ruler.Point2.X_cm-gvis.xoff_set+gVis.scale_width/2)*canvas_scale/gvis.pixel_resolution+buffer_offx)
		  end
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Axial_Dose_delx As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Axial_Dose_dely As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Axial_Dose_Max_x1 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Axial_Dose_Max_y1 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Axial_Dose_Min_x1 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Axial_Dose_Min_y1 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Axial_Dose_num As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Axial_Dose_Plane(-1,-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Axial_Dose_x1 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Axial_Dose_y1 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		axial_Dose_Zvalue As single
	#tag EndProperty

	#tag Property, Flags = &h0
		BG As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		buffer_offx As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		buffer_offy As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		canvas_cor As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		canvas_sag As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		canvas_scale As single
	#tag EndProperty

	#tag Property, Flags = &h0
		canvas_slice As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		cross_axial As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		cross_coronal As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		cross_sagittal As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Display As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Error As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Units As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Value As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Image_Value As string
	#tag EndProperty

	#tag Property, Flags = &h0
		initial_WL As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		initial_WW As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Isolines_Main(-1) As Class_IsoDose_Lines
	#tag EndProperty

	#tag Property, Flags = &h0
		Isolines_Saved(-1) As Class_IsoDose_Lines
	#tag EndProperty

	#tag Property, Flags = &h0
		MouseCross As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		mouse_xcm As single
	#tag EndProperty

	#tag Property, Flags = &h0
		mouse_xpixel As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		mouse_ycm As single
	#tag EndProperty

	#tag Property, Flags = &h0
		mouse_ypixel As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		mouse_zcm As single
	#tag EndProperty

	#tag Property, Flags = &h0
		pan_x As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		pan_y As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Pic_Dose As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		Pic_Image As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		Pic_Structure As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		Poly_Structures(-1) As Class_Structures
	#tag EndProperty

	#tag Property, Flags = &h0
		Ruler As Class_Ruler
	#tag EndProperty

	#tag Property, Flags = &h0
		TheDose As RTOG_Dose_Distribution
	#tag EndProperty

	#tag Property, Flags = &h0
		ViewFlag As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		WL_Mouse As boolean
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AcceptFocus"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcceptTabs"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Axial_Dose_delx"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Axial_Dose_dely"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Axial_Dose_Max_x1"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Axial_Dose_Max_y1"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Axial_Dose_Min_x1"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Axial_Dose_Min_y1"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Axial_Dose_num"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Axial_Dose_x1"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Axial_Dose_y1"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="axial_Dose_Zvalue"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			Type="Picture"
			EditorType="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BG"
			Group="Behavior"
			InitialValue="&h000000"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="buffer_offx"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="buffer_offy"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="canvas_cor"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="canvas_sag"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="canvas_scale"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="canvas_slice"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="cross_axial"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="cross_coronal"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="cross_sagittal"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Display"
			Group="Behavior"
			InitialValue="0"
			Type="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Error"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Units"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Value"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EraseBackground"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Image_Value"
			Group="Behavior"
			Type="string"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="initial_WL"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="initial_WW"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MouseCross"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mouse_xcm"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mouse_xpixel"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mouse_ycm"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mouse_ypixel"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mouse_zcm"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pan_x"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pan_y"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pic_Dose"
			Group="Behavior"
			InitialValue="0"
			Type="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pic_Image"
			Group="Behavior"
			InitialValue="0"
			Type="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pic_Structure"
			Group="Behavior"
			InitialValue="0"
			Type="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ViewFlag"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WL_Mouse"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
