#tag Class
Protected Class Class_Dose_Stats
	#tag MenuHandler
		Function Untitled() As Boolean Handles Untitled.Action
			
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Function Export_Stat(DVH as Class_DVH_One) As string
		  //----------------------------
		  //
		  //
		  //----------------------------
		  Dim i as Integer
		  Dim re as String
		  Dim temp,v50,v10,v005,spp as Single
		  //----------------------------
		  
		  
		  
		  re=gRTOG.Patient_Name+","+gRTOG.Patient_Surname+","+gRTOG.Patient_ID+","+DVH.struc_names+","+DVH.Name+","
		  if MaxDose Then
		    re=re+Format(DVH.maxdose*DVH.Normalize,"-#.####e")+","
		  end
		  
		  if MinDose Then
		    re=re+Format(DVH.mindose*DVH.Normalize,"-#.####e")+","
		  end
		  
		  if Average_Dose Then
		    re=re+Format(DVH.avgdose*DVH.Normalize,"-#.####e")+","
		  end
		  
		  for i=0 to UBound(DoseVolume)
		    temp=DVH.Calculate_Dose_at_Volume_Percent(DoseVolume(i))
		    re=re+Format(temp,"-#.####e")+","
		  Next
		  
		  for i=0 to UBound(DoseatVolumeCC)
		    temp=DVH.Calculate_Dose_at_Volume_CC(DoseatVolumeCC(i))
		    re=re+Format(temp,"-#.####e")+","
		  Next
		  
		  for i=0 to UBound(VolumeDose)
		    temp=DVH.Calculate_Volume_at_Dose(VolumeDose(i))
		    re=re+Format(temp,"-#.####e")+","
		  Next
		  
		  if SPIN Then
		    v50=DVH.Calculate_Volume_at_Dose(SPIN_Dose*0.5)
		    v10=DVH.Calculate_Volume_at_Dose(SPIN_Dose*0.1)
		    v005=DVH.Calculate_Volume_at_Dose(SPIN_Dose*0.005)
		    spp=1-(v10-v50)/v005
		    re=re+Format(spp,"-#.####e")+","
		  end
		  
		  
		  
		  Return re
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Export_Stat_header() As string
		  //-----------------------
		  //
		  //
		  //-----------------------
		  Dim i as Integer
		  Dim re as String
		  //-----------------------
		  
		  
		  
		  re="Patient Name,Patient Surname,ID,Structure,Dose,"
		  if MaxDose Then
		    re=re+"MaxDose,"
		  end
		  
		  if MinDose Then
		    re=re+"MinDose,"
		  end
		  
		  if Average_Dose Then
		    re=re+"AverageDose,"
		  end
		  
		  for i=0 to UBound(DoseVolume)
		    re=re+"Dose at Volume "+Format(DoseVolume(i),"-#.###")+"%,"
		  Next
		  
		  for i=0 to UBound(DoseatVolumeCC)
		    re=re+"Dose at Volume "+Format(DoseatVolumeCC(i),"-#.###")+" CC,"
		  Next
		  
		  for i=0 to UBound(VolumeDose)
		    re=re+"Volume at Dose "+Format(VolumeDose(i),"-#.###")+" Gy,"
		  Next
		  
		  if SPIN Then
		    re=re+"SPIN at "+Format(SPIN_Dose,"-#.###e")+","
		  end
		  
		  
		  Return re
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read()
		  //----------------------------
		  //
		  //
		  //----------------------------
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  Dim type,line,value as String
		  Dim i,k as Integer
		  //----------------------------
		  
		  f=gPref.Settings_fi
		  f=f.Child("Dose-Stats.txt")
		  if f.Exists Then
		    ts=TextInputStream.Open(f)
		    While ts.EOF=False
		      line=ts.ReadLine
		      
		      type=Trim(NthField(line,":",1))
		      value=Trim(NthField(line,":",2))
		      
		      if InStr(line,"MaxDose")>0 Then
		        if InStr(value,"Yes")>0 Then
		          MaxDose=True
		        else
		          MaxDose=False
		        end
		        
		      elseif InStr(line,"MinDose")>0 Then
		        if InStr(value,"Yes")>0 Then
		          MinDose=True
		        else
		          MinDose=False
		        end
		        
		        
		        
		      elseif InStr(line,"SPIN")>0 Then
		        if InStr(value,"Yes")>0 Then
		          SPIN=True
		        else
		          SPIN=False
		        end
		        
		        SPIN_Dose=val(NthField(line,"=",2))
		        
		        
		        
		      elseif InStr(line,"AvgDose")>0 Then
		        if InStr(value,"Yes")>0 Then
		          Average_Dose=True
		        else
		          Average_Dose=False
		        end
		        
		        
		      elseif type="DoseatVolume" Then
		        k=CountFields(value,",")-2
		        
		        if k>-1 Then
		          ReDim DoseVolume(k)
		          for i=0 to UBound(DoseVolume)
		            DoseVolume(i)=val(NthField(value,",",i+1))
		          Next
		        else
		          ReDim VolumeDose(-1)
		        end
		        
		      elseif type="DoseatVolumeCC" Then
		        k=CountFields(value,",")-2
		        
		        if k>-1 Then
		          ReDim DoseatVolumeCC(k)
		          for i=0 to UBound(DoseatVolumeCC)
		            DoseatVolumeCC(i)=val(NthField(value,",",i+1))
		          Next
		        else
		          ReDim VolumeDose(-1)
		        end
		        
		      elseif type="VolumeatDose" Then
		        k=CountFields(value,",")-2
		        
		        if k>-1 Then
		          ReDim VolumeDose(k)
		          for i=0 to UBound(VolumeDose)
		            VolumeDose(i)=val(NthField(value,",",i+1))
		          Next
		        else
		          ReDim VolumeDose(-1)
		        end
		        
		        
		      end
		    Wend
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write()
		  //----------------------------
		  //
		  //
		  //----------------------------
		  Dim f as FolderItem
		  Dim ts as TextOutputStream
		  Dim temp as String
		  Dim i as Integer
		  //----------------------------
		  
		  f=gPref.Settings_fi
		  f=f.Child("Dose-Stats.txt")
		  
		  if f.Exists Then
		    f.Delete
		  end
		  ts=TextOutputStream.Create(f)
		  
		  if MaxDose Then
		    temp="Yes"
		  else
		    temp="No"
		  end
		  ts.WriteLine "MaxDose : "+temp
		  
		  if MinDose Then
		    temp="Yes"
		  else
		    temp="No"
		  end
		  ts.WriteLine "MinDose : "+temp
		  
		  if Average_Dose Then
		    temp="Yes"
		  else
		    temp="No"
		  end
		  ts.WriteLine "AvgDose : "+temp
		  
		  temp=""
		  for i=0 to UBound(DoseVolume)
		    temp=temp+Format(DoseVolume(i),"-#.###")+","
		  next
		  ts.WriteLine "DoseatVolume : "+temp
		  
		  temp=""
		  for i=0 to UBound(DoseatVolumeCC)
		    temp=temp+Format(DoseatVolumeCC(i),"-#.###")+","
		  next
		  ts.WriteLine "DoseatVolumeCC : "+temp
		  
		  temp=""
		  for i=0 to UBound(VolumeDose)
		    temp=temp+Format(VolumeDose(i),"-#.###")+","
		  next
		  ts.WriteLine "VolumeatDose : "+temp
		  
		  if SPIN Then
		    temp="Yes="+Format(SPIN_Dose,"-#.###e")
		  else
		    temp="No="+Format(SPIN_Dose,"-#.###e")
		  end
		  ts.WriteLine "SPIN : "+temp
		  
		  ts.Close
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Average_Dose As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		DoseatVolumeCC(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		DoseVolume(-1) As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		MaxDose As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		MinDose As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		SPIN As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		SPIN_Dose As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		VolumeDose(-1) As Single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Average_Dose"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
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
			Name="MaxDose"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinDose"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
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
			Name="SPIN"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SPIN_Dose"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Single"
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
