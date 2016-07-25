#tag Class
Protected Class Class_BEAMnrc_PhaseSpace
	#tag Method, Flags = &h0
		Sub Read(f as FolderItem)
		  //-------------------------------------------
		  //
		  //
		  // 'MODE RW The ﬁle mode: it can be either ’MODE0’ or ’MODE2’ depending on whether 'ZLAST is included in the phase-space parameters.
		  // 'NPPHSP The total number of particles in the ﬁle.
		  // 'NPHOTPHSP The total number of photons in the ﬁle.
		  // 'EKMAXPHSP The maximum kinetic energy of the particles stored in the ﬁle.
		  // 'EKMINPHSPE The minimum electron kinetic energy (MeV).
		  // 'NINCPHSP The number of particles incident from the original (non-phase space) source used to generate the phase space ﬁle.
		  //
		  //
		  // LATCH, E, X, Y, U, V, WT, (ZLAST)
		  //
		  //
		  //-------------------------------------------
		  Dim bs as BinaryStream
		  Dim xx,delx,yy,dely as Single
		  Dim numx, numy,pos,i as Integer
		  Dim size as Int64
		  Dim mb as MemoryBlock
		  Dim bb as Class_BEAMnrc_PhaseSpace_One
		  Dim temp as String
		  //--------------------------------------------
		  
		  
		  bs=f.OpenAsBinaryFile
		  size=bs.Length
		  mb=new MemoryBlock(size)  //Changed to "new MemoryBlock" by William Davis when newmemoryBlock was found to have been deprecated
		  //if mb.size=bs.length then
		  //reading the whole file into thismemblock
		  bs.position=0
		  //mb.stringValue(0,mb.size)=bs.read(bs.Length)
		  'else
		  'MsgBox "MB not big enough"
		  'Return
		  
		  //end
		  //bs.Close
		  
		  bs.LittleEndian=True
		  
		  inmode=bs.Read(5)
		  
		  NPPHSP=bs.ReadInt32
		  
		  NPHOTPHSP=bs.ReadInt32
		  
		  EKMAXPHSP=bs.ReadSingle
		  
		  EKMINPHSPE=bs.ReadSingle
		  
		  NINCPHSP=bs.ReadSingle
		  
		  bs.Position=28
		  
		  for i=1 to 500000
		    bb= new Class_BEAMnrc_PhaseSpace_One
		    
		    
		    bb.LATCH=bs.ReadUInt32
		    
		    //temp=bin(bb.LATCH)
		    //bb.ID=val(Mid(temp,29,1))
		    
		    //temp=mb.StringValue(pos,4)
		    ///temp=Mid(temp,30,1)
		    //i//f temp="1" Then
		    //Break
		    //end
		    
		    
		    
		    ''pos=pos+4
		    bb.e=bs.ReadSingle
		    
		    'pos=pos+4
		    bb.x=bs.ReadSingle
		    
		    'pos=pos+4
		    bb.y=bs.ReadSingle
		    
		    'pos=pos+4
		    bb.u=bs.ReadSingle
		    
		    'pos=pos+4
		    bb.v=bs.ReadSingle
		    
		    'pos=pos+4
		    bb.wt=bs.ReadSingle
		    
		    if inmode="MODE2" Then
		      
		      bb.zlast=bs.ReadSingle
		    end
		    
		    All_Part.Append bb
		    
		    
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write(f as FolderItem)
		  //-------------------------------------------
		  //
		  //
		  'MODE RW The ﬁle mode: it can be either ’MODE0’ or ’MODE2’ depending on whether 'ZLAST is included in the phase-space parameters.
		  'NPPHSP The total number of particles in the ﬁle.
		  'NPHOTPHSP The total number of photons in the ﬁle.
		  'EKMAXPHSP The maximum kinetic energy of the particles stored in the ﬁle.
		  'EKMINPHSPE The minimum electron kinetic energy (MeV).
		  'NINCPHSP The number of particles incident from the original (non-phase space) source used to generate the phase space ﬁle.
		  
		  // LATCH, E, X, Y, U, V, WT, (ZLAST)
		  //-------------------------------------------
		  Dim i as Integer
		  Dim bs as BinaryStream
		  Dim xx,delx,yy,dely as Single
		  Dim numx, numy,pos as Integer
		  Dim mb as MemoryBlock
		  Dim bb as Class_BEAMnrc_PhaseSpace_One
		  
		  
		  EKMAXPHSP=-1000000
		  EKMINPHSPE=10000000
		  
		  NPPHSP=UBound(All_Part)+1
		  
		  
		  for i=0 to UBound(All_Part)
		    if abs(All_Part(i).e)> EKMAXPHSP Then
		      EKMAXPHSP=abs(All_Part(i).e)
		    end
		    
		    if abs(All_Part(i).e)< EKMINPHSPE and All_Part(i).ID=1 Then
		      EKMINPHSPE=abs(All_Part(i).e)
		    end
		    
		  next
		  
		  
		  if f.Exists Then
		    f.Delete
		  end
		  
		  
		  
		  bs=f.CreateBinaryFile("")
		  bs.LittleEndian=True
		  
		  bs.Write inmode
		  i=bs.Position
		  
		  bs.WriteInt32 NPPHSP
		  bs.WriteInt32 NPHOTPHSP
		  bs.WriteSingle EKMAXPHSP
		  bs.WriteSingle EKMINPHSPE
		  bs.WriteSingle NINCPHSP
		  
		  
		  bs.WriteInt16 0
		  bs.WriteInt8 0
		  
		  
		  //bs.Position=28
		  i=bs.Position
		  
		  for i=1 to NPPHSP
		    bb=All_Part(i-1)
		    
		    bs.WriteUInt32 bb.LATCH
		    bs.WriteSingle bb.e
		    bs.WriteSingle bb.x
		    bs.WriteSingle bb.y
		    bs.WriteSingle bb.u
		    bs.WriteSingle bb.v
		    bs.WriteSingle bb.wt
		    if inmode="MODE2" Then
		      bs.WriteSingle bb.zlast
		    end
		  next
		  
		  bs.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_Beamlet(xmin as Single, xmax as Single, delx as single, ymin as Single, ymax as Single, dely as Single, path as string, head_index as Integer)
		  //-------------------------------------------------
		  //
		  //
		  //
		  //-------------------------------------------------
		  Dim part(-1),xx,yy,x,y,i as Integer
		  Dim newphasespace as Class_BEAMnrc_PhaseSpace
		  Dim xlow,xhigh,ylow,yhigh,emax,emin ,bot as Single
		  Dim f as FolderItem
		  Dim ss,newrr as Class_BEAMnrc_PhaseSpace_One
		  Dim beam as RTOG_Beam_Geometry
		  Dim phspname as String
		  //-------------------------------------------------
		  
		  bot=70/100
		  
		  xmax=xmax*bot
		  xmin=xmin*bot
		  delx=delx*bot
		  
		  ymax=ymax*bot
		  dely=dely*bot
		  ymin=ymin*bot
		  
		  
		  
		  xx=Round(xmax-xmin)/delx
		  yy=Round(ymax-ymin)/dely
		  
		  
		  
		  
		  
		  for x=1 to xx 
		    for y=1 to yy
		      
		      xlow=xmin+delx*(x-1)
		      ylow=ymin+dely*(y-1)
		      
		      xhigh=xmin+delx*(x)
		      yhigh=ymin+dely*(y)
		      
		      
		      newphasespace=new Class_BEAMnrc_PhaseSpace
		      newphasespace.inmode=inmode
		      
		      ReDim part(-1)
		      
		      for i=0 to UBound(All_Part)
		        ss=All_Part(i)
		        
		        if ss.x>xlow and ss.X<xhigh and ss.y>ylow and ss.y<yhigh Then
		          newrr= new Class_BEAMnrc_PhaseSpace_One
		          newrr.E=ss.e
		          newrr.y=ss.y
		          newrr.x=ss.x
		          newrr.u=ss.u
		          newrr.v=ss.V
		          newrr.WT=ss.WT
		          newrr.LATCH=ss.LATCH
		          newrr.zlast=ss.zlast
		          newphasespace.All_Part.Append newrr
		          part.Append i
		        end
		        
		      next
		      
		      
		      part.Sort
		      
		      for i=UBound(part) DownTo 0
		        All_Part.Remove part(i)
		      next
		      
		      if UBound(newphasespace.All_Part)>100 Then
		        
		        f=new FolderItem(path, FolderItem.PathTypeShell)
		        phspname="beamlet"+str(x)+"-"+str(y)+".egsphsp1"
		        
		        f=f.Child(phspname)
		        newphasespace.Write(f)
		        
		        beam= new RTOG_Beam_Geometry
		        beam.Collimator= new Class_Collimator
		        beam.Collimator.Fields(0).isocenter=new Class_isocenter
		        beam.mlc= new Class_MLC
		        
		        
		        
		        gRTOG.Plan(Plan_Index).Beam.append beam
		        
		        i=UBound(gRTOG.Plan(Plan_Index).Beam)
		        beam=gRTOG.Plan(Plan_Index).Beam(i)
		        
		        beam.Beam_Mode=gRTOG.Plan(Plan_Index).Beam(head_index).beam_mode
		        beam.Beam_Num=i+1
		        beam.Collimator.fields(0).X1=-xlow
		        beam.Collimator.fields(0).X2=xhigh
		        beam.Collimator.fields(0).Y1=-ylow
		        beam.Collimator.fields(0).Y2=yhigh
		        
		        beam.Beam_Energy=gRTOG.Plan(Plan_Index).Beam(head_index).beam_energy
		        beam.RT_name=gRTOG.Plan(Plan_Index).Beam(head_index).RT_name
		        
		        beam.Collimator.Fields(0).isocenter.X=gRTOG.Plan(Plan_Index).Beam(head_index).Collimator.Fields(0).isocenter.X
		        beam.Collimator.Fields(0).isocenter.y=gRTOG.Plan(Plan_Index).Beam(head_index).Collimator.Fields(0).isocenter.y
		        beam.Collimator.Fields(0).isocenter.z=gRTOG.Plan(Plan_Index).Beam(head_index).Collimator.Fields(0).isocenter.z
		        
		        beam.Collimator.Fields(0).Collimator_Angle=gRTOG.Plan(Plan_Index).Beam(head_index).Collimator.Fields(0).Collimator_Angle
		        beam.Collimator.Fields(0).Gantry_Angle=gRTOG.Plan(Plan_Index).Beam(head_index).Collimator.Fields(0).Gantry_Angle
		        beam.Beam_Description=gRTOG.Plan(Plan_Index).Beam(head_index).Beam_Description
		        
		        MC_AddBeam
		        gBEAM.Beams(i).egs_progress=100
		        gBEAM.Beams(i).egs_Phsp_name=phspname
		        gBEAM.Beams(i).egs_Shell=gBEAM.Beams(head_index).egs_Shell
		        gBEAM.Beams(i).egs_Shell_Index=gBEAM.Beams(head_index).egs_Shell_Index
		        gBEAM.Beams(i).egs_Phsp_link=True
		        gBEAM.Beams(i).egs_BEAMnrc_dir=gBEAM.Beams(head_index).egs_BEAMnrc_dir
		        gBEAM.Beams(i).egs_AddPhsp_Finished=True
		      end
		    next
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		All_Part(-1) As Class_BEAMnrc_PhaseSpace_One
	#tag EndProperty

	#tag Property, Flags = &h0
		EKMAXPHSP As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		EKMINPHSPE As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		inmode As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NINCPHSP As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		NPHOTPHSP As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NPPHSP As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="EKMAXPHSP"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EKMINPHSPE"
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
			Name="inmode"
			Group="Behavior"
			InitialValue="0"
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="NINCPHSP"
			Group="Behavior"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NPHOTPHSP"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NPPHSP"
			Group="Behavior"
			InitialValue="0"
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
