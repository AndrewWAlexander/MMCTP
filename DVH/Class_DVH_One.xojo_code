#tag Class
Protected Class Class_DVH_One
	#tag Method, Flags = &h0
		Function Calculate_Dose_at_Volume_CC(Volumevalue as Single) As Single
		  //----------------------------
		  // Interpolate the dose value for a given
		  // volume in CC
		  //
		  //----------------------------
		  Dim i as Integer
		  Dim pp as Class_Profile_One
		  Dim pxy,pxyy(-1) as Class_Points
		  Dim ff as Single
		  //----------------------------
		  
		  pp=new Class_Profile_One
		  
		  for i=0 to DVH_bins-1   //n bins
		    pxy=new Class_Points
		    pxy.X_cm=mindose+(maxdose-mindose)*i/DVH_bins
		    pxy.Value=DVH(i)
		    pp.Points.Append pxy
		  next
		  
		  //Turn Volume value into percent
		  
		  Volumevalue=100*Volumevalue/pixelvolume
		  
		  if Volumevalue>100 Then
		    Return 0
		  end
		  
		  //here do cummulative
		  for i=(DVH_bins-2) DownTo 0
		    pp.Points(i).Value=pp.Points(i).Value+pp.Points(i+1).Value
		  next
		  
		  pxyy=pp.Get_Point_at_Value(Volumevalue)
		  if UBound(pxyy)=-1 Then
		    Return 0
		  end
		  pxy=pxyy(0)
		  if Normalize<>1 Then
		    pxy.X_cm=pxy.X_cm*Normalize
		  end
		  
		  Return pxy.X_cm
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Calculate_Dose_at_Volume_Percent(Volumevalue as Single) As Single
		  //----------------------------
		  // Interpolate the dose value for a given
		  // volume in percent
		  //
		  // Return the dose at a volume level
		  //----------------------------
		  Dim i as Integer
		  Dim pp as Class_Profile_One
		  
		  Dim pxy,ppp(-1) as Class_Points
		  Dim ff as Single
		  //----------------------------
		  
		  pp=new Class_Profile_One
		  
		  for i=0 to DVH_bins-1   //n bins
		    pxy=new Class_Points
		    pxy.X_cm=mindose+(maxdose-mindose)*i/DVH_bins
		    pxy.Value=DVH(i)
		    pp.Points.Append pxy
		  next
		  
		  //here do cummulative
		  for i=(DVH_bins-2) DownTo 0
		    pp.Points(i).Value=pp.Points(i).Value+pp.Points(i+1).Value
		  next
		  
		  
		  ppp=pp.Get_Point_at_Value(Volumevalue)
		  if UBound(ppp)<0 Then // Update 2013 to avoid out of bounds error
		    Return 0
		  end
		  
		  pxy=ppp(0)
		  if Normalize<>1 Then
		    pxy.X_cm=pxy.X_cm*Normalize
		  end
		  Return pxy.X_cm
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Calculate_Volume_at_Dose(Dose as Single) As Single
		  //----------------------------
		  // Interpolate the Volume value for a given
		  // dose in Gy
		  //
		  //----------------------------
		  Dim i as Integer
		  Dim pp as Class_Profile_One
		  Dim pxy as Class_Points
		  //----------------------------
		  
		  pp=new Class_Profile_One
		  
		  for i=0 to DVH_bins-1   //n bins
		    pxy=new Class_Points
		    pxy.X_cm=mindose*Normalize+(maxdose-mindose)*i*Normalize/DVH_bins
		    pxy.Value=DVH(i)
		    pp.Points.Append pxy
		  next
		  
		  //here do cummulative
		  for i=(DVH_bins-2) DownTo 0
		    pp.Points(i).Value=pp.Points(i).Value+pp.Points(i+1).Value
		  next
		  
		  if mindose*Normalize> dose Then
		    Return 100
		  elseif dose>maxdose *Normalize Then
		    Return 0
		  end
		  
		  Return pp.Get_Value_at_Point(dose,0,0, false)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		avgdose As single
	#tag EndProperty

	#tag Property, Flags = &h0
		avg_error As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Calculate As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		D50 As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		doses(-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Name As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose_Units As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DVH(100) As double
	#tag EndProperty

	#tag Property, Flags = &h0
		DVH_bins As Integer = 1000
	#tag EndProperty

	#tag Property, Flags = &h0
		DVH_Cum(100) As double
	#tag EndProperty

	#tag Property, Flags = &h0
		DVH_Symbol As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		maxdose As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		mindose As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Normalize As Single = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			//Total number of DVH pixels
		#tag EndNote
		NumberofPixels As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			//Volume of One Pixel 
		#tag EndNote
		pixelvolume As double
	#tag EndProperty

	#tag Property, Flags = &h0
		sbigvolume As double
	#tag EndProperty

	#tag Property, Flags = &h0
		ssmallvolume As double
	#tag EndProperty

	#tag Property, Flags = &h0
		stdev As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		StringFile As String
	#tag EndProperty

	#tag Property, Flags = &h0
		struc_names As string
	#tag EndProperty

	#tag Property, Flags = &h0
		stru_color As color
	#tag EndProperty

	#tag Property, Flags = &h0
		svolume As double
	#tag EndProperty

	#tag Property, Flags = &h0
		svolumeerror As double
	#tag EndProperty

	#tag Property, Flags = &h0
		volumes As single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="avgdose"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="avg_error"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Calculate"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="D50"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Name"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Units"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DVH_bins"
			Group="Behavior"
			InitialValue="1000"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DVH_Symbol"
			Group="Behavior"
			Type="Integer"
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
			Name="maxdose"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mindose"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Normalize"
			Group="Behavior"
			InitialValue="1"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberofPixels"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pixelvolume"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sbigvolume"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ssmallvolume"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="stdev"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StringFile"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="struc_names"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="stru_color"
			Group="Behavior"
			InitialValue="&h000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="svolume"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="svolumeerror"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="volumes"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
