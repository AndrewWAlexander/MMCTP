#tag Class
Protected Class Class_Profiles_All
	#tag Method, Flags = &h0
		Sub Add_Profile()
		  '//--------------------------------------
		  '//
		  '//
		  '//--------------------------------------
		  'Dim x,i,ff as Integer
		  'Dim pp as Class_Profile_One
		  '//--------------------------------------
		  '
		  '
		  'pp=new Class_Profile_One
		  'pp.Pointa=new Class_Points
		  'pp.Pointb=new Class_Points
		  '
		  '
		  '
		  ''Read in 1st profile
		  'for i=0 to UBound(One_Profile)
		  'if Window_Treatment.ListBox_Dose_profiles_Result.CellCheck(i,3) Then
		  'ff=i
		  'pp.Colour=One_Profile(ff).Colour
		  'pp.Name=One_Profile(ff).Name +"+"
		  'pp.Pointa.X_cm=One_Profile(ff).Pointa.x_cm
		  'pp.Pointa.y_cm=One_Profile(ff).Pointa.y_cm
		  'pp.Pointa.z_cm=One_Profile(ff).Pointa.z_cm
		  'pp.Pointb.X_cm=One_Profile(ff).Pointa.x_cm
		  'pp.Pointb.y_cm=One_Profile(ff).Pointb.y_cm
		  'pp.Pointb.z_cm=One_Profile(ff).Pointb.z_cm
		  'ReDim pp.Points(UBound(One_Profile(ff).Points))
		  '
		  'for x=0 to UBound(One_Profile(ff).Points)
		  'pp.Points(x)= new Class_Points
		  'pp.Points(x).Value=One_Profile(ff).Points(x).Value
		  'pp.Points(x).X_cm=One_Profile(ff).Points(x).X_cm
		  'pp.Points(x).Y_cm=One_Profile(ff).Points(x).Y_cm
		  'pp.Points(x).Z_cm=One_Profile(ff).Points(x).Z_cm
		  'next
		  '
		  'for i=ff+1 to UBound(One_Profile)
		  'if Window_Treatment.ListBox_Dose_profiles_Result.CellCheck(i,3) Then
		  'if UBound(One_Profile(i).Points)=UBound(One_Profile(ff).Points) Then
		  '
		  'for x=0 to UBound(One_Profile(ff).Points)
		  'pp.Points(x).Value=pp.Points(x).Value+One_Profile(i).Points(x).Value
		  'next
		  'end
		  'end
		  'next
		  '
		  '
		  'One_Profile.Append pp
		  'Window_Treatment.Profiles_Update_All
		  '
		  '
		  'exit
		  'end
		  'next
		  '
		  '
		  '
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Export_DVH_PyPlot()
		  //---------------------------------------
		  // Export DVH data into pyplot format
		  //
		  //---------------------------------------
		  Dim f as FolderItem
		  Dim i,j as integer
		  Dim ts as TextOutputStream
		  Dim dvh_file, line,header,label,x,y as String
		  //---------------------------------------
		  
		  f=GetSaveFolderItem("","DVH")
		  
		  if f=nil Then
		    Return
		  end
		  ts=f.CreateTextFile
		  if ts=nil Then
		    Return
		  end
		  ts.Delimiter=EndOfLine.UNIX
		  
		  ts.WriteLine "import numpy as np"
		  ts.WriteLine "import matplotlib.pyplot as plt"
		  ts.WriteLine "from matplotlib.ticker import (MultipleLocator, FormatStrFormatter,AutoMinorLocator)"
		  ts.WriteLine "minorLocator = AutoMinorLocator(2)"
		  ts.WriteLine "plt.ylabel('Volume (%)', fontsize=20)"
		  ts.WriteLine "plt.xlabel('Dose (Gy)', fontsize=20)"
		  ts.WriteLine "plt.title('DVH', fontsize=20)"
		  
		  for j=0 to UBound(One_Profile)
		    label="label='"+ One_Profile(j).Label+"'"
		    x=""
		    y=""
		    for i=0 to UBound(One_Profile(j).Points)  //n bins
		      x = x+Format(One_Profile(j).Points(i).x_cm,"-#.#######e")
		      y=y+Format(One_Profile(j).Points(i).value,"-#.#######e")
		      if i<>UBound(One_Profile(j).Points) Then
		        x=x+", "
		        y=y+", "
		      end
		    next
		    ts.WriteLine "x="+x
		    ts.WriteLine "y="+y
		    ts.WriteLine "plt.plot(x,y, "+label+", linestyle="""",marker=""o"")"
		  next
		  
		  ts.WriteLine "ax = plt.axes()  "
		  ts.WriteLine "plt.yticks(np.arange(0, 110, 10))"
		  //ts.WriteLine "plt.xticks(np.arange(0, 21, 2))"
		  ts.WriteLine "ax.yaxis.grid(True)"
		  ts.WriteLine "ax.xaxis.grid(True)"
		  ts.WriteLine "plt.show()"
		  ts.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Export_DVH_XMGR()
		  //---------------------------------------
		  // Export DVH data into XMGR format
		  //
		  //---------------------------------------
		  Dim f as FolderItem
		  Dim i,j as integer
		  Dim ts as TextOutputStream
		  Dim dvh_file, line,header as String
		  //---------------------------------------
		  
		  f=GetSaveFolderItem("","DVH")
		  
		  if f=nil Then
		    Return
		  end
		  ts=f.CreateTextFile
		  if ts=nil Then
		    Return
		  end
		  ts.Delimiter=EndOfLine.UNIX
		  
		  ts.WriteLine "@g0 type xy"
		  ts.WriteLine "@    title ""DVH"""
		  ts.WriteLine "@    title size 2.00000"
		  ts.WriteLine "@    legend on"
		  ts.WriteLine "@    legend box linestyle 0"
		  ts.WriteLine "@    legend x1 0.6"
		  ts.WriteLine "@    legend y1 0.75"
		  ts.WriteLine "@    view xmin 0.250"
		  ts.WriteLine "@    xaxis  label ""Dose (Gy)"""
		  //ts.WriteLine "@    timestamp on"
		  ts.WriteLine "@    yaxis  label ""Volume (%)"""
		  ts.WriteLine "@default linewidth 3.0"
		  ts.WriteLine "@default linestyle 1"
		  ts.WriteLine "@default font 0"
		  ts.WriteLine "@default char size 1.000000"
		  ts.WriteLine "@xaxis  label char size 2.00000"
		  ts.WriteLine "@xaxis  ticklabel char size 2.000000"
		  ts.WriteLine "@yaxis  label char size 2.00000"
		  ts.WriteLine "@yaxis  ticklabel char size 2.000000"
		  
		  
		  
		  for j=0 to UBound(One_Profile)
		    ts.WriteLine "@    s"+str(j)+" on"
		    ts.WriteLine "@    legend string  "+str(j)+" """+One_Profile(j).Label+""""
		    ts.WriteLine "@TYPE xy"
		    ts.WriteLine "@    s"+str(j)+" symbol color "+str(j+1)
		    
		    
		    for i=0 to UBound(One_Profile(j).Points)  //n bins
		      line = "     "+Format(One_Profile(j).Points(i).x_cm,"-#.###e") +"     "+Format(One_Profile(j).Points(i).value,"-#.###e")
		      ts.WriteLine line
		    next
		    if j<>UBound(One_Profile) Then
		      ts.WriteLine "&"
		    end
		  next
		  ts.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Export_Profile(theone as Class_Profile_One)
		  //-------------------------------------
		  // Written by Ellis M and Marc M, Andrew Alexander
		  // UPDATED: Spet 6 2008
		  //
		  //-------------------------------------
		  Dim file As FolderItem
		  Dim fileStream as TextOutputStream
		  dim j as Integer
		  dim i as integer
		  Dim wantx, wanty, wantz,wante As String
		  Dim wantvalue As String
		  //-------------------------------------
		  
		  
		  file=GetSaveFolderItem("plain/text","")
		  If file<> Nil then
		    fileStream=file.CreateTextFile
		    
		    for j=0 to UBound(One_Profile)
		      
		      filestream.Writeline One_Profile(j).Label
		      
		      fileStream.write "POINT 1: "
		      fileStream.WriteLine str(One_Profile(j).Pointa.x_cm) + " , " + str( One_Profile(j).pointa.y_cm)+" , " + str( One_Profile(j).pointa.z_cm)
		      fileStream.write "POINT 2: "
		      fileStream.WriteLine str(One_Profile(j).pointb.x_cm) + " , " + str( One_Profile(j).pointb.y_cm)+" , " + str( One_Profile(j).pointb.z_cm)
		      
		      
		      fileStream.WriteLine "X, Y, Z, DOSE, ERROR "
		      for i =0 to UBound(One_Profile(j).Points)
		        wantx = Format(One_Profile(j).Points(i).x_cm,"-#.###e")
		        wanty = Format(One_Profile(j).Points(i).y_cm,"-#.###e")
		        wantz = Format(One_Profile(j).Points(i).z_cm,"-#.###e")
		        wantvalue = Format(One_Profile(j).Points(i).value,"-#.###e")
		        wante = Format( One_Profile(j).Points(i).uncertainty,"-#.###e")
		        fileStream.WriteLine wantx+", "+wanty+", "+wantz+", "+wantvalue+", "+wante
		      next
		      fileStream.WriteLine
		      fileStream.WriteLine
		      
		    next
		    fileStream.Close
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_String_Energy(pp as Class_Profile_One) As String
		  Return Format(pp.Energy,"00.00")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_String_FS(pp as Class_Profile_One) As String
		  Return Format(pp.Field_X,"-00.##")+"x"+Format(pp.Field_Y,"-00.##")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Make_Colour() As Color
		  Dim rand as Random
		  
		  rand=new Random
		  
		  
		  Return RGB(rand.InRange(0,255),rand.InRange(0,255),rand.InRange(0,255))
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_All_Profiles(g as FolderItem)
		  //----------------------------------------
		  // Readin all Commissioning Profiles
		  // MMCTP Format
		  //----------------------------------------
		  Dim i,x,k,struct_count as Integer
		  Dim ts as TextInputStream
		  Dim temp as String
		  Dim pp as Class_Profile_One
		  Dim f as FolderItem
		  //----------------------------------------
		  
		  ReDim One_Profile(-1)
		  
		  
		  if g=nil Then
		    Return
		  end
		  
		  if g.Exists = False Then
		    Return
		  end
		  
		  
		  struct_count=0
		  for i =1 to g.Count
		    if InStr(g.Item(i).Name,".Profile")>0 then
		      struct_count=struct_count+1
		    end
		  next
		  
		  
		  for x=0 to struct_count
		    temp=str(x+1)
		    while len(temp)<3
		      temp="0"+temp
		    wend
		    temp=temp+".Profile"
		    f=g.Child(temp)
		    if f.Exists =False Then
		      Exit
		    end
		    Read_Profile(f)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_Profile(f as folderItem)
		  //----------------------------------------
		  // Read MMCTP Profile
		  //
		  //----------------------------------------
		  Dim i,x,k,struct_count as Integer
		  Dim ts as TextInputStream
		  Dim temp,label1 as String
		  Dim pp as Class_Profile_One
		  //----------------------------------------
		  
		  ts=f.OpenAsTextFile
		  if ts=nil Then
		    Exit
		  end
		  
		  pp= new Class_Profile_One
		  pp.Pointa=new Class_Points
		  pp.Pointb=new Class_Points
		  pp.MaxPoint=new Class_Points
		  
		  While ts.EOF=False
		    
		    temp=ts.ReadLine
		    label1=Trim(NthField(temp,":=",1))
		    
		    if InStr(temp,"NAME")>0 Then
		      pp.Label=Trim(NthField(temp,":=",2))
		      
		    elseif InStr(temp,"Date")>0 Then
		      pp.Date=Trim(NthField(temp,":=",2))
		      
		    elseif InStr(temp,"Linac")>0 Then
		      pp.Linac=Trim(NthField(temp,":=",2))
		      
		    elseif InStr(temp,"Colour")>0 Then
		      temp=NthField(temp,":=",2)
		      pp.Colour= rgb(val(NthField(temp,"/",1)),val(NthField(temp,"/",2)),val(NthField(temp,"/",3)))
		      
		    elseif InStr(temp,"X LABEL")>0 Then
		      pp.X_label=Trim(NthField(temp,":=",2))
		      
		    elseif InStr(temp,"Y LABEL")>0 Then
		      pp.y_label=Trim(NthField(temp,":=",2))
		      
		    elseif InStr(temp,"Z LABEL")>0 Then
		      pp.z_label=Trim(NthField(temp,":=",2))
		      
		    elseif InStr(temp,"X UNITS")>0 Then
		      pp.Units_x=Trim(NthField(temp,":=",2))
		      
		    elseif InStr(temp,"Y UNITS")>0 Then
		      pp.Units_y=Trim(NthField(temp,":=",2))
		      
		    elseif InStr(temp,"Z UNITS")>0 Then
		      pp.Units_z=Trim(NthField(temp,":=",2))
		      
		    elseif InStr(temp,"SSD")>0 Then
		      pp.SSD=val(NthField(temp,":=",2))
		      
		    elseif InStr(temp,"POINT 1")>0 Then
		      temp=NthField(temp,":=",2)
		      pp.Pointa.X_cm=val(NthField(temp,",",1))
		      pp.Pointa.Y_cm=val(NthField(temp,",",2))
		      pp.Pointa.z_cm=val(NthField(temp,",",3))
		      
		    elseif InStr(temp,"POINT 2")>0 Then
		      temp=NthField(temp,":=",2)
		      pp.Pointb.X_cm=val(NthField(temp,",",1))
		      pp.Pointb.Y_cm=val(NthField(temp,",",2))
		      pp.Pointb.z_cm=val(NthField(temp,",",3))
		      
		    elseif InStr(temp,"Depth")>0 Then
		      temp=NthField(temp,":=",2)
		      pp.Depth=val(Temp)
		      
		    elseif InStr(temp,"DISTANCE")>0 Then
		      temp=NthField(temp,":=",2)
		      pp.Distance=val(Temp)
		      
		    elseif InStr(temp,"NORMALIZATION")>0 Then
		      temp=NthField(temp,":=",2)
		      pp.Normalize_value=val(Temp)
		      
		    elseif InStr(label1,"ENERGY")>0 Then
		      temp=NthField(temp,":=",2)
		      pp.Energy=val(Temp)
		      
		    elseif InStr(temp,"FIELD SIZE X")>0 Then
		      temp=NthField(temp,":=",2)
		      pp.Field_X=val(Temp)
		      
		    elseif InStr(temp,"FIELD SIZE Y")>0 Then
		      temp=NthField(temp,":=",2)
		      pp.Field_y=val(Temp)
		      
		    elseif InStr(temp,"BEAM ID")>0 Then
		      temp=NthField(temp,":=",2)
		      pp.BEAM_ID=(Temp)
		      
		    elseif InStr(temp,"Add-On")>0 Then
		      temp=NthField(temp,":=",2)
		      pp.AddOn=Trim(Temp)
		      
		    elseif InStr(temp,"Algor")>0 Then
		      temp=NthField(temp,":=",2)
		      pp.Algorithm=Trim(Temp)
		      
		    elseif InStr(temp,"TYPE")>0 and InStr(temp,"RADIATIONTYPE")=0 Then
		      temp=NthField(temp,":=",2)
		      pp.TYPE=val(Temp)
		      
		    elseif InStr(temp,"RADIATIONTYPE")>0 Then
		      temp=NthField(temp,":=",2)
		      pp.Radiation_Type=Trim(Temp)
		      
		    elseif InStr(temp,"Source")>0 Then
		      temp=NthField(temp,":=",2)
		      pp.Source_TYPE=val(Temp)
		      
		    elseif InStr(temp,"Comment")>0 Then
		      temp=NthField(temp,":=",2)
		      pp.Comment=Trim(Temp)
		      
		    elseif InStr(temp,"NUMBER OF POINTS")>0 Then
		      i=val(NthField(temp,":=",2))
		      ReDim pp.Points(i-1)
		      for k=0 to i-1
		        pp.Points(k) = new Class_Points
		        temp=ts.ReadLine
		        pp.Points(k).x_cm=val(NthField(temp,",",1))
		        pp.Points(k).y_cm=val(NthField(temp,",",2))
		        pp.Points(k).z_cm=val(NthField(temp,",",3))
		        pp.Points(k).Value=val(NthField(temp,",",4))
		        pp.Points(k).uncertainty=val(NthField(temp,",",5))
		      next
		    end
		  Wend
		  ts.Close
		  pp.Update_Profile
		  
		  
		  if UBound(pp.Points)>-1 Then
		    One_Profile.Append pp
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_Profiles(f as FolderItem)
		  //----------------------------------------
		  // Write MMCTP Profile
		  //
		  //----------------------------------------
		  Dim g as FolderItem
		  Dim i,k as Integer
		  Dim ts as TextOutputStream
		  Dim temp as String
		  //----------------------------------------
		  
		  // Remove old files
		  for i=f.Count DownTo 1
		    g=f.Item(i)
		    if g<>nil Then
		      if InStr(g.Name,".Profile")>0 Then
		        g.Delete
		      end
		    end
		  next
		  //--------------
		  
		  
		  for i = 0 to UBound(One_Profile)
		    temp=str(i+1)
		    While len(Temp)<3 
		      temp="0"+temp
		    Wend
		    g=f.Child(temp+".Profile")
		    if g.Exists Then
		      g.Delete
		    end
		    ts=g.CreateTextFile
		    if ts<>nil Then
		      spaces(ts,"NAME", 31, One_Profile(i).Label)
		      spaces(ts,"COLOUR RGB", 31, str(One_Profile(i).colour.Red)+"/"+str(One_Profile(i).colour.Green)+"/"+str(One_Profile(i).Colour.Blue))
		      spaces(ts,"X LABEL", 31, One_Profile(i).X_label)
		      spaces(ts,"Y LABEL", 31, One_Profile(i).Y_label)
		      spaces(ts,"Z LABEL", 31, One_Profile(i).Z_label)
		      spaces(ts,"X UNITS", 31, One_Profile(i).Units_x)
		      spaces(ts,"Y UNITS", 31, One_Profile(i).Units_y)
		      spaces(ts,"Z UNITS", 31, One_Profile(i).Units_Z)
		      
		      spaces(ts,"POINT 1", 31, Format(One_Profile(i).Pointa.x_cm,"-#.###e")+","+Format(One_Profile(i).Pointa.y_cm,"-#.###e")+","+Format(One_Profile(i).Pointa.z_cm,"-#.###e"))
		      spaces(ts,"POINT 2", 31, Format(One_Profile(i).Pointb.x_cm,"-#.###e")+","+Format(One_Profile(i).Pointb.y_cm,"-#.###e")+","+Format(One_Profile(i).Pointb.z_cm,"-#.###e"))
		      spaces(ts,"DISTANCE", 31, Format(One_Profile(i).Distance,"-#.###e"))
		      spaces(ts,"NORMALIZATION", 31, Format(One_Profile(i).Normalize_value,"-#.###e"))
		      
		      spaces(ts,"ENERGY", 31, Format(One_Profile(i).Energy,"-#.###"))
		      spaces(ts,"FIELD SIZE X", 31, Format(One_Profile(i).Field_X,"-##.###e"))
		      spaces(ts,"FIELD SIZE Y", 31, Format(One_Profile(i).Field_Y,"-##.###e"))
		      spaces(ts,"BEAM ID", 31, One_Profile(i).BEAM_ID)
		      spaces(ts,"TYPE", 31, STR(One_Profile(i).TYPE))
		      spaces(ts,"Source Typ", 31, STR(One_Profile(i).Source_TYPE))
		      spaces(ts,"Date", 31, (One_Profile(i).Date))
		      spaces(ts,"Linac", 31, (One_Profile(i).Linac))
		      spaces(ts,"Depth", 31, Format(One_Profile(i).Depth,"-#.###e"))
		      spaces(ts,"Add-On", 31, One_Profile(i).AddOn)
		      spaces(ts,"Algor", 31, One_Profile(i).Algorithm)
		      spaces(ts,"Comment", 31, One_Profile(i).Comment)
		      spaces(ts,"SSD", 31, Format(One_Profile(i).SSD,"-##.###e"))
		      spaces(ts,"RADIATIONTYPE", 31, One_Profile(i).Radiation_Type)
		      
		      spaces(ts,"NUMBER OF POINTS", 31, str(UBound(One_Profile(i).Points)+1))
		      for k=0 to UBound(One_Profile(i).Points)
		        ts.WriteLine Format(One_Profile(i).Points(k).x_cm,"-#.###e")+", " +Format(One_Profile(i).Points(k).y_cm,"-#.###e")+", " +Format(One_Profile(i).Points(k).z_cm,"-#.###e")+", " +Format(One_Profile(i).Points(k).value,"-#.###e")+", " +Format(One_Profile(i).Points(k).uncertainty,"-#.###e")
		      next
		      
		      ts.Close
		    end
		  next
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		One_Profile(-1) As Class_profile_One
	#tag EndProperty

	#tag Property, Flags = &h0
		save As Boolean = false
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
			Name="save"
			Visible=false
			Group="Behavior"
			InitialValue="false"
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
