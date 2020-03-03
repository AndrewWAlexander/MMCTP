#tag Class
Protected Class Class_CT
	#tag Method, Flags = &h0
		Sub Make_CTCalibration()
		  //---------------------------------------
		  // Make a default water HC ramp
		  //
		  //---------------------------------------
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  Dim temp as Class_CT2Density
		  Dim mat as Class_CT_Materials
		  //---------------------------------------
		  
		  
		  Temp = new Class_CT2Density
		  temp.Model_name="H2O-Ramp"
		  temp.Pegs_file="700icru"
		  
		  mat=new Class_CT_Materials
		  mat.HU_h=0
		  mat.HU_l=-1000
		  mat.M_name="H2O700ICRU"
		  mat.p_h=1
		  mat.p_l=0.001
		  temp.CalibrationM.Append mat
		  
		  
		  
		  mat=new Class_CT_Materials
		  mat.HU_h=6000
		  mat.HU_l=0
		  mat.M_name="H2O700ICRU"
		  mat.p_h=3.9
		  mat.p_l=1.
		  temp.CalibrationM.Append mat
		  
		  
		  mat=new Class_CT_Materials
		  mat.HU_h=10000
		  mat.HU_l=6000
		  mat.M_name="H2O700ICRU"
		  mat.p_h=3.9
		  mat.p_l=3.9
		  temp.CalibrationM.Append mat
		  
		  
		  All_CT.Append(temp)
		  
		  Write_CT_Calibration
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_CT_Calibration()
		  //---------------------------------------
		  //
		  //
		  //---------------------------------------
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  Dim file,hur,dr as String
		  Dim temp as Class_CT2Density
		  Dim mat as Class_CT_Materials
		  //---------------------------------------
		  
		  
		  f=gPref.Settings_fi.Child("CT_Calibration.txt")
		  
		  ReDim All_CT(-1)
		  
		  if f=nil then
		    Make_CTCalibration
		    Return
		  end
		  
		  
		  if f.Exists=False then
		    Make_CTCalibration
		    Return
		  end
		  
		  
		  // Readin CT file
		  ts=f.OpenAsTextFile
		  if ts<> nil Then
		    Do
		      file=trim(ts.ReadLine)
		      if InStr(file,"Model")>0 then
		        Temp = new Class_CT2Density
		        temp.Model_name=Trim(NthField(file,",",2))
		        temp.Pegs_file=Trim(NthField(file,",",3))
		        do
		          mat = new Class_CT_Materials
		          file=trim(ts.ReadLine)
		          if InStr(file,",")>=2 Then
		            mat.M_name=Trim(NthField(file,",",1))
		            dr=NthField(file,",",3)
		            hur=NthField(file,",",2)
		            mat.HU_h=val(NthField(hur,":",2))
		            mat.HU_l=val(NthField(hur,":",1))
		            mat.p_h=val(NthField(dr,":",2))
		            mat.p_l=val(NthField(dr,":",1))
		            temp.CalibrationM.Append mat
		          end
		        Loop Until ts.EOF or Len(trim(file))=0
		        
		        All_CT.Append temp
		      end
		      
		    Loop Until ts.EOF
		    ts.Close
		  end
		  
		  if UBound(All_CT)=-1 Then
		    Make_CTCalibration
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_CT_Calibration()
		  //---------------------------------------
		  //
		  //
		  //---------------------------------------
		  Dim f as FolderItem
		  Dim ts as TextOutputStream
		  Dim CT as Class_CT2Density
		  Dim mat as Class_CT_Materials
		  Dim k,i as Integer
		  //---------------------------------------
		  
		  
		  f=gPref.Settings_fi.Child("CT_Calibration.txt")
		  
		  if f.Exists then
		    f.Delete
		  end
		  
		  ts=f.CreateTextFile
		  if ts<> Nil Then
		    ts.WriteLine "Material,            HU Range,        Density"
		    ts.WriteLine
		    
		    
		    for i =0 to UBound(All_CT)
		      CT=All_CT(i)
		      ts.WriteLine "Model, "+ct.Model_name+", "+ct.Pegs_file
		      for k=0 to UBound(ct.CalibrationM)
		        mat=ct.CalibrationM(k)
		        ts.WriteLine mat.M_name+", "+Format(mat.HU_l,"-#.#")+":"+Format(mat.HU_h,"-#.#")+", "+Format(mat.p_l,"#.####")+":"+Format(mat.p_h,"#.####")
		      next
		      ts.WriteLine
		    next
		    ts.Close
		  end
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		All_CT(-1) As Class_CT2Density
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
