#tag Class
Protected Class InternetSession
	#tag Method, Flags = &h1
		Protected Sub CloseHandle(ByRef handle as Integer)
		  #if TargetWindows
		    Declare Sub InternetCloseHandle Lib "WinInet" ( handle as Integer )
		    
		    if handle <> 0 then
		      InternetCloseHandle( handle )
		    end if
		    
		    handle = 0
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Constructor(userAgent as String)
		  #if TargetWindows
		    Soft Declare Function InternetOpenA Lib "WinInet" ( agent as CString, access as Integer, _
		    proxy as Integer, bypass as Integer, flags as Integer ) as Integer
		    Soft Declare Function InternetOpenW Lib "WinInet" ( agent as WString, access as Integer, _
		    proxy as Integer, bypass as Integer, flags as Integer ) as Integer
		    
		    Const INTERNET_OPEN_TYPE_PRECONFIG = 0
		    
		    if System.IsFunctionAvailable( "InternetOpenW", "WinInet" ) then
		      mInetHandle = InternetOpenW( userAgent, INTERNET_OPEN_TYPE_PRECONFIG, 0, 0, 0 )
		    else
		      mInetHandle = InternetOpenA( userAgent, INTERNET_OPEN_TYPE_PRECONFIG, 0, 0, 0 )
		    end if
		    
		    if mInetHandle = 0 then
		      FireException( "Could not open the handle" )
		      return
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  CloseHandle( mInetHandle )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ExtendedErrorInfo(ByRef errNum as Integer) As String
		  #if TargetWindows
		    Soft Declare Sub InternetGetLastResponseInfoW Lib "WinInet" ( ByRef errorNum as Integer, buf as Ptr, ByRef len as Integer )
		    Soft Declare Sub InternetGetLastResponseInfoA Lib "WinInet" ( ByRef errorNum as Integer, buf as Ptr, ByRef len as Integer )
		    
		    dim buf as new MemoryBlock( 1024 )
		    dim size as Integer = buf.Size
		    
		    if System.IsFunctionAvailable( "InternetGetLastResponseInfoW", "WinInet" ) then
		      InternetGetLastResponseInfoW( errNum, buf, size )
		      
		      return DefineEncoding( buf.StringValue( 0, size * 2 ), Encodings.UTF16 )
		    else
		      InternetGetLastResponseInfoA( errNum, buf, size )
		      
		      return buf.StringValue( 0, size )
		    end if
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FindNextFile() As FindFile
		  // Sanity checks
		  if mInternalFindHandle = 0 then
		    FireException( "Trying to find the next file while not connected" )
		    return nil
		  end if
		  
		  #if TargetWindows
		    Soft Declare Function InternetFindNextFileW Lib "WinInet" ( handle as Integer, data as Ptr ) as Boolean
		    Soft Declare Function InternetFindNextFileA Lib "WinInet" ( handle as Integer, data as Ptr ) as Boolean
		    
		    dim mb as MemoryBlock
		    dim success as Boolean
		    if System.IsFunctionAvailable( "InternetFindNextFileW", "WinInet" ) then
		      mb = new MemoryBlock( FindFile.kUnicodeSize )
		      success = InternetFindNextFileW( mInternalFindHandle, mb )
		    else
		      mb = new MemoryBlock( FindFile.kANSISize )
		      success = InternetFindNextFileA( mInternalFindHandle, mb )
		    end if
		    
		    Const ERROR_NO_MORE_FILES = 18
		    if not success and GetLastError <> ERROR_NO_MORE_FILES then
		      FireException( "Could not find the next file" )
		      return nil
		    end if
		    
		    // Once we're done, we need to close the find handle
		    if not success then
		      CloseHandle( mInternalFindHandle )
		    else
		      return new FindFile( mb )
		    end if
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub FireException(msg as String)
		  dim r as new RuntimeException
		  Dim errNum as Integer = GetLastError
		  
		  r.Message = msg
		  r.ErrorNumber = errNum
		  
		  if r.ErrorNumber = kExtendedError then
		    r.Message = r.Message + EndOfLine + ExtendedErrorInfo( errNum )
		    r.ErrorNumber = errNum
		  end if
		  
		  raise r
		  
		  Exception err as TypeMismatchException
		    MessageBox "Tried to retype an object! "+r.Message
		  Exception err as NilObjectException
		    MessageBox "Tried to access a Nil object! "+r.Message
		  Exception err as RuntimeException  // NOT RECOMMENDED
		    MessageBox "Another exception "+r.Message
		    
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetLastError() As Integer
		  #if TargetWindows
		    Declare Function MyGetLastError Lib "Kernel32" Alias "GetLastError" () as Integer
		    
		    return MyGetLastError
		  #endif
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected mInetHandle As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mInternalFindHandle As Integer
	#tag EndProperty


	#tag Constant, Name = kExtendedError, Type = Double, Dynamic = False, Default = \"12003", Scope = Protected
	#tag EndConstant


	#tag ViewBehavior
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
	#tag EndViewBehavior
End Class
#tag EndClass
