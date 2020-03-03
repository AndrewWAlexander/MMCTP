#tag Class
Protected Class Class_Tomo_XML
	#tag Method, Flags = &h0
		Sub Open_XML(fi as FolderItem)
		  //-------------------------------
		  //
		  //
		  //-------------------------------
		  Dim xdoc as XmlDocument
		  Dim node,subnode,fullDiseaseDataArray,fullDiseaseDataArray2,fullPlanDataArray as XMLNode
		  Dim i, k,subcount,subsubcount, count as Integer
		  Dim out,ss as String
		  Dim ts as TextInputStream
		  Dim mm as XmlNodeList
		  Dim xmla as XmlAttribute
		  //-------------------------------
		  
		  if fi<>nil then //fi.Exists then
		    ts=TextInputStream.Open(fi)
		    out=ts.ReadAll
		  end if
		  
		  
		  xdoc = New XmlDocument
		  
		  
		  xdoc.PreserveWhitespace = False
		  // load and parse the xml in the TextArea, parse_InputText
		  
		  xdoc.LoadXml(out)
		  
		  count = xdoc.DocumentElement.childCount
		  
		  For i = 0 to count - 1
		    node = xdoc.DocumentElement.Child(i)
		    
		    if node.Name ="fullDiseaseDataArray" Then
		      
		      fullDiseaseDataArray=node.Child(i)
		      
		      ss="fullDiseaseDataArray"
		      fullDiseaseDataArray2 =fullDiseaseDataArray.Child(mm.Length)
		      fullDiseaseDataArray2 =fullDiseaseDataArray.Child(0)
		      
		      
		      ss="fullPlanDataArray"
		      fullPlanDataArray=fullDiseaseDataArray2.Child(mm.Length)
		      
		      
		      subcount=node.ChildCount
		      for k=0 to subcount-1
		        subnode=node.Child(k)
		        if subnode.LocalName="fullDiseaseDataArray" Then
		          subsubcount=subnode.ChildCount
		          
		          for k=0 to subcount-1
		            
		            
		            
		          Next
		          
		          
		        end
		      Next
		      
		      
		      
		      
		      
		      
		      
		    end
		    
		    
		    
		  next
		  //XmlReader.Parse(Out)
		End Sub
	#tag EndMethod


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
