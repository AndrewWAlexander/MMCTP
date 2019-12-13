#tag Class
Protected Class RTOG_Dose_Distribution
	#tag Method, Flags = &h0
		Sub Absolute_Dose()
		  // ------------------------------------------
		  // 
		  // 
		  //
		  //-------------------------------------------
		  Dim i,d_index,ix,iy as integer
		  
		  //-------------------------------------------
		  
		  
		  for i=0 to Size_of_Dimension3-1
		    for ix=1 to Size_of_Dimension1
		      for iy=1 to Size_of_Dimension2
		        d_index=(ix-1)+(iy-1)*Size_of_Dimension1
		        Dose_Distribution(i).Points(d_index)=Abs(Dose_Distribution(i).Points(d_index))
		      Next
		    Next
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Bounds()
		  Dim i ,k as Integer
		  
		  Dmax=gdoublemin
		  Dmin=gdoublemax
		  
		  
		  for i = 0 to UBound(Dose_Distribution)
		    for k=0 to UBound(Dose_Distribution(i).Points)
		      if Dose_Distribution(i).Points(k)>Dmax Then
		        Dmax=Dose_Distribution(i).Points(k)
		      end
		      if Dose_Distribution(i).Points(k)<Dmin Then
		        Dmin=Dose_Distribution(i).Points(k)
		      end
		    Next
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Zero_External_Dose()
		  // ------------------------------------------
		  // Main method to Draw Axial Contour image
		  //
		  //
		  //-------------------------------------------
		  Dim i,j,k,pixx,pixy, c_index,correct_plane,size_x,size_y,d_index,ix,iy as integer
		  Dim file as RTOG_Structure_Slice
		  Dim poly as class_polygon
		  Dim y,x,Isox,Isoy,Dplan_z,z_diff,lowest as Single
		  Dim Structure_ready,haspoints as Boolean
		  Dim Pic_Structure as Picture
		  Dim cc as Color
		  //-------------------------------------------
		  
		  for i=0 to UBound(grtog.Structures.Structures)
		    if grtog.Structures.Structures(i).Structure_Name="BODY" Then
		      c_index=i
		    end
		  Next
		  
		  
		  if c_index<0 or c_index> UBound(grtog.Structures.Structures) Then
		    Return
		  end
		  
		  size_x=Size_of_Dimension1
		  size_y=Size_of_Dimension2
		  
		  for i=0 to Size_of_Dimension3-1
		    
		    Dplan_z=Coord_3_1st_point+i*Depth_Grid
		    
		    Pic_Structure=New Picture(size_x,size_y,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		    if Pic_Structure=nil Then
		      Return
		    end
		    
		    Pic_Structure.Graphics.ForeColor=Rgb(255,255,255)
		    //Pic_Structure.Graphics.UseOldRenderer=True
		    Pic_Structure.Graphics.FillRect(0,0,size_x,size_y)
		    Pic_Structure.Graphics.ForeColor=Rgb(0,0,0)
		    
		    //Pic_Structure.Mask.Graphics.ForeColor=RGB(255,255,255)
		    //Pic_Structure.Mask.Graphics.FillRect(0,0,size_x,size_y)
		    //Pic_Structure.Mask.Graphics.UseOldRenderer=True
		    
		    
		    
		    //-------------Draw Strucutres-------------------------------
		    
		    // Find slice value
		    lowest=5
		    for j=0 to UBound(grtog.Structures.Structures(c_index).Structure_Data)
		      z_diff=abs(Dplan_z-grtog.Structures.Structures(c_index).Structure_Data(j).z)
		      if z_diff<lowest Then
		        lowest=z_diff
		        correct_plane=j
		      end
		    Next
		    
		    
		    // Remake the Structure contours
		    haspoints=False
		    file = new RTOG_Structure_Slice
		    file = grtog.Structures.Structures(c_index).structure_Data(correct_plane)
		    for j = 0 to ubound(file.segments)
		      poly = new class_polygon
		      for k =0 to ubound(file.segments(j).Points)
		        haspoints=True
		        x=(file.segments(j).Points(k).x-Coord_1_1st_point+Horizontal_Grid/2)/Horizontal_Grid
		        y=(file.segments(j).Points(k).y-Coord_2_1st_point+Vertical_Grid/2)/Vertical_Grid
		        poly.AddPoint_D x,y
		        pixx= Round(x)
		        pixy= Round(y)
		        poly.AddPoint pixx,pixy
		      next
		      Pic_Structure.Graphics.FillPolygon poly.Points
		    next
		    
		    
		    for ix=1 to Size_of_Dimension1
		      for iy=1 to Size_of_Dimension2
		        d_index=(ix-1)+(iy-1)*Size_of_Dimension1
		        
		        if haspoints Then
		          if Pic_Structure.RGBSurface.Pixel(ix-1,iy-1).Red=255 Then
		            Dose_Distribution(i).Points(d_index)=0
		          end
		        else
		          Dose_Distribution(i).Points(d_index)=0
		        end
		      Next
		    Next
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		AcquisitionDate As UInt32
	#tag EndProperty

	#tag Property, Flags = &h0
		AcquisitionTime As UInt32
	#tag EndProperty

	#tag Property, Flags = &h0
		Beam_ID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Coord_1 As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Coord_1_1st_point As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Coord_2 As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Coord_2_1st_point As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Coord_3_1st_point As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Depth_Grid As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Dmax As double
	#tag EndProperty

	#tag Property, Flags = &h0
		Dmin As double
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Comment As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Distribution(-1) As RTOG_Dose_Plane
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Scale As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_U As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Uncertainty As double
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Units As String
	#tag EndProperty

	#tag Property, Flags = &h0
		engine As string
	#tag EndProperty

	#tag Property, Flags = &h0
		engine_b As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		File_Num As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Fraction_Group_ID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Horizontal_G As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Horizontal_Grid As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_D As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_Dimensions As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_R As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_Representation As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Orien As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Orientation As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Plan_I As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Plan_ID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Points(-1) As Class_Points
	#tag EndProperty

	#tag Property, Flags = &h0
		Save As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		SeriesDescription As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Series_Number As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Size_D1 As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Size_D2 As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Size_D3 As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Size_of_Dimension1 As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Size_of_Dimension2 As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Size_of_Dimension3 As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		SOP_Instance_UID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SumType As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Vertical_G As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Vertical_Grid As single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AcquisitionDate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="UInt32"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcquisitionTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="UInt32"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Beam_ID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Coord_1"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Coord_1_1st_point"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Coord_2"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Coord_2_1st_point"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Coord_3_1st_point"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Depth_Grid"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dmax"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dmin"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Comment"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_name"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Scale"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_U"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Uncertainty"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Units"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="engine"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="engine_b"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="File_Num"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Fraction_Group_ID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Horizontal_G"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Horizontal_Grid"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
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
			Name="Num_D"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Num_Dimensions"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Num_R"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Num_Representation"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Orien"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Orientation"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Plan_I"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Plan_ID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Save"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SeriesDescription"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Series_Number"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size_D1"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size_D2"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size_D3"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size_of_Dimension1"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size_of_dimension2"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="size_of_dimension3"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SOP_Instance_UID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SumType"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="Vertical_G"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Vertical_Grid"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
