#tag Class
Protected Class RTOG_Structure
	#tag Method, Flags = &h0
		Sub Make_Array_of_Points()
		  //--------------------------------------------------------
		  // Make arrays of structure points
		  //
		  //
		  //
		  // 
		  // 
		  //
		  // Andrew Alexander Jan 2011
		  //--------------------------------------------------------
		  
		  
		  
		  if gPref.DVH_Calc=1 Then
		    Make_Array_of_Points_FromIsWithin
		    
		  elseif gPref.DVH_Calc=0 Then
		    Make_Array_of_Points_FromImages
		    
		  elseif gPref.DVH_Calc=2 Then
		    Make_Array_of_Points_FromImages_andIswithin
		    
		  else
		    Return
		  end
		  
		  
		  
		  
		  Loaded_Points=True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Make_Array_of_Points_FromImages()
		  //--------------------------------------------------------
		  // Make Polygon arrays of structure points for MAC
		  //
		  //
		  // Andrew Alexander Jan 2011
		  //--------------------------------------------------------
		  Dim v,a,k,j,pixy,pixx,bb, list(-1),rm_x(-1),rm_y(-1) ,x_pic,y_pic,i as Integer
		  Dim poly,poly_cm as Class_Polygon
		  Dim file as RTOG_Structure_One_Structure
		  Dim x,y,newarea as Single
		  Dim arepoints_b,findwithin,notrealpoint as Boolean
		  Dim p as Picture
		  Dim gg as Graphics
		  Dim tmpsurf as RGBSurface
		  //--------------------------------------------------------
		  
		  
		  // Make Index of X,Y Pixel points
		  
		  for i = 0 to ubound(Structure_Data)
		    file = new RTOG_Structure_One_Structure
		    file = structure_Data(i)
		    
		    
		    arepoints_b=False
		    
		    
		    ReDim file.Axial_Points_X(-1)
		    ReDim file.Axial_Points_Y(-1)
		    
		    
		    
		    for j = 0 to ubound(file.Structure_Poly)
		      if file.Structure_Poly(j) <> Nil Then
		        
		        if j=0 Then
		          p=New Picture(gVis.nx,gVis.ny,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		          gg = p.graphics
		          gg.foreColor =RGB(255,255,255) //White
		          gg.FillRect(0,0,gg.Width,gg.Height)
		          gg.UseOldRenderer=True
		        end
		        
		        if UBound(file.Segments(j).Points)>0 Then
		          poly=file.Structure_Poly(j)
		          arepoints_b=True
		          
		          if poly.PointWithin_OtherPoly Then //Exclusion region
		            gg.foreColor =RGB(255,255,255) //White
		            gg.FillPolygon poly.Points
		            
		            gg.foreColor =RGB(200,0,0) //Border
		            gg.DrawPolygon poly.Points
		            
		          else // draw real contour and border
		            gg.foreColor =RGB(225,0,0) //FillColor
		            gg.FillPolygon poly.Points
		            
		            gg.foreColor =RGB(200,0,0) //Border
		            gg.DrawPolygon Poly.Points
		            
		          end
		        end
		        
		      end
		    next // End for one segment
		    
		    
		    
		    
		    if arepoints_b Then
		      tmpsurf=p.RGBSurface
		      
		      for a=0 to gg.Width
		        for k=0 to gg.Height
		          v= tmpsurf.Pixel(a,k).Red
		          if v=200 or v=225 Then
		            file.Axial_Points_X.append a
		            file.Axial_Points_y.append k
		          end
		        Next
		      Next
		    end
		  Next
		  
		  
		  
		  Loaded_Points=True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Make_Array_of_Points_FromImages_andIswithin()
		  //--------------------------------------------------------
		  // Make Polygon arrays of structure points for MAC
		  //
		  //
		  // Andrew Alexander Jan 2011
		  //--------------------------------------------------------
		  Dim v,a,k,j,pixy,pixx,bb, list(-1),rm_x(-1),rm_y(-1) ,x_pic,y_pic,i,x_low,x_high,y_low,y_high as Integer
		  Dim poly,poly_cm as Class_Polygon
		  Dim file as RTOG_Structure_One_Structure
		  Dim x,y,newarea as Single
		  Dim arepoints_b,findwithin,notrealpoint as Boolean
		  Dim p as Picture
		  Dim gg as Graphics
		  Dim tmpsurf as RGBSurface
		  //--------------------------------------------------------
		  
		  
		  // Make Index of X,Y Pixel points
		  
		  for i = 0 to ubound(Structure_Data)
		    file = new RTOG_Structure_One_Structure
		    file = structure_Data(i)
		    
		    x_low=gVis.nx
		    x_high=0
		    
		    y_low=gVis.ny
		    y_high=0
		    
		    arepoints_b=False
		    
		    
		    ReDim file.Axial_Points_X(-1)
		    ReDim file.Axial_Points_Y(-1)
		    
		    
		    
		    for j = 0 to ubound(file.Structure_Poly)
		      if file.Structure_Poly(j) <> Nil Then
		        
		        if j=0 Then
		          p=New Picture(gVis.nx,gVis.ny,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		          gg = p.graphics
		          gg.foreColor =RGB(255,255,255) //White
		          gg.FillRect(0,0,gg.Width,gg.Height)
		          gg.UseOldRenderer=True
		        end
		        
		        if UBound(file.Segments(j).Points)>0 Then
		          poly=file.Structure_Poly(j)
		          arepoints_b=True
		          
		          if poly.PointWithin_OtherPoly Then
		            gg.foreColor =RGB(255,255,255) //White
		            gg.FillPolygon poly.Points
		            
		            gg.foreColor =RGB(200,0,0) //Boarder
		            gg.DrawPolygon poly.Points
		            
		          else // draw picture
		            gg.foreColor =RGB(225,0,0) //FillColor
		            gg.FillPolygon poly.Points
		            
		            gg.foreColor =RGB(200,0,0) //Boarder
		            gg.DrawPolygon Poly.Points
		            
		            if Poly.LeftEdge<x_low Then
		              x_low=Poly.LeftEdge
		            end
		            
		            if poly.RightEdge>x_high Then
		              x_high=Poly.RightEdge
		            end
		            
		            if Poly.TopEdge<y_low Then
		              y_low=Poly.TopEdge
		            end
		            
		            if poly.BottomEdge>y_high Then
		              y_high=Poly.BottomEdge
		            end
		            
		          end
		        end
		        
		      end
		    next // End for one segment
		    
		    
		    
		    
		    if arepoints_b Then
		      tmpsurf=p.RGBSurface
		      
		      for a=x_low to x_high
		        for k=y_low to y_high
		          v= tmpsurf.Pixel(a,k).Red
		          if v=200 Then
		            //Lookup boarder values
		            findwithin=False
		            notrealpoint=False
		            
		            for j = 0 to ubound(file.Structure_Poly)
		              poly=file.Structure_Poly(j)
		              if poly.PointWithin_OtherPoly=False Then
		                if Poly.IsWithin(a,k) Then
		                  findwithin=True
		                end
		              end
		              
		              if Poly.PointWithin_OtherPoly Then
		                if Poly.IsWithin(a,k) Then
		                  notrealpoint=True
		                end
		              end
		            next
		            
		            if findwithin and not notrealpoint Then
		              file.Axial_Points_X.append a
		              file.Axial_Points_y.append k
		            end
		            
		            
		          elseif v=225 Then// Value for pixels within contour
		            //
		            file.Axial_Points_X.append a
		            file.Axial_Points_y.append k
		          end
		        Next
		      Next
		    end
		  Next
		  
		  
		  
		  Loaded_Points=True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Make_Array_of_Points_FromIsWithin()
		  //--------------------------------------------------------
		  // Make Polygon arrays of structure points for Windows
		  //
		  //
		  //
		  //
		  // Andrew Alexander Jan 2011
		  //--------------------------------------------------------
		  Dim a,k,j,pixy,pixx,bb, list(-1),rm_x(-1),rm_y(-1) ,x_pic,y_pic,i as Integer
		  Dim poly,poly_cm as Class_Polygon
		  Dim file as RTOG_Structure_One_Structure
		  Dim x,y,newarea as Single
		  Dim arepoints_b as Boolean
		  //--------------------------------------------------------
		  
		  
		  // Make Index of X,Y Pixel points
		  
		  for i = 0 to ubound(Structure_Data)
		    file = new RTOG_Structure_One_Structure
		    file = structure_Data(i)
		    
		    //p=NewPicture(gVis.nx,gVis.ny,32)
		    arepoints_b=False
		    ReDim rm_x(-1)
		    ReDim rm_y(-1)
		    
		    ReDim file.Axial_Points_X(-1)
		    ReDim file.Axial_Points_Y(-1)
		    
		    //gg = p.graphics
		    
		    for j = 0 to ubound(file.Structure_Poly)
		      if file.Structure_Poly(j) <> Nil Then
		        
		        poly=file.Structure_Poly(j)
		        if UBound(file.Segments(j).Points)>-1 Then
		          poly = new class_polygon
		          poly=file.Structure_Poly(j)
		          arepoints_b=True
		          
		          if poly.PointWithin_OtherPoly Then
		            //gg.foreColor =RGB(255,255,255) //White
		            //gg.FillPolygon poly.Points
		            
		            
		            //Make remove array
		            
		            for x_pic=Poly.LeftEdge to Poly.RightEdge
		              for y_pic=Poly.TopEdge to Poly.BottomEdge
		                if Poly.IsWithin(x_pic,y_pic) Then
		                  rm_x.Append x_pic
		                  rm_y.Append y_pic
		                end
		              Next
		            Next
		            
		            
		            
		          else // draw picture
		            //gg.foreColor =RGB(0,0,0) //Black
		            //gg.FillPolygon poly.Points
		            
		            for x_pic=Poly.LeftEdge to Poly.RightEdge
		              for y_pic=Poly.TopEdge to Poly.BottomEdge
		                if Poly.IsWithin(x_pic,y_pic) Then
		                  file.Axial_Points_X.Append x_pic
		                  file.Axial_Points_Y.Append y_pic
		                end
		              Next
		            Next
		          end
		          
		        end
		      end
		    next // End for one segment
		    
		    if arepoints_b Then
		      for j=0 to UBound(rm_x)
		        for a=UBound(file.Axial_Points_X) DownTo 0
		          if file.Axial_Points_X(a)=rm_x(j) and file.Axial_Points_Y(a)=rm_y(j) Then
		            file.Axial_Points_X.Remove a
		            file.Axial_Points_Y.Remove a
		            Exit for a
		          end
		        Next
		      Next
		    end
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Make_Polygon()
		  //--------------------------------------------------------
		  // Make Polygon arrays of structure points
		  //
		  //
		  //
		  // Calculate Structure Volume
		  // Arrange Largest Polygon per strucutre per segment -- Not finished
		  //
		  // Andrew Alexander Jan 2011
		  //--------------------------------------------------------
		  Dim a,k,j,pixy,pixx,bb, list(-1),rm_x(-1),rm_y(-1) ,x_pic,y_pic,i as Integer
		  Dim poly,poly_cm as Class_Polygon
		  Dim file as RTOG_Structure_One_Structure
		  Dim x,y,newarea as Single
		  Dim arepoints_b as Boolean
		  //--------------------------------------------------------
		  
		  
		  // make sure largest poly is at lowest index
		  
		  for a=0 to UBound(Structure_Data)
		    file = structure_Data(a)
		    if UBound(file.Segments)>0 Then
		      ReDim List(-1)
		      for j = 0 to ubound(file.segments)
		        list.Append UBound(file.Segments(j).Points)
		      next
		      //list.SortWith
		    end
		  Next
		  
		  Structure_Volume=0
		  
		  for a=0 to UBound(Structure_Data)
		    file = structure_Data(a)
		    ReDim file.Structure_Poly(-1)
		    newarea=0
		    for j = 0 to ubound(file.segments)
		      if UBound(file.Segments(j).Points)>=0 then
		        poly=new Class_Polygon
		        poly_cm=new Class_Polygon
		        ReDim poly.Points(0)
		        for k =0 to ubound(file.segments(j).Points)
		          poly_cm.AddPoint_D file.segments(j).Points(k).x, file.segments(j).Points(k).y
		          x=((file.segments(j).Points(k).x-gvis.xoff_set+gVis.scale_width/2)/gvis.scale_width )
		          y=((file.segments(j).Points(k).y- gvis.yoff_set+gVis.scale_width/2)/gvis.scale_height)
		          pixx=round(x)
		          pixy=round(y)
		          poly.AddPoint pixx,pixy
		          poly.AddPoint_D x,y
		          for bb=0 to UBound(file.Structure_Poly)
		            if poly.PointWithin_OtherPoly=False Then
		              if file.Structure_Poly(bb).IsWithin(pixx,pixy) Then
		                poly.PointWithin_OtherPoly=True
		                poly.PolyIsWithin_Index=bb
		              end
		             end
		          next
		        next
		        if Poly.PointWithin_OtherPoly Then // Sub area
		          newarea=newarea-poly_cm.Area_D
		        else // Independant area add
		          newarea=newarea+poly_cm.Area_D
		        end
		        file.Structure_Poly.Append Poly
		      end
		    Next
		    Structure_Volume=Structure_Volume+newarea*gVis.scale_thickness
		  Next
		  
		  Loaded_Poly=True
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		changed As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		colour As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DVH_Calculate As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		ElectronDensity As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		ElectronDensityOverride As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		File_Num As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Loaded_Points As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Loaded_Poly As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Number_R As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Number_Rep As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_of_Scans As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_S As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		ROI_Number As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		scolor As color
	#tag EndProperty

	#tag Property, Flags = &h0
		StructureType As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Structure_Data(-1) As RTOG_Structure_One_Structure
	#tag EndProperty

	#tag Property, Flags = &h0
		Structure_F As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Structure_Format As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Structure_N As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Structure_Name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Structure_Volume As Single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="changed"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="colour"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DVH_Calculate"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ElectronDensity"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ElectronDensityOverride"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="File_Num"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
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
			Name="Loaded_Points"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Loaded_Poly"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Number_R"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Number_Rep"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Num_of_Scans"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Num_S"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ROI_Number"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="scolor"
			Group="Behavior"
			InitialValue="&h000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StructureType"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Structure_F"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Structure_Format"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Structure_N"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Structure_Name"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Structure_Volume"
			Group="Behavior"
			Type="Single"
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
