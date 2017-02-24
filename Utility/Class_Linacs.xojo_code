#tag Class
Protected Class Class_Linacs
	#tag Method, Flags = &h0
		Sub Initialize(num as Integer)
		  // Update for BEAMnrc phsp file source 2017
		  Dim i as Integer
		  
		  ReDim All_Linacs(num).MC_dosxyz_dose(UBound(gShells.Shells))
		  ReDim All_Linacs(num).MC_BEAMnrc_path(UBound(gShells.Shells))
		  ReDim All_Linacs(num).MC_VMC_dose(UBound(gShells.Shells))
		  ReDim All_Linacs(num).MC_BEAMnrc_phsp_file(UBound(gShells.Shells))
		  
		  
		  for i=0 to UBound(All_Linacs(num).MC_dosxyz_dose)
		    All_Linacs(num).MC_dosxyz_dose(i)=1
		    All_Linacs(num).MC_VMC_dose(i)=1
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_Linacs()
		  //---------------------------------
		  // Read the BEAM.pref configuation file
		  // Occurs once, when the program starts up
		  //  Update for BEAMnrc phsp file 2017
		  //---------------------------------
		  Dim ts as TextInputStream
		  Dim temp,rotations,angles,readline as string
		  Dim i,k,p as integer
		  Dim ff as Class_Linacs_One
		  Dim Wedge_Cl as Class_Linacs_Wedge
		  //=======================
		  
		  if gPref.Linacs_file.Exists = False  then
		    Return
		  end
		  
		  ts=gPref.Linacs_file.OpenAsTextFile
		  if ts=nil Then
		    Return
		  end
		  
		  While ts.EOF=False
		    readline =trim(ts.ReadLine)
		    if len(readline)> 5 Then
		      ff = new Class_Linacs_One
		      ff.MLC = new Class_Linacs_MLC
		      
		      ReDim ff.MC_dosxyz_dose(UBound(gShells.Shells))
		      ReDim ff.MC_BEAMnrc_path(UBound(gShells.Shells))
		      ReDim ff.MC_BEAMnrc_phsp_file(UBound(gShells.Shells))
		      ReDim ff.MC_VMC_dose(UBound(gShells.Shells))
		      
		      for i=0 to UBound(gShells.Shells)
		        ff.MC_dosxyz_dose(i)=1
		        ff.MC_VMC_dose(i)=1
		      next
		      
		      
		      
		      ff.Mode=trim(NthField(readline,",",1))
		      ff.RT_name=trim(NthField(readline,",",2))
		      ff.Energy=trim(NthField(readline,",",3))
		      
		      ff.MLC.MLC_Use=val((NthField(readline,",",4)))
		      
		      
		      temp=trim(NthField(readline,",",7))
		      for i=0 to UBound(gShells.Shells)
		        ff.MC_BEAMnrc_path(i)=Trim(NthField(temp,"&",i+1))
		      next
		      
		      
		      
		      
		      ff.MC_BEAMnrc_input_file=trim(NthField(readline,",",8))
		      
		      temp=trim(NthField(readline,",",9))
		      for i=0 to UBound(gShells.Shells)
		        ff.MC_BEAMnrc_phsp_file(i)=Trim(NthField(temp,"&",i+1))
		      next
		      
		      ff.MC_BEAMnrc_pegs4=trim(NthField(readline,",",10))
		      
		      
		      temp=trim(NthField(readline,",",11))
		      for i=0 to UBound(gShells.Shells)
		        ff.MC_dosxyz_dose(i)=val(NthField(temp,"&",i+1))
		        if ff.MC_dosxyz_dose(i)=0 Then 
		          ff.MC_dosxyz_dose(i)=1
		        end
		      next
		      
		      
		      
		      temp=trim(NthField(readline,",",12))
		      for i=0 to UBound(gShells.Shells)
		        ff.MC_VMC_dose(i)=val(NthField(temp,"&",i+1))
		        if ff.MC_VMC_dose(i)=0 Then
		          ff.MC_VMC_dose(i)=1
		        end
		      next
		      
		      ff.MC_BEAMnrc_part_density=val(NthField(readline,",",13))
		      ff.STT_Table=Trim(NthField(readline,",",15))
		      ff.Type=Val(NthField(readline,",",16))
		      
		      
		      // Deal with wedges
		      temp=trim(NthField(readline,",",5))
		      p=CountFields(Temp,"&")
		      if Len(temp)>2 Then
		        angles=temp
		        for k=1 to p
		          temp=trim(NthField(angles,"&",k))
		          Wedge_Cl=new Class_Linacs_Wedge
		          Wedge_Cl.Angle=Trim(NthField(Temp,"(",1))
		          rotations=Trim(NthField(Temp,"(",2))
		          rotations=Replace(rotations,")","")
		          for i=1 to CountFields(rotations,"-")
		            Wedge_Cl.Rotations.Append Trim(NthField(rotations,"-",i))
		          next
		          ff.Wedges.append Wedge_Cl
		        next
		      end
		      
		      // Applicator
		      temp=trim(NthField(readline,",",6))
		      p=CountFields(Temp,"&")
		      if Len(temp)>2 Then
		        angles=temp
		        for k=1 to p
		          temp=trim(NthField(angles,"&",k))
		          ff.Applicator.Append NthField(Temp,"-!-",1)
		          ff.BEAMnrcApplicatorCM.Append NthField(Temp,"-!-",2)
		          ff.BEAMnrcApplicatorLabel.Append NthField(Temp,"-!-",3)
		        next
		      end
		      
		      
		      
		      ff.MLC.MLC_Name=NthField(readline,",",14)
		      for i=0 to UBound(All_MLCs)
		        if ff.MLC.MLC_Name=All_MLCs(i).MLC_Name  Then
		          ff.MLC.Type=All_MLCs(i).Type
		          ff.MLC.NumberofLeafPairs=All_MLCs(i).NumberofLeafPairs
		        end
		      next
		      
		      All_Linacs.Append ff
		    end
		  Wend
		  ts.Close
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_MLCs()
		  //----------------------------------
		  // Readin the MMCTP MLC file
		  //
		  // File defines all MLCs
		  //----------------------------------
		  DIm f as FolderItem
		  Dim ts as TextInputStream
		  Dim temp as String
		  Dim mlc as Class_Linacs_MLC
		  Dim thick as Single
		  Dim i,k,j as Integer
		  //----------------------------------
		  
		  
		  
		  f=new FolderItem
		  f=gPref.Settings_fi
		  f=f.Child("MLC.txt")
		  
		  if f.Exists=False then
		    Return
		    MsgBox "Could not find file : "+f.Name
		  end
		  
		  
		  ts=f.OpenAsTextFile
		  While ts.EOF=False
		    temp=ts.ReadLine
		    if InStr(Temp,"*")>0 Then
		      mlc=new Class_Linacs_MLC
		      All_MLCs.Append mlc
		      mlc.NumberofLeafPairs=val(NthField(temp,"*",2))
		      mlc.MLC_Name=NthField(temp,"*",3)
		      mlc.Type=val(NthField(temp,"*",4))
		      mlc.AbuttingGap=val(NthField(temp,"*",5))
		      mlc.Parser=val(NthField(temp,"*",6))
		      mlc.LeafDirection=val(NthField(temp,"*",7))
		      
		      ReDim MLC.Boundaries(mlc.NumberofLeafPairs)
		      
		      for i=0 to mlc.NumberofLeafPairs
		        temp=ts.ReadLine
		        temp=NthField(temp,":",2)
		        mlc.Boundaries(i)=val(NthField(temp,",",1))
		      next
		      
		    end
		  Wend
		  
		  ts.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Shells_Add()
		  Dim k,i as Integer
		  
		  for i=0 to UBound(All_Linacs)
		    All_Linacs(i).MC_BEAMnrc_path.append ""
		    All_Linacs(i).MC_dosxyz_dose.append 1
		    All_Linacs(i).MC_VMC_dose.append 1
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Shells_Delete(num as Integer)
		  Dim k,i as Integer
		  
		  for i=0 to UBound(All_Linacs)
		    if UBound(All_Linacs(i).MC_BEAMnrc_path)>= num Then
		      
		      All_Linacs(i).MC_BEAMnrc_path.remove num
		      All_Linacs(i).MC_dosxyz_dose.remove num
		      All_Linacs(i).MC_VMC_dose.remove num
		    end
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_Linacs()
		  //--------------------------------
		  // Write the BEAM.pref configuation file
		  //
		  // updated for BEAMnrc phsp file 2017
		  //--------------------------------
		  Dim ts as TextOutputStream
		  Dim file,path,infile,name,subname as string
		  Dim i,k,j ,x as integer
		  Dim f as FolderItem
		  //=========================
		  
		  
		  file=""
		  for i=0 to UBound( gLinacs.All_Linacs)
		    file=file+gLinacs.All_Linacs(i).Mode+","
		    file=file+gLinacs.All_Linacs(i).RT_name+","
		    file=file+gLinacs.All_Linacs(i).Energy+","
		    file=file+str(gLinacs.All_Linacs(i).MLC.MLC_use)+","
		    
		    
		    // Fill Wedges
		    name=""
		    for x=0 to UBound(gLinacs.All_Linacs(i).Wedges)
		      subname=""
		      for k=0 to UBound(gLinacs.All_Linacs(i).Wedges(x).Rotations)
		        if k=UBound(gLinacs.All_Linacs(i).Wedges(x).Rotations) Then
		          subname=subname+gLinacs.All_Linacs(i).Wedges(x).Rotations(k)
		        else
		          subname=subname+gLinacs.All_Linacs(i).Wedges(x).Rotations(k)+"- "
		        end
		      next
		      if x=UBound( gLinacs.All_Linacs(i).Wedges) Then
		        name=name+gLinacs.All_Linacs(i).Wedges(x).angle+" ("+subname+") "
		      else
		        name=name+gLinacs.All_Linacs(i).Wedges(x).angle+" ("+subname+") "+"& "
		      end
		    next
		    file=file+name+","
		    
		    
		    '// Fill Applicators
		    name=""
		    for x=0 to UBound( gLinacs.All_Linacs(i).Applicator)
		      subname=gLinacs.All_Linacs(i).Applicator(x)+"-!-"+gLinacs.All_Linacs(i).BEAMnrcApplicatorCM(x)+"-!-"+gLinacs.All_Linacs(i).BEAMnrcApplicatorLabel(x)
		      if x=UBound(gLinacs.All_Linacs(i).Applicator) Then
		        name=name+subname
		      else
		        name=name+subname+"&"
		      end
		    next
		    file=file+name+","
		    
		    
		    '// Fill MC BEAMnrc path
		    name=""
		    for x=0 to UBound(gShells.Shells)
		      if x=  UBound(gShells.Shells) Then
		        name=name+gLinacs.All_Linacs(i).MC_BEAMnrc_path(x)
		      else
		        name=name+gLinacs.All_Linacs(i).MC_BEAMnrc_path(x)+"&"
		      end
		    next
		    file=file+name+","
		    
		    
		    file=file+gLinacs.All_Linacs(i).MC_BEAMnrc_input_file+","
		    
		    
		    '// Fill MC BEAMnrc phsp file path
		    name=""
		    for x=0 to UBound(gShells.Shells)
		      if x=  UBound(gShells.Shells) Then
		        name=name+gLinacs.All_Linacs(i).MC_BEAMnrc_phsp_file(x)
		      else
		        name=name+gLinacs.All_Linacs(i).MC_BEAMnrc_phsp_file(x)+"&"
		      end
		    next
		    file=file+name+","
		    
		    file=file+gLinacs.All_Linacs(i).MC_BEAMnrc_pegs4+","
		    
		    
		    '// Fill MC DOSxyznrc value
		    name=""
		    for x=0 to UBound(gShells.Shells)
		      if x=  UBound(gShells.Shells) Then
		        name=name+Format(gLinacs.All_Linacs(i).MC_dosxyz_dose(x),"#.#####e")
		      else
		        name=name+Format(gLinacs.All_Linacs(i).MC_dosxyz_dose(x),"#.#####e")+"&"
		      end
		    next
		    file=file+name+","
		    
		    '// Fill MC VMC value
		    name=""
		    for x=0 to UBound(gShells.Shells)
		      if x=  UBound(gShells.Shells) Then
		        name=name+Format(gLinacs.All_Linacs(i).MC_VMC_dose(x),"#.#####e")
		      else
		        name=name+Format(gLinacs.All_Linacs(i).MC_VMC_dose(x),"#.#####e")+"&"
		      end
		    next
		    file=file+name+","
		    
		    file=file+Format(gLinacs.All_Linacs(i).MC_BEAMnrc_part_density,"#")+","
		    
		    file=file+gLinacs.All_Linacs(i).MLC.MLC_Name+","
		    
		    // Update STT table
		    file=file+gLinacs.All_Linacs(i).STT_Table+","
		    
		    // Update Linac Type
		    file=file+Format(gLinacs.All_Linacs(i).Type,"#")+local_endline
		    
		  next
		  
		  // Remove old config file
		  f=gPref.Linacs_file
		  if f.Exists Then
		    f.Delete
		  end
		  
		  ts=f.CreateTextFile
		  if ts<> nil Then
		    ts.Write file
		    ts.Close
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_MLCs()
		  //----------------------------------
		  // Write the MMCTP MLC file
		  //
		  // File defines all MLCs
		  //----------------------------------
		  DIm f as FolderItem
		  Dim ts as TextOutputStream
		  Dim temp as String
		  Dim mlc as Class_Linacs_MLC
		  Dim thick as Single
		  Dim i,k,j as Integer
		  //----------------------------------
		  
		  
		  
		  f=new FolderItem
		  f=gPref.Settings_fi
		  f=f.Child("MLC.txt")
		  
		  if f.Exists then
		    f.Delete
		  end
		  
		  
		  ts=f.CreateTextFile
		  ts.WriteLine "//MLC LEAF THICKNESS (cm)"
		  
		  for i=0 to UBound(gLinacs.All_MLCs)
		    ts.WriteLine "*"+str(gLinacs.All_MLCs(i).NumberofLeafPairs)+"*"+gLinacs.All_MLCs(i).MLC_Name+"*"+Format(gLinacs.All_MLCs(i).Type,"#")+"*"+Format(gLinacs.All_MLCs(i).AbuttingGap,"-#.#######")+"*"+Format(gLinacs.All_MLCs(i).Parser,"#")+"*"+Format(gLinacs.All_MLCs(i).LeafDirection,"#")
		    for k=0 to UBound(gLinacs.All_MLCs(i).Boundaries)
		      ts.WriteLine str(k+1)+" : "+Format(gLinacs.All_MLCs(i).Boundaries(k),"-#.##")
		    next
		  next
		  ts.Close
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		All_Linacs(-1) As Class_Linacs_One
	#tag EndProperty

	#tag Property, Flags = &h0
		All_MLCs(-1) As Class_Linacs_MLC
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
