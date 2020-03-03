#tag Class
Protected Class RTOG_Plan_Dose_Ref
	#tag Method, Flags = &h0
		Sub Read_Results(outstring as String)
		  '//------------------------------------
		  '// Parse the Output string from a run
		  '//
		  '//------------------------------------
		  'Dim i,index as Integer
		  'Dim lower(-1),bottom,lines(-1),oneline,header,results,tt(-1)  as String
		  'Dim dv as Class_Optimization_Organ_Constraint
		  '//------------------------------------
		  '
		  'lower=Split(outstring,"---Printing dose volume stats---")
		  'bottom=lower(UBound(lower))
		  'Lines=Split(bottom,Chr(10))
		  '
		  '// Remove 1st line
		  'if UBound(lines)>-1 Then
		  'if Len(lines(0))<3 Then
		  'lines.Remove 0
		  'end
		  'end
		  '
		  'While UBound(lines)>-1
		  'oneline=lines(0)
		  'if Trim(oneline)="" Then
		  'Exit While
		  'end
		  'header=Trim(NthField(oneline,":",1))
		  'results=Trim(NthField(oneline,":",2))
		  'index=val(NthField(header," ",2))-1
		  'if InStr(header,"Target")>0 Then
		  '// It's a target one
		  'organ(index).Use_Min_Dose=True
		  'tt=Split(results,",")
		  'if UBound(tt)=3 and InStr(results,"Minimum")>0Then
		  'organ(index).MinDose=val(NthField(tt(0)," ",4))
		  'organ(index).ActualMinDose=val(NthField(tt(1)," ",4))
		  'organ(index).ActualMinDoseVoxelsBelow=val(NthField(tt(2)," ",8))
		  'organ(index).ActualMinDoseScore=val(NthField(tt(3)," ",3))
		  'elseif UBound(tt)=3 and InStr(results,"Maximum")>0Then
		  'organ(index).MaxDose=val(NthField(tt(0)," ",4))
		  'organ(index).ActualMaxDose=val(NthField(tt(1)," ",4))
		  'organ(index).ActualMaxDoseVoxelsAbove=val(NthField(tt(2)," ",8))
		  'organ(index).ActualMaxDoseScore=val(NthField(tt(3)," ",3))
		  'organ(index).Use_Max_Dose=True
		  'end
		  'elseIF InStr(header,"OAR")>0 Then
		  '// For all OAR constraints
		  'if index<0 or index>UBound(organ) Then
		  'Return
		  'end
		  '
		  'organ(index).Use_DV_Constraint=True
		  'tt=Split(results,",")
		  'if UBound(tt)=1 and InStr(header,"constraint")>0Then
		  '// add new constraint
		  'dv=new Class_Optimization_Organ_Constraint
		  'dv.ActualScore=val(NthField(tt(1)," ",7))
		  'dv.Dose=val(NthField(tt(0)," ",3))
		  'dv.Volume=val(NthField(tt(0)," ",7))
		  'organ(index).Constraints.append dv
		  'elseif UBound(tt)=2 and InStr(results,"Maximum")>0Then
		  'organ(index).MaxDose=val(NthField(tt(0)," ",4))
		  'organ(index).ActualMaxDose=val(NthField(tt(1)," ",4))
		  '//organ(index).ActualMaxDoseVoxelsAbove=val(NthField(tt(2)," ",8))
		  'organ(index).ActualMaxDoseScore=val(NthField(tt(2)," ",3))
		  'organ(index).Use_Max_Dose=True
		  '
		  'elseif UBound(tt)=2 and InStr(results,"average")>0Then
		  'organ(index).AvgDose=val(NthField(tt(0)," ",4))
		  'organ(index).ActualAvgDose=val(NthField(tt(1)," ",5))
		  '//organ(index).ActualMaxDoseVoxelsAbove=val(NthField(tt(2)," ",8))
		  'organ(index).ActualAvgDoseScore=val(NthField(tt(2)," ",5))
		  'organ(index).AvgDose_Use=True
		  'end
		  'end
		  'lines.Remove 0
		  'Wend
		  'Window_EMET_Run.Update_Listbox_Results
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		organ(-1) As RTOG_Plan_Structure_Dose
	#tag EndProperty


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
