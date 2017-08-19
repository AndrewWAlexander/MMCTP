#tag Class
Protected Class Thread_Contours
Inherits Thread
	#tag Event
		Sub Run()
		  Dim i as Integer
		  
		  
		  While Run_Now 
		    Run_Now=false
		    
		    if Update_Poly Then
		      Update_Poly=False
		      for i=0 to UBound(gRTOG.Structures)
		        if gRTOG.Structures(i).Loaded_Poly=False Then
		          gRTOG.Structures(i).Make_Polygon
		        end
		      next
		    end
		    
		    if Update_Images Then
		      Update_Images=False
		      TreatmentPlanning_Image_DrawAxial_Structures
		      if app.which_window_TreatmentPlanning Then
		        Window_Treatment.Canvas_refresh_Image_Contours=True
		      end
		    end
		    
		    if Update_Points Then
		      Update_Points=False
		      for i=0 to UBound(gRTOG.Structures)
		        if gRTOG.Structures(i).Loaded_Points=False Then
		          gRTOG.Structures(i).Make_Array_of_Points
		        end
		      next
		    end
		  Wend
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Contour_Image_DrawAxial_Structures(slice as integer, tran as Integer)
		  //---------------------------------------------
		  // Contouring window only
		  // Method to generate structure images,
		  // used for filling the strucutre with a solid colour
		  //
		  // called when the a structre is changed
		  // called when the gvis is opened
		  //---------------------------------------------
		  Dim i,j,x,y,k,pixx,pixy,start_x,start_y as integer
		  Dim file as RTOG_Structure_One_Structure
		  Dim poly as class_polygon
		  Dim gg,g_mask as Graphics
		  Dim p as Picture
		  Dim arepoints_b as Boolean
		  //---------------------------------------------
		  
		  
		  
		  
		  for i = 0 to ubound(gRTOG.structures)
		    if gvis.contour_show(i) and gvis.contour_fill(i) then // Contour show and fill are on
		      file = new RTOG_Structure_One_Structure
		      if gRTOG.structures(i).Structure_Data(slice)<> nil then
		        file = gRTOG.structures(i).structure_Data(slice)
		        
		        p=New Picture(gVis.nx,gVis.ny,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		        arepoints_b=False
		        
		        gg = p.graphics
		        g_mask= p.mask.graphics
		        g_mask.ClearRect 0,0,gVis.nx,gVis.ny
		        
		        for j = 0 to ubound(file.segments)
		          
		          if UBound(file.Segments(j).Points)>-1 and UBound(file.Structure_Poly)>=j Then
		            poly = new class_polygon
		            poly=file.Structure_Poly(j)
		            arepoints_b=True
		            
		            if poly.PointWithin_OtherPoly Then
		              gg.foreColor =RGB(255,255,255)
		              gg.FillPolygon poly.Points
		              
		              // draw the picture mask
		              //  mask is for transparance setting
		              g_mask.foreColor = RGB(255,255,255)   // 255 fully transparent, 0 is not transparent
		              g_mask.FillPolygon Poly.Points
		              
		              
		              Contour_Axial.Mask.Graphics.foreColor =RGB(255,255,255)
		              Contour_Axial.Mask.Graphics.FillPolygon Poly.Points
		              
		            else // draw picture
		              gg.foreColor =gVis.colour(i)
		              gg.FillPolygon poly.Points
		              
		              // draw the picture mask
		              
		              g_mask.foreColor = RGB(tran,tran,tran)   // 255 fully transparent, 0 is not transparent
		              g_mask.FillPolygon Poly.Points
		              
		              
		              Contour_Axial.Mask.Graphics.foreColor = RGB(tran,tran,tran)
		              Contour_Axial.Mask.Graphics.FillPolygon Poly.Points
		              
		            end
		            
		          end
		        next
		        
		        if arepoints_b Then
		          Contour_Axial.Graphics.DrawPicture p,0,0
		        end
		      end
		    end
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Recalculate_Images()
		  Run_Now=True
		  Update_Images=True
		  
		  if State=4 Then
		    Current_Run_Start=Microseconds
		    Run
		    Current_Previous_EndTime=Microseconds
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Recalculate_Points()
		  Run_Now=True
		  Update_Points=True
		  
		  if State=4 Then
		    Current_Run_Start=Microseconds
		    Run
		    Current_Previous_EndTime=Microseconds
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Recalculate_Poly()
		  Run_Now=True
		  Update_Poly=True
		  
		  if State=4 Then
		    Current_Run_Start=Microseconds
		    Run
		    Current_Previous_EndTime=Microseconds
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TreatmentPlanning_Image_DrawAxial_Structures()
		  //--------------------------------------
		  // Method to generate structure images,
		  // used for filling the strucutre with a solid colour
		  //
		  // called when the a structre is changed
		  // called when the gvis is opened
		  //--------------------------------------
		  dim j, cvalue,i,k  as integer
		  Dim a,tran,pixx,pixy,d1,d2 as integer
		  Dim file as RTOG_Structure_One_Structure
		  Dim poly as class_polygon
		  Dim one_slice,pic as Picture
		  Dim one_slice_mask_g,pic_g,pic_mask_g as Graphics
		  Dim y,x as Single
		  Dim paint_b as Boolean
		  //------------------------------
		  
		  
		  
		  poly = new class_polygon
		  
		  Update=False
		  
		  tran=Round(255*gvis.Structure_Transparency/100)
		  if tran<0 Then
		    tran=0
		  elseif tran>255 Then
		    tran=255
		  end
		  for a=0 to UBound(gRTOG.Scan)
		    one_slice=gVis.contours.Axial_Pic(a)
		    if one_slice=Nil Then
		      Return
		    end
		    
		    one_slice_mask_g=one_slice.Mask.Graphics
		    one_slice_mask_g.ClearRect 0,0,gvis.nx,gvis.ny
		    for i = 0 to ubound(gRTOG.structures)
		      if gvis.contour_show(i) and gvis.contour_fill(i) then
		        paint_b=False
		        file = gRTOG.structures(i).structure_Data(a)
		        for j = 0 to ubound(file.segments)
		          if j=0 Then
		            // Make new picture for one structure
		            pic=New Picture(gvis.nx,gvis.ny,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		            pic_g=pic.Graphics
		            pic_g.UseOldRenderer=True
		            
		            // draw the picture mask
		            //  mask is for transparance setting
		            pic_mask_g=pic.Mask.Graphics
		            pic_mask_g.UseOldRenderer=True
		            pic_mask_g.ClearRect 0,0,gvis.nx,gvis.ny
		          end
		          
		          if UBound(file.Segments(j).Points)>=0 and UBound(file.Structure_Poly)>=j then
		            poly=file.Structure_Poly(j)
		            paint_b=True
		            if poly.PointWithin_OtherPoly Then
		              pic_g.foreColor =RGB(255,255,255)
		              pic_g.FillPolygon poly.Points
		              
		              // draw the picture mask
		              //  mask is for transparance setting
		              pic_mask_g.foreColor = RGB(255,255,255)   // 255 fully transparent, 0 is not transparent
		              pic_mask_g.FillPolygon Poly.Points
		              one_slice_mask_g.foreColor =RGB(255,255,255)
		              one_slice_mask_g.FillPolygon Poly.Points
		              
		            else // draw picture
		              pic_g.foreColor =gvis.colour(i)
		              pic_g.FillPolygon poly.Points
		              
		              // draw the picture mask
		              // mask is for transparance setting
		              pic_mask_g.foreColor = RGB(tran,tran,tran)   // 255 fully transparent, 0 is not transparent
		              pic_mask_g.FillPolygon Poly.Points
		              
		              one_slice_mask_g.foreColor = RGB(tran,tran,tran)
		              one_slice_mask_g.FillPolygon Poly.Points
		            end
		          end // End if points in segment
		        next // Loop for all segments
		        
		        if paint_b Then // if there is an image to draw
		          one_slice.Graphics.DrawPicture pic,0,0
		        end
		        
		      end // end for one structure
		    next
		  next
		  
		  Update=True
		  
		  if app.which_window_TreatmentPlanning then
		    Window_Treatment.Canvas_refresh_Image_Contours=True
		  end
		  
		  
		  Exception e As TypeMismatchException
		    MsgBox("Tried to retype an object!")
		  Exception e As NilObjectException
		    MsgBox("Tried to access a Nil object!")
		    
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Axial_Pic(-1) As picture
	#tag EndProperty

	#tag Property, Flags = &h0
		Contour_Axial As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		Current_Previous_EndTime As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Current_Run_Start As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		DVH_Axial As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		Run_Now As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Update As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		Update_Images As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Update_Points As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Update_Poly As Boolean
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Contour_Axial"
			Group="Behavior"
			Type="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Current_Previous_EndTime"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Current_Run_Start"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DVH_Axial"
			Group="Behavior"
			Type="Picture"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Priority"
			Visible=true
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Run_Now"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StackSize"
			Visible=true
			Group="Behavior"
			InitialValue="0"
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
			Name="Update"
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Update_Images"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Update_Points"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Update_Poly"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
