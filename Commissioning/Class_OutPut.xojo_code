#tag Class
Protected Class Class_OutPut
	#tag Method, Flags = &h0
		Sub Add_Value(out as Single, error as single, algor as string, linac as String,eng as string, fx as Single,fy as Single, SSD as Single, depth as Single,shells as String,mode as String)
		  Dim i as Integer
		  Dim newtable as Boolean
		  Dim aa as Class_OutPut_Table
		  
		  newtable=True
		  
		  
		  for i=0 to UBound(gOutput.One)
		    if gOutput.One(i).Algorithm=algor and gOutput.One(i).Machine=linac and gOutput.One(i).Mode=mode and gOutput.One(i).energy=eng and gOutput.One(i).SSD=SSD and gOutput.One(i).Detectordepthsurface=depth _
		      and gOutput.One(i).Calculation_Machine=shells Then
		      gOutput.One(i).OutPut(fx-1,fy-1)=out
		      gOutput.One(i).uncertainty(fx-1,fy-1)=error
		      
		      newtable=False
		    end
		  next
		  
		  
		  if newtable Then
		    aa = new Class_OutPut_Table
		    aa.Mode=mode
		    aa.Algorithm=algor
		    aa.Machine=linac
		    aa.energy=eng
		    aa.SSD=SSD
		    aa.Detectordepthsurface=depth
		    aa.Calculation_Machine=shells
		    
		    ReDim aa.FSX(39)
		    ReDim aa.FSY(39)
		    ReDim aa.OutPut(39,39)
		    ReDim aa.uncertainty(39,39)
		    
		    
		    for i=0 to 39
		      aa.FSx(i)=i+1
		      aa.FSy(i)=i+1
		    next
		    aa.OutPut(fx-1,fy-1)=out
		    aa.uncertainty(fx-1,fy-1)=error
		    
		    gOutput.One.Append aa
		    Save=True
		  end
		  
		  if app.which_window_Commission Then
		    Window_Commisssioning.Update_Profiles_Output
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_All_Tables()
		  //----------------------------------------
		  //
		  //
		  //----------------------------------------
		  Dim i,x,k,struct_count as Integer
		  Dim ts as TextInputStream
		  Dim temp as String
		  Dim pp as Class_Profile_One
		  Dim f,g as FolderItem
		  //----------------------------------------
		  
		  ReDim One(-1)
		  
		  g=gPref.Commission_fi
		  
		  if g=nil Then
		    Return
		  end
		  
		  if g.Exists=False Then
		    Return
		  end
		  
		  struct_count=0
		  for i =1 to g.Count
		    if InStr(g.Item(i).Name,".Output")>0 then
		      struct_count=struct_count+1
		    end
		  next
		  
		  
		  for x=0 to struct_count
		    temp=str(x+1)
		    while len(temp)<3
		      temp="0"+temp
		    wend
		    temp=temp+".Output"
		    f=g.Child(temp)
		    if f.Exists =False Then
		      Exit
		    end
		    Read_Table(f)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_Table(f as FolderItem)
		  //----------------------------------------
		  //
		  //
		  //----------------------------------------
		  Dim i,x,k,struct_count as Integer
		  Dim ts as TextInputStream
		  Dim temp,temp2 as String
		  Dim pp as Class_OutPut_Table
		  //----------------------------------------
		  
		  ts=f.OpenAsTextFile
		  if ts=nil Then
		    Exit
		  end
		  pp = new Class_OutPut_Table
		  
		  
		  While ts.EOF=False
		    temp=ts.ReadLine
		    temp2=NthField(temp,",",1)
		    if InStr(temp,"Linac")>0 Then
		      pp.Machine=Trim(NthField(temp,":=",2))
		    elseif InStr(temp,"X LABEL")>0 Then
		      pp.X_label=NthField(temp,":=",2)
		      
		    elseif InStr(temp,"Y LABEL")>0 Then
		      pp.y_label=NthField(temp,":=",2)
		      
		    elseif InStr(temp,"DataLABEL")>0 Then
		      pp.Data_Label=Trim(NthField(temp,":=",2))
		      
		    elseif InStr(temp,"Mode")>0 Then
		      pp.Mode=Trim(NthField(temp,":=",2))
		      
		    elseif InStr(temp,"Date")>0 Then
		      pp.Date=Trim(NthField(temp,":=",2))
		      
		      
		    elseif InStr(temp,"CalculationShell")>0 Then
		      pp.Calculation_Machine=Trim(NthField(temp,":=",2))
		      
		    elseif InStr(temp,"Algor")>0 Then
		      pp.Algorithm=Trim(NthField(temp,":=",2))
		      
		    elseif InStr(temp,"DetectorDepth")>0 Then
		      temp=NthField(temp,":=",2)
		      pp.Detectordepthsurface=val(Temp)
		      
		    elseif InStr(temp,"SSD")>0 Then
		      temp=NthField(temp,":=",2)
		      pp.SSD=Val(Temp)
		      
		    elseif InStr(temp,"Norm")>0 Then
		      temp=NthField(temp,":=",2)
		      pp.Normalization=Val(Temp)
		      
		    elseif InStr(temp,"ENERGY")>0 Then
		      temp=NthField(temp,":=",2)
		      pp.Energy=Trim(Temp)
		      
		    elseif InStr(temp,"FieldSizeX")>0 Then
		      temp=NthField(temp,":=",2)
		      i=CountFields(temp,",")-2
		      ReDim pp.FSX(i)
		      for x=0 to i
		        pp.FSx(x)=val(NthField(temp,",",x+1))
		      next
		      
		    elseif InStr(temp,"FieldSizeY")>0 Then
		      temp=NthField(temp,":=",2)
		      i=CountFields(temp,",")-2
		      ReDim pp.FSy(i)
		      for x=0 to i
		        pp.FSy(x)=val(NthField(temp,",",x+1))
		      next
		      
		      
		    elseif InStr(temp,"Add-On")>0 Then
		      temp=NthField(temp,":=",2)
		      pp.Add_On=Trim(Temp)
		      
		    elseif IsNumeric(temp2) Then
		      i=UBound(pp.FSX)
		      x=UBound(pp.FSY)
		      ReDim pp.OutPut(i,x)
		      ReDim pp.uncertainty(i,x)
		      
		      for i=0 to UBound(pp.FSY)
		        for x=0 to UBound(pp.FSX)
		          pp.OutPut(i,x)=val(NthField(temp,",",x+1))
		        next
		        temp=ts.ReadLine
		      next
		      
		      i=UBound(pp.FSX)
		      x=UBound(pp.FSY)
		      ReDim pp.uncertainty(i,x)
		      for i=0 to UBound(pp.FSY)
		        for x=0 to UBound(pp.FSX)
		          pp.uncertainty(i,x)=val(NthField(temp,",",x+1))
		        next
		        temp=ts.ReadLine
		      next
		      
		      
		      
		    end
		  Wend
		  ts.Close
		  One.Append pp
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_Table()
		  //----------------------------------------
		  //  Write the output table to file
		  //
		  //----------------------------------------
		  Dim g,f as FolderItem
		  Dim i,k,x as Integer
		  Dim ts as TextOutputStream
		  Dim temp as String
		  //----------------------------------------
		  
		  f=gPref.Commission_fi
		  
		  // Remove old files
		  for i=f.Count DownTo 1
		    g=f.Item(i)
		    if InStr(g.Name,".Output")>0 Then
		      g.Delete
		    end
		  next
		  
		  for i = 0 to UBound(One)
		    temp=str(i+1)
		    While len(Temp)<3 
		      temp="0"+temp
		    Wend
		    g=f.Child(temp+".Output")
		    if g.Exists Then
		      g.Delete
		    end
		    ts=g.CreateTextFile
		    if ts<>nil Then
		      spaces(ts,"Linac", 31, One(i).Machine)
		      spaces(ts,"ENERGY", 31, One(i).Energy)
		      spaces(ts,"SSD", 31, Format(One(i).SSD,"-#.####"))
		      spaces(ts,"DetectorDepth", 31, Format(One(i).Detectordepthsurface,"-#.###e"))
		      spaces(ts,"Add-On", 31, One(i).Add_On)
		      spaces(ts,"Date", 31, One(i).Date)
		      spaces(ts,"DataLabel", 31, One(i).Data_Label)
		      spaces(ts,"Mode", 31, One(i).Mode)
		      spaces(ts,"Algor", 31, One(i).Algorithm)
		      spaces(ts,"Norm", 31, Format(One(i).Normalization,"-#.#######e"))
		      spaces(ts,"CalculationShell", 31, One(i).Calculation_Machine)
		      temp=""
		      for k=0 to UBound(One(i).FSX)
		        temp=temp+Format(One(i).FSX(k),"-#.###")+", "
		      next
		      spaces(ts,"FieldSizeX", 31, temp)
		      temp=""
		      for k=0 to UBound(One(i).FSy)
		        temp=temp+Format(One(i).FSy(k),"-#.###")+", "
		      next
		      spaces(ts,"FieldSizeY", 31, temp)
		      for x=0 to UBound(One(i).FSX)
		        temp=""
		        for k=0 to UBound(One(i).FSy)
		          temp=temp+Format(One(i).OutPut(x,k),"-#.#####e")+", "
		        next
		        ts.WriteLine temp
		      next
		      for x=0 to UBound(One(i).FSX)
		        temp=""
		        for k=0 to UBound(One(i).FSy)
		          temp=temp+Format(One(i).uncertainty(x,k),"-#.#####e")+", "
		        next
		        ts.WriteLine temp
		      next
		      ts.Close
		    end
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		One(-1) As Class_OutPut_Table
	#tag EndProperty

	#tag Property, Flags = &h0
		Save As Boolean
	#tag EndProperty


	#tag ViewBehavior
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
			Name="Save"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
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
