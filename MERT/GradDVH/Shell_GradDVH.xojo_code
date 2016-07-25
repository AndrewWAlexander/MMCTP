#tag Class
Protected Class Shell_GradDVH
Inherits Shell
	#tag Event
		Sub DataAvailable()
		  //------------------------------------
		  //
		  //
		  //
		  //------------------------------------
		  dim tmpstr as string
		  Dim f as FolderItem
		  dim ts as TextOutputStream
		  
		  if Plan_Index>-1 and Plan_Index<=UBound(gRTOG.plan) Then
		    f=gRTOG.Plan(Plan_Index).Path
		    if cd=False Then
		      cd=True
		      tmpstr="cd "+f.ShellPath
		      WriteLine tmpstr
		      
		    elseif submit=False Then
		      submit=True
		      tmpstr="at -q d -f GradRun -m now"
		      WriteLine tmpstr
		    end
		  end
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		cd As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		submit As Boolean = false
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Arguments"
			Visible=true
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backend"
			Visible=true
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Canonical"
			Visible=true
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="cd"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Mode"
			Visible=true
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="submit"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimeOut"
			Visible=true
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
