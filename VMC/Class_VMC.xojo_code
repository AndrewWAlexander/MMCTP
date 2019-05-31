#tag Class
Protected Class Class_VMC
	#tag Method, Flags = &h0
		Sub AddBeam()
		  //---------------------------
		  // Adds one VMC beam to a DMX class
		  //
		  //---------------------------
		  BEAMS.Append new Class_VMC_Inputfile
		  Initialize_One_Beam(UBound(BEAMS))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Calculate_Complete()
		  Dim i,cc as Integer
		  Dim per as Single
		  
		  cc=0
		  for i=0 to UBound(BEAMS)
		    if BEAMS(i).progress=100 Then
		      cc=cc+1
		    end
		  next
		  
		  
		  per=cc/i*100
		  Complete=(per)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteBeam(num as integer)
		  Dim f,g as FolderItem
		  Dim temp,hh as String
		  //Remove and reorder progress array
		  
		  BEAMS.Remove num
		  
		  g=gRTOG.Plan(Plan_Index).Path
		  
		  
		  temp=MC_file_name+str(num+1)+"00_"+DMX.dmx_name+".hed"
		  hh=MC_file_name+str(num+1)+"00_"+DMX.dmx_name+".d3d"
		  f=g.Child(temp)
		  if f.Exists Then
		    f.Delete
		  end
		  f=g.Child(hh)
		  if f.Exists Then
		    f.Delete
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Initialize_Beams()
		  //-------------------------
		  // Initialize the VMC beams
		  //-------------------------
		  Dim i as Integer
		  Dim DMXc as Class_VMC_DMX_Contour
		  //-----------------------------------------
		  
		  
		  if Plan_Index>-1 Then
		    '===========VMC=============
		    redim BEAMS(UBound(gRTOG.Plan(Plan_Index).Beam))
		    for i =0 to UBound(gRTOG.Plan(Plan_Index).Beam)
		      Initialize_One_Beam(i)
		    next
		    Read_VMC_Settings
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Initialize_DMX()
		  //-------------------------
		  // Initialize the VMC beams
		  //-------------------------
		  Dim i as Integer
		  Dim DMXc as Class_VMC_DMX_Contour
		  //-----------------------------------------
		  
		  
		  
		  
		  DMX= new Class_VMC_DMX_Settings
		  ReDim DMX.Contours(-1)
		  for i=0 to UBound(grtog.Structures.Structures)
		    DMXc= new Class_VMC_DMX_Contour
		    DMXc.RTOG_Contour_Index=i
		    DMX.Contours.Append DMXc
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Initialize_One_Beam(i as Integer)
		  //-------------------------
		  // Initialize One VMC beams
		  //-------------------------
		  
		  
		  BEAMS(i)=new Class_VMC_Inputfile
		  Read_VMC_Inputfile(i)
		  BEAMS(i).dose=1
		  BEAMS(i).queue="medium"
		  BEAMS(i).Progress=0
		  BEAMS(i).dose_to_water=gVMC.vmc_dose_water
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_DMX_Setting(g as FolderItem)
		  //------------------------------------------
		  // Writefile and the MMCTP header file
		  //
		  //---------------------------------------
		  Dim f, headerfile as FolderItem
		  Dim ts as TextInputStream
		  Dim i ,k as Integer
		  Dim s,check,temp,shellstring as String
		  //------------------------------------------
		  
		  
		  if g.Exists Then
		    ts=g.OpenAsTextFile
		    if ts<> nil Then
		      temp=ts.ReadLine
		      shellstring=trim(NthField(Temp,":",2))
		      // Count the Shell Names
		      for k=1 to CountFields(shellstring,",")
		        DMX.Shell_Name.append NthField(shellstring,",",k)
		      next
		      
		      While ts.EOF=False
		        temp=ts.ReadLine
		        
		        if InStr(temp,"X-Max")>0 Then
		          DMX.X_Max=val(NthField(temp,"=",2))
		          
		        elseif InStr(temp,"X-Min")>0 Then
		          DMX.X_Min=val(NthField(temp,"=",2))
		          
		        elseif InStr(temp,"X-del")>0 Then
		          DMX.Del_X=val(NthField(temp,"=",2))
		          
		        elseif InStr(temp,"Y-Max")>0 Then
		          DMX.y_Max=val(NthField(temp,"=",2))
		          
		        elseif InStr(temp,"Y-Min")>0 Then
		          DMX.Y_min=val(NthField(temp,"=",2))
		          
		        elseif InStr(temp,"Y-del")>0 Then
		          DMX.Del_Y=val(NthField(temp,"=",2))
		          
		        elseif InStr(temp,"Z-Max")>0 Then
		          DMX.Z_max=val(NthField(temp,"=",2))
		          
		        elseif InStr(temp,"Z-Min")>0 Then
		          DMX.Z_min=val(NthField(temp,"=",2))
		          
		        elseif InStr(temp,"Z-del")>0 Then
		          DMX.Del_Z=val(NthField(temp,"=",2))
		          
		          
		        end
		      Wend
		      ts.Close
		    end
		  end
		  
		  
		  'Spaces(ts,"X-Max",20,Format(DMX.X_Max,"-#.###"))
		  'Spaces(ts,"X-Min",20,Format(DMX.X_min,"-#.###"))
		  'Spaces(ts,"X-del",20,Format(DMX.Del_X,"-#.###"))
		  'Spaces(ts,"Y-Max",20,Format(DMX.y_Max,"-#.###"))
		  'Spaces(ts,"Y-Min",20,Format(DMX.Y_min,"-#.###"))
		  'Spaces(ts,"Y-del",20,Format(DMX.Del_Y,"-#.###"))
		  'Spaces(ts,"Z-Max",20,Format(DMX.z_Max,"-#.###"))
		  'Spaces(ts,"Z-Min",20,Format(DMX.Z_min,"-#.###"))
		  'Spaces(ts,"Z-Del",20,Format(DMX.Del_Z,"-#.###"))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_VMC_Inputfile(beam as integer)
		  //-----------------------------------------
		  // Readin VMC input file
		  // 1st from plan folder
		  // 2nd from VMC folder
		  //-----------------------------------------
		  Dim i as integer
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  Dim line,label,value as String
		  Dim ss as Class_VMC_Inputfile
		  //-----------------------------------------
		  
		  
		  ss=beams(beam)
		  f=new FolderItem
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child(MC_file_name+str(beam+1)+".vmc")
		  
		  if f.Exists=False Then
		    f=gPref.VMC_fi
		    f=f.Child("vmc.inp")
		  end
		  
		  if f.Exists =False Then
		    Return
		  else
		    ts=f.OpenAsTextFile
		  end
		  
		  
		  ss.IRREGULAR_Num=0
		  ReDim ss.IRREGULAR_X(-1)
		  ReDim ss.IRREGULAR_y(-1)
		  ss.BremPhotons=False
		  
		  
		  While ts.EOF =False
		    line=ts.ReadLine
		    label=trim(NthField(line,"|",1))
		    value=Trim(NthField(line,"|",2))
		    if label="-WRITE-3D-DOSE" Then
		      ss.Write3dDose=val(value)
		      
		    elseif label="-NORM-TYPE" Then
		      ss.Normtype_1=val(NthField(value," ",1))
		      ss.Normtype_Value=val(NthField(value," ",2))
		      
		    elseif label="-REFERENCE-POINT" Then
		      ss.RefPointx=val(NthField(value," ",1))
		      ss.RefPointy=val(NthField(value," ",2))
		      ss.RefPointz=val(NthField(value," ",3))
		      
		    elseif label="-RANDOM-SET" Then
		      ss.rndseed1=val(NthField(value," ",1))
		      ss.rndseed2=val(NthField(value," ",2))
		      ss.rndseed3=val(NthField(value," ",3))
		      ss.rndseed4=val(NthField(value," ",4))
		      
		    elseif label="-BEAM-WEIGHT" Then
		      ss.BEAMWEIGHT=val(value)
		      
		    elseif label="-BREM-PHOTONS" Then
		      ss.BremPhotons=True
		      
		    elseif label="-DEVICE-TYPE" Then
		      ss.DEVICETYPE=val(value)
		      
		    elseif label="-BEAMnrc-INPUT" Then
		      ss.BEAMnrc_INPUT=Trim(value)
		      
		    elseif label="-BEAMnrc-PEGS" Then
		      ss.BEAMnrc_PEGS=Trim(value)
		      
		    elseif label="-DEVICE-KEY" Then
		      ss.DEVICEKEY=(value)
		      
		    elseif label="-EVENT-NUMBER" Then
		      ss.num_histories=val(NthField(value," ",1))
		      ss.num_hist_rep=val(NthField(value," ",2))
		      ss.num_further_rep=val(NthField(value," ",3))
		      ss.num_batches=val(NthField(value," ",4))
		      
		    elseif label="-ISOCENTER-DIST" Then
		      ss.ISOCENTERDIST=val(value)
		      
		    elseif label="-ISOCENTER" Then
		      ss.ISOCENTERx=val(NthField(value," ",1))
		      ss.ISOCENTERy=val(NthField(value," ",2))
		      ss.ISOCENTERz=val(NthField(value," ",3))
		      
		    elseif label="-CHANGE-SAD" Then
		      ss.CHANGESAD=val(value)
		      
		    elseif label="-PRIMARY-CHARGE" Then
		      ss.PriCharge=val(value)
		      
		    elseif label="-GANTRY-ANGLE" Then
		      ss.GANTRYANGLE_TF=(NthField(value," ",1))
		      ss.GANTRYANGLE_Value1=val(NthField(value," ",2))
		      ss.GANTRYANGLE_Value2=val(NthField(value," ",3))
		      
		    elseif label="-TABLE-ANGLE" Then
		      ss.TABLEANGLE=val(value)
		      
		    elseif label="-NOMINAL-ENERGY" Then
		      ss.NominalEnergy=val(value)
		      
		    elseif label="-COLL-ANGLE" Then
		      ss.COLLANGLE=val(value)
		      
		    elseif label="-COLL-WIDTH-X" Then
		      ss.Coll_Width_X=val(value)
		      
		    elseif label="-COLL-WIDTH-Y" Then
		      ss.Coll_Width_Y=val(value)
		      
		    elseif label="-COLL-ANGLE" Then
		      ss.COLLANGLE=val(value)
		      
		    elseif label="-COLL-ANGLE" Then
		      ss.COLLANGLE=val(value)
		      
		    elseif label="-IRREGULAR-FIELD" Then
		      ss.IRREGULAR_Num=val(value)
		      ReDim ss.IRREGULAR_X(ss.IRREGULAR_Num-1)
		      ReDim ss.IRREGULAR_y(ss.IRREGULAR_Num-1)
		      for i=0 to ss.IRREGULAR_Num-1
		        value=ts.ReadLine
		        ss.IRREGULAR_x(i)=val(NthField(value,"  ",2))
		        ss.IRREGULAR_y(i)=val(NthField(value,"  ",3))
		      next
		      
		    end
		  wend
		  ts.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_VMC_Settings()
		  //-----------------------------------------
		  //
		  //
		  //-----------------------------------------
		  Dim dmx_index,a as Integer
		  DIm temp as String
		  Dim ts as TextInputStream
		  Dim f as FolderItem
		  //-----------------------------------------
		  
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child("VMC_"+DMX.dmx_name+".txt")
		  redim BEAMS(UBound(gRTOG.Plan(Plan_Index).Beam))
		  
		  
		  if f.Exists then
		    ts=f.OpenAsTextFile
		    
		    While ts.EOF=False
		      
		      Temp=ts.ReadLine
		      a=Val(NthField(Temp," ",2))-1
		      
		      if a>=0 and a<=UBound(gRTOG.Plan(Plan_Index).Beam) Then
		        
		        if InStr(temp,"Dose")>0 Then
		          
		          BEAMS(a).dose=Val(NthField(Temp,"=",2))
		          
		        elseif InStr(temp,"DWater")>0 Then
		          BEAMS(a).dose_to_water=Val(NthField(Temp,"=",2))
		          
		          
		        elseif InStr(temp,"Progress")>0 Then
		          BEAMS(a).progress=Val(NthField(Temp,"=",2))
		          
		          
		        elseif InStr(temp,"Queue")>0 Then
		          
		          BEAMS(a).queue=Trim(NthField(Temp,"=",2))
		          
		          
		        elseif  InStr(temp,"VMC started")>0 Then
		          
		          temp=Trim(NthField(Temp,"=",2))
		          if InStr(temp,"True")>0 Then
		            BEAMS(a).vmc_started=True
		          else
		            BEAMS(a).vmc_started=False
		          end
		          
		        elseif   InStr(temp,"AutoFill")>0 Then
		          temp=Trim(NthField(Temp,"=",2))
		          if InStr(temp,"True")>0 Then
		            BEAMS(a).Auto_Determine=True
		          else
		            BEAMS(a).Auto_Determine=False
		          end
		          
		        elseif InStr(temp,"Calculate")>0 Then
		          temp=Trim(NthField(Temp,"=",2))
		          if InStr(temp,"True")>0 Then
		            BEAMS(a).Calculate=True
		          else
		            BEAMS(a).Calculate=False
		          end
		          
		          
		        elseif InStr(temp,"Shell index")>0 Then
		          
		          
		          BEAMS(a).Shell_Index=val(NthField(Temp,"=",2))
		          
		          
		        elseif  InStr(temp,"Start Date")>0 Then
		          BEAMS(a).Start_Time=trim(NthField(Temp,"=",2))
		          
		        elseif  InStr(temp,"Start Seconds")>0 Then
		          BEAMS(a).Start_Time_Seconds=val(NthField(Temp,"=",2))
		          
		          
		          
		        elseif  InStr(temp,"Uncertainty")>0 Then
		          BEAMS(a).uncertainty=val(NthField(Temp,"=",2))
		          
		          
		          
		        elseif  InStr(temp,"SimTime")>0 Then
		          BEAMS(a).SimTime=val(NthField(Temp,"=",2))
		          
		          
		          
		          
		        elseif InStr(temp,"Downloaded-d3d")>0 Then
		          temp=Trim(NthField(Temp,"=",2))
		          if InStr(temp,"True")>0 Then
		            BEAMS(a).downloaded_d3d=True
		          else
		            BEAMS(a).downloaded_d3d=False
		          end
		          
		          
		        elseif InStr(temp,"Downloaded-hed")>0 Then
		          temp=Trim(NthField(Temp,"=",2))
		          if InStr(temp,"True")>0 Then
		            BEAMS(a).downloaded_hed=True
		          else
		            BEAMS(a).downloaded_hed=False
		          end
		          
		          
		        end
		      end
		      
		    Wend
		    ts.Close
		    
		    
		  end
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_DMX_Settings()
		  //------------------------------------------
		  // Writefile and the MMCTP header file
		  //
		  //---------------------------------------
		  Dim f, headerfile as FolderItem
		  Dim ts as TextOutputStream
		  Dim i as Integer
		  Dim s,check,temp as String
		  //------------------------------------------
		  
		  // Now write MMCTP txt file
		  f=new FolderItem
		  f=gRTOG.Path.Child("McGill_RT")
		  headerfile=f.child(gRTOG.Patient_ID+gRTOG.StudyID+gRTOG.SeriesNumber+"_"+DMX.dmx_name+".txt")
		  
		  Check=""
		  for i=0 to UBound(DMX.Shell_Name)
		    Check=check+DMX.Shell_Name(i)+","
		  next
		  temp=temp+"Shell : "+check+local_endline
		  
		  
		  
		  for i=0 to UBound(DMX.Contours)
		    if DMX.Contours(i).Use_Density then
		      check="Yes"
		    else
		      Check="No"
		    end
		    temp=temp+"Structure # "+Str(i+1)+" : "+grtog.Structures.Structures(DMX.Contours(i).RTOG_Contour_Index).Structure_Name+" - "+str(DMX.Contours(i).Use_Density)+_
		    " ; "+"Use Density - "+check+" ; Order - "+str(i)+local_endline
		  next
		  
		  
		  if headerfile<>nil then
		    ts=headerfile.createTextFile
		    if ts<> nil Then
		      ts.Write temp
		      Spaces(ts,"X-Max",20,Format(DMX.X_Max,"-#.###"))
		      Spaces(ts,"X-Min",20,Format(DMX.X_min,"-#.###"))
		      Spaces(ts,"X-del",20,Format(DMX.Del_X,"-#.###"))
		      Spaces(ts,"Y-Max",20,Format(DMX.y_Max,"-#.###"))
		      Spaces(ts,"Y-Min",20,Format(DMX.Y_min,"-#.###"))
		      Spaces(ts,"Y-del",20,Format(DMX.Del_Y,"-#.###"))
		      Spaces(ts,"Z-Max",20,Format(DMX.z_Max,"-#.###"))
		      Spaces(ts,"Z-Min",20,Format(DMX.Z_min,"-#.###"))
		      Spaces(ts,"Z-Del",20,Format(DMX.Del_Z,"-#.###"))
		      ts.close
		    end
		  end
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Write_VMC_Inputfile(beam as integer) As boolean
		  //------------------------------------
		  // Method to create XVMC input file
		  // Reture ture if successful
		  //
		  //------------------------------------
		  Dim f,g as FolderItem
		  Dim ffile as String
		  Dim wts as TextOutputStream
		  Dim vmcinput as Class_VMC_Inputfile
		  Dim i as Integer
		  '===========================
		  
		  if beam>-1 and beam<=UBound(BEAMS) Then
		    vmcinput=BEAMS(beam)
		    
		    /// Write GLOBAL data
		    ffile=""
		    ffile=ffile+"*GLOBAL-DATA    | "+EndOfLine.UNIX
		    ffile=ffile+"-WRITE-3D-DOSE  | "+str(vmcinput.Write3dDose)+EndOfLine.UNIX
		    ffile=ffile+"-NORM-TYPE      | "+str(vmcinput.Normtype_1)+" "+str(vmcinput.Normtype_Value)+EndOfLine.UNIX
		    ffile=ffile+"-E-CUTOFF       | "+Format(vmcinput.Ecut,"#.###")+EndOfLine.UNIX
		    ffile=ffile+"-P-CUTOFF       | "+Format(vmcinput.pcut,"#.###")+EndOfLine.UNIX
		    ffile=ffile+"-REFERENCE-POINT| "+Format(vmcinput.RefPointx,"-#.###")+" "+Format(vmcinput.RefPointy,"-#.###")+" "+Format(vmcinput.RefPointz,"-#.###")+EndOfLine.UNIX
		    ffile=ffile+"-RANDOM-SET     | "+Format(vmcinput.rndseed1,"#")+" "+Format(vmcinput.rndseed2,"#")+" "+Format(vmcinput.rndseed3,"#")+" "+Format(vmcinput.rndseed4,"#")+EndOfLine.UNIX
		    ffile=ffile+"!"+EndOfLine.UNIX
		    
		    /// Write BEAM data
		    ffile=ffile+"*BEAM-PARAMETERS| "+EndOfLine.UNIX
		    ffile=ffile+"-BEAM-WEIGHT    | "+Format(vmcinput.BEAMWEIGHT,"#.####")+EndOfLine.UNIX
		    ffile=ffile+"-DEVICE-KEY     | "+vmcinput.DEVICEKEY+EndOfLine.UNIX
		    ffile=ffile+"-DEVICE-TYPE    | "+Format(vmcinput.DEVICETYPE,"-#")+EndOfLine.UNIX
		    ffile=ffile+"-EVENT-NUMBER   | "+Format(vmcinput.num_histories,"-#")+" "+Format(vmcinput.num_hist_rep,"-#")+" "_
		    +Format(vmcinput.num_further_rep ,"-#")+" "+Format(vmcinput.num_batches,"-#")+EndOfLine.UNIX
		    ffile=ffile+"-BEAMnrc-INPUT  | "+Trim(vmcinput.BEAMnrc_INPUT)+EndOfLine.UNIX
		    ffile=ffile+"-BEAMnrc-PEGS   | "+Trim(vmcinput.BEAMnrc_PEGS)+EndOfLine.UNIX
		    
		    
		    if vmcinput.DEVICETYPE=0 or  vmcinput.DEVICETYPE=100  or  vmcinput.DEVICETYPE=101  Then
		      ffile=ffile+"-NOMINAL-ENERGY | "+Format(vmcinput.NominalEnergy,"-#.###")+EndOfLine.UNIX
		    end
		    
		    if vmcinput.DEVICETYPE=0 or  vmcinput.DEVICETYPE=100  or  vmcinput.DEVICETYPE=101  or  vmcinput.DEVICETYPE=111 or  vmcinput.DEVICETYPE=11 Then
		      ffile=ffile+"-PRIMARY-CHARGE | "+Format(vmcinput.PriCharge,"-##")+EndOfLine.UNIX
		    end
		    
		    
		    
		    if vmcinput.BremPhotons Then
		      ffile=ffile+"-BREM-PHOTONS   | "+EndOfLine.UNIX
		    end
		    
		    ffile=ffile+"-ISOCENTER-DIST | "+Format(vmcinput.ISOCENTERDIST,"#.###")+EndOfLine.UNIX
		    ffile=ffile+"-ISOCENTER      | "+Format(vmcinput.ISOCENTERx,"-#.###")+" "+Format(vmcinput.ISOCENTERy,"-#.###")+" "_
		    +Format(vmcinput.ISOCENTERz,"-#.###")+EndOfLine.UNIX
		    ffile=ffile+"-GANTRY-ANGLE   | "+vmcinput.GANTRYANGLE_TF+" "+Format(vmcinput.GANTRYANGLE_Value1,"-#.###")+_
		    " "+Format(vmcinput.GANTRYANGLE_Value2,"-#.###")+EndOfLine.UNIX
		    ffile=ffile+"-TABLE-ANGLE    | "+Format(vmcinput.TABLEANGLE,"-#.###")+EndOfLine.UNIX
		    ffile=ffile+"-COLL-ANGLE     | "+Format(vmcinput.COLLANGLE,"-#.###")+EndOfLine.UNIX
		    ffile=ffile+"-CHANGE-SAD     | "+Format(vmcinput.CHANGESAD,"#.####")+EndOfLine.UNIX
		    
		    if vmcinput.DEVICETYPE=0 or  vmcinput.DEVICETYPE=100 or  vmcinput.DEVICETYPE=101 Then
		      ffile=ffile+"-COLL-WIDTH-X   | "+Format(vmcinput.Coll_Width_X,"-#.####")+EndOfLine.UNIX
		      ffile=ffile+"-COLL-WIDTH-Y   | "+Format(vmcinput.Coll_Width_Y,"-#.####")+EndOfLine.UNIX
		    end
		    
		    if vmcinput.IRREGULAR_Num>0 Then
		      ffile=ffile+"-IRREGULAR-FIELD| "+Format(vmcinput.IRREGULAR_Num,"#")+EndOfLine.UNIX
		      for i=0 to vmcinput.IRREGULAR_Num-1
		        ffile=ffile+"  "+Format(vmcinput.IRREGULAR_X(i),"-0.000")+"   "+Format(vmcinput.IRREGULAR_Y(i),"-0.000")+ EndOfLine.UNIX
		      next
		    end
		    
		    ffile=ffile+"!"+EndOfLine.UNIX+"*END-INPUT      |"+EndOfLine.UNIX
		    
		    '=====WRITE VMC file
		    f=gRTOG.Plan(Plan_Index).Path
		    f=f.Child(MC_file_name+str(beam+1)+".vmc")
		    wts=f.CreateTextFile
		    if wts<> Nil Then
		      wts.Write ffile
		      wts.Close
		      //Window_Treatment.StaticText_VMC_Status.Text=f.Name +" input file written" //Commented out by William Davis to avoid crash due to exception
		      Return True
		    else
		      Errors.append "Error ! "+f.Name +" input file NOT written" //Changed to "Errors.append" by William Davis to avoid crash due to exception
		      Return False
		    end
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_VMC_Settings()
		  Dim f as FolderItem
		  Dim temp as String
		  Dim k,i as Integer
		  Dim ts as TextOutputStream
		  
		  '==========Write VMC settings===========================================
		  if Plan_Index<0 Then
		    Return
		  end
		  
		  f=gRTOG.Plan(plan_index).Path
		  f=f.Child("VMC_"+DMX.dmx_name+".txt")
		  ts=f.CreateTextFile
		  
		  i=1
		  While ts=nil
		    i=i+1
		    ts=f.CreateTextFile
		    if i>20 Then
		      Return
		    end
		  wend
		  
		  
		  if ts<> nil Then
		    for i=0 to UBound(BEAMS)
		      Spaces(ts,"Beam "+Str(i+1)+" DWater",40,str(BEAMS(i).dose_to_water))
		      Spaces(ts,"Beam "+Str(i+1)+" Dose",40,str(BEAMS(i).dose))
		      Spaces(ts,"Beam "+Str(i+1)+" Progress",40,str(BEAMS(i).progress))
		      Spaces(ts,"Beam "+Str(i+1)+" Queue",40,BEAMS(i).queue)
		      
		      if BEAMS(i).vmc_started Then
		        temp="True"
		      else
		        temp="False"
		      end
		      Spaces(ts,"Beam "+Str(i+1)+" VMC started",40,temp)
		      
		      if BEAMS(i).Auto_Determine Then
		        temp="True"
		      else
		        temp="False"
		      end
		      Spaces(ts,"Beam "+Str(i+1)+" AutoFill",40,temp)
		      Spaces(ts,"Beam "+Str(i+1)+" Shell index",40,str(BEAMS(i).Shell_Index))
		      Spaces(ts,"Beam "+Str(i+1)+" Start Date",40,(BEAMS(i).Start_Time))
		      Spaces(ts,"Beam "+Str(i+1)+" Start Seconds",40,(Format(BEAMS(i).Start_Time_Seconds,"-#")))
		      
		      
		      if BEAMS(i).Calculate Then
		        temp="True"
		      else
		        temp="False"
		      end
		      Spaces(ts,"Beam "+Str(i+1)+" Calculate",40,temp)
		      
		      if BEAMS(i).downloaded_d3d Then
		        temp="True"
		      else
		        temp="False"
		      end
		      Spaces(ts,"Beam "+Str(i+1)+" Downloaded-d3d",40,temp)
		      
		      
		      if BEAMS(i).downloaded_hed Then
		        temp="True"
		      else
		        temp="False"
		      end
		      Spaces(ts,"Beam "+Str(i+1)+" Downloaded-hed",40,temp)
		      
		      Spaces(ts,"Beam "+Str(i+1)+" Uncertainty",40,str(BEAMS(i).uncertainty))
		      Spaces(ts,"Beam "+Str(i+1)+" SimTime",40,str(BEAMS(i).SimTime))
		      
		      
		    next
		    
		    ts.Close
		  end
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BEAMS(-1) As Class_VMC_Inputfile
	#tag EndProperty

	#tag Property, Flags = &h0
		Complete As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		DMX As Class_VMC_DMX_Settings
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Complete"
			Group="Behavior"
			InitialValue="0"
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
