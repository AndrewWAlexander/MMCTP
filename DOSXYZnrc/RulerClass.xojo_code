#tag Class
Protected Class RulerClass
	#tag Method, Flags = &h0
		Sub draw(g as graphics)
		  dim tmpcolor as color
		  tmpcolor=g.foreColor
		  g.foreColor=rcolor
		  g.drawline x1pix,y1pix,x2pix,y2pix
		  g.drawoval x1pix-5,y1pix-5,11,11
		  g.drawoval x2pix-5,y2pix-5,11,11
		  g.foreColor=tmpcolor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub init(x1init as double, y1init as double, x2init as double, y2init as double)
		  x1pix=x1init
		  y1pix=y1init
		  x2pix=x2init
		  y2pix=y2init
		  rcolor=rgb(0,255,0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updatecm()
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		lengthcm As double
	#tag EndProperty

	#tag Property, Flags = &h0
		pixpercm As double
	#tag EndProperty

	#tag Property, Flags = &h0
		rcolor As color
	#tag EndProperty

	#tag Property, Flags = &h0
		x1cm As double
	#tag EndProperty

	#tag Property, Flags = &h0
		x1pix As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		x2cm As double
	#tag EndProperty

	#tag Property, Flags = &h0
		x2pix As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		y1cm As double
	#tag EndProperty

	#tag Property, Flags = &h0
		y1pix As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		y2cm As double
	#tag EndProperty

	#tag Property, Flags = &h0
		y2pix As integer
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
			Name="lengthcm"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pixpercm"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="rcolor"
			Group="Behavior"
			InitialValue="&h000000"
			Type="color"
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
			Name="x1cm"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="x1pix"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="x2cm"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="x2pix"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="y1cm"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="y1pix"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="y2cm"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="y2pix"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
