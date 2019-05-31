#tag Class
Protected Class Rb3DSpace
	#tag Method, Flags = &h0
		Sub Camera_BEV()
		  '  //--------------------------------------------------
		  '  // Make object 'obj' point towards the point of interest 'POI',
		  '  // by first doing a yaw (from the default orientation), and
		  '  // then a pitch.  
		  '  //
		  '  //--------------------------------------------------
		  '  Dim yawAngle, pitchAngle, rollangle,bangle As Single
		  '  Dim v1, v2 As Vector3D
		  '  //--------------------------------------------------
		  '  
		  '  // Find the yaw angle needed to get in the right general direction
		  '  // (i.e., ignoring Y, get it facing the right XZ direction).
		  '  // The Atan2 function provides a very easy way to find this.
		  '  yawAngle = Atan2(Vector_POI.x-Camera.position.x, Vector_POI.z-Camera.position.z)
		  '  
		  '  // Set the object's orientation to a yaw by that amount.
		  '  Camera.orientation.SetRotateAboutAxis 0,1,0, yawAngle
		  '  
		  '  // Now, find the pitch angle needed to account for Y.
		  '  // We use a dot product to get the angle between a vector in
		  '  // the direction the object's facing now, and a vector that
		  '  // points towards the POI.
		  '  
		  '  v1 = New Vector3D
		  '  v1.z = 1.0
		  '  v1 = Camera.orientation.Transform(v1)
		  '  v2 = New Vector3D
		  '  v2.x = Vector_POI.x - Camera.position.x
		  '  v2.y = Vector_POI.y - Camera.position.y
		  '  v2.z = Vector_POI.z - Camera.position.z
		  '  v2.Normalize
		  '  pitchAngle = Acos( MIN(MAX(v1.Dot(v2),-1.0),1.0) )
		  '    
		  '  if v2.y > 0 then
		  '    pitchAngle = -pitchAngle
		  '  end if
		  '// Apply pitch
		  'Camera.Pitch pitchAngle
		  '  
		  '  // Apply Roll
		  'bangle=Beam.Collimator.Fields(JAW_Index).Gantry_Angle
		  'if Beam.Collimator.Fields(JAW_Index).Gantry_Angle=0  Then
		  'Camera.roll (kPi) 
		  '
		  'elseif Beam.Collimator.Fields(JAW_Index).Gantry_Angle>0 and Beam.Collimator.Fields(JAW_Index).Gantry_Angle<180 Then
		  ' Camera.roll (-kPiOver2 -Beam.Collimator.Fields(JAW_Index).Collimator_Angle*kPi/180) 
		  '
		  'elseif Beam.Collimator.Fields(JAW_Index).Gantry_Angle=180 Then
		  'Camera.roll (0)
		  '
		  'else
		  'Camera.roll (kPiOver2-Beam.Collimator.Fields(JAW_Index).Collimator_Angle*kPi/180) 
		  'end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Camera_Pan()
		  '//-----------------------------------------------------
		  '// Make object 'obj' point towards the point of interest 'POI',
		  '// by first doing a yaw (from the default orientation), and
		  '// then a pitch.  
		  '//----------------------------------------------------
		  'Dim yawAngle As Double
		  'Dim pitchAngle As Double
		  'Dim v1, v2 As Vector3D
		  '//-----------------------------------------------------
		  '// Find the yaw angle needed to get in the right general direction
		  '// (i.e., ignoring Y, get it facing the right XZ direction).
		  '// The Atan2 function provides a very easy way to find this.
		  'yawAngle = Atan2(Vector_POI.x-Camera.position.x, Vector_POI.z-Camera.position.z)
		  '// Set the object's orientation to a yaw by that amount.
		  'Camera.orientation.SetRotateAboutAxis 0,1,0, yawAngle
		  '
		  '// Now, find the pitch angle needed to account for Y.
		  '// We use a dot product to get the angle between a vector in
		  '// the direction the object's facing now, and a vector that
		  '// points towards the POI.
		  'v1 = New Vector3D
		  'v1.z = 1.0
		  'v1 = Camera.orientation.Transform(v1)
		  'v2 = New Vector3D
		  'v2.x = Vector_POI.x - Camera.position.x
		  'v2.y = Vector_POI.y - Camera.position.y
		  'v2.z = Vector_POI.z - Camera.position.z
		  'v2.Normalize
		  'pitchAngle = Acos( MIN(MAX(v1.Dot(v2),-1.0),1.0) )
		  'if v2.y > 0 then
		  'pitchAngle = -pitchAngle
		  'end if
		  'v1.x=0
		  'v1.y=1
		  'v1.z=0
		  '
		  '// Apply that pitch.
		  'Camera.Pitch pitchAngle
		  'if mCamAltitude >kPiOver2 or mCamAltitude<-kPiOver2 then
		  'Camera.roll kpi
		  'end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FindFloorPoint(X as Integer, Y as Integer) As Vector3D
		  '// Find the point on the floor indicated by location
		  '// X,Y within our main view.
		  '
		  'return ScreenToYPlaneIntercept(Window_3dview.Canvas_3D(0), Object_Floorplane.Position.Y, X, Y)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub makeAllmesh()
		  '//---------------------------------------------------------
		  '//
		  '//
		  '//---------------------------------------------------------
		  'dim nstruct as integer
		  'dim thiscolor as Color
		  'dim i,j,k,n as integer
		  'dim file as RTOG_Structure_Slice
		  'dim z,himidangle,lomidangle as double
		  'dim start(-1) as integer
		  'dim nvert,s,count,ncurve,new_index as Integer
		  'dim contourpoint(-1,-1),Ncpoints as integer
		  'dim X_vertices(-1),New_X_vertices(-1),New_Y_vertices(-1),New_Z_vertices(-1) as double
		  'dim Y_vertices(-1),dx,dy as double
		  'dim Z_vertices(-1) as double
		  'dim theta(-1), new_theta(-1) as double
		  'dim prad(-1),pinc,maxrad as double
		  'dim npointincurve(-1),minind as integer
		  'dim  X_cent,Y_cent,ang1,x_1,y_1,x_2,y_2,rad0,temptheta as double
		  'dim temp1,temp2,temp3,ang0,ang2 as double
		  'dim P1(-1),P2(-1),P3(-1) as integer
		  'dim mymaterial as material
		  'dim p as picture
		  '//---------------------------------------------------------
		  '//---------------------------------------------------------
		  'nstruct=ubound(grtog.Structures.Structures) //how many structures
		  '//initialize the global trimesh array to the number of structure.
		  '
		  '
		  'if nstruct>=0 then
		  '//redim gTM(nstruct)
		  'for s=0 to  0//nstruct-1  //only body for now             //nstruct  //for each structure can make this an external...
		  'redim X_vertices(10000)
		  'redim Y_vertices(10000)
		  'redim Z_vertices(10000)
		  'redim prad(10000)
		  'redim theta(10000)
		  'redim contourpoint(200, 10000)
		  'redim P1(30000)
		  'redim P2(30000)
		  'redim P3(30000)
		  '
		  'redim gTM(nstruct)
		  'gTM(s)=new Trimesh
		  'thiscolor=gvis.colour(s)
		  '
		  'count=0
		  'ncurve=ubound(gRTOG.Scan)
		  'redim npointincurve(ncurve)
		  'for n=0 to ncurve //for each image
		  'z=n*gRTOG.Scan(0).Slice_Thickness  //get slice thickness
		  'file = new RTOG_Structure_Slice //get the contour of that structure on that image
		  'file = grtog.Structures.Structures(s).structure_Data(n)
		  '//for each segment of each structure.
		  '//for now assume only one segment....?
		  'for j=0 to 0//ubound(file.Segments) //for each segment....or just do segment 0?...
		  'npointincurve(n)=ubound(file.Segments(j).Points)
		  'for k=0 to npointincurve(n)
		  'X_vertices(count)=file.Segments(j).Points(k).x
		  'Y_vertices(count)=file.Segments(j).Points(k).y
		  'Z_vertices(count)=z
		  'contourpoint(n,k)=count
		  'count=count+1
		  'next k
		  'next
		  'next
		  '//find centroid and angle for each vertex and sort by angle
		  '//MsgBox "count="+str(count)
		  'maxrad=0
		  'for i=0 to ncurve-1
		  'temp1=0
		  'temp2=0
		  'for j=0 to npointincurve(i)
		  'temp1=temp1+Y_vertices( contourpoint(i,j) )
		  'temp2=temp2+Y_vertices(contourpoint(i,j))
		  'next
		  'X_cent=temp1/npointincurve(i)
		  'Y_cent=temp2/npointincurve(i)
		  'for j=0 to npointincurve(i)
		  'dx=X_vertices(contourpoint(i,j))-X_cent
		  'dy=Y_vertices(contourpoint(i,j))-Y_cent
		  'if Sqrt(dx*dx+dy*dy)>maxrad then
		  'maxrad=sqrt(dx*dx+dy*dy)
		  'end if
		  'prad(contourpoint(i,j))=sqrt(dx*dy+dx*dy)
		  'theta(contourpoint(i,j))=atan2(dx,dy)*180/3.14159
		  'if theta(contourpoint(i,j))<0 then
		  'theta(contourpoint(i,j))=360+theta(contourpoint(i,j))
		  'end if
		  'next
		  '//now sort...
		  'for j=0 to npointincurve(i)
		  'temp1=theta(contourpoint(i,j))
		  'minind=j
		  'for k=j+1 to npointincurve(i)
		  'temp2=theta(contourpoint(i,k))
		  'if temp2<temp1 then
		  'temp1=temp2
		  'minind=k
		  'end if
		  'next
		  'new_index=contourpoint(i,minind)
		  'contourpoint(i,minind)=contourpoint(i,j)
		  'contourpoint(i,j)=new_index
		  'next
		  'next
		  '
		  '//maximum contour radius
		  'maxrad=30
		  '//in slice resolution
		  'pinc=1//0.5
		  'pinc=(pinc/maxrad)*360/3.14159
		  'Ncpoints=360/pinc
		  '
		  '//now edit vertex list so each contour has same number of points at required angular interval using linear interpoation
		  'redim New_X_vertices(ncurve*Ncpoints+2)
		  'redim New_Y_vertices(ncurve*Ncpoints+2)
		  'redim New_Z_vertices(ncurve*Ncpoints+2)
		  'redim New_theta(ncurve*Ncpoints)
		  '
		  '// interpolated radius at required angular interval which are multiples of pinc
		  'for i=0 to ncurve-1
		  'New_X_vertices(i*Ncpoints)=X_vertices(contourpoint(i,0))
		  'New_Y_vertices(i*Ncpoints)=Y_vertices(contourpoint(i,0))
		  'New_Z_vertices(i*Ncpoints)=Z_vertices(contourpoint(i,0))
		  'New_theta(i*Ncpoints)=theta(contourpoint(i,0))
		  '
		  'for j=1 to Ncpoints
		  'ang0=j*pinc+theta(contourpoint(i,0))
		  '//search for next three points in contour
		  'k=0
		  'while theta(contourpoint(i,k))<ang0 and k<npointincurve(i)
		  'k=k+1
		  'wend
		  '
		  ''do
		  ''k=k+1
		  ''loop until ( theta(contourpoint(i,k))>=ang0 and k>=npointincurve(i))
		  'if (theta(contourpoint(i,k))<ang0) then
		  '//interpolation crosses over 0
		  'k=0
		  'while theta(contourpoint(i,k))+360<ang0
		  'k=k+1
		  'wend
		  ''k=-1
		  ''do
		  ''k=k+1
		  ''loop until theta(contourpoint(i,k)+360)>=ang0
		  'ang1=theta(contourpoint(i,k))+360
		  'x_1=X_vertices(contourpoint(i,k))
		  'y_1=Y_vertices(contourpoint(i,k))
		  'else
		  'ang1=theta(contourpoint(i,k))
		  'x_1=X_vertices(contourpoint(i,k))
		  'y_1=Y_vertices(contourpoint(i,k))
		  'end if
		  '//search for previous 3 points in contour
		  'k=npointincurve(i)
		  'while theta(contourpoint(i,k))>ang0 and k>0
		  'k=k-1
		  'wend
		  ''do
		  ''k=k-1
		  ''Loop until theta(contourpoint(i,k))<=ang0 and k<=0
		  '
		  'if (k=0 and theta(contourpoint(i,k))>ang0) then
		  '//interpolation crosses over 0
		  'k=npointincurve(i)
		  'ang0=ang0+360
		  'while theta(contourpoint(i,k))>ang0 and k>0
		  'k=k-1
		  'wend
		  ''do
		  ''k=k-1
		  ''loop until theta(contourpoint(i,k))<=ang0 and k<=0
		  'ang2=theta(contourpoint(i,k))
		  'x_2=X_vertices(contourpoint(i,k))
		  'y_2=Y_vertices(contourpoint(i,k))
		  'else
		  'ang2=theta(contourpoint(i,k))
		  'x_2=X_vertices(contourpoint(i,k))
		  'y_2=Y_vertices(contourpoint(i,k))
		  'end if
		  '//interpolation corresponding radius for ang0
		  'rad0=(ang0-ang2)/(ang1-ang2)
		  'if rad0<0 then
		  '//MsgBox ("problem doiing the interpolation...")
		  'exit
		  'end if
		  'New_Y_vertices(j+i*Ncpoints)=y_2+rad0*(y_1-y_2)
		  'New_X_vertices(j+i*Ncpoints)=x_2+rad0*(x_1-x_2)
		  'New_Z_vertices(j+i*Ncpoints)=Z_vertices(contourpoint(i,0))
		  'New_theta(j+i*Ncpoints)=j*pinc+theta(contourpoint(i,0))
		  'next
		  'next
		  '
		  'redim X_vertices(0)
		  'redim Y_vertices(0)
		  'redim Z_vertices(0)
		  'redim theta(0)
		  '
		  '//reorder by z coordinates
		  '//----------
		  'for i=0 to ncurve-1
		  '//printf("Z coordinate of contour %d = %f\n",i,New_Z_vertices[i*Ncpoints]);
		  'temp1=New_Z_vertices(i*Ncpoints)
		  'minind=i
		  'for j=i+1 to ncurve
		  'if New_Z_vertices(j*Ncpoints)<temp1 then
		  'minind=j
		  'temp1=New_Z_vertices(j*Ncpoints)
		  'end if
		  'next
		  '
		  'if (New_Z_vertices(minind*Ncpoints)<New_Z_vertices(i*Ncpoints)) then
		  '
		  'for j=0 to Ncpoints-1
		  '
		  'temp1=New_X_vertices(j+minind*Ncpoints)
		  'temp2=New_Y_vertices(j+minind*Ncpoints)
		  'temp3=New_Z_vertices(j+minind*Ncpoints)
		  'temptheta=New_theta(j+minind*Ncpoints)
		  '
		  'New_X_vertices(j+minind*Ncpoints)=New_X_vertices(j+i*Ncpoints)
		  'New_Y_vertices(j+minind*Ncpoints)=New_Y_vertices(j+i*Ncpoints)
		  'New_Z_vertices(j+minind*Ncpoints)=New_Z_vertices(j+i*Ncpoints)
		  'New_theta(j+minind*Ncpoints)=New_theta(j+i*Ncpoints)
		  '
		  'New_X_vertices(j+i*Ncpoints)=temp1
		  'New_Y_vertices(j+i*Ncpoints)=temp2
		  'New_Z_vertices(j+i*Ncpoints)=temp3
		  'New_theta(j+i*Ncpoints)=temptheta
		  'next
		  'end if
		  'next
		  '//----------
		  '//starting triangulation...
		  '//MsgBox ("starting triangulation")
		  '//============
		  'count=0
		  'for i=0 to ncurve-2
		  'for j=0 to Ncpoints-1
		  'ang0=New_theta(j+i*Ncpoints)
		  'if j=(Ncpoints-1) then
		  'P1(count)=j+i*Ncpoints
		  'P2(count)=j+(i+1)*Ncpoints
		  'P3(count)=(i+1)*Ncpoints
		  'P3(count+1)=j+i*Ncpoints
		  'P1(count+1)=(i+1)*Ncpoints
		  'P2(count+1)=i*Ncpoints
		  'else
		  'ang1=New_theta(j+1+i*Ncpoints)
		  'himidangle=0.5*(ang0+ang1)  //upper threshold
		  'if j=0 then
		  'ang1=New_theta((Ncpoints-1)+i*Ncpoints)
		  'lomidangle=0.5*(360-ang1+ang0)+ang1
		  'if lomidangle>360 then
		  'lomidangle=lomidangle-360
		  'end if
		  'else
		  'ang1=New_theta((j-1)+i*Ncpoints)
		  'lomidangle=0.5*(ang0+ang1)
		  'end if
		  'ang0=New_theta(j+1+(i+1)*Ncpoints) //corresponding point on next slice
		  '// testing if next point on next slice is within angular interval */
		  'if(himidangle>lomidangle) then
		  'if((ang0>=lomidangle) and (ang1<himidangle)) then
		  'P1(count)=j+i*Ncpoints
		  'P2(count)=j+(i+1)*Ncpoints
		  'P3(count)=j+1+(i+1)*Ncpoints
		  'P3(count+1)=j+i*Ncpoints
		  'P1(count+1)=j+1+(i+1)*Ncpoints
		  'P2(count+1)=j+1+i*Ncpoints
		  '
		  'else
		  'P2(count)=j+i*Ncpoints
		  'P3(count)=j+(i+1)*Ncpoints
		  'P1(count)=j+1+i*Ncpoints
		  'P3(count+1)=j+(i+1)*Ncpoints
		  'P1(count+1)=j+1+i*Ncpoints
		  'P2(count+1)=j+1+(i+1)*Ncpoints
		  'end if
		  '
		  'else // /* 0 lies between lomidang and himidang
		  'himidangle=himidangle+360
		  'ang0=ang0+360
		  'if((ang0>=lomidangle) and (ang1<himidangle)) then
		  'P1(count)=j+i*Ncpoints
		  'P2(count)=j+(i+1)*Ncpoints
		  'P3(count)=j+1+(i+1)*Ncpoints
		  'P3(count+1)=j+i*Ncpoints
		  'P1(count+1)=j+1+(i+1)*Ncpoints
		  'P2(count+1)=j+1+i*Ncpoints
		  'else
		  'P2(count)=j+i*Ncpoints
		  'P3(count)=j+(i+1)*Ncpoints
		  'P1(count)=j+1+i*Ncpoints
		  'P3(count+1)=j+(i+1)*Ncpoints
		  'P1(count+1)=j+1+i*Ncpoints
		  'P2(count+1)=j+1+(i+1)*Ncpoints
		  'end if
		  'end if
		  'end if
		  'count=count+2
		  'next
		  'next
		  '//MsgBox "created "+str(count)+ " triangles"
		  '/// now triangulate the ends of the surface
		  '//calculate centroid*/
		  'X_cent=0
		  'Y_cent=0
		  'for j=0 to Ncpoints-1
		  'X_cent=X_cent+New_X_vertices(j)
		  'Y_cent=Y_cent+New_Y_vertices(j)
		  'next
		  'X_cent=X_cent/Ncpoints
		  'Y_cent=Y_cent/Ncpoints
		  'New_X_vertices(Ncpoints+(ncurve-1)*Ncpoints)=X_cent
		  'New_Y_vertices(Ncpoints+(ncurve-1)*Ncpoints)=Y_cent
		  'New_Z_vertices(Ncpoints+(ncurve-1)*Ncpoints)=New_Z_vertices(0)
		  'for j=0 to Ncpoints-1
		  'if j<(Ncpoints-1)  then
		  'P1(count)=Ncpoints+(ncurve-1)*Ncpoints
		  'P2(count)=j
		  'P3(count)=j+1
		  'else
		  'P1(count)=Ncpoints+(ncurve-1)*Ncpoints
		  'P2(count)=j
		  'P3(count)=0
		  'end if
		  'count=count+1
		  'next
		  'X_cent=0
		  'Y_cent=0
		  'for j=0 to Ncpoints-1
		  'X_cent=X_cent+New_X_vertices(j+(ncurve-1)*Ncpoints)
		  'Y_cent=Y_cent+New_Y_vertices(j+(ncurve-1)*Ncpoints)
		  'next
		  'X_cent=X_cent/Ncpoints
		  'Y_cent=Y_cent/Ncpoints
		  'New_X_vertices(Ncpoints+(ncurve-1)*Ncpoints+1)=X_cent
		  'New_Y_vertices(Ncpoints+(ncurve-1)*Ncpoints+1)=Y_cent
		  'New_Z_vertices(Ncpoints+(ncurve-1)*Ncpoints+1)=New_Z_vertices((ncurve-1)*Ncpoints)
		  '
		  'for j=0 to Ncpoints-1
		  'if j<(Ncpoints-1) then
		  'P1(count)=Ncpoints+(ncurve-1)*Ncpoints+1
		  'P2(count)=j+(ncurve-1)*Ncpoints
		  'P3(count)=j+1+(ncurve-1)*Ncpoints
		  'else
		  'P1(count)=Ncpoints+(ncurve-1)*Ncpoints+1
		  'P2(count)=j+(ncurve-1)*Ncpoints
		  'P3(count)=(ncurve-1)*Ncpoints
		  'count=count+1
		  'end if
		  'next
		  '//============================================= have to get here!!!!!!!!!!!!!!!!!!!!!
		  '
		  '//MsgBox "there are now "+str(count)+ " triangles"
		  '//printf("there are now %d triangles\n",count);
		  '
		  '//write triangle data to roi file
		  ''printf("Enter x,y and z offset: ");
		  ''scanf("%f,%f,%f",&x_offset,&y_offset,&z_offset);
		  ''printf("Enter image resolution (dx,dy,dz): ");
		  ''scanf("%f,%f,%f",&xpix,&ypix,&zpix);
		  ''printf("writing data to file Surface.roi.....\n");
		  ''contourfile=fopen("Surface.roi","w");
		  ''fprintf(contourfile,"//-----------------------------------------------------\n");
		  ''fprintf(contourfile,"//  Beginning of ROI: GTVT0\n");
		  ''fprintf(contourfile,"//-----------------------------------------------------\n");
		  ''fprintf(contourfile,"               surface_mesh={\n");
		  ''fprintf(contourfile,"                       samples = 0;\n");
		  ''fprintf(contourfile,"                        number_of_vertices = %d\n",ncurve*Ncpoints+2);
		  ''fprintf(contourfile,"                       number_of_triangles = %d\n",count);
		  ''fprintf(contourfile,"                       vertices={\n");
		  ''
		  ''for(i=0;i<(ncurve*Ncpoints+2);i++)
		  ''{
		  ''fprintf(contourfile,"%f %f %f\n",(New_X_vertices[i]-x_offset)/xpix,(New_Y_vertices[i]-y_offset)/ypix,(New_Z_vertices[i]-z_offset)/zpix);
		  ''}
		  ''fprintf(contourfile," };  // End of vertices for surface mesh\n");
		  ''fprintf(contourfile,"                       triangles={\n");
		  ''for(i=0;i<count;i++)
		  ''{
		  ''fprintf(contourfile,"%d %d %d\n",P1[i],P2[i],P3[i]);
		  ''}
		  ''fprintf(contourfile,"        }; // End of ROI GTVT0\n");
		  ''fclose(contourfile);
		  ''printf("done.\n");
		  ''};
		  '//============
		  'gTM(s).VertexCount=ncurve*Ncpoints+2
		  'gTM(s).TriangleCount=count
		  'for i=0 to ncurve*Ncpoints+1
		  'gTM(s).VertexPositions.setXYZ(i,New_X_vertices(i),New_Y_vertices(i),New_Z_vertices(i))
		  '//gTM(s).HasVertexColors=true
		  '//gTM(s).VertexColors.item(i)=thiscolor
		  'next
		  'for i=0 to count-1
		  'gtm(s).Triangles.setabc(i,P1(i),P2(i),P3(i))
		  'next
		  ''===
		  '
		  '//p = New Picture(skin.width, skin.height, 32) //Changed to "New Picture" by William Davis on finding that "NewPicture" had been deprecated
		  '//p.Graphics.DrawPicture skin,0,0
		  '//p.Mask.Graphics.DrawPicture skinmask,0,0
		  '//mymaterial=new Material
		  '//mymaterial.texture=p
		  '//gtm(s).Material=mymaterial
		  'gtm(s).RenderBackFaces=true
		  '
		  'gTM(s).Visible=true
		  '
		  '//FD nov 12 here to solve the rotation problem
		  'gTM(s).roll PI
		  '//gTM(s).Pitch PI
		  '
		  '
		  'objects.Append gTM(s)
		  '//end of body...
		  'next
		  'end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub makeAllmeshnear()
		  '//---------------------------------------------------------
		  '//
		  '//
		  '//---------------------------------------------------------
		  'dim thiscolor as Color
		  'dim i,j,k,n as integer
		  'dim file as RTOG_Structure_Slice
		  'dim z,himidangle,lomidangle as double
		  'dim start(-1) as integer
		  'dim nvert,s,count,ncurve,new_index as Integer
		  'dim contourpoint(-1,-1),Ncpoints as integer
		  'dim X_vertices(-1),New_X_vertices(-1),New_Y_vertices(-1),New_Z_vertices(-1) as double
		  'dim Y_vertices(-1),dx,dy as double
		  'dim Z_vertices(-1) as double
		  'dim theta(-1), new_theta(-1) as double
		  'dim prad(-1),pinc,maxrad as double
		  'dim npointincurve(-1),minind as integer
		  'dim  X_cent,Y_cent,ang1,x_1,y_1,x_2,y_2,rad0,temptheta as double
		  'dim temp1,temp2,temp3,ang0,ang2 as double
		  'dim P1(-1),P2(-1),P3(-1) as integer
		  'dim mymaterial as material
		  'dim p as picture
		  '//---------------------------------------------------------
		  '
		  '
		  '//initialize the global trimesh array to the number of structure.
		  '
		  'redim gTM(UBound(grtog.Structures.Structures))
		  '
		  'for s=0 to  0//nstruct-1  //only body for now             //nstruct  //for each structure can make this an external...
		  'redim X_vertices(10000)
		  'redim Y_vertices(10000)
		  'redim Z_vertices(10000)
		  'redim prad(10000)
		  'redim theta(10000)
		  'redim contourpoint(200, 10000)
		  'redim P1(30000)
		  'redim P2(30000)
		  'redim P3(30000)
		  '
		  'redim gTM(s)
		  '
		  'gTM(s)=new Trimesh
		  'thiscolor=gvis.colour(s)
		  '
		  'count=0
		  'ncurve=ubound(gRTOG.Scan)
		  'redim npointincurve(ncurve)
		  'for n=0 to ncurve //for each image
		  'z=n*gRTOG.Scan(0).Slice_Thickness  //get slice thickness
		  'file = new RTOG_Structure_Slice //get the contour of that structure on that image
		  'file = grtog.Structures.Structures(s).structure_Data(n)
		  '//for each segment of each structure.
		  '//for now assume only one segment....?
		  'for j=0 to 0//ubound(file.Segments) //for each segment....or just do segment 0?...
		  'npointincurve(n)=ubound(file.Segments(j).Points)
		  '
		  'for k=0 to npointincurve(n)
		  'X_vertices(count)=file.Segments(j).Points(k).x
		  'Y_vertices(count)=file.Segments(j).Points(k).y
		  'Z_vertices(count)=z
		  'contourpoint(n,k)=count
		  'count=count+1
		  'next k
		  'next
		  'next
		  'next
		  'MsgBox "test"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MakeCubicSurface()
		  '//--------------------------------------------------------
		  '//
		  '//
		  '//
		  '//--------------------------------------------------------
		  'dim tmppic(-1) as picture
		  'dim tmpsurf,tmpsurf2, tmpsurf3 as RGBSurface
		  'dim nstruct,pixtrinumber as uint32
		  'dim i,ii,j,jj,n,k,pixx,pixy as uint32
		  'dim dx,dy,dz,xp,yp,cmx,cmy,cmz as Single
		  'dim struc_names(-1) as string
		  'dim mycolor as color
		  'dim struct_pictures(-1),tmpimage as picture
		  'Dim points(-1) as Boolean
		  'Dim file as RTOG_Structure_Slice
		  'Dim poly as Class_Polygon
		  'dim allx(-1), ally(-1),allz(-1) as single // this is the place to store all vertices (each group of 3 sequentially are a triangle)
		  'dim maxX, minX, maxY, minY as UInt32
		  'dim centerX, pixdx, pixdy, centerY,z1,z2,z3 as single
		  '
		  '//dim currentgridcell as GridCellClass
		  'dim beforetricount, beforevertexcount as uint32
		  '''=========================================================================================
		  ''//here loops through all contours to make up trimesh using a cubic facet approach
		  ''//first load the binary image into an offscreen buffer
		  '
		  ''pixel size...
		  'dx=gvis.scale_width
		  'dy=gvis.scale_height
		  '
		  '
		  '
		  'redim struct_pictures(ubound(gRTOG.Scan))
		  'redim points(ubound(gRTOG.Scan))
		  'redim gTM(ubound(grtog.Structures.Structures))
		  '
		  '//show progress along the way...to know where we are.
		  'PW_Title="Triangulation..."
		  'PW_Progress_Max= ubound(gRTOG.Scan)
		  'PW_Show=true
		  '
		  'for i=0 to ubound(grtog.Structures.Structures) 'for each structure
		  '
		  'minX=gvis.nx
		  'minY=gvis.ny
		  'maxX=0
		  'maxY=0
		  '
		  '
		  '
		  'gTM(i)=new Trimesh
		  '
		  '
		  'redim allX(-1)
		  'redim allY(-1)
		  'redim allZ(-1)
		  '
		  '
		  'for n=0 to ubound(gRTOG.Scan)
		  'points(n)=true
		  'PW_StaticText="Triangulating for : "+ grtog.Structures.Structures(i).Structure_Name _
		  '+chr(13)+"Image number : "+str(n+1)
		  'PW_Progress=n
		  '
		  'struct_pictures(n)=NewPicture(gvis.nx,gvis.ny,32)
		  'tmpimage=NewPicture(gvis.nx,gvis.ny,32)
		  'tmpsurf=tmpimage.RGBSurface
		  '//for each image...
		  ''//create a blank image to draw the segments of the specific structure on
		  'tmpimage.graphics.foreColor =  rgb(0,0,0)  //black
		  'tmpimage.graphics.fillrect 0,0,tmpimage.width,tmpimage.height
		  'tmpimage.graphics.foreColor=rgb(255,255,255) //set to white now...
		  'tmpimage.graphics.penHeight=0
		  'tmpimage.graphics.penwidth=0
		  '//for each structure find volume in cm^3...
		  'file = new RTOG_Structure_Slice
		  'file = grtog.Structures.Structures(i).structure_Data(n)
		  '//for each segment of each structure.
		  '
		  'for j = 0 to ubound(file.segments)
		  'poly = new Class_Polygon
		  'if ubound(file.segments(0).Points)=-1 then
		  'points(n)=False
		  'end
		  'for k =0 to ubound(file.segments(j).Points)  //for each segments
		  '//make the pixel polygon on the gvis (nx X ny) grid.
		  'xp=(file.segments(j).Points(k).x/gvis.scale_width )
		  'yp=(file.segments(j).Points(k).y/gvis.scale_height)
		  'pixx=round( xp+gvis.nx/2)       //-gvis.xoff_set)
		  'pixy=round(-yp+gvis.ny/2)    //+gvis.yoff_set)
		  'poly.AddPoint pixx,pixy
		  'maxX=max(pixx,maxX)
		  'maxY=max(pixy,maxY)
		  'minX=min(pixx,minX)
		  'minY=min(pixy,minY)
		  '//make the real cm polygon
		  'poly.AddPoint_D file.Segments(j).Points(k).x, file.Segments(j).Points(k).y
		  'next
		  'tmpimage.graphics.UseOldRenderer=false
		  'tmpimage.graphics.fillPolygon poly.points
		  'next ' End for each segment
		  'struct_pictures(n).Graphics.UseOldRenderer=false
		  'struct_pictures(n).Graphics.drawpicture tmpimage,0,0 'Use this as a lookup for each Structure
		  'next ' End for each scan
		  '
		  '
		  '''=================================================
		  '''Now close the appropriate surfaces of each voxel.
		  '
		  '
		  'pixdx=gvis.scale_width/2
		  'pixdy=gvis.scale_height/2
		  '
		  'for n=1 to ubound(gRTOG.Scan)-1 // have to stop one slice before the end...
		  'PW_StaticText="Triangulating : "+ grtog.Structures.Structures(i).Structure_Name _
		  '+chr(13)+"Image number : "+str(n+1)
		  'PW_Progress=n
		  '
		  'if Points(n) and Points(n+1) then 'if there are points on tthe two current slices
		  'tmpsurf   = struct_pictures(n).RGBSurface
		  'tmpsurf2 = struct_pictures(n+1).RGBSurface
		  'tmpsurf3 = struct_pictures(n-1).RGBSurface
		  '
		  'z1=gRTOG.Scan(n).Z_Value
		  'z2=gRTOG.Scan(n+1).Z_Value
		  'z3=gRTOG.Scan(n-1).Z_Value
		  '
		  '//first slice is done before...
		  'for jj=minY-1 to maxY-2 //stop one pixel before the end
		  'for ii=minX-1 to maxX-2 //stop one pixel before the end
		  'if tmpsurf.Pixel(ii,jj).red=255  then  'check that for that voxel which faces has to be closed.
		  '
		  'centerX= (ii-gvis.nx/2)*gvis.scale_width+gvis.scale_width/2  +pixdx
		  'centerY=-(jj-gvis.ny/2)*gvis.scale_height-gvis.scale_width/2 +pixdy
		  '
		  '//check left
		  'if tmpsurf.Pixel(ii-1,jj).red<>255 then  //means this current pixel is black but on the left it is white then close left
		  '///------------------
		  'allx.Append (centerx-pixdx)
		  'ally.Append (centery-pixdy)
		  'allz.Append z1
		  'allx.Append (centerx-pixdx)
		  'ally.Append  (centery+pixdy)
		  'allz.Append z1
		  'allx.Append (centerx-pixdx)
		  'ally.Append  (centery+pixdy)
		  'allz.Append z2
		  '///-------------------
		  'allx.Append (centerx-pixdx)
		  'ally.Append (centery-pixdy)
		  'allz.Append z2
		  'allx.Append (centerx-pixdx)
		  'ally.Append  (centery-pixdy)
		  'allz.Append z1
		  'allx.Append (centerx-pixdx)
		  'ally.Append  (centery+pixdy)
		  'allz.Append z2
		  '
		  'end if
		  '
		  '//check right
		  'if tmpsurf.Pixel(ii+1,jj).red<>255 then  //means this current pixel is black but on the right it is white then close right
		  '///------------------
		  'allx.Append (centerx+pixdx)
		  'ally.Append (centery-pixdy)
		  'allz.Append z1
		  'allx.Append (centerx+pixdx)
		  'ally.Append  (centery+pixdy)
		  'allz.Append z1
		  'allx.Append (centerx+pixdx)
		  'ally.Append  (centery+pixdy)
		  'allz.Append z2
		  '///-------------------
		  'allx.Append (centerx+pixdx)
		  'ally.Append (centery-pixdy)
		  'allz.Append z2
		  'allx.Append (centerx+pixdx)
		  'ally.Append  (centery-pixdy)
		  'allz.Append z1
		  'allx.Append (centerx+pixdx)
		  'ally.Append  (centery+pixdy)
		  'allz.Append z2
		  'end if
		  '
		  '
		  '//check bottom
		  'if tmpsurf.Pixel(ii,jj+1).red<>255 then  //means this current pixel is black but the bottom one  is white then close bottom
		  'allx.Append (centerx-pixdx)
		  'ally.Append (centery-pixdy)
		  'allz.Append z1
		  'allx.Append (centerx+pixdx)
		  'ally.Append  (centery-pixdy)
		  'allz.Append z1
		  'allx.Append (centerx-pixdx)
		  'ally.Append  (centery-pixdy)
		  'allz.Append z2
		  '///-------------------
		  'allx.Append (centerx-pixdx)
		  'ally.Append (centery-pixdy)
		  'allz.Append z2
		  'allx.Append (centerx+pixdx)
		  'ally.Append  (centery-pixdy)
		  'allz.Append z1
		  'allx.Append (centerx+pixdx)
		  'ally.Append  (centery-pixdy)
		  'allz.Append z2
		  'end if
		  '
		  '
		  '//check top
		  'if tmpsurf.Pixel(ii,jj-1).red<>255 then  //means this current pixel is black but on the top is white then close top
		  'allx.Append (centerx-pixdx)
		  'ally.Append (centery+pixdy)
		  'allz.Append z1
		  'allx.Append (centerx+pixdx)
		  'ally.Append  (centery+pixdy)
		  'allz.Append z1
		  'allx.Append (centerx-pixdx)
		  'ally.Append  (centery+pixdy)
		  'allz.Append z2
		  '///-------------------
		  'allx.Append (centerx-pixdx)
		  'ally.Append (centery+pixdy)
		  'allz.Append z2
		  'allx.Append (centerx+pixdx)
		  'ally.Append  (centery+pixdy)
		  'allz.Append z1
		  'allx.Append (centerx+pixdx)
		  'ally.Append  (centery+pixdy)
		  'allz.Append z2
		  '
		  'end if
		  '
		  '//check back
		  'if tmpsurf2.Pixel(ii,jj).red<>255 then  //means this current pixel is black but on the top is white then close top
		  '
		  'allx.Append (centerx-pixdx)
		  'ally.Append (centery+pixdy)
		  'allz.Append z2
		  'allx.Append (centerx-pixdx)
		  'ally.Append  (centery-pixdy)
		  'allz.Append z2
		  'allx.Append (centerx+pixdx)
		  'ally.Append  (centery-pixdy)
		  'allz.Append z2
		  '///-------------------
		  'allx.Append (centerx+pixdx)
		  'ally.Append (centery+pixdy)
		  'allz.Append z2
		  'allx.Append (centerx-pixdx)
		  'ally.Append  (centery+pixdy)
		  'allz.Append z2
		  'allx.Append (centerx+pixdx)
		  'ally.Append  (centery-pixdy)
		  'allz.Append z2
		  'end if
		  '
		  '//check front
		  'if tmpsurf3.Pixel(ii,jj).red<>255 then  //means this current pixel is black but the one before was white then close top
		  '
		  'allx.Append (centerx-pixdx)
		  'ally.Append (centery+pixdy)
		  'allz.Append z1
		  'allx.Append (centerx-pixdx)
		  'ally.Append  (centery-pixdy)
		  'allz.Append z1
		  'allx.Append (centerx+pixdx)
		  'ally.Append  (centery-pixdy)
		  'allz.Append z1
		  '///-------------------
		  'allx.Append (centerx+pixdx)
		  'ally.Append (centery+pixdy)
		  'allz.Append z1
		  'allx.Append (centerx-pixdx)
		  'ally.Append  (centery+pixdy)
		  'allz.Append z1
		  'allx.Append (centerx+pixdx)
		  'ally.Append  (centery-pixdy)
		  'allz.Append z1
		  '
		  '
		  '
		  'end if
		  '
		  '
		  '
		  '
		  ''currentgridcell.pixval(0)=   tmpsurf.Pixel(ii     , jj     ).red
		  '''cm coordinate of pixel center!
		  ''currentgridcell.p(0).X= (ii-gvis.nx/2)*gvis.scale_width+gvis.scale_width/2
		  ''currentgridcell.p(0).Y=-(jj-gvis.ny/2)*gvis.scale_height-gvis.scale_width/2
		  ''currentgridcell.p(0).Z=gRTOG.Scan(n).Z_Value
		  '
		  'end if
		  'next
		  'next
		  '//last slice is done at the end
		  'end
		  'next
		  '
		  ''pixtrinumber=gtm(i).VertexCount
		  'gtm(i).TriangleCount=(UBound(allx)+1)/3
		  'gtm(i).VertexCount=UBound(allx)+1
		  '
		  '
		  '
		  'for k=0 to (UBound(allx)+1)/3 -1//for each triangle
		  'gTM(i).VertexPositions.SetXYZ(k*3    , allx(k*3)     , ally(k*3)    , allz(k*3) )
		  'gTM(i).VertexPositions.SetXYZ(k*3+1, allx(k*3+1), ally(k*3+1), allz(k*3+1) )
		  'gTM(i).VertexPositions.SetXYZ(k*3+2, allx(k*3+2), ally(k*3+2), allz(k*3+2) )
		  '
		  '//gtm(i).VertexNormals.setvector
		  '
		  'gTM(i).Triangles.SetABC(k,k*3,K*3+1,k*3+2 )
		  'next
		  '
		  ''gtm(i).HasVertexColors=true
		  ''gtm(i).RenderBackFaces=true
		  '
		  'gtm(i).Material.hasdiffusecolor = true
		  'gtm(i).material.diffusecolor=gvis.colour(i)
		  '
		  'gTM(i).RenderBackFaces=true
		  'gTM(i).Visible=true
		  'Window_3DView.Canvas_3D(0).objects.Append gTM(i)
		  'next 'End for each struc
		  ''//have to add the triangles to the gTM
		  '
		  'PW_Show=false
		  '
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Makeone3dContour(segment as RTOG_Structure_Segment, z as double, colorstring as string) As string
		  //---------------------------------------------
		  //
		  //
		  //---------------------------------------------
		  dim tmpstring as string
		  dim i, j as integer
		  dim k,n as integer
		  dim x, y as double
		  //---------------------------------------------
		  
		  n=UBound(Segment.Points)
		  tmpstring = tmpstring+"Container ("+ chr(13)
		  tmpstring = tmpstring+"PolyLine ("+ chr(13)
		  //n points
		  tmpstring = tmpstring+str(n+1)+ chr(13)
		  for i=0 to n //change x and y
		    x=Segment.Points(i).X
		    y=Segment.Points(i).Y
		    tmpstring = tmpstring+str(x)+" "+str(y) + " "+ str(z) + chr(13)
		  next
		  tmpstring = tmpstring+")"+ chr(13)
		  tmpstring = tmpstring+"Container ("+ chr(13)
		  tmpstring = tmpstring+"AttributeSet ( )"+ chr(13)
		  tmpstring = tmpstring+"DiffuseColor ( "+  colorstring  + " )"+ chr(13)
		  tmpstring = tmpstring+")"+ chr(13)
		  tmpstring = tmpstring+")"+ chr(13)
		  return tmpstring
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MouseDown()
		  'ME.mLastX = X
		  'ME.mLastY = Y
		  'return true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MouseDrag()
		  'dim temp,temp2,temp3 as double
		  'dim i as integer
		  '
		  'if X = me.mLastX and Y = me.mLastY then
		  'return
		  'end if
		  '
		  '//mcamaltitude=(100/Slider_Magnification.value)*100
		  '
		  'ME.mCamAngle    = ME.mCamAngle - (X - ME.mLastX) * 0.2 * kDegrees
		  'ME.mCamAltitude = ME.mCamAltitude - (Y - ME.mLastY) * 0.5 * kDegrees
		  'temp2 = ME.mcamaltitude
		  '
		  'if ME.mCamAltitude >kpi or ME.mCamAltitude<-kpi   then
		  'temp = (temp2 +kpi)
		  'temp3 = temp/k2pi
		  'if temp3>0 then
		  'i=floor(temp3)
		  'elseif temp3<0 then
		  'i = ceil(abs(temp3))
		  'i=-i
		  'end if
		  'ME.mCamAltitude = temp-i*k2Pi-kpi
		  'temp3 =  temp-i*k2Pi-kpi
		  'end if
		  'ME.Update_Camera_Position
		  'ME.mLastX = X
		  'ME.mLastY = Y
		  'me.Update
		  '
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Open()
		  '//--------------------------------------------
		  '// Open initial 3D settings
		  '//
		  '//--------------------------------------------
		  'dim modelcode as string
		  'dim p as picture
		  'dim f,g as folderItem
		  'dim i,j,k as integer
		  'dim mymask as picture
		  'dim tmpstr as string
		  'dim count as integer
		  '//--------------------------------------------
		  '
		  '
		  'Vector_POI = New Vector3D
		  'object_MLC = New Object3D
		  'Object_FLEC = New Object3D
		  'Object_Jaw= new Object3D
		  'Object_Floorplane = New Object3D
		  'Object_Isodot = New Object3D
		  'Object_axisX = New Object3D
		  'Object_axisY = New Object3D
		  'Object_axisZ = New Object3D
		  'Object_Body1 = new Object3D
		  'Object_Body2 = new Object3D
		  'Object_Body3 = new Object3D
		  'Object_Body4 = new Object3D
		  'Object_Body5 = new Object3D
		  'Object_Body6 = new Object3D
		  'Object_Body7 = new Object3D
		  'Object_Body8 = new Object3D
		  'Object_Cross = new Object3D
		  '
		  '
		  '
		  '//Set initial point of interest
		  'Vector_POI.x  = 0
		  'Vector_POI.Y = 0
		  'i=Round((UBound(gRTOG.Scan)+1)/2)
		  'if i>=0 and UBound(gRTOG.Scan)>-1 and i<=UBound(gRTOG.Scan) Then
		  'Vector_POI.Z  = gRTOG.Scan(i).Z_Value
		  'else
		  'Vector_POI.z=0
		  'end
		  '
		  '
		  '// Load all predefined Objects
		  'g=gPref.Config_fi.Child("3Dfiles")
		  '
		  '//floor
		  'f=g.Child("Floor.3DMF")
		  'if f <>Nil Then
		  'if f.Exists Then
		  'Object_Floorplane.AddShapeFromFile f
		  'Object_Floorplane.Scale = 0.5  // since in model, each square is 2 m
		  'Object_Floorplane.RenderBackFaces = true
		  'Object_Floorplane.Pitch kPiOver2
		  'Object_Floorplane.position.y=25
		  'Objects.Append Object_Floorplane
		  'end
		  'end
		  '
		  '
		  '
		  '//Start isocenter dot
		  'f=g.Child("Isodot.3dmf")
		  'if f<>Nil Then
		  'if f.Exists Then
		  'modelcode = f.OpenAsBinaryFile(false).Read(f.Length)
		  'Object_Isodot.AddShapeFromString modelcode
		  'p = NewPicture(yellowpic.width, yellowpic.height, 32)
		  'p.Graphics.DrawPicture yellowpic,0,0
		  'p.Mask.Graphics.DrawPicture picmask,0,0
		  'Object_Isodot.Material(0)=new Material
		  'Object_Isodot.Material(0).texture=p
		  'Object_Isodot.Scale = 0.5
		  'Objects.Append Object_Isodot
		  'end
		  'end
		  '// End isocenter dot
		  '
		  '
		  '
		  '//green X axis
		  'f=g.Child("axisX.3dmf")
		  'if f<>Nil Then
		  'if f.Exists Then
		  'modelcode = f.OpenAsBinaryFile(false).Read(f.Length)
		  'Object_axisX.AddShapeFromString modelcode
		  'Objects.Append Object_axisx
		  'end
		  'end
		  '
		  '
		  '
		  '//blue Y axis
		  'f=g.Child("axisY.3dmf")
		  'if f<>Nil Then
		  'if f.Exists Then
		  'modelcode = f.OpenAsBinaryFile(false).Read(f.Length)
		  'Object_axisY.AddShapeFromString modelcode
		  'Objects.Append Object_axisy
		  'end
		  'end
		  '
		  '//red
		  'f=g.Child("axisZ.3dmf")
		  'if f<>Nil Then
		  'if f.Exists Then
		  'modelcode = f.OpenAsBinaryFile(false).Read(f.Length)
		  'Object_axisZ.AddShapeFromString modelcode
		  'Objects.Append Object_axisz
		  'end
		  'end
		  '
		  '
		  '// Readin Body
		  'f=g.Child("Body.3dmf")
		  'if f<>Nil Then
		  'if f.Exists Then
		  'tmpstr = f.OpenAsBinaryFile(false).Read(f.Length)
		  'for j=1 to 8
		  'modelcode =NthField(tmpstr,Chr(10),j)
		  'Object_Body1= new Object3D
		  'Object_Body1.AddShapeFromString modelcode
		  'Object_Body1.Yaw kPiOver2
		  'Object_Body1.Pitch kPiOver2
		  'Object_Body1.Position.Y=0
		  'Object_Body1.Position.x=0
		  'if UBound(gRTOG.Scan)>-1 Then
		  'Object_Body1.Position.z=gRTOG.Scan(0).Z_Value-10
		  'end
		  'Objects.Append Object_Body1
		  'next
		  'end
		  'end
		  '
		  '
		  'Update_Beaminfo
		  'Update_Strucutres
		  'Update_Image
		  '
		  '// move the camera so that we can see the object
		  'mCamAltitude = -1.9
		  'mCamAngle=-1.58
		  'Update_Camera_Position
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Beaminfo()
		  //-----------------------------
		  // Update the Beam settings within 3D variables
		  //
		  //-----------------------------
		  
		  Window_3dview.DoNothing=True
		  
		  Beam=Window_3DView.BEAM
		  
		  if Beam=nil Then
		    Return
		  end
		  
		  
		  if UBound(Beam.Collimator.Fields)>0 Then
		    JAW_Index=Window_3DView.Slider_MLC_Field.Value
		    if JAW_Index<0 Then
		      JAW_Index=0
		    elseif JAW_Index>UBound(Beam.Collimator.Fields) Then
		      JAW_Index=UBound(Beam.Collimator.Fields)
		    end
		  else
		    JAW_Index=0
		  end
		  
		  
		  
		  MLC_Index=Window_3DView.Slider_MLC_Field.Value
		  
		  //Update Isocenter mark
		  Update_Isocenter
		  
		  //Update Camera
		  Update_Camera_Position
		  
		  // Update Field markers
		  Update_Crosshairs
		  
		  //Update MLC pattern
		  Update_MLC
		  Update_FLEC
		  
		  //Update Jaw pattern
		  Update_Jaws
		  
		  Update_Room
		  Window_3dview.DoNothing=False
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Camera_Position()
		  '//-------------------------------------------------
		  '// Update the camera position
		  '//
		  '//-------------------------------------------------
		  'dim couchangle,gantryangle,collimatorangle,x,y,z as Single
		  '//-------------------------------------------------
		  '
		  '
		  '
		  '
		  '//isocenter position, i.e. where we look at
		  'if Window_3DView.CheckBox_BEV.Value Then
		  '//Object_Floorplane.Position.Y
		  '
		  '
		  'if Beam=nil then
		  'Return
		  'end
		  '
		  '
		  'couchangle=Beam.Collimator.Fields(JAW_Index).Couch_Angle
		  'gantryangle=Beam.Collimator.Fields(JAW_Index).Gantry_Angle
		  'collimatorangle=Beam.Collimator.Fields(JAW_Index).Collimator_Angle
		  '
		  '// Update Camera Position
		  'x=Vector_POI.x + canvas_scale*sin(gantryangle*kPi/180) //*cos(couchangle*kpi/180)
		  'y=Vector_POI.y -  canvas_scale*cos(gantryangle*kPi/180) //*sin(kpi/2-gantryangle*kPi/180)
		  'z=Vector_POI.z //+ scale*cos(kpi/2-gantryangle*kPi/180)*sin(couchangle*kpi/180)
		  '
		  'Camera.Position.x=x
		  'Camera.Position.y=y
		  'Camera.Position.z=z
		  'Camera_BEV
		  '
		  'else
		  '// Not in BEV mode, update Camera Position
		  '
		  '// Get New camera position
		  'Camera.Position = OrbitSphere(Vector_POI, canvas_scale, mCamAngle, mCamAltitude)
		  '
		  '// Point Camera at POI
		  'Camera_Pan
		  'end
		  'Update
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Crosshairs()
		  '//------------------------------------------
		  '// Max size is 40 cm x 40 cm
		  '//
		  '//
		  '//------------------------------------------
		  'Dim p As Picture
		  'Dim tx, ty, ty2, i, sh, sw as integer
		  '//------------------------------------------
		  '
		  '
		  '//draw 10 times bigger
		  'sw=500
		  'sh=500
		  'p = NewPicture(sw,sh,32)
		  'p.graphics.foreColor = RGB(255,255,0)
		  '
		  '//cross hair
		  'p.Graphics.DrawLine 0,sh/2,sw,sh/2
		  'p.Graphics.DrawLine sw/2,0,sw/2,sh
		  '
		  '
		  '//do the ticks at one cm
		  'ty=sh/2-2
		  'ty2=sh/2+2
		  'for i=0 to 40
		  '//on x scale
		  'tx=sw/2+200-i*10
		  'p.Graphics.drawline tx,ty,tx,ty2
		  '//on y scale
		  'p.Graphics.DrawLine ty,tx,ty2,tx
		  'next
		  '//do the larger ticks at every 5 cm.
		  'ty=sh/2-5
		  'ty2=sh/2+5
		  '
		  'for i=0 to 8
		  '//on x scale
		  'tx=sw/2+200-i*50
		  'p.Graphics.drawline tx,ty,tx,ty2
		  '//on y scale
		  'p.Graphics.DrawLine ty,tx,ty2,tx
		  'next
		  '
		  '// Draw Labels
		  'p.Graphics.TextSize=28
		  'p.graphics.foreColor = RGB(255,255,0)
		  'p.graphics.DrawString "X 1", 20,sh/2
		  'p.graphics.DrawString "X 2", sw-40,sh/2
		  'p.graphics.DrawString "Y 1", sw/2,sh-20
		  'p.graphics.DrawString "Y 2", sw/2,20
		  '
		  '
		  '
		  '
		  '
		  'if Object_Cross<>nil then
		  'Objects.Remove Object_Cross
		  'Object_Cross=nil
		  'end if
		  'Object_Cross = New Object3D
		  'Object_Cross.AddShapePicture p, 0.1
		  'Object_Cross.RenderBackFaces = true
		  'objects.Append Object_Cross
		  '
		  '// Update Jaw Position and orientation
		  'Object_Cross.Position.X = Object_Isodot.Position.x
		  'Object_Cross.Position.Y = Object_Isodot.Position.y
		  'Object_Cross.Position.Z = Object_Isodot.Position.z
		  'Object_Cross.Pitch(90*kPi/180)
		  'Object_Cross.Yaw(Beam.Collimator.Fields(JAW_Index).Gantry_Angle*kPi/180)
		  'Object_Cross.Roll(Beam.Collimator.Fields(JAW_Index).Collimator_Angle*kPi/180)
		  '
		  '// If set to True, causes the object to be rendered without 
		  '// respect to external lighting, as if you had set AmbientLight=100 and FloodLight=0). 
		  'Object_Cross.NullShader=true
		  'Update
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_FLEC()
		  '//----------------------------------------
		  '// Update FLEC setting
		  '//
		  '//----------------------------------------
		  'Dim p As Picture
		  'dim sh, sw,x,y,wy,wx as integer
		  'dim tx,ty,i as integer
		  'dim thickness, opening as integer
		  '//----------------------------------------
		  '
		  '
		  '
		  'if Object_FLEC<>nil then
		  'Objects.Remove Object_FLEC
		  'Object_FLEC=nil
		  'end if
		  '
		  '//draw 10 times bigger
		  'sw=500
		  'sh=500
		  'p = NewPicture(sw,sh,32)
		  'p.graphics.foreColor = RGB(0,0,255)
		  '
		  'tx=30
		  'ty=130
		  '
		  'if RTOGBeam_Index >-1 then
		  'if Beam.FLEC<>nil and Beam.Beam_Mode="FLEC" then
		  '
		  '// we have FLEC collimator
		  '
		  'x=Round(sw/2-10*(Beam.FLEC.x1))
		  'y=Round(sh/2-ty/2)
		  'p.Graphics.DrawRect x,y,-tx,ty
		  '
		  'x=Round(sw/2+10*(Beam.FLEC.x2))
		  'y=Round(sh/2-ty/2)
		  'p.Graphics.DrawRect x,y,tx,ty
		  '
		  'x=Round(sw/2+10*(Beam.FLEC.y1))
		  'y=Round(sh/2-ty/2)
		  'p.Graphics.DrawRect y,x,ty,tx
		  '
		  'x=Round(sw/2-10*(Beam.FLEC.y2))
		  'y=Round(sh/2-ty/2)
		  'p.Graphics.DrawRect y,x,ty,-tx
		  'else // No FLEC
		  'Return
		  'end if
		  '
		  '
		  'object_FLEC = New Object3D
		  'object_FLEC.AddShapePicture p, 0.1
		  'object_FLEC.RenderBackFaces = true
		  'objects.Append object_FLEC
		  '
		  '
		  '// Update FLEC position and orientation
		  'object_FLEC.Position.X= Object_Isodot.Position.x
		  'object_FLEC.Position.Y =Object_Isodot.Position.y
		  'object_FLEC.Position.z =Object_Isodot.Position.z
		  'object_FLEC.Pitch(kPiOver2)
		  'object_FLEC.Yaw((Beam.Collimator.Fields(JAW_Index).Gantry_Angle)*kPi/180)
		  'object_FLEC.Roll(Beam.Collimator.Fields(JAW_Index).Collimator_Angle*kPi/180)
		  'object_FLEC.NullShader=true
		  'Update
		  'end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Image()
		  '//------------------------------------------
		  '//
		  '//
		  '//
		  '//------------------------------------------
		  'Dim modelCode As String
		  'dim i,n,j as integer
		  'dim p as picture
		  'dim tmpstring as string
		  'dim file as RTOG_Structure_Slice
		  'dim colorstring as string
		  'dim mymask as picture
		  '//------------------------------------------
		  '
		  '
		  '//remove image
		  'for i=0 to UBound(Object_images)
		  'objects.remove Object_images(i)
		  'Object_images(i)=nil
		  'next
		  '
		  '
		  '//load images...
		  'mymask=NewPicture(gvis.nx,gvis.ny,32)
		  'mymask.Graphics.ClearRect 0,0, gvis.nx,gvis.ny
		  'redim Object_images(gvis.nz-1)
		  'for i=0 to gvis.nz-1
		  'Object_images(i) = new object3D
		  'p=newpicture(gvis.nx,gvis.ny,32)
		  'if gvis.scans(i)<> nil Then
		  'p.graphics.DrawPicture gvis.scans(i),0,0
		  'end
		  'Object_images(i).AddShapePictureWithMask(p, mymask, gVis.pixel_resolution,0) 
		  'Object_images(i).position.x=gVis.xoff_set+gVis.nx/2*gVis.scale_width
		  'Object_images(i).position.y=gVis.yoff_set+gVis.ny/2*gVis.scale_height
		  'Object_images(i).position.z=gRTOG.Scan(i).Z_Value
		  'Object_images(i).RenderBackFaces = true
		  'Object_images(i).Visible=false
		  'Object_images(i).Roll PI
		  'Object_images(i).Yaw PI
		  'objects.Append Object_images(i)
		  'next
		  '
		  '// Image down here
		  'Update
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Isocenter()
		  'Object_Isodot.Position.X=Beam.Collimator.Fields(JAW_Index).isocenter.x
		  'Object_Isodot.Position.Y=Beam.Collimator.Fields(JAW_Index).isocenter.y
		  'Object_Isodot.Position.Z=Beam.Collimator.Fields(JAW_Index).isocenter.z
		  '
		  'Object_Floorplane.Position.x=Object_Isodot.Position.X
		  'Object_Floorplane.Position.z=Object_Isodot.Position.z
		  '
		  'Vector_POI.x  = Object_Isodot.Position.X
		  'Vector_POI.Y =  Object_Isodot.Position.y
		  'Vector_POI.z  = Object_Isodot.Position.z
		  '
		  'Update
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Jaws()
		  '//------------------------------------------
		  '// Max size is 40 cm x 40 cm
		  '//
		  '//
		  '//------------------------------------------
		  'Dim p As Picture
		  'Dim tx, ty, ty2, i, sh, sw as integer
		  '//------------------------------------------
		  '
		  '
		  '
		  '//draw 10 times bigger
		  'sw=500
		  'sh=500
		  'p = NewPicture(sw,sh,32)
		  '
		  '
		  '
		  '// Draw Opening
		  'p.graphics.foreColor = RGB(255,0,0)
		  'p.Graphics.Drawrect sw/2-Beam.Collimator.fields(JAW_Index).X1*10, sh/2-Beam.Collimator.fields(JAW_Index).Y2*10, abs(Beam.Collimator.fields(JAW_Index).X1+Beam.Collimator.fields(JAW_Index).X2)*10,abs(Beam.Collimator.fields(JAW_Index).Y1+Beam.Collimator.fields(JAW_Index).Y2)*10
		  '
		  'if Object_jaw<>nil then
		  'Objects.Remove Object_jaw
		  'Object_jaw=nil
		  'end if
		  'Object_jaw = New Object3D
		  'Object_jaw.AddShapePicture p, 0.1
		  'Object_jaw.RenderBackFaces = true
		  'objects.Append Object_jaw
		  '
		  '// Update Jaw Position and orientation
		  'Object_jaw.Position.X = Object_Isodot.Position.x
		  'Object_jaw.Position.Y = Object_Isodot.Position.y
		  'Object_jaw.Position.Z = Object_Isodot.Position.z
		  'Object_jaw.Pitch(90*kPi/180)
		  'Object_jaw.Yaw(Beam.Collimator.Fields(JAW_Index).Gantry_Angle*kPi/180)
		  'Object_jaw.Roll(Beam.Collimator.Fields(JAW_Index).Collimator_Angle*kPi/180)
		  '
		  '// If set to True, causes the object to be rendered without 
		  '// respect to external lighting, as if you had set AmbientLight=100 and FloodLight=0). 
		  'Object_jaw.NullShader=true
		  '
		  'Update
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_MLC()
		  '//----------------------------------------
		  '// Update MLC setting
		  '//
		  '//----------------------------------------
		  'Dim p As Picture
		  'dim y_pos_top,y_pos,i,leaf_pix_width,pixx as integer
		  'dim mlc as Class_MLC
		  'dim g as Graphics
		  'dim scale_height, scale_width,start_y_cm2,start_y_cm,start_x,xx as Single
		  '//max size is 40 cm x 40 cm
		  '//----------------------------------------
		  '
		  '
		  '
		  '
		  'if object_MLC<>nil then
		  'Objects.Remove object_MLC
		  'object_MLC=nil
		  'end if
		  '
		  '//draw 10 times bigger
		  'p = NewPicture(500,500,32)
		  'p.graphics.foreColor = RGB(0,255,0)
		  'g=p.Graphics
		  '
		  'scale_height=50/500
		  'scale_width=50/500
		  '
		  '
		  '//if field selected
		  '
		  'if RTOGBeam_Index <0 then
		  'Return
		  'end
		  'if Beam.MLC=nil then
		  'Return
		  'end
		  '
		  '
		  'if UBound(Beam.MLC.Fields)<0 or UBound(Beam.MLC.LeafBoundaries)<0 Then
		  'Return
		  'end
		  '
		  '
		  'mlc=Beam.MLC
		  'if mlc<>Nil Then
		  'if MLC_Index>-1 and MLC_Index<=UBound(mlc.Fields) Then
		  '
		  'if UBound(Beam.MLC.Fields(MLC_Index).Leaf_A)=mlc.NumberofLeafPairs -1 and UBound(Beam.MLC.Fields(MLC_Index).Leaf_b)=mlc.NumberofLeafPairs -1 Then
		  '// Bank B
		  'for i=0 to mlc.NumberofLeafPairs -1  //
		  '// Determine Y values
		  'start_y_cm2=beam.MLC.LeafBoundaries(i)
		  'start_y_cm=beam.MLC.LeafBoundaries(i+1)
		  'y_pos=Round((-start_y_cm+50/2)/scale_height)
		  'y_pos_top=Round((-start_y_cm2+50/2)/scale_height)
		  '
		  '//Determine X values
		  'xx=beam.MLC.Fields(MLC_Index).Leaf_b(i)
		  'start_x=-xx+g.Width*scale_width/2
		  'leaf_pix_width=Round(start_x/scale_width)
		  '
		  '
		  '//Draw Leaf
		  'g.DrawLine (0,y_pos,leaf_pix_width,y_pos)
		  'g.DrawLine (0,y_pos_top,leaf_pix_width,y_pos_top)
		  'g.DrawLine(leaf_pix_width,y_pos,leaf_pix_width,y_pos_top)
		  '
		  ''if i=0 Then
		  ''g.DrawString "A "+str(beam.MLC.NumberofLeafPairs),10,10
		  ''end
		  'next
		  '
		  '// Bank A
		  'for i=0 to UBound(beam.MLC.Fields(MLC_Index).Leaf_A)
		  'start_y_cm2=beam.MLC.LeafBoundaries(i)
		  'start_y_cm=beam.MLC.LeafBoundaries(i+1)
		  'y_pos=Round((-start_y_cm+50/2)/scale_height)
		  'y_pos_top=Round((-start_y_cm2+50/2)/scale_height)
		  '
		  'xx=beam.MLC.Fields(MLC_Index).Leaf_A(i)
		  'start_x=xx/scale_width+g.Width/2
		  'pixx=Round(start_x)
		  '
		  '//Draw Leaf
		  'g.DrawLine(pixx,y_pos,g.Width,y_pos)
		  'g.DrawLine(pixx,y_pos_top,g.Width,y_pos_top)
		  'g.DrawLine(pixx,y_pos,pixx,y_pos_top)
		  '
		  '
		  ''if i=0 Then
		  ''g.DrawString "B "+str(beam.MLC.NumberofLeafPairs),g.Width/2+10,10
		  ''end
		  'next
		  'end
		  'end
		  '
		  '
		  'object_MLC = New Object3D
		  'object_MLC.AddShapePicture p, 0.1
		  'object_MLC.RenderBackFaces = true
		  'objects.Append object_MLC
		  '
		  '
		  '// Update MLC position and orientation
		  'object_MLC.Position.X= Object_Isodot.Position.x
		  'object_MLC.Position.Y =Object_Isodot.Position.y
		  'object_MLC.Position.z =Object_Isodot.Position.z
		  'object_MLC.Pitch(kPiOver2)
		  'object_MLC.Yaw((Beam.Collimator.Fields(JAW_Index).Gantry_Angle)*kPi/180)
		  'object_MLC.Roll(Beam.Collimator.Fields(JAW_Index).Collimator_Angle*kPi/180)
		  '
		  'object_MLC.NullShader=true
		  'Update
		  'end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Room()
		  '//--------------------------------------------------
		  '//
		  '//
		  '//--------------------------------------------------
		  'Dim i as Integer
		  '//--------------------------------------------------
		  '
		  '
		  'Wireframe=Window_3dview.CheckBox_Wireframe.value
		  'debugCube= Window_3DView.CheckBox_Debug.value
		  '
		  'if Window_3dview.CheckBox_Ambient.value then
		  'AmbientLight=Window_3dview.Slider_Ambient.value
		  'else
		  'AmbientLight=0
		  'end if
		  '
		  'if Window_3dview.CheckBox_Flood.value then
		  'FloodLight=Window_3dview.Slider_Flood.value
		  'else
		  'FloodLight=0
		  'end if
		  '
		  '//set visibility of objects
		  'if Object_Floorplane<> nil then
		  'Object_Floorplane.visible=Window_3dview.CheckBox_Floor.value
		  'end if
		  '
		  'for i=0 to ubound(Object_Structure)
		  'if Object_Structure(i)<>nil Then
		  'if Window_3dview.CheckBox_show_struc.value=true then
		  'Object_Structure(i).Visible=gvis.contour_show(i)
		  'else
		  'Object_Structure(i).Visible=false
		  'end if
		  'end
		  'next
		  '
		  'if Object_jaw <> nil then
		  'Object_jaw.Visible=Window_3dview.CheckBox_Jaws.value
		  'end if
		  '
		  'if object_MLC<>nil then
		  'object_MLC.Visible=Window_3dview.CheckBox_MLC.Value
		  'end if
		  '
		  '
		  'if Object_Isodot<> nil Then
		  'Object_Isodot.Visible=Window_3dview.CheckBox_show_isocenter.Value
		  'end
		  '
		  '
		  '// Axis Colours
		  '// X Green
		  '// Y Blue
		  '// Z Red
		  'if Object_axisX<> nil Then
		  'Object_axisX.visible=Window_3dview.Checkbox_Axis.value
		  'end
		  '
		  'if Object_axisy<> nil Then
		  'Object_axisY.visible=Window_3dview.Checkbox_Axis.value
		  'end
		  '
		  'if Object_axisZ<> nil Then
		  'Object_axisZ.visible=Window_3dview.Checkbox_Axis.value
		  'end
		  '
		  'if Object_Cross<> nil Then
		  'Object_Cross.Visible=Window_3DView.CheckBox_Field.Value
		  'end
		  '
		  '
		  '
		  'if UBound(Object_images)>-1 then
		  'for i=0 to UBound(Object_images)
		  'if Object_Images(i)<>nil Then
		  'Object_images(i).Visible=false
		  'end
		  'next
		  'i=Window_3dview.Slider_Image.Value
		  'if Window_3dview.CheckBox_Images.value then
		  'if i >=0 and i<=UBound(Object_Images)  then
		  'Object_images(i).Visible=true
		  'end if
		  'end if
		  'end if
		  '
		  '
		  '// Fill Structures
		  ''for i=0 to ubound(gTM)
		  ''gTM(i).Visible=gvis.contour_fill(i)
		  ''next
		  'Update
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_Strucutres()
		  '//------------------------------------------
		  '//
		  '//
		  '//
		  '//------------------------------------------
		  'Dim modelCode As String
		  'dim i,n,j as integer
		  'dim p as picture
		  'dim tmpstring as string
		  'dim file as RTOG_Structure_Slice
		  'dim colorstring as string
		  'dim mymask as picture
		  '//------------------------------------------
		  '
		  '
		  '//remove contours
		  'for i=0 to UBound(Object_Structure)
		  'objects.remove Object_Structure(i)
		  'Object_Structure(i)=nil
		  'next
		  '
		  '
		  'if Window_3DView.CheckBox_show_struc.Value Then
		  '//now load the structures.
		  '//=============================
		  'redim Object_Structure(UBound(grtog.Structures.Structures))
		  'for i=0 to UBound(grtog.Structures.Structures)
		  'Object_Structure(i)=new Object3D
		  'tmpstring=""
		  'colorstring=str(gvis.colour(i).red/255)+" "+str(gvis.colour(i).Green/255)+" "+str(gvis.colour(i).Blue/255)
		  'tmpstring="3DMetafile ( 1 6 Stream tableofcontents0> )"+chr(13)
		  'for n=0 to ubound(gRTOG.Scan) //for each image
		  'file = new RTOG_Structure_Slice
		  'file = grtog.Structures.Structures(i).structure_Data(n)
		  '//for each segment of each structure.
		  'for j=0 to ubound(file.Segments)
		  'tmpstring=tmpstring+Makeone3dContour(file.Segments(j),gRTOG.Scan(n).Z_Value,colorstring)
		  'next
		  'next
		  'Object_Structure(i).Visible=gvis.contour_show(i)
		  'Object_Structure(i).AddShapeFromString tmpstring
		  'Object_Structure(i).NullShader=True
		  'objects.Append Object_Structure(i)
		  'next
		  'end
		  '
		  'Update
		  '
		  '
		  '//MakeMarchingCubeSurface
		  '//MakeCubicSurface
		  '//=============================
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Untitled()
	#tag EndHook


	#tag Note, Name = BU triangulation how to . . .
		
		#include <stdio.h>
		#include <stdlib.h>
		#include <string.h>
		#include <math.h>
		#define FALSE 0
		#define TRUE !FALSE
		#define maxpoints 10000
		#define maxcontours 200
		#define maxtriangles 10000
		
		
		/* program to create triangular mesh from 2D contours using method of minimum angular distance (Conrado Pla) */
		/* May 12 - re-order triangle vertex definitions so that surface normals point outwards */
		/* implement linear interpolation of contour points so that there are Ncpoints equally spaced on each contour */
		
		FILE *contourfile,*plotfile;
		char fieldstr[100],structure[100],buffer[130],number1[12],number2[12],number3[12],filename[256],str[100];
		int ncurve,*npoint_in_curve,count,pcount,i,j,k,l,minpoint,contourpoint[maxcontours][maxpoints],*P1,*P2,*P3,new_index,old_index,last_point,result,minind,Ncpoints,cfact,ntriangles,temptheta,address,min_point_in_contour;
		float temp1,temp2,temp3,dist,mindist,*X_vertices,*Y_vertices,*Z_vertices,*theta,*prad,dx,dy,pinc,maxrad,*New_X_vertices,*New_Y_vertices,*New_Z_vertices,*New_theta,himidangle,lomidangle,ang0,ang1,ang2,r1,r2,x_offset,y_offset,z_offset,xpix,ypix,zpix,X_cent,Y_cent,rad0,x_1,x_2,y_1,y_2;
		
		double grep();
		
		main ()
		{
		//parse contours from plan.roi file
		contourfile=fopen("plan.roi","r");
		printf("Enter structure name: ");
		scanf("%s",structure);
		sprintf(fieldstr,"Beginning of ROI: %s",structure);
		Findstring(contourfile,fieldstr);
		ncurve=(int)grep(contourfile,"num_curve =",FALSE);
		printf("there are %d curves\n",ncurve);
		min_point_in_contour=1000;
		npoint_in_curve=(int *) malloc(ncurve*sizeof(int));
		X_vertices=(float *) malloc(maxpoints*sizeof(float));
		Y_vertices=(float *) malloc(maxpoints*sizeof(float));
		Z_vertices=(float *) malloc(maxpoints*sizeof(float));
		theta=(float *) malloc(maxpoints*sizeof(float));
		prad=(float *) malloc(maxpoints*sizeof(float));  //radius of contour point from centroid
		
		count=0;
		i=0;
		while(!feof(contourfile)&&(i<ncurve))
		{
		sprintf(fieldstr,"Curve %d of %d",i+1,ncurve);
		Findstring(contourfile,fieldstr);
		npoint_in_curve[i]=(int)grep(contourfile,"num_points = ",FALSE);
		printf("curve %d contains %d points\n",i+1,npoint_in_curve[i]);
		if(npoint_in_curve[i]<min_point_in_contour) {min_point_in_contour=npoint_in_curve[i];}
		fgets(buffer,130,contourfile);
		
		for (j=0;j<npoint_in_curve[i];j++)
		{
		result=0;
		k=0;
		fgets(buffer,130,contourfile);
		while (buffer[result]!=' ')
		{
		number1[k]=buffer[result];
		k++;
		result++;
		}
		result=result+1;
		k=0;
		while (buffer[result]!=' ')
		{
		number2[k]=buffer[result];
		k++;
		result++;
		}
		result=result+1;
		k=0;
		while (buffer[result]!='\0')
		{
		number3[k]=buffer[result];
		k++;
		result++;
		}
		temp1=atof(number1);
		temp2=atof(number2);
		temp3=atof(number3);
		
		X_vertices[count]=temp1;
		Y_vertices[count]=temp2;
		Z_vertices[count]=temp3;
		//printf("i=%d j=%d contourpoint%d\n",i,j,count);
		contourpoint[i][j]=count;
		count=count+1;
		}
		i=i+1;
		}
		fclose(contourfile);
		
		P1=(int *) malloc(maxtriangles*sizeof(int));
		P2=(int *) malloc(maxtriangles*sizeof(int));
		P3=(int *) malloc(maxtriangles*sizeof(int));
		
		/* for each slice calculate centroid and angle associated with each vertex, sort by angle */
		
		maxrad=0;
		for(i=0;i<ncurve;i++)
		{
		temp1=0;
		temp2=0;
		//printf("contour %d of %d\n",i+1,ncurve);
		for(j=0;j<npoint_in_curve[i];j++) //find centroid
		{
		temp1=temp1+X_vertices[contourpoint[i][j]];
		temp2=temp2+Y_vertices[contourpoint[i][j]];
		}
		X_cent=temp1/npoint_in_curve[i];
		Y_cent=temp2/npoint_in_curve[i];
		//printf("centroid= %f,%f\n",X_cent[i],Y_cent[i]);
		
		for(j=0;j<npoint_in_curve[i];j++) //calculate angle
		{
		dx=X_vertices[contourpoint[i][j]]-X_cent;
		dy=Y_vertices[contourpoint[i][j]]-Y_cent;
		if(sqrt(dx*dx+dy*dy)>maxrad) maxrad=sqrt(dx*dx+dy*dy);
		prad[contourpoint[i][j]]=sqrt(dx*dx+dy*dy);
		//printf("contour radius=%f\n",sqrt(dx*dx+dy*dy));
		theta[contourpoint[i][j]]=atan2(dy,dx)*(180/3.14159);
		if(theta[contourpoint[i][j]]<0) {theta[contourpoint[i][j]]=360+theta[contourpoint[i][j]];}
		//printf("%d X=%f Y=%f angle %f\n",j,X_vertices[contourpoint[i][j]],Y_vertices[contourpoint[i][j]],theta[contourpoint[i][j]]);
		}
		//now sort contour points in CCW order
		//printf("sorting data...\n");
		for(j=0;j<npoint_in_curve[i];j++)
		{
		temp1=theta[contourpoint[i][j]];
		//printf("j=%d theta=%f\n",j,temp1);
		minind=j;
		for(k=j+1;k<npoint_in_curve[i];k++)
		{
		temp2=theta[contourpoint[i][k]];
		if(temp2<temp1) {temp1=temp2; minind=k;}
		}
		//printf("min value=%f at index %d\n",temp1,minind);
		new_index=contourpoint[i][minind];
		contourpoint[i][minind]=contourpoint[i][j];
		contourpoint[i][j]=new_index;
		//printf("value at %d=%f and %d=%f\n",j,theta[contourpoint[i][j]],minind,theta[contourpoint[i][minind]]);
		}
		sprintf(filename,"Contour1_%d",i);
		//plotfile=fopen(filename,"w");
		for(j=0;j<npoint_in_curve[i];j++)
		{
		//printf("Point %d X %f Y %f theta %f\n",j,X_vertices[contourpoint[i][j]],Y_vertices[contourpoint[i][j]],theta[contourpoint[i][j]]);
		//fprintf(plotfile,"%f %f\n",X_vertices[contourpoint[i][j]],Y_vertices[contourpoint[i][j]]);
		}
		//fclose(plotfile);
		}
		
		printf("maximum contour radius= %f\n",maxrad);
		//determine number of points in contour needed
		printf("Enter required in-slice resolution [cm]: ");
		scanf("%f",&pinc);
		pinc=(pinc/maxrad)*(360/3.14159);
		printf("Required angular interval of contour points is %f\n",pinc);
		Ncpoints=360/pinc;
		printf("Need %d points per contour\n",Ncpoints);
		
		//now edit vertex list so each contour has same number of points at required angular interval using linear interpoation
		New_X_vertices=(float *) malloc((ncurve*Ncpoints+2)*sizeof(float));
		New_Y_vertices=(float *) malloc((ncurve*Ncpoints+2)*sizeof(float));
		New_Z_vertices=(float *) malloc((ncurve*Ncpoints+2)*sizeof(float));
		New_theta=(float *) malloc(ncurve*Ncpoints*sizeof(float));
		
		/* interpolated radius at required angular interval which are multiples of pinc*/
		printf("Interpolating contour points...\n");
		
		for(i=0;i<ncurve;i++)
		{
		
		New_X_vertices[i*Ncpoints]=X_vertices[contourpoint[i][0]];
		New_Y_vertices[i*Ncpoints]=Y_vertices[contourpoint[i][0]];
		New_Z_vertices[i*Ncpoints]=Z_vertices[contourpoint[i][0]];
		New_theta[i*Ncpoints]=theta[contourpoint[i][0]];
		sprintf(filename,"Contour2_%d",i);
		//plotfile=fopen(filename,"w");
		//fprintf(plotfile,"%f %f\n",New_X_vertices[i*Ncpoints],New_Y_vertices[i*Ncpoints]);
		//printf("contour %d of %d\n",i,ncurve);
		for(j=1;j<Ncpoints;j++)
		{
		ang0=j*pinc+theta[contourpoint[i][0]];
		//printf("%d Contour radius to be interpolated at angle: %f\n",j,ang0);
		/*search for next three points in contour*/
		k=-1;
		do {k=k+1;} while((theta[contourpoint[i][k]]<ang0)&&(k<npoint_in_curve[i]));
		if((theta[contourpoint[i][k]]<ang0)) {
		//interpolation crosses over 0
		k=-1;
		do {k=k+1;} while((theta[contourpoint[i][k]]+360)<ang0);
		ang1=theta[contourpoint[i][k]]+360;
		x_1=X_vertices[contourpoint[i][k]];
		y_1=Y_vertices[contourpoint[i][k]];
		}
		else {
		ang1=theta[contourpoint[i][k]];
		x_1=X_vertices[contourpoint[i][k]];
		y_1=Y_vertices[contourpoint[i][k]];
		}
		/* search for previous 3 points in contour */
		k=npoint_in_curve[i];
		do {k=k-1;} while((theta[contourpoint[i][k]]>ang0)&&(k>0));
		if((k==0)&&(theta[contourpoint[i][k]]>ang0)) {
		//interpolation crosses over 0
		k=npoint_in_curve[i];
		ang0=ang0+360;
		do {k=k-1;} while(((theta[contourpoint[i][k]])>ang0)&&(k>0));
		ang2=theta[contourpoint[i][k]];
		x_2=X_vertices[contourpoint[i][k]];
		y_2=Y_vertices[contourpoint[i][k]];
		}
		else {
		ang2=theta[contourpoint[i][k]];
		x_2=X_vertices[contourpoint[i][k]];
		y_2=Y_vertices[contourpoint[i][k]];
		}
		//interpolate corresponding radius for ang0
		//printf("interpolating between angles: %f,%f\n",ang1,ang2);
		rad0=((ang0-ang2)/(ang1-ang2));
		if(rad0<0) {
		printf("Interpolation error\n");
		printf("rad0=%f ang0=%f ang1=%f ang2=%f\n",rad0,ang0,ang1,ang2);
		exit(-1);
		}
		New_Y_vertices[j+i*Ncpoints]=y_2+rad0*(y_1-y_2);
		New_X_vertices[j+i*Ncpoints]=x_2+rad0*(x_1-x_2);
		//printf("interpolated %f to coords %f,%f\n",rad0,New_X_vertices[j+i*Ncpoints],New_Y_vertices[j+i*Ncpoints]);
		sprintf(str, "%e", New_Y_vertices[j+i*Ncpoints]);
		if (strcmp(str,"nan")==0) {
		printf("interpolation error!\n");
		printf("interpolating from nodes: %f,%f\n",ang1,ang2);
		exit(-1);
		}
		//printf("X=%f Y=%f\n",New_X_vertices[j+i*Ncpoints],New_Y_vertices[j+i*Ncpoints]);
		New_Z_vertices[j+i*Ncpoints]=Z_vertices[contourpoint[i][0]];
		New_theta[j+i*Ncpoints]=j*pinc+theta[contourpoint[i][0]];
		//fprintf(plotfile,"%f %f\n",New_X_vertices[j+i*Ncpoints],New_Y_vertices[j+i*Ncpoints]);
		//printf("wrote to file: %f,%f\n",New_X_vertices[j+i*Ncpoints],New_Y_vertices[j+i*Ncpoints]);
		}
		//fclose(plotfile);
		}
		printf("done\n");
		
		free(X_vertices);
		free(Y_vertices);
		free(Z_vertices);
		free(theta);
		
		/* for debugging - output vertex list
		for(i=0;i<ncurve;i++)
		{
		printf("curve %d\n",i);
		for(j=0;j<Ncpoints;j++)
		{
		printf("X=%f Y=%f Z=%f theta=%f\n",New_X_vertices[j+i*Ncpoints],New_Y_vertices[j+i*Ncpoints],New_Z_vertices[j+i*Ncpoints],New_theta[j+i*Ncpoints]);
		}
		} */
		
		/*re-order contours by Z coordinate*/
		//printf("re-sorting contours by Z coordinate...\n");
		//printf("number of curves=%d\n",ncurve);
		for(i=0;i<(ncurve-1);i++)
		{
		//printf("Z coordinate of contour %d = %f\n",i,New_Z_vertices[i*Ncpoints]);
		temp1=New_Z_vertices[i*Ncpoints];
		minind=i;
		for(j=i+1;j<ncurve;j++)
		{
		if(New_Z_vertices[j*Ncpoints]<temp1)
		{
		minind=j;
		temp1=New_Z_vertices[j*Ncpoints];
		}
		}
		//printf("minimum Z value at contour %d = %f\n",minind,New_Z_vertices[minind*Ncpoints]);
		
		if(New_Z_vertices[minind*Ncpoints]<New_Z_vertices[i*Ncpoints]) {
		//printf("swapping contours %d and %d\n",i,minind);
		for(j=0;j<Ncpoints;j++)
		{
		temp1=New_X_vertices[j+minind*Ncpoints];
		temp2=New_Y_vertices[j+minind*Ncpoints];
		temp3=New_Z_vertices[j+minind*Ncpoints];
		temptheta=New_theta[address=j+minind*Ncpoints];
		
		New_X_vertices[j+minind*Ncpoints]=New_X_vertices[j+i*Ncpoints];
		New_Y_vertices[j+minind*Ncpoints]=New_Y_vertices[j+i*Ncpoints];
		New_Z_vertices[j+minind*Ncpoints]=New_Z_vertices[j+i*Ncpoints];
		New_theta[j+minind*Ncpoints]=New_theta[j+i*Ncpoints];
		
		New_X_vertices[j+i*Ncpoints]=temp1;
		New_Y_vertices[j+i*Ncpoints]=temp2;
		New_Z_vertices[j+i*Ncpoints]=temp3;
		New_theta[j+i*Ncpoints]=temptheta;
		}
		}
		else {
		//printf("contour order unchanged\n");
		}
		}
		
		/* for debugging - output vertex list
		for(i=0;i<ncurve;i++)
		for(j=0;j<Ncpoints;j++)
		{
		printf("address=%d X=%f Y=%f Z=%f theta=%f\n",j+i*Ncpoints,New_X_vertices[j+i*Ncpoints],New_Y_vertices[j+i*Ncpoints],New_Z_vertices[j+i*Ncpoints],New_theta[j+i*Ncpoints]);
		} */
		
		printf("starting triangulation...\n");
		//now starting triangulation
		count=0;
		for(i=0;i<(ncurve-1);i++)
		{
		//printf("curve %d\n",i);
		for(j=0;j<Ncpoints;j++)
		{
		//printf("at vertex %d\n",j);
		ang0=New_theta[j+i*Ncpoints];
		if(j==(Ncpoints-1)) {
		P1[count]=j+i*Ncpoints;
		P2[count]=j+(i+1)*Ncpoints;
		P3[count]=(i+1)*Ncpoints;
		P3[count+1]=j+i*Ncpoints;
		P1[count+1]=(i+1)*Ncpoints;
		P2[count+1]=i*Ncpoints;
		}
		else {
		ang1=New_theta[j+1+i*Ncpoints];
		//printf("Angle of next point on curve %d=%f\n",i,ang1);
		himidangle=0.5*(ang0+ang1);  //upper threshold
		//printf("upper angular threshold=%f\n",himidangle);
		
		if(j==0) {
		ang1=New_theta[(Ncpoints-1)+i*Ncpoints];
		//printf("found j=0 so angle of previous point of curve %d=%f\n",i,ang1);
		lomidangle=0.5*(360-ang1+ang0)+ang1;
		//printf("lower angular threshold=%f\n",lomidangle);
		if(lomidangle>360) {lomidangle=lomidangle-360;};
		}
		else {
		ang1=New_theta[(j-1)+i*Ncpoints];
		//printf("angle of previous point on curve %d=%f\n",i,ang1);
		lomidangle=0.5*(ang0+ang1);
		//printf("lower angular threshold=%f\n",lomidangle);
		}
		
		ang0=New_theta[j+1+(i+1)*Ncpoints]; //corresponding point on next slice
		//printf("angle of next point on next slice=%f\n",ang0);
		//printf("angle of next point on this slice=%f\n",New_theta[(j+1)+i*Ncpoints]);
		/* testing if next point on next slice is within angular interval */
		if(himidangle>lomidangle) {
		if((ang0>=lomidangle)&&(ang1<himidangle)) {
		P1[count]=j+i*Ncpoints;
		P2[count]=j+(i+1)*Ncpoints;
		P3[count]=j+1+(i+1)*Ncpoints;
		P3[count+1]=j+i*Ncpoints;
		P1[count+1]=j+1+(i+1)*Ncpoints;
		P2[count+1]=j+1+i*Ncpoints;
		}
		else {
		P2[count]=j+i*Ncpoints;
		P3[count]=j+(i+1)*Ncpoints;
		P1[count]=j+1+i*Ncpoints;
		P3[count+1]=j+(i+1)*Ncpoints;
		P1[count+1]=j+1+i*Ncpoints;
		P2[count+1]=j+1+(i+1)*Ncpoints;
		}
		}
		else { /* 0 lies between lomidang and himidang*/
		himidangle=himidangle+360;
		ang0=ang0+360;
		if((ang0>=lomidangle)&&(ang1<himidangle)) {
		P1[count]=j+i*Ncpoints;
		P2[count]=j+(i+1)*Ncpoints;
		P3[count]=j+1+(i+1)*Ncpoints;
		P3[count+1]=j+i*Ncpoints;
		P1[count+1]=j+1+(i+1)*Ncpoints;
		P2[count+1]=j+1+i*Ncpoints;
		}
		else {
		P2[count]=j+i*Ncpoints;
		P3[count]=j+(i+1)*Ncpoints;
		P1[count]=j+1+i*Ncpoints;
		P3[count+1]=j+(i+1)*Ncpoints;
		P1[count+1]=j+1+i*Ncpoints;
		P2[count+1]=j+1+(i+1)*Ncpoints;
		}
		}
		}
		count=count+2;
		}
		}
		printf("created %d triangles\n",count);
		
		/* now triangulate the ends of the surface */
		printf("triangulating end surfaces...\n");
		/*calculate centroid*/
		X_cent=0;
		Y_cent=0;
		for(j=0;j<Ncpoints;j++)
		{
		X_cent=X_cent+New_X_vertices[j];
		Y_cent=Y_cent+New_Y_vertices[j];
		}
		X_cent=X_cent/Ncpoints;
		Y_cent=Y_cent/Ncpoints;
		//printf("Centroid of first face = %f,%f\n",X_cent,Y_cent);
		New_X_vertices[Ncpoints+(ncurve-1)*Ncpoints]=X_cent;
		New_Y_vertices[Ncpoints+(ncurve-1)*Ncpoints]=Y_cent;
		New_Z_vertices[Ncpoints+(ncurve-1)*Ncpoints]=New_Z_vertices[0];
		//plotfile=fopen("triangulation1","w");
		for(j=0;j<Ncpoints;j++)
		{
		if(j<(Ncpoints-1)) {
		P1[count]=Ncpoints+(ncurve-1)*Ncpoints;
		P2[count]=j;
		P3[count]=j+1;
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P1[count]],New_Y_vertices[P1[count]]);
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P2[count]],New_Y_vertices[P2[count]]);
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P3[count]],New_Y_vertices[P3[count]]);
		}
		else {
		P1[count]=Ncpoints+(ncurve-1)*Ncpoints;
		P2[count]=j;
		P3[count]=0;
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P1[count]],New_Y_vertices[P1[count]]);
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P2[count]],New_Y_vertices[P2[count]]);
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P3[count]],New_Y_vertices[P3[count]]);
		}
		count=count+1;
		}
		//fclose(plotfile);
		
		
		X_cent=0;
		Y_cent=0;
		for(j=0;j<Ncpoints;j++)
		{
		X_cent=X_cent+New_X_vertices[j+(ncurve-1)*Ncpoints];
		Y_cent=Y_cent+New_Y_vertices[j+(ncurve-1)*Ncpoints];
		}
		X_cent=X_cent/Ncpoints;
		Y_cent=Y_cent/Ncpoints;
		New_X_vertices[Ncpoints+(ncurve-1)*Ncpoints+1]=X_cent;
		New_Y_vertices[Ncpoints+(ncurve-1)*Ncpoints+1]=Y_cent;
		New_Z_vertices[Ncpoints+(ncurve-1)*Ncpoints+1]=New_Z_vertices[(ncurve-1)*Ncpoints];
		
		//plotfile=fopen("triangulation2","w");
		for(j=0;j<Ncpoints;j++)
		{
		if(j<(Ncpoints-1)) {
		P1[count]=Ncpoints+(ncurve-1)*Ncpoints+1;
		P2[count]=j+(ncurve-1)*Ncpoints;
		P3[count]=j+1+(ncurve-1)*Ncpoints;
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P1[count]],New_Y_vertices[P1[count]]);
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P2[count]],New_Y_vertices[P2[count]]);
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P3[count]],New_Y_vertices[P3[count]]);
		}
		else {
		P1[count]=Ncpoints+(ncurve-1)*Ncpoints+1;
		P2[count]=j+(ncurve-1)*Ncpoints;
		P3[count]=(ncurve-1)*Ncpoints;
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P1[count]],New_Y_vertices[P1[count]]);
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P2[count]],New_Y_vertices[P2[count]]);
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P3[count]],New_Y_vertices[P3[count]]);
		}
		count=count+1;
		}
		//fclose(plotfile);
		
		printf("there are now %d triangles\n",count);
		
		//write triangle data to roi file
		printf("Enter x,y and z offset: ");
		scanf("%f,%f,%f",&x_offset,&y_offset,&z_offset);
		printf("Enter image resolution (dx,dy,dz): ");
		scanf("%f,%f,%f",&xpix,&ypix,&zpix);
		printf("writing data to file Surface.roi.....\n");
		contourfile=fopen("Surface.roi","w");
		fprintf(contourfile,"//-----------------------------------------------------\n");
		fprintf(contourfile,"//  Beginning of ROI: GTVT0\n");
		fprintf(contourfile,"//-----------------------------------------------------\n");
		fprintf(contourfile,"               surface_mesh={\n");
		fprintf(contourfile,"                       samples = 0;\n");
		fprintf(contourfile,"                        number_of_vertices = %d\n",ncurve*Ncpoints+2);
		fprintf(contourfile,"                       number_of_triangles = %d\n",count);
		fprintf(contourfile,"                       vertices={\n");
		
		for(i=0;i<(ncurve*Ncpoints+2);i++)
		{
		fprintf(contourfile,"%f %f %f\n",(New_X_vertices[i]-x_offset)/xpix,(New_Y_vertices[i]-y_offset)/ypix,(New_Z_vertices[i]-z_offset)/zpix);
		}
		fprintf(contourfile," };  // End of vertices for surface mesh\n");
		fprintf(contourfile,"                       triangles={\n");
		for(i=0;i<count;i++)
		{
		fprintf(contourfile,"%d %d %d\n",P1[i],P2[i],P3[i]);
		}
		fprintf(contourfile,"        }; // End of ROI GTVT0\n");
		fclose(contourfile);
		printf("done.\n");
		};
		
		Findstring(fil,string)
		
		FILE *fil;
		char string[82];
		
		/*looks for occurence of string in file*/
		{char buffer[82] = { 80 };  /* Maximum characters in first byte */
		char number[82] = { 32 };
		char cc;
		char *pdest;
		int  result,i,linenr,found=FALSE;
		pdest=NULL;
		linenr=0;
		/*result=fseek(fil,0,SEEK_SET);*/
		/* now look for occurrence */
		while ( !feof(fil) && (!found) )
		{/* read one line into buffer */
		if( fgets( buffer, 80, fil ) == NULL)
		printf( "fgets error in set_\n" );
		else
		{/*printf( "%s", buffer);linenr++;*/}
		/* look for occurrence of string in buffer */
		pdest = strstr( buffer, string );
		result = pdest - buffer + 1;
		if( pdest != NULL )
		{found=TRUE;
		//printf( "%s found at position %d on line %d\n", string, result,linenr );
		}
		}
		}
		
		double grep(fil,string,reset)
		
		FILE *fil;
		char string[82];
		int reset;
		/* seeks for string in pfil and returns assigned value in double*/
		{
		char buffer[82] = {80};
		/* Maximum characters in first byte */
		char number[82] = {32};
		
		char cc;
		char *pdest;
		int  result,i,linenr,found=FALSE;
		double ret;
		pdest=NULL;
		
		linenr=0;
		
		/* reset file if needed*/
		if (reset) result=fseek(fil,0,SEEK_SET);
		
		/* now look for occurrence */
		while ( !feof(fil) && (!found) )
		{
		/* read one line into buffer */
		if( fgets( buffer, 80, fil ) == NULL)
		printf( "fgets error in set_\n" );
		else
		{
		/*printf( "%s", buffer);*/linenr++;
		}
		
		/* look for occurrence of string in buffer */
		pdest = strstr( buffer, string );
		
		result = pdest - buffer + 1;
		
		if( pdest != NULL )
		{
		found=TRUE;
		
		/*printf( "%s found at position %d on line %d\n", string, result,linenr );*/
		while (cc=buffer[result] != '=') result++;
		
		i=0;
		result++;
		
		while ((buffer[result] != '\n') && (result < 82 ))
		{
		number[i]=buffer[result];
		
		i++;
		result++;
		}
		
		ret=atof(number);
		
		}
		
		else
		{
		/*printf( "%s not found in line %d\n", string, linenr );*/
		ret=0.0;
		}
		
		}
		
		return(ret);
		
		}
	#tag EndNote

	#tag Note, Name = how to trimesh
		
		Dim tm as New Trimesh
		dim myobject as Object3D
		// define the vertices
		tm.VertexCount = 3
		tm.VertexPositions.SetXYZ(0, 5, 5, 0 )
		tm.VertexPositions.SetXYZ(1, 5, 10, 0 )
		tm.VertexPositions.SetXYZ(2, 10, 10, 0 )
		tm.HasVertexColors= True
		tm.VertexColors.Item(0) = &c00FF00
		tm.VertexColors.Item(1) = &c00FF00
		tm.VertexColors.Item(2) = &c00FF00
		
		// define the triangles
		tm.TriangleCount = 1
		tm.Triangles.SetABC(0, 2, 1, 0)
		
		// add it to our display!
		Rb3DSpace1.objects.Append tm
		
		
		Rb3DSpace1.Refresh
	#tag EndNote

	#tag Note, Name = triangulation how to . . .
		
		#define FALSE 0
		#define TRUE !FALSE
		#define maxpoints 10000
		#define maxcontours 200
		#define maxtriangles 10000
		
		/* program to create triangular mesh from 2D contours using method of minimum angular distance (Conrado Pla) */
		/* May 12 - re-order triangle vertex definitions so that surface normals point outwards */
		/* implement linear interpolation of contour points so that there are Ncpoints equally spaced on each contour */
		
		FILE *contourfile,*plotfile;
		char fieldstr[100],structure[100],buffer[130],number1[12],number2[12],number3[12],filename[256],str[100];
		
		int ncurve,*npoint_in_curve,count,pcount,i,j,k,l,minpoint,contourpoint[maxcontours][maxpoints],*P1,*P2,*P3,
		     new_index,old_index,last_point,result,minind,Ncpoints,cfact,ntriangles,temptheta,address,min_point_in_contour;
		
		float temp1,temp2,temp3,dist,mindist,*X_vertices,*Y_vertices,*Z_vertices,*theta,*prad,dx,dy,pinc,maxrad,*New_X_vertices,*New_Y_vertices,*New_Z_vertices,
		         *New_theta,himidangle,lomidangle,ang0,ang1,ang2,r1,r2,x_offset,y_offset,z_offset,xpix,ypix,zpix,X_cent,Y_cent,rad0,x_1,x_2,y_1,y_2;
		
		main ()
		{
		//ncurve=number of contours 
		//min_point_in_contour=1000; //
		//npoint_in_curve=(int *) malloc(ncurve*sizeof(int)); //how many points per curve
		X_vertices=(float *) malloc(maxpoints*sizeof(float));
		Y_vertices=(float *) malloc(maxpoints*sizeof(float));  //set those to size 10 000
		Z_vertices=(float *) malloc(maxpoints*sizeof(float));
		theta=(float *) malloc(maxpoints*sizeof(float));
		prad=(float *) malloc(maxpoints*sizeof(float));  //radius of contour point from centroid
		
		count=0;
		i=0;
		while(!feof(contourfile)&&(i<ncurve))
		{
		X_vertices[count]=temp1;
		Y_vertices[count]=temp2;
		Z_vertices[count]=temp3;
		contourpoint[i][j]=count; 
		count=count+1;
		}
		i=i+1;  //for each curve
		}
		fclose(contourfile);
		
		P1=(int *) malloc(maxtriangles*sizeof(int));
		P2=(int *) malloc(maxtriangles*sizeof(int));
		P3=(int *) malloc(maxtriangles*sizeof(int));
		
		/* for each slice calculate centroid and angle associated with each vertex, sort by angle */
		
		maxrad=0;
		for(i=0;i<ncurve;i++)
		{
		temp1=0;
		temp2=0;
		//printf("contour %d of %d\n",i+1,ncurve);
		for(j=0;j<npoint_in_curve[i];j++) //find centroid
		{
		temp1=temp1+X_vertices[contourpoint[i][j]];
		temp2=temp2+Y_vertices[contourpoint[i][j]];
		}
		X_cent=temp1/npoint_in_curve[i];
		Y_cent=temp2/npoint_in_curve[i];
		//printf("centroid= %f,%f\n",X_cent[i],Y_cent[i]);
		
		for(j=0;j<npoint_in_curve[i];j++) //calculate angle
		{
		dx=X_vertices[contourpoint[i][j]]-X_cent;
		dy=Y_vertices[contourpoint[i][j]]-Y_cent;
		if(sqrt(dx*dx+dy*dy)>maxrad) maxrad=sqrt(dx*dx+dy*dy);
		prad[contourpoint[i][j]]=sqrt(dx*dx+dy*dy);
		//printf("contour radius=%f\n",sqrt(dx*dx+dy*dy));
		theta[contourpoint[i][j]]=atan2(dy,dx)*(180/3.14159);
		if(theta[contourpoint[i][j]]<0) {theta[contourpoint[i][j]]=360+theta[contourpoint[i][j]];}
		//printf("%d X=%f Y=%f angle %f\n",j,X_vertices[contourpoint[i][j]],Y_vertices[contourpoint[i][j]],theta[contourpoint[i][j]]);
		}
		//now sort contour points in CCW order
		//printf("sorting data...\n");
		for(j=0;j<npoint_in_curve[i];j++)
		{
		temp1=theta[contourpoint[i][j]];
		//printf("j=%d theta=%f\n",j,temp1);
		minind=j;
		for(k=j+1;k<npoint_in_curve[i];k++)
		{
		temp2=theta[contourpoint[i][k]];
		if(temp2<temp1) {temp1=temp2; minind=k;}
		}
		//printf("min value=%f at index %d\n",temp1,minind);
		new_index=contourpoint[i][minind];
		contourpoint[i][minind]=contourpoint[i][j];
		contourpoint[i][j]=new_index;
		//printf("value at %d=%f and %d=%f\n",j,theta[contourpoint[i][j]],minind,theta[contourpoint[i][minind]]);
		}
		sprintf(filename,"Contour1_%d",i);
		//plotfile=fopen(filename,"w");
		for(j=0;j<npoint_in_curve[i];j++)
		{
		//printf("Point %d X %f Y %f theta %f\n",j,X_vertices[contourpoint[i][j]],Y_vertices[contourpoint[i][j]],theta[contourpoint[i][j]]);
		//fprintf(plotfile,"%f %f\n",X_vertices[contourpoint[i][j]],Y_vertices[contourpoint[i][j]]);
		}
		//fclose(plotfile);
		}
		
		printf("maximum contour radius= %f\n",maxrad);
		//determine number of points in contour needed
		printf("Enter required in-slice resolution [cm]: ");
		scanf("%f",&pinc);
		pinc=(pinc/maxrad)*(360/3.14159);
		printf("Required angular interval of contour points is %f\n",pinc);
		Ncpoints=360/pinc;
		printf("Need %d points per contour\n",Ncpoints);
		
		//now edit vertex list so each contour has same number of points at required angular interval using linear interpoation
		New_X_vertices=(float *) malloc((ncurve*Ncpoints+2)*sizeof(float));
		New_Y_vertices=(float *) malloc((ncurve*Ncpoints+2)*sizeof(float));
		New_Z_vertices=(float *) malloc((ncurve*Ncpoints+2)*sizeof(float));
		New_theta=(float *) malloc(ncurve*Ncpoints*sizeof(float));
		
		/* interpolated radius at required angular interval which are multiples of pinc*/
		printf("Interpolating contour points...\n");
		
		for(i=0;i<ncurve;i++)
		{
		
		New_X_vertices[i*Ncpoints]=X_vertices[contourpoint[i][0]];
		New_Y_vertices[i*Ncpoints]=Y_vertices[contourpoint[i][0]];
		New_Z_vertices[i*Ncpoints]=Z_vertices[contourpoint[i][0]];
		New_theta[i*Ncpoints]=theta[contourpoint[i][0]];
		sprintf(filename,"Contour2_%d",i);
		//plotfile=fopen(filename,"w");
		//fprintf(plotfile,"%f %f\n",New_X_vertices[i*Ncpoints],New_Y_vertices[i*Ncpoints]);
		//printf("contour %d of %d\n",i,ncurve);
		for(j=1;j<Ncpoints;j++)
		{
		ang0=j*pinc+theta[contourpoint[i][0]];
		//printf("%d Contour radius to be interpolated at angle: %f\n",j,ang0);
		/*search for next three points in contour*/
		k=-1;
		do {k=k+1;} while((theta[contourpoint[i][k]]<ang0)&&(k<npoint_in_curve[i]));
		if((theta[contourpoint[i][k]]<ang0)) {
		//interpolation crosses over 0
		k=-1;
		do {k=k+1;} while((theta[contourpoint[i][k]]+360)<ang0);
		ang1=theta[contourpoint[i][k]]+360;
		x_1=X_vertices[contourpoint[i][k]];
		y_1=Y_vertices[contourpoint[i][k]];
		}
		else {
		ang1=theta[contourpoint[i][k]];
		x_1=X_vertices[contourpoint[i][k]];
		y_1=Y_vertices[contourpoint[i][k]];
		}
		/* search for previous 3 points in contour */
		k=npoint_in_curve[i];
		do {k=k-1;} while((theta[contourpoint[i][k]]>ang0)&&(k>0));
		if((k==0)&&(theta[contourpoint[i][k]]>ang0)) {
		//interpolation crosses over 0
		k=npoint_in_curve[i];
		ang0=ang0+360;
		do {k=k-1;} while(((theta[contourpoint[i][k]])>ang0)&&(k>0));
		ang2=theta[contourpoint[i][k]];
		x_2=X_vertices[contourpoint[i][k]];
		y_2=Y_vertices[contourpoint[i][k]];
		}
		else {
		ang2=theta[contourpoint[i][k]];
		x_2=X_vertices[contourpoint[i][k]];
		y_2=Y_vertices[contourpoint[i][k]];
		}
		//interpolate corresponding radius for ang0
		//printf("interpolating between angles: %f,%f\n",ang1,ang2);
		rad0=((ang0-ang2)/(ang1-ang2));
		if(rad0<0) {
		printf("Interpolation error\n");
		printf("rad0=%f ang0=%f ang1=%f ang2=%f\n",rad0,ang0,ang1,ang2);
		exit(-1);
		}
		New_Y_vertices[j+i*Ncpoints]=y_2+rad0*(y_1-y_2);
		New_X_vertices[j+i*Ncpoints]=x_2+rad0*(x_1-x_2);
		//printf("interpolated %f to coords %f,%f\n",rad0,New_X_vertices[j+i*Ncpoints],New_Y_vertices[j+i*Ncpoints]);
		sprintf(str, "%e", New_Y_vertices[j+i*Ncpoints]);
		if (strcmp(str,"nan")==0) {
		printf("interpolation error!\n");
		printf("interpolating from nodes: %f,%f\n",ang1,ang2);
		exit(-1);
		}
		//printf("X=%f Y=%f\n",New_X_vertices[j+i*Ncpoints],New_Y_vertices[j+i*Ncpoints]);
		New_Z_vertices[j+i*Ncpoints]=Z_vertices[contourpoint[i][0]];
		New_theta[j+i*Ncpoints]=j*pinc+theta[contourpoint[i][0]];
		//fprintf(plotfile,"%f %f\n",New_X_vertices[j+i*Ncpoints],New_Y_vertices[j+i*Ncpoints]);
		//printf("wrote to file: %f,%f\n",New_X_vertices[j+i*Ncpoints],New_Y_vertices[j+i*Ncpoints]);
		}
		//fclose(plotfile);
		}
		printf("done\n");
		
		free(X_vertices);
		free(Y_vertices);
		free(Z_vertices);
		free(theta);
		
		/* for debugging - output vertex list
		for(i=0;i<ncurve;i++)
		{
		printf("curve %d\n",i);
		for(j=0;j<Ncpoints;j++)
		{
		printf("X=%f Y=%f Z=%f theta=%f\n",New_X_vertices[j+i*Ncpoints],New_Y_vertices[j+i*Ncpoints],New_Z_vertices[j+i*Ncpoints],New_theta[j+i*Ncpoints]);
		}
		} */
		
		/*re-order contours by Z coordinate*/
		//printf("re-sorting contours by Z coordinate...\n");
		//printf("number of curves=%d\n",ncurve);
		for(i=0;i<(ncurve-1);i++)
		{
		//printf("Z coordinate of contour %d = %f\n",i,New_Z_vertices[i*Ncpoints]);
		temp1=New_Z_vertices[i*Ncpoints];
		minind=i;
		for(j=i+1;j<ncurve;j++)
		{
		if(New_Z_vertices[j*Ncpoints]<temp1)
		{
		minind=j;
		temp1=New_Z_vertices[j*Ncpoints];
		}
		}
		//printf("minimum Z value at contour %d = %f\n",minind,New_Z_vertices[minind*Ncpoints]);
		
		if(New_Z_vertices[minind*Ncpoints]<New_Z_vertices[i*Ncpoints]) {
		//printf("swapping contours %d and %d\n",i,minind);
		for(j=0;j<Ncpoints;j++)
		{
		temp1=New_X_vertices[j+minind*Ncpoints];
		temp2=New_Y_vertices[j+minind*Ncpoints];
		temp3=New_Z_vertices[j+minind*Ncpoints];
		temptheta=New_theta[address=j+minind*Ncpoints];
		
		New_X_vertices[j+minind*Ncpoints]=New_X_vertices[j+i*Ncpoints];
		New_Y_vertices[j+minind*Ncpoints]=New_Y_vertices[j+i*Ncpoints];
		New_Z_vertices[j+minind*Ncpoints]=New_Z_vertices[j+i*Ncpoints];
		New_theta[j+minind*Ncpoints]=New_theta[j+i*Ncpoints];
		
		New_X_vertices[j+i*Ncpoints]=temp1;
		New_Y_vertices[j+i*Ncpoints]=temp2;
		New_Z_vertices[j+i*Ncpoints]=temp3;
		New_theta[j+i*Ncpoints]=temptheta;
		}
		}
		else {
		//printf("contour order unchanged\n");
		}
		}
		
		/* for debugging - output vertex list
		for(i=0;i<ncurve;i++)
		for(j=0;j<Ncpoints;j++)
		{
		printf("address=%d X=%f Y=%f Z=%f theta=%f\n",j+i*Ncpoints,New_X_vertices[j+i*Ncpoints],New_Y_vertices[j+i*Ncpoints],New_Z_vertices[j+i*Ncpoints],New_theta[j+i*Ncpoints]);
		} */
		
		printf("starting triangulation...\n");
		//now starting triangulation
		count=0;
		for(i=0;i<(ncurve-1);i++)
		{
		//printf("curve %d\n",i);
		for(j=0;j<Ncpoints;j++)
		{
		//printf("at vertex %d\n",j);
		ang0=New_theta[j+i*Ncpoints];
		if(j==(Ncpoints-1)) {
		P1[count]=j+i*Ncpoints;
		P2[count]=j+(i+1)*Ncpoints;
		P3[count]=(i+1)*Ncpoints;
		P3[count+1]=j+i*Ncpoints;
		P1[count+1]=(i+1)*Ncpoints;
		P2[count+1]=i*Ncpoints;
		}
		else {
		ang1=New_theta[j+1+i*Ncpoints];
		//printf("Angle of next point on curve %d=%f\n",i,ang1);
		himidangle=0.5*(ang0+ang1);  //upper threshold
		//printf("upper angular threshold=%f\n",himidangle);
		
		if(j==0) {
		ang1=New_theta[(Ncpoints-1)+i*Ncpoints];
		//printf("found j=0 so angle of previous point of curve %d=%f\n",i,ang1);
		lomidangle=0.5*(360-ang1+ang0)+ang1;
		//printf("lower angular threshold=%f\n",lomidangle);
		if(lomidangle>360) {lomidangle=lomidangle-360;};
		}
		else {
		ang1=New_theta[(j-1)+i*Ncpoints];
		//printf("angle of previous point on curve %d=%f\n",i,ang1);
		lomidangle=0.5*(ang0+ang1);
		//printf("lower angular threshold=%f\n",lomidangle);
		}
		
		ang0=New_theta[j+1+(i+1)*Ncpoints]; //corresponding point on next slice
		//printf("angle of next point on next slice=%f\n",ang0);
		//printf("angle of next point on this slice=%f\n",New_theta[(j+1)+i*Ncpoints]);
		/* testing if next point on next slice is within angular interval */
		if(himidangle>lomidangle) {
		if((ang0>=lomidangle)&&(ang1<himidangle)) {
		P1[count]=j+i*Ncpoints;
		P2[count]=j+(i+1)*Ncpoints;
		P3[count]=j+1+(i+1)*Ncpoints;
		P3[count+1]=j+i*Ncpoints;
		P1[count+1]=j+1+(i+1)*Ncpoints;
		P2[count+1]=j+1+i*Ncpoints;
		}
		else {
		P2[count]=j+i*Ncpoints;
		P3[count]=j+(i+1)*Ncpoints;
		P1[count]=j+1+i*Ncpoints;
		P3[count+1]=j+(i+1)*Ncpoints;
		P1[count+1]=j+1+i*Ncpoints;
		P2[count+1]=j+1+(i+1)*Ncpoints;
		}
		}
		else { /* 0 lies between lomidang and himidang*/
		himidangle=himidangle+360;
		ang0=ang0+360;
		if((ang0>=lomidangle)&&(ang1<himidangle)) {
		P1[count]=j+i*Ncpoints;
		P2[count]=j+(i+1)*Ncpoints;
		P3[count]=j+1+(i+1)*Ncpoints;
		P3[count+1]=j+i*Ncpoints;
		P1[count+1]=j+1+(i+1)*Ncpoints;
		P2[count+1]=j+1+i*Ncpoints;
		}
		else {
		P2[count]=j+i*Ncpoints;
		P3[count]=j+(i+1)*Ncpoints;
		P1[count]=j+1+i*Ncpoints;
		P3[count+1]=j+(i+1)*Ncpoints;
		P1[count+1]=j+1+i*Ncpoints;
		P2[count+1]=j+1+(i+1)*Ncpoints;
		}
		}
		}
		count=count+2;
		}
		}
		printf("created %d triangles\n",count);
		
		/* now triangulate the ends of the surface */
		printf("triangulating end surfaces...\n");
		/*calculate centroid*/
		X_cent=0;
		Y_cent=0;
		for(j=0;j<Ncpoints;j++)
		{
		X_cent=X_cent+New_X_vertices[j];
		Y_cent=Y_cent+New_Y_vertices[j];
		}
		X_cent=X_cent/Ncpoints;
		Y_cent=Y_cent/Ncpoints;
		//printf("Centroid of first face = %f,%f\n",X_cent,Y_cent);
		New_X_vertices[Ncpoints+(ncurve-1)*Ncpoints]=X_cent;
		New_Y_vertices[Ncpoints+(ncurve-1)*Ncpoints]=Y_cent;
		New_Z_vertices[Ncpoints+(ncurve-1)*Ncpoints]=New_Z_vertices[0];
		//plotfile=fopen("triangulation1","w");
		for(j=0;j<Ncpoints;j++)
		{
		if(j<(Ncpoints-1)) {
		P1[count]=Ncpoints+(ncurve-1)*Ncpoints;
		P2[count]=j;
		P3[count]=j+1;
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P1[count]],New_Y_vertices[P1[count]]);
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P2[count]],New_Y_vertices[P2[count]]);
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P3[count]],New_Y_vertices[P3[count]]);
		}
		else {
		P1[count]=Ncpoints+(ncurve-1)*Ncpoints;
		P2[count]=j;
		P3[count]=0;
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P1[count]],New_Y_vertices[P1[count]]);
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P2[count]],New_Y_vertices[P2[count]]);
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P3[count]],New_Y_vertices[P3[count]]);
		}
		count=count+1;
		}
		//fclose(plotfile);
		
		
		X_cent=0;
		Y_cent=0;
		for(j=0;j<Ncpoints;j++)
		{
		X_cent=X_cent+New_X_vertices[j+(ncurve-1)*Ncpoints];
		Y_cent=Y_cent+New_Y_vertices[j+(ncurve-1)*Ncpoints];
		}
		X_cent=X_cent/Ncpoints;
		Y_cent=Y_cent/Ncpoints;
		New_X_vertices[Ncpoints+(ncurve-1)*Ncpoints+1]=X_cent;
		New_Y_vertices[Ncpoints+(ncurve-1)*Ncpoints+1]=Y_cent;
		New_Z_vertices[Ncpoints+(ncurve-1)*Ncpoints+1]=New_Z_vertices[(ncurve-1)*Ncpoints];
		
		//plotfile=fopen("triangulation2","w");
		for(j=0;j<Ncpoints;j++)
		{
		if(j<(Ncpoints-1)) {
		P1[count]=Ncpoints+(ncurve-1)*Ncpoints+1;
		P2[count]=j+(ncurve-1)*Ncpoints;
		P3[count]=j+1+(ncurve-1)*Ncpoints;
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P1[count]],New_Y_vertices[P1[count]]);
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P2[count]],New_Y_vertices[P2[count]]);
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P3[count]],New_Y_vertices[P3[count]]);
		}
		else {
		P1[count]=Ncpoints+(ncurve-1)*Ncpoints+1;
		P2[count]=j+(ncurve-1)*Ncpoints;
		P3[count]=(ncurve-1)*Ncpoints;
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P1[count]],New_Y_vertices[P1[count]]);
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P2[count]],New_Y_vertices[P2[count]]);
		//fprintf(plotfile,"%f %f\n",New_X_vertices[P3[count]],New_Y_vertices[P3[count]]);
		}
		count=count+1;
		}
		//fclose(plotfile);
		
		printf("there are now %d triangles\n",count);
		
		//write triangle data to roi file
		printf("Enter x,y and z offset: ");
		scanf("%f,%f,%f",&x_offset,&y_offset,&z_offset);
		printf("Enter image resolution (dx,dy,dz): ");
		scanf("%f,%f,%f",&xpix,&ypix,&zpix);
		printf("writing data to file Surface.roi.....\n");
		contourfile=fopen("Surface.roi","w");
		fprintf(contourfile,"//-----------------------------------------------------\n");
		fprintf(contourfile,"//  Beginning of ROI: GTVT0\n");
		fprintf(contourfile,"//-----------------------------------------------------\n");
		fprintf(contourfile,"               surface_mesh={\n");
		fprintf(contourfile,"                       samples = 0;\n");
		fprintf(contourfile,"                        number_of_vertices = %d\n",ncurve*Ncpoints+2);
		fprintf(contourfile,"                       number_of_triangles = %d\n",count);
		fprintf(contourfile,"                       vertices={\n");
		
		for(i=0;i<(ncurve*Ncpoints+2);i++)
		{
		fprintf(contourfile,"%f %f %f\n",(New_X_vertices[i]-x_offset)/xpix,(New_Y_vertices[i]-y_offset)/ypix,(New_Z_vertices[i]-z_offset)/zpix);
		}
		fprintf(contourfile," };  // End of vertices for surface mesh\n");
		fprintf(contourfile,"                       triangles={\n");
		for(i=0;i<count;i++)
		{
		fprintf(contourfile,"%d %d %d\n",P1[i],P2[i],P3[i]);
		}
		fprintf(contourfile,"        }; // End of ROI GTVT0\n");
		fclose(contourfile);
		printf("done.\n");
		};
		
		Findstring(fil,string)
		
		FILE *fil;
		char string[82];
		
		/*looks for occurence of string in file*/
		{char buffer[82] = { 80 };  /* Maximum characters in first byte */
		char number[82] = { 32 };
		char cc;
		char *pdest;
		int  result,i,linenr,found=FALSE;
		pdest=NULL;
		linenr=0;
		/*result=fseek(fil,0,SEEK_SET);*/
		/* now look for occurrence */
		while ( !feof(fil) && (!found) )
		{/* read one line into buffer */
		if( fgets( buffer, 80, fil ) == NULL)
		printf( "fgets error in set_\n" );
		else
		{/*printf( "%s", buffer);linenr++;*/}
		/* look for occurrence of string in buffer */
		pdest = strstr( buffer, string );
		result = pdest - buffer + 1;
		if( pdest != NULL )
		{found=TRUE;
		//printf( "%s found at position %d on line %d\n", string, result,linenr );
		}
		}
		}
		
		double grep(fil,string,reset)
		
		FILE *fil;
		char string[82];
		int reset;
		/* seeks for string in pfil and returns assigned value in double*/
		{
		char buffer[82] = {80};
		/* Maximum characters in first byte */
		char number[82] = {32};
		
		char cc;
		char *pdest;
		int  result,i,linenr,found=FALSE;
		double ret;
		pdest=NULL;
		
		linenr=0;
		
		/* reset file if needed*/
		if (reset) result=fseek(fil,0,SEEK_SET);
		
		/* now look for occurrence */
		while ( !feof(fil) && (!found) )
		{
		/* read one line into buffer */
		if( fgets( buffer, 80, fil ) == NULL)
		printf( "fgets error in set_\n" );
		else
		{
		/*printf( "%s", buffer);*/linenr++;
		}
		
		/* look for occurrence of string in buffer */
		pdest = strstr( buffer, string );
		
		result = pdest - buffer + 1;
		
		if( pdest != NULL )
		{
		found=TRUE;
		
		/*printf( "%s found at position %d on line %d\n", string, result,linenr );*/
		while (cc=buffer[result] != '=') result++;
		
		i=0;
		result++;
		
		while ((buffer[result] != '\n') && (result < 82 ))
		{
		number[i]=buffer[result];
		
		i++;
		result++;
		}
		
		ret=atof(number);
		
		}
		
		else
		{
		/*printf( "%s not found in line %d\n", string, linenr );*/
		ret=0.0;
		}
		
		}
		
		return(ret);
		
		}
	#tag EndNote


	#tag Property, Flags = &h0
		Beam As RTOG_Beam_Geometry
	#tag EndProperty

	#tag Property, Flags = &h0
		canvas_scale As double = 55
	#tag EndProperty

	#tag Property, Flags = &h0
		gTM(-1) As trimesh
	#tag EndProperty

	#tag Property, Flags = &h0
		JAW_Index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		mCamAltitude As double
	#tag EndProperty

	#tag Property, Flags = &h0
		mCamAngle As double
	#tag EndProperty

	#tag Property, Flags = &h0
		mLastX As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		mLastY As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		MLC_Index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Object_axisX As object3D
	#tag EndProperty

	#tag Property, Flags = &h0
		Object_axisY As object3D
	#tag EndProperty

	#tag Property, Flags = &h0
		Object_axisZ As object3D
	#tag EndProperty

	#tag Property, Flags = &h0
		Object_Body1 As object3D
	#tag EndProperty

	#tag Property, Flags = &h0
		Object_Body2 As object3D
	#tag EndProperty

	#tag Property, Flags = &h0
		Object_Body3 As object3D
	#tag EndProperty

	#tag Property, Flags = &h0
		Object_Body4 As object3D
	#tag EndProperty

	#tag Property, Flags = &h0
		Object_Body5 As object3D
	#tag EndProperty

	#tag Property, Flags = &h0
		Object_Body6 As object3D
	#tag EndProperty

	#tag Property, Flags = &h0
		Object_Body7 As object3D
	#tag EndProperty

	#tag Property, Flags = &h0
		Object_Body8 As object3D
	#tag EndProperty

	#tag Property, Flags = &h0
		Object_Cross As object3D
	#tag EndProperty

	#tag Property, Flags = &h0
		Object_FLEC As object3D
	#tag EndProperty

	#tag Property, Flags = &h0
		Object_Floorplane As object3d
	#tag EndProperty

	#tag Property, Flags = &h0
		Object_Images(0) As object3D
	#tag EndProperty

	#tag Property, Flags = &h0
		Object_Isodot As object3D
	#tag EndProperty

	#tag Property, Flags = &h0
		Object_Jaw As object3D
	#tag EndProperty

	#tag Property, Flags = &h0
		Object_MLC As object3D
	#tag EndProperty

	#tag Property, Flags = &h0
		Object_Structure(-1) As object3D
	#tag EndProperty

	#tag Property, Flags = &h0
		Untitled1 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Vector_POI As vector3D
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="canvas_scale"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="JAW_Index"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mCamAltitude"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mCamAngle"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mLastX"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mLastY"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MLC_Index"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
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
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Untitled1"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
