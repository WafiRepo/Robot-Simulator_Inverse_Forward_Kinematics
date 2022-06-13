% Simscape(TM) Multibody(TM) version: 5.1

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(9).translation = [0.0 0.0 0.0];
smiData.RigidTransform(9).angle = 0.0;
smiData.RigidTransform(9).axis = [0.0 0.0 0.0];
smiData.RigidTransform(9).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [0 -1.9428902930940239e-13 55.000000000000007];  % mm
smiData.RigidTransform(1).angle = 3.1415926535897896;  % rad
smiData.RigidTransform(1).axis = [-1 -0 -0];
smiData.RigidTransform(1).ID = 'B[de robot_1-1:-:link 1_1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [50.000000000001265 89.999999999999829 5.6843418860808015e-14];  % mm
smiData.RigidTransform(2).angle = 2.0943951023931913;  % rad
smiData.RigidTransform(2).axis = [-0.57735026918962451 -0.57735026918962451 -0.57735026918962828];
smiData.RigidTransform(2).ID = 'F[de robot_1-1:-:link 1_1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [0 0 -2.500000000000016];  % mm
smiData.RigidTransform(3).angle = 3.1415926535897865;  % rad
smiData.RigidTransform(3).axis = [-1 -0 -0];
smiData.RigidTransform(3).ID = 'B[link 1_1-1:-:link 2_1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [-89.978102007881631 -1.9852352640387139 -2.4999999999335074];  % mm
smiData.RigidTransform(4).angle = 3.1415926535897465;  % rad
smiData.RigidTransform(4).axis = [1 -8.1407182462678138e-27 -3.4799709019142869e-13];
smiData.RigidTransform(4).ID = 'F[link 1_1-1:-:link 2_1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [1.9845236565174673e-11 1.3600232051658168e-12 28.500000000000011];  % mm
smiData.RigidTransform(5).angle = 3.1415926535897452;  % rad
smiData.RigidTransform(5).axis = [1 -8.3390977241971497e-27 -3.4814975294805302e-13];
smiData.RigidTransform(5).ID = 'B[link 2_1-1:-:link 3_1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-108.00000000005657 1.6353141063518706e-11 28.499999999999005];  % mm
smiData.RigidTransform(6).angle = 3.1415926535897856;  % rad
smiData.RigidTransform(6).axis = [1 -7.4723965966468605e-31 -1.95116333159388e-16];
smiData.RigidTransform(6).ID = 'F[link 2_1-1:-:link 3_1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [0 1.1102230246251565e-13 18.000000000000014];  % mm
smiData.RigidTransform(7).angle = 3.1415926535897865;  % rad
smiData.RigidTransform(7).axis = [1 0 0];
smiData.RigidTransform(7).ID = 'B[link 3_1-1:-:link 4_1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [-62.499999999990038 -3.5953462429461069e-11 18.031289395134507];  % mm
smiData.RigidTransform(8).angle = 3.1415926535897905;  % rad
smiData.RigidTransform(8).axis = [-1 -2.0960131481292984e-30 1.4174164317706698e-15];
smiData.RigidTransform(8).ID = 'F[link 3_1-1:-:link 4_1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [113.40399944520667 -76.521079066732526 60.476330108996123];  % mm
smiData.RigidTransform(9).angle = 0;  % rad
smiData.RigidTransform(9).axis = [0 0 0];
smiData.RigidTransform(9).ID = 'RootGround[de robot_1-1]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(5).mass = 0.0;
smiData.Solid(5).CoM = [0.0 0.0 0.0];
smiData.Solid(5).MoI = [0.0 0.0 0.0];
smiData.Solid(5).PoI = [0.0 0.0 0.0];
smiData.Solid(5).color = [0.0 0.0 0.0];
smiData.Solid(5).opacity = 0.0;
smiData.Solid(5).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.29989408976655146;  % kg
smiData.Solid(1).CoM = [30.181012619609866 49.418543724424921 0.00056754129161125616];  % mm
smiData.Solid(1).MoI = [464.89612369417335 282.38634365332928 584.37719574261246];  % kg*mm^2
smiData.Solid(1).PoI = [-0.00205321122083897 -0.00062290541140033848 -192.93542560101005];  % kg*mm^2
smiData.Solid(1).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'link 1_1*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.055234559568609537;  % kg
smiData.Solid(2).CoM = [-58.396541081031785 -1.7033470737360516e-06 1.2707843311854288e-06];  % mm
smiData.Solid(2).MoI = [7.241258980833619 67.371239439960078 63.741807218528471];  % kg*mm^2
smiData.Solid(2).PoI = [7.8779778695886793e-06 -8.0453117721325992e-07 6.6801760074304832e-07];  % kg*mm^2
smiData.Solid(2).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'link 3_1*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.012615479145769718;  % kg
smiData.Solid(3).CoM = [-40.539333125992798 -9.4307898556813612e-08 0];  % mm
smiData.Solid(3).MoI = [0.65518228786957178 2.2097009396347955 2.2119160376200573];  % kg*mm^2
smiData.Solid(3).PoI = [1.508496521869301e-06 0 1.9457935973103326e-08];  % kg*mm^2
smiData.Solid(3).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = 'link 4_1*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.11006364738692659;  % kg
smiData.Solid(4).CoM = [-49.344637725843604 -1.0889038669148532 2.9988549660778983e-06];  % mm
smiData.Solid(4).MoI = [21.883105560623154 106.74899236929133 107.6665657127744];  % kg*mm^2
smiData.Solid(4).PoI = [-0.00013250949269051623 -9.9890965181825399e-07 -1.8735058003888423];  % kg*mm^2
smiData.Solid(4).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = 'link 2_1*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.45127901948027788;  % kg
smiData.Solid(5).CoM = [22.652323212326049 -0.30570206651363152 19.8924569851916];  % mm
smiData.Solid(5).MoI = [359.03382078391405 788.17294501043943 996.35646926244954];  % kg*mm^2
smiData.Solid(5).PoI = [0.67358747784188944 42.918784655026229 10.087777125107559];  % kg*mm^2
smiData.Solid(5).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = 'de robot_1*:*Default';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(4).Rz.Pos = 0.0;
smiData.RevoluteJoint(4).ID = '';

smiData.RevoluteJoint(1).Rz.Pos = 82.319118187839564;  % deg
smiData.RevoluteJoint(1).ID = '[de robot_1-1:-:link 1_1-1]';

smiData.RevoluteJoint(2).Rz.Pos = 73.057373907411744;  % deg
smiData.RevoluteJoint(2).ID = '[link 1_1-1:-:link 2_1-1]';

smiData.RevoluteJoint(3).Rz.Pos = -62.905150837872796;  % deg
smiData.RevoluteJoint(3).ID = '[link 2_1-1:-:link 3_1-1]';

smiData.RevoluteJoint(4).Rz.Pos = -23.404590977618177;  % deg
smiData.RevoluteJoint(4).ID = '[link 3_1-1:-:link 4_1-1]';

