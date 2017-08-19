#tag Class
Protected Class Thread_Cutout
Inherits Thread
	#tag Event
		Sub Run()
		  Dim i as Integer
		  
		  if egs_exbeam Then
		    egs_exbeam=False
		    submitjob(Window_BEAM_Options.beam_num)
		  end
		  
		  if refresh_status Then
		    refresh_status=False
		    for i=0 to UBound(Beams)
		      if Beams(i).Started and Beams(i).Finished=False Then
		        Refesh_One(i)
		      end
		    next
		  end
		  
		  
		  
		  gTimer_Refresh.Period=1000
		  gTimer_Refresh.Reset
		  
		  gTimer_run.Period=1000
		  gTimer_Run.Reset
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub addbeam()
		  ReDim Beams(UBound(gRTOG.Plan(Plan_Index).Beam))
		  
		  Beams(UBound(gRTOG.Plan(Plan_Index).Beam))=new Class_Cutout
		  Beams(UBound(gRTOG.Plan(Plan_Index).Beam)).open(UBound(gRTOG.Plan(Plan_Index).Beam))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Clear_old(beam as Integer)
		  //--------------------------------------------------------
		  Dim temp,input_file As String
		  Dim good as Boolean
		  //--------------------------------------------------------
		  
		  Beams(Beam).Started=False
		  Beams(Beam).Finished=False
		  Beams(Beam).progress=0
		  
		  good=Get_Directory(Beam)
		  input_file=MC_file_name+str(beam+1)
		  temp="rm -f " +input_file+".* " + input_file+"-cutout*"
		  cc.beam_num=Beam
		  cc.command =temp
		  MMCTP_Shell_Run.All.Append cc
		  
		  
		  
		  good=Get_Directory(Beam)
		  temp="rm -f  -r *" +input_file+"-cutout*"
		  cc.beam_num=Beam
		  cc.command =temp
		  MMCTP_Shell_Run.All.Append cc
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function cutout_get_shell_Variables(beam as Integer) As Boolean
		  //-------------------------------------------------
		  // to update all beam variables
		  // link between beam variables and lianc settings
		  // link between beam variables and BEAMnrc settings
		  // link between beam variables and cutout settings
		  //-------------------------------------------------
		  dim i,x as integer
		  dim name,energy,mode as String
		  dim tt as Boolean
		  //-------------------------------------------------
		  
		  name=gRTOG.Plan(Plan_Index).beam(beam).rt_name
		  energy=gRTOG.Plan(Plan_Index).Beam(beam).beam_energy
		  mode=gRTOG.Plan(Plan_Index).Beam(beam).beam_mode
		  
		  if beam> UBound(gBEAM.Beams) or beam< 0 Then
		    Return False
		  end
		  
		  
		  if beam> UBound(Beams) Then
		    Return False
		  end
		  
		  
		  gBEAM.Beams(beam).egs_linac_index=-1
		  
		  // Update the Linac link
		  for i=0 to UBound(gLinacs.All_Linacs)
		    if mode= gLinacs.All_Linacs(i).Mode and _
		      gLinacs.All_Linacs(i).RT_name =name and _
		      gLinacs.All_Linacs(i).Energy = energy then
		      gBEAM.Beams(beam).egs_linac_index=i
		      Exit for i
		    end
		  next
		  
		  if gBEAM.Beams(beam).egs_linac_index=-1 Then
		    Return False
		  end
		  
		  
		  
		  tt=gBEAM.egs_Get_Directory(beam)
		  if gBEAM.Beams(beam).egs_Shell_Index>-1 and gBEAM.Beams(beam).egs_Shell_Index<=UBound(gShells.Shells) Then
		    cc = new Class_MMCTP_Commands
		    cc.shell=gShells.Shells(gBEAM.Beams(beam).egs_Shell_Index)
		    
		    if gBEAM.Beams(beam).egs_BEAMnrc_dir="" Then
		      Return False
		    end
		    
		    Beams(beam).shell_index=gBeam.Beams(beam).egs_Shell_Index
		    
		    cc = new Class_MMCTP_Commands
		    cc.Shell= gShells.Shells(gBEAM.Beams(beam).egs_Shell_Index)
		    cc.dir=cc.Shell.egsnrc_folder_path+"cutoutmp/"
		    
		    Return True
		  else
		    Return False
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub deletebeam(num as Integer)
		  
		  if num>=0 and num<=UBound(Beams) Then
		    Beams.Remove num
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_Directory(beam as integer) As boolean
		  //-------------------------------------------------
		  // to update all cutout variables
		  //-------------------------------------------------
		  dim i,x as integer
		  dim name,energy,mode,temp as String
		  //-------------------------------------------------
		  
		  
		  if Plan_Index<0 or Plan_Index>UBound(gRTOG.Plan) Then
		    Return False
		  end
		  
		  if beam<0 or beam>UBound(gRTOG.Plan(Plan_Index).Beam) Then
		    Return False
		  end
		  
		  
		  
		  if Beams(beam).Shell_Index>-1 and Beams(beam).Shell_Index<=UBound(gShells.Shells) Then
		    cc = new Class_MMCTP_Commands
		    cc.shell=gShells.Shells(Beams(beam).Shell_Index)
		    
		    // Update the Cutout directory
		    Beams(beam).cutout_dir="cutoutmp"
		    cc.dir=gShells.Shells(Beams(beam).Shell_Index).egsnrc_folder_path+"/"+Beams(beam).cutout_dir
		    
		    Return True
		  else
		    Window_Treatment.StaticText_Cutout_Status.Text="Error : shell index on beam "+str(beam+1)+" is out of bounds"
		    Return False
		  end
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Init()
		  //-----------------------------
		  // Load default preferences
		  //
		  //-----------------------------
		  dim f,g as folderItem
		  dim ts as TextInputStream
		  dim tmpstr as string
		  dim i,N as integer
		  //-----------------------------
		  
		  f= gPref.McGillCutout
		  
		  if f=Nil Then
		    Return
		  end
		  g=f.child("Cutoutpref.txt")
		  if g=Nil Then
		    Return
		  end
		  
		  
		  ReDim cutoutmaterial(-1)
		  ReDim gapmaterial(-1)
		  ReDim phantommaterial(-1)
		  
		  if g.Exists then
		    ts=g.openastextFile
		    tmpstr=ts.readLine
		    for i=1 to CountFields(tmpstr,",")
		      cutOutmaterial.Append Trim(NthField(tmpstr,",",i))
		    Next
		    
		    tmpstr=ts.readLine
		    for i=1 to CountFields(tmpstr,",")
		      gapmaterial.Append Trim(NthField(tmpstr,",",i))
		    Next
		    
		    
		    tmpstr=ts.readLine
		    for i=1 to CountFields(tmpstr,",")
		      phantommaterial.Append Trim(NthField(tmpstr,",",i))
		    Next
		    ts.close
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Makebeam(beam as Integer)
		  //-----------------------------------
		  //
		  //
		  //-----------------------------------
		  Dim k,i as Integer
		  Dim tt as Boolean
		  Dim path,name as String
		  //-----------------------------------
		  tt=cutout_get_shell_Variables(Beam)
		  
		  if tt Then
		    path=gBEAM.cc.dir
		    if gBEAM.Beams(Beam).egs_Phsp_link Then
		      name=gBEAM.Beams(Beam).egs_Phsp_name
		    else
		      name=MC_file_name+Str(Beam+1)+".egsphsp1"
		    end
		    path=path+"/"+name
		    Beams(Beam).InputPhaseSpaceName=path
		  end
		  
		  If Beams(Beam).phspoutput=true and Beams(Beam).doseoutput=false then
		    Beams(Beam).OutputType=1
		  elseif Beams(Beam).phspoutput=false and Beams(Beam).doseoutput=true then
		    Beams(Beam).OutputType=2
		  elseif Beams(Beam).phspoutput=true and Beams(Beam).doseoutput=true then
		    Beams(Beam).OutputType=3
		  end
		  
		  Beams(Beam).nominalenergy=val(gRTOG.Plan(Plan_Index).Beam(Beam).beam_energy)
		  
		  Beams(Beam).outputPhaseSpaceName=MC_file_name+str(beam+1)+"-cutout.egsphsp1"
		  ReDim Beams(Beam).Points(-1)
		  for i=0 to UBound(gRTOG.Plan(Plan_Index).Beam(Beam).Block_Contours)
		    if gRTOG.Plan(Plan_Index).Beam(Beam).Block_Contours(i).Block_Type="CutOut" Then
		      //Beams(Beam).CutOutMaterial=gRTOG.Plan(Plan_Index).Beam(Beam).Block_Contours(i).Material
		      
		      ReDim Beams(Beam).Points(UBound(gRTOG.Plan(Plan_Index).Beam(Beam).Block_Contours(i).pair))
		      
		      for k=0 to UBound(Beams(Beam).Points) 
		        Beams(Beam).Points(k)=new Class_Block_Pairs
		        Beams(Beam).Points(k).x=gRTOG.Plan(Plan_Index).Beam(Beam).Block_Contours(i).pair(k).x
		        Beams(Beam).Points(k).y=gRTOG.Plan(Plan_Index).Beam(Beam).Block_Contours(i).pair(k).y
		      next
		      Exit
		    end
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Make_Script(beam as integer, name as string)
		  //--------------------------------------
		  // Make cutout Script,
		  // 
		  //
		  //--------------------------------------
		  Dim f as FolderItem
		  Dim tmpstr,location(-1),path as String
		  Dim ts as TextOutputStream
		  Dim i as Integer
		  Dim tt as Boolean
		  //---------------------------------------
		  
		  tt=Get_Directory(beam)
		  
		  
		  name= name+" -i "+MC_file_name+str(beam+1)+"-cutout"+ " -p "+Beams(beam).pegsfile+" > "+cc.dir+"/"+MC_file_name+str(beam+1)+".egslog"
		  f=gRTOG.Plan(Plan_Index).Path
		  f=f.Child(MC_file_name+str(beam+1)+"-cutout_run")
		  ts=f.CreateTextFile
		  ts.Write name
		  ts.Close
		  
		  
		  path=f.ShellPath
		  
		  
		  
		  
		  tt=Get_Directory(beam)
		  // Upload Scripts
		  cc.FTP_Files=f
		  cc.FTP_Now=True
		  cc.command="put "+path+" "+cc.dir+"/"+f.Name
		  cc.inpfilename=f.Name
		  cc.beam_num=Beam
		  cc.FTP_Put_file=True
		  cc.FTP_Local_Path=path
		  cc.FTP_Remote_Path=cc.dir+"/"+f.Name
		  MMCTP_Shell_Run.All.Append cc
		  
		  
		  
		  //Change mode to exe
		  tt=Get_Directory(beam)
		  cc.command="chmod u+x " +f.Name
		  MMCTP_Shell_Run.All.Append cc
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Open()
		  Dim i as Integer
		  
		  
		  if Plan_Index>-1 and Plan_Index<=UBound(gRTOG.Plan) Then
		    ReDim Beams(UBound(gRTOG.Plan(Plan_Index).Beam))
		    for i=0 to UBound(Beams)
		      Beams(i)=new Class_Cutout
		      Beams(i).open(i)
		    next
		  end
		  
		  readsettings
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub readsettings()
		  Dim index,i  as Integer
		  Dim f as FolderItem
		  DIm ts as TextInputStream
		  Dim temp,tt as String
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  
		  f=f.Child("Cutout-Settings.txt")
		  
		  if f.Exists Then
		    ts=f.OpenAsTextFile
		    While ts.EOF=False
		      temp=ts.ReadLine
		      index=val(NthField(temp,",",1))-1
		      if index>-1 and index<=UBound(Beams) Then
		        Beams(index).pegsfile=Trim(NthField(temp,",",2))
		        Beams(index).jobs=val(NthField(temp,",",3))
		        Beams(index).shell_index=val(NthField(temp,",",4))
		        Beams(index).progress=val(NthField(temp,",",5))
		        Beams(index).startdate=Trim(NthField(temp,",",6))
		        tt=Trim(NthField(temp,",",7))
		        if val(tt)=1 Then
		          Beams(index).Started=True
		        else
		          Beams(index).Started=False
		        end
		        
		      end
		    Wend
		    ts.Close
		    
		  else
		    for i=0 to UBound(Beams)
		      Beams(i).pegsfile=pegsfile
		      Beams(i).jobs=jobs
		    next
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Refesh_One(beam as Integer)
		  //------------------------------------
		  //
		  //
		  //------------------------------------
		  Dim i As Integer
		  Dim itemname As String
		  Dim jobstring As String
		  Dim line As String
		  Dim input_file As String
		  Dim returnvalue As Integer
		  Dim good as Boolean
		  //------------------------------------
		  
		  
		  //good=MC_Determine_Which_Shell_BEAMnrc(BEAM,0)
		  //else
		  good=Get_Directory(Beam)
		  //end
		  
		  if good=False Then
		    return
		  end
		  
		  input_file=MC_file_name+str(beam+1)+".egslog"
		  cc.beam_num=Beam
		  cc.command="tail "+input_file
		  cc.cutout_refresh=True
		  MMCTP_Shell_Refresh.All.Append cc
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub submitjob(beam as Integer)
		  //--------------------------------------------------------
		  Dim f as folderItem
		  Dim sh as shell
		  Dim queue as string
		  Dim pathtofile As String
		  Dim egs_jobq,egs_sub,input_file,line,exe_name As String
		  Dim good as Boolean
		  //--------------------------------------------------------
		  
		  Clear_old(Beam)
		  Makebeam(Beam)
		  Beams(Beam).save(Beam)
		  Uploadfiles(Beam)
		  
		  
		  //if Beams(BEAM).egs_auto_shell Then
		  //good=MC_Determine_Which_Shell_BEAMnrc(BEAM,0)
		  //else
		  good=Get_Directory(Beam)
		  //end
		  
		  input_file=MC_file_name+str(beam+1)+"-cutout"
		  
		  egs_sub="exb"
		  exe_name="cutoutmp"
		  egs_jobq=beams(beam).queue
		  
		  
		  if beams(beam).jobs>1 Then // determine how to submit job to batch
		    line= egs_sub+" "+exe_name +" "+input_file+ " "+beams(beam).pegsfile+" "+ beams(beam).queue +" "+_
		    "batch="+cc.shell.batch+" p="+  str(beams(beam).jobs)
		  else  // If submitting one job
		    Make_Script(Beam,exe_name)
		    line=cc.Shell.Queue_Submit(egs_jobq,MC_file_name+str(beam+1)+"-cutout_run")
		    good=get_directory(Beam)
		  end
		  
		  Line=Replace(line,"  "," ")
		  cc.beam_num=Beam
		  cc.command =line
		  cc.cutout_run=True
		  cc.inpfilename=input_file
		  MMCTP_Shell_Run.All.Append cc
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Uploadfiles(beam as integer)
		  //---------------------------------------------------------
		  //
		  //
		  //---------------------------------------------------------
		  Dim location(-1),path_egsinp,beam_num,name as string
		  Dim f ,egsinp as FolderItem
		  Dim i as Integer
		  Dim good as Boolean
		  //---------------------------------------------------------
		  
		  // Upload BEAMnrc inpute file
		  beam_num=str(beam+1)
		  name=MC_file_name+beam_num
		  f=gRTOG.Plan(Plan_Index).Path
		  egsinp=f.Child(name+"-cutout.egsinp")
		  path_egsinp=egsinp.ShellPath
		  
		  
		  
		  
		  // Upload input file
		  if egsinp.Exists and Get_Directory(beam) Then
		    cc.FTP_Now=True
		    cc.FTP_Put_file=True
		    cc.FTP_Local_Path=path_egsinp
		    cc.FTP_Remote_Path=cc.dir+"/"+egsinp.Name
		    cc.command="put "+path_egsinp+"  "+cc.dir+"/"+egsinp.Name
		    cc.FTP_Files= egsinp
		    cc.inpfilename=egsinp.Name
		    MMCTP_Shell_Run.All.Append cc
		  end
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  egsinp=f.Child(name+"-cutout.egscutoutdata")
		  path_egsinp=egsinp.ShellPath
		  // Upload points file
		  if egsinp.Exists and Get_Directory(beam) Then
		    cc.FTP_Now=True
		    cc.FTP_Put_file=True
		    cc.FTP_Local_Path=path_egsinp
		    cc.FTP_Remote_Path=cc.dir+"/"+egsinp.Name
		    cc.command="put "+path_egsinp+"  "+cc.dir+"/"+egsinp.Name
		    cc.FTP_Files= egsinp
		    cc.inpfilename=egsinp.Name
		    MMCTP_Shell_Run.All.Append cc
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Writesettings()
		  //-----------------------
		  //
		  //
		  //-----------------------
		  Dim i as Integer
		  Dim f as FolderItem
		  DIm ts as TextOutputStream
		  Dim temp,started as String
		  //-----------------------
		  
		  f=gRTOG.Plan(Plan_Index).Path
		  
		  f=f.Child("Cutout-Settings.txt")
		  
		  if f.Exists Then
		    f.Delete
		  end
		  
		  
		  ts=f.CreateTextFile
		  
		  for i=0 to UBound(Beams)
		    
		    if Beams(i).Started Then
		      started="1"
		    else
		      started="0"
		    end
		    
		    temp=Str(i+1)+","+Beams(i).pegsfile+","+str(Beams(i).jobs)+","+str(Beams(i).shell_index)+","+Format(Beams(i).progress,"-#.#")+","+(Beams(i).startdate)+","+started
		    ts.WriteLine temp
		  Next
		  ts.Close
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Beams(-1) As Class_Cutout
	#tag EndProperty

	#tag Property, Flags = &h0
		calculationlocation As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		cc As Class_MMCTP_Commands
	#tag EndProperty

	#tag Property, Flags = &h0
		cutoutmaterial(-1) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		egs_exbeam As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		gapmaterial(-1) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		jobs As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		pegsfile As String = "combination"
	#tag EndProperty

	#tag Property, Flags = &h0
		phantommaterial(-1) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		refresh_status As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		runnow As Boolean = false
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="calculationlocation"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="egs_exbeam"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="jobs"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pegsfile"
			Group="Behavior"
			InitialValue="combination"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Priority"
			Visible=true
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="refresh_status"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="runnow"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StackSize"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
