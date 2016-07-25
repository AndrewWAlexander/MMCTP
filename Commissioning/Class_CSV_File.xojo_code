#tag Class
Protected Class Class_CSV_File
	#tag Method, Flags = &h0
		Sub Read(f as FolderItem)
		  //------------------------------
		  //
		  //
		  //------------------------------
		  Dim i as Integer
		  Dim ts as TextInputStream
		  Dim ss,temp as String
		  Dim pp as Class_Profile_One
		  Dim vv as Class_Points
		  Dim a as Single
		  //------------------------------
		  
		  ts = TextInputStream.Open(f)
		  
		  if ts<> Nil Then
		    Title=ts.ReadLine
		    While ts.EOF=False 
		      ss=ts.ReadLine
		      if InStr(ss,"Energy")> 0 Then
		        pp=new Class_Profile_One
		        pp.New_Profile
		        pp.Energy=val(NthField(ss,";",2))
		        Graphs.Append pp
		      elseif InStr(ss,"SSD")> 0 Then
		        pp.SSD=val(NthField(ss,";",2))/10
		      elseif InStr(ss,"Quantity")> 0 Then
		        pp.Value_Units=NthField(ss,";",2)
		      elseif InStr(ss,"Fieldsize")> 0 Then
		        pp.Field_X=(val(NthField(ss,";",4))-val(NthField(ss,";",2)))/10
		        pp.Field_Y=(val(NthField(ss,";",5))-val(NthField(ss,";",3)))/10
		      elseif InStr(ss,"CurveType")> 0 Then
		        temp=NthField(ss,";",2)
		        if temp="Inline" Then
		          pp.TYPE=3
		        elseif temp="Crossline" Then
		          pp.TYPE=2
		        elseif temp="Depth" Then
		          pp.TYPE=1
		        else
		          pp.TYPE=0
		        end
		      elseif InStr(ss,"RadiationType")> 0 Then
		        pp.Radiation_Type=NthField(ss,";",2)
		      elseif InStr(ss,"StartPoint")> 0 Then
		        pp.Pointa.X_cm=val(NthField(ss,";",2))/10
		        pp.Pointa.y_cm=val(NthField(ss,";",3))/10
		        pp.Pointa.z_cm=val(NthField(ss,";",4))/10
		      elseif InStr(ss,"End")> 0 Then
		      elseif IsNumeric(NthField(ss,";",1)) Then
		        vv=new Class_Points
		        vv.Value=val(NthField(ss,";",2))/10
		        a=val(NthField(ss,";",1))/10
		        if pp.TYPE=3 Then
		          vv.X_cm=pp.Pointa.X_cm
		          vv.Y_cm=a
		          vv.Z_cm=pp.Pointa.z_cm
		          pp.Depth=vv.Z_cm
		        elseif pp.TYPE=2 Then
		          vv.y_cm=pp.Pointa.y_cm
		          vv.X_cm=a
		          vv.Z_cm=pp.Pointa.z_cm
		          pp.Depth=vv.Z_cm
		        elseif pp.TYPE=1 Then
		          vv.Z_cm=a
		          vv.y_cm=pp.Pointa.y_cm
		          vv.X_cm=pp.Pointa.x_cm
		        end
		        pp.Points.Append vv
		      end
		    Wend
		  end
		  ts.Close
		  
		  Exception err as TypeMismatchException
		    Errors.Append "Tried to retype an object!"
		  Exception err as NilObjectException
		    Errors.Append "Tried to access a Nil object!"
		  Exception err as RuntimeException  // NOT RECOMMENDED
		    Errors.Append "Another exception"
		    
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Graphs(-1) As Class_Profile_One
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_Graphs As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Title As String
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
			Name="Num_Graphs"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
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
