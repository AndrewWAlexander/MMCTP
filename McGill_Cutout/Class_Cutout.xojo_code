#tag Class
Protected Class Class_Cutout
	#tag Method, Flags = &h0
		Sub delete(index as integer)
		  dim f as folderItem
		  dim tmpstr as string
		  
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  tmpstr=MC_file_name+str(index+1)+".egscutout"
		  f=f.Child(tmpstr)
		  if f.Exists Then
		    f.Delete
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub open(index as integer)
		  //--------------------------------------
		  //
		  //
		  //--------------------------------------
		  dim cutoutfile as textInputStream
		  dim tmpstr, outputvaluestr, outputerrorstr, path, newpath,basename,name,energy,app as string
		  dim i as integer
		  dim pddmax, tmppercent as double
		  dim f,g, thisfolder as folderItem
		  //--------------------------------------
		  
		  if index>-1 and index<=UBound(gRTOG.Plan(Plan_Index).beam) Then
		    
		    
		    name=gRTOG.Plan(Plan_Index).beam(index).rt_name
		    energy=gRTOG.Plan(Plan_Index).Beam(index).beam_energy
		    app=gRTOG.Plan(Plan_Index).Beam(index).Aperture_ID
		    f=gRTOG.Plan(Plan_Index).Path
		    
		    tmpstr=MC_file_name+str(index+1)+"-cutout.egsinp"
		    f=f.Child(tmpstr)
		    
		    if f.Exists then
		      
		      cutoutfile=f.OpenAsTextFile
		      
		      //read in the values
		      tmpstr=cutOutfile.readline
		      CutOutmaterial=rtrim(left(tmpstr, instr(tmpstr," ")))
		      
		      tmpstr=cutOutfile.readline
		      GapMaterial=rtrim(left(tmpstr, instr(tmpstr," ")))
		      
		      tmpstr=cutOutfile.readline
		      phantomMaterial=rtrim(left(tmpstr, instr(tmpstr," ")))
		      
		      tmpstr=cutOutfile.readline
		      ECUT=val(left(tmpstr, instr(tmpstr," ")))
		      
		      tmpstr=cutOutfile.readline
		      PCUT=val(left(tmpstr, instr(tmpstr," ")))
		      
		      tmpstr=cutOutfile.readline
		      DistInputPhsp=val(left(tmpstr, instr(tmpstr," ")))
		      
		      tmpstr=cutOutfile.readline
		      cutoutThickness=val(left(tmpstr, instr(tmpstr," ")))
		      
		      tmpstr=cutOutfile.readline
		      GapThickness=val(left(tmpstr, instr(tmpstr," ")))
		      
		      tmpstr=cutOutfile.readline
		      scoringRegionThickness=val(left(tmpstr, instr(tmpstr," ")))
		      
		      tmpstr=cutOutfile.readline
		      scoringRegionRadius=val(left(tmpstr, instr(tmpstr," ")))
		      
		      
		      tmpstr=cutOutfile.readline
		      phantomthickness=val(left(tmpstr, instr(tmpstr," ")))
		      
		      
		      tmpstr=cutOutfile.readline
		      tmpstr=left(tmpstr, instr(tmpstr," "))
		      tmpstr=rtrim(tmpstr)
		      tmpstr=left(tmpstr, len(tmpstr)-1)
		      tmpstr=right(tmpstr, len(tmpstr)-1)
		      inputPhaseSpaceName=tmpstr
		      
		      tmpstr=cutOutfile.readline
		      nHistories=val(left(tmpstr, instr(tmpstr," ")))
		      
		      tmpstr=cutOutfile.readline
		      nreadbuffer=val(left(tmpstr, instr(tmpstr," ")))
		      
		      tmpstr=cutOutfile.readline
		      nwritebuffer=val(left(tmpstr, instr(tmpstr," ")))
		      
		      tmpstr=cutOutfile.readline
		      outputType=val(left(tmpstr, instr(tmpstr," ")))
		      if outputtype<>2 then //meaning there is a need for an output file name
		        tmpstr=cutOutfile.readline
		        tmpstr=left(tmpstr, instr(tmpstr," "))
		        tmpstr=rtrim(tmpstr)
		        tmpstr=left(tmpstr, len(tmpstr)-1)
		        tmpstr=right(tmpstr, len(tmpstr)-1)
		        outputPhaseSpaceName=tmpstr
		      else //means ignore that line...should contain nothing.
		        outputphaseSpaceName=cutOutfile.readline
		      end
		      
		      tmpstr=cutOutfile.readline
		      backscatterType=val(left(tmpstr, instr(tmpstr," ")))
		      
		      tmpstr=cutOutfile.readline
		      seed=val(left(tmpstr, instr(tmpstr," ")))
		      
		      tmpstr=cutOutfile.readline //the ##### line
		      
		      //now the other stuff
		      tmpstr=cutOutfile.readline
		      'physicistInitials=rtrim(left(tmpstr, instr(tmpstr," ")))
		      
		      tmpstr=cutOutfile.readline
		      'patientlastname=rtrim(left(tmpstr, instr(tmpstr," ")))
		      
		      tmpstr=cutOutfile.readline
		      'patientfirstname=rtrim(left(tmpstr, instr(tmpstr," ")))
		      
		      tmpstr=cutOutfile.readline
		      'patientid=rtrim(left(tmpstr, instr(tmpstr," ")))
		      
		      tmpstr=cutOutfile.readline
		      fieldname=rtrim(left(tmpstr, instr(tmpstr," ")))
		      
		      cutOutfile.close
		      
		      
		      
		      
		      //then open the cutout drawing digitizer file (.egscutout)
		      //allow also the possibility that there is none.
		      tmpstr=f.DisplayName
		      tmpstr=left(tmpstr,len(tmpstr)-6)+"egscutoutdata"
		      g=f.Parent
		      g=g.Child(tmpstr)
		      //myownmessagebox "egscutoutdata absolute path: " + tmpstr
		      
		      if g.exists=true then
		        if g<>nil then
		          //myownmessagebox "name egsinp file="+g.NativePath
		          cutOutfile=g.openastextFile
		          tmpstr=cutOutfile.readline
		          originx=val(nthField(tmpstr,",",1))
		          originy=val(nthField(tmpstr,",",2))
		          tmpstr=cutOutfile.readline
		          tmpstr=rtrim(tmpstr)
		          Npoints=val(tmpstr)
		          redim points(0)
		          redim Points(Npoints-1)
		          for i=0 to Npoints-1
		            tmpstr=cutOutfile.readline
		            points(i)=new Class_Block_Pairs 
		            Points(i).X=val(nthField(tmpstr,",",1))
		            Points(i).y=val(nthField(tmpstr,",",2))
		          next
		          cutOutfile.close
		        else
		          MsgBox "coould not open egscutoutdata file"
		        end
		      else
		        MsgBox "problem with file name...egscutoutdata file does not exist"
		        MsgBox "absolute path of egscutoutdata name="+g.NativePath
		      end
		      
		    else
		      open_template
		    end
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub open_template()
		  //---------------------------------------
		  //
		  //
		  //---------------------------------------
		  dim cutoutfile as textInputStream
		  dim tmpstr, outputvaluestr, outputerrorstr, path, newpath,basename,name,energy,app as string
		  dim i as integer
		  dim pddmax, tmppercent as double
		  dim f,g as folderItem
		  dim r as Random
		  //---------------------------------------
		  
		  f=gPref.McGillCutout.Child("ECOWinputfiletemplate.txt")
		  
		  if f=Nil Then
		    Return
		  end
		  
		  
		  
		  
		  r=new Random
		  if f.Exists then
		    
		    cutoutfile=f.OpenAsTextFile
		    
		    //read in the values
		    tmpstr=cutOutfile.readline
		    CutOutmaterial=rtrim(left(tmpstr, instr(tmpstr," ")))
		    
		    tmpstr=cutOutfile.readline
		    GapMaterial=rtrim(left(tmpstr, instr(tmpstr," ")))
		    
		    tmpstr=cutOutfile.readline
		    phantomMaterial=rtrim(left(tmpstr, instr(tmpstr," ")))
		    
		    tmpstr=cutOutfile.readline
		    ECUT=val(left(tmpstr, instr(tmpstr," ")))
		    
		    tmpstr=cutOutfile.readline
		    PCUT=val(left(tmpstr, instr(tmpstr," ")))
		    
		    tmpstr=cutOutfile.readline
		    DistInputPhsp=val(left(tmpstr, instr(tmpstr," ")))
		    
		    tmpstr=cutOutfile.readline
		    cutoutThickness=val(left(tmpstr, instr(tmpstr," ")))
		    
		    tmpstr=cutOutfile.readline
		    GapThickness=val(left(tmpstr, instr(tmpstr," ")))
		    
		    tmpstr=cutOutfile.readline
		    scoringRegionThickness=val(left(tmpstr, instr(tmpstr," ")))
		    
		    tmpstr=cutOutfile.readline
		    scoringRegionRadius=val(left(tmpstr, instr(tmpstr," ")))
		    
		    
		    tmpstr=cutOutfile.readline
		    phantomthickness=val(left(tmpstr, instr(tmpstr," ")))
		    
		    
		    tmpstr=cutOutfile.readline
		    tmpstr=left(tmpstr, instr(tmpstr," "))
		    tmpstr=rtrim(tmpstr)
		    tmpstr=left(tmpstr, len(tmpstr)-1)
		    tmpstr=right(tmpstr, len(tmpstr)-1)
		    inputPhaseSpaceName=tmpstr
		    
		    tmpstr=cutOutfile.readline
		    nHistories=val(left(tmpstr, instr(tmpstr," ")))
		    
		    tmpstr=cutOutfile.readline
		    nreadbuffer=val(left(tmpstr, instr(tmpstr," ")))
		    
		    tmpstr=cutOutfile.readline
		    nwritebuffer=val(left(tmpstr, instr(tmpstr," ")))
		    
		    tmpstr=cutOutfile.readline
		    outputType=val(left(tmpstr, instr(tmpstr," ")))
		    if outputtype<>2 then //meaning there is a need for an output file name
		      tmpstr=cutOutfile.readline
		      tmpstr=left(tmpstr, instr(tmpstr," "))
		      tmpstr=rtrim(tmpstr)
		      tmpstr=left(tmpstr, len(tmpstr)-1)
		      tmpstr=right(tmpstr, len(tmpstr)-1)
		      outputPhaseSpaceName=tmpstr
		    else //means ignore that line...should contain nothing.
		      outputphaseSpaceName=cutOutfile.readline
		    end
		    
		    tmpstr=cutOutfile.readline
		    backscatterType=val(left(tmpstr, instr(tmpstr," ")))
		    
		    seed=r.InRange(1,1000)
		    
		    cutOutfile.close
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub save(index as integer)
		  //---------------------------------------------
		  // Write Cutout file
		  //
		  //---------------------------------------------
		  dim f as folderItem
		  dim i as integer
		  dim cutoutfile as textoutputStream
		  dim tmpstr, egsinp_f_name as string
		  //---------------------------------------------
		  
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  egsinp_f_name=MC_file_name+str(index+1)+"-cutout.egsinp"
		  f=f.child(egsinp_f_name)
		  if f.Exists Then
		    f.Delete
		  end
		  cutOutfile=f.createTextFile
		  if cutOutfile=nil then
		    MsgBox "Could not create cutout file!"
		    Return
		  end
		  
		  //write the values
		  cutOutfile.Delimiter=EndOfLine.UNIX
		  cutOutfile.writeline CutOutmaterial + "                 # cutout  material"
		  cutOutfile.writeline GapMaterial + "                      # gap material"
		  cutOutfile.writeline phantomMaterial + "              # phantom material"
		  cutOutfile.writeline Format(ECUT,"#.###") + "          # ECUT - rest mass (MeV)"
		  cutoutfile.writeline Format(PCUT,"#.###") + "          # PCUT (MeV)"
		  cutoutfile.writeline Format(DistInputPhsp,"#.###") + "          # distance between input phsp at 93 cm from the source and top plate cutout (cm)"
		  cutoutfile.writeline Format(cutOutThickness,"#.###") + "     # cutout thickness (cm)"
		  cutoutfile.writeline Format(GapThickness,"#.###") + "    # air gap thickness"
		  cutoutfile.writeline Format(scoringRegionThickness,"#.###") + "    # thickness of scoring region (cm)"
		  cutoutfile.writeline Format(scoringRegionradius,"#.###") + "    # radius of scoring region(>=0.2cm)"
		  cutoutfile.writeline Format(phantomthickness,"#.###") + "     # phantom thickness"
		  cutoutfile.writeline """" + InputPhaseSpaceName + """" +"        # name of input phase space"
		  cutoutfile.writeline format(nhistories,"#") + "              # number histories"
		  cutoutfile.writeline Format(nreadbuffer,"#") + "     # number particles in read buffer "
		  cutoutfile.writeline Format(nwritebuffer,"#") + "    # number particles in write buffer "
		  cutoutfile.writeline Format(outputtype,"#") + "    # type of output"
		  cutoutfile.writeline outputPhaseSpaceName + "    #  name of output phase space"
		  cutoutfile.writeline Format(backscatterType,"#") + "    # backscatter option"
		  cutoutfile.writeline Format(seed,"#") + "    # random seed"
		  cutOutfile.writeline "####################################"
		  cutOutfile.close
		  cutOutfile =nil
		  
		  //---------------------------------------------------
		  // write the egscutoutdata file (the points)
		  tmpstr=MC_file_name+str(index+1)+"-cutout.egscutoutdata"
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child(tmpstr)
		  If f.Exists Then
		    f.Delete
		  End
		  
		  If f<>nil then
		    cutOutfile=f.createtextfile
		    if cutoutfile<>nil Then
		      cutOutfile.Delimiter=EndOfLine.UNIX
		      cutOutfile.writeline Format(originx,"-#.###")+", " +Format(originy,"-#.###")
		      Npoints=ubound(points)
		      cutOutfile.writeline Format(Npoints+1,"#")
		      for i=0 to Npoints
		        cutoutfile.writeLine Format(Points(i).x,"-#.###") + ", "+ Format(Points(i).y,"-#.###")
		      next
		      cutOutfile.close
		    end
		  End
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BackscatterType As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		calculate As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		CutOutMaterial As string
	#tag EndProperty

	#tag Property, Flags = &h0
		CutOutThickness As double
	#tag EndProperty

	#tag Property, Flags = &h0
		cutout_dir As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DistInputPhsp As double
	#tag EndProperty

	#tag Property, Flags = &h0
		doseoutput As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		ECUT As double = 0.7
	#tag EndProperty

	#tag Property, Flags = &h0
		error As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Fieldname As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Finished As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		GapMaterial As string
	#tag EndProperty

	#tag Property, Flags = &h0
		GapThickness As double
	#tag EndProperty

	#tag Property, Flags = &h0
		InputPhaseSpaceName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		jobs As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		NHistories As Int64 = 100000000
	#tag EndProperty

	#tag Property, Flags = &h0
		nominalenergy As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Npoints As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		nreadbuffer As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		nwritebuffer As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		originx As double
	#tag EndProperty

	#tag Property, Flags = &h0
		originy As double
	#tag EndProperty

	#tag Property, Flags = &h0
		OutputPhaseSpaceName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		OutputType As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PCUT As double
	#tag EndProperty

	#tag Property, Flags = &h0
		pegsfile As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PhantomMaterial As string
	#tag EndProperty

	#tag Property, Flags = &h0
		phantomthickness As double
	#tag EndProperty

	#tag Property, Flags = &h0
		phspoutput As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		Points(-1) As Class_Block_Pairs
	#tag EndProperty

	#tag Property, Flags = &h0
		progress As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		queue As String
	#tag EndProperty

	#tag Property, Flags = &h0
		resultdmax As double
	#tag EndProperty

	#tag Property, Flags = &h0
		resultoutput As double
	#tag EndProperty

	#tag Property, Flags = &h0
		resultoutputerror As double
	#tag EndProperty

	#tag Property, Flags = &h0
		resultpddpoint(0) As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		resultpercentcompleted As double
	#tag EndProperty

	#tag Property, Flags = &h0
		ScoringRegionRadius As double
	#tag EndProperty

	#tag Property, Flags = &h0
		ScoringRegionThickness As double
	#tag EndProperty

	#tag Property, Flags = &h0
		seed As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		shell_index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		startdate As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Started As Boolean
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BackscatterType"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="calculate"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CutOutMaterial"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CutOutThickness"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="cutout_dir"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DistInputPhsp"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="doseoutput"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ECUT"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="error"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Fieldname"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Finished"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GapMaterial"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GapThickness"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputPhaseSpaceName"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="jobs"
			Group="Behavior"
			InitialValue="0"
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
			Name="NHistories"
			Group="Behavior"
			InitialValue="100000000"
			Type="Int64"
		#tag EndViewProperty
		#tag ViewProperty
			Name="nominalenergy"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Npoints"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="nreadbuffer"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="nwritebuffer"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="originx"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="originy"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OutputPhaseSpaceName"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OutputType"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PCUT"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pegsfile"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PhantomMaterial"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="phantomthickness"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="phspoutput"
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="progress"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="queue"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="resultdmax"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="resultoutput"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="resultoutputerror"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="resultpercentcompleted"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScoringRegionRadius"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScoringRegionThickness"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="seed"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="shell_index"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="startdate"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Started"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
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
