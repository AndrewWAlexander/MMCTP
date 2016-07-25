#tag Class
Protected Class Class_MERT_BEAMlets
	#tag Method, Flags = &h0
		Sub write_beamlets()
		  
		  Break
		  
		  '//-------------------------------------------
		  '//
		  '//
		  ''MODE RW The Ô¨Åle mode: it can be either ‚ÄôMODE0‚Äô or ‚ÄôMODE2‚Äô depending on whether 'ZLAST is included in the phase-space parameters.
		  ''NPPHSP The total number of particles in the Ô¨Åle.
		  ''NPHOTPHSP The total number of photons in the Ô¨Åle.
		  ''EKMAXPHSP The maximum kinetic energy of the particles stored in the Ô¨Åle.
		  ''EKMINPHSPE The minimum electron kinetic energy (MeV).
		  ''NINCPHSP The number of particles incident from the original (non-phase space) source used to generate the phase space Ô¨Åle.
		  '//LATCH, E, X, Y, U, V, WT, (ZLAST)
		  '//-------------------------------------------
		  'Dim g,f as FolderItem
		  'Dim bs as BinaryStream
		  'Dim xx,yy,xlow,xhigh,ylow,yhigh,bot as Single
		  'Dim ff as Boolean
		  'Dim pp,phspname as String
		  'Dim text as TextOutputStream
		  'Dim ss as Shell
		  'Dim x,y,i as Integer
		  'Dim beam as RTOG_Beam_Geometry
		  '
		  '
		  '
		  'if Beam_Index>-1 and Beam_Index<= UBound(gRTOG.Plan(Plan_Index).Beam) Then
		  '
		  'ff=gBEAM.egs_Get_Directory(Beam_Index)
		  '
		  '
		  'pp="/Users/andrew/egsnrc/"+gBEAM.Beams(Beam_Index).egs_BEAMnrc_dir
		  '
		  'f=new FolderItem(pp, FolderItem.PathTypeShell)
		  'f=f.Child(gBEAM.Beams(Beam_Index).egs_Phsp_name)
		  '
		  '
		  '
		  'g=new FolderItem("")
		  'g=g.Child("Beamlet-input")
		  'if g.Exists Then
		  'g.Delete
		  'end
		  '
		  'text=g.CreateTextFile
		  'if Text<> Nil Then
		  'Text.WriteLine f.ShellPath
		  'Text.WriteLine pp
		  'Text.WriteLine Format(xmin,"-#.###")+", "+Format(xmax,"-#.###")+", "+Format(delx,"-#.###")+", "+Format(ymin,"-#.###")+", "+Format(ymax,"-#.###")+", "+Format(dely,"-#.###")
		  'Text.Close
		  '
		  '
		  'Shell = new Shell_EMET
		  '
		  'Shell.Mode=2
		  'Shell.PhspBeamlet=True
		  '
		  'Shell.Execute "bash"
		  'Shell.WriteLine "phsp-beamlet < "+g.ShellPath 
		  '
		  '
		  'xx=Round(xmax-xmin)/delx
		  'yy=Round(ymax-ymin)/dely
		  '
		  '
		  '
		  'for x=1 to xx
		  'for y=1 to yy
		  '
		  'xlow=xmin+delx*(x-1)
		  'ylow=ymin+dely*(y-1)
		  '
		  'xhigh=xmin+delx*(x)
		  'yhigh=ymin+dely*(y)
		  '
		  'phspname="beamlet"+str(x)+"-"+str(y)+".egsphsp1"
		  '
		  '
		  'beam= new RTOG_Beam_Geometry
		  'beam.Collimator= new Class_Collimator
		  'beam.isocenter=new Class_isocenter
		  'beam.mlc= new Class_MLC
		  '
		  '
		  '
		  'gRTOG.Plan(Plan_Index).Beam.append beam
		  'MC_AddBeam
		  '
		  'i=UBound(gRTOG.Plan(Plan_Index).Beam)
		  'beam=gRTOG.Plan(Plan_Index).Beam(i)
		  '
		  'beam.Beam_Mode=gRTOG.Plan(Plan_Index).Beam(Beam_Index).beam_mode
		  'beam.Beam_Num=i+1
		  'beam.Collimator.fields(0).X1=-xlow
		  'beam.Collimator.fields(0).X2=xhigh
		  'beam.Collimator.fields(0).Y1=-ylow
		  'beam.Collimator.fields(0).Y2=yhigh
		  '
		  'beam.Beam_Energy=gRTOG.Plan(Plan_Index).Beam(Beam_Index).beam_energy
		  'beam.RT_name=gRTOG.Plan(Plan_Index).Beam(Beam_Index).RT_name
		  '
		  'beam.isocenter.X=gRTOG.Plan(Plan_Index).Beam(Beam_Index).isocenter.X
		  'beam.isocenter.y=gRTOG.Plan(Plan_Index).Beam(Beam_Index).isocenter.y
		  'beam.isocenter.z=gRTOG.Plan(Plan_Index).Beam(Beam_Index).isocenter.z
		  '
		  'Beam.Collimator.Fields(0).Collimator_Angle=gRTOG.Plan(Plan_Index).Beam(Beam_Index).Collimator_Angle
		  'Beam.Collimator.Fields(0).Gantry_Angle=gRTOG.Plan(Plan_Index).Beam(Beam_Index).Gantry_Angle
		  'beam.Beam_Description=gRTOG.Plan(Plan_Index).Beam(Beam_Index).Beam_Description
		  '
		  'gBEAM.Beams(i).egs_progress=100
		  'gBEAM.Beams(i).egs_Phsp_name=phspname
		  'gBEAM.Beams(i).egs_Shell=gBEAM.Beams(Beam_Index).egs_Shell
		  'gBEAM.Beams(i).egs_Shell_Index=gBEAM.Beams(Beam_Index).egs_Shell_Index
		  'gBEAM.Beams(i).egs_Phsp_link=True
		  'gBEAM.Beams(i).egs_BEAMnrc_dir=gBEAM.Beams(Beam_Index).egs_BEAMnrc_dir
		  'gBEAM.Beams(i).egs_AddPhsp_Finished=True
		  '
		  'next
		  'next
		  'end
		  '
		  'end
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Shell As Shell
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
