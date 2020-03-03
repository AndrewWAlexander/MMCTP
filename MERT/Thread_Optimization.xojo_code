#tag Class
Protected Class Thread_Optimization
Inherits Thread
	#tag Method, Flags = &h0
		Function FLEC_Field_Order(all() as String, englist as String) As String()
		  //--------------------------
		  // Order the fields in some logic
		  //
		  // Also filter by energy
		  //----------------------------
		  Dim final(-1) as String
		  Dim e_for_o,one_e,eval,outline as String
		  Dim i,x,k as Integer
		  Dim hh as Boolean
		  
		  for i =0 to UBound(all)
		    e_for_o=NthField(all(i),"- ",2)
		    outline=NthField(all(i),"- ",1)+" - "
		    hh=False
		    
		    for k=1 to CountFields(e_for_o,",")
		      one_e=Trim(NthField(e_for_o,",",k))
		      eval=Trim(NthField(one_e," ",1))
		      
		      for x=1 to CountFields(englist,",")
		        
		        if eval=Trim(NthField(englist,",",x)) Then
		          
		          if InStr(outline,"(")>0 Then
		            outline=outline+", "+one_e
		          else
		            outline=outline+one_e
		          end
		          
		          hh=True
		        end
		      Next
		    Next
		    
		    if hh Then
		      
		      
		      
		      final.Append outline
		      
		    end
		    
		    
		  Next
		  
		  
		  
		  
		  
		  
		  
		  
		  Return final
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Open()
		  //-------------------------------------
		  // Open for the database of results
		  //
		  //-------------------------------------
		  Dim i,q,egsphant_index,dmx_index,beam_val,k as Integer
		  dim f as FolderItem
		  dim temp as String
		  Dim onefield as Class_Optimization_FIELD
		  //-------------------------------------
		  
		  
		  
		  if sa=nil Then
		    SA = new Class_MERT_SADVH
		  end
		  if jaw=Nil Then
		    jaw=new Class_MERT_JAWSA
		  end
		  if Grad=nil then
		    Grad=new Class_MERT_GradDVH
		  end
		  if NLO=nil then
		    NLO=new Class_MERT_NLODVH
		  end
		  
		  Read_Resuts_DB
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Open_Inverse_Planning()
		  //-------------------------------------------------
		  // Method to open MMCTP inverse TPS
		  //
		  // Update 2013
		  // T Connell, update to the index value used in determining normalization factor for each dose file
		  //-------------------------------------------------
		  Dim i,egsphant_index,dmx_index,beam_val,k as Integer
		  dim f as FolderItem
		  dim temp,fullname as String
		  Dim onefield as Class_Optimization_FIELD
		  //-------------------------------------------------
		  
		  path=SpecialFolder.UserHome.ShellPath
		  PIndex=Plan_Index
		  
		  Plan=gRTOG.Plan(PIndex)
		  
		  ReDim IPbeams(-1)
		  
		  for i=0 to UBound(grtog.Structures.Structures)
		    gRTOG.Plan(PIndex).Structure_Dose(i).Organ_Name=grtog.Structures.Structures(i).Structure_Name
		    gRTOG.Plan(PIndex).Structure_Dose(i).DVH = new Class_DVH_One
		    gRTOG.Plan(PIndex).Structure_Dose(i).DVH.stru_color=grtog.Structures.Structures(i).scolor
		    gRTOG.Plan(PIndex).Structure_Dose(i).DVH.struc_names=grtog.Structures.Structures(i).Structure_Name
		    gRTOG.Plan(PIndex).Structure_Dose(i).DVH.dvh_bins=100
		    gRTOG.Plan(PIndex).Structure_Dose(i).Voxel_REs=128
		    redim gRTOG.Plan(PIndex).Structure_Dose(i).DVH.dVH(100)
		  next
		  
		  
		  
		  //Look for all dose files (.dose, .d3d, .3ddose) files
		  f=gRTOG.Plan(PIndex).Path
		  
		  for i=1 to f.Count
		    if f.Item(i)<>nil Then
		      if (InStr(f.Item(i).Name,".dose")>0 or InStr(f.Item(i).Name,".d3d")>0 or InStr(f.Item(i).Name,".3ddose")>0) and InStr(f.Item(i).Name,".pnts")=0  and InStr(f.Item(i).Name,"Sa-Recal-")=0  Then
		        onefield=new Class_Optimization_FIELD
		        onefield.FIdID_Name=f.Item(i).Name
		        onefield.NumofRay=1
		        ReDim onefield.VolumeStats(UBound(gRTOG.Plan(PIndex).Structure_Dose))
		        for k=0 to UBound(gRTOG.Plan(PIndex).Structure_Dose)
		          onefield.VolumeStats(k)=new Class_Optimization_FIELD_Stat
		        Next
		        
		        temp=NthField(f.Item(i).Name,gRTOG.Patient_ID+"_"+gRTOG.StudyID+gRTOG.SeriesNumber,2)
		        temp=NthField(Temp,"_",2)
		        beam_val=val(NthField(Temp,"b",2))
		        onefield.RTOG_Plan=val(NthField(Temp,"p",2))-1
		        onefield.RTOG_Beam=beam_val-1
		        
		        // If VMC file
		        if InStr(f.Item(i).Name,".d3d")>0 Then
		          onefield.RTOG_Beam=(beam_val)/100-1
		          onefield.FldID=2
		          temp=NthField(temp,"b",2)
		          temp=NthField(f.Item(i).Name,gRTOG.Patient_ID+"_"+gRTOG.StudyID+gRTOG.SeriesNumber,2)
		          temp=NthField(Temp,"_",3)
		          temp=NthField(temp,".",1)
		          dmx_index=-1
		          for k=0 to UBound(gVMC.VMC)
		            if gVMC.VMC(k).DMX.dmx_name=temp Then
		              dmx_index=k
		              onefield.dmx_index=dmx_index
		            end
		          next
		          
		          if UBound(gVMC.VMC)>=dmx_index and dmx_index>-1 Then
		            // Set X,Y,Z offsets
		            onefield.d3d_x_off=gVMC.VMC(dmx_index).DMX.x_min
		            onefield.d3d_y_off=gVMC.VMC(dmx_index).DMX.y_min
		            onefield.d3d_z_off=gVMC.VMC(dmx_index).DMX.z_min
		          end
		          
		          if UBound(gRTOG.Plan(PIndex).Beam)>=onefield.RTOG_Beam and UBound(gVMC.VMC)>=dmx_index and onefield.RTOG_Beam>-1 and dmx_index>-1 Then
		            onefield.Norm_Value=1/gvmc.VMC(dmx_index).BEAMS(onefield.RTOG_Beam).dose
		          else
		            onefield.Norm_Value=1
		          end
		          
		          // If DOSxyznrc file
		        elseif  InStr(f.Item(i).Name,".3ddose")>0 Then
		          onefield.FldID=3
		          fullname=f.Item(i).Name
		          if onefield.RTOG_Beam=-1 and onefield.RTOG_Plan=-1 Then
		            Temp=onefield.FIdID_Name
		            beam_val=val(NthField(Temp,"b",2))
		            onefield.RTOG_Plan=val(NthField(Temp,"p",2))-1
		            onefield.RTOG_Beam=beam_val-1
		          end
		          temp=NthField(f.Item(i).Name,"_",4)
		          temp=NthField(temp,".3ddose",1)
		          egsphant_index=-1
		          
		          for k=0 to UBound(gDOSXYZ.DOSXYZ)
		            if gDOSXYZ.DOSXYZ(k).egsphantsettings.name=temp Then
		              egsphant_index=k
		              onefield.egsphant_index=k
		            end
		          next
		          
		          
		          if UBound(gRTOG.Plan(PIndex).Beam)>=onefield.RTOG_Beam and UBound(gDOSXYZ.DOSXYZ)>=egsphant_index and onefield.RTOG_Beam>-1 and egsphant_index>-1 Then
		            // 2013 Update
		            onefield.Norm_Value=1/gDOSXYZ.DOSXYZ(egsphant_index).DOSXYZ_Input(onefield.RTOG_Beam).dos_dose
		            if InStr(str(onefield.Norm_Value),"NAN")>0 Then
		              onefield.Norm_Value=1
		            end
		          else
		            onefield.Norm_Value=1
		          end
		          
		        else // If *.Dose file
		          onefield.FldID=1
		          // Try and find Beam index
		          temp=onefield.FIdID_Name
		          beam_val=val(NthField(Temp,"b",2))
		          if InStr(temp,"b")>0 Then
		            // Unknown BEAM
		            if beam_val>-1 and beam_val<=UBound(gRTOG.Plan(PIndex).Beam) Then
		              onefield.RTOG_Beam=beam_val
		            else
		              onefield.RTOG_Beam=-1
		            end
		          else
		            onefield.RTOG_Beam=-1
		          end
		          onefield.Norm_Value=1
		        end
		        
		        // Update opening of each dose distribution
		        if onefield.RTOG_Plan>-1 and onefield.RTOG_Plan<= UBound(gRTOG.Plan) Then
		          if onefield.RTOG_Beam>-1 and onefield.RTOG_Beam<= UBound(gRTOG.Plan(onefield.RTOG_Plan).Beam) Then
		            onefield.MUs_Grad=gRTOG.Plan(onefield.RTOG_Plan).Beam(onefield.RTOG_Beam).mu
		            onefield.MUs_SA=gRTOG.Plan(onefield.RTOG_Plan).Beam(onefield.RTOG_Beam).mu
		            onefield.Beam_Description=gRTOG.Plan(onefield.RTOG_Plan).Beam(onefield.RTOG_Beam).Beam_Description
		            onefield.Iso_X=gRTOG.Plan(onefield.RTOG_Plan).Beam(onefield.RTOG_Beam).Collimator.fields(0).isocenter.X
		            onefield.Iso_Y=gRTOG.Plan(onefield.RTOG_Plan).Beam(onefield.RTOG_Beam).Collimator.fields(0).isocenter.Y
		            onefield.Iso_Z=gRTOG.Plan(onefield.RTOG_Plan).Beam(onefield.RTOG_Beam).Collimator.fields(0).isocenter.Z
		            onefield.Gantry_Angle=gRTOG.Plan(onefield.RTOG_Plan).Beam(onefield.RTOG_Beam).Collimator.fields(0).Gantry_Angle
		            onefield.Mode=gRTOG.Plan(onefield.RTOG_Plan).Beam(onefield.RTOG_Beam).beam_mode
		            // Flec JAws
		            if gRTOG.Plan(onefield.RTOG_Plan).Beam(onefield.RTOG_Beam).beam_mode="FLEC" Then
		              onefield.X1=gRTOG.Plan(onefield.RTOG_Plan).Beam(onefield.RTOG_Beam).FLEC.x1
		              onefield.X2=gRTOG.Plan(onefield.RTOG_Plan).Beam(onefield.RTOG_Beam).FLEC.x2
		              onefield.Y1=gRTOG.Plan(onefield.RTOG_Plan).Beam(onefield.RTOG_Beam).FLEC.y1
		              onefield.Y2=gRTOG.Plan(onefield.RTOG_Plan).Beam(onefield.RTOG_Beam).FLEC.y2
		            else // Photon Jaws
		              onefield.X1=gRTOG.Plan(onefield.RTOG_Plan).Beam(onefield.RTOG_Beam).Collimator.fields(0).X1
		              onefield.X2=gRTOG.Plan(onefield.RTOG_Plan).Beam(onefield.RTOG_Beam).Collimator.fields(0).X2
		              onefield.Y1=gRTOG.Plan(onefield.RTOG_Plan).Beam(onefield.RTOG_Beam).Collimator.fields(0).Y1
		              onefield.Y2=gRTOG.Plan(onefield.RTOG_Plan).Beam(onefield.RTOG_Beam).Collimator.fields(0).Y2
		            end
		            // Energy
		            onefield.Energy=gRTOG.Plan(onefield.RTOG_Plan).Beam(onefield.RTOG_Beam).beam_energy
		          end
		        end
		        IPbeams.Append onefield
		      end
		    end
		  next
		  
		  
		  Read_Fields
		  Read_Dose_Stat_File
		  
		  // Readin each optimization code values
		  Grad.Open
		  SA.Open
		  Jaw.Open
		  NLO.Open
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_Dose_Stat_File()
		  //---------------------------------------------
		  // Method to read the Dose Stat file as text list of 
		  // points
		  //
		  // Updates 
		  // 2012 Alexander, changes made to Class_Opt_Organdose
		  //          we now store some of this infor within the organdose class
		  //---------------------------------------------
		  Dim i,oindex as integer
		  Dim g as FolderItem
		  Dim cc as Single
		  Dim temp,pb_name as String
		  Dim ts as TextInputStream
		  //---------------------------------------------
		  
		  
		  g=gRTOG.Plan(PIndex).Path
		  g=g.Child("PB-Dose-Volume-Stats.dat")
		  if g.Exists Then
		    ts=TextInputStream.Open(g)
		    if ts<>nil Then
		      While ts.EOF=False
		        temp=ts.ReadLine
		        pb_name=NthField(temp," ",9)
		        pb_name=Replace(pb_name,",","")
		        oindex=val(NthField(temp," ",3))-1
		        for i=0 to UBound(gOpt.IPbeams)
		          if pb_name=gOpt.IPbeams(i).FIdID_Name Then
		            gOpt.IPbeams(i).VolumeStats(oindex).mindose=val(NthField(temp," ",16))
		            gOpt.IPbeams(i).VolumeStats(oindex).maxdose=val(NthField(temp," ",17))
		            gOpt.IPbeams(i).VolumeStats(oindex).AvgDose=val(NthField(temp," ",18))
		          end
		        Next
		      Wend
		      ts.Close
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_DVH_Graphs_Binary()
		  '//----------------------------------------------
		  '// Readin all DVH graphs for this plan and opt run
		  '//
		  '//----------------------------------------------
		  'Dim i as Integer
		  'Dim DVH as Class_DVH_One
		  'Dim f,k as FolderItem
		  'Dim temp as String
		  'Dim vv,dvalue,vvalue,norm as Single
		  '//----------------------------------------------
		  '
		  'norm=1
		  'f=gRTOG.Plan(PIndex).Path
		  'for i=0 to UBound(Oarray.organ)
		  'DVH=Oarray.organ(i).DVH
		  'temp=str(Oarray.organ(i).OrganID+1)
		  'k=f.Child("Organ"+Temp+"DVH.bin")
		  'if k<>Nil Then
		  'if k.Exists Then
		  'Read_DVH_One_Graph_Binary(k,DVH)
		  'end
		  'end
		  '
		  'if Window_EMET_Run.CheckBox_DVH_Norm.Value Then
		  'if Oarray.organ(i).Use_Min_Dose Then
		  '// Normalize DVH Graphs
		  'dvalue=Oarray.organ(i).Target_Norm_Dose
		  'vvalue=Oarray.organ(i).Target_Norm_Volume
		  'if dvalue>0 and vvalue>0 Then
		  'vv=DVH.Calculate_Dose_at_Volume_Percent(vvalue)
		  'dvh.Normalize=dvalue/vv
		  'norm=DVH.Normalize
		  'end
		  'end
		  'end
		  'next
		  '
		  '
		  'if Window_EMET_Run.CheckBox_DVH_Norm.Value Then
		  'for i=0 to UBound(Oarray.organ)
		  'Oarray.organ(i).DVH.Normalize=norm
		  'Next
		  'end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_DVH_One_Graph_Binary(k as FolderItem, DVH as Class_DVH_One)
		  //----------------------------------------------
		  // Load DVH graph in memory, from file
		  //
		  //----------------------------------------------
		  Dim i,n,bins,file_byte,tempnum,offset1 as Integer
		  Dim temp,line as String
		  Dim bs as BinaryStream
		  Dim mb as MemoryBlock
		  Dim max,v as Single
		  //----------------------------------------------
		  
		  if k=Nil Then
		    Return
		  end
		  
		  if k.Exists =False Then
		    Return
		  end
		  
		  bs=k.OpenAsBinaryFile
		  mb=new MemoryBlock(bs.Length)  //Changed to "new MemoryBlock" by William Davis when newmemoryBlock was found to have been deprecated
		  if bs.Length<40 Then
		    Return
		    bs.Close
		  end
		  
		  
		  if mb.size=bs.length then
		    //reading the whole file into thismemblock
		    bs.position=0
		    mb.stringValue(0,mb.size)=bs.read(bs.Length)
		    bs.Close
		    
		  else
		    bs.Close
		    Return
		  end
		  
		  DVH.DVH_bins=mb.Int32Value(0)
		  
		  if DVH.DVH_bins<0 Then
		    DVH.DVH_bins=0
		  end
		  
		  dvh.Normalize=1
		  dvh.maxdose=mb.DoubleValue(4)
		  dvh.avgdose=mb.DoubleValue(12)
		  DVH.mindose=mb.DoubleValue(20)
		  offset1=28
		  if DVH.DVH_bins-1<>UBound(DVH.DVH) Then
		    ReDim DVH.DVH(DVH.DVH_bins-1)
		  end
		  
		  for n=0 to DVH.DVH_bins-1
		    if mb.Size>(offset1+(n+1)*8) Then
		      DVH.DVH(n)=mb.DoubleValue(offset1+n*8)
		    end
		  next
		  mb=nil
		  
		  gDVH.Make_DVH_StringFile(DVH)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_Fields()
		  //----------------------------------------
		  // 
		  //
		  //----------------------------------------
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  Dim ss,name(-1) as String
		  Dim i,k,nn as Integer
		  //----------------------------------------
		  
		  f=gRTOG.Plan(PIndex).Path
		  f=f.Child("Fields.dat")
		  
		  if f.Exists = False Then
		    Return
		  end
		  
		  ts=f.OpenAsTextFile
		  While ts=nil
		    ts=f.OpenAsTextFile
		  Wend
		  
		  ss=ts.ReadLine
		  
		  Num_Fields=val(NthField(ss,":",2))
		  for i=0 to Num_Fields-1
		    ss=ts.ReadLine
		    name.append NthField(ss," ",1)
		  next
		  ts.Close
		  
		  nn=0
		  for i=0 to UBound(IPbeams)
		    for k=0 to UBound(name)
		      if IPbeams(i).FIdID_Name=name(k) Then
		        IPbeams(i).Use=True
		        nn=nn+1
		        IPbeams(i).PB_Index=nn
		      end
		    next
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_Finished_DD(ss as String)
		  Dim f as FolderItem
		  
		  f=gRTOG.Plan(PIndex).Path
		  f=f.Child(ss+".Dose")
		  
		  
		  gRTOG.Plan(PIndex).Read_McGill_Dose(f)
		  Window_Treatment.Window_Update_Plan_now=True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_Resuts_DB()
		  //----------------------
		  // Setup SQL
		  //----------------------
		  Dim f as FolderItem
		  Dim bb as Boolean
		  Dim rs as RecordSet
		  Dim i as Integer
		  //----------------------
		  
		  
		  f=gRTOG.path
		  
		  f=f.Child("MERT.rsd")
		  Results=new SQLiteDatabase //Changed to "SQLiteDatabase by William Davis after REAQLSQPDatabase was found to have  been deprecated
		  Results.DatabaseFile=f
		  if f.Exists Then
		    bb=Results.connect
		  else
		    bb=Results.CreateDatabaseFile
		    bb=Results.connect
		  end
		  
		  
		  rs=Results.SQLSelect("Select * from Results")
		  if rs=nil Then
		    Results.SQLExecute "CREATE TABLE Results (CostValue String, Date String, MERTProgram String, Time String, InputFile String, OutputFile String,Fluence String, DVHs String, InputConstraints String, PB_Data, String, Plan String, Note String, Label, InitialScore String)"
		  end
		  
		  
		  rs=Results.SQLSelect("Select Plan from Results")
		  if rs=nil Then
		    Results.SQLExecute "ALTER TABLE Results ADD Plan String"
		  end
		  
		  rs=Results.SQLSelect("Select Time from Results")
		  if rs=nil Then
		    Results.SQLExecute "ALTER TABLE Results ADD Time String"
		  end
		  
		  rs=Results.SQLSelect("Select InitialScore from Results")
		  if rs=nil Then
		    Results.SQLExecute "ALTER TABLE Results ADD InitialScore String"
		  end
		  
		  
		  rs=Results.SQLSelect("Select Note from Results")
		  if rs=nil Then
		    Results.SQLExecute "ALTER TABLE Results ADD Note String"
		  else
		    i=rs.FieldCount
		    'if UBound(rs.IdxField)<0 Then
		    'Results.SQLExecute "ALTER TABLE Results ADD Note String"
		    'else
		    if rs.IdxField(1).Value =nil Then
		      Results.SQLExecute "ALTER TABLE Results ADD Note String"
		    end
		    'end
		  end
		  
		  rs=Results.SQLSelect("Select Label from Results")
		  if rs=nil Then
		    Results.SQLExecute "ALTER TABLE Results ADD Label String"
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_DJAW_Results()
		  '//----------------------------------
		  '// Update database
		  '//----------------------------------
		  'dim dr as DatabaseRecord
		  'dim i,k as Integer
		  'dim tt,record_found as Boolean
		  'dim db as SQLiteDatabase //Changed to "SQLiteDatabase by William Davis after REAQLSQPDatabase was found to have  been deprecated
		  'dim rs as RecordSet
		  'Dim d as Date
		  'Dim dvhs as String
		  ' //----------------------------------
		  '
		  'Write_PB_Data(3)
		  '
		  'd=New Date
		  'db=Results
		  '
		  '
		  '
		  '
		  'if db.Connect Then
		  'dr = new DatabaseRecord
		  'dr.Column("CostValue")=Format(JAW.Score,"-#.####e")
		  'dr.Column("Date")=d.shortdate+" "+d.ShortTime
		  'dr.Column("MERTProgram")="DJAW"
		  'dr.Column("Time")=JAW.Time
		  'dr.Column("InputFile")=JAW.Input_String
		  'dr.Column("Fluence")=JAW.Fluence_File
		  'dr.Column("OutputFile")=Window_EMET_Run.EditField_Shellout_Jaw.Text
		  '
		  'dr.Column("InputConstraints")=Organ_Constra
		  'dr.Column("Plan")=gRTOG.plan(Pindex).Plan_ID+" "+gRTOG.plan(Pindex).Plan_name
		  'dr.Column("PB_Data")=PB_Data
		  'dr.Column("Note")=""
		  'dr.Column("Label")=""
		  'dr.Column("InitialScore")=Format(jaw.Inital_Score,"-#.####e")
		  '
		  'dvhs=""
		  '// Generate DVH Strings
		  'for i=0 to UBound(Oarray.organ)
		  'if Oarray.organ(i).Use_DV_Constraint or  Oarray.organ(i).Use_Min_Dose or  Oarray.organ(i).AvgDose_Use Then
		  'gDVH.Make_DVH_StringFile(Oarray.organ(i).DVH)
		  'dvhs=dvhs+Oarray.organ(i).DVH.StringFile+"~~~"
		  'end
		  'next
		  'dr.Column("DVHs")=dvhs
		  '
		  '//sql="select CostValue,Date,MERTProgram,InputFile,OutputFile,Fluence,DVHs,InputConstraints from Results"
		  'if db.Error=False Then
		  'db.InsertRecord "Results", dr
		  'db.Commit
		  'end
		  'end
		  'db.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_Fields()
		  //-----------------------------------
		  Dim f as FolderItem
		  Dim ts as TextOutputStream
		  Dim i,count as Integer
		  Dim gg,temp as String
		  //------------------------------------
		  
		  count=0
		  // Count Number of Fields
		  for i=0 to UBound(IPbeams)
		    if IPbeams(i).Use Then
		      count=count+1
		    end
		  next
		  
		  Num_Fields=Count
		  
		  
		  // Write Fields.dat file
		  f=gRTOG.Plan(PIndex).Path
		  f=f.Child("Fields.dat")
		  if f.Exists Then
		    f.Delete
		  end
		  
		  ts=f.CreateTextFile
		  if ts<> nil Then
		    ts.Delimiter=EndOfLine.UNIX
		    ts.WriteLine "NumberOfFields:  "+str(Num_Fields)
		    for i=0 to UBound(IPbeams)
		      if IPbeams(i).Use Then
		        temp=IPbeams(i).FIdID_Name+" "+Format(IPbeams(i).FldID,"#")+" "+ Format(IPbeams(i).Norm_Value,"0.000000e")+" "+ Format(IPbeams(i).Weight_Grad,"0.000000e")+" "+ Format(IPbeams(i).Weight_SA,"0.000000e")+" "+ Format(IPbeams(i).Weight_JAW,"0.000000e")+" "+ Format(IPbeams(i).d3d_x_off,"-0.0000")+" "+ Format(IPbeams(i).d3d_y_off,"-0.0000")+" "+ Format(IPbeams(i).d3d_z_off,"-0.0000")+" "+ Format(IPbeams(i).X1,"-0.0000")+" "+ Format(IPbeams(i).x2,"-0.0000")+" "+ Format(IPbeams(i).y1,"-0.0000")+" "+ Format(IPbeams(i).Y2,"-0.0000")+" "+ Format(IPbeams(i).Weight_NLO,"0.000000e")
		        ts.WriteLine temp
		      end
		    next
		    ts.Close
		  else
		    MsgBox "Could not write Fields.dat!"
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_FLEC_Position_file(whole() as String, listeng as String)
		  //-------------------------------------------
		  //  Writes formatted text file for reading by the FLEC controller software
		  //  ***Note that the MUs are determined from the grad routine***
		  //-------------------------------------------
		  Dim name as String
		  Dim ts as TextOutputStream
		  Dim f as FolderItem
		  Dim i as Integer
		  Dim dlg as New SaveAsDialog
		  //-------------------------------------------
		  
		  whole=FLEC_Field_Order(whole, listeng)
		  
		  name=str(PIndex+1)
		  While len(name)<2
		    name="0"+name
		  Wend
		  name=gRTOG.Patient_ID+"-"+name+".txt"
		  dlg.InitialDirectory=gRTOG.Plan(PIndex).Path
		  dlg.promptText="Prompt Text"
		  dlg.SuggestedFileName=name
		  dlg.Title="Title Property"
		  //dlg.Filter=FileTypes1.Text //defined as a file type in FileTypes1 file type set
		  f=dlg.ShowModal()
		  If f <> Nil then
		    //file saved
		    ts=f.CreateTextFile
		    if ts=nil Then
		      Return
		    end
		  Else
		    //user canceled
		    Return
		  End if
		  
		  ts.Delimiter=EndOfLine.Windows
		  ts.WriteLine "NumberOfFieldlets="+str(UBound(whole)+1)
		  for i=0 to UBound(whole)
		    ts.WriteLine whole(i)
		  next
		  ts.Close
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_GradDVH_Results()
		  '//----------------------------------
		  '// Update database
		  '//----------------------------------
		  'dim dr as DatabaseRecord
		  'dim i,k as Integer
		  'dim tt,record_found as Boolean
		  'dim db as SQLiteDatabase //Changed to "SQLiteDatabase by William Davis after REAQLSQPDatabase was found to have  been deprecated
		  'dim rs as RecordSet
		  'Dim d as Date
		  'Dim dvhs as String
		  ' //----------------------------------
		  '
		  'Write_PB_Data(1)
		  '
		  'd=New Date
		  'db=Results
		  'if db.Connect Then
		  'dr = new DatabaseRecord
		  'dr.Column("CostValue")=Format(Grad.Score,"-#.####e")
		  'dr.Column("Date")=d.shortdate+" "+d.ShortTime
		  'dr.Column("MERTProgram")="GradDVH"
		  'dr.Column("Time")=Format(Grad.Runtime,"#.##")
		  'dr.Column("InputFile")=Grad.GradDVH_InputStr
		  'dr.Column("Fluence")=Grad.GradFluence_File
		  'dr.Column("OutputFile")=Grad.Grad_OutFile
		  'dr.Column("InputConstraints")=Organ_Constra
		  'dr.Column("Plan")=gRTOG.plan(Pindex).Plan_ID+" "+gRTOG.plan(Pindex).Plan_name
		  'dr.Column("PB_Data")=PB_Data
		  'dr.Column("Note")=""
		  'dr.Column("Label")=""
		  'dr.Column("InitialScore")=Format(Grad.Score_Inti,"-#.####e")
		  '
		  'dvhs=""
		  '// Generate DVH Strings
		  'for i=0 to UBound(Oarray.organ)
		  'if Oarray.organ(i).Use_DV_Constraint or Oarray.organ(i).Use_Min_Dose or Oarray.organ(i).AvgDose_Use Then
		  'gDVH.Make_DVH_StringFile(Oarray.organ(i).DVH)
		  'dvhs=dvhs+Oarray.organ(i).DVH.StringFile+"~~~"
		  'end
		  'next
		  'dr.Column("DVHs")=dvhs
		  '
		  'if db.Error=False Then
		  'db.InsertRecord "Results", dr
		  'db.Commit
		  'end
		  'end
		  'db.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_NLO_Results()
		  '//----------------------------------
		  '// Update database
		  '//----------------------------------
		  'dim dr as DatabaseRecord
		  'dim i,k as Integer
		  'dim tt,record_found as Boolean
		  'dim db as SQLiteDatabase //Changed to "SQLiteDatabase by William Davis after REAQLSQPDatabase was found to have  been deprecated
		  'dim rs as RecordSet
		  'Dim d as Date
		  'Dim dvhs, algorithmname as String
		  ' //----------------------------------
		  '
		  'Write_PB_Data(4)
		  '
		  'd=New Date
		  'db=Results
		  '
		  '
		  'if NLO.Algorithm=1 Then
		  'algorithmname="COBYLA"
		  'elseif NLO.Algorithm=2 Then
		  'algorithmname="BOBYQA"
		  'elseif NLO.Algorithm=3 Then
		  'algorithmname="PRAXIS"
		  'elseif NLO.Algorithm=4 Then
		  'algorithmname="Nelder-Mead Simplex"
		  'elseif NLO.Algorithm=5 Then
		  'algorithmname="Sbplx"
		  'elseif NLO.Algorithm=6 Then
		  'algorithmname="MMA"
		  'elseif NLO.Algorithm=7 Then
		  'algorithmname="SLSQB"
		  'elseif NLO.Algorithm=8 Then
		  'algorithmname="BFGS"
		  'elseif NLO.Algorithm=9 Then
		  'algorithmname="Trunc Newton"
		  'elseif NLO.Algorithm=10 Then
		  'algorithmname="SLMVM"
		  '
		  'end
		  '
		  'if db.Connect Then
		  'dr = new DatabaseRecord
		  'dr.Column("CostValue")=Format(NLO.Score,"-#.####e")
		  'dr.Column("Date")=d.shortdate+" "+d.ShortTime
		  'dr.Column("MERTProgram")="NLO-"+algorithmname
		  'dr.Column("Time")=Format(NLO.Runtime,"#.##")
		  'dr.Column("InputFile")=NLO.NLO_InputStr
		  'dr.Column("Fluence")=NLO.NLOFluence_File
		  'dr.Column("OutputFile")=NLO.NLO_OutFile
		  'dr.Column("InputConstraints")=Organ_Constra
		  'dr.Column("Plan")=gRTOG.plan(Pindex).Plan_ID+" "+gRTOG.plan(Pindex).Plan_name
		  'dr.Column("PB_Data")=PB_Data
		  'dr.Column("Note")=""
		  'dr.Column("Label")=""
		  'dr.Column("InitialScore")=Format(NLO.Score_Initial,"-#.####e")
		  '
		  'dvhs=""
		  '// Generate DVH Strings
		  'for i=0 to UBound(Oarray.organ)
		  'if Oarray.organ(i).Use_DV_Constraint or  Oarray.organ(i).Use_Min_Dose or  Oarray.organ(i).AvgDose_Use Then
		  'gDVH.Make_DVH_StringFile(Oarray.organ(i).DVH)
		  'dvhs=dvhs+Oarray.organ(i).DVH.StringFile+"~~~"
		  'end
		  'next
		  'dr.Column("DVHs")=dvhs
		  '
		  '//sql="select CostValue,Date,MERTProgram,InputFile,OutputFile,Fluence,DVHs,InputConstraints from Results"
		  'if db.Error=False Then
		  'db.InsertRecord "Results", dr
		  'db.Commit
		  'end
		  'end
		  'db.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_PB_Data(type as Integer)
		  Dim i as Integer
		  Dim temp as String
		  
		  
		  PB_Data=""
		  
		  For i=0 to UBound(IPbeams)
		    if IPbeams(i).Use Then
		      temp=IPbeams(i).FIdID_Name+"~"+Format(IPbeams(i).FldID,"#")+"~"+ Format(IPbeams(i).Norm_Value,"0.000000e")+"~"+IPbeams(i).Energy+"~"
		      if Type=1 Then
		        temp=temp+Format(IPbeams(i).Weight_Grad,"0.000000e")
		      elseif Type=2 Then
		        temp=temp+ Format(IPbeams(i).Weight_SA,"0.000000e")
		      elseif Type=3 Then
		        temp=temp+Format(IPbeams(i).Weight_JAW,"0.000000e")
		      elseif Type=4 Then
		        temp=temp+Format(IPbeams(i).Weight_NLO,"0.000000e")
		      end
		      temp=temp+"~"+ Format(IPbeams(i).X1,"-0.0000")+"~"+ Format(IPbeams(i).x2,"-0.0000")+"~"+ Format(IPbeams(i).y1,"-0.0000")+"~"+ Format(IPbeams(i).Y2,"-0.0000")
		      PB_Data=PB_Data+temp+Chr(10)
		    end
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_SA_Results()
		  '//----------------------------------
		  '// Update database
		  '//----------------------------------
		  'dim dr as DatabaseRecord
		  'dim i,k as Integer
		  'dim tt,record_found as Boolean
		  'dim db as SQLiteDatabase //Changed to "SQLiteDatabase by William Davis after REAQLSQPDatabase was found to have  been deprecated
		  'dim rs as RecordSet
		  'Dim d as Date
		  'Dim dvhs, algorithmname as String
		  ' //----------------------------------
		  '
		  'Write_PB_Data(2)
		  '
		  'd=New Date
		  'db=Results
		  '
		  'if window_EMET_Run.RadioButton_SA_Gaussian.Value Then
		  'algorithmname="Gaussian All"
		  'elseif Window_EMET_Run.RadioButton_SA_Polar.Value Then
		  'algorithmname="Polar All"
		  'elseif Window_EMET_Run.RadioButton_SA_Polar_One.Value Then
		  'algorithmname="Polar One"
		  'elseif Window_EMET_Run.RadioButton_SA_Gaussian_One.Value Then
		  'algorithmname="Gaussian One"
		  'elseif Window_EMET_Run.RadioButton_SA_Uniform.Value Then
		  'algorithmname="Uniform All"
		  'elseif Window_EMET_Run.RadioButton_SA_Uniform_One.Value Then
		  'algorithmname="Uniform One"
		  'end
		  '
		  'if db.Connect Then
		  'dr = new DatabaseRecord
		  'dr.Column("CostValue")=Format(sa.Score,"-#.####e")
		  'dr.Column("Date")=d.shortdate+" "+d.ShortTime
		  'dr.Column("MERTProgram")="SA-"+algorithmname
		  'dr.Column("Time")=Format(sa.Runtime,"#.##")
		  'dr.Column("InputFile")=sa.Input_File
		  'dr.Column("Fluence")=sa.Fluence_File
		  'dr.Column("OutputFile")=sa.Outputfile
		  'dr.Column("InputConstraints")=Organ_Constra
		  'dr.Column("Plan")=gRTOG.plan(Pindex).Plan_ID+" "+gRTOG.plan(Pindex).Plan_name
		  'dr.Column("PB_Data")=PB_Data
		  'dr.Column("Note")=""
		  'dr.Column("Label")=""
		  'dr.Column("InitialScore")=Format(sa.Score_Initial,"-#.####e")
		  '
		  'dvhs=""
		  '// Generate DVH Strings
		  'for i=0 to UBound(Oarray.organ)
		  'if Oarray.organ(i).Use_DV_Constraint or  Oarray.organ(i).Use_Min_Dose or  Oarray.organ(i).AvgDose_Use Then
		  'gDVH.Make_DVH_StringFile(Oarray.organ(i).DVH)
		  'dvhs=dvhs+Oarray.organ(i).DVH.StringFile+"~~~"
		  'end
		  'next
		  'dr.Column("DVHs")=dvhs
		  '
		  'if db.Error=False Then
		  'db.InsertRecord "Results", dr
		  'db.Commit
		  'end
		  'end
		  'db.Close
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		dvh_bin As Integer = 50
	#tag EndProperty

	#tag Property, Flags = &h0
		Grad As Class_MERT_GradDVH
	#tag EndProperty

	#tag Property, Flags = &h0
		IPbeams(-1) As Class_Optimization_FIELD
	#tag EndProperty

	#tag Property, Flags = &h0
		JAW As Class_MERT_JAWSA
	#tag EndProperty

	#tag Property, Flags = &h0
		NLO As Class_MERT_NLODVH
	#tag EndProperty

	#tag Property, Flags = &h0
		Num_Fields As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		path As String
	#tag EndProperty

	#tag Property, Flags = &h0
		pb_count As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PB_Data As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PIndex As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Plan As RTOG_Plan
	#tag EndProperty

	#tag Property, Flags = &h0
		Results As SQLiteDatabase
	#tag EndProperty

	#tag Property, Flags = &h0
		Run_Phspbeam As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Run_Thread_GetTarget As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Run_Thread_WriteStucutre As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		SA As Class_MERT_SADVH
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="dvh_bin"
			Visible=false
			Group="Behavior"
			InitialValue="50"
			Type="Integer"
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
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Num_Fields"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="path"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pb_count"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PB_Data"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PIndex"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Priority"
			Visible=true
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Run_Phspbeam"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Run_Thread_GetTarget"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Run_Thread_WriteStucutre"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StackSize"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
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
	#tag EndViewBehavior
End Class
#tag EndClass
