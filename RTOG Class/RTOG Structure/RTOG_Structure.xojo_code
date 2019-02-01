#tag Class
Protected Class RTOG_Structure
	#tag Method, Flags = &h0
		Sub Structures_HR()
		  //------------------------------------------------------
		  // Create High Resoultion Structures
		  //========================================
		  Dim i,num,scan_num,segment_num,num_points,k,j,w,normal_index as Integer
		  Dim ts as TextInputStream
		  Dim tmpstr,fname,reading(1),rgb_color,zero_test as string
		  Dim file as RTOG_Structure_Slice
		  Dim S as RTOG_Structure_Segment
		  Dim p as RTOG_Structure_Point
		  Dim Z_value,temp,Z_limit_lower as Single
		  Dim needupdate as Boolean
		  '========================================
		  
		  
		  if gPref.DVH_Calc_Grid=1 Then // Detemine dose grid size
		    needupdate=False
		    For i = 0 to UBound(gRTOG.Plan)
		      for j=0 to UBound(gRTOG.Plan(i).Dose)
		        if HR_Res_Z> gRTOG.Plan(i).Dose(j).Depth_Grid Then
		          HR_Res_Z=gRTOG.Plan(i).Dose(j).Depth_Grid
		          needupdate=True
		        end
		        if HR_Res_Y>gRTOG.Plan(i).Dose(j).Vertical_Grid Then
		          HR_Res_Y=gRTOG.Plan(i).Dose(j).Vertical_Grid
		          needupdate=True
		        end
		        if HR_Res_X>gRTOG.Plan(i).Dose(j).Horizontal_Grid Then
		          HR_Res_X=gRTOG.Plan(i).Dose(j).Horizontal_Grid
		          needupdate=True
		        end
		      Next
		    next
		    
		    if needupdate=False Then
		      Return
		    end
		    
		    if HR_Res_X>gVis.scale_width Then
		      HR_Res_X=gVis.scale_width
		    end
		    if HR_Res_y>gVis.scale_height Then
		      HR_Res_y=gVis.scale_height
		    end
		    if HR_Res_z>gVis.scale_thickness Then
		      HR_Res_z=gVis.scale_thickness
		    end
		    
		  elseif gPref.DVH_Calc_Grid=2 Then // Use user set value
		    HR_Res_X=gPref.DVH_Calc_Grid_Size
		    HR_Res_y=gPref.DVH_Calc_Grid_Size
		    HR_Res_z=gPref.DVH_Calc_Grid_Size
		    
		  else // Use CT settings
		    HR_Res_X=gVis.scale_width
		    HR_Res_y=gVis.scale_height
		    HR_Res_z=gVis.scale_thickness
		    
		  end
		  
		  HRnx=gVis.nx*gVis.scale_width/HR_Res_X
		  HRny=gVis.ny*gVis.scale_height/HR_Res_Y
		  HRnz=gVis.nz*gVis.scale_thickness/HR_Res_Z
		  
		  temp=(gRTOG.Scan(UBound(gRTOG.Scan)).Z_Value-gRTOG.Scan(0).Z_Value)+gVis.scale_thickness
		  num=Round(temp/HR_Res_Z)
		  HR_Res_Z =temp/num
		  
		  Z_limit_lower=gRTOG.Scan(0).Z_Value-gVis.scale_thickness/2
		  
		  for i=0 to UBound(Structures)
		    gRTOG.Structures.Structures(i).Loaded_PointsHR=False
		    gRTOG.Structures.Structures(i).Loaded_PolyHR=False
		    
		    redim me.Structures(i).Structure_DataHR(num-1)
		    for w = 1 to num//Get all points per scan
		      file = new RTOG_Structure_Slice
		      scan_num=w
		      Z_value=Z_limit_lower+(w-1)*HR_Res_Z
		      temp=(Z_value-Z_limit_lower)/gVis.scale_thickness
		      normal_index=Floor(temp)
		      segment_num=UBound(Structures(i).Structure_Data(normal_index).Segments)+1
		      if segment_num >0 then //if we have segmnets
		        redim file.Segments(segment_num-1)
		        for j=1 to segment_num // Get the points per scan number per segment
		          num_points=UBound(Structures(i).Structure_Data(normal_index).Segments(j-1).Points)+1
		          S = new RTOG_Structure_Segment
		          redim s.Points(num_points-1)
		          for k = 1 to num_points// read points per segment
		            p = new RTOG_Structure_Point
		            p.X=Structures(i).Structure_Data(normal_index).Segments(j-1).Points(k-1).X
		            p.y=Structures(i).Structure_Data(normal_index).Segments(j-1).Points(k-1).y
		            p.z=Z_value
		            s.Points(k-1)=p
		          next // end read points per segment
		          file.segments(j-1)=s
		        next//
		      else
		        redim file.segments(-1)
		      end // end segments
		      me.Structures(i).Structure_DataHR(w-1)=file
		      me.Structures(i).Structure_DataHR(w-1).scan_Num=w
		      me.Structures(i).Structure_DataHR(w-1).Z=Z_value
		    next// end get all points
		    Structures(i).Loaded_PolyHR=False 
		  next
		  
		  
		  gVis.contours.Recalculate_Poly
		  gVis.contours.Recalculate_Images
		  gVis.contours.Recalculate_Points
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		HRnx As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		HRny As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		HRnz As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		HR_Res_X As Single = 100
	#tag EndProperty

	#tag Property, Flags = &h0
		HR_Res_Y As Single = 100
	#tag EndProperty

	#tag Property, Flags = &h0
		HR_Res_Z As Single = 100
	#tag EndProperty

	#tag Property, Flags = &h0
		nx As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ny As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		nz As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Res_X As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Res_Y As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Res_Z As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Structures(-1) As RTOG_Structure_Class
	#tag EndProperty

	#tag Property, Flags = &h0
		X_Offset As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Y_Offset As Single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="HRnx"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HRny"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HRnz"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HR_Res_X"
			Group="Behavior"
			InitialValue="100"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HR_Res_Y"
			Group="Behavior"
			InitialValue="100"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HR_Res_Z"
			Group="Behavior"
			InitialValue="100"
			Type="Single"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="nx"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ny"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="nz"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Res_X"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Res_Y"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Res_Z"
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
		#tag ViewProperty
			Name="X_Offset"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y_Offset"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
