#tag Class
Protected Class Thread_AddDose
Inherits Thread
	#tag Event
		Sub Run()
		  
		  if add Then
		    add=False
		    Dose_Add
		  elseif Op Then
		    op=False
		    Dose_Op
		  elseif Norm Then
		    Norm=False
		    Dose_Norm
		  end
		  
		  Exception err as TypeMismatchException
		    Errors.Append "Tried to retype an object!"
		  Exception err as NilObjectException
		    Errors.Append "Tried to access a Nil object!"
		  Exception err as RuntimeException  // NOT RECOMMENDED
		    Errors.Append "Another exception"
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Dose_Add()
		  //----------------------------------------------
		  //
		  //
		  //
		  //----------------------------------------------
		  Dim i,k,h,a as integer
		  Dim Da, Db,Dnew as RTOG_Dose_Distribution
		  Dim data,data_a,data_b as RTOG_Dose_Plane
		  Dim value_a,value_b,error_a,error_b as Double
		  Dim x,y ,z  as Single
		  Dim d as new Date
		  //----------------------------------------------
		  
		  Da =gRTOG.Plan(plan(0)).Dose(dosenum(0))
		  
		  
		  Dnew= new RTOG_Dose_Distribution
		  Dnew.SOP_Instance_UID=gDICOM.UID_Make
		  Dnew.Dose_name="Sum-"+d.SQLDate//+"-"+d.ShortTime
		  
		  Window_AddDose.ProgressMsg="Creating dose : "+dnew.Dose_name
		  
		  Dnew.Size_of_Dimension1=da.Size_of_Dimension1
		  Dnew.Size_of_Dimension2=da.Size_of_Dimension2
		  Dnew.Size_of_Dimension3=da.Size_of_Dimension3
		  
		  Dnew.Coord_1_1st_point=Da.Coord_1_1st_point
		  Dnew.Coord_2_1st_point=Da.Coord_2_1st_point
		  Dnew.Coord_3_1st_point=Da.Coord_3_1st_point
		  
		  Dnew.Depth_Grid=Da.Depth_Grid
		  Dnew.Vertical_Grid=Da.Vertical_Grid
		  Dnew.Horizontal_Grid=Da.Horizontal_Grid
		  
		  Dnew.Dose_Units=da.Dose_Units
		  ReDim Dnew.Dose_Distribution(UBound(da.Dose_Distribution))
		  
		  for i=0 to UBound(da.Dose_Distribution)
		    Dnew.Dose_Distribution(i)= new RTOG_Dose_Plane
		    Dnew.Dose_Distribution(i).Z=da.Dose_Distribution(i).z
		    ReDim Dnew.Dose_Distribution(i).Points(da.Size_of_Dimension1*da.Size_of_Dimension2-1)
		    ReDim Dnew.Dose_Distribution(i).Errors(da.Size_of_Dimension1*da.Size_of_Dimension2-1)
		    for a=0 to da.Size_of_Dimension1*da.Size_of_Dimension2-1
		      Dnew.Dose_Distribution(i).Points(a)=da.Dose_Distribution(i).Points(a)
		      Dnew.Dose_Distribution(i).Errors(a)=da.Dose_Distribution(i).Errors(a)
		    next
		  next
		  
		  
		  
		  
		  for a=1 to UBound(plan)
		    'We use the 2nd dose distribution
		    Db =gRTOG.Plan(plan(a)).Dose(dosenum(a))
		    Window_AddDose.ProgressMsg="Adding dose : "+db.Dose_name
		    
		    
		    for i = 0 to UBound(Dnew.Dose_Distribution)
		      Window_AddDose.ProgressMsg="Adding dose : "+db.Dose_name+" "+Format(100*i/UBound(Dnew.Dose_Distribution),"#.#")+" %"
		      
		      data=Dnew.Dose_Distribution(i)
		      for k= 0 to Dnew.Size_of_Dimension1-1
		        for h=0 to Dnew.Size_of_Dimension2-1
		          x=Dnew.Coord_1_1st_point+(k)*Dnew.Horizontal_Grid
		          y=Dnew.Coord_2_1st_point+(h)*Dnew.Vertical_Grid
		          z=data.Z
		          value_a=RTOG_Dose_Interpolate(x,y,z,db)
		          error_a=RTOG_Dose_Errors_Interpolate(x,y,z,db)
		          
		          data.Points(k+h*Dnew.Size_of_Dimension1)=value_a+data.Points(k+h*Dnew.Size_of_Dimension1)
		          data.Errors(k+h*Dnew.Size_of_Dimension1)=Sqrt(0.25*error_a*error_a+0.25*data.Errors(k+h*Dnew.Size_of_Dimension1)*data.Errors(k+h*Dnew.Size_of_Dimension1))
		          
		          if data.Points(k+h*Dnew.Size_of_Dimension1) >gdoublemax or str(data.Points(k+h*Dnew.Size_of_Dimension1))="INF" then
		            data.Points(k+h*Dnew.Size_of_Dimension1)=gdoublemax
		          end
		          if data.Points(k+h*Dnew.Size_of_Dimension1) <gdoublemin then
		            data.Points(k+h*Dnew.Size_of_Dimension1)=gdoublemin
		          end
		          if data.Points(k+h*Dnew.Size_of_Dimension1)>Dnew.Dmax then
		            Dnew.Dmax=data.Points(k+h*Dnew.Size_of_Dimension1)
		          end
		          if data.Points(k+h*Dnew.Size_of_Dimension1)<Dnew.Dmin then
		            Dnew.Dmin=data.Points(k+h*Dnew.Size_of_Dimension1)
		          end
		        next'end h
		      next'end k
		    next'end i for each plane
		  next
		  
		  Window_AddDose.ProgressMsg="Finished"
		  Window_AddDose.UpdateLists=True
		  
		  if Plan_Index>=0 and Plan_Index<=UBound(gRTOG.Plan) Then
		    if Zero Then
		      Dnew.Zero_External_Dose
		    end
		    gRTOG.Plan(Plan_Index).Dose.append Dnew
		    gRTOG.Plan(Plan_Index).Write_McGill_Dose(UBound(gRTOG.Plan(Plan_Index).dose))
		    PW_Show=false
		    Window_Treatment.Window_Update_Plan_now=True
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Dose_Norm()
		  //------------------------------------------------
		  //
		  //
		  //------------------------------------------------
		  Dim a,i as integer
		  Dim Dose, Da ,Db as RTOG_Dose_Distribution
		  Dim data as RTOG_Dose_Plane
		  //------------------------------------------------
		  
		  a=Window_Treatment.dose_index
		  
		  if a>-1 Then
		    
		    // 1st step make new dose distribution
		    da=gRTOG.Plan(plan_index).Dose(a)
		    Dose = new RTOG_Dose_Distribution
		    Dose.SOP_Instance_UID=gDICOM.UID_Make
		    //Window_AddDose.StaticText2.Text="Calculating New Dose Matrix"
		    
		    Dose.Coord_1_1st_point =da.Coord_1_1st_point
		    Dose.Coord_2_1st_point =da.Coord_2_1st_point
		    Dose.Coord_3_1st_point=da.Coord_3_1st_point
		    
		    Dose.Depth_Grid=da.Depth_Grid
		    Dose.Horizontal_Grid =da.Horizontal_Grid
		    Dose.Vertical_Grid=da.Vertical_Grid
		    Dose.Size_of_Dimension1=da.Size_of_Dimension1
		    Dose.Size_of_Dimension2=da.Size_of_Dimension2
		    Dose.Size_of_Dimension3=da.Size_of_Dimension3
		    
		    Dose.Dmax=-100000000
		    Dose.Dmin=100000000
		    
		    for i=0 to UBound(da.Dose_Distribution)
		      data=new RTOG_Dose_Plane
		      data.z=da.Dose_Distribution(i).z
		      Redim data.Points(da.Size_of_Dimension1*da.Size_of_Dimension2-1)
		      Redim data.Errors(da.Size_of_Dimension1*da.Size_of_Dimension2-1)
		      Dose.Dose_Distribution.Append Data
		    next
		    
		    
		    //if InStr(Window_AddDose.PopupMenu_op.Text,"-")>0 then
		    dose=Dose_Op_Run(a,-1,dose,"X",NormValue)
		    //elseif InStr(Window_AddDose.PopupMenu_op.Text,"+")>0 then
		    //dose=Dose_Op_Add(a,b,dose)
		    //Elseif InStr(Window_AddDose.PopupMenu_op.Text,"X")>0 then
		    //dose=Dose_Op_Mult(a,b,dose)
		    //Elseif InStr(Window_AddDose.PopupMenu_op.Text,"/")>0 then
		    //dose=Dose_Op_Div(a,b,dose)
		    //end
		    
		    //Window_AddDose.StaticText2.Text="Finished New Dose Matrix"
		    
		    
		    if Zero Then
		      Dose.Zero_External_Dose
		    end
		    
		    if Absolute Then
		      dose.Absolute_Dose
		    end
		    
		    dose.Update_Bounds
		    
		    
		    gRTOG.Plan(plan_index).Dose.append Dose
		    PW_Progress_Max=1
		    PW_Show=true
		    gRTOG.Plan(Plan_Index).Write_McGill_Dose(UBound(gRTOG.Plan(Plan_Index).Dose))
		    PW_Show=false
		    Window_Treatment.Window_update_plan_now=True
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Dose_Op()
		  //------------------------------------------------
		  //
		  //
		  //------------------------------------------------
		  Dim a,b,i as integer
		  Dim Dose, Da ,Db as RTOG_Dose_Distribution
		  Dim data as RTOG_Dose_Plane
		  //------------------------------------------------
		  
		  a=Window_AddDose.Dose1
		  b=Window_AddDose.Dose2
		  
		  if a>-1 Then
		    
		    // 1st step make new dose distribution
		    da=gRTOG.Plan(plan_index).Dose(a)
		    Dose = new RTOG_Dose_Distribution
		    Dose.SOP_Instance_UID=gDICOM.UID_Make
		    Window_AddDose.ProgressMsg="Calculating New Dose Matrix"
		    
		    
		    Dose.Coord_1_1st_point =da.Coord_1_1st_point
		    Dose.Coord_2_1st_point =da.Coord_2_1st_point
		    Dose.Coord_3_1st_point=da.Coord_3_1st_point
		    
		    dose.Depth_Grid=da.Depth_Grid
		    Dose.Horizontal_Grid =da.Horizontal_Grid
		    Dose.Vertical_Grid=da.Vertical_Grid
		    Dose.Size_of_Dimension1=da.Size_of_Dimension1
		    Dose.Size_of_Dimension2=da.Size_of_Dimension2
		    Dose.Size_of_Dimension3=da.Size_of_Dimension3
		    
		    dose.Dmax=-100000000
		    dose.Dmin=100000000
		    
		    for i=0 to UBound(da.Dose_Distribution)
		      data=new RTOG_Dose_Plane
		      data.z=da.Dose_Distribution(i).z
		      Redim data.Points(da.Size_of_Dimension1*da.Size_of_Dimension2-1)
		      Redim data.Errors(da.Size_of_Dimension1*da.Size_of_Dimension2-1)
		      Dose.Dose_Distribution.Append Data
		    next
		    
		    
		    //if InStr(Window_AddDose.PopupMenu_op.Text,"-")>0 then
		    dose=Dose_Op_Run(a,b,dose,Trim(Window_AddDose.PopupMenu_op_text),val(Window_AddDose.EditField_Dose_Cons_text))
		    //elseif InStr(Window_AddDose.PopupMenu_op.Text,"+")>0 then
		    //dose=Dose_Op_Add(a,b,dose)
		    //Elseif InStr(Window_AddDose.PopupMenu_op.Text,"X")>0 then
		    //dose=Dose_Op_Mult(a,b,dose)
		    //Elseif InStr(Window_AddDose.PopupMenu_op.Text,"/")>0 then
		    //dose=Dose_Op_Div(a,b,dose)
		    //end
		    
		    'Window_AddDose.StaticText2.Text="Finished New Dose Matrix"
		    Window_AddDose.ProgressMsg="Finished New Dose Matrix"
		    
		    
		    if Zero Then
		      Dose.Zero_External_Dose
		    end
		    
		    if Absolute Then
		      dose.Absolute_Dose
		    end
		    
		    dose.Update_Bounds
		    
		    
		    gRTOG.Plan(plan_index).Dose.append Dose
		    PW_Progress_Max=1
		    PW_Show=true
		    gRTOG.Plan(Plan_Index).Write_McGill_Dose(UBound(gRTOG.Plan(Plan_Index).Dose))
		    PW_Show=false
		    Window_Treatment.Window_update_plan_now=True
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Dose_Op_Add(a as integer, b as integer, dc as rtoG_Dose_Distribution) As rtoG_Dose_Distribution
		  //----------------------------------------------
		  //
		  //
		  //
		  //----------------------------------------------
		  Dim i,k,h,A_index,B_index as integer
		  Dim Da, Db as RTOG_Dose_Distribution
		  Dim data,data_a,data_b as RTOG_Dose_Plane
		  Dim value_a,value_b,error_a,error_b as Double
		  Dim x,y , edit_value as Single
		  //----------------------------------------------
		  Da =gRTOG.Plan(plan_index).Dose(a)
		  
		  
		  if b=-1 then'We use the editfield value
		    edit_value=Val(Window_AddDose.EditField_Dose_Cons.Text)
		    Dc.Dose_name=Da.Dose_name+"+"+Window_AddDose.EditField_Dose_Cons.Text
		    'Window_AddDose.StaticText2.Text=dc.Dose_name
		    
		    for i = 0 to UBound(Dc.Dose_Distribution)
		      'PW_Progress=i
		      '
		      
		      
		      data=dc.Dose_Distribution(i)
		      data_a=da.Dose_Distribution(i)
		      for k= 0 to (da.Size_of_Dimension1*da.Size_of_Dimension2-1)
		        data.Points(k)=data_a.Points(k)+edit_value
		        if data.Points(k) >gdoublemax or str(data.Points(k))="INF" then
		          data.Points(k)=gdoublemax
		        end
		        if data.Points(k) < gdoublemin then
		          data.Points(k)=gdoublemin
		        end
		        if data.Points(k)>dc.Dmax then
		          dc.Dmax=data.Points(k)
		        end
		        if data.Points(k)<dc.Dmin then
		          dc.Dmin=data.Points(k)
		        end
		      next
		      
		      
		    next
		    
		  else 'We use the 2nd dose distribution
		    Db =gRTOG.Plan(plan_index).Dose(b)
		    Dc.Dose_name=da.Dose_name+"+"+db.Dose_name
		    'PW_StaticText=dc.Dose_name
		    'PW_Progress_Max=dc.Size_of_Dimension3-1
		    
		    
		    for i = 0 to UBound(Dc.Dose_Distribution)
		      data=dc.Dose_Distribution(i)
		      
		      
		      'PW_Progress=i
		      '
		      data.Z=da.Dose_Distribution(i).z
		      A_index=i
		      for k= 0 to dc.Size_of_Dimension1-1
		        for h=0 to dc.Size_of_Dimension2-1
		          x=dc.Coord_1_1st_point+(k)*dc.Horizontal_Grid
		          y=dc.Coord_2_1st_point+(h)*dc.Vertical_Grid
		          value_a=RTOG_Dose_Interpolate(x,y,data.z, da)
		          value_b=RTOG_Dose_Interpolate(x,y,data.z,db)
		          error_a=RTOG_Dose_Errors_Interpolate(x,y,data.z, da)
		          error_b=RTOG_Dose_Errors_Interpolate(x,y,data.z,db)
		          
		          data.Points(k+h*dc.Size_of_Dimension1)=value_a+value_b
		          data.Errors(k+h*dc.Size_of_Dimension1)=Sqrt(0.25*error_a*error_a+0.25*error_b*error_b)
		          
		          if data.Points(k+h*dc.Size_of_Dimension1) >gdoublemax or str(data.Points(k+h*dc.Size_of_Dimension1))="INF" then
		            data.Points(k+h*dc.Size_of_Dimension1)=gdoublemax
		          end
		          if data.Points(k+h*dc.Size_of_Dimension1) <gdoublemin then
		            data.Points(k+h*dc.Size_of_Dimension1)=gdoublemin
		          end
		          if data.Points(k+h*dc.Size_of_Dimension1)>dc.Dmax then
		            dc.Dmax=data.Points(k+h*dc.Size_of_Dimension1)
		          end
		          if data.Points(k+h*dc.Size_of_Dimension1)<dc.Dmin then
		            dc.Dmin=data.Points(k+h*dc.Size_of_Dimension1)
		          end
		        next'end h
		      next'end k
		      
		    next'end i for each plane
		  end
		  Return dc
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Dose_Op_Div(a as integer, b as integer, dc as rtoG_Dose_Distribution) As rtoG_Dose_Distribution
		  //----------------------------------------------
		  //
		  //
		  //
		  //----------------------------------------------
		  Dim i,k,h as integer
		  Dim Da, Db as RTOG_Dose_Distribution
		  Dim data,data_a,data_b as RTOG_Dose_Plane
		  Dim value_a,value_b,error_a,error_b as Double
		  Dim edit_value,x,y as Single
		  //----------------------------------------------
		  
		  Da =gRTOG.Plan(plan_index).Dose(a)
		  
		  
		  if b=-1 then'If we are using  a constant
		    edit_value=Val(Window_AddDose.EditField_Dose_Cons.Text)
		    Dc.Dose_name=da.Dose_name+"Div"+trim(Window_AddDose.EditField_Dose_Cons.Text)
		    PW_StaticText=dc.engine
		    PW_Progress_Max=UBound(Da.Dose_Distribution)
		    for i = 0 to UBound(Da.Dose_Distribution)
		      PW_Progress=i
		      
		      data=Dc.Dose_Distribution(i)
		      
		      data_a=gRTOG.Plan(plan_index).Dose(a).Dose_Distribution(i)
		      
		      for k= 0 to (da.Size_of_Dimension1)*(da.Size_of_Dimension2)-1
		        data.Points(k)=data_a.Points(k)/edit_value
		        
		        if data.Points(k) <> data.Points(k) then
		          data.Points(k)=gdoublemax
		        end
		        
		        if data_a.Points(k)=0 then 'Check to see the (0/0 = 0) and not max value
		          data.Points(k)=0
		        end
		        
		        if data.Points(k) >gdoublemax or str(data.Points(k))="INF" then
		          data.Points(k)=gdoublemax
		        elseif data.Points(k) <gdoublemin then
		          data.Points(k)=gdoublemin
		        end
		        
		        
		        if data.Points(k)>dc.Dmax then
		          dc.Dmax=data.Points(k)
		        elseif data.Points(k)<dc.Dmin then
		          dc.Dmin=data.Points(k)
		        end
		        
		      next
		      
		    next
		    
		    
		    
		  else'We use the 2nd dose distribution
		    Db =gRTOG.Plan(plan_index).Dose(b)
		    Dc.Dose_name=da.Dose_name+"Div"+db.Dose_name
		    PW_Progress_Max=dc.Size_of_Dimension3-1
		    for i = 0 to UBound(Da.Dose_Distribution)
		      data=Dc.Dose_Distribution(i)
		      
		      PW_Progress=i
		      
		      data.Z=da.Dose_Distribution(i).z
		      
		      
		      
		      for k= 0 to dc.Size_of_Dimension1-1
		        for h=0 to dc.Size_of_Dimension2-1
		          
		          x=dc.Coord_1_1st_point+(k)*dc.Horizontal_Grid
		          
		          y=dc.Coord_2_1st_point+(h)*dc.Vertical_Grid
		          
		          
		          
		          value_a=RTOG_Dose_Interpolate(x,y,data.z,da)
		          value_b=RTOG_Dose_Interpolate(x,y,data.z,db)
		          data.Points(k+h*dc.Size_of_Dimension1)=value_a/value_b
		          
		          error_a=RTOG_Dose_Errors_Interpolate(x,y,data.z, da)
		          error_b=RTOG_Dose_Errors_Interpolate(x,y,data.z,db)
		          data.Errors(k+h*dc.Size_of_Dimension1)=Sqrt(0.25*error_a*error_a+0.25*error_b*error_b)
		          
		          if data.Points(k+h*dc.Size_of_Dimension1) <> data.Points(k+h*dc.Size_of_Dimension1) then
		            data.Points(k+h*dc.Size_of_Dimension1)=gdoublemax
		          end
		          
		          if value_a=0 then 'Check to see the (0/0 = 0) and not 1.7976931348623157e+308
		            data.Points(k+h*dc.Size_of_Dimension1)=0
		          end
		          
		          
		          if data.Points(k+h*dc.Size_of_Dimension1) >gdoublemax or str(data.Points(k+h*dc.Size_of_Dimension1))="INF" then
		            data.Points(k+h*dc.Size_of_Dimension1)=gdoublemax
		          elseif data.Points(k+h*dc.Size_of_Dimension1) <gdoublemin then
		            data.Points(k+h*dc.Size_of_Dimension1)=gdoublemin
		          end
		          
		          
		          
		          
		          if data.Points(k+h*dc.Size_of_Dimension1)>dc.Dmax then
		            dc.Dmax=data.Points(k+h*dc.Size_of_Dimension1)
		          elseif data.Points(k+h*dc.Size_of_Dimension1)<dc.Dmin then
		            dc.Dmin=data.Points(k+h*dc.Size_of_Dimension1)
		          end
		          
		          
		        next'end h
		      next'end k
		      
		    next'end i for each plane
		    
		  end
		  
		  
		  Return dc
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Dose_Op_Mult(a as integer, b as integer, dc as rtoG_Dose_Distribution) As rtoG_Dose_Distribution
		  //------------------------------------------------------
		  //
		  //
		  //------------------------------------------------------
		  Dim i,k,h,c_index as integer
		  Dim Da, Db as RTOG_Dose_Distribution
		  Dim data as RTOG_Dose_Plane
		  Dim x,y,z as Single
		  Dim value_a,value_b,edit_value,error_a,error_b as Double
		  //------------------------------------------------------
		  
		  Da =gRTOG.Plan(plan_index).Dose(a)
		  
		  if b=-1 then 'If we are using a constant
		    Dc.Dose_name=da.Dose_name+"x"+trim(Window_AddDose.EditField_Dose_Cons.Text)
		    edit_value=Val(Window_AddDose.EditField_Dose_Cons.Text)
		    
		    PW_StaticText=dc.Dose_name
		    PW_Progress_Max=UBound(Da.Dose_Distribution)
		    for i = 0 to UBound(Dc.Dose_Distribution)
		      data=dc.Dose_Distribution(i)
		      
		      PW_Progress=i
		      
		      
		      for k= 0 to (dc.Size_of_Dimension1*dc.Size_of_Dimension2-1)
		        data.Points(k)=da.Dose_Distribution(i).Points(k)*edit_value
		        
		        
		        if data.Points(k) >gdoublemax or str(data.Points(k))="INF" then
		          data.Points(k)=gdoublemax
		        elseif data.Points(k) < gdoublemin then
		          data.Points(k)=gdoublemin
		        end
		        
		        
		        if data.Points(k)>dc.Dmax then
		          dc.Dmax=data.Points(k)
		        Elseif data.Points(k)<dc.Dmin then
		          dc.Dmin=data.Points(k)
		        end
		        
		        
		      next
		    next
		    
		    
		  else 'We use the 2nd dose distribution
		    Db =gRTOG.Plan(plan_index).Dose(b)
		    Dc.Dose_name=da.Dose_name+"x"+db.Dose_name
		    PW_StaticText=dc.Dose_name
		    PW_Progress_Max=dc.Size_of_Dimension3-1
		    for i = 0 to UBound(Da.Dose_Distribution)
		      data=dc.Dose_Distribution(i)
		      PW_Progress=i
		      
		      data.Z=da.Dose_Distribution(i).z
		      z=data.z
		      for k= 0 to dc.Size_of_Dimension1-1
		        for h=0 to dc.Size_of_Dimension2-1
		          c_index=k+h*dc.Size_of_Dimension1
		          x=dc.Coord_1_1st_point+(k)*dc.Horizontal_Grid
		          y=dc.Coord_2_1st_point+(h)*dc.Vertical_Grid
		          value_a=da.Dose_Distribution(i).Points(c_index)
		          value_b=RTOG_Dose_Interpolate(x,y,z,db)
		          data.Points(c_index)=value_a*value_b
		          error_a=RTOG_Dose_Errors_Interpolate(x,y,data.z, da)
		          error_b=RTOG_Dose_Errors_Interpolate(x,y,data.z,db)
		          data.Errors(k+h*dc.Size_of_Dimension1)=Sqrt(0.25*error_a*error_a+0.25*error_b*error_b)
		          if data.Points(c_index) >gdoublemax or str(data.Points(c_index))="INF" then
		            data.Points(c_index)=gdoublemax
		          end
		          if data.Points(c_index) < gdoublemin then
		            data.Points(c_index)=gdoublemin
		          end
		          if data.Points(c_index)>dc.Dmax then
		            dc.Dmax=data.Points(c_index)
		          end
		          if data.Points(c_index)<dc.Dmin then
		            dc.Dmin=data.Points(c_index)
		          end
		        next'end h
		      next'end k
		      
		    next'end i for each plane
		  end
		  
		  
		  
		  Return dc
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Dose_Op_Run(a as integer, b as integer, dc as rtoG_Dose_Distribution, math as String, Evalue as Double) As rtoG_Dose_Distribution
		  //----------------------------------------------
		  // Da is the 1st dose distribution
		  // Db is the 2nd dose distribution
		  // Dc is the new dose distribution
		  //
		  // Update 2012 Alexander
		  //----------------------------------------------
		  Dim i,k,h,c_index as integer
		  Dim Da, Db as RTOG_Dose_Distribution
		  Dim data,data_a,data_b as RTOG_Dose_Plane
		  Dim value_a,value_b as Double
		  Dim x,y,z,error_a,error_b as Single
		  Dim sometext as String
		  //----------------------------------------------
		  
		  
		  // pointer from 1st dose file
		  Da =gRTOG.Plan(plan_index).Dose(a)
		  sometext=Format(Evalue,"#.####")
		  
		  if b=-1 then 'if we are using a constant
		    
		    if math="-" Then
		      Dc.Dose_name=Da.Dose_name +"-"+sometext
		    elseif math="X" Then
		      Dc.Dose_name=da.Dose_name+"x"+sometext
		    elseif math="+" Then
		      Dc.Dose_name=Da.Dose_name+"+"+sometext
		    elseif math="/" Then
		      Dc.Dose_name=da.Dose_name+"Div"+sometext
		    end
		    
		    PW_StaticText=dc.Dose_name
		    PW_Progress_Max=UBound(Da.Dose_Distribution)
		    
		    for i = 0 to UBound(Da.Dose_Distribution)
		      PW_Progress=i
		      
		      data=Dc.Dose_Distribution(i)
		      data_a=da.Dose_Distribution(i)
		      
		      data.Z=da.Dose_Distribution(i).Z
		      for k= 0 to (da.Size_of_Dimension1*da.Size_of_Dimension2-1)
		        
		        if math="-" Then
		          data.Points(k)=data_a.Points(k)-Evalue
		        elseif math="+" Then
		          data.Points(k)=data_a.Points(k)+Evalue
		        elseif math="/" Then
		          data.Points(k)=data_a.Points(k)/Evalue
		        elseif math="X" Then
		          data.Points(k)=da.Dose_Distribution(i).Points(k)*Evalue
		        end
		        
		        // From Op_Div not sure if we still need this
		        //if data_a.Points(k)=0 then 'Check to see the (0/0 = 0) and not max value
		        //data.Points(k)=0
		        //end
		        
		        if data.Points(k) >gdoublemax or str(data.Points(k))="INF" then
		          data.Points(k)=gdoublemax
		        end
		        if data.Points(k) < gdoublemin then
		          data.Points(k)=gdoublemin
		        end
		        
		      next
		    next
		    
		    
		  else'We use the 2nd dose distribution
		    Db =gRTOG.Plan(plan_index).Dose(b)
		    Dc.engine=da.engine
		    
		    if math="-" Then
		      dc.Dose_name=da.Dose_name+"-"+db.Dose_name
		    elseif math="+" Then
		      Dc.Dose_name=da.Dose_name+"+"+db.Dose_name
		    elseif math="/" Then
		      Dc.Dose_name=da.Dose_name+"Div"+db.Dose_name
		    elseif math="X" Then
		      Dc.Dose_name=da.Dose_name+"x"+db.Dose_name
		    end
		    
		    PW_StaticText=dc.Dose_name
		    PW_Progress_Max=dc.Size_of_Dimension3-1
		    
		    
		    for i = 0 to UBound(Da.Dose_Distribution)
		      data=Dc.Dose_Distribution(i)
		      
		      PW_Progress=i
		      
		      data.Z=da.Dose_Distribution(i).z
		      z=data.z
		      for k= 0 to dc.Size_of_Dimension1-1
		        for h=0 to dc.Size_of_Dimension2-1
		          c_index=k+h*dc.Size_of_Dimension1
		          x=dc.Coord_1_1st_point+(k)*dc.Horizontal_Grid
		          y=dc.Coord_2_1st_point+(h)*dc.Vertical_Grid
		          
		          // Get values from the 2 dose distribution
		          value_a=da.Dose_Distribution(i).Points(c_index)
		          error_a=da.Dose_Distribution(i).Errors(c_index)
		          
		          
		          if db.Num_Dimensions=da.Num_Dimensions and db.Coord_1_1st_point=da.Coord_1_1st_point and db.Coord_2_1st_point=da.Coord_2_1st_point and db.Coord_3_1st_point=da.Coord_3_1st_point and _
		            db.Size_of_Dimension1=da.Size_of_Dimension1 and db.Size_of_Dimension2=da.Size_of_Dimension2 and db.Size_of_Dimension3=da.Size_of_Dimension3 then
		            value_b=db.Dose_Distribution(i).Points(c_index)
		            error_b=db.Dose_Distribution(i).Errors(c_index)
		            
		          else // Use the interpolation
		            value_b=RTOG_Dose_Interpolate(x,y,z,db)
		            error_b=RTOG_Dose_Errors_Interpolate(x,y,data.z,db)
		            
		          end
		          
		          
		          // appply operation on two values
		          if math="-" Then
		            data.Points(c_index)=value_a-value_b
		          elseif math="+" Then
		            data.Points(c_index)=value_a+value_b
		          elseif math="/" Then
		            data.Points(c_index)=value_a/value_b
		          elseif math="X" Then
		            data.Points(c_index)=value_a*value_b
		          end
		          
		          
		          // Update the errors for this new file
		          data.Errors(k+h*dc.Size_of_Dimension1)=Sqrt(0.25*error_a*error_a+0.25*error_b*error_b)
		          
		          
		          if data.Points(c_index) >gdoublemax or str(data.Points(c_index))="INF" then
		            data.Points(c_index)=gdoublemax
		          end
		          if data.Points(c_index) < gdoublemin then
		            data.Points(c_index)=gdoublemin
		          end
		          
		        next'end h
		      next'end k
		      
		    next'end i for each plane
		  end
		  
		  
		  Return dc
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Absolute As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Add As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		dosenum(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Norm As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		NormValue As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Op As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		plan(-1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Zero As Boolean = false
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Absolute"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Add"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
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
			Name="Norm"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NormValue"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Op"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
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
		#tag ViewProperty
			Name="Zero"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
