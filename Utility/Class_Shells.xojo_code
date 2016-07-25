#tag Class
Protected Class Class_Shells
	#tag Method, Flags = &h0
		Sub Read_login()
		  //-----------------------------------------
		  //
		  //
		  //
		  //-----------------------------------------
		  Dim ts as TextInputStream
		  Dim file,temp,queue,temp2 as string
		  Dim i,k,j ,x,num,queue_num as integer
		  Dim log as FolderItem
		  //-----------------------------------------
		  
		  
		  
		  //--------Open Login Text-------------------
		  log=gPref.Settings_fi.Child("login.txt")
		  
		  if Log=nil then
		    Return
		  end
		  
		  if log.Exists =False Then
		    Return
		  end
		  
		  
		  ts=log.OpenAsTextFile
		  temp=ts.ReadLine
		  
		  num=Val(NthField(temp,",",1))
		  
		  
		  ReDim Shells(num-1)
		  for i=1 to num
		    Shells(i-1) = new Class_Shell_One
		  Next
		  
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    Shells(i-1).title=NthField(temp,",",i)
		  Next
		  
		  
		  
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    Shells(i-1).login=NthField(temp,",",i)
		  Next
		  
		  
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    Shells(i-1).password=NthField(temp,",",i)
		  Next
		  
		  
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    Shells(i-1).machine=NthField(temp,",",i)
		  Next
		  
		  
		  
		  
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    Shells(i-1).linefeed=NthField(temp,",",i)
		  Next
		  
		  
		  
		  
		  
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    Shells(i-1).egsnrc_folder_path=NthField(temp,",",i)
		  Next
		  
		  
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    Shells(i-1).listfiles=NthField(temp,",",i)
		  Next
		  
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    Shells(i-1).listfiles_column_num=val(NthField(temp,",",i))
		  Next
		  
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    Shells(i-1).listfiles_name=val(NthField(temp,",",i))
		  Next
		  
		  
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    Shells(i-1).ftplinefeed=NthField(temp,",",i)
		  Next
		  
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    Shells(i-1).batch=NthField(temp,",",i)
		  Next
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    Shells(i-1).bash=NthField(temp,",",i)
		  Next
		  
		  
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    Shells(i-1).vmc_folder=NthField(temp,",",i)
		  Next
		  
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    Shells(i-1).vmc_path=NthField(temp,",",i)
		  Next
		  
		  
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    Shells(i-1).listfiles_dateA=val(NthField(temp,",",i))
		  Next
		  
		  
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    Shells(i-1).listfiles_time=val(NthField(temp,",",i))
		  Next
		  
		  
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    Shells(i-1).tail_c=(NthField(temp,",",i))
		  Next
		  
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    Shells(i-1).tail_after=(NthField(temp,",",i))
		  Next
		  
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    Shells(i-1).MaxJobs=val((NthField(temp,",",i)))
		  Next
		  
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    Shells(i-1).OS=val((NthField(temp,",",i)))
		  Next
		  
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    Shells(i-1).File_Transfer_Index=val((NthField(temp,",",i)))
		  Next
		  
		  
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    queue=NthField(temp,",",i)
		    queue_num=CountFields(queue,"/")-2
		    if queue_num>-1 Then
		      ReDim Shells(i-1).Queue(queue_num)
		      ReDim Shells(i-1).QueueTime(queue_num)
		      
		      for k=0 to queue_num
		        temp2=NthField(queue,"/",k+1)
		        Shells(i-1).Queue(k)=NthField(temp2,"~",1)
		        Shells(i-1).QueueTime(k)=val(NthField(temp2,"~",2))
		        
		      Next
		    end
		  next
		  
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    Shells(i-1).listfiles_dateB=val((NthField(temp,",",i)))
		  Next
		  
		  
		  temp=ts.ReadLine
		  temp=NthField(temp,":=",2)
		  for i=1 to num
		    Shells(i-1).Beamnrc_v=Trim((NthField(temp,",",i)))
		  Next
		  
		  
		  
		  
		  temp=ts.ReadLine
		  plink=NthField(temp,":=",2)
		  
		  
		  
		  temp=ts.ReadLine
		  pscp=NthField(temp,":=",2)
		  
		  
		  
		  ts.Close
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_login()
		  // -----------Write Login Text---------
		  //
		  //-----------------------------------
		  Dim log as FolderItem
		  Dim ts as TextOutputStream
		  Dim temp,qq as String
		  Dim i,k as Integer
		  //-----------------------------------
		  
		  
		  log=gPref.Settings_fi.Child("login.txt")
		  
		  ts=log.CreateTextFile
		  if ts<>nil Then
		    ts.WriteLine str(UBound(gShells.shells)+1)
		    Temp =""
		    for i=0 to UBound(gShells.shells)
		      temp=temp+gShells.shells(i).title+","
		    next
		    ts.WriteLine "Title :="+  temp
		    Temp=""
		    for i=0 to UBound(gShells.shells)
		      temp=temp+gShells.shells(i).login+","
		    next
		    ts.WriteLine "Login Name :="+  temp
		    Temp=""
		    for i=0 to UBound(gShells.shells)
		      temp=temp+gShells.shells(i).password+","
		    next
		    ts.WriteLine "Login Password :="+  temp
		    Temp=""
		    
		    for i=0 to UBound(gShells.shells)
		      temp=temp+gShells.shells(i).machine+","
		    next
		    ts.WriteLine "Login IP :="+  temp
		    
		    
		    Temp=""
		    for i=0 to UBound(gShells.shells)
		      temp=temp+gShells.shells(i).linefeed+","
		    next
		    ts.WriteLine "Line Feed :="+temp
		    
		    
		    
		    Temp=""
		    for i=0 to UBound(gShells.shells)
		      temp=temp+gShells.shells(i).egsnrc_folder_path+","
		    next
		    ts.WriteLine "EGSnrc Area :=" +temp
		    
		    Temp=""
		    for i=0 to UBound(gShells.shells)
		      temp=temp+gShells.shells(i).listfiles+","
		    next
		    ts.WriteLine "List Files :=" +temp
		    
		    Temp=""
		    for i=0 to UBound(gShells.shells)
		      temp=temp+str(gShells.shells(i).listfiles_column_num)+","
		    next
		    ts.WriteLine "List Files Size Column Num:=" +temp
		    
		    
		    Temp=""
		    for i=0 to UBound(gShells.shells)
		      temp=temp+str(gShells.shells(i).listfiles_name)+","
		    next
		    ts.WriteLine "List Files Name Column Num:=" +temp
		    
		    Temp=""
		    for i=0 to UBound(gShells.shells)
		      temp=temp+gShells.shells(i).ftplinefeed+","
		    next
		    ts.WriteLine "FTP Line Feed :=" +temp
		    
		    Temp=""
		    for i=0 to UBound(gShells.shells)
		      temp=temp+gShells.shells(i).batch+","
		    next
		    ts.WriteLine "Batch :=" +temp
		    
		    Temp=""
		    for i=0 to UBound(gShells.shells)
		      temp=temp+gShells.shells(i).bash+","
		    next
		    ts.WriteLine "Bash :=" +temp
		    
		    
		    Temp=""
		    for i=0 to UBound(gShells.shells)
		      temp=temp+gShells.shells(i).vmc_folder+","
		    next
		    ts.WriteLine "VMC folder :=" +temp
		    
		    
		    Temp=""
		    for i=0 to UBound(gShells.shells)
		      temp=temp+gShells.shells(i).vmc_path+","
		    next
		    ts.WriteLine "VMC exe :=" +temp
		    
		    
		    Temp=""
		    for i=0 to UBound(gShells.shells)
		      temp=temp+str(gShells.shells(i).listfiles_dateA)+","
		    next
		    ts.WriteLine "Listfiles dateA  :=" +temp
		    
		    
		    
		    Temp=""
		    for i=0 to UBound(gShells.shells)
		      temp=temp+str(gShells.shells(i).listfiles_time)+","
		    next
		    ts.WriteLine "Listfiles time  :=" +temp
		    
		    Temp=""
		    for i=0 to UBound(gShells.shells)
		      temp=temp+str(gShells.shells(i).tail_c)+","
		    next
		    ts.WriteLine "Tail Command  :=" +temp
		    
		    
		    Temp=""
		    for i=0 to UBound(gShells.shells)
		      temp=temp+str(gShells.shells(i).tail_after)+","
		    next
		    ts.WriteLine "Tail After Command  :=" +temp
		    
		    Temp=""
		    for i=0 to UBound(gShells.shells)
		      temp=temp+str(gShells.shells(i).MaxJobs)+","
		    next
		    ts.WriteLine "Max number of jobs  :=" +temp
		    
		    Temp=""
		    for i=0 to UBound(gShells.shells)
		      temp=temp+str(gShells.shells(i).OS)+","
		    next
		    ts.WriteLine "Shell OS :=" +temp
		    
		    Temp=""
		    for i=0 to UBound(gShells.shells)
		      temp=temp+str(gShells.shells(i).File_Transfer_Index)+","
		    next
		    ts.WriteLine "File Transfer Index :=" +temp
		    
		    Temp=""
		    for i=0 to UBound(gShells.shells)
		      qq=""
		      for k=0 to UBound(gShells.shells(i).Queue)
		        qq=qq+gShells.shells(i).Queue(k)+"~"+CStr(gShells.shells(i).QueueTime(k))+"/"
		      next
		      temp=temp+qq+","
		    next
		    ts.WriteLine "Queues :=" +temp
		    
		    Temp=""
		    for i=0 to UBound(gShells.shells)
		      temp=temp+str(gShells.shells(i).listfiles_dateB)+","
		    next
		    ts.WriteLine "Listfiles dateB  :=" +temp
		    
		    
		    Temp=""
		    for i=0 to UBound(gShells.shells)
		      temp=temp+Trim(gShells.shells(i).Beamnrc_v)+","
		    next
		    ts.WriteLine "BEAMnrcV :=" +temp
		    
		    
		    temp=plink
		    ts.WriteLine "Plink :=" +temp
		    
		    temp=pscp
		    ts.WriteLine "pscp :=" +temp
		    
		    
		    ts.Close
		  end
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		plink As String = "C:\"
	#tag EndProperty

	#tag Property, Flags = &h0
		pscp As String = "C:\"
	#tag EndProperty

	#tag Property, Flags = &h0
		Shells(-1) As class_Shell_One
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
			Name="plink"
			Group="Behavior"
			InitialValue="C:\\"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pscp"
			Group="Behavior"
			InitialValue="C:\\"
			Type="String"
			EditorType="MultiLineEditor"
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
