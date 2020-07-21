#tag Module
Protected Module General_Module
	#tag Method, Flags = &h0
		Function Accept_Real_Numbers(Key as String) As Boolean
		  Var skipKey As Boolean = True // Skip all keys by default
		  
		  // Allow these keys
		  If Key >= "0" And Key <= "9" Then Return False
		  If Key = "." Then  Return False ' .
		  
		  If Key = Chr(8) Then Return False ' BackSpace
		  If Key = Chr(4) Then Return False ' End
		  If Key = Chr(1) Then Return False ' Home
		  If Key = Chr(127) Then Return False ' Delete
		  If Key = Chr(28) Then Return False ' Left arrow
		  If Key = Chr(29) Then Return False ' Right arrow
		  If Key = General_Module.kTab Then Return False ' Tab
		  If Key = "." Then Return False ' .
		  
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GET_Day_of_the_Week(day as Integer) As String
		  Select Case day
		  Case 1
		    Return "Sun"
		  Case 2
		    Return "Mon"
		  Case 3
		    Return "Tue"
		  Case 4
		    Return "Wed"
		  Case 5
		    Return "Thu"
		  Case 6
		    Return "Fri"
		  Case 7
		    Return "Sat"
		    
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GET_Month_Abbreviation(month as Integer) As String
		  Select Case month
		  Case 1
		    Return "Jan"
		  Case 2
		    Return "Feb"
		  Case 3
		    Return "Mar"
		  Case 4
		    Return "Apr"
		  Case 5
		    Return "May"
		  Case 6
		    Return "Jun"
		  Case 7
		    Return "Jul"
		  Case 8
		    Return "Aug"
		  Case 9
		    Return "Sep"
		  Case 10
		    Return "Oct"
		  Case 11
		    Return "Nov"
		  Case 12
		    Return "Dec"
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Split_text_file(file_chunk as String) As String()
		  Var file_data() As String = Split(file_chunk, EndOfLine.Windows)
		  
		  If file_data.LastRowIndex = 0 Then
		    
		    file_data.ResizeTo(-1)
		    file_data = Split(file_chunk, EndOfLine.UNIX)
		    
		  End If
		  
		  If file_data.LastRowIndex = 0 Then
		    
		    file_data.ResizeTo(-1)
		    file_data = Split(file_chunk, EndOfLine.OSX)
		    
		  End If
		  
		  Return file_data
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Const kTab As String = &u09
			  
			  Return kTab
			End Get
		#tag EndGetter
		kTab As String
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
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
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="kTab"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
