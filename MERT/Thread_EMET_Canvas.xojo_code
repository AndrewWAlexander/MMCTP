#tag Class
Protected Class Thread_EMET_Canvas
Inherits Thread
	#tag Event
		Sub Run()
		  'g.TextFont="Geneva"
		  'g.TextSize=10
		  'Window_EMET.DVHGraph.drawAxes(g)
		  'Window_EMET.DVHGraph.drawLabels(g)
		  'Window_EMET.DVHGraph.Plot_Data(g)
		  '
		  '
		  '
		  'if Window_EMET.DVHGraph.Interactive Then
		  'Window_EMET.DVHGraph.Plotactivepoint(g)
		  'end
		  '
		  'if Window_EMET.DVHGraph.Box then
		  '//g.DrawRect(x_bottom,y_bottom,x_top-x_bottom,y_top-y_bottom)
		  'end
		  
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		g As graphics
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
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
			Name="Priority"
			Visible=true
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
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
