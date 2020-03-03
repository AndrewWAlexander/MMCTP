#tag Class
Protected Class Class_EGSnrc_Inputs
	#tag Method, Flags = &h0
		Sub Read_EGSnrc_Inputs(wholefile() as string)
		  //-----------------------------------
		  // Reads the EGSnrc inputs
		  //
		  //-----------------------------------
		  Dim j as Integer
		  Dim temp as String
		  //----------------------------------
		  
		  //===================================
		  // Start Reading EGS settings
		  //===================================
		  
		  
		  
		  
		  for j=0 to UBound(wholefile)
		    temp=wholefile(j)
		    
		    if InStr(temp,"Global SMAX")>0 then
		      me.Global_SMAX=val(NthField(Temp,"=",2))
		      
		    elseif InStr(temp,"ESTEPE")>0 then
		      me.ESTEPE=val(NthField(Temp,"=",2))
		      
		    elseif InStr(temp,"XIMAX")>0 then
		      me.XImax=val(NthField(Temp,"=",2))
		      
		    elseif InStr(temp,"Boundary crossing algorithm")>0 then
		      me.BcA=trim(NthField(Temp,"=",2))
		      
		    elseif InStr(temp,"Skin depth for BCA")>0 then
		      me.Skin_depth_BCA=val(NthField(Temp,"=",2))
		      
		    elseif InStr(temp,"Electron-step algorithm")>0 then
		      me.Electron_Step_Algorithm=trim(NthField(Temp,"=",2))
		      
		    elseif InStr(temp,"Spin effects")>0 then
		      me.Spin_effects=trim(NthField(Temp,"=",2))
		      
		    elseif InStr(temp,"Brems angular sampling")>0 then
		      me.Brems_angular_sampling=trim(NthField(Temp,"=",2))
		      
		    elseif InStr(temp,"Brems cross sections")>0 then
		      me.Brems_cross_sections=trim(NthField(Temp,"=",2))
		      
		    elseif InStr(temp,"Bound Compton scattering")>0 then
		      me.BoundComptonscattering=trim(NthField(Temp,"=",2))
		      
		    elseif InStr(temp,"Compton cross sections")>0 then
		      me.Comptoncrossqsections=trim(NthField(Temp,"=",2))
		      
		    elseif InStr(temp,"Pair angular sampling")>0 then
		      me.Pairangularsampling=trim(NthField(Temp,"=",2))
		      
		    elseif InStr(temp,"Pair cross sections")>0 then
		      me.Paircrosssections=trim(NthField(Temp,"=",2))
		      
		    elseif InStr(temp,"Photoelectron angular")>0 then
		      me.Photoelectronangularsampling=trim(NthField(Temp,"=",2))
		      
		    elseif InStr(temp,"Rayleigh scattering")>0 then
		      me.Rayleighscattering=trim(NthField(Temp,"=",2))
		      
		    elseif InStr(temp,"Atomic relaxations")>0 then
		      me.Atomicrelaxations=trim(NthField(Temp,"=",2))
		      
		    elseif InStr(temp,"Electron impact ionization")>0 then
		      me.Electronimpactionization=trim(NthField(Temp,"=",2))
		      
		    elseif InStr(temp,"Photon cross sections")>0 then
		      me.Photoncrosssections=trim(NthField(Temp,"=",2))
		      
		    elseif InStr(temp,"Photon cross-sections output")>0 then
		      me.Photoncrosssectionsoutput=trim(NthField(Temp,"=",2))
		      
		    end
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Write_EGSnrc_Inputs() As string
		  //===================================
		  // Makes EGSnrc input file
		  // PatientID_P#B#.egsinp and puts it in the PLAN directory
		  //
		  //
		  //===================================
		  Dim temp as String
		  //====================================
		  
		  temp=""
		  
		  // Add the EGSnrc parameter
		  temp=" #########################"+EndOfLine.Unix+" :Start MC Transport Parameter:"+EndOfLine.Unix+EndOfLine.Unix
		  temp=temp+"Global ECUT= "+Format(Global_ECUT,"-#.###")+EndOfLine.Unix
		  temp=temp+"Global PCUT= "+Format(Global_PCUT,"-#.###")+EndOfLine.Unix
		  temp=temp+"Global SMAX= "+Format(Global_SMAX,"-#.###")+EndOfLine.Unix
		  temp=temp+"ESTEPE= "+Format(ESTEPE,"-#.###")+EndOfLine.Unix
		  temp=temp+"XIMAX= "+Format(XImax,"-#.###")+EndOfLine.Unix
		  temp=temp+"Boundary crossing algorithm= "+BcA+EndOfLine.Unix
		  temp=temp+"Skin depth for BCA= "+Format(Skin_depth_BCA,"-#.###")+EndOfLine.Unix
		  temp=temp+"Electron-step algorithm= "+Electron_Step_Algorithm+EndOfLine.Unix
		  temp=temp+"Spin effects= "+spin_effects+EndOfLine.Unix
		  temp=temp+"Brems angular sampling= "+Brems_angular_sampling+EndOfLine.Unix
		  temp=temp+"Brems cross sections= "+Brems_cross_sections+EndOfLine.Unix
		  temp=temp+"Bound Compton scattering= "+BoundComptonscattering+EndOfLine.Unix
		  temp=temp+"Compton cross sections= "+Comptoncrossqsections+EndOfLine.Unix
		  temp=temp+"Pair angular sampling= "+Pairangularsampling+EndOfLine.Unix
		  temp=temp+"Pair cross sections= "+Paircrosssections+EndOfLine.Unix
		  temp=temp+"Photoelectron angular sampling= "+Photoelectronangularsampling+EndOfLine.Unix
		  temp=temp+"Rayleigh scattering= "+Rayleighscattering+EndOfLine.Unix
		  temp=temp+"Atomic relaxations= "+Atomicrelaxations+EndOfLine.Unix
		  temp=temp+"Electron impact ionization= "+Electronimpactionization+EndOfLine.Unix
		  
		  if Photoncrosssections="Storm-Israel" or Photoncrosssections=""  or InStr(Photoncrosssections,"Storm-Israel")>0Then // Do not write default Photon Cross Sections
		  else
		    temp=temp+"Photon cross sections= "+Photoncrosssections+EndOfLine.Unix
		  end
		  
		  temp=temp+"Photon cross-sections output= "+Photoncrosssectionsoutput+EndOfLine.Unix
		  
		  temp=temp+EndOfLine.Unix+" :Stop MC Transport Parameter:"+EndOfLine.Unix+" #########################"+EndOfLine.Unix
		  
		  Return temp
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Atomicrelaxations As string
	#tag EndProperty

	#tag Property, Flags = &h0
		BcA As string
	#tag EndProperty

	#tag Property, Flags = &h0
		BoundComptonscattering As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Brems_angular_sampling As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Brems_cross_sections As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Comptoncrossqsections As String = "default"
	#tag EndProperty

	#tag Property, Flags = &h0
		Electronimpactionization As string = "Off"
	#tag EndProperty

	#tag Property, Flags = &h0
		Electron_Step_Algorithm As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ESTEPE As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Global_ECUT As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Global_PCUT As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Global_SMAX As single = 1e10
	#tag EndProperty

	#tag Property, Flags = &h0
		Pairangularsampling As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Paircrosssections As String = "BH"
	#tag EndProperty

	#tag Property, Flags = &h0
		Photoelectronangularsampling As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Photoncrosssections As string = "Storm-Israel"
	#tag EndProperty

	#tag Property, Flags = &h0
		Photoncrosssectionsoutput As String = "Off"
	#tag EndProperty

	#tag Property, Flags = &h0
		Rayleighscattering As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Skin_depth_BCA As single
	#tag EndProperty

	#tag Property, Flags = &h0
		Spin_effects As string = "On"
	#tag EndProperty

	#tag Property, Flags = &h0
		Untitled As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		XImax As single
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Atomicrelaxations"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BcA"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BoundComptonscattering"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Brems_angular_sampling"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Brems_cross_sections"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Comptoncrossqsections"
			Visible=false
			Group="Behavior"
			InitialValue="default"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Electronimpactionization"
			Visible=false
			Group="Behavior"
			InitialValue="off"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Electron_Step_Algorithm"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ESTEPE"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Global_ECUT"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Global_PCUT"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Global_SMAX"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
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
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pairangularsampling"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Paircrosssections"
			Visible=false
			Group="Behavior"
			InitialValue="BH"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Photoelectronangularsampling"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Photoncrosssections"
			Visible=false
			Group="Behavior"
			InitialValue="Storm-Israel (PEGS4)"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Photoncrosssectionsoutput"
			Visible=false
			Group="Behavior"
			InitialValue="Off"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Rayleighscattering"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Skin_depth_BCA"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Spin_effects"
			Visible=false
			Group="Behavior"
			InitialValue="On"
			Type="string"
			EditorType="MultiLineEditor"
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
		#tag ViewProperty
			Name="Untitled"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="XImax"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="single"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
