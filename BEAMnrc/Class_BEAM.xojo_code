#tag Class
Protected Class Class_BEAM
	#tag Method, Flags = &h0
		Sub egs_Input_CM_APPLICAT(CM as Class_Beam_Inputfile_CMs)
		  //--------------------------------------------
		  // Write CM Applicator
		  // 
		  //
		  //--------------------------------------------
		  Dim i ,k,j as integer
		  Dim temp as String
		  Dim bb as Boolean
		  //--------------------------------------------
		  
		  
		  bb=egs_Input_CM_APPLICAT_Upload(CM)
		  
		  cm.APPLICAT.Write(cm.text)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function egs_Input_CM_APPLICAT_Upload(CM as Class_Beam_Inputfile_CMs) As boolean
		  //--------------------------------------------
		  // Method to find the right Electron Applicator  CM
		  // 
		  //
		  //--------------------------------------------
		  Dim temp,text(-1),app_id as String
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  Dim un,mac,win as Integer
		  //--------------------------------------------
		  app_id=gRTOG.Plan(Plan_Index).Beam(beam_number).Aperture_ID
		  
		  
		  if app_id<>"" Then
		    app_id="APP-"+app_id
		    
		    f=gPref.BEAMnrc_fi
		    f=f.Child(app_id+".egsinp")
		    if f.Exists =False Then
		      gBEAM.egs_msg.append "Error in CM Applicator ! Could not find file : "+f.Name
		      Return False
		    end
		    
		    ts=f.OpenAsTextFile
		    temp=ts.ReadAll
		    ts.Close
		    
		    un=CountFields(temp,EndOfLine.UNIX)
		    mac=CountFields(temp,EndOfLine.Macintosh)
		    win=CountFields(temp,EndOfLine.Windows)
		    
		    if mac>un Then
		      text=Split(temp,EndOfLine.Macintosh)
		    elseif Win>un Then
		      text=Split(temp,EndOfLine.Windows)
		    else
		      text=Split(temp,EndOfLine.UNIX)
		    end
		    
		    
		    
		    cm.APPLICAT.Read(text)
		    
		  end
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Input_CM_BLOCK(CM as Class_Beam_Inputfile_CMs)
		  //--------------------------------------------
		  // Update BLOCK CM Applicator
		  // Used for FLEC simulations
		  //
		  //--------------------------------------------
		  Dim i ,k,j as integer
		  Dim temp as String
		  Dim BLOCK as Class_BEAM_CM_BLOCK
		  Dim x1,x2,y1,y2 as Double
		  //------------------------------------
		  
		  
		  
		  x1=-gRTOG.Plan(Plan_Index).Beam(beam_number).flec.x1
		  x2=gRTOG.Plan(Plan_Index).Beam(beam_number).flec.x2
		  y1=-gRTOG.Plan(Plan_Index).Beam(beam_number).flec.y1
		  y2=gRTOG.Plan(Plan_Index).Beam(beam_number).flec.y2
		  
		  BLOCK = CM.BLOCK
		  
		  if cm.CM_Identifier="XFLEC"  Then
		    
		    Block.Title_CM="MMCTP X-FLEC opening, X ("+Format(x1,"-#.###")+", "+Format(x2,"-#.##")+")"
		    '==========UPper FLEC============
		    
		    Block.Subregions(0).YHI_POINT_BLOCK(0)= 7.15
		    Block.Subregions(0).XHI_POINT_BLOCK(0)=x2
		    
		    Block.Subregions(0).YHI_POINT_BLOCK(1)=7.15
		    Block.Subregions(0).XHI_POINT_BLOCK(1)=x1
		    
		    
		    Block.Subregions(0).YHI_POINT_BLOCK(2)= -7.15
		    Block.Subregions(0).XHI_POINT_BLOCK(2)=x1
		    
		    
		    Block.Subregions(0).YHI_POINT_BLOCK(3)=-7.15
		    Block.Subregions(0).XHI_POINT_BLOCK(3)=x2
		    
		    
		    Block.XPMAX_BLOCK=x2+3
		    Block.XNMAX_BLOCK=x1-3
		    Block.yPMAX_BLOCK=7.15
		    Block.yNMAX_BLOCK=-7.15
		    
		    
		  elseif cm.CM_Identifier="YFLEC"  Then
		    '==============Lower FLEC
		    Block.Title_CM="MMCTP Y-FLEC opening, Y ("+Format(y1,"-#.###")+", "+Format(y2,"-#.##")+")"
		    
		    Block.Subregions(0).XHI_POINT_BLOCK(0)=7.15
		    Block.Subregions(0).YHI_POINT_BLOCK(0)=y2
		    
		    Block.Subregions(0).XHI_POINT_BLOCK(1)=-7.15
		    Block.Subregions(0).yHI_POINT_BLOCK(1)=y2
		    
		    
		    Block.Subregions(0).XHI_POINT_BLOCK(2)=-7.15
		    Block.Subregions(0).YHI_POINT_BLOCK(2)=y1
		    
		    
		    Block.Subregions(0).XHI_POINT_BLOCK(3)=7.15
		    Block.Subregions(0).YHI_POINT_BLOCK(3)=y1
		    
		    Block.xPMAX_BLOCK=7.15
		    Block.XNMAX_BLOCK=-7.15
		    Block.yPMAX_BLOCK=y2+3
		    Block.yNMAX_BLOCK=y1-3
		    
		    
		    
		  elseif cm.CM_Identifier="cutout" Then
		    if UBound(gRTOG.Plan(Plan_Index).Beam(beam_number).Block_Contours)=0 Then
		      
		      Block.Title_CM="MMCTP Cutout Opening"
		      Block.ZMIN_BLOCK=93.02
		      Block.ZMAX_BLOCK=94.82
		      Block.ZFOCUS_BLOCK=0
		      
		      if UBound(BLOCK.Subregions)=-1 Then
		        ReDim BLOCK.Subregions(0)
		        BLOCK.Subregions(0)=new Class_BEAM_CM_BLOCK_Subregions
		      end
		      
		      
		      BLOCK.Subregions(0).NSUB_BLOCK=Floor((UBound(gRTOG.Plan(Plan_Index).Beam(beam_number).Block_Contours(0).Pair)+1)/4)
		      
		      ReDim BLOCK.Subregions(0).XHI_POINT_BLOCK(BLOCK.Subregions(0).NSUB_BLOCK-1)
		      ReDim BLOCK.Subregions(0).YHI_POINT_BLOCK(BLOCK.Subregions(0).NSUB_BLOCK-1)
		      
		      for i=0 to BLOCK.Subregions(0).NSUB_BLOCK-1
		        BLOCK.Subregions(0).XHI_POINT_BLOCK(i)=gRTOG.Plan(Plan_Index).Beam(beam_number).Block_Contours(0).Pair(i*4).x
		        BLOCK.Subregions(0).YHI_POINT_BLOCK(i)=gRTOG.Plan(Plan_Index).Beam(beam_number).Block_Contours(0).Pair(i*4).y
		      next
		      
		      
		    end
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function egs_Input_CM_CONSTAK(CM as Class_Beam_Inputfile_CMs) As boolean
		  //--------------------------------------------
		  // Method to find the right CONSTAK Applicator  CM
		  // 
		  //
		  //--------------------------------------------
		  Dim temp,text(-1),app_id,prefix,label as String
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  Dim un,mac,win,i as Integer
		  //--------------------------------------------
		  app_id=gRTOG.Plan(Plan_Index).Beam(beam_number).Aperture_ID
		  
		  
		  for i=0 to UBound(gLinacs.All_Linacs(egs_linac_index).Applicator)
		    if app_id=gLinacs.All_Linacs(egs_linac_index).Applicator(i) Then
		      prefix=gLinacs.All_Linacs(egs_linac_index).BEAMnrcApplicatorCM(i)
		      label=gLinacs.All_Linacs(egs_linac_index).BEAMnrcApplicatorLabel(i)
		    end
		  Next
		  
		  if cm.CM_Identifier=Label Then
		    
		    if app_id<>"" Then
		      app_id=prefix+"-"+app_id
		      
		      f=gPref.BEAMnrc_fi
		      f=f.Child(app_id+".egsinp")
		      if f.Exists =False Then
		        gBEAM.egs_msg.append "Error in CM CONSTAK ! Could not find file : "+f.Name
		        Return False
		      end
		      
		      ts=f.OpenAsTextFile
		      temp=ts.ReadAll
		      ts.Close
		      
		      un=CountFields(temp,EndOfLine.UNIX)
		      mac=CountFields(temp,EndOfLine.Macintosh)
		      win=CountFields(temp,EndOfLine.Windows)
		      
		      if mac>un Then
		        text=Split(temp,EndOfLine.Macintosh)
		      elseif Win>un Then
		        text=Split(temp,EndOfLine.Windows)
		      else
		        text=Split(temp,EndOfLine.UNIX)
		      end
		      
		      text.remove 0
		      
		      cm.CONESTAK.Read(text,label)
		      
		    end
		    
		  end
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Input_CM_DYNJAWS(dd as Class_BEAM_CM_DYNJAWS, bversion as String)
		  //------------------------------------------
		  // Update DYNJAW CM
		  //
		  //------------------------------------------
		  dim temp ,one_line as String
		  Dim x1,x2,y1,y2 as Double
		  Dim g as Boolean
		  //------------------------------------------
		  
		  x1=-gRTOG.Plan(Plan_Index).Beam(beam_number).Collimator.fields(0).X1
		  x2=gRTOG.Plan(Plan_Index).Beam(beam_number).Collimator.fields(0).X2
		  y1=-gRTOG.Plan(Plan_Index).Beam(beam_number).Collimator.fields(0).Y1
		  y2=gRTOG.Plan(Plan_Index).Beam(beam_number).Collimator.fields(0).Y2
		  
		  if gRTOG.Plan(Plan_Index).Beam(beam_number).Collimator.NumFields>1 Then
		    dd.Title_CM="MMCTP DYNAMIC Jaw Settings for field settings : X ("+Format(x1,"-#.##")+", "+Format(x2,"-#.##")+") Y ("+Format(y1,"-#.##")+", "+Format(y2,"-#.##")+")"
		    if gRTOG.Plan(Plan_Index).Beam(beam_number).Collimator.Type="Step" Then
		      dd.MODE=2
		    else // Dynamic mode
		      dd.MODE=1
		    end
		    
		    //Update New DJaws path
		    g=gBEAM.egs_Get_Directory(beam_number)
		    
		    if gShells.Shells(egs_Shell_Index).OS=3 Then
		      one_line=gShells.Shells(egs_Shell_Index).egsnrc_folder_path+egs_BEAMnrc_dir+"\"+MC_file_name+str(beam_number+1)+".djaws"
		    else
		      one_line=gShells.Shells(egs_Shell_Index).egsnrc_folder_path+egs_BEAMnrc_dir+"/"+MC_file_name+str(beam_number+1)+".djaws"
		    end
		    dd.JAW_File_Path=one_line
		    
		    //------------------------------------------------------------------------------------------
		  else // Static MODE
		    dd.Title_CM="MMCTP STATIC Jaw Settings for field settings : X ("+Format(x1,"-#.##")+" - "+Format(x2,"-#.##")+") Y ("+Format(y1,"-#.##")+", "+Format(y2,"-#.##")+")"
		    dd.MODE=0
		    dd.Number_Fields=1
		  end
		  
		  // Calculate DYNAMIC Jaw file in BEAMnrc format
		  egs_Input_CM_DYNJAWS_Fields(beam_number,dd,bversion)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Input_CM_DYNJAWS_Fields(beam as integer, dj as Class_BEAM_CM_DYNJAWS, bversion as String)
		  //----------------------------------------
		  // Make BEAMnrc DYNJAW file 
		  //
		  //----------------------------------------
		  Dim file,oneline,tempo as String
		  Dim i,maxi,j, ii,indexo as Integer
		  Dim max, zybot, zytop, zxbot, zxtop, top, bot,YY1,YY2 as Single
		  dim x1,x2,y1,y2,diff, sumdiff, index as double
		  dim cc as Class_Collimator
		  Dim outfile as FolderItem
		  //----------------------------------------
		  
		  cc=gRTOG.Plan(Plan_Index).Beam(beam_number).collimator
		  
		  // Z positions of x and y jaw pairs
		  for i=0 to dj.ISCM_MAX-1
		    if i>-1 and i<=UBound(dj.DYN_Openings) Then
		      if dj.XY_Choice(i)="Y" Then // Y Jaw
		        zytop=dj.DYN_Openings(i).ZMIN_JAWS //28.0
		        zybot=dj.DYN_Openings(i).ZMAX_JAWS //35.8
		      else //X JAW
		        zxtop=dj.DYN_Openings(i).ZMIN_JAWS //36.7
		        zxbot=dj.DYN_Openings(i).ZMAX_JAWS //44.5
		      end
		    Else
		      gBEAM.egs_msg.append "Error within DYNJAW egs_Input_CM_DYNJAWS_Fields script for beam "+Str(Beam+1)+" exiting script"
		      Return
		    end
		  next
		  
		  
		  dj.Number_Fields=cc.NumFields
		  if dj.Number_Fields<=0 Then
		    dj.Number_Fields=1
		  end
		  
		  ReDim dj.DYN_Openings(dj.Number_Fields*dj.ISCM_MAX-1)
		  for ii=0  to UBound(dj.DYN_Openings)
		    dj.DYN_Openings(ii)=new Class_BEAM_CM_DYNJAWS_MOTION_Openings
		  Next
		  
		  ReDim dj.Index(cc.NumFields-1)
		  for ii=0  to cc.NumFields-1
		    dj.Index(ii) = cc.Fields(ii).Index     //normalizes the indices (weightings)
		  Next
		  
		  
		  
		  for ii=0  to dj.ISCM_MAX-1 //loop for each jaw
		    if dj.XY_Choice(ii)="Y" Then // For Y Jaws
		      //Change data into ESGBEAM format
		      bot = zybot
		      top =zytop
		      for i =0 to UBound(cc.Fields)
		        indexo=i*dj.ISCM_MAX+ ii
		        if indexo>-1 and indexo<=UBound(dj.DYN_Openings) Then
		          
		          dj.DYN_Openings(indexo).ZMIN_JAWS=top
		          dj.DYN_Openings(indexo).ZMAX_JAWS=bot
		          dj.DYN_Openings(indexo).XFP_JAWS=top*(cc.Fields(i).y2)/100
		          dj.DYN_Openings(indexo).XBP_JAWS=bot*(cc.Fields(i).y2)/100
		          dj.DYN_Openings(indexo).XFN_JAWS=-top*(cc.Fields(i).y1)/100
		          dj.DYN_Openings(indexo).XBN_JAWS=-bot*(cc.Fields(i).y1)/100
		        end
		      next
		      
		      
		    else // For X Jaws
		      bot = zxbot
		      top =zxtop
		      for i =0 to UBound(cc.Fields)
		        indexo=i*dj.ISCM_MAX+ ii
		        if indexo>-1 and indexo<=UBound(dj.DYN_Openings) Then
		          
		          dj.DYN_Openings(indexo).ZMIN_JAWS=top
		          dj.DYN_Openings(indexo).ZMAX_JAWS=bot
		          dj.DYN_Openings(indexo).XFP_JAWS=top*(cc.Fields(i).x2)/100
		          dj.DYN_Openings(indexo).XBP_JAWS=bot*(cc.Fields(i).x2)/100
		          dj.DYN_Openings(indexo).XFN_JAWS=-top*(cc.Fields(i).x1)/100
		          dj.DYN_Openings(indexo).XBN_JAWS=-bot*(cc.Fields(i).x1)/100
		        end
		      next
		    end
		  next
		  
		  // Write the dynamic jaw position 
		  if cc.NumFields>1 Then
		    outfile=gRTOG.Plan(Plan_Index).Path
		    outfile=outfile.Child(MC_file_name+str(beam+1)+".djaws")
		    dj.Write_DYN_Opening(outfile,bversion)
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function egs_Input_CM_DYNVMLC_leaveset_Old(xleaf as double, mode as integer, z_MLC as double, radius_leaf as double, z_field as double) As double
		  //------------ ---------------------------
		  // Determine the DYNVMLC leaf postions
		  //
		  //
		  //----------------------------------------
		  Dim res, A, B, C, RC, Disc as Double
		  //----------------------------------------
		  
		  
		  if (Xleaf=0.0) then
		    return(0.0)
		  end
		  RC=abs(Xleaf/z_field)
		  A=-4.0/pow(RC,2.0)
		  B=8.0*z_MLC/RC
		  C=4.0*(pow(radius_leaf/RC,2.0)+pow(radius_leaf,2.0)-pow(z_MLC,2.0))
		  Disc=pow(B,2)-4.0*A*C
		  
		  if(Xleaf<0 and mode=0) then
		    res=(B+sqrt(Disc))/(2.0*A)
		  end
		  if(Xleaf<0 and mode=1) then
		    res=(B-sqrt(Disc))/(2.0*A)
		  end
		  if(Xleaf>0 and mode=0) then
		    res=(-B-sqrt(Disc))/(2.0*A)
		  end
		  if(Xleaf>0 and mode=1) then
		    res=(-B+sqrt(Disc))/(2.0*A)
		  end
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Input_CM_DYNVMLC_MLC2BEAM_Siemens(cm as Class_Beam_Inputfile_CMs)
		  //===================================================
		  // MLC sequence to BEAMnrc		
		  // program to retrieve MLC and 
		  // put it into mlc file for sampling by BEAMnrc. 
		  // Initial leaf positions will be written to a *.egsinp file.                                                        
		  // 
		  // Authors
		  // A. Alexander (2010)  
		  // 
		  //===================================================
		  Dim leaf_radius, z_field,  gap,z_MLC,abut_gap,zmin,zthick,leaf_a,leaf_b,index,temp as Single
		  Dim i,j,inum_fields,inum_leaves,offset,filtype,index_CM  as Integer
		  Dim MLC as Class_MLC
		  Dim one_line as String
		  Dim Zthick_Min(-1),real_thick, R_arc,RMAx_cm,Zthick_Plus(-1), Zmax_lowest, Zmin_Min(-1),TWidth,  Zmin_Plus(-1),Zmax_min(-1),Zmax_plus(-1) as Single
		  //===================================================
		  
		  zmin=CM.DYNVMLC.ZMIN
		  zthick=CM.DYNVMLC.zthick
		  leaf_radius=CM.DYNVMLC.zfocus_ends
		  z_field= 100.0
		  gap=CM.DYNVMLC.Leafgap
		  inum_leaves=CM.DYNVMLC.Numleaves
		  z_MLC=zmin+zthick/2
		  abut_gap=gap*z_field/z_MLC/2.0
		  R_arc=28.3000
		  real_thick=7.56900
		  //---------------------------------------------
		  
		  
		  MLC = new Class_MLC
		  MLC = gRTOG.Plan(Plan_Index).Beam(beam_number).mlc
		  
		  
		  
		  ReDim cm.DYNVMLC.Fields(UBound(MLC.Fields))
		  if InStr(MLC.MLC_Type,"Static")>0 or UBound(MLC.Fields)=0  Then
		    CM.DYNVMLC.MODE_DYNVMLC=0
		  elseif InStr(MLC.MLC_Type,"Step")>0 Then
		    CM.DYNVMLC.MODE_DYNVMLC=2
		  elseif InStr(MLC.MLC_Type,"Dynamic")>0 Then
		    CM.DYNVMLC.MODE_DYNVMLC=1
		  end
		  
		  
		  cm.DYNVMLC.MLC_File_Name=MC_file_name+str(beam_number+1)+".mlc"
		  one_line=gShells.Shells(egs_Shell_Index).egsnrc_folder_path
		  cm.DYNVMLC.MLC_File_Path=one_line+"/"+egs_BEAMnrc_dir+"/"+cm.DYNVMLC.MLC_File_Name
		  
		  inum_fields=MLC.NumberofFields
		  for i=1 to inum_fields
		    cm.DYNVMLC.Fields(i-1)=new Class_BEAM_CM_DYNVMLC_Fields
		    ReDim cm.DYNVMLC.Fields(i-1).leaves(inum_leaves-1)
		    ReDim Zthick_Min(inum_leaves-1)
		    ReDim Zthick_Plus(inum_leaves-1)
		    ReDim Zmin_Min(inum_leaves-1)
		    ReDim Zmax_plus(inum_leaves-1)
		    ReDim Zmax_min(inum_leaves-1)
		    ReDim Zmin_Plus(inum_leaves-1)
		    
		    
		    for j=0 to inum_leaves-1
		      Zmin_Min(j)=R_arc*(COS(ATAN(MLC.Fields(i-1).Leaf_A(j)/100)))
		      Zmin_Plus(j)=R_arc*(COS(ATAN(MLC.Fields(i-1).Leaf_B(j)/100)))
		      Zmax_min(j)=(R_arc+real_thick)*(COS(ATAN(MLC.Fields(i-1).Leaf_A(j)/100)))
		      Zmax_plus(j)=(R_arc+real_thick)*(COS(ATAN(MLC.Fields(i-1).Leaf_B(j)/100)))
		      Zthick_Min(j)=Zmax_min(j)-Zmin_Min(j)
		      Zthick_Plus(j)=Zmax_plus(j)-Zmin_Plus(j)
		    next
		    
		    zmin=1000000
		    for j=0 to UBound(Zmin_Plus)
		      if Zmin>Zmin_Plus(j) then
		        zmin=Zmin_Plus(j)
		      end
		      if zmin>Zmin_Min(j) Then
		        zmin=Zmin_Min(j)
		      end
		    next
		    
		    Zmax_lowest=-1000000
		    for j=0 to UBound(Zmin_Plus)
		      if Zmax_lowest<Zmax_Plus(j) then
		        Zmax_lowest=Zmax_Plus(j)
		      end
		      if Zmax_lowest<Zmax_Min(j) Then
		        Zmax_lowest=Zmax_Min(j)
		      end
		    next
		    
		    RMAx_cm=Zmax_lowest*TAN(ACOS(Zmax_lowest/(R_arc+real_thick))+36.8/180*3.1416)
		    
		    if InStr(Str(RMAx_cm),"nan")>0 or RMAx_cm<=0 Then
		      MsgBox "RMAX Value in DYNVMLC is below zero! for file "+Inputfile.title
		    end
		    
		    
		    temp=0
		    for j=0 to UBound(Zmin_Plus)
		      temp=Zmin_Plus(j)+Zmin_Min(j)+temp
		    next
		    Zmin=R_arc-(R_arc*(2*inum_leaves)-temp)/(2*inum_leaves)
		    
		    temp=0
		    for j=0 to UBound(Zmin_Plus)
		      temp=Zthick_Plus(j)+Zthick_Min(j)+temp
		    next
		    
		    zthick=real_thick-(real_thick*(2*inum_leaves)-temp)/(2*inum_leaves)
		    
		    TWidth=0.5*2*inum_leaves*zmin/100
		    
		    
		    // Write Index of field
		    cm.DYNVMLC.Fields(i-1).Index=MLC.Fields(i-1).Indexnum
		    for j=0 to inum_leaves-1
		      cm.DYNVMLC.Fields(i-1).leaves(j)=new Class_BEAM_CM_DYNVMLC_Leaf_Opening
		      cm.DYNVMLC.Fields(i-1).leaves(j).pos=zmin/100*MLC.Fields(i-1).Leaf_B(j)
		      cm.DYNVMLC.Fields(i-1).leaves(j).neg=-zmin/100*MLC.Fields(i-1).Leaf_A(j)
		      cm.DYNVMLC.Fields(i-1).leaves(j).num=1
		    next
		  next
		  
		  cm.DYNVMLC.RMAX_CM=RMAx_cm
		  cm.DYNVMLC.ZMIN=zmin
		  cm.DYNVMLC.ZThick=Zthick
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Input_CM_DYNVMLC_MLC2BEAM_Varian(cm as Class_Beam_Inputfile_CMs)
		  //---------------------------------------------
		  // DYNVMLC sequence to BEAMnrc	for Varian MLC
		  // program to retrieve MLC and 
		  // put it into mlc file for sampling by BEAMnrc. 
		  // Initial leaf positions will be written to a *.egsinp file.                                                        
		  // 
		  // Authors
		  // E.Heath and J.Seuntjens (June 2004)                        
		  // A. Alexander (2009)  
		  // 
		  //---------------------------------------------
		  Dim leaf_radius, z_field,z_MLC,abut_gap,zmin,zthick,leaf_a,leaf_b,leaf_b_mlc,leaf_a_mlc,index as Single
		  Dim i,j,inum_fields,inum_leaves,Normal_or_Overtravel_1,Normal_or_Overtravel_2  as Integer
		  Dim MLC as Class_MLC
		  Dim one_line,temp as String
		  //---------------------------------------------
		  
		  MLC = new Class_MLC
		  MLC = gRTOG.Plan(Plan_Index).Beam(beam_number).mlc
		  
		  //----MLC Variables--------------------------------
		  abut_gap=MLC.Abutting_Gap/2.0
		  zmin=CM.DYNVMLC.ZMIN
		  zthick=CM.DYNVMLC.zthick
		  leaf_radius=CM.DYNVMLC.zfocus_ends
		  z_field=gRTOG.Plan(Plan_Index).Beam(beam_number).Nominal_Isocenter
		  inum_leaves=CM.DYNVMLC.Numleaves
		  z_MLC=zmin+zthick/2
		  //---------------------------------------------
		  
		  
		  
		  
		  if MLC.NumberofFields=0 or UBound(MLC.Fields)<0 Then //load default setting
		    // input leaf sequence for completely retracted MLC ---> Gabriela
		    // 0 mode for static fields
		    CM.DYNVMLC.MODE_DYNVMLC=0
		    ReDim cm.DYNVMLC.Fields(0)
		    cm.DYNVMLC.Fields(0)=new Class_BEAM_CM_DYNVMLC_Fields
		    ReDim cm.DYNVMLC.Fields(0).Leaves(inum_leaves-1)
		    
		    for i=1 to inum_leaves
		      cm.DYNVMLC.Fields(0).leaves(i-1)=new Class_BEAM_CM_DYNVMLC_Leaf_Opening
		      CM.dynvmlc.Fields(0).leaves(i-1).Neg=-20.3
		      CM.dynvmlc.Fields(0).leaves(i-1).Pos=20.3
		      CM.dynvmlc.Fields(0).leaves(i-1).Num= 1
		    next
		    
		  else // If we have an MLC file
		    
		    
		    if InStr(MLC.MLC_Type,"Static")>0   Then
		      CM.DYNVMLC.MODE_DYNVMLC=0
		    elseif InStr(MLC.MLC_Type,"Step")>0 Then
		      CM.DYNVMLC.MODE_DYNVMLC=2
		    elseif InStr(MLC.MLC_Type,"Dynamic")>0 Then
		      CM.DYNVMLC.MODE_DYNVMLC=1
		      
		    else // Error, MLC type has not been defined
		      CM.DYNVMLC.MODE_DYNVMLC=3
		      gBEAM.egs_msg.append "Error within MLC2BEAM : MLC type not defined!"
		      Return
		    end
		    
		    cm.DYNVMLC.MLC_File_Name=MC_file_name+str(beam_number+1)+".mlc"
		    one_line=gShells.Shells(egs_Shell_Index).egsnrc_folder_path
		    
		    if gShells.Shells(egs_Shell_Index).OS=3 Then
		      cm.DYNVMLC.MLC_File_Path=one_line+"\"+egs_BEAMnrc_dir+"\"+cm.DYNVMLC.MLC_File_Name
		    else
		      cm.DYNVMLC.MLC_File_Path=one_line+"/"+egs_BEAMnrc_dir+"/"+cm.DYNVMLC.MLC_File_Name
		    end
		    
		    inum_fields=MLC.NumberofFields
		    
		    ReDim cm.DYNVMLC.Fields(inum_fields-1)
		    for i=1 to inum_fields
		      cm.DYNVMLC.Fields(i-1)=new Class_BEAM_CM_DYNVMLC_Fields
		      ReDim cm.DYNVMLC.Fields(i-1).leaves(inum_leaves-1)
		    next
		    
		    if (inum_fields-1)<>UBound(MLC.Fields) Then
		      gBEAM.egs_msg.append "Error within MLC2BEAM : number of fields does not match UBound of fields"
		      Return
		    end
		    
		    for i=1 to inum_fields
		      // Write Index of field
		      cm.DYNVMLC.Fields(i-1).Index=MLC.Fields(i-1).Indexnum
		      for j=0 to inum_leaves-1
		        cm.DYNVMLC.Fields(i-1).leaves(j)=new Class_BEAM_CM_DYNVMLC_Leaf_Opening
		        if UBound(MLC.Fields(i-1).Leaf_A)>=j and UBound(MLC.Fields(i-1).Leaf_B)>=j Then 
		          leaf_a=MLC.Fields(i-1).Leaf_A(j)
		          leaf_b=-MLC.Fields(i-1).Leaf_B(j) // Update 2012 by A Alexander place position in absolute value
		        else
		          gBEAM.egs_msg.append "Error in MLC to DYNVMLC! Numbe of BEAMnrc leaves not equal to number of MMCTP MLC leaves"
		          
		        end
		        if ((leaf_a<leaf_b) and (leaf_a <> 0.0) and (leaf_b <>0.0)) then
		          gBEAM.egs_msg.append "Error Leaves colliding in DYNVMLC! ..."
		        end
		        
		        // Calculate Varian MLC leaf position 
		        leaf_a_mlc=egs_Input_CM_MLC_RoundedLeaf(leaf_a,z_MLC,leaf_radius,z_field,0)
		        leaf_b_mlc=egs_Input_CM_MLC_RoundedLeaf(leaf_b,z_MLC,leaf_radius,z_field,1)
		        
		        
		        
		        // Place abutting gap between two leaves for leaves at are close to touching
		        if abs(leaf_a_mlc-leaf_b_mlc)<MLC.Abutting_Gap Then
		          leaf_a_mlc=leaf_a_mlc+abut_gap
		          leaf_b_mlc=leaf_b_mlc-abut_gap
		        end
		        
		        cm.DYNVMLC.Fields(i-1).leaves(j).pos=leaf_a_mlc
		        cm.DYNVMLC.Fields(i-1).leaves(j).neg=leaf_b_mlc
		        cm.DYNVMLC.Fields(i-1).leaves(j).num=1
		      next
		    next
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Input_CM_Jaws(cm as Class_Beam_Inputfile_CMs, type as Integer)
		  //------------------------------------
		  // Format for Standard BEAMnrc JAWS
		  // 
		  //------------------------------------
		  Dim i as integer
		  dim temp ,x,y as String
		  Dim x1,x2,y1,y2,zxtop,zxbot,zytop,zybot as Double
		  Dim J,L,Distance_top_to_target,AB_Par,AB_Perp,A_and_Tip,A_and_Tip_jaw as Single
		  Dim F14,H,t,thetaTF,tm,tb,jp1,jp2,xA1,xA2,z0,JP_Plus,JP_Min,xA_Plus,xA_Min as Single
		  Dim thetaDa_Plus, ThetaDa_Min,xB_Plus,xB_Min,yB_Plus,yB_Min as Single
		  Dim Rmax, Zthick_Plus,  Zmin_Plus, Zmax_plus, XFP, XBP,Zthick_Min,  Zmin_Min, Zmax_min,XFN, XBN as Single
		  Dim Zthick, Zmin, Zmax as Single
		  //------------------------------------
		  
		  x1=-gRTOG.Plan(Plan_Index).Beam(beam_number).Collimator.fields(0).X1
		  x2=gRTOG.Plan(Plan_Index).Beam(beam_number).Collimator.fields(0).X2
		  y1=-gRTOG.Plan(Plan_Index).Beam(beam_number).Collimator.fields(0).Y1
		  y2=gRTOG.Plan(Plan_Index).Beam(beam_number).Collimator.fields(0).Y2
		  
		  if type=2 Then // Siemens Jaws
		    j=7.8
		    L=9.3
		    Distance_top_to_target=19.7
		    x1=10.94
		    x2=6.95
		    y1=-2.06
		    y2=-.76
		    AB_Par=1.09867
		    AB_Perp=7.41067
		    A_and_Tip=3.9
		    A_and_Tip_jaw=0.6
		    F14=Distance_top_to_target+A_and_Tip
		    z0=F14
		    H=Sqrt(AB_Par*AB_Par+AB_Perp*AB_Perp)
		    t=Sqrt(A_and_Tip*A_and_Tip+A_and_Tip_jaw*A_and_Tip_jaw)
		    thetaTF=ATan(A_and_Tip_jaw/A_and_Tip)
		    tm=(y2-y1)/(x2-x1)
		    tb=-AB_Par-tm*(AB_Perp+A_and_Tip_jaw)
		    jp1=2.5
		    jp2=17.5
		    xA1=z0/100*jp1+A_and_Tip_jaw/COS(ATan(jp1/100))
		    xA2=z0/100*jp2+A_and_Tip_jaw/COS(ATan(jp2/100))
		    JP_Min=gRTOG.Plan(Plan_Index).Beam(beam_number).Collimator.fields(0).Y1
		    JP_Plus=gRTOG.Plan(Plan_Index).Beam(beam_number).Collimator.fields(0).Y2
		    xA_Plus=xA1+(xA2-xA1)*(JP_Plus-jp1)/(JP2-JP1)
		    xA_Min=xA1+(xA2-xA1)*(JP_Min-jp1)/(JP2-JP1)
		    
		    xB_Plus=(-(tb*tm-xA_Plus)+Sqrt((tb*tm-xA_Plus)^2-(1+tm^2)*(xA_Plus^2+tb^2-H^2)))/(1+tm^2)
		    xB_Min=(-(tb*tm-xA_Min)+Sqrt((tb*tm-xA_Min)^2-(1+tm^2)*(xA_Min^2+tb^2-H^2)))/(1+tm^2)
		    yB_Plus=tm*xB_Plus+tb
		    yB_Min=tm*xB_Min+tb
		    
		    thetaDa_Plus=ASin(-yB_Plus/H)-ASin(AB_Par/H)
		    ThetaDa_Min=ASin(-yB_Min/H)-Asin(AB_Par/H)
		    
		    cm.JAWS.Title_CM="MMCTP Jaw Settings for Siemens field settings : Y ("+Format(JP_Min,"-#.##")+", "+Format(JP_Plus,"-#.##")+")"
		    
		    Zthick_Plus=J*cos(thetaDa_Plus)
		    Zmin_Plus=z0-t*cos(thetaTF+thetaDa_Plus)
		    Zmax_plus=   Zmin_Plus+Zthick_Plus 
		    XFP =  xA_Plus-t*sin(thetaTF+thetaDa_Plus)
		    XBP = XFP+J*Sin(thetaDa_Plus)   
		    Zthick_Min =j*cos(ThetaDa_Min)  
		    Zmin_Min=z0-t*cos(thetaTF+ThetaDa_Min)
		    Zmax_min=Zmin_Min+Zthick_Min
		    XFN =  -(xA_Min-t*sin(thetaTF+ThetaDa_Min))
		    XBN =  -(-xfn+j*sin(ThetaDa_Min))
		    
		    Rmax=MAx(xA_Plus,xA_Min)+4.8+3.9
		    
		    cm.JAWS.RMAX_CM=Rmax
		    
		    // For Asymmetric fields
		    if JP_Plus<>JP_Min Then
		      Zthick=(Zthick_Min+Zthick_Plus)/2
		      Zmin=(Zmin_Plus+Zmin_Min)/2
		      Zmax=Zmin+Zthick
		      XFP=Zmin/Zmin_Plus*XFP
		      XBP=Zmin/Zmin_Plus*XBP
		      XFN=Zmin/Zmin_Min*XFN
		      XBN=Zmin/Zmin_Min*XBN
		    else // Symmetric Fields
		      Zthick=Zthick_Min
		      Zmin=Zmin_Min
		      Zmax=Zmax_min
		    end
		    
		    for i=1 to cm.JAWS.ISCM_MAX
		      if cm.JAWS.XY_Choice(i-1)="Y" Then
		        cm.JAWS.ZMIN_JAWS(i-1)=Zmin
		        cm.JAWS.ZMAX_JAWS(i-1)=Zmax
		        cm.JAWS.XFP_JAWS(i-1)=XFp
		        cm.JAWS.XBP_JAWS(i-1)=xbp
		        cm.JAWS.XFN_JAWS(i-1)=xfn
		        cm.JAWS.XBN_JAWS(i-1)=xbn
		      end
		    next
		    
		    
		    
		    
		    
		  elseif  type=1 or type=5 Then // Varian Jaws
		    // Jaws are always modeled at the same Z value
		    // A simple caluclation has shown us that the maximum
		    // Z value displacement of the Varian Y jaw would be (when Y1=20 cm at iso) roughly 0.6 cm from the lowest Z value (at Y1=0 cm at iso)
		    // Z variation can not be handeled within the JAWs CM
		    
		    
		    if type=5 Then // Elekta Jaws
		      cm.JAWS.Title_CM="MMCTP Jaw Settings for Elekta field settings : X ("+Format(x1,"-#.##")+", "+Format(x2,"-#.##")+") Y ("+Format(y1,"-#.##")+", "+Format(y2,"-#.##")+")"
		    else
		      cm.JAWS.Title_CM="MMCTP Jaw Settings for Varian field settings : X ("+Format(x1,"-#.##")+", "+Format(x2,"-#.##")+") Y ("+Format(y1,"-#.##")+", "+Format(y2,"-#.##")+")"
		    end
		    
		    
		    for i=1 to cm.JAWS.ISCM_MAX
		      if cm.JAWS.XY_Choice(i-1)="Y" Then
		        zytop=cm.JAWS.ZMIN_JAWS(i-1)
		        zybot=cm.JAWS.ZMAX_JAWS(i-1)
		        cm.JAWS.XFP_JAWS(i-1)=zytop*y2/100
		        cm.JAWS.XBP_JAWS(i-1)=zybot*y2/100
		        cm.JAWS.XFN_JAWS(i-1)=zytop*y1/100
		        cm.JAWS.XBN_JAWS(i-1)=zybot*y1/100
		      elseif  cm.JAWS.XY_Choice(i-1)="X" Then
		        zxtop=cm.JAWS.ZMIN_JAWS(i-1)
		        zxbot=cm.JAWS.ZMAX_JAWS(i-1)
		        cm.JAWS.XFP_JAWS(i-1)=zxtop*x2/100
		        cm.JAWS.XBP_JAWS(i-1)=zxbot*x2/100
		        cm.JAWS.XFN_JAWS(i-1)=zxtop*x1/100
		        cm.JAWS.XBN_JAWS(i-1)=zxbot*x1/100
		      end
		    next
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Input_CM_MLC(cm as Class_Beam_Inputfile_CMs)
		  '//===================================================
		  '// MLC sequence to BEAMnrc		
		  '// program to retrieve MLC and 
		  '// put it into mlc file for sampling by BEAMnrc. 
		  '// Initial leaf positions will be written to a *.egsinp file.                                                        
		  '// 
		  '// Authors
		  '// E.Heath and J.Seuntjens (June 2004)                        
		  '// A. Alexander (2009)  
		  '// 
		  '//===================================================
		  'Dim leaf_radius, z_field,  gap,z_MLC,abut_gap,zmin,zthick,leafnumber(-1,1),leaf_a,leaf_b,index as Single
		  'Dim mlcts as TextInputStream
		  'Dim one_line,treatment_type,num_fields,num_leaves,mlc_read,allfield(-1),temp,whole,mlc_string  as String
		  'Dim i,j,inum_fields,inum_leaves,offset,Normal_or_Overtravel_1,Normal_or_Overtravel_2,filtype,index_CM  as Integer
		  'Dim MLC as Class_MLC
		  '//===================================================
		  '
		  'zmin=CM.MLC.ZMIN
		  'zthick=CM.MLC.zthick
		  'leaf_radius =CM.MLC.zfocus_ends
		  'z_field   = 100.0
		  'gap  = CM.MLC.Leafgap
		  'inum_leaves=CM.DYNVMLC.Numleaves
		  'z_MLC=zmin+zthick/2
		  'abut_gap = gap*z_field/z_MLC/2.0
		  '//---------------------------------------------
		  '
		  '
		  'MLC = new Class_MLC
		  'MLC = gRTOG.Plan(Plan_Index).Beam(beam_number).mlc
		  '
		  '
		  'if MLC.NumberofFields=0 or UBound(MLC.Fields)<0 Then //load default setting
		  '// input leaf sequence for completely retracted MLC ---> Gabriela
		  '// 0 mode for static fields
		  'CM.DYNVMLC.MODE_DYNVMLC=0
		  'ReDim cm.DYNVMLC.Fields(0)
		  'cm.DYNVMLC.Fields(0)=new Class_BEAM_CM_DYNVMLC_Fields
		  'ReDim cm.DYNVMLC.Fields(0).leaves(inum_leaves-1)
		  '
		  'for i=1 to inum_leaves
		  'cm.DYNVMLC.Fields(0).leaves(i-1)=new Class_BEAM_CM_DYNVMLC_Leaf_Opening
		  'CM.dynvmlc.Fields(0).leaves(i-1).Neg=-20.3
		  'CM.dynvmlc.Fields(0).leaves(i-1).Pos=20.3
		  'CM.dynvmlc.Fields(0).leaves(i-1).Num= 1
		  'next
		  '
		  '
		  '
		  ' // We have an MLC field
		  '
		  '
		  '
		  'else // If we have an MLC file
		  '
		  'if InStr(MLC.MLC_Type,"Static")>0   Then
		  'CM.DYNVMLC.MODE_DYNVMLC=0
		  'elseif InStr(MLC.MLC_Type,"Step")>0 Then
		  'CM.DYNVMLC.MODE_DYNVMLC=2
		  'elseif InStr(MLC.MLC_Type,"Dynamic")>0 Then
		  'CM.DYNVMLC.MODE_DYNVMLC=1
		  'end
		  '
		  'cm.DYNVMLC.MLC_File_Name=MC_file_name+str(beam_number+1)+".mlc"
		  'one_line=gShells.Shells(egs_Shell_Index).egsnrc_folder_path
		  'cm.DYNVMLC.MLC_File_Path=one_line+"/"+egs_BEAMnrc_dir+"/"+cm.DYNVMLC.MLC_File_Name
		  '
		  'inum_fields=MLC.NumberofFields
		  '
		  'ReDim cm.DYNVMLC.Fields(inum_fields-1)
		  'for i=1 to inum_fields
		  'cm.DYNVMLC.Fields(i-1)=new Class_BEAM_CM_DYNVMLC_Fields
		  'ReDim cm.DYNVMLC.Fields(i-1).leaves(inum_leaves-1)
		  'next
		  '
		  'if (inum_fields-1)<>UBound(MLC.Fields) Then
		  'gBEAM.egs_msg.append "Error within MLC2BEAM : number of fields does not match UBound of fields"
		  'Return
		  'end
		  '
		  'for i =1 to inum_fields
		  '// Write Index of field
		  'cm.DYNVMLC.Fields(i-1).Index=MLC.Fields(i-1).Indexnum
		  'for j=0 to inum_leaves-1
		  'cm.DYNVMLC.Fields(i-1).leaves(j)=new Class_BEAM_CM_DYNVMLC_Leaf_Opening
		  'leaf_a=MLC.Fields(i-1).Leaf_A(j)
		  'leaf_b=MLC.Fields(i-1).Leaf_B(j)
		  'if (leaf_a =leaf_b) and leaf_a <>0.0 then
		  'leaf_a=leaf_a+abut_gap
		  'leaf_b=leaf_b+abut_gap
		  'end
		  'leaf_a=leaf_a*(-1)
		  'if (leaf_a<=0.0) then
		  'Normal_or_Overtravel_1=0
		  'else
		  'Normal_or_Overtravel_1=1
		  'end
		  'if(leaf_b<=0.0) then
		  'Normal_or_Overtravel_2=1
		  'else
		  'Normal_or_Overtravel_2=0
		  'end
		  'if((leaf_a>=leaf_b) and (leaf_a <> 0.0) and (leaf_b <>0.0)) then
		  ''MsgBox("leaves colliding! ... exiting ...")
		  'end
		  'leaf_a=egs_Input_CM_DYNVMLC_leaveset(leaf_a,Normal_or_Overtravel_1,z_MLC,leaf_radius,z_field)
		  'leaf_b=egs_Input_CM_DYNVMLC_leaveset(leaf_b,Normal_or_Overtravel_2,z_MLC,leaf_radius,z_field)
		  'if (leaf_b<>0.0) then
		  'leaf_b=leaf_b-leaf_radius
		  'end
		  'if (leaf_a<>0.0) then
		  'leaf_a=leaf_a+leaf_radius
		  'end
		  'if (leaf_a = 0.0) then
		  'leaf_a = -gap/2.0
		  'end
		  'if (leaf_b = 0.0) then
		  'leaf_b = gap/2.0
		  'end
		  'cm.DYNVMLC.Fields(i-1).leaves(j).pos=-leaf_a
		  'cm.DYNVMLC.Fields(i-1).leaves(j).neg=-leaf_b
		  'cm.DYNVMLC.Fields(i-1).leaves(j).num=1
		  'next
		  '
		  '
		  'next
		  'end
		  '
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Input_CM_MLCE(cm as Class_Beam_Inputfile_CMs)
		  //===================================================
		  // MLCE sequence to BEAMnrc	for Elekta machines
		  // program to retrieve MLC and 
		  // put it into mlc file for sampling by BEAMnrc. 
		  // Initial leaf positions will be written to a *.egsinp file.                                                        
		  //
		  // Beamnrc input format from Matlab script provided by Turki M
		  // 
		  // Authors
		  // Turki M and A. Alexander (2015)  
		  // 
		  //===================================================
		  Dim mlc as Class_MLC
		  Dim i,j,inum_fields,inum_leaves as Integer
		  Dim leaf_a, leaf_b as Single
		  Dim midpoint as Double
		  //===================================================
		  
		  MLC = new Class_MLC
		  MLC = gRTOG.Plan(Plan_Index).Beam(beam_number).mlc
		  CM.MLCE.Title_CM="MMCTP updated MLCE CM within method egs_Input_CM_MLCE"
		  midpoint=(cm.MLCE.zmin+cm.MLCE.zmax)/2
		  
		  
		  if MLC.NumberofFields=0 or UBound(MLC.Fields)<0 Then //load default setting
		    // 0 mode for static fields
		    CM.MLCE.mode=0
		    cm.MLCE.nfield=1
		    ReDim cm.MLCE.Field(cm.MLCE.nfield-1)
		    cm.MLCE.Field(0)=new Class_BEAM_CM_MLC_Leaf_Opening
		    CM.MLCE.Field(0).Neg=-20.3
		    CM.MLCE.Field(0).Pos=20.3
		    CM.MLCE.Field(0).Num=cm.MLCE.Num_leaf
		    
		  else // If we have an MLC file
		    
		    if InStr(MLC.MLC_Type,"Static")>0   Then
		      CM.MLCE.MODE=0
		    elseif InStr(MLC.MLC_Type,"Step")>0 Then
		      CM.MLCE.MODE=2
		    elseif InStr(MLC.MLC_Type,"Dynamic")>0 Then
		      CM.MLCE.MODE=1
		    end
		    
		    inum_fields=MLC.NumberofFields
		    inum_leaves=mlc.NumberofLeafPairs
		    ReDim cm.MLCE.Index(inum_fields-1)
		    ReDim cm.MLCE.Field(inum_fields*MLC.NumberofLeafPairs-1)
		    
		    for i=0 to UBound(cm.MLCE.Field)
		      cm.MLCE.Field(i)=new Class_BEAM_CM_MLC_Leaf_Opening
		    next
		    
		    if (inum_fields-1)<>UBound(MLC.Fields) Then
		      gBEAM.egs_msg.append "Error within MLCE2BEAM : number of fields does not match UBound of fields"
		      Return
		    end
		    
		    for i=1 to inum_fields
		      // Update index of field
		      cm.MLCE.Index(i-1)=MLC.Fields(i-1).Indexnum
		      for j=0 to inum_leaves-1
		        cm.MLCE.Field((i-1)*MLC.NumberofLeafPairs+j)=new Class_BEAM_CM_MLC_Leaf_Opening
		        leaf_a=egs_Input_CM_MLC_RoundedLeaf(MLC.Fields(i-1).Leaf_A(j),midpoint, cm.SYNCMLCE.leafradius,cm.SYNCMLCE.ssd,0)
		        leaf_b=egs_Input_CM_MLC_RoundedLeaf((-1*MLC.Fields(i-1).Leaf_B(j)), midpoint,cm.SYNCMLCE.leafradius,cm.SYNCMLCE.ssd,1)
		        
		        if ((leaf_a<-leaf_b) and (leaf_a <> 0.0) and (leaf_b <>0.0)) then
		          gBEAM.egs_msg.append "Error Leaves colliding in MLCE! ..."
		        end
		        cm.MLCE.Field((i-1)*MLC.NumberofLeafPairs+j).pos=leaf_a
		        cm.MLCE.Field((i-1)*MLC.NumberofLeafPairs+j).neg=leaf_b
		        cm.MLCE.Field((i-1)*MLC.NumberofLeafPairs+j).num=1
		      next
		    next
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Input_CM_MLCE_JB(cm as Class_Beam_Inputfile_CMs)
		  //===================================================
		  // MLCE sequence to BEAMnrc	for Elekta machines
		  // program to retrieve MLC and 
		  // put it into mlc file for sampling by BEAMnrc. 
		  // Initial leaf positions will be written to a *.egsinp file.                                                        
		  //
		  // Beamnrc input format from Jason Belec
		  //
		  // Authors
		  // A. Alexander (2012)  
		  // 
		  //===================================================
		  Dim mlc as Class_MLC
		  Dim i,j,inum_fields,inum_leaves as Integer
		  Dim leaf_a, leaf_b as Single
		  //===================================================
		  
		  MLC = new Class_MLC
		  MLC = gRTOG.Plan(Plan_Index).Beam(beam_number).mlc
		  
		  if MLC.NumberofFields=0 or UBound(MLC.Fields)<0 Then //load default setting
		    // 0 mode for static fields
		    CM.MLCE.mode=0
		    cm.MLCE.nfield=1
		    ReDim cm.MLCE.Field(cm.MLCE.nfield-1)
		    cm.MLCE.Field(0)=new Class_BEAM_CM_MLC_Leaf_Opening
		    CM.MLCE.Field(0).Neg=-20.3
		    CM.MLCE.Field(0).Pos=20.3
		    CM.MLCE.Field(0).Num=cm.MLCE.Num_leaf
		    
		  else // If we have an MLC file
		    
		    if InStr(MLC.MLC_Type,"Static")>0   Then
		      CM.MLCE.MODE=0
		    elseif InStr(MLC.MLC_Type,"Step")>0 Then
		      CM.MLCE.MODE=2
		    elseif InStr(MLC.MLC_Type,"Dynamic")>0 Then
		      CM.MLCE.MODE=1
		    end
		    
		    inum_fields=MLC.NumberofFields
		    inum_leaves=mlc.NumberofLeafPairs
		    ReDim cm.MLCE.Index(inum_fields-1)
		    ReDim cm.MLCE.Field(inum_fields*MLC.NumberofLeafPairs-1)
		    
		    for i=0 to UBound(cm.MLCE.Field)
		      cm.MLCE.Field(i)=new Class_BEAM_CM_MLC_Leaf_Opening
		    next
		    
		    if (inum_fields-1)<>UBound(MLC.Fields) Then
		      gBEAM.egs_msg.append "Error within MLCE2BEAM : number of fields does not match UBound of fields"
		      Return
		    end
		    
		    for i=1 to inum_fields
		      // Update index of field
		      cm.MLCE.Index(i-1)=MLC.Fields(i-1).Indexnum
		      for j=0 to inum_leaves-1
		        cm.MLCE.Field((i-1)*MLC.NumberofLeafPairs+j)=new Class_BEAM_CM_MLC_Leaf_Opening
		        
		        leaf_a=MLC.Fields(i-1).Leaf_A(j)
		        leaf_b=MLC.Fields(i-1).Leaf_B(j)
		        
		        if ((leaf_a<-leaf_b) and (leaf_a <> 0.0) and (leaf_b <>0.0)) then
		          gBEAM.egs_msg.append "Error Leaves colliding in MLCE! ..."
		        end
		        
		        cm.MLCE.Field((i-1)*MLC.NumberofLeafPairs+j).pos=leaf_a
		        cm.MLCE.Field((i-1)*MLC.NumberofLeafPairs+j).neg=leaf_b
		        cm.MLCE.Field((i-1)*MLC.NumberofLeafPairs+j).num=1
		      next
		    next
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Input_CM_MLCQ(cm as Class_Beam_Inputfile_CMs)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function egs_Input_CM_MLC_BackProjectionPositions(DICOMp as Single, zmin as Single, zmax as Single) As Single
		  //===================================================
		  // MLCE sequence to BEAMnrc	for Elekta machines
		  // program to retrieve MLC and 
		  // put it into mlc file for sampling by BEAMnrc. 
		  // Initial leaf positions will be written to a *.egsinp file.                                                        
		  //
		  // Beamnrc input format from Matlab script provided by Turki M
		  // 
		  // Authors
		  // Turki M and A. Alexander (2015)  
		  // 
		  //===================================================
		  Dim bb, midpoint as Single
		  //===================================================
		  
		  
		  midpoint=(zmin+zmax)/2
		  bb = DICOMp*midpoint/100
		  
		  
		  Return bb
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Input_CM_MLC_MLC2BEAM_Siemens(cm as Class_Beam_Inputfile_CMs)
		  //===================================================
		  // MLC sequence to BEAMnrc		
		  // program to retrieve MLC and 
		  // put it into mlc file for sampling by BEAMnrc. 
		  // Initial leaf positions will be written to a *.egsinp file.                                                        
		  // 
		  // Authors
		  // A. Alexander (2011)  
		  // 
		  //===================================================
		  Dim leaf_radius, z_field,z_MLC,zmin,zthick,leaf_a,leaf_b,index,temp as Single
		  Dim i,j,inum_fields,inum_leaves,offset,filtype,index_CM  as Integer
		  Dim MLC as Class_MLC
		  Dim BEAMMLC as Class_BEAM_CM_MLC
		  Dim one_line as String
		  Dim Zthick_Min(-1),real_thick, R_arc,RMAx_cm,Zthick_Plus(-1), Zmax_lowest, Zmin_Min(-1),TWidth,  Zmin_Plus(-1),Zmax_min(-1),Zmax_plus(-1) as Single
		  //===================================================
		  
		  BEAMMLC=cm.MLC
		  
		  zmin=BEAMMLC.ZMIN
		  zthick=BEAMMLC.zthick
		  leaf_radius=BEAMMLC.zfocus_ends
		  z_field= 100.0
		  inum_leaves=BEAMMLC.Num_leaf
		  z_MLC=zmin+zthick/2
		  R_arc=28.3000
		  real_thick=7.56900
		  //---------------------------------------------
		  
		  
		  MLC = new Class_MLC
		  MLC = gRTOG.Plan(Plan_Index).Beam(beam_number).mlc
		  
		  
		  ReDim Zthick_Min(inum_leaves-1)
		  ReDim Zthick_Plus(inum_leaves-1)
		  ReDim Zmin_Min(inum_leaves-1)
		  ReDim Zmax_plus(inum_leaves-1)
		  ReDim Zmax_min(inum_leaves-1)
		  ReDim Zmin_Plus(inum_leaves-1)
		  
		  
		  for j=0 to inum_leaves-1
		    Zmin_Min(j)=R_arc*(COS(ATAN(MLC.Fields(i-1).Leaf_A(j)/100)))
		    Zmin_Plus(j)=R_arc*(COS(ATAN(MLC.Fields(i-1).Leaf_B(j)/100)))
		    Zmax_min(j)=(R_arc+real_thick)*(COS(ATAN(MLC.Fields(i-1).Leaf_A(j)/100)))
		    Zmax_plus(j)=(R_arc+real_thick)*(COS(ATAN(MLC.Fields(i-1).Leaf_B(j)/100)))
		    Zthick_Min(j)=Zmax_min(j)-Zmin_Min(j)
		    Zthick_Plus(j)=Zmax_plus(j)-Zmin_Plus(j)
		  next
		  
		  zmin=1000000
		  for j=0 to UBound(Zmin_Plus)
		    if Zmin>Zmin_Plus(j) then
		      zmin=Zmin_Plus(j)
		    end
		    if zmin>Zmin_Min(j) Then
		      zmin=Zmin_Min(j)
		    end
		  next
		  
		  Zmax_lowest=-1000000
		  for j=0 to UBound(Zmin_Plus)
		    if Zmax_lowest<Zmax_Plus(j) then
		      Zmax_lowest=Zmax_Plus(j)
		    end
		    if Zmax_lowest<Zmax_Min(j) Then
		      Zmax_lowest=Zmax_Min(j)
		    end
		  next
		  
		  RMAx_cm=Zmax_lowest*TAN(ACOS(Zmax_lowest/(R_arc+real_thick))+36.8/180*3.1416)
		  
		  if InStr(Str(RMAx_cm),"nan")>0 or RMAx_cm<=0 Then
		    MsgBox "RMAX Value in DYNVMLC is below zero! for file "+Inputfile.title
		  end
		  
		  
		  temp=0
		  for j=0 to UBound(Zmin_Plus)
		    temp=Zmin_Plus(j)+Zmin_Min(j)+temp
		  next
		  Zmin=R_arc-(R_arc*(2*inum_leaves)-temp)/(2*inum_leaves)
		  
		  temp=0
		  for j=0 to UBound(Zmin_Plus)
		    temp=Zthick_Plus(j)+Zthick_Min(j)+temp
		  next
		  
		  zthick=real_thick-(real_thick*(2*inum_leaves)-temp)/(2*inum_leaves)
		  
		  TWidth=0.5*2*inum_leaves*zmin/100
		  
		  
		  for j=0 to inum_leaves-1
		    BEAMMLC.Field(j)=new Class_BEAM_CM_MLC_Leaf_Opening
		    BEAMMLC.Field(j).pos=zmin/100*MLC.Fields(i-1).Leaf_B(j)
		    BEAMMLC.Field(j).neg=-zmin/100*MLC.Fields(i-1).Leaf_A(j)
		    BEAMMLC.Field(j).num=1
		  next
		  
		  BEAMMLC.RMAX_CM=RMAx_cm
		  BEAMMLC.ZMIN=zmin
		  BEAMMLC.ZThick=Zthick
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function egs_Input_CM_MLC_RoundedLeaf(Nominal_Leaf as double, z_MLC as double, radius_leaf as double, z_field as double, mode as Integer) As double
		  //------------ ---------------------------
		  // Determine the DYNVMLC leaf postions from isocentric values
		  // This method accounts for the rounded leaf ends 
		  //
		  // 
		  // Update March 2011 Andrew Alexander
		  // Update November 2012 for MLC bank mode, B and A
		  //
		  //----------------------------------------
		  Dim res, A, B, C,correctleaf as Double
		  //----------------------------------------
		  if (Nominal_Leaf=0.0) Then
		    Return 0.0
		  end
		  A=(Nominal_Leaf*z_MLC)/z_field
		  B=Sqrt(A*A+z_MLC*z_MLC)
		  C=(B*radius_leaf)/(z_MLC)
		  res=C-radius_leaf
		  if mode=0 Then // for A bank leaves
		    correctleaf=A+res
		  elseif mode=1 Then // for  B bank leaves
		    correctleaf=A-res
		  end
		  return(correctleaf)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Input_CM_SLABS(CM as Class_Beam_Inputfile_CMs)
		  //--------------------------------------------
		  // Update CM SLABS
		  // 
		  //
		  //--------------------------------------------
		  Dim SLABS as Class_BEAM_CM_SLABS
		  //------------------------------------
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function egs_Input_CM_SYNCMLCE(cm as Class_Beam_Inputfile_CMs) As Boolean
		  //===================================================
		  // SYNCMLCE sequence to BEAMnrc	for Elekta machines
		  // program to retrieve MLC and 
		  // put it into mlc file for sampling by BEAMnrc. 
		  // Initial leaf positions will be written to a *.egsinp file.                                                        
		  //
		  // Beamnrc input format from Matlab script provided by Turki M
		  // 
		  // Authors
		  // Turki M and A. Alexander (2015)  
		  //===================================================
		  Dim mlc as Class_MLC
		  Dim i,j,inum_fields,inum_leaves as Integer
		  Dim leaf_a, leaf_b,nn as Single
		  Dim one_line as String
		  Dim midpoint as Double
		  //===================================================
		  
		  MLC = new Class_MLC
		  MLC = gRTOG.Plan(Plan_Index).Beam(beam_number).mlc
		  CM.SYNCMLCE.Title_CM="MMCTP updated SYNCMLCE CM within method egs_Input_CM_SYNCMLCE"
		  midpoint=(cm.SYNCMLCE.zmin+cm.SYNCMLCE.zmax)/2
		  
		  if mlc.NumberofFields=0 or UBound(MLC.Fields)<0 Then //load default setting
		    // 0 mode for static fields
		    CM.SYNCMLCE.MODE_SYNCMLCE=0
		    cm.SYNCMLCE.nfield=1
		    
		    ReDim cm.SYNCMLCE.Fields(0)
		    
		    cm.SYNCMLCE.Fields(0) = new Class_BEAM_CM_DYNVMLC_Fields
		    cm.SYNCMLCE.Fields(0).Leaves.Append new Class_BEAM_CM_DYNVMLC_Leaf_Opening
		    CM.SYNCMLCE.Fields(0).Leaves(0).Neg=-20.3
		    CM.SYNCMLCE.Fields(0).Leaves(0).Pos=20.3
		    CM.SYNCMLCE.Fields(0).Leaves(0).Num=cm.SYNCMLCE.Num_leaf
		    
		  else // If we have an MLC file
		    
		    if InStr(MLC.MLC_Type,"Static")>0   Then
		      cm.SYNCMLCE.MODE_SYNCMLCE=0
		    elseif InStr(MLC.MLC_Type,"Step")>0 Then
		      cm.SYNCMLCE.MODE_SYNCMLCE=2
		    elseif InStr(MLC.MLC_Type,"Dynamic")>0 Then
		      cm.SYNCMLCE.MODE_SYNCMLCE=1
		    end
		    
		    
		    if cm.SYNCMLCE.MODE_SYNCMLCE>0 Then
		      cm.SYNCMLCE.mlc_file=MC_file_name+str(beam_number+1)+".mlc"
		      one_line=gShells.Shells(egs_Shell_Index).egsnrc_folder_path
		      
		      if gShells.Shells(egs_Shell_Index).OS=3 Then
		        cm.SYNCMLCE.MLC_File=one_line+"\"+egs_BEAMnrc_dir+"\"+cm.SYNCMLCE.mlc_file
		      else
		        cm.SYNCMLCE.MLC_File=one_line+"/"+egs_BEAMnrc_dir+"/"+cm.SYNCMLCE.mlc_file
		      end
		    end
		    
		    
		    inum_fields=MLC.NumberofFields
		    inum_leaves=mlc.NumberofLeafPairs
		    ReDim cm.SYNCMLCE.Fields(inum_fields-1)
		    
		    for i=0 to UBound(cm.SYNCMLCE.Fields)
		      cm.SYNCMLCE.Fields(i)=new Class_BEAM_CM_DYNVMLC_Fields
		    next
		    
		    if (inum_fields-1)<>UBound(MLC.Fields) Then
		      gBEAM.egs_msg.append "Error within SYNCMLCE : number of fields does not match UBound of fields"
		      Return false
		    end
		    
		    
		    for i=1 to inum_fields
		      // Update index of field
		      cm.SYNCMLCE.Fields(i-1)=new Class_BEAM_CM_DYNVMLC_Fields
		      cm.SYNCMLCE.Fields(i-1).Index=MLC.Fields(i-1).Indexnum
		      ReDim cm.SYNCMLCE.Fields(i-1).Leaves(inum_leaves-1)
		      for j=0 to inum_leaves-1
		        leaf_a=egs_Input_CM_MLC_RoundedLeaf(MLC.Fields(i-1).Leaf_A(j),midpoint, cm.SYNCMLCE.leafradius,cm.SYNCMLCE.ssd,0)
		        leaf_b=egs_Input_CM_MLC_RoundedLeaf(-1*MLC.Fields(i-1).Leaf_B(j),midpoint, cm.SYNCMLCE.leafradius,cm.SYNCMLCE.ssd,1)
		        if ((leaf_a<-leaf_b) and (leaf_a <> 0.0) and (leaf_b <>0.0)) then
		          gBEAM.egs_msg.append "Error Leaves colliding in SYNCMLCE! ..."
		        end
		        cm.SYNCMLCE.Fields(i-1).Leaves(j)=new Class_BEAM_CM_DYNVMLC_Leaf_Opening
		        cm.SYNCMLCE.Fields(i-1).Leaves(j).pos=leaf_a
		        cm.SYNCMLCE.Fields(i-1).Leaves(j).neg=leaf_b
		        cm.SYNCMLCE.Fields(i-1).Leaves(j).num=1
		      next
		    next
		  end
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Input_CM_TOMOMLC(cm as Class_Beam_Inputfile_CMs)
		  //===================================================
		  // TOMO sequence to BEAMnrc
		  // program to retrieve MLC and
		  // put it into mlc variables for BEAMnrc.
		  // Initial leaf positions will be written to a *.egsinp file.
		  //
		  // Authors
		  // A. Alexander (2011)
		  //
		  //===================================================
		  Dim leaf_a_mlc,leaf_b_mlc,leaf_a,leaf_b,index as Single
		  Dim num_leaves,mlc_read,mlc_string  as String
		  Dim i,j,inum_leaves,offset,filtype,index_CM , num_fields as Integer
		  Dim MLC as Class_MLC
		  Dim one_line as String
		  //===================================================
		  MLC = new Class_MLC
		  MLC = gRTOG.Plan(Plan_Index).Beam(beam_number).mlc
		  inum_leaves=CM.TOMO.Numleaves
		  //---------------------------------------------
		  
		  ReDim cm.TOMO.Fields(UBound(MLC.Fields))
		  if InStr(MLC.MLC_Type,"Static")>0 or UBound(MLC.Fields)=0  Then
		    CM.TOMO.MODE_TOMOMLC=0
		    cm.TOMO.Title_CM="MMCTP Static Field"
		  elseif InStr(MLC.MLC_Type,"Step")>0 Then
		    CM.TOMO.MODE_TOMOMLC=1
		    cm.TOMO.Title_CM="MMCTP Dynamic Field"
		  end
		  
		  cm.TOMO.MLC_File_Name=MC_file_name+str(beam_number+1)+".mlc"
		  one_line=gShells.Shells(egs_Shell_Index).egsnrc_folder_path
		  cm.TOMO.MLC_File_Path=one_line+"/"+egs_BEAMnrc_dir+"/"+cm.TOMO.MLC_File_Name
		  
		  num_fields=MLC.NumberofFields
		  Redim cm.TOMO.Fields(num_fields-1)
		  for i=1 to num_fields
		    cm.TOMO.Fields(i-1)=new Class_BEAM_CM_DYNVMLC_Fields
		    ReDim cm.TOMO.Fields(i-1).leaves(inum_leaves-1)
		    // Write Index of field
		    cm.TOMO.Fields(i-1).Index=MLC.Fields(i-1).Indexnum
		    for j=0 to inum_leaves-1
		      cm.TOMO.Fields(i-1).leaves(j)=new Class_BEAM_CM_DYNVMLC_Leaf_Opening
		      //Update new leaf positions
		      if j=0 or j=inum_leaves-1 Then
		        cm.TOMO.Fields(i-1).leaves(j).pos=0
		        cm.TOMO.Fields(i-1).leaves(j).neg=0
		      else
		        cm.TOMO.Fields(i-1).leaves(j).pos=MLC.Fields(i-1).Leaf_A(j-1)
		        cm.TOMO.Fields(i-1).leaves(j).neg=MLC.Fields(i-1).Leaf_A(j-1)
		      end
		      cm.TOMO.Fields(i-1).leaves(j).num=1
		    next
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Input_CM_TOMOPYRAMIDS(CM as Class_Beam_Inputfile_CMs)
		  //--------------------------------------------
		  // Update CM TOMO PYRAMID Applicator
		  //
		  //
		  //--------------------------------------------
		  Dim x1,x2,y1,y2 as single
		  //------------------------------------
		  
		  
		  
		  
		  x1=gRTOG.Plan(Plan_Index).Beam(beam_number).Collimator.fields(0).x1
		  x2=gRTOG.Plan(Plan_Index).Beam(beam_number).Collimator.fields(0).x2
		  y1=gRTOG.Plan(Plan_Index).Beam(beam_number).Collimator.fields(0).y1
		  y2=gRTOG.Plan(Plan_Index).Beam(beam_number).Collimator.fields(0).y2
		  
		  cm.PYRAMIDS.Title_CM="MMCTP Pyramid setting for Tomo field : X "+Format(x1+x2,"-#.##")+", Y "+Format(y1+y2,"-#.##")
		  
		  // Update the Y Edges of the pyramid
		  if (y1-0.5)<0.2 Then
		    CM.PYRAMIDS.YFP(0) = 0.039
		    CM.PYRAMIDS.YBP(0) = 0.184
		    CM.PYRAMIDS.YFN(0) = -0.039
		    CM.PYRAMIDS.YBN(0) = -0.184
		  elseif (y1-1.25)<0.2 Then
		    CM.PYRAMIDS.YFP(0) = 0.099
		    CM.PYRAMIDS.YBP(0) = 0.415
		    CM.PYRAMIDS.YFN(0) = -0.099
		    CM.PYRAMIDS.YBN(0) = -0.415
		  elseif (y1 -2.5)<0.2 Then
		    CM.PYRAMIDS.YFP(0) = 0.211
		    CM.PYRAMIDS.YBP(0) = 0.72
		    CM.PYRAMIDS.YFN(0) = -0.211
		    CM.PYRAMIDS.YBN(0) = -0.72
		  end
		  
		  // Update the X Edges of the pyramid if tomo could move the X fieldsize
		  if (x1-0.5)<0.2 Then
		    'CM.PYRAMIDS.XFP(0) = 0.039
		    'CM.PYRAMIDS.XBP(0) = 0.184
		    'CM.PYRAMIDS.XFN(0) = -0.039
		    'CM.PYRAMIDS.XBN(0) = -0.184
		    'elseif (x1-1.25)<0.2 Then
		    'CM.PYRAMIDS.XFP(0) = 0.099
		    'CM.PYRAMIDS.XBP(0) = 0.415
		    'CM.PYRAMIDS.XFN(0) = -0.099
		    'CM.PYRAMIDS.XBN(0) = -0.415
		    'elseif (x1 -2.5)<0.2 Then
		    'CM.PYRAMIDS.XFP(0) = 0.211
		    'CM.PYRAMIDS.XBP(0) = 0.72
		    'CM.PYRAMIDS.XFN(0) = -0.211
		    'CM.PYRAMIDS.XBN(0) = -0.72
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Input_CM_VARMLC(cm as Class_Beam_Inputfile_CMs)
		  //===================================================
		  // VARMLC sequence to BEAMnrc
		  // program to retrieve MLC and
		  // put it into mlc file for sampling by BEAMnrc.
		  // Initial leaf positions will be written to a *.egsinp file.
		  //
		  // Authors
		  // A. Alexander (2011)
		  //
		  //===================================================
		  Dim leaf_radius, z_field,z_MLC,abut_gap,zmin,zthick,leaf_a_mlc,leaf_b_mlc,leaf_a,leaf_b,index as Single
		  Dim one_line,treatment_type,num_fields,num_leaves,mlc_read,temp,whole,mlc_string  as String
		  Dim i,inum_leaves,offset,filtype,index_CM  as Integer
		  Dim MLC as Class_MLC
		  //===================================================
		  
		  MLC = new Class_MLC
		  MLC = gRTOG.Plan(Plan_Index).Beam(beam_number).mlc
		  
		  abut_gap =MLC.Abutting_Gap/2.0
		  zmin=CM.VARMLC.ZMIN
		  zthick=CM.VARMLC.zthick
		  leaf_radius =CM.VARMLC.Leafradius
		  z_field   = gRTOG.Plan(Plan_Index).Beam(beam_number).Nominal_Isocenter
		  inum_leaves=CM.VARMLC.Numleaves
		  z_MLC=zmin+zthick/2
		  //---------------------------------------------
		  
		  
		  
		  for i=1 to inum_leaves
		    if (i-1)>=0 and (i-1)<=UBound(cm.VARMLC.MLC) Then
		      cm.VARMLC.MLC(i-1)=new Class_BEAM_CM_MLC_Leaf_Opening
		      CM.VARMLC.MLC(i-1).Neg=-20.3
		      CM.VARMLC.MLC(i-1).Pos=20.3
		      CM.VARMLC.MLC(i-1).Num= 1
		    else
		      gBEAM.egs_msg.append "Error within VARMLC 2 BEAMnrc : inum of leaves does not match bounds of VARMLC"
		      Return
		    end
		  next
		  
		  
		  if MLC.NumberofFields=0 or UBound(MLC.Fields)<0 Then //load default setting
		    // input leaf sequence for completely retracted MLC ---> Gabriela
		    
		  else // If we have an MLC file
		    if UBound(MLC.Fields)>0 Then
		      gBEAM.egs_msg.append "Error within VARMLC 2 BEAMnrc : number of fields greater than 1"
		      Return
		    end
		    
		    if mlc.NumberofLeafPairs<>cm.VARMLC.Numleaves Then
		      gBEAM.egs_msg.append "Error within VARMLC 2 BEAMnrc : number of MMCTP MLC leaves dose not match the number in BEAMnrc input file"
		      Return
		    end
		    
		    
		    for i=0 to inum_leaves-1
		      
		      leaf_a=MLC.Fields(0).Leaf_A(i)
		      leaf_b=-MLC.Fields(0).Leaf_B(i)
		      if ((leaf_a<leaf_b) and (leaf_a <> 0.0) and (leaf_b <>0.0)) then
		        gBEAM.egs_msg.append "Error Leaves colliding in VARMLC ..."
		      end
		      
		      leaf_a_mlc=egs_Input_CM_MLC_RoundedLeaf(leaf_a,z_MLC,leaf_radius,z_field,0)
		      leaf_b_mlc=egs_Input_CM_MLC_RoundedLeaf(leaf_b,z_MLC,leaf_radius,z_field,1)
		      
		      
		      // Place abutting gap between two leaves for leaves at are close to touching
		      if abs(leaf_a_mlc-leaf_b_mlc)<MLC.Abutting_Gap Then
		        leaf_a_mlc=leaf_a_mlc+abut_gap
		        leaf_b_mlc=leaf_b_mlc-abut_gap
		      end
		      
		      
		      cm.VARMLC.MLC(i).pos=leaf_a_mlc
		      cm.VARMLC.MLC(i).neg=leaf_b_mlc
		      cm.VARMLC.MLC(i).Num=1
		    next
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Input_CM_Wedge(CM as Class_Beam_Inputfile_CMs)
		  //---------------------------------------
		  // Method to find the right Static Wedge CM
		  // If there is no Wedge, use 15 and fill with air
		  //
		  //---------------------------------------
		  Dim i ,k,j as integer
		  Dim type, temp,wedge_egsinp,wedge_text(-1),wedge,wedge_rot,air,b_mode as String
		  Dim wed, we_rot as Boolean
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  //----------------------------------------
		  b_mode=gRTOG.Plan(Plan_Index).Beam(beam_number).beam_mode
		  wedge=gRTOG.Plan(Plan_Index).Beam(beam_number).Wedge_Angle
		  wedge_rot=gRTOG.Plan(Plan_Index).Beam(beam_number).Wedge_Rotation
		  type=gRTOG.Plan(Plan_Index).Beam(beam_number).Wedge_Type
		  
		  
		  air="AIR700ICRU"
		  
		  
		  wed=False
		  we_rot=false
		  
		  
		  if type="Static"  then
		    
		    for j=0 to UBound( gLinacs.All_Linacs)
		      if b_mode= gLinacs.All_Linacs(j).Mode then
		        for i=0 to UBound( gLinacs.All_Linacs(j).Wedges)
		          if InStr( gLinacs.All_Linacs(j).Wedges(i).Angle,Wedge)>0 then
		            wed=True
		            for k=0 to UBound( gLinacs.All_Linacs(j).Wedges(i).Rotations)
		              if InStr( gLinacs.All_Linacs(j).Wedges(i).Rotations(k),wedge_rot)>0 then
		                we_rot=True
		              end
		            next
		          end
		        next
		      end
		    Next
		    
		    
		    // IF THERE IS NO WEDGE, WE WILL REPLACE THE WEDGE CM WITH THE
		    // 15 LEFT
		    //if gRTOG.Plan(Plan_Index).Beam(beam_number).Wedge_Type
		    //wedge="15"
		    //wedge_rot="LEFT"
		    //wed=False
		    //end
		    
		    
		    
		    f=gPref.BEAMnrc_fi
		    f=f.Child(wedge+wedge_rot+".egsinp")
		    if f.Exists Then
		      ts=f.OpenAsTextFile
		      wedge_egsinp=ts.ReadAll
		      ts.Close
		      wedge_text=Split(wedge_egsinp,EndOfLine.UNIX)
		      cm.WEDGE.Read(wedge_text)
		      
		      'if wed=False then
		      'wedge_text(7)=air
		      'wedge_text(15)=air
		      'end
		      'for i=1 to UBound(wedge_text)
		      'cm.text(i-1)=wedge_text(i)
		      'next
		    else
		      MsgBox "Error in CM Static Wedge! Could not find wedge file "+f.Name
		    end
		    
		  else
		    cm.WEDGE.Status=0
		  end
		  
		  
		  cm.WEDGE.Write(CM)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub egs_Input_Header()
		  // -------------------------- ---------
		  // Creates BEAM input file up to the 1st CM
		  //
		  //---------------------------------------
		  Dim line,line2,temp,watch, temp2 ,header as String
		  Dim k, i as Integer
		  Dim temp_s as Single
		  //---------------------------------------
		  
		  header=MC_file_name+str(beam_number+1)+" BEAMnrc Simulation"+ChrB(10)
		  
		  if InStr(Inputfile.mlc_path,"mlc")>0 Then
		    header=header+"mlc_path"+ChrB(10)
		  end
		  
		  header=header+Inputfile.medium+ChrB(10)
		  //IWATCH,ISTORE,IRESTART,IO_OPT,IDAT,LATCH_OPTION,IZLAST
		  Watch=Format(Inputfile.IWATCH,"#")+", "+Format(Inputfile.ISTORE,"#")+", "+Format(Inputfile.IRESTART,"#")+", "+Format(Inputfile.IO_OPT,"#")+_
		  ", "+Format(Inputfile.IDAT,"#")+", "+Format(Inputfile.LATCH_OPTION,"#")+", "+Format(Inputfile.IZLAST,"#")+", IWATCH ETC."
		  header=header+watch+ChrB(10)
		  line=format(egs_num_histories,"#")+", "+str(Inputfile.RNG_1)+", "+str(Inputfile.RNG_2)+", "+str(Inputfile.Max_CPU_hr)+", "+str(Inputfile.IBRSPL)
		  
		  if Inputfile.IBRSPL=2 Then // We are using DBS
		    line=line+", "+str(Inputfile.NBRSPL)+", 0, "+str(Inputfile.ICM_SPLIT)+",  NCASE ETC."
		    // Determine the split radius
		    if Inputfile.auto_mmctp Then
		      temp_s=gRTOG.Plan(Plan_Index).Beam(beam_number).Collimator.fields(0).X1
		      if temp_s< gRTOG.Plan(Plan_Index).Beam(beam_number).Collimator.fields(0).X2 Then
		        temp_s=gRTOG.Plan(Plan_Index).Beam(beam_number).Collimator.fields(0).X2
		      end
		      if  temp_s< gRTOG.Plan(Plan_Index).Beam(beam_number).Collimator.fields(0).Y1 Then
		        temp_s=gRTOG.Plan(Plan_Index).Beam(beam_number).Collimator.fields(0).Y1
		      end
		      If  temp_s< gRTOG.Plan(Plan_Index).Beam(beam_number).Collimator.fields(0).Y2 Then
		        temp_s=gRTOG.Plan(Plan_Index).Beam(beam_number).Collimator.fields(0).Y2
		      end
		      Temp_s=Sqrt(temp_s*temp_s+temp_s*temp_s)+5
		      Inputfile.FS=Ceil(temp_s)
		    end
		    
		    line2=Format(Inputfile.FS,"-#.###e") +", "+str(Inputfile.ssd)+", "+str(Inputfile.ICMDBS)+", "
		    line2=line2+str(Inputfile.ZPLANEDBS)+", " +str(Inputfile.IRADDBS)+", "+str(Inputfile.ZRR_DBS)+",  DIRECTIONAL BREM OPTIONS"
		    header=header+line+ChrB(10)+line2+ChrB(10)
		    
		  elseif Inputfile.IBRSPL=0 Then
		    line=line+", 0, " +str(Inputfile.IRRLTT)+", "+str(Inputfile.ICM_SPLIT)+", NCASE ETC."
		    header=header+line+ChrB(10)
		  elseif Inputfile.IBRSPL=1 Then
		    line=line+", "+str(Inputfile.NBRSPL)+", " +str(Inputfile.IRRLTT)+", "+str(Inputfile.ICM_SPLIT)+", NCASE ETC."
		    header=header+line+ChrB(10)
		  end
		  
		  
		  if Inputfile.ICM_SPLIT>0 Then
		    line=Format(Inputfile.nsplit_phot,"#")+", "+Format(Inputfile.nsplit_elec,"#")+", NSPLIT"
		    header=header+line+ChrB(10)
		  end
		  
		  
		  
		  //-----------------------------------------------------
		  // ISOURCE Section Source=0
		  if Inputfile.ISOURC=0 Then
		    //Parallel Beam
		    line=str(Inputfile.IQIN)+", " +str(Inputfile.ISOURC)+", "+Format(Inputfile.RBEAM,"-#.###")+", "+Format(Inputfile.UINC,"#.###") _
		    +", "+Format(Inputfile.VINC,"#.###")+", "+Format(Inputfile.WINC,"#.###")+", 0, 0, 0,  , IQIN, ISOURCE + OPTIONS"
		    header=header+line+ChrB(10)
		    
		    
		  elseif Inputfile.ISOURC=1 Then //Point source 
		    line=str(Inputfile.IQIN)+", " +str(Inputfile.ISOURC)+", "+Format(Inputfile.DISTZ,"#.###")+", "+Format(Inputfile.RBEAM,"-#.###") _
		    +", "+Format(Inputfile.GAMMA,"#.###")+", "+Format(Inputfile.XINL,"#.###")+", "+Format(Inputfile.XINU,"#.###")+", "+_
		    Format(Inputfile.YINL,"#.###")+", "+Format(Inputfile.YINU,"#.###")+",  ,  IQIN, ISOURCE + OPTIONS"
		    header=header+line+ChrB(10)
		    
		    
		  elseif Inputfile.ISOURC=3 Then //UNIFORM ISOTROPICALLY RADIATING SOURCE WITHIN CMs
		    line=str(Inputfile.IQIN)+", " +str(Inputfile.ISOURC)+", "+Format(Inputfile.RMINBM,"-#.###")+", "+Format(Inputfile.RBEAM,"-#.###") _
		    +", "+Format(Inputfile.ZSMIN,"-#.###")+", "+Format(Inputfile.ZSMAX,"-#.###")+", "+Format(Inputfile.i_dsb,"-#.###")+", "+Format(Inputfile.DSB_Delta,"-#.###")+", 0.0, 0.0,  IQIN, ISOURCE + OPTIONS"
		    header=header+line+ChrB(10)
		    
		  elseif Inputfile.ISOURC=19 Then // Circular beam with 2D Gaussian X-Y Distribution source
		    line=Format(Inputfile.IQIN,"-#")+", " +Format(Inputfile.ISOURC,"#")+", "+Format(Inputfile.RBEAM,"-0.0##")+", "+Format(Inputfile.UINC,"0.0##") _
		    +", "+Format(Inputfile.VINC,"0.0##")+", "+Format(Inputfile.WINC,"0.0##")+", "+Format(Inputfile.sigma_src19,"0.0##")+", "+_
		    Format(Inputfile.RBEAMY,"-0.0##")+", "+Format(0,"0.0##")+", 0.0,  IQIN, ISOURCE + OPTIONS"
		    header=header+line+ChrB(10)
		    
		  elseif Inputfile.ISOURC=21 Then // Phase Space Source
		    line="0, " +Format(Inputfile.ISOURC,"#")+", "+Format(Inputfile.INIT_ICM,"#")+", "+Format(Inputfile.NRCYCL,"#") _
		    +", "+Format(Inputfile.IPARALLEL,"#")+", "+Format(Inputfile.PARNUM,"#")+", "+Format(Inputfile.ISRCDBS,"#")_
		    +", "+Format(Inputfile.RSRCDBS,"#.###")+", "+Format(Inputfile.SSDSRCDBS,"-#.###")+", "+Format(Inputfile.ZSRCDBS,"-#.###")+",  IQIN, ISOURCE + OPTIONS"
		    
		    temp2=Inputfile.SPCNAM
		    i=CountFields(temp2,"/")
		    if i>0 Then
		      temp2=NthField(temp2,"/",i)
		    end
		    
		    temp2=gShells.Shells(egs_Shell_Index).egsnrc_folder_path+"/"+egs_BEAMnrc_dir+"/"+temp2
		    Inputfile.SPCNAM=temp2
		    header=header+line+ChrB(10)+Inputfile.SPCNAM+ChrB(10)
		    
		  end
		  
		  if Inputfile.ISOURC<21 Then
		    header=header+Format(Inputfile.MONOEN,"#")+",  0=MONOENERGETIC 1=Spectrum"+ChrB(10)
		    if Inputfile.MONOEN=0 Then //0  MONOENERGETIC
		      header=header+Format(Inputfile.EIN,"-#.###")+ChrB(10)
		    Elseif Inputfile.MONOEN=1 Then //1 Spectrum
		      // Update Spectrum file path
		      
		      i=CountFields(Inputfile.Filnam,"/")
		      if i>0 Then
		        temp=Trim(NthField(Inputfile.Filnam,"/",i))
		        temp2=Trim(NthField(Inputfile.Filnam,"/",i-1))
		        if Len(temp)=0 Then
		          Inputfile.Filnam=temp2
		        else
		          Inputfile.Filnam=temp
		        end
		      end
		      Inputfile.Filnam=gBEAM.cc.dir+Inputfile.Filnam
		      header=header+Inputfile.Filnam+ChrB(10)
		      header=header+Format(Inputfile.IOUTSP,"#")+ChrB(10)
		    end
		  end
		  // END ISOURCE Section
		  //-----------------------------------------------------
		  
		  
		  // ECUT,PCUT,IREJCT,ESAVE
		  temp="0, 0, "+Format(Inputfile.ECUT,"#.##")+", "+Format(Inputfile.pCUT,"#.##")+", 0, " +Format(Inputfile.range_rejection,"-#")+", "+Format(Inputfile.ESAVE_Global,"0.0#")+", 0,  ECUT,PCUT,IREJCT,ESAVE"
		  header=header+temp+ChrB(10)
		  
		  //IFORCE,NFMIN,NFMAX,NFCMIN,NFCMAX
		  temp=Format(Inputfile.IFORCE,"#")+", "+Format(Inputfile.NFMIN,"#")+", "+Format(Inputfile.NFMAX,"#")+", "+_ 
		  Format(Inputfile.NFCMIN,"#")+", " +format(Inputfile.NFCMAX,"#")+",  PHOTON FORCING"
		  header=header+temp+ChrB(10)
		  
		  
		  // Write Scoring Options
		  header=header+Format(Inputfile.NSC_PLANES,"#")
		  for i=0 to Inputfile.NSC_PLANES-1
		    header=header+", "+Format(Inputfile.NSC(i).IPLANE_to_CM,"#")
		  next
		  header=header+",  SCORING INPUT "+ChrB(10)
		  
		  for i=0 to Inputfile.NSC_PLANES-1
		    header=header+Format(Inputfile.NSC(i).NSC_ZONES,"#")+", "+Format(Inputfile.NSC(i).MZONE_TYPE,"#")+","+ChrB(10)
		    if Inputfile.NSC(i).MZONE_TYPE=2 Then
		      header=header+Format(Inputfile.NSC(i).XMIN_ZOne,"-0.0##")+","+_
		      Format(Inputfile.NSC(i).XMAX_Zone,"-0.0##")+","+_
		      Format(Inputfile.NSC(i).YMin_Zone,"-0.0##")+","+_
		      Format(Inputfile.NSC(i).YMAX_Zone,"-0.0##")+","+_
		      Format(Inputfile.NSC(i).NX_Zone,"#")+","+_
		      Format(Inputfile.NSC(i).NY_Zone,"#")+","+ChrB(10)
		    else
		      if Inputfile.NSC(i).NSC_ZONES>0 Then // Bug fix May 2014 by William Davis
		        for k=0 to Inputfile.NSC(i).NSC_ZONES-1
		          header=header+Format(Inputfile.NSC(i).RSCORE_ZONE(k),"-0.0##")+","
		        next
		        header=header+ChrB(10)
		      end
		    end
		  next
		  // End Scoring planes
		  
		  
		  // DOSE COMPONENTS CALCULATION INPUT
		  header=header+Format(Inputfile.itdose_on,"#")+",  DOSE COMPONENTS"+ChrB(10)
		  if Inputfile.itdose_on=1 Then
		    header=header+Format(Inputfile.icm_contam,"#")+", "+Format(Inputfile.iq_contam,"#")+ChrB(10)
		    header=header+Format(Inputfile.lnexc,"#")+ChrB(10)
		    
		    if Inputfile.lnexc>0 Then
		      Break
		    end
		    
		    header=header+Format(Inputfile.LNINC,"#")+ChrB(10)
		    if Inputfile.LNINC>0 Then
		      Break
		    end
		  end
		  
		  header=header+Inputfile.z_of_front+", Z TO FRONT FACE"+ChrB(10)
		  
		  egs_Inputfile=header
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_Plan_Inputfile() As boolean
		  //----------------------------------
		  // Open BEAMnrc input file
		  // 1st look in plan folder
		  // 2nd look in template BEAMnrc input folder
		  //----------------------------------
		  Dim ts as TextInputStream
		  DIm f,passf as FolderItem
		  Dim good,tempopen as Boolean
		  //----------------------------------
		  
		  
		  f=new FolderItem
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child(MC_file_name+str(beam_number+1)+".egsinp")
		  tempopen=False
		  if f.Exists Then
		    ts=f.OpenAsTextFile
		    egs_Inputfile=ts.ReadAll
		    ts.Close
		    good=True
		    passf=gRTOG.Plan(Plan_Index).Path
		  else
		    good=Get_Template_Inputfile
		    if good=False Then
		      Return False
		    end
		    tempopen=True
		    passf=gPref.BEAMnrc_fi
		    
		  end
		  
		  if good Then
		    good =Read_Inputfile(passf)
		    
		    if tempopen Then // Apply default BEAMnrc settngs to template input file
		      Inputfile.IDAT=gBEAM.egs_idat
		      Inputfile.IZLAST=gBEAM.egs_izlast
		    end
		    
		  end
		  
		  Return good
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_Template_Inputfile() As boolean
		  //------------------------------------------------------
		  // Find the default BEAMnrc input file for the linac
		  //
		  //------------------------------------------------------
		  dim inputfile, name,energy, app,b_mode,mlc as string
		  dim k as integer
		  dim good as Boolean
		  dim beam_input_file as FolderItem
		  dim ts as TextInputStream
		  '========================================
		  
		  
		  name=gRTOG.Plan(Plan_Index).beam(beam_number).rt_name
		  energy=gRTOG.Plan(Plan_Index).Beam(beam_number).beam_energy
		  b_mode=gRTOG.Plan(Plan_Index).Beam(beam_number).beam_mode
		  app= gRTOG.Plan(Plan_Index).beam(beam_number).Aperture_ID
		  
		  good=False
		  for k=0 to UBound(gLinacs.All_Linacs)
		    if B_Mode=gLinacs.All_Linacs(k).Mode and _
		      gLinacs.All_Linacs(k).RT_name =name and _
		      gLinacs.All_Linacs(k).Energy= energy then
		      inputfile= gLinacs.All_Linacs(k).MC_BEAMnrc_input_file
		      
		      if Len(inputfile)>0 Then
		        good=True
		      else
		        good=False
		        gBEAM.egs_msg.append "Warning : Beam "+str(beam_number+1)+ " ("+name+" "+energy+") does not have a template input file defined within MMCTP."
		      end
		    end
		  next
		  
		  if good =False Then
		    gBEAM.egs_msg.append "Warning : Could not link beam "+str(beam_number+1)+ " ("+name+" "+energy+") with any template input file."
		    Return good
		  end
		  
		  try
		    beam_input_file=gPref.BEAMnrc_fi.child(inputfile)
		  Catch err As NilObjectException
		    //MsgBox("The path is invalid!")
		    
		  end try
		  
		  
		  if beam_input_file= nil then
		    gBEAM.egs_msg.append "Error : Could find template input file " +inputfile
		    Return False
		  end
		  
		  if beam_input_file.Exists=False then
		    gBEAM.egs_msg.append "Error : Could find template input file " +inputfile
		    Return False
		  end
		  
		  ts=beam_input_file.OpenAsTextFile
		  
		  if ts=nil then 
		    gBEAM.egs_msg.append "Error : Could not open template input file " +inputfile
		    Return False
		  end
		  egs_Inputfile=ts.ReadAll
		  ts.Close
		  
		  if good Then
		    good =Read_Inputfile(gPref.BEAMnrc_fi)
		  end
		  
		  Return good
		  
		  Exception err as UnsupportedFormatException
		    //MsgBox err.message+" Error No.: "+Str(err.ErrorNumber)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_Template_Inputfile_Name() As string
		  dim inputfileN, name,energy, app,b_mode,mlc as string
		  dim k as integer
		  dim good as Boolean
		  dim beam_input_file as FolderItem
		  dim ts as TextInputStream
		  '========================================
		  
		  
		  name=gRTOG.Plan(Plan_Index).beam(beam_number).rt_name
		  energy=gRTOG.Plan(Plan_Index).Beam(beam_number).beam_energy
		  b_mode=gRTOG.Plan(Plan_Index).Beam(beam_number).beam_mode
		  app= gRTOG.Plan(Plan_Index).beam(beam_number).Aperture_ID
		  
		  good=False
		  for k=0 to UBound(gLinacs.All_Linacs)
		    if B_Mode=gLinacs.All_Linacs(k).Mode and _
		      gLinacs.All_Linacs(k).RT_name =name and _
		      gLinacs.All_Linacs(k).Energy= energy then
		      inputfileN= gLinacs.All_Linacs(k).MC_BEAMnrc_input_file
		      Return InputfileN
		    end
		  next
		  
		  
		  if good =False Then
		    gBEAM.egs_msg.append "Warning : Could not link beam number "+str(beam_number+1)+ "("+name+" "+energy+") with any template input file."
		    Return ""
		  end
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_Template_pegs_file() As boolean
		  //------------------------------------------------------
		  //
		  //
		  //------------------------------------------------------
		  dim inputfile, name,energy, app,b_mode,mlc as string
		  dim k as integer
		  dim good as Boolean
		  dim beam_input_file as FolderItem
		  dim ts as TextInputStream
		  '========================================
		  
		  
		  name=gRTOG.Plan(Plan_Index).beam(beam_number).rt_name
		  energy=gRTOG.Plan(Plan_Index).Beam(beam_number).beam_energy
		  b_mode=gRTOG.Plan(Plan_Index).Beam(beam_number).beam_mode
		  app= gRTOG.Plan(Plan_Index).beam(beam_number).Aperture_ID
		  
		  good=False
		  for k=0 to UBound(gLinacs.All_Linacs)
		    if B_Mode=gLinacs.All_Linacs(k).Mode and _
		      gLinacs.All_Linacs(k).RT_name =name and _
		      gLinacs.All_Linacs(k).Energy= energy then
		      egs_pegs_file= gLinacs.All_Linacs(k).MC_BEAMnrc_pegs4
		      good=True
		    end
		  next
		  
		  
		  Return good
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Read_Inputfile(currF as FolderItem) As boolean
		  //-----------------------------------
		  // Reads the BEAMnrc *.egsinp input file
		  //
		  //-----------------------------------
		  Dim i,split_option,j,k as Integer
		  Dim ts as TextInputStream
		  DIm f as FolderItem
		  Dim good as Boolean
		  Dim cm as Class_Beam_Inputfile_CMs
		  Dim temp,temp2,one_line(-1),wholefile(-1) as String
		  //----------------------------------
		  
		  Inputfile=new Class_Beam_Inputfile
		  Inputfile.EGSnrc = new Class_EGSnrc_Inputs
		  
		  wholefile=Split(egs_Inputfile,EndOfLine.Unix)
		  
		  // Read header information untill 1st CM
		  i=0
		  
		  While InStr(wholefile(i),"start of")=0 
		    temp=wholefile(i)
		    if i=0 Then
		      Inputfile.title=temp
		    Elseif i=1 Then
		      if InStr(temp,"mlc")>0 Then
		        Inputfile.mlc_path=temp
		        Inputfile.medium=wholefile(i+1)
		      else
		        Inputfile.medium=temp
		      end
		    Elseif InStr(temp,"IWATCH")>0 then
		      //IWATCH,ISTORE,IRESTART,IO_OPT,IDAT,LATCH_OPTION,IZLAST
		      
		      Inputfile.IWATCH=val(NthField(temp,",",1))
		      Inputfile.ISTORE=val(NthField(temp,",",2))
		      Inputfile.IRESTART=val(NthField(temp,",",3))
		      Inputfile.IO_OPT=val(NthField(temp,",",4))
		      Inputfile.IDAT=val(NthField(temp,",",5))
		      Inputfile.LATCH_OPTION=val(NthField(temp,",",6))
		      Inputfile.IZLAST=val(NthField(temp,",",7))
		      
		      
		    Elseif InStr(temp,"IQIN")>0 then
		      // Source geometrical configuration input
		      
		      Inputfile.IQIN=val(NthField(temp,",",1))
		      Inputfile.ISOURC=val(NthField(temp,",",2))
		      
		      
		      // Parallel beam 
		      if Inputfile.ISOURC=0 Then
		        Inputfile.RBEAM=val(NthField(temp,",",3))
		        Inputfile.UINC=val(NthField(temp,",",4))
		        Inputfile.VINC=val(NthField(temp,",",5))
		        Inputfile.WINC=val(NthField(temp,",",6))
		        
		        
		        
		        // Point source
		      elseif Inputfile.ISOURC=1 Then
		        Inputfile.DISTZ=val(NthField(temp,",",3))
		        Inputfile.RBEAM=val(NthField(temp,",",4))
		        Inputfile.GAMMA=val(NthField(temp,",",5))
		        Inputfile.XINL=val(NthField(temp,",",6))
		        Inputfile.XINU=val(NthField(temp,",",7))
		        Inputfile.YINL=val(NthField(temp,",",8))
		        Inputfile.YINU=val(NthField(temp,",",9))
		        
		        
		        //ISOURC=3: Interior Isotropic Cylindrical Source
		      elseif Inputfile.ISOURC=3 Then
		        Inputfile.RMINBM=val(NthField(temp,",",3))
		        Inputfile.RBEAM=val(NthField(temp,",",4))
		        Inputfile.ZSMIN=val(NthField(temp,",",5))
		        Inputfile.ZSMAX=val(NthField(temp,",",6))
		        Inputfile.i_dsb=val(NthField(temp,",",7))
		        Inputfile.DSB_Delta=val(NthField(temp,",",8))
		        
		        
		        
		        // Circular beam with 2D Gaussian X-Y Distribution source
		      elseif Inputfile.ISOURC=19 Then
		        Inputfile.RBEAM=val(NthField(temp,",",3))
		        Inputfile.UINC=val(NthField(temp,",",4))
		        Inputfile.VINC=val(NthField(temp,",",5))
		        Inputfile.WINC=val(NthField(temp,",",6))
		        Inputfile.sigma_src19=val(NthField(temp,",",7))
		        Inputfile.RBEAMY=val(NthField(temp,",",8))
		        
		        
		        // Phase Space Source 
		      elseif Inputfile.ISOURC=21 Then
		        Inputfile.INIT_ICM=val(NthField(temp,",",3))
		        Inputfile.NRCYCL=val(NthField(temp,",",4))
		        Inputfile.IPARALLEL=val(NthField(temp,",",5))
		        Inputfile.PARNUM=val(NthField(temp,",",6))
		        Inputfile.ISRCDBS=val(NthField(temp,",",7))
		        Inputfile.RSRCDBS=val(NthField(temp,",",8))
		        Inputfile.SSDSRCDBS=val(NthField(temp,",",9))
		        Inputfile.ZSRCDBS=val(NthField(temp,",",10))
		        i=i+1
		        temp=wholefile(i)
		        Inputfile.SPCNAM=Trim(temp)
		        
		      end
		      
		      
		      // Source Energy
		      if Inputfile.ISOURC<21 Then
		        // Next Record if ISOURC < 21
		        i=i+1
		        temp=wholefile(i)
		        Inputfile.MONOEN=val(NthField(temp,",",1))
		        
		        if Inputfile.MONOEN =0 Then
		          // Next Record if MONOEN =0
		          i=i+1
		          temp=wholefile(i)
		          Inputfile.EIN=val(NthField(temp,",",1))
		        elseif Inputfile.MONOEN =1 Then
		          //Spectrum to be used
		          i=i+1
		          temp=wholefile(i)
		          Inputfile.Filnam=Trim(temp)
		          
		          i=i+1
		          temp=wholefile(i)
		          Inputfile.IOUTSP=val(NthField(temp,",",1))
		        end
		      end
		      
		      
		      
		    Elseif InStr(temp,"ECUT")>0 then
		      //ESTEPIN,SMAX,ECUTIN,PCUTIN,IDORAY,IREJCT_GLOBAL,ESAVE_GLOBAL,IFLUOR
		      
		      one_line=Split(temp,",")
		      if UBound(one_line)>5 Then
		        Inputfile.ECUT=val(one_line(2))
		        Inputfile.pCUT=val(one_line(3))
		        Inputfile.range_rejection=val(one_line(5))
		        Inputfile.ESAVE_Global=val(one_line(6))
		      end
		      
		    Elseif InStr(temp,"PHOTON FORCING")>0 then
		      //IFORCE,NFMIN,NFMAX,NFCMIN,NFCMAX
		      one_line=Split(temp,",")
		      if UBound(one_line)>3 Then
		        
		        Inputfile.IFORCE=val(one_line(0))
		        Inputfile.NFMIN=val(one_line(1))
		        Inputfile.NFMAX=val(one_line(2))
		        Inputfile.NFCMIN=val(one_line(3))
		        Inputfile.NFCMAX=val(one_line(4))
		      end
		      
		      
		      
		      
		      
		    Elseif InStr(temp,"SCORING INPUT")>0 then
		      Inputfile.NSC_PLANES=Val(NthField(temp," ",1))
		      ReDim Inputfile.NSC(Inputfile.NSC_PLANES-1)
		      for k=0 to Inputfile.NSC_PLANES-1
		        Inputfile.NSC(k)=new Class_BEAM_Inputfile_NSC_Planes
		        Inputfile.NSC(k).IPLANE_to_CM=Val(NthField(temp," ",2+k))
		      next
		      for k=0 to Inputfile.NSC_PLANES-1
		        i=i+1+k
		        temp=wholefile(i)
		        Inputfile.NSC(k).NSC_ZONES=Val(NthField(temp," ",1))
		        Inputfile.NSC(k).MZONE_TYPE=Val(NthField(temp," ",2))
		        if  Inputfile.NSC(k).NSC_ZONES>0 Then
		          
		          if  Inputfile.NSC(k).MZONE_TYPE=2 Then // For Grids
		            i=i+1+k
		            temp=wholefile(i)
		            Inputfile.NSC(k).XMIN_ZOne=val(NthField(temp,",",1))
		            Inputfile.NSC(k).XMAX_Zone=val(NthField(temp,",",2))
		            Inputfile.NSC(k).YMin_Zone=val(NthField(temp,",",3))
		            Inputfile.NSC(k).YMAX_Zone=val(NthField(temp,",",4))
		            Inputfile.NSC(k).NX_Zone=val(NthField(temp,",",5))
		            Inputfile.NSC(k).NY_Zone=val(NthField(temp,",",6))
		            
		            
		            
		          else //Square and anular
		            ReDim Inputfile.NSC(k).RSCORE_ZONE( Inputfile.NSC(k).NSC_ZONES-1)
		            i=i+1+k
		            temp=wholefile(i)
		            for j=0 to  Inputfile.NSC(k).NSC_ZONES-1
		              temp2=NthField(temp,",",j+1)
		              Inputfile.NSC(k).RSCORE_ZONE(j)=val(temp2)
		            next
		          end
		        end
		      next
		      
		      
		      
		      
		    Elseif InStr(temp,"DOSE COMPONENTS")>0 then
		      Inputfile.itdose_on=val(temp)
		      
		      if Inputfile.itdose_on=1 Then
		        i=i+1
		        temp=wholefile(i)
		        one_line=Split(temp,",")
		        
		        if UBound(one_line)>=0 Then
		          Inputfile.icm_contam=val(one_line(0))
		        end
		        
		        if UBound(one_line)>=1 Then
		          Inputfile.iq_contam=val(one_line(1))
		        end
		        
		        i=i+1
		        temp=wholefile(i)
		        Inputfile.lnexc=val(temp)
		        
		        if Inputfile.lnexc>0 Then
		          Break
		        end
		        
		        i=i+1
		        temp=wholefile(i)
		        Inputfile.LNINC=val(temp)
		        
		        if Inputfile.LNINC>0 Then
		          Break
		        end
		        
		        
		      end
		      
		      
		    Elseif InStr(temp,"Z TO FRONT FACE")>0 then
		      Inputfile.z_of_front=trim(NthField(temp,",",1))
		    elseif InStr(temp,"NCASE ETC")>0 then
		      one_line=Split(temp,",")
		      Inputfile.RNG_1=val(one_line(1))
		      Inputfile.RNG_2=val(one_line(2))
		      Inputfile.Max_CPU_hr=val(one_line(3))
		      Inputfile.IBRSPL=val(one_line(4))
		      Inputfile.NBRSPL=val(one_line(5))
		      Inputfile.IRRLTT=val(one_line(6))
		      Inputfile.ICM_SPLIT=val(one_line(7))
		      if Inputfile.IBRSPL=2 Then //Directional Brem Splitting or ..
		        i=i+1
		        temp=wholefile(i)
		        one_line=Split(temp,",")
		        Inputfile.fs=val(one_line(0))
		        Inputfile.ssd=val(one_line(1))
		        Inputfile.ICMDBS=val(one_line(2))
		        Inputfile.ZPLANEDBS=val(one_line(3))
		        Inputfile.IRADDBS=val(one_line(4))
		        Inputfile.ZRR_DBS=val(one_line(5))
		        
		      elseif Inputfile.IBRSPL=0 Then // no brem splitting
		        
		      elseif Inputfile.IBRSPL=1 Then // with uniform brem splitting
		        
		      end
		      
		      //Next record (if ICM_SPLIT>0)
		      //***********
		      if Inputfile.ICM_SPLIT>0 Then
		        i=i+1
		        temp=wholefile(i)
		        one_line=Split(temp,",")
		        Inputfile.nsplit_phot=val(one_line(0))
		        Inputfile.nsplit_elec=val(one_line(1))
		      end
		      
		      
		      
		      
		    end
		    i=i+1
		    
		    if i>UBound(wholefile) then // Exit if no CMs are found
		      Exit
		    end
		  wend
		  
		  
		  //===================================
		  
		  //Start of CMs 
		  
		  for i=i to UBound(wholefile)
		    temp=wholefile(i)
		    if InStr(temp,"start of CM")>0 Then
		      cm =new Class_Beam_Inputfile_CMs
		      //cm.Title=trim(Temp)
		      
		      While InStr(temp,"*")>0 
		        Temp=Replace(Temp,"*","")
		      Wend
		      Temp=Trim(Temp)
		      
		      cm.CM_Names=Trim(NthField(Temp," ",4))
		      cm.CM_Identifier=Trim(NthField(Temp," ",7))
		      
		      
		      for j=i+1 to UBound(wholefile)
		        temp=Trim(wholefile(j))
		        if InStr(temp,"start of CM")>0 or InStr(temp,"end of all")>0 Then
		          Inputfile.CMs.Append cm
		          i=j-1
		          exit
		        else
		          cm.text.Append temp
		        end
		      next
		      
		    elseif InStr(temp,"end of all")>0 Then
		      exit
		    end
		  next
		  
		  
		  //===================================
		  // Start Reading All CM modules settings
		  //===================================
		  Inputfile.Read_CMs(beam_number, currF)
		  
		  
		  //===================================
		  // Start Reading EGS settings
		  //===================================
		  Inputfile.EGSnrc.Read_EGSnrc_Inputs(wholefile)
		  
		  
		  
		  //--------Readin Rejection plane ------------------
		  for i=0 to UBound(wholefile)
		    if InStr(wholefile(i),"Use a rejection plane")>0 Then
		      temp=wholefile(i)
		      temp=Trim(NthField(Temp,"=",2))
		      if InStr(temp,"On")>0 Then
		        Inputfile.USE_REJPLN=1
		      else
		        Inputfile.USE_REJPLN=0
		      end
		      
		    elseif InStr(wholefile(i),"Z(cm) from zero reference plane")>0 Then
		      temp=wholefile(i)
		      temp=Trim(NthField(Temp,"=",2))
		      Inputfile.Z_REJPLN=val(temp)
		    end
		  next
		  
		  Return True
		  //---------------------------------------------
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Write_Inputfile(bversion as String) As boolean
		  //===================================
		  // Makes BEAMnrc input file
		  // PatientID_P#B#.egsinp and puts it in the PLAN directory
		  //
		  //
		  //===================================
		  Dim beam_output as FolderItem
		  Dim temp,file_name as String
		  Dim write_ts as TextOutputStream
		  Dim good,mm as Boolean
		  Dim i,k as Integer
		  //====================================
		  
		  good=True
		  
		  // Input main EGS variables
		  egs_Input_Header
		  
		  // Input CM variables
		  for i=0 to UBound(Inputfile.CMs)
		    // edit the following CMs 
		    if Inputfile.CMs(i).CM_Names="JAWS" then
		      egs_Input_CM_Jaws(Inputfile.CMs(i),gLinacs.All_Linacs(egs_linac_index).Type)
		      Inputfile.CMs(i).JAWS.Write(Inputfile.CMs(i))
		      
		    elseif Inputfile.CMs(i).CM_Names="TOMOMLC" then
		      egs_Input_CM_TOMOMLC(Inputfile.CMs(i))
		      Inputfile.CMs(i).TOMO.Write_String(Inputfile.CMs(i))
		      
		    elseif Inputfile.CMs(i).CM_Names="DYNVMLC" or Inputfile.CMs(i).CM_Names="SYNCVMLC" Then
		      if  Inputfile.CMs(i).CM_Identifier="MLC" and gLinacs.All_Linacs(egs_linac_index).Type=1 then
		        egs_Input_CM_DYNVMLC_MLC2BEAM_Varian(Inputfile.CMs(i))
		      elseif gLinacs.All_Linacs(egs_linac_index).Type=2 then
		        egs_Input_CM_DYNVMLC_MLC2BEAM_Siemens(Inputfile.CMs(i))
		      end
		      Inputfile.CMs(i).DYNVMLC.Write_String(Inputfile.CMs(i))
		      
		    elseif Inputfile.CMs(i).CM_Names="MLCQ" then
		      egs_Input_CM_MLCQ(Inputfile.CMs(i))
		      Inputfile.CMs(i).MLCQ.write_string(Inputfile.CMs(i))
		      
		    elseif Inputfile.CMs(i).CM_Names="MLCE" then
		      if Inputfile.CMs(i).CM_Identifier="Ottawa-MLC" Then
		        egs_Input_CM_MLCE_JB(Inputfile.CMs(i))
		      else
		        egs_Input_CM_MLCE(Inputfile.CMs(i))
		      end
		      
		      Inputfile.CMs(i).MLCE.write_string(Inputfile.CMs(i),Inputfile.CMs(i).CM_Identifier)
		      
		      
		    elseif Inputfile.CMs(i).CM_Names="SYNCMLCE" then
		      good=egs_Input_CM_SYNCMLCE(Inputfile.CMs(i))
		      Inputfile.CMs(i).SYNCMLCE.write_string(Inputfile.CMs(i),beam_number)
		      
		      if good=False Then
		        gBEAM.egs_msg.append "Error within egs_Input_CM_SYNCMLCE, exiting Write Inputifle"
		        Return good
		      end
		      
		    elseif Inputfile.CMs(i).CM_Names="WEDGE" then
		      egs_Input_CM_Wedge(Inputfile.CMs(i))
		      
		    elseif Inputfile.CMs(i).CM_Names="APPLICAT" then
		      egs_Input_CM_APPLICAT(Inputfile.CMs(i))
		      
		    elseif Inputfile.CMs(i).CM_Names="DYNJAWS" or  Inputfile.CMs(i).CM_Names="SYNCJAWS" Then
		      egs_Input_CM_DYNJAWS(Inputfile.CMs(i).DYNJAWS,bversion)
		      // Write Settings to Text
		      Inputfile.CMs(i).DYNJAWS.write(Inputfile.CMs(i).text)
		      
		    elseif Inputfile.CMs(i).CM_Names="BLOCK" Then
		      egs_Input_CM_BLOCK(Inputfile.CMs(i))
		      //Write Settings to text
		      Inputfile.CMs(i).BLOCK.Write(Inputfile.CMs(i).text)
		      
		    elseif Inputfile.CMs(i).CM_Names="SLABS" Then
		      egs_Input_CM_SLABS(Inputfile.CMs(i))
		      // Write Settings to Text
		      Inputfile.CMs(i).SLABS.write(Inputfile.CMs(i))
		      
		    elseif Inputfile.CMs(i).CM_Names="MLC" Then
		      if gLinacs.All_Linacs(egs_linac_index).Type=1 then
		        egs_Input_CM_MLC(Inputfile.CMs(i))
		      elseif gLinacs.All_Linacs(egs_linac_index).Type=2 then
		        egs_Input_CM_MLC_MLC2BEAM_Siemens(Inputfile.CMs(i))
		      end
		      // Write Settings to Text
		      Inputfile.CMs(i).MLC.Write_String(Inputfile.CMs(i))
		      
		    elseif Inputfile.CMs(i).CM_Names="ARCCHM" Then
		      Inputfile.CMs(i).ARCCHM.Write(Inputfile.CMs(i))
		      
		    elseif Inputfile.CMs(i).CM_Names="CONESTAK" Then
		      mm=egs_Input_CM_CONSTAK(Inputfile.CMs(i))
		      // Write settings to text
		      Inputfile.CMs(i).CONESTAK.Write(Inputfile.CMs(i))
		      
		      
		      
		    elseif Inputfile.CMs(i).CM_Names="VARMLC" Then
		      egs_Input_CM_VARMLC(Inputfile.CMs(i))
		      Inputfile.CMs(i).VARMLC.Write_String(Inputfile.CMs(i))
		      
		    elseif Inputfile.CMs(i).CM_Names="PYRAMIDS" Then
		      if  Inputfile.CMs(i).CM_Identifier="jaw" and gLinacs.All_Linacs(egs_linac_index).Type=4 Then
		        egs_Input_CM_TOMOPYRAMIDS(Inputfile.CMs(i))
		      end
		      Inputfile.CMs(i).PYRAMIDS.Write(Inputfile.CMs(i))
		    end
		    
		    
		    temp="*********** start of CM "+Inputfile.CMs(i).CM_Names+" with identifier "+Inputfile.CMs(i).CM_Identifier+"  ***********"
		    // Write CMs 
		    egs_Inputfile=egs_Inputfile+temp+EndOfLine.Unix
		    for k=0 to UBound(Inputfile.cms(i).text)
		      egs_Inputfile=egs_Inputfile+Inputfile.cms(i).text(k)+EndOfLine.Unix
		    next
		    
		  next
		  
		  egs_Inputfile=egs_Inputfile+"*********************end of all CMs*****************************"+EndOfLine.Unix
		  
		  // Add the EGSnrc parameter
		  egs_Inputfile=egs_Inputfile+Inputfile.EGSnrc.Write_EGSnrc_Inputs
		  
		  //----------- Inputs for Rejection plane -----------------------------------
		  if Inputfile.USE_REJPLN=1 Then
		    egs_Inputfile=egs_Inputfile+":Start DBS rejection plane:"+EndOfLine.UNIX+EndOfLine.UNIX
		    egs_Inputfile=egs_Inputfile+"Use a rejection plane= On"+EndOfLine.UNIX
		    egs_Inputfile=egs_Inputfile+"Z(cm) from zero reference plane= "+Format(Inputfile.Z_REJPLN,"-#.#####")+EndOfLine.UNIX+EndOfLine.UNIX
		    egs_Inputfile=egs_Inputfile+":Stop DBS rejection plane:"+EndOfLine.UNIX+"#########################"+EndOfLine.UNIX
		  end //------------------------------------
		  
		  
		  
		  // Finished Input file
		  egs_Inputfile=ReplaceLineEndings(egs_Inputfile,EndOfLine.Unix)
		  gBEAM.egs_msg.append file_name+" input file created in memory"
		  
		  
		  // Write new Beam input file to disk
		  file_name=MC_file_name+Str(beam_number+1)+".egsinp"
		  beam_output=gRTOG.Plan(Plan_Index).path
		  beam_output=beam_output.child(file_name)
		  if beam_output.Exists Then
		    beam_output.Delete
		  end
		  beam_output=new FolderItem(beam_output)
		  write_ts=beam_output.CreateTextFile
		  write_ts.Write(egs_Inputfile)
		  write_ts.Close
		  gBEAM.egs_msg.append file_name+ " input file saved to disk "
		  
		  
		  Return good
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		#tag Note
			Used to set queue selection to automatic (true) or manual (false)
		#tag EndNote
		auto_queue As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Flag set to true is test beam returns an error
		#tag EndNote
		Beamnrc_error As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			beam number index within plan, beam_number starts at 0 index
		#tag EndNote
		beam_number As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Flag to auto run calculation
		#tag EndNote
		calculate As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			flag set true is addphsp reports "Done" within addphsp output
		#tag EndNote
		egs_AddPhsp_Finished As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_auto_shell As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			number of active jobs
		#tag EndNote
		egs_BEAMnrc_active_jobs As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			beamnrc folder within egs home
		#tag EndNote
		egs_BEAMnrc_dir As String
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			flag set true is calculation has started
		#tag EndNote
		egs_BEAMnrc_started As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			value = "CPUTIME per history" within egslog file
		#tag EndNote
		egs_CPU_time_per_hist As single = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Desired phsp particle density, used to calculate the number of histories
		#tag EndNote
		egs_desired_phsp_particle_density As Integer = 500000
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			name of input file
		#tag EndNote
		egs_Inputfile As string
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			number of jobs to split simulation
		#tag EndNote
		egs_jobs As Integer = 8
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			linac index within all configured linacs, BEAM.pref file
		#tag EndNote
		egs_linac_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Number of histories to run
		#tag EndNote
		egs_num_histories As int64 = 10000000
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Number of particles per history
			
			calculated by
			math=gBEAM.beams(gg.beam_num).egs_phsp_num_particles/StartNohist
			gBEAM.beams(gg.beam_num).egs_particle_per_history=math
		#tag EndNote
		egs_particle_per_history As single = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Pegs file
		#tag EndNote
		egs_pegs_file As string
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			If the phsp file is real (false) or a link (true)
		#tag EndNote
		egs_Phsp_link As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Variable to read phsp file with BEAMDP,
			set true once the phsp file has been read.
		#tag EndNote
		egs_Phsp_Lookup As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Name of phsp file
		#tag EndNote
		egs_Phsp_name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Number of particles in phsp file
		#tag EndNote
		egs_Phsp_Num_Particles As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Number of Photons in phsp file
		#tag EndNote
		egs_Phsp_Num_Photons As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Variable to search phsp database, false if search has not occured
		#tag EndNote
		egs_Phsp_Search As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			size in bytes of phsp file
		#tag EndNote
		egs_Phsp_Size As int64
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			progress of simulation
			
			-1=Not started
			Progress betwen 0:100%
		#tag EndNote
		egs_progress As single = -1
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			simulation queue
		#tag EndNote
		egs_queue As string = "medium"
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			name of shell for simulation
		#tag EndNote
		egs_Shell As String
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			shell index for simulation
		#tag EndNote
		egs_Shell_Index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			simulation time
		#tag EndNote
		egs_Sim_Time As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			simulation start time
		#tag EndNote
		egs_Start_Time As string
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			BEAMnrc input file
		#tag EndNote
		Inputfile As Class_BEAM_Inputfile
	#tag EndProperty

	#tag Property, Flags = &h0
		lockfile_seen As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Number of test histories
		#tag EndNote
		Num_test_hist As Integer = 15000
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Array of split w files, uesed to determine if split files have finished properly.
		#tag EndNote
		w_files(-1) As boolean
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="auto_queue"
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Beamnrc_error"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="beam_number"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="calculate"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_AddPhsp_Finished"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_auto_shell"
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_BEAMnrc_active_jobs"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_BEAMnrc_dir"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_BEAMnrc_started"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_CPU_time_per_hist"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_desired_phsp_particle_density"
			Group="Behavior"
			InitialValue="500000"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_Inputfile"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_jobs"
			Group="Behavior"
			InitialValue="2"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_linac_index"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_num_histories"
			Group="Behavior"
			InitialValue="10000000"
			Type="int64"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_particle_per_history"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_pegs_file"
			Group="Behavior"
			InitialValue="combination"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_phsp_link"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_Phsp_Lookup"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_phsp_name"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_phsp_num_particles"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_phsp_num_photons"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_Phsp_Search"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_Phsp_Size"
			Group="Behavior"
			Type="int64"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_progress"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_queue"
			Group="Behavior"
			InitialValue="auto"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_Shell"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_Shell_Index"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_Sim_Time"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_Start_Time"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
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
			Name="lockfile_seen"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Num_test_hist"
			Group="Behavior"
			InitialValue="15000"
			Type="Integer"
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
