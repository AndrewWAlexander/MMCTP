#tag Class
Protected Class RTOG_Plan
	#tag Method, Flags = &h0
		Sub Add_Beam()
		  //========================
		  // Add one Beam
		  //========================
		  Dim i as integer
		  Dim b as RTOG_Beam_Geometry
		  //========================
		  
		  
		  b=new RTOG_Beam_Geometry
		  b.Make_New
		  
		  
		  i=UBound(Beam)
		  b.Beam_Num=i+2
		  b.Plan_ID=Plan_ID
		  Beam.Append b
		  
		  for i=0 to UBound(Beam)
		    Beam(i).Beam_Num=i+1
		  next
		  
		  //Write_McGill_Beam
		  Save_Plan=True
		  MC_AddBeam
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Delete_Beam(num as integer)
		  //=====================
		  // Delete one beam
		  //=====================
		  dim i as Integer
		  //=====================
		  
		  if num>=0 and num<=UBound(Beam) Then
		    
		    Beam.Remove(num)
		    MC_DeleteBeam(num)
		    for i=0 to UBound(Beam)
		      Beam(i).Beam_Num=i+1
		    next
		    Save_Plan=True
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Delete_Dose(p as integer, d as integer)
		  //=====================
		  // Delete one dose distrubtion
		  //=====================
		  Dim f  as FolderItem
		  Dim name as string
		  //=====================
		  
		  f=gRTOG.Plan(p).Path
		  name = gRTOG.Plan(p).Dose(d).dose_name
		  
		  f=f.Child(name+".Dose")
		  
		  if f.Exists then
		    f.Delete
		  end
		  
		  gRTOG.Plan(p).Dose.remove d
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_Linac_index(beam_index as Integer) As Integer
		  //---------------------------------------------
		  // Updates the linac properties to the MC variables
		  //
		  //---------------------------------------------
		  Dim linac,eng,mode as String
		  Dim j as Integer
		  //---------------------------------------------
		  
		  
		  
		  
		  
		  for j=0 to UBound(gLinacs.All_Linacs)
		    linac=gLinacs.All_Linacs(j).RT_name
		    mode=gLinacs.All_Linacs(j).Mode
		    eng=gLinacs.All_Linacs(j).Energy
		    
		    if linac=gRTOG.Plan(Plan_Index).Beam(beam_index).rt_name and _
		      eng =gRTOG.Plan(Plan_Index).Beam(beam_index).beam_energy and _
		      mode=gRTOG.Plan(Plan_Index).Beam(beam_index).beam_mode then
		      
		      Return j
		    end // Linac found
		  next // Next Linac
		  
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Import_DICOM_Dose(RT_Doses as Class_DICOM_RTDose, xix as Single, yiy as Single) As Boolean
		  //--------------------------------------------
		  // Import one DICOM DOSE file into McGill RT format
		  //
		  //--------------------------------------------
		  Dim dd as RTOG_Dose_Distribution
		  Dim Xx,yy,test,zpos(-1),vv as Single
		  Dim h,k,dicom_index_pixel as Integer
		  Dim data as RTOG_Dose_Plane
		  //--------------------------------------------
		  
		  dd = new RTOG_Dose_Distribution
		  dd.Size_of_Dimension1=RT_Doses.columns
		  dd.Size_of_Dimension2=RT_Doses.rows
		  dd.Size_of_Dimension3=RT_Doses.NumberofFrames
		  dd.SOP_Instance_UID=RT_Doses.SOPInstanceUID
		  dd.AcquisitionDate=val(RT_Doses.AcquistionDate)
		  dd.AcquisitionTime=val(RT_Doses.AcquistionTime)
		  dd.Series_Number=val(RT_Doses.SeriesNumber)
		  
		  // Apply cosine and image offsets
		  Xx=cdbl(NthField(RT_Doses.ImageOrientationPatient,"\",1))
		  Yy=cdbl(NthField(RT_Doses.ImageOrientationPatient,"\",5))
		  
		  
		  test=val(NthField(RT_Doses.ImagePositionPatient,"\",1))/10*xx
		  dd.Coord_1_1st_point= test
		  
		  test=val(NthField(RT_Doses.ImagePositionPatient,"\",2))/10 *yy
		  dd.Coord_2_1st_point= test 
		  
		  test=val(NthField(RT_Doses.ImagePositionPatient,"\",3))
		  dd.Coord_3_1st_point=test
		  
		  dd.Horizontal_Grid=val(NthField(RT_Doses.PixelSpacing,"\",1))/10
		  dd.Vertical_Grid=val(NthField(RT_Doses.PixelSpacing,"\",2))/10
		  
		  
		  // Commented out 2015 July to get HSP dicom dose to import properly
		  //if xix=-1 Then
		  //dd.Coord_1_1st_point=-1*(dd.Coord_1_1st_point+dd.Size_of_Dimension1*dd.Horizontal_Grid)
		  //end
		  //if yiy=-1 Then
		  //dd.Coord_2_1st_point=-1*(dd.Coord_2_1st_point+dd.Size_of_Dimension2*dd.Vertical_Grid)
		  //end
		  
		  if RT_Doses.FrameIncrementPointer="3004000C" Then
		    //if val(RT_Doses.SliceThickness)=0 Then
		    dd.Depth_Grid=val(NthField(RT_Doses.GridFrameOffsetVector,"\",2))/10-val(NthField(RT_Doses.GridFrameOffsetVector,"\",1))/10
		  else
		    dd.Depth_Grid=val(RT_Doses.SliceThickness)/10
		  end
		  
		  dd.Dose_Comment=RT_Doses.DoseComment
		  dd.Dose_Units=RT_Doses.DoseUnits
		  dd.engine=RT_Doses.Manufacturer+RT_Doses.SeriesDescription
		  dd.Series_Number=val(RT_Doses.SeriesNumber)
		  dd.SumType=RT_Doses.DoseSummationType
		  
		  if UBound(RT_Doses.ReferencedRTPSequence)>=0 Then
		    if RT_Doses.ReferencedRTPSequence(0)<> nil Then
		      if RT_Doses.ReferencedRTPSequence(0).ReferencedFractionGroupSequence<> nil Then
		        if RT_Doses.ReferencedRTPSequence(0).ReferencedFractionGroupSequence.ReferencedBeamSequence<> nil Then
		          dd.Beam_ID=str(RT_Doses.ReferencedRTPSequence(0).ReferencedFractionGroupSequence.ReferencedBeamSequence.Referencedbeamnumber)
		        end
		      end
		    end
		  end
		  
		  if RT_Doses.DoseSummationType="BEAM" Then
		    dd.dose_name=dd.engine+"-"+"-"+dd.Beam_ID+"-"+RT_Doses.DoseComment
		  else
		    dd.dose_name=dd.engine+"-"+"-"+RT_Doses.DoseComment
		  end
		  
		  While InStr(dd.dose_name,",")>0
		    dd.dose_name=Replace(dd.dose_name,",","")
		  Wend
		  While InStr(dd.dose_name," ")>0
		    dd.dose_name=Replace(dd.dose_name," ","")
		  Wend
		  
		  if Len(dd.engine)>8 Then
		    dd.engine="DICOM"
		  end
		  
		  ReDim dd.Dose_Distribution(dd.Size_of_Dimension3-1)
		  
		  for h=0 to dd.Size_of_Dimension3-1
		    data=new RTOG_Dose_Plane
		    
		    test=val(NthField(RT_Doses.GridFrameOffsetVector,"\",h+1))
		    
		    if dd.Coord_3_1st_point= val(NthField(RT_Doses.GridFrameOffsetVector,"\",1)) Then
		      data.z = test/10
		    else
		      data.z =dd.Coord_3_1st_point/10+dd.Depth_Grid*h
		    end
		    
		    ReDim data.Errors(dd.Size_of_Dimension1*dd.Size_of_Dimension2-1)
		    
		    for k=0 to dd.Size_of_Dimension1*dd.Size_of_Dimension2-1
		      
		      if xix=1 and yiy=1 Then
		        dicom_index_pixel=k+h*dd.Size_of_Dimension1*dd.Size_of_Dimension2
		      else
		        // Commented out 2015 July to get HSP dicom dose to import properly
		        //dicom_index_pixel=(dd.Size_of_Dimension1*dd.Size_of_Dimension2-1-k)+h*dd.Size_of_Dimension1*dd.Size_of_Dimension2
		        dicom_index_pixel=(k)+h*dd.Size_of_Dimension1*dd.Size_of_Dimension2
		      end
		      
		      
		      vv=RT_Doses.PixelData(dicom_index_pixel)
		      test=RT_Doses.DoseGridScaling*vv
		      data.Points.Append test
		      if test>dd.Dmax Then
		        dd.Dmax=test
		      elseif test<dd.Dmin Then
		        dd.Dmin=test
		      end
		    next
		    
		    if dd.Depth_Grid<0 Then
		      dd.Dose_Distribution(dd.Size_of_Dimension3-1-h)=data
		    else
		      dd.Dose_Distribution(h)=data
		    end
		  next
		  dd.Coord_3_1st_point=dd.Coord_3_1st_point/10
		  
		  
		  if UBound(dd.Dose_Distribution)>-1 Then
		    if dd.Depth_Grid<0 Then
		      dd.Coord_3_1st_point=dd.Dose_Distribution(0).Z
		      dd.Depth_Grid=-1*dd.Depth_Grid
		    end
		  end
		  
		  
		  //Check Order of dose distributions
		  
		  if UBound(dd.Dose_Distribution)>0 Then
		    if (dd.Coord_3_1st_point+dd.Size_of_Dimension3*dd.Depth_Grid) =dd.Dose_Distribution(UBound(dd.Dose_Distribution)).Z and dd.Coord_3_1st_point=dd.Dose_Distribution(0).Z and dd.Coord_3_1st_point<dd.Dose_Distribution(1).Z Then
		      
		    else // Order is not correct, re-order dose distributions
		      
		      //Break
		    end
		  end
		  Dose.append dd
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Import_DICOM_Plan(RT_Plan as Class_DICOM_Plan, xx as Single, yy as Single, DICOM as Thread_DICOM_Object) As Boolean
		  //--------------------------------------------------------------------------------------
		  // Import DICOM Plan file into McGill RT class
		  //
		  // March 2011
		  // Update for Tomo DICOM files
		  //--------------------------------------------------------------------------------------
		  Dim All_beams(-1),one_beam as RTOG_Beam_Geometry
		  Dim MLCFields as Class_MLC_Positions
		  Dim BLDPS as Class_DICOM_Plan_BeamLimitingDevicePositionSequence
		  Dim BS as Class_DICOM_Plan_BeamSequence
		  Dim gMLC as Class_Linacs_MLC
		  Dim linac as Class_Linacs_One
		  Dim k,x,h,i,rtp,j,t as Integer
		  Dim MLC_found,MLC_match,linac_found,d_check,app_found as Boolean
		  Dim temp,points(-1) as String
		  Dim bcon as Class_Block
		  Dim bpair as Class_Block_Pairs
		  Dim isopoint as Class_isocenter
		  Dim cc as RTOG_Plan_Struture_Constraint
		  //--------------------------------------------------------------------------------------
		  
		  
		  PW_Show=true
		  
		  Plan_Name=RT_Plan.RTPlan_Label
		  if Plan_Name="" Then
		    Plan_Name=RT_Plan.RTPlan_Name
		  end
		  
		  DICOM_SOPInstanceUID=RT_Plan.SOPInstanceUID 
		  DICOM_SeriesNumber=val(RT_Plan.SeriesNumber)
		  DICOM_SeriesInstanceUID=RT_Plan.SeriesInstanceUID
		  SeriesDescription=RT_Plan.SeriesDescription
		  
		  
		  While InStr(Plan_Name," ")>0
		    Plan_Name=Replace(Plan_Name," ","-")
		  Wend
		  
		  // : is unsupported as a file name
		  While InStr(Plan_Name,":")>0
		    Plan_Name=Replace(Plan_Name,":","-")
		  Wend
		  
		  
		  While InStr(Plan_Name,String_Separate)>0
		    Plan_Name=Replace(Plan_Name,String_Separate,"-")
		  Wend
		  
		  
		  Plan_Date=RT_Plan.RTPlan_Date
		  Plan_Time=RT_Plan.RTPlan_Time
		  ReviewDate=RT_Plan.ReviewDate
		  ReviewTime=RT_Plan.ReviewTime
		  ReviewerName=RT_Plan.ReviewerName
		  ApprovalStatus=RT_Plan.ApprovalStatus
		  
		  
		  for i=0 to UBound(RT_Plan.BeamSequence)
		    bs=RT_Plan.BeamSequence(i)
		    one_beam= new RTOG_Beam_Geometry
		    one_beam.Beam_Num=bs.BeamNumber
		    one_beam.MLC=new Class_MLC
		    one_beam.Collimator = new Class_Collimator
		    one_beam.Collimator.NumFields=1
		    ReDim one_beam.Collimator.Fields(0)
		    one_beam.Collimator.Fields(0)=new Class_Collimator_Fields
		    one_beam.Collimator.Fields(0).isocenter = new Class_isocenter
		    isopoint=one_beam.Collimator.Fields(0).isocenter
		    one_beam.RT_name=bs.TreatmentMachineName
		    one_beam.Nominal_Isocenter=bs.SAD/10
		    one_beam.Beam_Type=bs.BeamType
		    one_beam.Beam_Description=bs.BeamName+" "+bs.BeamDescrip
		    one_beam.Beam_Mode=bs.RadiationType
		    
		    
		    
		    
		    for x=0 to UBound(RT_Plan.FractionGroupSequence)
		      for k=0 to UBound(RT_Plan.FractionGroupSequence(x).Referencedbeamsequence)
		        if RT_Plan.FractionGroupSequence(x).Referencedbeamsequence(k).Referencedbeamnumber=one_beam.Beam_Num Then
		          one_beam.Number_of_Tx=RT_Plan.FractionGroupSequence(x).numberoffractionsplanned
		          one_beam.MU=RT_Plan.FractionGroupSequence(x).Referencedbeamsequence(k).BeamMeterset
		          one_beam.Rx_Dose=RT_Plan.FractionGroupSequence(x).Referencedbeamsequence(k).Beamdose
		          one_beam.Beam_Weight_Point=RT_Plan.FractionGroupSequence(x).Referencedbeamsequence(k).Beam_Dose_Point
		        end
		      next
		    next
		    
		    
		    // Update MLC information
		    for x=0 to UBound(bs.BeamLimitingDevice)
		      if bs.BeamLimitingDevice(x).RTBeamLimitingDeviceType="MLCX" or bs.BeamLimitingDevice(x).RTBeamLimitingDeviceType="MLCY" Then
		        //Read in MLC Properties in X or Y direction
		        one_beam.MLC.NumberofLeafPairs=val(bs.BeamLimitingDevice(x).NumberofLeafjawPairs)
		        ReDim one_beam.MLC.LeafBoundaries(one_beam.MLC.NumberofLeafPairs)
		        for k=0 to one_beam.MLC.NumberofLeafPairs
		          one_beam.MLC.LeafBoundaries(k)=val(NthField(bs.BeamLimitingDevice(x).LeafPositionBoundaries,"\",k+1))/10
		        next
		        MLC_found=False
		        // Try and link Boundaries to existing MMCTP MLC
		        for k=0 to UBound(gLinacs.All_MLCs)
		          MLC_match=True
		          // if they have the same number of leafpairs
		          if one_beam.MLC.NumberofLeafPairs=gLinacs.All_MLCs(k).NumberofLeafPairs Then
		            for h=0 to UBound(gLinacs.All_MLCs(k).Boundaries)
		              if gLinacs.All_MLCs(k).Boundaries(h)<> one_beam.MLC.LeafBoundaries(h) Then
		                MLC_match=False
		              end
		            next
		          else
		            MLC_match=False
		          end
		          if MLC_match Then
		            MLC_found=True
		            one_beam.MLC.Model=gLinacs.All_MLCs(k).MLC_Name
		            one_beam.MLC.Model_Type=gLinacs.All_MLCs(k).Type
		            one_beam.MLC.MLC_Direction=gLinacs.All_MLCs(k).LeafDirection
		            Exit
		          end
		        next
		        
		        
		        if MLC_found=False Then
		          // Add new MLC Properties
		          gMLC = new Class_Linacs_MLC
		          gMLC.MLC_Name="New-DICOM-MLC"+bs.Manufacturer
		          gMLC.NumberofLeafPairs=one_beam.MLC.NumberofLeafPairs
		          ReDim gMLC.Boundaries(UBound(one_beam.MLC.LeafBoundaries))
		          for h=0 to UBound(one_beam.MLC.LeafBoundaries)
		            gMLC.Boundaries(h)=one_beam.MLC.LeafBoundaries(h)
		          next
		          if bs.BeamLimitingDevice(x).RTBeamLimitingDeviceType="MLCX" Then
		            gMLC.LeafDirection=0
		          elseif bs.BeamLimitingDevice(x).RTBeamLimitingDeviceType="MLCY" then
		            gMLC.LeafDirection=1
		          end
		          gLinacs.All_MLCs.Append gMLC
		          gLinacs.Write_MLCs
		          one_beam.MLC.Model=gMLC.MLC_Name
		        end
		      end
		    next
		    
		    for x=0 to UBound(bs.ControlPointSequence)
		      if x=0 Then // For normal Static Beam info
		        
		        isopoint.X = val(NthField(bs.ControlPointSequence(x).IsocenterPosition,"\",1))/10
		        isopoint.y = val(NthField(bs.ControlPointSequence(x).IsocenterPosition,"\",2))/10
		        
		        // Apply cosine and image offset
		        isopoint.X =xx*isopoint.X
		        isopoint.y =yy*isopoint.y
		        isopoint.z = val(NthField(bs.ControlPointSequence(x).IsocenterPosition,"\",3))/10
		        one_beam.Collimator.fields(0).Gantry_Angle=bs.ControlPointSequence(x).GantryAngle
		        one_beam.Collimator.fields(0).Collimator_Angle=bs.ControlPointSequence(x).Beamlimitngdeviceangle
		        one_beam.Collimator.fields(0).Couch_Angle=bs.ControlPointSequence(x).PatientSupportAngle
		        one_beam.Beam_DoseRate=str(bs.ControlPointSequence(x).DoseRateSet)
		        one_beam.Beam_Energy=str(bs.ControlPointSequence(x).NominalBeamEnergy)
		        one_beam.SSD=bs.ControlPointSequence(x).SSD/10
		        one_beam.Collimator.fields(0).Index=bs.ControlPointSequence(x).CumulativeMetersetWeight
		        
		        
		        if InStr(bs.ControlPointSequence(x).GantryRotationDirection,"CC")>0 Then
		          one_beam.Collimator.fields(x).ARC_Direction=1
		        elseif InStr(bs.ControlPointSequence(x).GantryRotationDirection,"CW")>0 Then
		          one_beam.Collimator.fields(x).ARC_Direction=0
		        else
		          one_beam.Collimator.fields(x).ARC_Direction=2
		        end
		        
		        
		        // Look for Linac
		        linac_found=False
		        for k=0 to UBound(gLinacs.All_Linacs)
		          if gLinacs.All_Linacs(k).Energy= one_beam.Beam_Energy and gLinacs.All_Linacs(k).Mode= one_beam.Beam_Mode and gLinacs.All_Linacs(k).RT_name= one_beam.RT_name Then
		            linac_found=True
		          end
		        next
		        
		        
		        for k=0 to UBound(bs.ControlPointSequence(x).BeamLimitingDevicePositionSequence)
		          BLDPS=bs.ControlPointSequence(x).BeamLimitingDevicePositionSequence(k)
		          if InStr(BLDPS.RTBeamLimitingDevice,"X")>0 and InStr(BLDPS.RTBeamLimitingDevice,"MLC" )=0 Then
		            one_beam.Collimator.fields(0).X1=-val(NthField(BLDPS.LeafjawPositions,"\",1))/10
		            one_beam.Collimator.fields(0).X2=val(NthField(BLDPS.LeafjawPositions,"\",2))/10
		          elseif InStr(BLDPS.RTBeamLimitingDevice,"Y")>0 and InStr(BLDPS.RTBeamLimitingDevice,"MLC" )=0 Then
		            one_beam.Collimator.fields(0).Y1=-val(NthField(BLDPS.LeafjawPositions,"\",1))/10
		            one_beam.Collimator.fields(0).Y2=val(NthField(BLDPS.LeafjawPositions,"\",2))/10
		          elseif InStr(BLDPS.RTBeamLimitingDevice,"MLCX" )>0 or  InStr(BLDPS.RTBeamLimitingDevice,"MLCY" )>0 Then
		            
		            if InStr(one_beam.Beam_Type,"DYNAMIC")>0 Then
		              one_beam.MLC.MLC_type="DYNAMIC"
		            else
		              one_beam.MLC.MLC_type="STATIC"
		            end
		            
		            one_beam.MLC.NumberofFields=1
		            MLCFields=new Class_MLC_Positions
		            one_beam.MLC.Fields.Append MLCFields
		            MLCFields.Indexnum=bs.ControlPointSequence(x).CumulativeMetersetWeight
		            redim MLCFields.Leaf_A(one_beam.MLC.NumberofLeafPairs-1)
		            redim  MLCFields.Leaf_b(one_beam.MLC.NumberofLeafPairs-1)
		            
		            
		            for h=1 to one_beam.MLC.NumberofLeafPairs
		              MLCFields.Leaf_b(h-1) =-1*val(NthField(BLDPS.LeafjawPositions,"\",h))/10
		              MLCFields.Leaf_a(h-1)= val(NthField(BLDPS.LeafjawPositions,"\",h+one_beam.MLC.NumberofLeafPairs))/10
		            next
		          end
		        next
		        
		        for k=0 to UBound(bs.ControlPointSequence(x).WedgePositionSequence)
		          one_beam.Wedge_Rotation=bs.ControlPointSequence(x).WedgePositionSequence(k).WedgePosition
		        next
		        
		        
		        // Check for Tomo Sinogram
		        if bs.ControlPointSequence(x).TomoType<> "" Then
		          if InStr(one_beam.Beam_Type,"DYNAMIC")>0 Then
		            one_beam.MLC.MLC_type="DYNAMIC"
		          else
		            one_beam.MLC.MLC_type="STATIC"
		          end
		          one_beam.MLC.NumberofLeafPairs=64
		          one_beam.MLC.NumberofFields=1
		          one_beam.MLC.Model_Type=1 // Tomo Type MLC
		          MLCFields=new Class_MLC_Positions
		          one_beam.MLC.Fields.Append MLCFields
		          MLCFields.Indexnum=bs.ControlPointSequence(x).CumulativeMetersetWeight
		          redim MLCFields.Leaf_A(one_beam.MLC.NumberofLeafPairs-1)
		          t=CountFields(bs.ControlPointSequence(x).TomoSinogram,"\")
		          for h=1 to one_beam.MLC.NumberofLeafPairs
		            MLCFields.Leaf_a(h-1) =val(NthField(bs.ControlPointSequence(x).TomoSinogram,"\",h))
		          next
		          
		          MLC_found=False
		          // Try and link Boundaries to existing MMCTP MLC
		          for k=0 to UBound(gLinacs.All_MLCs)
		            // if they have the same number of leafpairs
		            if one_beam.MLC.NumberofLeafPairs=gLinacs.All_MLCs(k).NumberofLeafPairs and one_beam.MLC.Model_Type=gLinacs.All_MLCs(k).Type then
		              one_beam.MLC.Model=gLinacs.All_MLCs(k).MLC_Name
		              one_beam.MLC.Model_Type=gLinacs.All_MLCs(k).Type
		              one_beam.MLC.Sinogram_Parser=gLinacs.All_MLCs(k).Parser
		              one_beam.MLC.MLC_Direction=gLinacs.All_MLCs(k).LeafDirection
		              
		              
		              ReDim one_beam.MLC.LeafBoundaries(one_beam.MLC.NumberofLeafPairs)
		              MLC_match=True
		              for t=0 to one_beam.MLC.NumberofLeafPairs
		                one_beam.MLC.LeafBoundaries(t)=gLinacs.All_MLCs(k).Boundaries(t)
		              Next
		            end
		          next
		          
		          if MLC_match=False Then // Tomo MLC has not been defined
		            // Add new Tomo MLC
		            // Add new MLC Properties
		            gMLC = new Class_Linacs_MLC
		            gMLC.Type=1 // Tomo Type MLC
		            gMLC.LeafDirection=1
		            gMLC.Parser=1
		            gMLC.AbuttingGap=0
		            gMLC.MLC_Name="New-DICOM-MLC"+bs.Manufacturer
		            gMLC.NumberofLeafPairs=one_beam.MLC.NumberofLeafPairs
		            ReDim gMLC.Boundaries(gMLC.NumberofLeafPairs)
		            for h=0 to UBound(gMLC.Boundaries)
		              gMLC.Boundaries(h)=-32.5+h*1
		            next
		            gLinacs.All_MLCs.Append gMLC
		            gLinacs.Write_MLCs
		            one_beam.MLC.Model=gMLC.MLC_Name
		            
		            
		          end
		        end
		        
		        
		        
		      else // loop dynamic Beam information for control points (VMAT or IMRT with mutliple jaw positions) 
		        
		        if one_beam.Beam_Type="DYNAMIC" Then // Reading Beam control points
		          one_beam.Collimator.Type=one_beam.Beam_Type
		          ReDim one_beam.Collimator.fields(x)
		          one_beam.Collimator.fields(x)=new Class_Collimator_Fields
		          one_beam.Collimator.fields(x).isocenter=new Class_isocenter
		          one_beam.Collimator.fields(x).Index=bs.ControlPointSequence(x).CumulativeMetersetWeight
		          
		          if InStr(bs.ControlPointSequence(x).GantryRotationDirection,"CC")>0 Then
		            one_beam.Collimator.fields(x).ARC_Direction=1
		          elseif InStr(bs.ControlPointSequence(x).GantryRotationDirection,"CW")>0 Then
		            one_beam.Collimator.fields(x).ARC_Direction=0
		          else
		            one_beam.Collimator.fields(x).ARC_Direction=2
		          end
		          
		          if bs.ControlPointSequence(x).IsocenterPosition="" Then 
		            // copy and apply the same isocenter values from control point 0 to current control point
		            one_beam.Collimator.fields(x).isocenter.x=isopoint.X
		            one_beam.Collimator.fields(x).isocenter.y=isopoint.y
		            one_beam.Collimator.fields(x).isocenter.z=isopoint.z
		          else
		            one_beam.Collimator.fields(x).isocenter.x= val(NthField(bs.ControlPointSequence(x).IsocenterPosition,"\",1))/10
		            one_beam.Collimator.fields(x).isocenter.y = val(NthField(bs.ControlPointSequence(x).IsocenterPosition,"\",2))/10
		            // Apply cosine and image offset
		            one_beam.Collimator.fields(x).isocenter.X =xx*one_beam.Collimator.fields(x).isocenter.X
		            one_beam.Collimator.fields(x).isocenter.y =yy*one_beam.Collimator.fields(x).isocenter.y
		            one_beam.Collimator.fields(x).isocenter.z = val(NthField(bs.ControlPointSequence(x).IsocenterPosition,"\",3))/10
		          end
		          
		          // Collimator angle
		          if bs.ControlPointSequence(x).BeamLimitingDeviceRotationDirection="" or  bs.ControlPointSequence(x).BeamLimitingDeviceRotationDirection="NONE" Then
		            one_beam.Collimator.fields(x).Collimator_Angle=one_beam.Collimator.fields(0).Collimator_Angle
		          else
		            one_beam.Collimator.fields(x).Collimator_Angle=bs.ControlPointSequence(x).Beamlimitngdeviceangle
		          end
		          
		          // Couch angle
		          if bs.ControlPointSequence(x).PatientSupportRotationDirection=""  or bs.ControlPointSequence(x).PatientSupportRotationDirection="NONE" Then
		            one_beam.Collimator.fields(x).Couch_Angle=one_beam.Collimator.fields(0).Couch_Angle
		          else
		            one_beam.Collimator.fields(x).Couch_Angle=bs.ControlPointSequence(x).PatientSupportAngle
		          end
		          
		          // Gantry angle
		          if bs.ControlPointSequence(x).GantryRotationDirection=""  or bs.ControlPointSequence(x).GantryRotationDirection="NONE" Then
		            one_beam.Collimator.fields(x).Gantry_Angle=one_beam.Collimator.fields(0).Gantry_Angle
		          else
		            one_beam.Collimator.fields(x).Gantry_Angle=bs.ControlPointSequence(x).GantryAngle
		          end
		          
		          
		          
		          one_beam.Collimator.fields(x).X1=one_beam.Collimator.fields(0).x1
		          one_beam.Collimator.fields(x).Y1=one_beam.Collimator.fields(0).y1
		          one_beam.Collimator.fields(x).X2=one_beam.Collimator.fields(0).x2
		          one_beam.Collimator.fields(x).Y2=one_beam.Collimator.fields(0).y2
		          
		          
		          // Check for Tomo Sinogram
		          if bs.ControlPointSequence(x).TomoType<> "" Then
		            MLCFields=new Class_MLC_Positions
		            one_beam.MLC.NumberofFields=one_beam.MLC.NumberofFields+1
		            one_beam.MLC.Fields.Append MLCFields
		            MLCFields.Indexnum=bs.ControlPointSequence(x).CumulativeMetersetWeight
		            redim MLCFields.Leaf_A(one_beam.MLC.NumberofLeafPairs-1)
		            for h=1 to one_beam.MLC.NumberofLeafPairs
		              MLCFields.Leaf_a(h-1) =val(NthField(bs.ControlPointSequence(x).TomoSinogram,"\",h))
		            next
		          end
		        end
		        
		        // Update the Beam limiting Devices JAWs and MLC control points
		        for k=0 to UBound(bs.ControlPointSequence(x).BeamLimitingDevicePositionSequence)
		          BLDPS=bs.ControlPointSequence(x).BeamLimitingDevicePositionSequence(k)
		          
		          if InStr(BLDPS.RTBeamLimitingDevice,"X")>0 and InStr(BLDPS.RTBeamLimitingDevice,"MLC" )=0 Then
		            if x>UBound(one_beam.Collimator.Fields) Then
		              one_beam.Collimator.Fields.Append  new Class_Collimator_Fields
		              one_beam.Collimator.NumFields=one_beam.Collimator.NumFields+1
		            end
		            one_beam.Collimator.fields(x).X1=-val(NthField(BLDPS.LeafjawPositions,"\",1))/10
		            one_beam.Collimator.fields(x).X2=val(NthField(BLDPS.LeafjawPositions,"\",2))/10
		            
		          elseif InStr(BLDPS.RTBeamLimitingDevice,"Y")>0 and InStr(BLDPS.RTBeamLimitingDevice,"MLC" )=0 Then
		            if x>UBound(one_beam.Collimator.Fields) Then
		              one_beam.Collimator.Fields.Append  new Class_Collimator_Fields
		              one_beam.Collimator.NumFields=one_beam.Collimator.NumFields+1
		            end
		            one_beam.Collimator.fields(x).Y1=-val(NthField(BLDPS.LeafjawPositions,"\",1))/10
		            one_beam.Collimator.fields(x).Y2=val(NthField(BLDPS.LeafjawPositions,"\",2))/10
		            
		            
		          elseif InStr(BLDPS.RTBeamLimitingDevice,"MLCX" )>0 or  InStr(BLDPS.RTBeamLimitingDevice,"MLCY" )>0  Then //Update the MLC control points
		            
		            one_beam.MLC.NumberofFields=one_beam.MLC.NumberofFields+1
		            //one_beam.MLC.NumberofLeaves=CountFields(BLDPS.LeafjawPositions,"\")
		            
		            if one_beam.MLC.NumberofFields>1 and one_beam.MLC.MLC_Type="Static" Then
		              one_beam.MLC.MLC_Type="Step and Shoot" 
		            end
		            
		            MLCFields=new Class_MLC_Positions
		            one_beam.MLC.Fields.Append MLCFields
		            MLCFields.Indexnum=bs.ControlPointSequence(x).CumulativeMetersetWeight
		            
		            redim  MLCFields.Leaf_A(one_beam.MLC.NumberofLeafPairs-1)
		            redim  MLCFields.Leaf_b(one_beam.MLC.NumberofLeafPairs-1)
		            
		            for h=1 to one_beam.MLC.NumberofLeafPairs
		              MLCFields.Leaf_b(h-1) =-1*val(NthField(BLDPS.LeafjawPositions,"\",h))/10
		              MLCFields.Leaf_a(h-1)= val(NthField(BLDPS.LeafjawPositions,"\",h+one_beam.MLC.NumberofLeafPairs))/10
		            next
		            
		          elseif InStr(BLDPS.RTBeamLimitingDevice,"ASYMY" )>0 Then  // Update the JAW control points
		          elseif InStr(BLDPS.RTBeamLimitingDevice,"ASYMX" )>0 Then  // Update the JAW control points
		          end
		        next
		      end
		    next
		    
		    
		    
		    
		    
		    
		    // Determine Wegde Properties
		    for x=0 to UBound(bs.WedgeSequence)
		      one_beam.Wedge_Angle=str(bs.WedgeSequence(x).WedgeAngle)
		      one_beam.Wedge_ID=bs.WedgeSequence(x).WedgeID
		      temp=bs.WedgeSequence(x).WedgeType
		      
		      if InStr(Temp,"STANDARD")>0 Then
		        one_beam.Wedge_Type="STATIC"
		        
		        if bs.WedgeSequence(x).WedgeOrientation=0 Then
		          one_beam.Wedge_Rotation="IN"
		        elseif bs.WedgeSequence(x).WedgeOrientation=90 Then
		          one_beam.Wedge_Rotation="RIGHT"
		        elseif bs.WedgeSequence(x).WedgeOrientation=270 Then
		          one_beam.Wedge_Rotation="LEFT"
		        elseif bs.WedgeSequence(x).WedgeOrientation=180 Then
		          one_beam.Wedge_Rotation="OUT"
		        end
		        
		        
		      else
		        one_beam.Wedge_Type="DYNAMIC"
		        
		        if bs.WedgeSequence(x).WedgeOrientation=0 Then
		          one_beam.Wedge_Rotation="Y1 (IN)"
		        elseif bs.WedgeSequence(x).WedgeOrientation=180 Then
		          one_beam.Wedge_Rotation="Y2 (OUT)"
		        end
		        
		      end
		    next
		    
		    
		    
		    // Determine Electron Applicators
		    for x=0 to UBound(bs.ApplicatorSQ)
		      one_beam.Aperture_ID=bs.ApplicatorSQ(x).ApplicatorID
		      one_beam.Aperture_Type=bs.ApplicatorSQ(x).ApplicatorType
		    next
		    
		    
		    // Determine Block Sequence
		    for x=0 to UBound(bs.BlockSQ)
		      bcon =new  Class_Block
		      one_beam.Block_Contours.Append bcon
		      bcon.Material=bs.BlockSQ(x).Material
		      bcon.Block_Type=bs.BlockSQ(x).BlockTrayID
		      bcon.Thickness=bs.BlockSQ(x).BlockThickness
		      bcon.SourceToBlockDistance=bs.BlockSQ(x).SourToBlockDistance
		      rtp=bs.BlockSQ(x).BlockNumberOfPoints
		      temp=bs.BlockSQ(x).BlockData
		      points=Split(temp,"\")
		      for rtp=1 to bs.BlockSQ(x).BlockNumberOfPoints
		        bpair=new Class_Block_Pairs
		        bcon.Pair.Append bpair
		        if UBound(points)>=1 Then
		          bpair.X=val(points(0))/10
		          Points.Remove 0
		          bpair.y=-val(points(0))/10
		          points.Remove 0
		        end
		      next
		    next
		    
		    
		    
		    
		    //Dose reference sequence
		    for x=0 to UBound(RT_Plan.DoseReferenceSequence)
		      if UBound(Structure_Dose) >= (RT_Plan.DoseReferenceSequence(x).ReferencedROINumb-1) Then
		        
		        Structure_Dose(RT_Plan.DoseReferenceSequence(x).ReferencedROINumb-1).Importance=RT_Plan.DoseReferenceSequence(x).ConstraintWeight
		        Structure_Dose(RT_Plan.DoseReferenceSequence(x).ReferencedROINumb-1).MaxDose=RT_Plan.DoseReferenceSequence(x).OrganatRiskFullVolumeDose
		        Structure_Dose(RT_Plan.DoseReferenceSequence(x).ReferencedROINumb-1).OverlapPriority=RT_Plan.DoseReferenceSequence(x).Tomo_Overlap_Prio
		        
		        if RT_Plan.DoseReferenceSequence(x).DoseReferenceType="ORGAN_AT_RISK" Then
		          cc=new RTOG_Plan_Struture_Constraint
		          cc.Dose=RT_Plan.DoseReferenceSequence(x).OrganatRiskMaximumDose
		          cc.Volume=100*RT_Plan.DoseReferenceSequence(x).OrganatRiskOverdoseVolumeFraction
		          cc.Priority=RT_Plan.DoseReferenceSequence(x).Tomo_DV_Pen
		          Structure_Dose(RT_Plan.DoseReferenceSequence(x).ReferencedROINumb-1).Constraints.append cc
		          Structure_Dose(RT_Plan.DoseReferenceSequence(x).ReferencedROINumb-1).Max_Priority=RT_Plan.DoseReferenceSequence(x).Tomo_MaxDose_Pen
		          Structure_Dose(RT_Plan.DoseReferenceSequence(x).ReferencedROINumb-1).Use_Max_Dose=True
		          Structure_Dose(RT_Plan.DoseReferenceSequence(x).ReferencedROINumb-1).Use_DV_Constraint=True
		          
		        else
		          Structure_Dose(RT_Plan.DoseReferenceSequence(x).ReferencedROINumb-1).Use_Min_Dose=True
		          Structure_Dose(RT_Plan.DoseReferenceSequence(x).ReferencedROINumb-1).Use_Max_Dose=True
		          Structure_Dose(RT_Plan.DoseReferenceSequence(x).ReferencedROINumb-1).MaxDose=RT_Plan.DoseReferenceSequence(x).TargetMaxDose
		          Structure_Dose(RT_Plan.DoseReferenceSequence(x).ReferencedROINumb-1).MinDose=RT_Plan.DoseReferenceSequence(x).TargetMinDose
		          Structure_Dose(RT_Plan.DoseReferenceSequence(x).ReferencedROINumb-1).Target_Norm_Dose=RT_Plan.DoseReferenceSequence(x).TargetPxDose
		          Structure_Dose(RT_Plan.DoseReferenceSequence(x).ReferencedROINumb-1).Target_Norm_Volume=100-100*RT_Plan.DoseReferenceSequence(x).TargetUnderDoseVolume
		          Structure_Dose(RT_Plan.DoseReferenceSequence(x).ReferencedROINumb-1).Min_Priority=RT_Plan.DoseReferenceSequence(x).Tomo_MinDose_Pen
		          Structure_Dose(RT_Plan.DoseReferenceSequence(x).ReferencedROINumb-1).Max_Priority=RT_Plan.DoseReferenceSequence(x).Tomo_MaxDose_Pen
		          
		        end
		      end
		    Next
		    
		    
		    
		    
		    
		    // Add new linac
		    if linac_found=False Then
		      linac=new Class_Linacs_One
		      linac.MLC= new Class_Linacs_MLC
		      gLinacs.All_Linacs.Append linac
		      gLinacs.Initialize(UBound(gLinacs.All_Linacs))
		      linac.Energy=one_beam.Beam_Energy
		      linac.Mode=one_beam.Beam_Mode
		      linac.RT_name=one_beam.RT_name
		      // Update MLC info
		      if UBound(one_beam.MLC.Fields)>-1 Then
		        linac.MLC.MLC_Use=1
		        linac.MLC.MLC_Name=one_beam.MLC.Model
		      end
		      gLinacs.Write_Linacs
		    end
		    
		    
		    // Check that the MLC is added to the linac
		    if UBound(one_beam.MLC.Fields)>-1 Then
		      for k=0 to UBound(gLinacs.All_Linacs)
		        if gLinacs.All_Linacs(k).Energy= one_beam.Beam_Energy and gLinacs.All_Linacs(k).Mode= one_beam.Beam_Mode and gLinacs.All_Linacs(k).RT_name= one_beam.RT_name Then
		          // We have a match
		          if gLinacs.All_Linacs(k).MLC.MLC_Use=0 Then // IF Previous import didn't link to MLC then
		            gLinacs.All_Linacs(k).MLC.MLC_Use=1
		            gLinacs.All_Linacs(k).MLC.MLC_Name=one_beam.MLC.Model
		            gLinacs.Write_Linacs
		          end
		        end
		      next
		    end
		    
		    
		    // Check that the Applicator is added to the linac
		    if one_beam.Aperture_ID<>"" Then
		      app_found=False
		      for k=0 to UBound(gLinacs.All_Linacs)
		        if gLinacs.All_Linacs(k).Energy= one_beam.Beam_Energy and gLinacs.All_Linacs(k).Mode= one_beam.Beam_Mode and gLinacs.All_Linacs(k).RT_name= one_beam.RT_name Then
		          // We have a match
		          
		          for j=0 to UBound(gLinacs.All_Linacs(k).Applicator)
		            if gLinacs.All_Linacs(k).Applicator(j)=one_beam.Aperture_ID Then 
		              app_found=True
		            end
		          Next 
		          
		          if app_found=False Then
		            gLinacs.All_Linacs(k).Applicator.Append one_beam.Aperture_ID
		            gLinacs.All_Linacs(k).BEAMnrcApplicatorCM.Append ""
		            gLinacs.All_Linacs(k).BEAMnrcApplicatorLabel.Append ""
		            gLinacs.Write_Linacs
		          end
		        end
		        
		      next
		      
		    end
		    
		    
		    
		    
		    if one_beam.MLC.Sinogram_Parser=1 Then
		      one_beam=Tomo_Sinogram_Parser(one_beam)
		    end
		    Beam.append one_beam
		  next // loop for each beam i
		  
		  
		  
		  
		  
		  //---------------------------------------------------------------
		  // Arrange Dose distributions
		  //
		  //
		  //
		  //---------------------------------------------------------------
		  PW_StaticText="Sorting Dose distributions"
		  for i=0 to UBound(DICOM.RT_Doses)  //dose information
		    //Check if ReferencedRTPSequence
		    if UBound(DICOM.RT_Doses(i).ReferencedRTPSequence)>-1 Then
		      for rtp=0 to UBound(DICOM.RT_Doses(i).ReferencedRTPSequence)
		        if (RT_Plan.MediaStorageSOPInstanceUID=DICOM.RT_Doses(i).ReferencedRTPSequence(rtp).ReferencedSOPInstanceUID ) or _
		          (RT_Plan.SeriesInstanceUID=DICOM.RT_Doses(i).ReferencedRTPSequence(rtp).ReferencedSOPInstanceUID) or _
		          (RT_Plan.SOPClassUID=DICOM.RT_Doses(i).ReferencedRTPSequence(rtp).ReferencedSOPClassUID) then
		          d_check=Import_DICOM_Dose(DICOM.RT_Doses(i),xx,yy)
		        end
		      next
		    else
		      'for rtp=0 to UBound(DICOM.RT_Doses(i).)
		      'if (RT_Plan.MediaStorageSOPInstanceUID=DICOM.RT_Doses(i).ReferencedRTPSequence(rtp).ReferencedSOPInstanceUID ) or _
		      '(RT_Plan.SeriesInstanceUID=DICOM.RT_Doses(i).ReferencedRTPSequence(rtp).ReferencedSOPInstanceUID) then
		      'd_check=Import_DICOM_Dose(DICOM.RT_Doses(i))
		      'end
		      //next
		    end
		  next
		  PW_Show=false
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Plan_Update_DV(ss() as RTOG_Structure)
		  Dim i as Integer
		  
		  
		  redim Structure_Dose(UBound(ss))
		  for i=0 to UBound(ss)
		    Structure_Dose(i)=new RTOG_Plan_Structure_Dose
		    Structure_Dose(i).OrganID=i
		    Structure_Dose(i).Organ_Name=ss(i).Structure_Name
		    Structure_Dose(i).DVH = new Class_DVH_One
		    Structure_Dose(i).DVH.stru_color=ss(i).scolor
		    Structure_Dose(i).DVH.struc_names=ss(i).Structure_Name
		    Structure_Dose(i).DVH.dvh_bins=100
		    Structure_Dose(i).Voxel_REs=128
		    redim Structure_Dose(i).DVH.dVH(100)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_DV_Contraints_File()
		  //-----------------------------
		  // Readin Dose Volume Organ Constraints file to string
		  //
		  //-----------------------------
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  '=======================
		  
		  f=Path
		  
		  if f=Nil Then
		    Return
		  end
		  
		  f=f.Child("OrganConstr.dat")
		  if f.Exists=false Then
		    Return
		  end
		  
		  ts=f.OpenAsTextFile
		  if ts=nil Then
		    Return
		  end
		  Organ_Constra=ts.ReadAll
		  ts.Close
		  
		  Read_DV_Contraints_String(Structure_Dose, Organ_Constra)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_DV_Contraints_String(AA() as rtog_plan_structure_dose, ss as string)
		  //-----------------------------
		  // Readin Dose Volume Organ Constraints
		  //
		  //-----------------------------
		  Dim i,orindex as Integer
		  Dim text, temp,organ,lines(-1) as string
		  Dim good as Boolean
		  Dim pp as RTOG_Plan_Struture_Constraint
		  '=======================
		  
		  lines=Split(ss,EndOfLine.UNIX)
		  
		  for i=0 to UBound(lines)
		    temp=lines(i)
		    if inStr(temp,"Target:")>0 Then
		      orindex=val(NthField(temp," ",2))-1
		      
		      if orindex>UBound(aa) or orindex<0 Then
		        Return
		      end
		      
		      if InStr(Temp,"Yes")>0 Then
		        aa(orindex).Use_Min_Dose=True
		      else
		        aa(orindex).Use_Min_Dose=False
		      end
		    elseif InStr(temp,"Maximum Dose:")>0 Then
		      aa(orindex).MaxDose=val(NthField(Temp,":",2))
		    elseif InStr(temp,"Minimum Dose:")>0 Then
		      aa(orindex).MinDose=val(NthField(Temp,":",2))
		    elseif InStr(temp,"Maximum Dose Priority:")>0 Then
		      aa(orindex).Max_Priority=val(NthField(Temp,":",2))
		    elseif InStr(temp,"Minimum Dose Priority:")>0 Then
		      aa(orindex).Min_Priority=val(NthField(Temp,":",2))
		    elseif InStr(temp,"VoxRes:")>0 Then
		      aa(orindex).Voxel_REs=val(NthField(Temp,":",2))
		    elseif InStr(temp,"TargetNormVol:")>0 Then
		      aa(orindex).Target_Norm_Volume=val(NthField(Temp,":",2))
		    elseif InStr(temp,"TargetNormDose:")>0 Then
		      aa(orindex).Target_Norm_Dose=val(NthField(Temp,":",2))
		    elseif InStr(temp,"Importance\Priority:")>0 Then
		      aa(orindex).Importance=val(NthField(Trim(NthField(Temp,":",2))," ",1))
		      aa(orindex).OverlapPriority=val(NthField(Trim(NthField(Temp,":",2))," ",2))
		    elseif InStr(temp,"DV Constraints:")>0 Then
		      if InStr(Temp,"Yes")>0 Then
		        aa(orindex).Use_DV_Constraint=True
		      else
		        aa(orindex).Use_DV_Constraint=False
		      end
		      i=i+1
		      do
		        temp=lines(i)
		        if len(temp)>1 and  InStr(temp,"AvgDose Constraints")=0 Then
		          pp = new RTOG_Plan_Struture_Constraint
		          pp.Dose =val(Temp)
		          
		          i=i+1
		          temp=lines(i)
		          pp.Volume  =val(Temp)
		          
		          i=i+1
		          temp=lines(i)
		          pp.Priority =val(Temp)
		          
		          aa(orindex).Constraints.append pp
		        end
		        if inStr(temp,"AvgDose Constraints")=0 Then
		          i=i+1
		        end
		      loop  Until ((len(temp)< 1) or InStr(temp,"AvgDose Constraints")>0)
		      if  InStr(temp,"AvgDose Constraints")>0 Then
		        if InStr(Temp,"Yes")>0 Then
		          aa(orindex).AvgDose_Use=True
		        else
		          aa(orindex).AvgDose_Use=False
		        end
		        i=i+1
		        temp=lines(i)
		        aa(orindex).AvgDose=val(NthField(Temp,":",2))
		        i=i+1
		        temp=lines(i)
		        aa(orindex).AvgDosePen=val(NthField(Temp,":",2))
		      end
		      i=i+1
		      temp=lines(i)
		      if  InStr(temp,"MaxDose Constraints")>0 Then
		        if InStr(Temp,"Yes")>0 Then
		          aa(orindex).Use_Max_Dose=True
		        else
		          aa(orindex).Use_Max_Dose=False
		        end
		      end
		    elseif InStr(temp,"Segment Constraints:")>0 Then
		      if InStr(Temp,"Yes")>0 Then
		        UseMaxSegement=True
		      else
		        UseMaxSegement=False
		      end
		      
		    elseif InStr(temp,"Maximum number of segments:")>0 Then
		      text=NthField(Temp,":",2)
		      MaximumSegments=val(NthField(text,",",1))
		      MaximumSegmentsPriority=val(NthField(text,",",2))
		    end
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_McGill_Beam(num_beams as Integer)
		  //-----------------------------------
		  // Read McGill RT Beam file
		  //
		  //-----------------------------------
		  Dim i,w,k as integer
		  Dim fname,reading(1),values,bar,temp,names(-1) as string
		  Dim ts as TextInputStream
		  Dim beam_Geometry as RTOG_Beam_Geometry
		  Dim collimator as Class_Collimator
		  Dim iso as Class_isocenter
		  Dim flec_a as Class_FLEC
		  Dim MLC as Class_MLC
		  Dim f,  mlcfile as FolderItem
		  Dim test as Boolean
		  Dim bb as Class_Block
		  Dim bbpair as Class_Block_Pairs
		  //-----------------------------------
		  f=new FolderItem
		  f=Path
		  
		  
		  
		  PW_Progress_Max=num_beams+1
		  
		  for w=0 to num_beams
		    beam_Geometry=new RTOG_Beam_Geometry
		    beam_Geometry.Make_New
		    
		    collimator=beam_Geometry.Collimator
		    iso = collimator.Fields(0).isocenter
		    MLC=beam_Geometry.MLC
		    flec_a=beam_Geometry.FLEC
		    
		    fname=str(w+1)
		    while len(fname)<3
		      fname="0"+fname
		    wend
		    
		    fname=fname+".Beam"
		    
		    PW_StaticText="Reading Plan : "+Plan_ID +chr(13)+ "Beam #      : "+fname
		    PW_Progress=w+1
		    
		    f=f.child(fname)
		    
		    if f.Exists then
		      ts=f.OpenAsTextFile
		      do
		        reading = ts.readline.split(":=")
		        if ubound(reading)>-1 then
		          if InStr(reading(0),"BEAM #")>0 then
		            beam_Geometry.beam_num = val(reading(1))
		          end
		          if Instr(reading(0),"BEAM MODALITY")>0 then
		            beam_Geometry.beam_mode = trim(reading(1))
		          end
		          if Instr(reading(0),"BEAM ENERGY")>0  then
		            beam_Geometry.beam_energy= trim(reading(1))
		          end
		          if Instr(reading(0),"BEAM DOSE RATE")>0  then
		            beam_Geometry.Beam_DoseRate= trim(reading(1))
		          end
		          if Instr(reading(0),"BEAM APPLICATOR")>0 then
		            beam_Geometry.Aperture_ID = trim(reading(1))
		          end
		          if Instr(reading(0),"BEAM DESCRIPTION")>0 then
		            beam_Geometry.Beam_Description=trim(reading(1))
		          end
		          if Instr(reading(0),"RX DOSE PER TX (GY)")>0 then
		            beam_Geometry.Rx_Dose = val(reading(1))
		          end
		          if Instr(reading(0),"MUs")>0 then
		            beam_Geometry.MU = val(reading(1))
		          end
		          
		          if Instr(reading(0),"SSD")>0 then
		            beam_Geometry.SSD = val(reading(1))
		          end
		          if Instr(reading(0),"BEAM WEIGHT")>0 then
		            beam_Geometry.Beam_Weight = CDbl(reading(1))
		          end
		          if Instr(reading(0),"NUMBER OF TX" )>0 then
		            beam_Geometry.number_of_Tx = val(reading(1))
		          end
		          if Instr(reading(0),"FRACTION GROUP ID")>0  then
		            beam_Geometry.Fraction_Group_ID=trim(reading(1))
		          end
		          if Instr(reading(0),"BEAM TYPE" )>0 then
		            beam_Geometry.beam_type = trim(reading(1))
		          end
		          
		          if Instr(reading(0),"BEAM DOSEWEIGHTPOINT" )>0 then
		            beam_Geometry.Beam_Weight_Point = trim(reading(1))
		          end
		          
		          if Instr(reading(0),"APERTURE TYPE")>0 then
		            beam_Geometry.aperture_Type=trim(reading(1))
		          end
		          
		          if Instr(reading(0),"WEDGE ID")>0 then
		            beam_Geometry.Wedge_ID = trim(reading(1))
		          end
		          if Instr(reading(0),"WEDGE ANGLE")>0 then
		            beam_Geometry.Wedge_Angle=trim(reading(1))
		          end
		          if Instr(reading(0),"WEDGE ORIENTATION")>0 then
		            beam_Geometry.Wedge_Rotation=trim(reading(1))
		          end
		          if Instr(reading(0),"WEDGE TYPE")>0 then
		            temp=trim(reading(1))
		            
		            beam_Geometry.Wedge_Type=temp
		            
		            
		          end
		          
		          if Instr(reading(0),"COLLIMATOR ANGLE")>0 then
		            collimator.Fields(0).collimator_angle=val(reading(1))
		          end
		          if Instr(reading(0),"GANTRY ANGLE")>0 then
		            collimator.Fields(0).gantry_Angle= val(reading(1))
		            beam_Geometry.gantry_A= true
		          end
		          if Instr(reading(0),"COUCH ANGLE")>0 then
		            collimator.Fields(0).couch_Angle= val(reading(1))
		          end
		          if Instr(reading(0),"NOMINAL ISOCENTER DIST")>0 then
		            beam_Geometry.nominal_Isocenter= val(reading(1))
		          end
		          if Instr(reading(0),"NUMBER REPRESENTATION" )>0 then
		            beam_Geometry.number_representation=trim(reading(1))
		          end
		          if Instr(reading(0), "PLAN ID OF ORIGIN" )>0 then
		            beam_Geometry.Plan_ID=trim(reading(1))
		          end
		          if Instr(reading(0), "TREATMENT UNIT" )>0 then
		            beam_Geometry.RT_name=trim(reading(1))
		          end
		          if Instr(reading(0), "Electron Cutout" )>0 then
		            if InStr(trim(reading(1)),"yes")>0 then
		            else
		            end
		          end
		          if Instr(reading(0), "MLC TYPE" )>0 then
		            MLC.MLC_Type=trim(reading(1))
		          end
		          
		          if Instr(reading(0),"COLLIMATOR TYPE")>0 then
		            beam_Geometry.Collimator.type=trim(reading(1))
		          end
		          
		          if Instr(reading(0),"COLLIMATOR SETTING X1")>0 then
		            collimator.fields(0).X1=val((reading(1)))
		            
		          end
		          if Instr(reading(0),"COLLIMATOR SETTING X2")>0 then
		            collimator.fields(0).X2=val((reading(1)))
		            
		          end
		          
		          if Instr(reading(0),"COLLIMATOR SETTING Y1")>0 then
		            collimator.fields(0).Y1=val(reading(1))
		            
		          end
		          if Instr(reading(0),"COLLIMATOR SETTING Y2")>0 then
		            collimator.fields(0).Y2=val(reading(1))
		          end
		          
		          if Instr(reading(0),"ISOCENTER POSITION X (CM)"  )>0 then
		            iso.x=val(reading(1))
		          end
		          if Instr(reading(0),"ISOCENTER POSITION Y (CM)"  )>0 then
		            iso.y=val(reading(1))
		          end
		          if Instr(reading(0),"ISOCENTER POSITION Z (CM)"  )>0 then
		            iso.z=val(reading(1))
		          end
		          
		          if Instr(reading(0),"FLEC SETTING X1"  )>0 then
		            flec_a.x1=val(reading(1))
		          elseif Instr(reading(0),"FLEC SETTING X2"  )>0 then
		            flec_a.x2=val(reading(1))
		          elseif Instr(reading(0),"FLEC SETTING Y1"  )>0 then
		            flec_a.y1=val(reading(1))
		          elseif Instr(reading(0),"FLEC SETTING Y2"  )>0 then
		            flec_a.y2=val(reading(1))
		          end
		          
		          
		          // FOr BLOCK Contours
		          if Instr(reading(0),"BLOCKType"  )>0 then
		            bb=new Class_Block
		            beam_Geometry.Block_Contours.Append bb 
		            bb.Block_Type=Trim(reading(1))
		          elseif Instr(reading(0),"BLOCKMaterial"  )>0 then
		            bb.Material=Trim(reading(1))
		            
		          elseif Instr(reading(0),"BLOCKSBD"  )>0 then
		            bb.SourceToBlockDistance=val(reading(1))
		            
		          elseif Instr(reading(0),"BLOCKThickness"  )>0 then
		            bb.Thickness=val(reading(1))
		            
		            
		          elseif Instr(reading(0),"BLOCKPointsX"  )>0 then
		            temp=Trim(reading(1))
		            for i=1 to CountFields(temp,"\")-1
		              bbpair=new Class_Block_Pairs
		              bb.Pair.Append bbpair
		              bbpair.x=val(NthField(temp,"\",i))
		            next
		            
		          elseif Instr(reading(0),"BLOCKPointsY"  )>0 then
		            temp=Trim(reading(1))
		            for i=1 to CountFields(temp,"\")-1
		              if (i-1)<= UBound(bb.Pair) Then
		                bb.Pair(i-1).Y=val(NthField(temp,"\",i))
		              end
		            next
		          end
		        end
		      loop until ubound(reading) =-1
		      ts.Close // Close Beam text file
		      
		      //---------------GET MLC INFO-----------------
		      mlcfile=new FolderItem
		      mlcfile=path
		      Temp = str(w+1)
		      While len(Temp)<3
		        temp="0"+Temp
		      wend
		      
		      mlcfile=mlcfile.Child(temp+".MLC")
		      
		      Beam.append beam_Geometry
		      test=Read_McGill_MLC(w,mlcfile)
		      
		      // Read dynamic Jaw file
		      Read_McGill_Jaw(w)
		    else
		      
		      temp="Problem with Beam files! "+Chr(13)+ "Could not find file : "+fname+CHr(13)+"Create new beam file?"
		      Errors.Append temp
		      
		      if k=1 then // ok pressed
		        
		        Add_Beam
		        num_beams=num_beams+1
		        
		      ElseIf k=3 Then //abort pressed
		        Quit
		        
		      else // cancell pressed
		        
		        
		      end
		      
		    end
		    f=f.Parent
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_McGill_Dose(fname as FolderItem)
		  // =========================
		  //Read McGill RT Dose file
		  //
		  // Updates
		  // 2012 Alexander
		  // Change to the byte position for matrix data
		  // Header is now 300 bytes long to include more text variables
		  //=========================
		  Dim bs as BinaryStream
		  Dim fsize,i,k,num_dose,dose_units_length,mbPosition,chunkSize as integer
		  Dim dd as RTOG_Dose_Distribution
		  Dim dose_data as RTOG_Dose_Plane
		  Dim mb as MemoryBlock
		  Dim position as Int64
		  '================
		  num_dose=0
		  
		  if fname.Exists Then
		    dd = new RTOG_Dose_Distribution
		    dd.Dose_name=NthField(fName.Name,".Dose",1)
		    
		    bs=fname.OpenAsBinaryFile
		    mb=new MemoryBlock(bs.Length) //Changed to "new MemoryBlock" by William Davis when newmemoryBlock was found to have been deprecated
		    
		    
		    if mb.size=bs.length then
		      //reading the whole file into thismemblock
		      bs.position=0
		      
		      
		      chunkSize = 3097152
		      position=0
		      While bs.EOF=False
		        if (position+chunkSize)>bs.length Then
		          chunkSize=bs.Length-position
		        end
		        mb.stringValue(position, chunkSize ) = bs.read( chunksize )
		        position = position + chunksize
		      wend
		      
		      //mb.stringValue(0,mb.size)=bs.read(bs.Length)
		      
		    else
		      
		      
		    end
		    bs.Close
		    
		    mb.LittleEndian=gPref.endian
		    
		    dd.Coord_1_1st_point=mb.SingleValue(0)
		    dd.Coord_2_1st_point=mb.SingleValue(4)
		    dd.Coord_3_1st_point=mb.SingleValue(8)
		    
		    dd.Size_of_Dimension1=mb.SingleValue(12)
		    dd.Size_of_Dimension2=mb.SingleValue(16)
		    dd.Size_of_Dimension3=mb.SingleValue(20)
		    
		    dd.Horizontal_Grid=mb.SingleValue(24)
		    dd.Vertical_Grid=mb.SingleValue(28)
		    dd.Depth_Grid=mb.SingleValue(32)
		    
		    dd.Dmax=mb.SingleValue(36)
		    dd.Dmin=mb.SingleValue(40)
		    
		    dose_units_length=mb.UInt8Value(44)
		    dd.Dose_Units=mb.StringValue(45,dose_units_length)
		    mbPosition=45+dose_units_length
		    
		    dose_units_length=mb.UInt8Value(mbPosition)
		    dd.engine=mb.StringValue(mbPosition+1,dose_units_length)
		    mbPosition=mbPosition+1+dose_units_length
		    
		    dose_units_length=mb.UInt8Value(mbPosition)
		    dd.SOP_Instance_UID=mb.StringValue(mbPosition+1,dose_units_length)
		    mbPosition=mbPosition+1+dose_units_length
		    
		    dose_units_length=mb.UInt8Value(mbPosition)
		    dd.SumType=mb.StringValue(mbPosition+1,dose_units_length)
		    mbPosition=mbPosition+1+dose_units_length
		    
		    dose_units_length=mb.UInt8Value(mbPosition)
		    dd.Dose_Comment=mb.StringValue(mbPosition+1,dose_units_length)
		    
		    mbPosition=(mbPosition+1+dose_units_length)
		    dd.AcquisitionDate=mb.UInt32Value(mbPosition)
		    dd.AcquisitionTime=mb.UInt32Value(mbPosition+4)
		    dd.Series_Number=mb.UInt32Value(mbPosition+8)
		    //--------------------------------------------------------------------------------------------
		    
		    redim dd.Dose_Distribution(dd.Size_of_Dimension3-1)
		    fsize=dd.Size_of_Dimension1*dd.Size_of_Dimension2
		    
		    // 2012 Update
		    // Update to add more room in the DD file
		    // DD file now includes more text fields
		    // Start of DD points is at byte 300
		    //
		    mbPosition=300
		    dose_units_length=mb.Int16Value(mbPosition)
		    if dose_units_length=24631 Then
		      mbPosition=mbPosition+2
		    else
		      mbPosition=100
		    end
		    
		    // Loop for each slice and all pixel in each slide
		    for k=1 to dd.Size_of_Dimension3
		      Dose_Data=new RTOG_Dose_Plane
		      Dose_Data.z=dd.Coord_3_1st_point+dd.Depth_Grid*(k-1)
		      redim Dose_Data.Points(fsize-1)
		      redim Dose_Data.Errors(fsize-1)
		      if  mb.Size>=(mbPosition+fsize*4*dd.Size_of_Dimension3) Then
		        for i =1 to fsize
		          Dose_Data.Points(i-1)=mb.SingleValue(mbPosition+(k-1)*fsize*4+(i-1)*4)
		        next
		      end
		      dd.Dose_Distribution(k-1)=Dose_Data
		    next
		    
		    // Reset the byte position to the start of the dose error matrix
		    mbPosition=mbPosition+fsize*4*dd.Size_of_Dimension3
		    
		    // Loop for the dose errors matrix
		    if mb.Size>=(mbPosition+fsize*4*dd.Size_of_Dimension3) Then
		      for k=1 to dd.Size_of_Dimension3
		        for i =1 to fsize
		          dd.Dose_Distribution(k-1).Errors(i-1)=mb.SingleValue(mbPosition+(k-1)*fsize*4+(i-1)*4)
		        next
		      next
		    end
		    Dose.append dd
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_McGill_Jaw(beam_num as integer)
		  //------------------------------------------------
		  //
		  //
		  //
		  //------------------------------------------------
		  Dim ts as TextInputStream
		  Dim line,temp as String
		  Dim i,k,y as Integer
		  Dim Coll as Class_Collimator
		  Dim f as FolderItem
		  '=======================
		  
		  coll=Beam(beam_num).Collimator
		  
		  //-----Open Jaw file
		  f = new FolderItem
		  f=path
		  Temp=str(beam_num+1)
		  while len(Temp)<3
		    temp="0"+Temp
		  Wend
		  f=f.Child(Temp+".JAW")
		  if f=nil Then
		    Return
		  end
		  if f.Exists=False Then
		    Return
		  end
		  
		  
		  ts=TextInputStream.Open(f)
		  line=ts.ReadLine
		  Coll.Type=Trim(NthField(line,":=",2))
		  
		  line=ts.ReadLine
		  Coll.NumFields=val(NthField(line,":=",2))
		  
		  ReDim Coll.Fields(Coll.NumFields-1)
		  
		  for i=1 to Coll.NumFields
		    if Coll.Fields(i-1)=nil Then
		      coll.Fields(i-1)=new Class_Collimator_Fields
		    end
		    if Coll.Fields(i-1).isocenter=nil Then
		      coll.Fields(i-1).isocenter=new Class_isocenter
		    end
		  Next
		  
		  While ts.EOF=False
		    line=ts.ReadLine
		    
		    i=Val(NthField(line, " ",2))
		    
		    if InStr(line,"ARC")>0 Then
		      coll.fields(i-1).ARC_Direction = val(NthField(line,":",2))
		    elseif InStr(line,"Collimator")>0 Then
		      coll.fields(i-1).Collimator_Angle=val(NthField(line,":",2))
		    elseif InStr(line,"Gantry")>0 Then
		      coll.fields(i-1).Gantry_Angle=val(NthField(line,":",2))
		    elseif InStr(line,"Couch")>0 Then
		      coll.fields(i-1).Couch_Angle=val(NthField(line,":",2))
		    elseif InStr(line,"Index")>0 Then
		      coll.fields(i-1).Index=val(NthField(line,":",2))
		    elseif InStr(line,"X1")>0 Then
		      coll.fields(i-1).X1=val(NthField(line,":",2))
		    elseif InStr(line,"X2")>0 Then
		      coll.fields(i-1).X2=val(NthField(line,":",2))
		    elseif InStr(line,"Y1")>0 Then
		      coll.fields(i-1).Y1=val(NthField(line,":",2))
		    elseif InStr(line,"Y2")>0 Then
		      coll.fields(i-1).Y2=val(NthField(line,":",2))
		    elseif InStr(line,"Iso X ")>0 Then
		      coll.fields(i-1).isocenter.x=val(NthField(line,":",2))
		    elseif InStr(line,"Iso Y ")>0 Then
		      coll.fields(i-1).isocenter.y=val(NthField(line,":",2))
		    elseif InStr(line,"Iso Z ")>0 Then
		      coll.fields(i-1).isocenter.z=val(NthField(line,":",2))
		    end
		  Wend
		  ts.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Read_McGill_MLC(beam_num as integer, f as folderItem) As boolean
		  //------------------------------------------------
		  // Readin the McGill RT MLC file
		  //
		  // 
		  // Andrew Alexander
		  // Update March 2011
		  // New format for reading in the text file, read whole file at once
		  //------------------------------------------------
		  Dim ts as TextInputStream
		  Dim temp,line,allFields(-1),onefield(-1),Model,file,lines(-1) as String
		  Dim i,k,y,findex,leaf_index as Integer
		  Dim ff as Class_MLC_Positions
		  Dim mfound as Boolean
		  Dim MLC as Class_MLC
		  '=======================
		  
		  
		  // Find MLC model for this linac
		  if beam_num>UBound(Beam) Then
		    Return False
		  end
		  
		  mfound=beam(beam_num).Read_MLC_Model
		  
		  // Return if no MLC file exists
		  if f.Exists=False Then
		    Return False
		  end
		  
		  // Warning to define MLC within MMCTP configurtaions
		  if mfound=False Then
		    Errors.Append "MLC file found for linac "+Beam(beam_num).RT_name+", beam number "+str(beam_num+1)+" but MLC model has not been defined within MMCTP linac/MLC settings. Please define this MLC"
		    Return False
		  end
		  
		  mlc=Beam(beam_num).MLC
		  
		  
		  ts=f.OpenAsTextFile
		  if ts=nil Then
		    Return False
		  End
		  
		  file=ts.ReadAll
		  ts.Close
		  
		  lines=Split(file,local_endline)
		  
		  for k=0 to UBound(lines)
		    line=lines(k)
		    temp=Trim(NthField(line,":=",1))
		    
		    if InStr(Line,"Treatment") >0 Then
		      mlc.MLC_Type=Trim(NthField(Line,"=",2))
		      
		      if MLC.MLC_Type="" Then
		        mlc.MLC_Type="Static"
		      end
		      
		    elseif InStr(Line,"Number of Fields") >0 Then
		      
		      mlc.NumberofFields=val(NthField(Line,"=",2))
		      if MLC.NumberofFields<=0 Then
		        mlc.NumberofFields=1
		      end
		      ReDim mlc.Fields(-1)
		      for i =1 to mlc.NumberofFields
		        Beam(beam_num).Add_MLC_Field
		      Next
		      
		    elseif InStr(Line,"Tolerance") >0 Then
		      mlc.Tolerance=Trim(NthField(Line,"=",2))
		      
		    elseif InStr(Line,"ModelName") >0 Then
		      if MLC.Model="" Then
		        mlc.Model=Trim(NthField(Line,"=",2))
		      end
		    elseif InStr(Line,"ModelType") >0 Then
		      //mlc.Model_Type=val(NthField(Line,"=",2))
		      
		    elseif InStr(Line,"LeafDirection") >0 Then
		      //mlc.MLC_Direction=val(NthField(Line,"=",2))
		      
		    elseif temp="Field" Then
		      findex=Val(NthField(Line,"=",2))
		      if findex<=mlc.NumberofFields and findex>-1 Then
		        
		      else // Problem with index number
		        Errors.Append ("Error in reading in MLC file for beam : "+Str(beam_num+1))
		        Break
		        Return False
		        
		      end
		      
		    elseif InStr(Line,"Index") >0 Then
		      mlc.Fields(findex-1).Indexnum=val(NthField(Line,"=",2))
		      
		    elseif  InStr(Line,"Leaf") >0  Then
		      leaf_index=val(NthField(temp," ",2))  
		      // Update 2011 (leaf_index-1) as check sum
		      
		      if  InStr(Line,"A") >0 and  InStr(Line,"B") =0  Then
		        if leaf_index>=0 and (leaf_index-1)<=UBound(MLC.Fields(findex-1).Leaf_A) Then
		          mlc.Fields(findex-1).Leaf_A(leaf_index-1)= val(NthField(Line,"=",2))
		        end
		      else
		        if leaf_index>=0 and (leaf_index-1)<=UBound(MLC.Fields(findex-1).Leaf_B) Then
		          mlc.Fields(findex-1).Leaf_b(leaf_index-1)=val(NthField(Line,"=",2))
		        end
		      end
		      
		    end
		    
		  Next
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_McGill_Plan()
		  //------------------------------
		  // Load One Plan 
		  // Beams and Doses
		  //
		  //------------------------------
		  Dim i,j,num_dose,num_beams as Integer
		  Dim f as FolderItem
		  Dim ts as TextInputStream
		  Dim temp,doses(-1) as String
		  //------------------------------
		  
		  f=new FolderItem
		  f=Path
		  f=f.Child("RP.dir")
		  if f<>nil  Then
		    if f.Exists Then
		      ts=f.OpenAsTextFile
		      if ts<> nil Then
		        Plan_Name=Trim(ts.ReadLine)
		        DICOM_SOPInstanceUID=Trim(ts.ReadLine)
		        DICOM_SeriesInstanceUID=Trim(ts.ReadLine)
		        Plan_Date=Trim(ts.ReadLine)
		        Plan_Time=Trim(ts.ReadLine)
		        ReviewerName=Trim(ts.ReadLine)
		        ReviewDate=Trim(ts.ReadLine)
		        ReviewTime=Trim(ts.ReadLine)
		        ApprovalStatus=Trim(ts.ReadLine)
		        SeriesDescription=Trim(ts.ReadLine)
		        DICOM_SeriesNumber=vaL(ts.ReadLine)
		        ts.Close
		      end
		    end
		  end
		  
		  PW_StaticText="Reading Plan : "+Plan_ID +" "+Plan_Name +chr(13)+"Scanning folder"
		  PW_Progress_Max=0
		  
		  
		  f=new FolderItem
		  f=Path
		  
		  num_beams=-1
		  num_dose=-1
		  
		  
		  for i=1 to f.Count
		    if f.Item(i)<> nil Then
		      if f.Item(i).Visible Then
		        if InStr(f.Item(i).Name,".Beam")>0 then
		          num_beams=num_beams+1
		        elseif InStr(f.Item(i).Name,".Dose")>0 and InStr(f.Item(i).Name,".Dose.pnts")=0 Then
		          if gPref.McGillRT_Dose_Skip=False Then
		            num_dose=num_dose+1
		            doses.Append f.Item(i).Name
		          end
		        end
		      end
		    end
		  next
		  
		  
		  //Return
		  
		  Read_McGill_Beam(num_beams)
		  
		  PW_Progress_Max=num_dose
		  PW_Progress=1
		  
		  for j=0 to num_dose
		    PW_StaticText="Reading Plan : "+Plan_ID +chr(13)+"Dose : "+doses(j)
		    PW_Progress=j
		    
		    Read_McGill_Dose(Path.Child(doses(j)))
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_RTOG_Beam(filenumber as integer, f0 as folderItem, ts as textInputStream)
		  //=========================================
		  // This method populates the RTOG beam geometry data
		  //
		  //
		  //=========================================
		  Dim reading(1), fname, values, oneline,name As string
		  Dim num_contours,k,num_blk_pairs,  num_plan,mlc_num,num_leaf_pairs, i as integer
		  Dim Beam_ts as textInputStream
		  Dim Beam_Geometry as rtOG_beam_Geometry
		  Dim iso As Class_isocenter
		  Dim Collimator as Class_Collimator
		  Dim Pairs as Class_block_Pairs
		  Dim Block as class_Block
		  '=========================================
		  
		  
		  
		  Beam_Geometry= New RtOG_beam_Geometry
		  Beam_Geometry.Make_New
		  
		  
		  collimator=Beam_Geometry.Collimator
		  iso  =Beam_Geometry.collimator.Fields(0).isocenter
		  
		  
		  
		  fname=str(filenumber)
		  while len(fname)<4
		    fname="0"+fname
		  wend
		  fname="aapm"+fname
		  PW_StaticText="Reading : Beam Geometry"+chr(13)+"File : "+fname
		  PW_Progress =filenumber
		  
		  do
		    reading = ts.readline.split(":=")
		    if ubound(reading)>-1 then
		      if InStr(reading(0),"BEAM #")>0 then
		        beam_Geometry.beam_num = val(reading(1))
		      end
		      if Instr(reading(0),"BEAM MODALITY")>0 then
		        beam_Geometry.beam_mode = trim(reading(1))
		      end
		      if Instr(reading(0),"(MEV)")>0  then
		        beam_Geometry.beam_energy= (reading(1))
		      end
		      if Instr(reading(0),"BEAM DESCRIPTION")>0 then
		        beam_Geometry.beam_Description=trim(reading(1))
		      end
		      if Instr(reading(0),"RX DOSE PER TX (GY)")>0 then
		        beam_Geometry.Rx_Dose = val(reading(1))
		      end
		      if Instr(reading(0),"NUMBER OF TX" )>0 then
		        beam_Geometry.number_of_Tx = val(reading(1))
		      end
		      if Instr(reading(0),"FRACTION GROUP ID")>0  then
		        beam_Geometry.Fraction_Group_ID=trim(reading(1))
		      end
		      if Instr(reading(0),"BEAM TYPE" )>0 then
		        beam_Geometry.beam_type = trim(reading(1))
		      end
		      if Instr(reading(0),"COLLIMATOR TYPE")>0 then
		        beam_Geometry.Collimator.Type=trim(reading(1))
		      end
		      if Instr(reading(0),"APERTURE TYPE")>0 then
		        beam_Geometry.aperture_Type=trim(reading(1))
		      end
		      if Instr(reading(0),"COLLIMATOR ANGLE")>0 then
		        Collimator.Fields(0).collimator_angle=val(reading(1))
		      end
		      if Instr(reading(0),"GANTRY ANGLE")>0 then
		        Collimator.Fields(0).gantry_Angle= val(reading(1))
		      end
		      if Instr(reading(0),"COUCH ANGLE")>0 then
		        Collimator.Fields(0).couch_Angle= val(reading(1))
		      end
		      if Instr(reading(0),"NOMINAL ISOCENTER DIST")>0 then
		        beam_Geometry.nominal_Isocenter= val(reading(1))
		      end
		      if Instr(reading(0),"NUMBER REPRESENTATION" )>0 then
		        beam_Geometry.number_representation=trim(reading(1))
		      end
		      if Instr(reading(0), "PLAN ID OF ORIGIN" )>0 then
		        beam_Geometry.Plan_ID=trim(reading(1))
		      end
		    end
		  loop until ubound(reading) =-1
		  
		  
		  
		  if Beam_Geometry.Plan_ID=Plan_Name or Beam_Geometry.Fraction_Group_ID=Plan_Name or Plan_Name="None" Then
		    
		    
		    '===============================================
		    '//Determine if all required values are filled
		    'if beam_Geometry.Plan_I = false then
		    'Error_window(name, "Plan ID of Origin",filenumber)
		    'end
		    'if beam_Geometry.Aperture_T = false then
		    'Error_window(name, "Aperture Type",filenumber)
		    'end
		    'if beam_Geometry.Beam_D = false then
		    'error_window(name,"Description",filenumber)
		    'end
		    'if beam_Geometry.Beam_E = false then
		    'error_window(name, "Energy",filenumber)
		    'end
		    'if beam_Geometry.Beam_M = false then
		    'error_window(name, "Mode",filenumber)
		    'end
		    'if beam_Geometry.Collimator_A = false then
		    'error_window(name, "Collimator Angle",filenumber)
		    'end
		    'if beam_Geometry.Collimator_T = false then
		    'error_window(name, "Collimator Type",filenumber)
		    'end
		    'if beam_Geometry.Couch_A = false then
		    'error_window(name, "Couch Angle",filenumber)
		    'end
		    'if beam_Geometry.Fraction_I = false then
		    'error_window(name, "Fraction ID",filenumber)
		    'end
		    'if beam_Geometry.Gantry_A= false then
		    'error_window(name, "Gantry Angle",filenumber)
		    'end
		    'if beam_Geometry.Nominal_I = false then
		    'error_window(name, "isocenter",filenumber)
		    'end
		    'if beam_Geometry.Number_T = false then
		    'error_window(name, "Number of Tx",filenumber)
		    'end
		    'if beam_Geometry.Number_R = false then
		    'error_window(name, "Representation Number",filenumber)
		    'end
		    'if beam_Geometry.Rx_D = false then
		    'error_window(name, "Rx dose",filenumber)
		    'end
		    // End flag check
		    '===============================================
		    
		    //======Open and Read the actual BEAM file
		    
		    
		    name = "Beam Geometry"
		    //Collimator information
		    
		    f0=f0.parent.child(fname)
		    beam_ts=f0.openasTextFile
		    oneline =  beam_ts.readLine
		    values =(oneline.nthField("""",3))
		    iso.X=val(values.nthField(",",1))
		    iso.y=val(values.nthField(",",2))
		    iso.z=val(values.nthField(",",3))
		    beam_Geometry.Collimator.Fields(0).isocenter=iso
		    oneline =  beam_ts.readLine
		    values =(oneline.nthField("""",3))
		    if beam_geometry.Collimator.Type ="Asymmetric" or beam_geometry.Collimator.Type ="Asmmetric_X" then // get collimator for X
		      collimator.fields(0).x1=val(values.nthField(",",1))
		      collimator.fields(0).x2=val(values.nthField(",",2))
		    else
		      collimator.fields(0).x1=val(values)/2
		      collimator.fields(0).x2=val(values)/2
		    end
		    oneline =  beam_ts.readLine
		    values =(oneline.nthField("""",3))
		    if beam_geometry.Collimator.Type ="Asymmetric" or beam_geometry.Collimator.Type ="Asmmetric_Y" then // get collimator for Y
		      collimator.fields(0).y1=val(values.nthField(",",1))
		      collimator.fields(0).y2=val(values.nthField(",",2))
		    else
		      collimator.fields(0).y1=val(values)/2
		      collimator.fields(0).y2=val(values)/2
		    end
		    beam_Geometry.collimator=collimator
		    
		    '=========================================================
		    
		    
		    
		    
		    
		    
		    
		    // =======  For Aperture type =========
		    if beam_Geometry.aperture_T = true then
		      if beam_Geometry.aperture_Type="Block" then// read BLOCK type file
		        
		        oneline =  beam_ts.readLine
		        values =(oneline.nthField("""",3))
		        num_contours=val(values)
		        for i =1 to num_contours //read in each contour
		          Block=new Class_Block
		          oneline =  beam_ts.readLine
		          values =(oneline.nthField("""",3))
		          Block.Block_Type=(values)
		          oneline =  beam_ts.readLine
		          values =(oneline.nthField("""",3))
		          Block.Transmission=val(values)
		          oneline =  beam_ts.readLine
		          values =(oneline.nthField("""",3))
		          num_blk_pairs=val(values)
		          redim Block.pair(num_blk_pairs-1)
		          for k=1 to num_blk_pairs//read in each block_Pair
		            Pairs=new Class_Block_Pairs
		            oneline =  beam_ts.readLine
		            Pairs.X=val(nthField(oneline, ",",1))
		            Pairs.y=val(nthField(oneline, ",",2))
		            Block.Pair(k-1)=Pairs
		          next//end reading of blcok pair
		          redim beam_Geometry.block_Contours(num_contours-1)
		          beam_Geometry.block_Contours(i-1) = new Class_Block
		          beam_Geometry.block_Contours(i-1)=block
		        next//end contour reading
		        
		      Elseif  beam_Geometry.aperture_Type="MLC_X" or beam_Geometry.aperture_Type= "MLC_Y"  _ // read MLC type file
		        or beam_Geometry.aperture_Type="MLC_XY"then
		        if beam_Geometry.aperture_Type="MLC_XY" then
		          mlc_num=2
		        else
		          mlc_num=1
		        end
		        
		        
		        for i=i to mlc_num
		          '
		          '
		          'num_leaf_pairs =Val(oneline.nthField("""",3))
		          'Redim mlc.Leaf_Center(num_leaf_pairs)
		          'Redim mlc.Leaf_End(num_leaf_pairs)
		          'Redim mlc.Leaf_Start(num_leaf_pairs)
		          'Redim mlc.Leaf_thickness(num_leaf_pairs)
		          'values=(oneline.nthField("""",3))
		          'for k=1 to num_leaf_pairs
		          'mlc.Leaf_Center(k-1)=val(values.nthfield(",",k))
		          'next
		          'values=(oneline.nthField("""",3))
		          'for k=1 to num_leaf_pairs
		          'mlc.Leaf_thickness(k-1)=val(values.nthfield(",",k))
		          'next
		          'for k=1 to num_leaf_pairs
		          'values=(oneline.nthField("""",3))
		          'mlc.Leaf_Start(k-1)=val(values.nthfield(",",1))
		          'mlc.Leaf_End(k-1)=val(values.nthfield(",",2))
		          'next
		          
		          
		          
		          
		        next
		        
		        
		        
		      end
		    end// end Aperture type
		    beam_ts.close
		    
		    
		    
		    //Now save beam geometry into RTOG plan
		    
		    Beam.Append Beam_Geometry
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_RTOG_Dose(filenumber as integer, f0 as folderItem, ts as textInputStream)
		  //=========================================
		  // This method populates the RTOG Dose
		  //
		  //
		  // Populates RTOG Dose variables
		  //=========================================
		  Dim reading(1),tmpstr ,fname,oneline,error As string
		  Dim Dose_Planes, num_points ,i,j,k , num_dose, num_plans,count as integer
		  Dim dose_ts as textInputStream
		  Dim bs as BinaryStream
		  Dim DD as rtOG_Dose_Distribution
		  Dim Dose_data as RTOG_Dose_Plane
		  //=========================================
		  
		  
		  
		  DD= New RtOG_Dose_Distribution
		  'Progress window update
		  fname=str(filenumber)
		  while len(fname)<4
		    fname="0"+fname
		  wend
		  fname="aapm"+fname
		  PW_StaticText="Reading : Dose Distribution" +chr(13)+ "File        : "+fname
		  PW_Progress=filenumber
		  
		  '=====================================
		  'Set Flags to false
		  dd.Coord_1=False
		  dd.Coord_2=False
		  dd.Dose_U=False
		  dd.engine_b=False
		  dd.Horizontal_G=False
		  dd.Num_D=False
		  dd.Num_R=False
		  dd.Orien=False
		  dd.Plan_I=False
		  dd.Size_D1=False
		  dd.Size_D2=False
		  dd.Size_D3=False
		  dd.Vertical_G=False
		  '=============================
		  do
		    reading = ts.readline.split(":=")
		    if ubound(reading)>-1 then
		      if Instr(reading(0),"COORD 1 OF FIRST POINT" )>0 then
		        dd.coord_1_1st_point = val(reading(1))
		        dd.coord_1 =true
		      end
		      if Instr(reading(0),"COORD 2 OF FIRST POINT" )>0 then
		        dd.coord_2_1st_point=val(reading(1))
		        dd.coord_2=true
		      end
		      if Instr(reading(0),"COORD 3 OF FIRST POINT" )>0 then
		        dd.Coord_3_1st_point=val(reading(1))
		        dd.coord_2=true
		      end
		      if Instr(reading(0),"DOSE UNITS" )>0 then
		        dd.dose_Units= trim(reading(1))
		        dd.dose_U=true
		      end
		      if Instr(reading(0),"HORIZONTAL GRID INTERVAL" )>0 then
		        dd.horizontal_Grid= val(reading(1))
		        dd.horizontal_G=true
		      end
		      if Instr(reading(0),"NUMBER OF DIMENSIONS" )>0 then
		        dd.num_dimensions=val(reading(1))
		        dd.num_d=true
		      end
		      if Instr(reading(0),"NUMBER REPRESENTATION" )>0 then
		        dd.num_representation=trim(reading(1))
		        dd.num_r=true
		      end
		      if Instr(reading(0),"ORIENTATION OF DOSE" )>0 then
		        dd.orientation=trim(reading(1))
		        dd.orien = true
		      end
		      if Instr(reading(0),"SIZE OF DIMENSION 1"  )>0 then
		        dd.Size_of_Dimension1=val(reading(1))
		        dd.size_D1 = true
		      end
		      if Instr(reading(0),"SIZE OF DIMENSION 2"  )>0 then
		        dd.size_of_Dimension2=val(reading(1))
		        dd.size_d2=true
		      end
		      if Instr(reading(0),"SIZE OF DIMENSION 3"  )>0 then
		        dd.size_of_Dimension3=val(reading(1))
		        dd.size_d3=true
		      end
		      if Instr(reading(0),"VERTICAL GRID INTERVAL" )>0 then
		        dd.vertical_Grid=val(reading(1))
		        dd.vertical_G=true
		      end
		      if Instr(reading(0),"Depth GRID INTERVAL" )>0 then
		        dd.Depth_Grid=val(reading(1))
		      end
		      if Instr(reading(0),"Dose scale" )>0 then
		        dd.Dose_Scale=val(reading(1))
		      end
		      if Instr(reading(0),"Fraction Group ID" )>0 then
		        dd.Fraction_Group_ID=Trim(reading(1))
		      end
		    end
		  loop until ubound(reading) =-1
		  dd.file_Num=filenumber
		  dd.Dose_name="RTOG"
		  '=======================================================================
		  'Flag check
		  'Dim name as String
		  'name="Dose"
		  'if dose.Coord_1 = false then
		  'Error_window(name, "Coord 1 of first point",filenumber)
		  'end
		  'if dose.Coord_2 = false then
		  'Error_window(name, "Coord 2 of first point",filenumber)
		  'end
		  'if dose.Dose_U = false then
		  'Error_window(name, "Dose Units",filenumber)
		  'end
		  'if dose.Horizontal_G = false then
		  'Error_window(name, "Horizontal grid interval",filenumber)
		  'end
		  'if dose.vertical_G = false then
		  'Error_window(name, "Vertical grid interval",filenumber)
		  'end
		  'if dose.num_D = false then
		  'Error_window(name, "Number of Dimensions",filenumber)
		  'end
		  'if dose.num_R = false then
		  'Error_window(name, "Number Representation",filenumber)
		  'end
		  'if dose.orien = false then
		  'Error_window(name, "Orientation of dose",filenumber)
		  'end
		  'if dose.size_D1 = false then
		  'Error_window(name, "Size of Dimension 1",filenumber)
		  'end
		  'if dose.size_D2 = false then
		  'Error_window(name, "Size of Dimension 2",filenumber)
		  'end
		  'if dose.size_D3 = false then
		  'Error_window(name, "Size of Dimension 3",filenumber)
		  'end
		  'if dose.Plan_I = false then
		  'Error_window(name, "Plan ID",filenumber)
		  'end
		  'if dose.engine_b = false then
		  'Error_window(name, "Engine",filenumber)
		  'dose.engine="RTOG_"+str(filenumber)
		  'end
		  
		  if dd.Plan_ID=Plan_Name or dd.Fraction_Group_ID=Plan_Name or Plan_Name="None" Then
		    
		    
		    '==============================================================
		    //now open the actual dose file
		    if dd.Size_D1 = true and dd.Size_D2 = true and dd.Size_D3 = true then
		      if dd.Num_Representation = "character" then' If dose file is text
		        f0=f0.parent.child(fname)
		        dose_ts=f0.openasTextFile
		        tmpstr=dose_ts.readline
		        Dose_Planes = val(tmpstr.NthField("""",3))
		        redim dd.Dose_Distribution(dose_Planes-1)
		        num_points=dd.Size_of_Dimension1*dd.size_of_Dimension2
		        dd.Dmax=0
		        
		        
		        
		        
		        for i=1 to dose_Planes //Get Dose distribution for each plane
		          dose_data=new RTOG_Dose_Plane // dose data array for each plane
		          redim dose_data.Points(num_points-1)
		          
		          dose_data.Z=val(dose_ts.readline.Nthfield("""",3))
		          
		          count = 0
		          for j=1 to num_points/10 //Get the dose values at each point
		            oneline=dose_ts.readline
		            for k=1 to 10 // 10 points to each line
		              dose_data.Points(count)=val(oneline.nthField(",",k))
		              if dose_data.Points(count)>dd.Dmax then
		                dd.Dmax=dose_data.Points(count)
		              elseif dose_data.Points(count)<dd.Dmin then
		                dd.Dmin=dose_data.Points(count)
		              end
		              count=count +1
		            next
		          next
		          dd.dose_Distribution(i-1)=dose_data
		        next
		        dose_ts.close
		      Elseif dd.Num_Representation="TWO'S COMPLEMENT INTEGER" then
		        f0=f0.parent.child(fname)
		        num_points=dd.Size_of_Dimension1*dd.Size_of_dimension2
		        bs=f0.openasbinaryFile
		        bs.littleEndian=false
		        Dose_Planes=dd.size_of_dimension3
		        redim dd.Dose_Distribution(Dose_Planes-1)
		        dd.Dmax=0
		        for i=1 to Dose_Planes
		          dose_data=new RTOG_Dose_Plane
		          Dose_Data.Z=dd.Coord_3_1st_point+dd.Depth_Grid*(i-1)
		          redim Dose_data.points(num_points)
		          for j=0 to num_points-1  //user readbyte (8 bits) or readshort (16 bits)
		            Dose_data.points(j)=bs.ReadInt16*dd.Dose_Scale
		            if dose_data.Points(j)>dd.Dmax then
		              dd.Dmax=dose_data.Points(j)
		            elseif dose_data.Points(j)<dd.Dmin then
		              dd.Dmin=dose_data.Points(j)
		            end
		          next
		          dd.Dose_Distribution(i-1)=Dose_data
		        next
		        bs.close
		      end if
		    end
		    '============================================================
		    
		    Dose.Append dd
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_Structure_Files()
		  //---------------------------------------------
		  // Method to read the strucutre files as text list of 
		  // points
		  //
		  // Updates 
		  // 2012 Alexander, changes made to Class_Opt_Organdose
		  //          we now store some of this infor within the organdose class
		  //---------------------------------------------
		  Dim i as integer
		  Dim g as FolderItem
		  Dim cc as Single
		  Dim temp as String
		  Dim ts as TextInputStream
		  //---------------------------------------------
		  
		  
		  for i=0 to UBound(gRTOG.structures)
		    g=Path
		    g=g.Child("Struct"+Str(i+1)+".pnts")
		    if g.Exists Then
		      ts=TextInputStream.Open(g)
		      if ts<>nil Then
		        temp=ts.ReadLine
		        
		        temp=ts.ReadLine
		        Structure_Dose(i).CutoffDose=val(temp)
		        
		        temp=ts.ReadLine
		        Structure_Dose(i).Voxel_Size=val(temp)
		        
		        temp=ts.ReadLine
		        Structure_Dose(i).Num_Points=val(temp)
		        
		        Structure_Dose(i).Voxel_Size_x=gVis.nx*gVis.scale_width/Structure_Dose(i).Voxel_REs
		        Structure_Dose(i).Voxel_Size_y=gVis.ny*gVis.scale_height/Structure_Dose(i).Voxel_REs
		        ts.Close
		      end
		    end
		  next 'End for each Structure
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Renorm_subfield_index(Beam_Index as Integer)
		  //-------------------------------------------
		  // Method to split dynamic fields
		  //
		  // Update 
		  // 2013 
		  //-------------------------------------------
		  Dim mutotal,dd as Single
		  Dim x,y,j,i,mlc_f_num,col_f_num,dyn_f_num,c_index as Integer
		  Dim beam,bbnew as RTOG_Beam_Geometry
		  //-------------------------------------------
		  
		  if Beam_Index<=-1 and Beam_Index> UBound(gRTOG.Plan(Plan_Index).Beam) Then
		    Return 
		  end
		  
		  Beam=gRTOG.Plan(Plan_Index).Beam(Beam_Index)
		  mutotal=0
		  mlc_f_num=Beam.MLC.NumberofFields
		  col_f_num=Beam.Collimator.NumFields
		  
		  if mlc_f_num>col_f_num Then
		    dyn_f_num=mlc_f_num
		  else
		    dyn_f_num=col_f_num
		  end
		  
		  for i=0 to dyn_f_num-1
		    
		    // Update for Step and Shoot fields that do not have isocenter/collimator changes per index
		    if beam.Collimator.NumFields=1 or i>UBound(beam.Collimator.Fields)  Then
		      c_index=0
		      
		      // Calculate the number of MUs per beam
		      
		      if i<=UBound(beam.MLC.Fields) Then
		        dd=beam.MLC.Fields(i).Indexnum
		      else
		        MsgBox("Error within method split dynamic fields")
		        Return
		      end
		      
		    else
		      c_index=i
		      
		      // Calculate the number of MUs per beam
		      if i<=UBound(beam.Collimator.Fields) Then
		        dd=beam.Collimator.Fields(i).Index
		      else
		        MsgBox("Error within method split dynamic fields")
		        Return
		      end
		      
		      
		    end
		    
		    
		    
		    
		    if dd>mutotal Then
		      mutotal=dd
		    end
		  next
		  
		  
		  if mutotal<=0.0 Then
		    MsgBox("Error within method split dynamic fields")
		    Return
		  end
		  
		  
		  for i=0 to dyn_f_num-1
		    
		    // Update for Step and Shoot fields that do not have isocenter/collimator changes per index
		    if beam.Collimator.NumFields=1 or i>UBound(beam.Collimator.Fields)  Then
		      // Calculate the number of MUs per beam
		      if i<=UBound(beam.MLC.Fields) Then
		        beam.MLC.Fields(i).Indexnum=beam.MLC.Fields(i).Indexnum/mutotal
		      end
		      
		    else
		      // Calculate the number of MUs per beam
		      if i<=UBound(beam.Collimator.Fields) Then
		        beam.Collimator.Fields(i).Index=beam.Collimator.Fields(i).Index/mutotal
		      end
		      
		      
		    end
		  next
		  
		  
		  
		  
		  
		  Return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Split_DYNAMIC_Fields(Beam_Index as Integer)
		  //-------------------------------------------
		  // Method to split dynamic fields
		  //
		  // Update 
		  // 2013 
		  //-------------------------------------------
		  Dim dd as Single
		  Dim x,y,j,i,mlc_f_num,col_f_num,dyn_f_num,c_index as Integer
		  Dim beam,bbnew as RTOG_Beam_Geometry
		  //-------------------------------------------
		  
		  
		  if Beam_Index>-1 and Beam_Index<= UBound(gRTOG.Plan(Plan_Index).Beam) Then
		    Beam=gRTOG.Plan(Plan_Index).Beam(Beam_Index)
		    beam.Collimator.NumFields=UBound(beam.Collimator.Fields)+1
		    Renorm_subfield_index(Beam_Index)
		    
		    mlc_f_num=Beam.MLC.NumberofFields
		    col_f_num=Beam.Collimator.NumFields
		    
		    if mlc_f_num>col_f_num Then
		      dyn_f_num=mlc_f_num
		    else
		      dyn_f_num=col_f_num
		    end
		    
		    
		    for i=0 to dyn_f_num-1
		      bbnew= new RTOG_Beam_Geometry
		      bbnew.Collimator= new Class_Collimator
		      ReDim bbnew.Collimator.Fields(0)
		      bbnew.Collimator.Fields(0)=new Class_Collimator_Fields
		      bbnew.Collimator.Fields(0).isocenter=new Class_isocenter
		      bbnew.mlc= new Class_MLC
		      
		      bbnew.Beam_Mode=beam.beam_mode
		      bbnew.SSD=beam.SSD
		      bbnew.Beam_Type="Static"
		      
		      bbnew.Beam_Num=UBound(gRTOG.Plan(Plan_Index).Beam)+2
		      bbnew.Beam_Description="Subfield of "+gRTOG.Plan(Plan_Index).Beam(Beam_Index).Beam_Description
		      
		      bbnew.Collimator.fields(0).X1=beam.Collimator.fields(0).X1
		      bbnew.Collimator.fields(0).X2=beam.Collimator.fields(0).X2
		      bbnew.Collimator.fields(0).Y1=beam.Collimator.fields(0).Y1
		      bbnew.Collimator.fields(0).Y2=beam.Collimator.fields(0).Y2
		      bbnew.Collimator.Type="Static"
		      
		      bbnew.Beam_Energy=beam.beam_energy
		      bbnew.RT_name=beam.RT_name
		      
		      // Update for Step and Shoot fields that do not have isocenter/collimator changes per index
		      if beam.Collimator.NumFields=1 or i>UBound(beam.Collimator.Fields)  Then
		        c_index=0
		      else
		        c_index=i
		      end
		      bbnew.Collimator.Fields(0).isocenter.X=beam.Collimator.Fields(c_index).isocenter.X
		      bbnew.Collimator.Fields(0).isocenter.y=beam.Collimator.Fields(c_index).isocenter.y
		      bbnew.Collimator.Fields(0).isocenter.z=beam.Collimator.Fields(c_index).isocenter.z
		      bbnew.Collimator.Fields(0).Collimator_Angle=beam.Collimator.Fields(c_index).Collimator_Angle
		      bbnew.Collimator.Fields(0).Gantry_Angle=beam.Collimator.Fields(c_index).Gantry_Angle
		      bbnew.Collimator.Fields(0).Couch_Angle=beam.Collimator.Fields(c_index).Couch_Angle
		      
		      
		      // Calculate the number of MUs per beam
		      if i=0 Then
		        if beam.Collimator.NumFields=1 Then
		          dd=beam.MLC.Fields(i).Indexnum
		        else
		          dd=beam.Collimator.Fields(i).Index
		        end
		        
		      elseif beam.Collimator.NumFields>1 and (i-1)<=UBound(beam.Collimator.Fields) Then
		        dd=beam.Collimator.Fields(i).Index-beam.Collimator.Fields(i-1).Index
		      elseif beam.Collimator.NumFields=1 and (i-1)<=UBound(beam.MLC.Fields)  then
		        dd=beam.MLC.Fields(i).Indexnum-beam.MLC.Fields(i-1).Indexnum
		      else
		        MsgBox("Error within method split dynamic fields")
		        Return
		      end
		      bbnew.MU=dd*beam.MU
		      
		      
		      bbnew.Beam_Weight=1
		      bbnew.Number_of_Tx=Beam.Number_of_Tx
		      bbnew.Beam_DoseRate=Beam.Beam_DoseRate
		      
		      bbnew.MLC.Model=Beam.MLC.Model
		      bbnew.MLC.MLC_Type="Static"
		      bbnew.MLC.NumberofFields=1
		      bbnew.MLC.Model_Type=Beam.MLC.Model_Type
		      bbnew.MLC.MLC_Direction=Beam.MLC.MLC_Direction
		      ReDim bbnew.MLC.LeafBoundaries(UBound(Beam.MLC.LeafBoundaries))
		      for j=0 to UBound(Beam.MLC.LeafBoundaries)
		        bbnew.MLC.LeafBoundaries(j)=Beam.MLC.LeafBoundaries(j)
		      Next
		      bbnew.MLC.Abutting_Gap=Beam.MLC.Abutting_Gap
		      
		      ReDim bbnew.MLC.Fields(0)
		      bbnew.MLC.Fields(0)=new Class_MLC_Positions
		      j=UBound(Beam.MLC.Fields(i).Leaf_A)
		      bbnew.MLC.Fields(0).Indexnum=1
		      
		      bbnew.MLC.NumberofLeafPairs=Beam.MLC.NumberofLeafPairs
		      ReDim bbnew.MLC.Fields(0).Leaf_A(j)
		      ReDim bbnew.MLC.Fields(0).Leaf_b(j)
		      
		      
		      for j=0 to UBound(Beam.MLC.Fields(i).Leaf_A)
		        bbnew.MLC.Fields(0).Leaf_A(j)=Beam.MLC.Fields(i).Leaf_A(j)
		        bbnew.MLC.Fields(0).Leaf_B(j)=Beam.MLC.Fields(i).Leaf_B(j)
		      Next
		      
		      if bbnew.MU>0 Then
		        gRTOG.Plan(Plan_Index).Beam.append bbnew
		        MC_AddBeam
		      end
		    next
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Tomo_Sinogram_Parser(bb as RTOG_Beam_Geometry) As RTOG_Beam_Geometry
		  //-------------------------------
		  // Break up the sinogram into MLC fields
		  //
		  // Return a McGill RT beam
		  //
		  // This removes the last field
		  //
		  // Updates
		  // 2012 Robert Maglieri
		  //-------------------------------
		  Dim i,gg,k,newfield,l,temp_leaf_number,newsubindex as Integer
		  Dim mlc as Class_MLC
		  Dim mlc_f_index,index(-1), leaf(-1) as Single
		  Dim subindex,subtotal as Double
		  Dim newbeam as RTOG_Beam_Geometry
		  Dim subff as Class_MLC_Positions
		  //-------------------------------
		  
		  mlc=bb.MLC
		  //mlc.Fields
		  
		  // Initial beam
		  newbeam=new RTOG_Beam_Geometry
		  newbeam.RT_name=bb.RT_name
		  newbeam.Beam_Mode=bb.Beam_Mode
		  newbeam.Beam_Num=bb.Beam_Num
		  
		  newbeam.Beam_Description=bb.Beam_Description
		  newbeam.Collimator=new Class_Collimator
		  newbeam.Collimator.Type=bb.Collimator.Type
		  newbeam.Nominal_Isocenter=bb.Nominal_Isocenter
		  newbeam.Beam_Energy=bb.Beam_Energy
		  newbeam.MU=bb.MU
		  newbeam.Beam_Type=bb.Beam_Type
		  newbeam.Beam_Weight=bb.Beam_Weight
		  newbeam.Beam_DoseRate=bb.Beam_DoseRate
		  newbeam.SSD=bb.SSD
		  newbeam.Rx_Dose=bb.Rx_Dose
		  newbeam.Fraction_Group_ID=bb.Fraction_Group_ID
		  newbeam.Aperture_Type=bb.Aperture_Type
		  newbeam.Number_of_Tx=bb.Number_of_Tx
		  
		  
		  newbeam.MLC=new Class_MLC
		  newbeam.MLC.MLC_Type=mlc.MLC_Type
		  newbeam.MLC.Model=mlc.Model
		  newbeam.MLC.Model_Type=mlc.Model_Type
		  newbeam.MLC.NumberofLeafPairs=mlc.NumberofLeafPairs
		  newbeam.MLC.NumberofFields=0
		  
		  
		  
		  
		  subindex=1/(mlc.NumberofFields-1)
		  for gg=0 to mlc.NumberofFields-2
		    ReDim index(-1)
		    ReDim leaf(-1)
		    mlc_f_index=mlc.Fields(gg).Indexnum
		    for k=0 to UBound(mlc.Fields(gg).Leaf_A)
		      if mlc.Fields(gg).Leaf_A(k)>0 Then
		        index.Append mlc.Fields(gg).Leaf_A(k)
		        leaf.Append k
		      end
		    next
		    
		    
		    //Break up MLC field
		    index.SortWith(leaf)
		    index.Sort
		    
		    // Total number of subfields
		    newfield=UBound(index)+2
		    subtotal=0
		    for k=1 to newfield
		      subff=new Class_MLC_Positions
		      
		      ReDim subff.Leaf_A(mlc.NumberofLeafPairs-1)
		      for l=0 to mlc.NumberofLeafPairs-1
		        subff.Leaf_A(l)=0
		      Next
		      
		      // Deter leaves that should be open for this index
		      if (k-1)<=UBound(index) Then
		        subff.Indexnum=index(k-1)*subindex+subindex*(gg)
		      else // Determine the remaining 
		        subff.Indexnum=1*subindex+subindex*(gg)
		      end
		      
		      // Open leaves that should be open for this index
		      for l=k to (newfield-1)
		        temp_leaf_number=leaf(l-1)
		        subff.Leaf_A(temp_leaf_number)=1
		      Next
		      
		      newbeam.MLC.Fields.Append subff
		      newbeam.MLC.NumberofFields=newbeam.MLC.NumberofFields+1
		      newbeam.Collimator.NumFields=newbeam.MLC.NumberofFields
		      
		      newsubindex=newbeam.Collimator.NumFields-1
		      // Update Collimator fields
		      ReDim newbeam.Collimator.Fields(newsubindex)
		      newbeam.Collimator.Fields(newsubindex)=new Class_Collimator_Fields
		      newbeam.Collimator.Fields(newsubindex).isocenter=new Class_isocenter
		      newbeam.Collimator.Fields(newsubindex).Collimator_Angle=bb.Collimator.Fields(gg).Collimator_Angle
		      newbeam.Collimator.Fields(newsubindex).Index=subff.Indexnum
		      
		      // Update 2012 by Robert Maglieri 
		      // shifts all angles by 3.52, McGill beam gantry angles were off by this amoun
		      newbeam.Collimator.Fields(newsubindex).Gantry_Angle=bb.Collimator.Fields(gg).Gantry_Angle+ (360/(51*2))
		      newbeam.Collimator.Fields(newsubindex).Couch_Angle=bb.Collimator.Fields(gg).Couch_Angle
		      newbeam.Collimator.Fields(newsubindex).X1=bb.Collimator.Fields(gg).X1
		      newbeam.Collimator.Fields(newsubindex).X2=bb.Collimator.Fields(gg).X2
		      newbeam.Collimator.Fields(newsubindex).y1=bb.Collimator.Fields(gg).y1
		      newbeam.Collimator.Fields(newsubindex).y2=bb.Collimator.Fields(gg).y2
		      
		      newbeam.Collimator.Fields(newsubindex).isocenter.z=bb.Collimator.Fields(gg).isocenter.z
		      newbeam.Collimator.Fields(newsubindex).isocenter.y=bb.Collimator.Fields(gg).isocenter.y
		      newbeam.Collimator.Fields(newsubindex).isocenter.x=bb.Collimator.Fields(gg).isocenter.x
		      
		      
		    Next
		  Next
		  Return newbeam
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_DV_Contraints_File()
		  //-----------------------------------
		  // Write Organ Constraint File
		  //
		  //-----------------------------------
		  Dim f as FolderItem
		  Dim ts as TextOutputStream
		  Dim segmentUse as String
		  //-----------------------------------
		  
		  
		  f=Path
		  if f=nil Then
		    Return
		  end
		  
		  f=f.Child("OrganConstr.dat")
		  
		  if f=nil Then
		    Return
		  end
		  
		  if f.Exists Then
		    f.Delete
		  end
		  ts=f.CreateTextFile
		  if ts=nil Then
		    Return
		  end
		  ts.Delimiter=EndOfLine.UNIX
		  ts.WriteLine Organ_Constra
		  
		  if UseMaxSegement Then
		    segmentUse="Yes"
		  else
		    segmentUse="No"
		  end
		  
		  ts.WriteLine "Segment Constraints: "+segmentUse
		  ts.WriteLine "Maximum number of segments: "+Format(MaximumSegments,"#")+", "+Format(MaximumSegmentsPriority,"#.###e")
		  ts.Close
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_DV_Contraints_String()
		  //-----------------------------------
		  // Make Organ Constraint File
		  //
		  //-----------------------------------
		  Dim f as FolderItem
		  Dim i,k as Integer
		  Dim text,name as String
		  Dim good as Boolean
		  //-----------------------------------
		  
		  Organ_Constra=""
		  for i=0 to UBound(Structure_Dose)
		    if Structure_Dose(i).Use_Min_Dose Then
		      text="Yes"
		    else
		      text="No"
		    end
		    Organ_Constra=Organ_Constra+"Target "+str(i+1)+" Target: " +text+ EndOfLine.UNIX
		    Organ_Constra=Organ_Constra+ "Maximum Dose: " + Format(Structure_Dose(i).MaxDose,"#.###e")+EndOfLine.UNIX
		    Organ_Constra=Organ_Constra+  "Minimum Dose: " +  Format(Structure_Dose(i).MinDose,"#.###e")+EndOfLine.UNIX
		    Organ_Constra=Organ_Constra+  "Maximum Dose Priority: " +  Format(Structure_Dose(i).Max_Priority,"#.###e")+EndOfLine.UNIX
		    Organ_Constra=Organ_Constra+ "Minimum Dose Priority: " + Format(Structure_Dose(i).Min_Priority,"#.###e")+EndOfLine.UNIX
		    Organ_Constra=Organ_Constra+ "VoxRes: " + Format(Structure_Dose(i).Voxel_REs,"#")+EndOfLine.UNIX
		    Organ_Constra=Organ_Constra+ "TargetNormVol: " + Format(Structure_Dose(i).Target_Norm_Volume,"#.##")+EndOfLine.UNIX
		    Organ_Constra=Organ_Constra+ "TargetNormDose: " + Format(Structure_Dose(i).Target_Norm_Dose,"#.##")+EndOfLine.UNIX
		    Organ_Constra=Organ_Constra+ "Importance\Priority: " + Format(Structure_Dose(i).Importance,"#")+" "+ Format(Structure_Dose(i).OverlapPriority,"#")+EndOfLine.UNIX
		    
		    
		    if Structure_Dose(i).Use_DV_Constraint Then
		      text="Yes"
		    else
		      text="No"
		    end
		    Organ_Constra=Organ_Constra+  "Organ "+str(i+1)+" DV Constraints: " +text+EndOfLine.UNIX
		    for k=0 to UBound(Structure_Dose(i).Constraints)
		      Organ_Constra=Organ_Constra+   Format(Structure_Dose(i).Constraints(k).dose,"#.##e")+EndOfLine.UNIX
		      Organ_Constra=Organ_Constra+ Format(Structure_Dose(i).Constraints(k).volume,"#.##e")+EndOfLine.UNIX
		      Organ_Constra=Organ_Constra+  Format( Structure_Dose(i).Constraints(k).Priority,"#.##e")+EndOfLine.UNIX
		    next
		    
		    
		    if Structure_Dose(i).AvgDose_Use Then
		      text="Yes"
		    else
		      text="No"
		    end
		    Organ_Constra=Organ_Constra+  "Organ "+str(i+1)+" AvgDose Constraints: " +text+EndOfLine.UNIX
		    Organ_Constra=Organ_Constra+  "AvgDoseValue : "+ Format(Structure_Dose(i).AvgDose,"#.##e")+EndOfLine.UNIX
		    Organ_Constra=Organ_Constra+  "AvgDosePen : " +Format(Structure_Dose(i).AvgDosePen,"#.##e")+EndOfLine.UNIX
		    
		    
		    if Structure_Dose(i).Use_Max_Dose Then
		      text="Yes"
		    else
		      text="No"
		    end
		    Organ_Constra=Organ_Constra+  "Organ "+str(i+1)+" MaxDose Constraints: " +text+EndOfLine.UNIX
		    
		    
		    Organ_Constra=Organ_Constra+ EndOfLine.UNIX
		    Organ_Constra=Organ_Constra+ EndOfLine.UNIX
		  next
		  
		  Write_DV_Contraints_File
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_McGill_Beam()
		  // =========================
		  // Write McGill RT Beam file
		  //
		  //=========================
		  Dim j, k as integer
		  Dim f as FolderItem
		  // ==========================
		  
		  //1st Delete all .Beam files
		  f = new FolderItem
		  f=Path
		  PW_StaticText="Deleting old beams..."
		  PW_Progress_Max=f.Count
		  for k =  f.Count DownTo 1
		    if InStr(f.Item(k).Name,".Beam")>0 or InStr(f.Item(k).Name,".MLC")>0 or InStr(f.Item(k).Name,".Jaw")>0 Then
		      f.Item(k).Delete
		    end
		    PW_Progress=PW_Progress+1
		    
		  next
		  
		  
		  //Loop for all beams, write new .Beam file
		  PW_Progress_Max=UBound(Beam)
		  for k =0 to UBound(Beam)
		    //------Progress Window
		    PW_StaticText="Writing Plan : "+Plan_ID+beam(k).Beam_Description+chr(13)+     "Beam File         : "+str(k+1)
		    PW_Progress=k
		    
		    
		    //------Save all beam information
		    Write_McGill_Beam_One(k)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_McGill_Beam_One(k as Integer)
		  // =========================
		  // Write McGill RT Beam file
		  //
		  // Update 2012
		  // Option to only write one beam at a time
		  //=========================
		  Dim line ,a,fname as string
		  Dim ts as textOutputStream
		  Dim i ,j as integer
		  Dim f as FolderItem
		  // ==========================
		  
		  // Determine file name
		  fname=str(k+1)
		  while len(fname)<3
		    fname="0"+fname
		  wend
		  Beam(k).Beam_Num=k+1
		  fname=fname+".Beam"
		  
		  
		  f = new FolderItem
		  f=Path
		  f=f.child(fname)
		  if f.Exists Then
		    f.Delete
		  end
		  ts=f.createTextFile
		  if ts=nil then
		    MsgBox "Could not write "+f.Name
		    Exit
		  end
		  
		  
		  //------Basic Beam information
		  
		  spaces(ts,"BEAM #", 31, str(k+1))
		  spaces(ts,"TREATMENT UNIT", 31, (beam(k).RT_name))
		  spaces(ts,"BEAM MODALITY", 31, (beam(k).beam_Mode))
		  spaces(ts,"BEAM ENERGY", 31, (beam(k).beam_energy))
		  spaces(ts,"BEAM DOSE RATE", 31, (beam(k).Beam_DoseRate))
		  spaces(ts,"BEAM APPLICATOR", 31, (beam(k).Aperture_ID))
		  spaces(ts,"BEAM DESCRIPTION", 31, (beam(k).Beam_Description))
		  spaces(ts,"RX DOSE PER TX (GY)", 31, str(beam(k).Rx_Dose))
		  spaces(ts,"MUs", 31, Format(beam(k).MU,"#.###"))
		  spaces(ts,"SSD", 31, str(beam(k).SSD))
		  spaces(ts,"BEAM WEIGHT", 31, str(beam(k).Beam_Weight))
		  spaces(ts,"BEAM DOSEWEIGHTPOINT", 31, (beam(k).Beam_Weight_Point))
		  spaces(ts,"NUMBER OF TX", 31, str(beam(k).number_of_Tx))
		  spaces(ts,"FRACTION GROUP ID", 31, (beam(k).Fraction_Group_ID))
		  spaces(ts,"BEAM TYPE", 31, (beam(k).beam_Type))
		  spaces(ts,"COLLIMATOR TYPE", 31, (beam(k).Collimator.type))
		  spaces(ts,"COLLIMATOR SETTING X FIELD", 31, (str(beam(k).Collimator.fields(0).X1+beam(k).Collimator.fields(0).X2)))
		  spaces(ts,"COLLIMATOR SETTING X1", 31, str(beam(k).Collimator.fields(0).X1))
		  spaces(ts,"COLLIMATOR SETTING X2", 31, str(beam(k).Collimator.fields(0).X2))
		  spaces(ts,"COLLIMATOR SETTING Y FIELD", 31, (str(beam(k).Collimator.fields(0).y1+beam(k).Collimator.fields(0).y2)))
		  spaces(ts,"COLLIMATOR SETTING Y1", 31, str(beam(k).Collimator.fields(0).y1))
		  spaces(ts,"COLLIMATOR SETTING Y2", 31, str(beam(k).Collimator.fields(0).y2))
		  spaces(ts,"ISOCENTER POSITION X (CM)" ,31, str(beam(k).Collimator.fields(0).isocenter.X))
		  spaces(ts,"ISOCENTER POSITION Y (CM)" ,31, str(beam(k).Collimator.fields(0).isocenter.y))
		  spaces(ts,"ISOCENTER POSITION Z (CM)" ,31, str(beam(k).Collimator.fields(0).isocenter.z))
		  spaces(ts,"MLC TYPE" ,31, (beam(k).MLC.MLC_type))
		  spaces(ts,"APERTURE TYPE", 31, (beam(k).aperture_Type))
		  spaces(ts,"WEDGE TYPE", 31, beam(k).Wedge_Type)
		  if Beam(k).Wedge_Type<>"" Then
		    spaces(ts,"WEDGE ID", 31, beam(k).Wedge_ID)
		    spaces(ts,"WEDGE ANGLE", 31, beam(k).Wedge_Angle)
		    spaces(ts,"WEDGE ORIENTATION", 31, (beam(k).Wedge_Rotation))
		  end
		  spaces(ts,"COLLIMATOR ANGLE", 31, Format(beam(k).Collimator.fields(0).collimator_Angle,"-#.####"))
		  spaces(ts,"GANTRY ANGLE", 31, Format(beam(k).Collimator.fields(0).gantry_Angle,"-#.####"))
		  spaces(ts,"COUCH ANGLE", 31, Format(beam(k).Collimator.fields(0).couch_Angle,"-#.####"))
		  spaces(ts,"NOMINAL ISOCENTER DIST", 31, Format(beam(k).nominal_Isocenter,"-#.####"))
		  spaces(ts,"NUMBER REPRESENTATION", 31, (beam(k).number_Representation))
		  spaces(ts,"PLAN ID", 31, (Plan_ID))
		  spaces(ts,"PLAN NAME", 31, (Plan_Name))
		  //spaces(ts,"ARC DIRECTION", 31, Format(beam(k).ARC_Direction,"#"))
		  
		  //---------FLEC
		  if beam(k).Beam_Mode="FLEC" then
		    spaces(ts,"FLEC SETTING X FIELD", 31, (str(beam(k).FLEC.x1+beam(k).FLEC.x2)))
		    spaces(ts,"FLEC SETTING X1", 31, str(beam(k).FLEC.x1))
		    spaces(ts,"FLEC SETTING X2", 31, str(beam(k).FLEC.x2))
		    spaces(ts,"FLEC SETTING Y FIELD", 31, (str(beam(k).FLEC.y1+beam(k).FLEC.y2)))
		    spaces(ts,"FLEC SETTING Y1", 31, str(beam(k).FLEC.y1))
		    spaces(ts,"FLEC SETTING Y2", 31, str(beam(k).FLEC.y2))
		  end
		  '/---------End FLEC Type
		  
		  
		  //---------Block Contours
		  for i=0 to UBound(beam(k).Block_Contours)
		    spaces(ts,"BLOCKType", 31, Beam(k).Block_Contours(i).Block_Type)
		    spaces(ts,"BLOCKMaterial", 31, Beam(k).Block_Contours(i).Material)
		    spaces(ts,"BLOCKSBD", 31, Format(Beam(k).Block_Contours(i).SourceToBlockDistance,"-#.#####"))
		    spaces(ts,"BLOCKThickness", 31, Format(Beam(k).Block_Contours(i).Thickness,"-#.#####"))
		    line=""
		    for j=0 to UBound(Beam(k).Block_Contours(i).Pair)
		      line=line+Format(Beam(k).Block_Contours(i).Pair(j).x,"-#.####")+"\"
		    next
		    spaces(ts,"BLOCKPointsX", 31, Line)
		    
		    line=""
		    for j=0 to UBound(Beam(k).Block_Contours(i).Pair)
		      line=line+Format(Beam(k).Block_Contours(i).Pair(j).y,"-#.####")+"\"
		    next
		    spaces(ts,"BLOCKPointsY", 31, Line)
		  Next
		  '/---------End Block Contours
		  
		  ts.close
		  
		  // Write MLC info
		  Write_McGill_MLC(k)
		  
		  //Write Jaw
		  Write_McGill_Jaw(k)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_McGill_Dose(index as integer)
		  '========================================
		  // Write Mc Gill RT dose distribution
		  //
		  //
		  // Updated 2012
		  // Include more DICOM tages into dd file structure
		  // Image now starts at byte 300, changed from 100
		  //
		  '========================================
		  Dim bs as BinaryStream
		  Dim fsize,i,j,k,temp_pos as integer
		  Dim dd  as RTOG_Dose_Distribution
		  Dim f as folderitem
		  Dim newname as String
		  '========================================
		  
		  f = new FolderItem
		  f=Path
		  dd=Dose(index)
		  
		  '1st step to name new  dose
		  f=f.Child(dd.Dose_name+".Dose")
		  if f<>nil then
		    j=0
		    While f.Exists
		      f=f.Parent
		      j=j+1
		      f=f.Child(dd.Dose_name+"-"+str(j)+".Dose")
		    wend
		  end
		  dd.Dose_name=NthField(f.Name,".Dose",1)
		  
		  bs=f.createBinaryFile("")
		  bs.LittleEndian=gPref.endian
		  PW_StaticText="Writing Plan : "+Plan_ID +chr(13)+"Dose : "+f.Name
		  PW_Progress=dd.Size_of_Dimension3
		  
		  
		  if bs<>nil then
		    bs.WriteSingle dd.Coord_1_1st_point
		    bs.WriteSingle dd.Coord_2_1st_point
		    bs.WriteSingle dd.Coord_3_1st_point
		    
		    bs.WriteSingle dd.Size_of_Dimension1
		    bs.WriteSingle dd.Size_of_Dimension2
		    bs.WriteSingle dd.Size_of_Dimension3
		    
		    bs.WriteSingle dd.Horizontal_Grid
		    bs.WriteSingle dd.Vertical_Grid
		    bs.WriteSingle dd.Depth_Grid
		    
		    bs.WriteSingle dd.Dmax
		    bs.WriteSingle dd.Dmin
		    
		    bs.WriteUInt8 len(dd.Dose_Units)
		    bs.Write dd.Dose_Units
		    
		    bs.WriteUInt8 len(dd.engine)
		    bs.Write dd.engine
		    
		    bs.WriteUInt8 len(dd.SOP_Instance_UID)
		    bs.Write dd.SOP_Instance_UID
		    
		    bs.WriteUInt8 len(dd.SumType)
		    bs.Write dd.SumType
		    
		    bs.WriteUInt8 len(dd.Dose_Comment)
		    bs.Write dd.Dose_Comment
		    
		    bs.WriteUInt32 dd.AcquisitionDate
		    bs.WriteUInt32 dd.AcquisitionTime
		    bs.WriteUInt32 dd.Series_Number
		    
		    temp_pos=bs.Position
		    
		    // Write blanks till byte 300
		    // Update 2012 Andrew Alexander
		    while bs.Position<300
		      bs.WriteUInt8 0
		    wend
		    bs.WriteInt16(24631)
		    
		    // Write the dose distribution
		    fsize=dd.Size_of_Dimension1*dd.Size_of_Dimension2
		    for k=1 to dd.Size_of_Dimension3
		      PW_Progress=k
		      
		      for i =1 to fsize
		        bs.WriteSingle dd.Dose_Distribution(k-1).Points(i-1)
		      next
		    next
		    
		    // Write the dose errors matrix
		    for k=1 to dd.Size_of_Dimension3
		      PW_Progress=k
		      
		      for i =1 to fsize
		        if (i-1)<=UBound(dd.Dose_Distribution(k-1).Errors) Then
		          bs.WriteSingle dd.Dose_Distribution(k-1).Errors(i-1)
		        end
		      next
		    next
		    bs.Close
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_McGill_Jaw(fieldnum as integer)
		  //---------------------------------------
		  // Write the MMCTP Jaw file
		  //
		  //
		  //---------------------------------------
		  Dim f as FolderItem
		  Dim ts as TextOutputStream
		  Dim tsin as TextInputStream
		  Dim temp,ff as String
		  Dim i,k as integer
		  Dim Col as Class_Collimator
		  '===============================
		  
		  Col=Beam(fieldnum).Collimator
		  Col.StrFile=""
		  
		  Col.NumFields=UBound(Col.Fields)+1
		  if Col.NumFields<=1 Then
		    Return
		  end
		  
		  //-----Write to file
		  f = new FolderItem
		  f=path
		  Temp=str(fieldnum+1)
		  while len(Temp)<3
		    temp="0"+Temp
		  Wend
		  f=f.Child(Temp+".JAW")
		  ts=f.CreateTextFile
		  
		  
		  Col.StrFile="Type := "+Col.Type+local_endline
		  Col.StrFile=Col.StrFile+"Number of fields := "+str(Col.NumFields)+local_endline
		  
		  for i=1 to Col.NumFields
		    ff=str(i)
		    Col.StrFile=Col.StrFile+"Field "+ff+" Index :"+Format(col.fields(i-1).Index,"-#.####e")+local_endline
		    Col.StrFile=Col.StrFile+"Field "+ff+" X1 :"+ Format(col.fields(i-1).X1,"-#.####e")+local_endline
		    Col.StrFile=Col.StrFile+"Field "+ff+" X2 :"+ Format(col.fields(i-1).X2,"-#.####e")+local_endline
		    
		    Col.StrFile=Col.StrFile+"Field "+ff+" Y1 :"+ Format(col.fields(i-1).Y1,"-#.####e")+local_endline
		    Col.StrFile=Col.StrFile+"Field "+ff+" Y2 :"+ Format(col.fields(i-1).Y2,"-#.####e")+local_endline
		    
		    Col.StrFile=Col.StrFile+"Field "+ff+" Iso X :"+ Format(col.fields(i-1).isocenter.x,"-#.####e")+local_endline
		    Col.StrFile=Col.StrFile+"Field "+ff+" Iso Y :"+ Format(col.fields(i-1).isocenter.y,"-#.####e")+local_endline
		    Col.StrFile=Col.StrFile+"Field "+ff+" Iso Z :"+ Format(col.fields(i-1).isocenter.z,"-#.####e")+local_endline
		    
		    Col.StrFile=Col.StrFile+"Field "+ff+" Gantry :"+ Format(col.fields(i-1).Gantry_Angle,"-#.####")+local_endline
		    Col.StrFile=Col.StrFile+"Field "+ff+" Couch :"+ Format(col.fields(i-1).Couch_Angle,"-#.####")+local_endline
		    Col.StrFile=Col.StrFile+"Field "+ff+" Collimator :"+ Format(col.fields(i-1).Collimator_Angle,"-#.####")+local_endline
		    Col.StrFile=Col.StrFile+"Field "+ff+" ARC Direction :"+ Format(col.fields(i-1).ARC_Direction,"#")+local_endline
		    
		    ts.Write Col.StrFile
		    Col.StrFile=""
		  next
		  
		  ts.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_McGill_MLC(fieldnum as integer)
		  Dim f as FolderItem
		  Dim ts as TextOutputStream
		  Dim tsin as TextInputStream
		  Dim temp as String
		  Dim i,k as integer
		  Dim MLC as Class_MLC
		  '===============================
		  
		  MLC=Beam(fieldnum).mlc
		  mlc.MLC_File=""
		  if UBound(mlc.Fields)=-1 Then
		    Return
		  end
		  
		  f = new FolderItem
		  f=path
		  
		  Temp=str(fieldnum+1)
		  while len(Temp)<3
		    temp="0"+Temp
		  Wend
		  f=f.Child(Temp+".MLC")
		  
		  ts=f.CreateTextFile
		  
		  Spaces(ts,"Treatment",20,mlc.MLC_Type)
		  if InStr(mlc.MLC_Type,"Static")>0 Then
		    Spaces(ts,"Number of Fields",20,str(1))
		  else
		    Spaces(ts,"Number of Fields",20,str(mlc.NumberofFields))
		  End
		  
		  Spaces(ts,"Tolerance",20,mlc.Tolerance)
		  Spaces(ts,"ModelName",20,mlc.Model)
		  Spaces(ts,"ModelType",20,Format(mlc.Model_Type,"#"))
		  Spaces(ts,"LeafDirection",20,Format(mlc.MLC_Direction,"#"))
		  
		  
		  for i=1 to mlc.NumberofFields
		    ts.WriteLine
		    if InStr(mlc.MLC_Type,"Static")>0 and UBound(MLC.Fields)=0Then
		      Spaces(ts,"Field",20,str(mlc.NumberofFields))
		    else
		      Spaces(ts,"Field",20,str(i))
		    End
		    if InStr(mlc.MLC_Type,"Static")>0 and mlc.Fields(i-1).Indexnum=0 Then
		      mlc.Fields(i-1).Indexnum=100
		    end
		    Spaces(ts,"Index",20,Format(mlc.Fields(i-1).Indexnum,"#.#######"))
		    Spaces(ts,"Carriage Group",20,mlc.Fields(i-1).CarriageGroup)
		    Spaces(ts,"Operator",20,mlc.Fields(i-1).Operator)
		    Spaces(ts,"Collimator",20,mlc.Fields(i-1).Collimator)
		    if UBound(mlc.Fields(i-1).Leaf_A)<>(mlc.NumberofLeafPairs-1) Then
		      MsgBox "Could not write MLC file for beam "+f.Name
		      ts.Close
		      Return
		    end
		    for k=1 to mlc.NumberofLeafPairs
		      temp=str(k)+"A"
		      Temp="Leaf "+temp
		      Spaces(ts,temp,20,Format(mlc.Fields(i-1).Leaf_A(k-1),"-#.###"))
		      
		    next
		    
		    if MLC.Model_Type=0 Then // Normal leaf pair MLC type
		      for k=1 to mlc.NumberofLeafPairs
		        temp=str(k)+"B"
		        Temp="Leaf "+temp
		        if (k-1)<=UBound(mlc.Fields(i-1).Leaf_B) and (k-1)>=0 Then
		          Spaces(ts,temp,20,Format(mlc.Fields(i-1).Leaf_B(k-1),"-#.###"))
		        end
		      next
		    end
		    
		    Spaces(ts,"Note",20,mlc.Fields(i-1).Note)
		    Spaces(ts,"Shap",20,mlc.Fields(i-1).Shape)
		    Spaces(ts,"Magnification",20,mlc.Fields(i-1).Magnification)
		  next
		  
		  ts.Close
		  
		  
		  
		  tsin=f.OpenAsTextFile
		  if tsin<> nil Then
		    MLC.MLC_File=tsin.ReadAll
		    tsin.Close
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_McGill_Plan(gpath as FolderItem)
		  //---------------------------
		  // Write the Plan files
		  // Including:
		  // Plan text file
		  // RT Plan file
		  // RT Dose files
		  // DV Contraint file
		  //
		  //---------------------------
		  Dim temp as String
		  Dim f as FolderItem
		  Dim k as Integer
		  Dim ts as TextOutputStream
		  //---------------------------
		  
		  PW_Show=true
		  
		  temp="Plan"+String_Separate+Plan_ID
		  f=new FolderItem
		  f=gpath
		  f=f.Child(temp)
		  f.CreateAsFolder
		  Path=f
		  Write_McGill_Plan_RP
		  Write_McGill_Beam
		  for k=0 to UBound(Dose)
		    Write_McGill_Dose(k)
		  next
		  Write_DV_Contraints_String
		  
		  PW_Show=false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_McGill_Plan_RP()
		  //---------------------------
		  // Write the Plan text file
		  //
		  //---------------------------
		  Dim temp as String
		  Dim f as FolderItem
		  Dim k as Integer
		  Dim ts as TextOutputStream
		  //---------------------------
		  
		  
		  f=Path
		  f=f.Child("RP.dir")
		  if f.Exists Then
		    f.Delete
		  end
		  
		  If f <> Nil then
		    ts=TextOutputStream.Create(f)
		    if ts<>nil Then
		      ts.WriteLine(Plan_Name)
		      ts.WriteLine(DICOM_SOPInstanceUID)
		      ts.WriteLine(DICOM_SeriesInstanceUID)
		      ts.WriteLine(Plan_Date)
		      ts.WriteLine(Plan_Time)
		      ts.WriteLine(ReviewerName)
		      ts.WriteLine(ReviewDate)
		      ts.WriteLine(ReviewTime)
		      ts.WriteLine(ApprovalStatus)
		      ts.WriteLine(SeriesDescription)
		      ts.WriteLine str(DICOM_SeriesNumber)
		      ts.Close
		    end
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_Structure_Files()
		  //---------------------------------------------
		  // Method to write the strucutre files as text list of 
		  // points
		  //
		  // Updates 
		  // 2012 Alexander, changes made to Class_Opt_Organdose
		  //          we now store some of this infor within the organdose class
		  //---------------------------------------------
		  Dim i,j,n,k,pixx,pixy,jj,ii as integer
		  Dim g as FolderItem
		  Dim cmx,cmy,cmz,xp,yp as Single
		  Dim tmpimage  as Picture
		  Dim file as RTOG_Structure_One_Structure
		  Dim poly as class_Polygon
		  Dim temp_file,temp_line, pnt_file, line,x_line_temp,x_line_pnt,endline,name as String
		  Dim ts as TextOutputStream
		  //Dim tmpsurf as RGBSurface
		  //---------------------------------------------
		  
		  
		  // Remove old struct files
		  if Window_Prescription.CheckBox_Struct_Remove.Value Then
		    g=Path
		    for i=g.Count DownTo 1
		      temp_file=g.Item(i).Name
		      if InStr(temp_file,".pnts")>0 Then
		        g.Item(i).Delete
		      end
		    next
		  end
		  
		  
		  
		  '=============Main========
		  endline=EndOfLine.UNIX
		  
		  Window_Prescription.ProgressBar_Struc.maximum= ubound(gRTOG.Scan)
		  
		  
		  
		  for i=0 to UBound(gRTOG.structures)
		    if Structure_Dose(i).Use_DV_Constraint or Structure_Dose(i).Use_Min_Dose or Structure_Dose(i).AvgDose_Use  Then
		      //show progress along the way...to know where we are.
		      //Window_EMET.StaticText_Structure.text="Writing Struture point file : "+gRTOG.Structures(i).Structure_Name
		      
		      //for each structure
		      //initialize the stuff
		      if Structure_Dose(i).Voxel_REs<=0 Then
		        MsgBox "Wrong voxel size for organ "+str(i+1)+" set at "+str(Structure_Dose(i).Voxel_REs)
		        Return
		      end
		      
		      
		      Structure_Dose(i).Voxel_Size_x=gRTOG.Scan(0).Size_of_Dimension1/Structure_Dose(i).Voxel_REs*gvis.scale_width
		      Structure_Dose(i).Voxel_Size_y=gRTOG.Scan(0).Size_of_Dimension2/Structure_Dose(i).Voxel_REs*gvis.scale_height
		      
		      g=Path
		      g=g.Child("Struct"+Str(i+1)+".pnts")
		      
		      if g.Exists Then
		        g.Delete
		      end
		      
		      pnt_file=""
		      temp_file=""
		      Structure_Dose(i).Num_Points=0
		      
		      name=gRTOG.Structures(i).Structure_Name
		      While InStr(name," ")>0 
		        name=Replace(name," ","")
		      wend
		      
		      
		      
		      for n= 0 to ubound(gRTOG.Scan)
		        Window_Prescription.ProgressBar_Struc.Value=n
		        Window_Prescription.ProgressBar_Struc.Refresh
		        
		        tmpimage=New Picture(Structure_Dose(i).Voxel_REs,Structure_Dose(i).Voxel_REs,32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		        //tmpsurf=tmpimage.RGBSurface
		        
		        cmz=gRTOG.Scan(n).Z_Value  //centerofthezslice
		        
		        
		        //create a blank image to draw the segments of the specific structure on
		        tmpimage.graphics.foreColor =  rgb(0,0,0)  //black
		        tmpimage.graphics.UseOldRenderer =  true
		        tmpimage.graphics.fillrect 0,0,tmpimage.width,tmpimage.height
		        tmpimage.graphics.foreColor=rgb(255,255,255) //set to white now...
		        tmpimage.graphics.penHeight=0
		        tmpimage.graphics.penwidth=0
		        //
		        
		        file = new RTOG_Structure_One_Structure
		        file = gRTOG.structures(i).structure_Data(n)
		        //for each segment of each structure.
		        for j = 0 to ubound(file.segments)
		          poly = new class_polygon
		          for k =0 to ubound(file.segments(j).Points)
		            xp=((file.segments(j).Points(k).x-gVis.xoff_set)/Structure_Dose(i).Voxel_Size_x)
		            yp=((file.segments(j).Points(k).y-gVis.yoff_set)/Structure_Dose(i).Voxel_Size_y)
		            pixx=round( xp)
		            pixy=round( yp)
		            poly.AddPoint pixx,pixy
		          next
		          
		          
		          //draw that segment to  picture
		          tmpimage.graphics.UseOldRenderer=True
		          tmpimage.Graphics.DrawPolygon poly.Points
		          tmpimage.graphics.fillPolygon poly.points
		          
		          
		          
		        next ' End for each segment
		        
		        for jj=0 to Structure_Dose(i).Voxel_REs-1
		          x_line_pnt=""
		          x_line_temp=""
		          
		          for ii=0 to Structure_Dose(i).Voxel_REs-1
		            if tmpimage.RGBSurface.Pixel(ii,jj).red=255 then
		              Structure_Dose(i).Num_Points=Structure_Dose(i).Num_Points+1
		              cmx=  (ii)*Structure_Dose(i).Voxel_Size_x+gVis.xoff_set
		              cmy=  (jj)*Structure_Dose(i).Voxel_Size_y+gVis.yoff_set
		              line=Format(cmx,"-#.#######e")+" "+Format(cmy,"-#.#######e")+" "+Format(cmz,"-#.#######e")+endline
		              x_line_pnt=x_line_pnt+line
		            end'struc pixel
		          next'End X line
		          pnt_file=pnt_file+x_line_pnt
		          
		          'temp_file=temp_file+x_line_temp
		          
		        next ' End of tmpimage lookup
		      next '  'End for each Scan
		      
		      
		      '-------- Write Files--------------------------
		      
		      '=====Struct+Str(i)+.pnts====
		      ts=g.CreateTextFile
		      
		      if ts<> nil Then
		        ts.Write Name+endline+_
		        Window_Prescription.EditField_CutoffDose.Text+endline+_
		        format((Structure_Dose(i).Voxel_Size_x*Structure_Dose(i).Voxel_Size_y*gvis.scale_thickness),"-#.####e")+endline+_
		        format(Structure_Dose(i).Num_Points,"-#")+endline+_
		        pnt_file
		        ts.Close
		      end
		      '===END File Write====
		    end
		  next 'End for each Structure
		  
		  //Window_EMET.StaticText_Structure.text="Struture point file finished!"
		  Window_Prescription.ProgressBar_Struc.Value=0
		  Window_Prescription.ProgressBar_Struc.Refresh
		  Window_Prescription.Update_Listbox_Volumes
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		ApprovalStatus As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Beam(-1) As RTOG_Beam_Geometry
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Reference DICOM file for one plan
		#tag EndNote
		DICOM_SeriesInstanceUID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DICOM_SeriesNumber As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Reference DICOM file for one plan
		#tag EndNote
		DICOM_SOPInstanceUID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Dose(-1) As RTOG_Dose_Distribution
	#tag EndProperty

	#tag Property, Flags = &h0
		DVH(-1) As RTOG_Dose_Volume_Histogram
	#tag EndProperty

	#tag Property, Flags = &h0
		dvh_bin As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Film(-1) As RTOG_Digital_Film_Image
	#tag EndProperty

	#tag Property, Flags = &h0
		MaximumSegments As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		MaximumSegmentsPriority As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		Organ_Constra As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Path As folderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Plan_Date As String = "20120425"
	#tag EndProperty

	#tag Property, Flags = &h0
		Plan_ID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Plan_Name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Plan_Time As String = "120228"
	#tag EndProperty

	#tag Property, Flags = &h0
		ReviewDate As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ReviewerName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ReviewTime As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Save_Plan As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		SeriesDescription As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Structure_Dose(-1) As RTOG_Plan_Structure_Dose
	#tag EndProperty

	#tag Property, Flags = &h0
		UseMaxSegement As Boolean
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ApprovalStatus"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_SeriesInstanceUID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_SeriesNumber"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_SOPInstanceUID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dvh_bin"
			Group="Behavior"
			Type="Integer"
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
			Name="MaximumSegments"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaximumSegmentsPriority"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Organ_Constra"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Plan_Date"
			Group="Behavior"
			InitialValue="20120425"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Plan_ID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Plan_Name"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Plan_Time"
			Group="Behavior"
			InitialValue="120228"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReviewDate"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReviewerName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReviewTime"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Save_Plan"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SeriesDescription"
			Group="Behavior"
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
		#tag ViewProperty
			Name="UseMaxSegement"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
