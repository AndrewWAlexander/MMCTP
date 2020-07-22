#tag Class
Protected Class Class_Structures
	#tag Method, Flags = &h0
		Sub Change()
		  Dim i,k,test as integer
		  Dim temp as RTOG_Structure_Segment
		  Dim other_temp as RTOG_Structure_Slice
		  Dim pp as RTOG_Structure_Segment
		  
		  k=Window_Contouring.PopupMenu_Segments.SelectedRowIndex
		  scan_index=Window_Contouring.slice
		  
		  
		  if  k>=0 then
		    if Window_Contouring.options= 6  then // Copy Sup
		      if scan_index+1 <=ubound(gRTOG.Scan) then
		        pp=new RTOG_Structure_Segment
		        pp=struct.Structure_Data(scan_index).segments(k)
		        Struct.Structure_Data(scan_index+1).segments.append pp
		        Window_Contouring.slice=Window_Contouring.slice+1
		      end
		    end
		    
		    
		    if Window_Contouring.options=7 then // Copy Inf 
		      if scan_index-1 >-1 then
		        i=ubound(struct.Structure_Data(scan_index-1).segments)+1
		        redim struct.Structure_Data(scan_index-1).segments(i)
		        struct.Structure_Data(scan_index-1).segments(i)= new RTOG_Structure_Segment
		        struct.Structure_Data(scan_index-1).segments(i)=struct.Structure_Data(scan_index).segments(k)
		        Window_Contouring.slice=Window_Contouring.slice-1
		      end
		    end
		    
		    scan_index=Window_Contouring.slice
		    Window_Contouring.options=1
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Load(struc as integer)
		  Struct=new RTOG_Structure_Class
		  structure_num=struc
		  if struc<= UBound(grtog.Structures.Structures) Then
		    Struct=grtog.Structures.Structures(struc)
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Paint_Poly(g as graphics, slice as integer, segment_num as integer, cw as integer, ch as integer, Pan_X as integer, Pan_Y as integer, scale as double)
		  //--------------------------------------------------
		  // Method called within Contour window for paiting contour points
		  //
		  //--------------------------------------------------
		  Dim i,x,y,a,buffer_offx,buffer_offy ,k,pixx,pixy as integer
		  Dim Poly as Class_Polygon
		  Dim x_cm , y_cm as Single
		  //--------------------------------------------------
		  
		  buffer_offx=round((cw-gvis.nx*scale)/2+0.5*gvis.scale_width)-Pan_X
		  buffer_offy=round((ch-gvis.ny*scale)/2+0.5*gvis.scale_height)-Pan_Y
		  
		  
		  if Struct<> nil Then
		    if Struct.Structure_Data(slice)<> nil then
		      
		      Redim Structure_Poly(UBound(Struct.Structure_Data(slice).Segments))
		      for a=0 to UBound(Structure_Poly)
		        Poly = new Class_Polygon
		        for k =0 to ubound(Struct.Structure_Data(slice).Segments(a).Points)
		          x_cm = Struct.Structure_Data(slice).Segments(a).Points(k).x
		          y_cm = Struct.Structure_Data(slice).Segments(a).Points(k).y
		          pixx=Round((x_cm-gvis.xoff_set)*scale/gvis.scale_width +buffer_offx)
		          pixy=Round((y_cm-gvis.yoff_set)*scale/gvis.scale_height+buffer_offy)
		          Poly.AddPoint pixx,pixy
		          if Window_Contouring.options=4 then '"Scale" then
		            Poly.AddPoint_D x_cm,y_cm
		          end
		        next
		        Structure_Poly(a)=poly
		      next
		      
		      
		      if ubound(gPoly.Structure_Poly)>-1 and segment_num>-1 then
		        for i=0 to ubound(gPoly.Structure_Poly)
		          g.foreColor = rgB(255,0,0)
		          g.Drawpolygon gPoly.Structure_Poly(i).Points
		        next
		        for i = 1 to gPoly.Structure_Poly(segment_num).NumberOfPoints
		          x = Structure_Poly(segment_num).points(i*2-1)
		          y = Structure_Poly(segment_num).points(i*2)
		          if i=1 then
		            g.foreColor=rgb(0,0,255)
		            g.drawOval x-5,y-5,10,10
		          else
		            g.foreColor = rgB(255,255,0)
		            g.drawOval x-3,y-3,6,6
		          end
		        next
		      end
		      g.foreColor=&cFFFF00
		      g.textSize=15
		      g.drawstring  NthField(Window_Contouring.Options_string,",",Window_Contouring.options), (cw-g.StringWidth(NthField(Window_Contouring.Options_string,",",Window_Contouring.options)))/2, 20
		      g.drawstring  Struct.Structure_Name+" - Segment ("+str(segment_num+1)+"/"+str(UBound(Structure_Poly)+1)+")", (cw-g.StringWidth(Struct.Structure_Name+" - Segment ("+str(segment_num+1)+"/"+str(UBound(Structure_Poly)+1)+")"))/2, 35
		    end
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save_Scale()
		  Dim k,segment, num_points As integer
		  Dim px,py as Double
		  Dim s as RTOG_Structure_Segment
		  
		  
		  segment=Window_Contouring.PopupMenu_segments.SelectedRowIndex
		  
		  
		  s= new RTOG_Structure_Segment
		  num_points=gPoly.Structure_Poly(segment).numberOfPoints
		  redim s.Points(num_points-1)
		  
		  
		  for k=1 to num_points
		    s.Points(k-1)=new RTOG_Structure_Point
		    px=(gPoly.Structure_Poly(segment).Points_D(k*2-1))
		    s.Points(k-1).x=px
		    py=(gPoly.Structure_Poly(segment).Points_D(k*2))
		    s.Points(k-1).y=py
		  next
		  
		  
		  
		  
		  Struct.Structure_Data(scan_index).Segments(segment)=s
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save_struc(struc as integer)
		  //----------------------------------------
		  // Save the edited contour back into the main array 
		  // which houses structure data
		  //----------------------------------------
		  grtog.Structures.Structures(struc)=Struct
		  grtog.Structures.Structures(struc).Loaded_Poly=False
		  grtog.Structures.Structures(struc).Loaded_Points=False
		  
		  gVis.contours.Recalculate_Poly
		  gVis.contours.Recalculate_Images
		  gVis.contours.Recalculate_Points
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		scan_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Struct As RTOG_Structure_Class
	#tag EndProperty

	#tag Property, Flags = &h0
		structure_num As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Structure_Poly(-1) As Class_Polygon
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="scan_index"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="structure_num"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
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
	#tag EndViewBehavior
End Class
#tag EndClass
