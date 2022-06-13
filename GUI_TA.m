function varargout = GUI_TA(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_TA_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_TA_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

function GUI_TA_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;


guidata(hObject, handles);

%buat axis
x = axes('unit', 'normalized', 'position', [0 0 1 1]);
uistack(x,'bottom');
colormap gray
%import background
im_x = imread('UMS.jpg'); imagesc(im_x);
%matikan axis dan tampilkan background
set(x,'handlevisibility','off','visible','off');

function varargout = GUI_TA_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;

function sliderT1_Callback(hObject, eventdata, handles)

ModelName = 'final4dof';
a1 = 50;
a2 = 90;
a3 = 108;
a4 = 65;

%get the angle
theta1=get(handles.sliderT1,'Value');
set(handles.T1,'string',num2str(theta1));
theta2=get(handles.sliderT2,'Value');
set(handles.T2,'string',num2str(theta2));
theta3=get(handles.sliderT3,'Value');
set(handles.T3,'string',num2str(theta3));
theta4=get(handles.sliderT4,'Value');
set(handles.T4,'string',num2str(theta4));


set_param([ModelName '/Slider Gain'],'Gain',num2str(theta1));
set_param([ModelName '/Slider Gain1'],'Gain',num2str(theta2));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(theta3));
set_param([ModelName '/Slider Gain3'],'Gain',num2str(theta4));

%DH Transformation Matrice
  H_1_0 = [cos(theta1) 0 -sin(theta1)  a1*cos(theta1)
         sin(theta1)  0 cos(theta1) a1*sin(theta1)
         0         -1              0               145
         0         0               0                1      ];
  
  H_2_1 = [cos(theta2) -1*sin(theta2) 0  a2*cos(theta2)
         sin(theta2)  cos(theta2)  0  a2*sin(theta2)
         0         0          1           0
         0         0           0                 1          ];

  H_3_2 = [cos(theta3) -1*sin(theta3) 0  a3*cos(theta3)
         sin(theta3)  cos(theta3) 0  a3*sin(theta3)
         0         0              1               0
         0         0              0               1          ];

  H_4_3 = [cos(theta4) -1*sin(theta4) 0  a4*cos(theta4)
         sin(theta4)  cos(theta4) 0 a4*sin(theta4)
         0         0             1               0
         0         0              0             1          ];
     
  H_5_0 = H_1_0 * H_2_1 * H_3_2 * H_4_3
  
  px=H_5_0(1,4)
  py=H_5_0(2,4)
  pz=H_5_0(3,4)
  
  set(handles.Px,'string',num2str(px));
  set(handles.Py,'string',num2str(py));
  set(handles.Pz,'string',num2str(pz));
  
function sliderT1_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderT2_Callback(hObject, eventdata, handles)
ModelName = 'final4dof';
a1 = 50;
a2 = 90;
a3 = 108;
a4 = 65;


%get the angle
theta1=get(handles.sliderT1,'Value');
set(handles.T1,'string',num2str(theta1));
theta2=get(handles.sliderT2,'Value');
set(handles.T2,'string',num2str(theta2));
theta3=get(handles.sliderT3,'Value');
set(handles.T3,'string',num2str(theta3));
theta4=get(handles.sliderT4,'Value');
set(handles.T4,'string',num2str(theta4));


set_param([ModelName '/Slider Gain'],'Gain',num2str(theta1));
set_param([ModelName '/Slider Gain1'],'Gain',num2str(theta2));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(theta3));
set_param([ModelName '/Slider Gain3'],'Gain',num2str(theta4));

%DH Transformation Matrice
   H_1_0 = [cos(theta1) 0 -sin(theta1)  a1*cos(theta1)
         sin(theta1)  0 cos(theta1) a1*sin(theta1)
         0         -1              0               145
         0         0               0                1      ];
  
  H_2_1 = [cos(theta2) -1*sin(theta2) 0  a2*cos(theta2)
         sin(theta2)  cos(theta2)  0  a2*sin(theta2)
         0         0          1           0
         0         0           0                 1          ];

  H_3_2 = [cos(theta3) -1*sin(theta3) 0  a3*cos(theta3)
         sin(theta3)  cos(theta3) 0  a3*sin(theta3)
         0         0              1               0
         0         0              0               1          ];

  H_4_3 = [cos(theta4) -1*sin(theta4) 0  a4*cos(theta4)
         sin(theta4)  cos(theta4) 0 a4*sin(theta4)
         0         0             1               0
         0         0              0             1          ];
 
  H_5_0 = H_1_0 * H_2_1 * H_3_2 * H_4_3
  
  px=H_5_0(1,4)
  py=H_5_0(2,4)
  pz=H_5_0(3,4)
  
  set(handles.Px,'string',num2str(px));
  set(handles.Py,'string',num2str(py));
  set(handles.Pz,'string',num2str(pz));

function sliderT2_CreateFcn(hObject, eventdata, handles)
  
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderT3_Callback(hObject, eventdata, handles)
ModelName = 'final4dof';
a1 = 50;
a2 = 90;
a3 = 108;
a4 = 65;


%get the angle
theta1=get(handles.sliderT1,'Value');
set(handles.T1,'string',num2str(theta1));
theta2=get(handles.sliderT2,'Value');
set(handles.T2,'string',num2str(theta2));
theta3=get(handles.sliderT3,'Value');
set(handles.T3,'string',num2str(theta3));
theta4=get(handles.sliderT4,'Value');
set(handles.T4,'string',num2str(theta4));


set_param([ModelName '/Slider Gain'],'Gain',num2str(theta1));
set_param([ModelName '/Slider Gain1'],'Gain',num2str(theta2));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(theta3));
set_param([ModelName '/Slider Gain3'],'Gain',num2str(theta4));

%DH Transformation Matrice
  H_1_0 = [cos(theta1) 0 -sin(theta1)  a1*cos(theta1)
         sin(theta1)  0 cos(theta1) a1*sin(theta1)
         0         -1              0               145
         0         0               0                1      ];
  
  H_2_1 = [cos(theta2) -1*sin(theta2) 0  a2*cos(theta2)
         sin(theta2)  cos(theta2)  0  a2*sin(theta2)
         0         0          1           0
         0         0           0                 1          ];

  H_3_2 = [cos(theta3) -1*sin(theta3) 0  a3*cos(theta3)
         sin(theta3)  cos(theta3) 0  a3*sin(theta3)
         0         0              1               0
         0         0              0               1          ];

  H_4_3 = [cos(theta4) -1*sin(theta4) 0  a4*cos(theta4)
         sin(theta4)  cos(theta4) 0 a4*sin(theta4)
         0         0             1               0
         0         0              0             1          ];
     
  H_5_0 = H_1_0 * H_2_1 * H_3_2 * H_4_3
  
  px=H_5_0(1,4)
  py=H_5_0(2,4)
  pz=H_5_0(3,4)
  
  set(handles.Px,'string',num2str(px));
  set(handles.Py,'string',num2str(py));
  set(handles.Pz,'string',num2str(pz));
function sliderT3_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderT4_Callback(hObject, eventdata, handles)
ModelName = 'final4dof';
a1 = 50;
a2 = 90;
a3 = 108;
a4 = 65;

%get the angle
theta1=get(handles.sliderT1,'Value');
set(handles.T1,'string',num2str(theta1));
theta2=get(handles.sliderT2,'Value');
set(handles.T2,'string',num2str(theta2));
theta3=get(handles.sliderT3,'Value');
set(handles.T3,'string',num2str(theta3));
theta4=get(handles.sliderT4,'Value');
set(handles.T4,'string',num2str(theta4));


set_param([ModelName '/Slider Gain'],'Gain',num2str(theta1));
set_param([ModelName '/Slider Gain1'],'Gain',num2str(theta2));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(theta3));
set_param([ModelName '/Slider Gain3'],'Gain',num2str(theta4));

%DH Transformation Matrice
  H_1_0 = [cos(theta1) 0 -sin(theta1)  a1*cos(theta1)
         sin(theta1)  0 cos(theta1) a1*sin(theta1)
         0         -1              0               145
         0         0               0                1      ];
  
  H_2_1 = [cos(theta2) -1*sin(theta2) 0  a2*cos(theta2)
         sin(theta2)  cos(theta2)  0  a2*sin(theta2)
         0         0          1           0
         0         0           0                 1          ];

  H_3_2 = [cos(theta3) -1*sin(theta3) 0  a3*cos(theta3)
         sin(theta3)  cos(theta3) 0  a3*sin(theta3)
         0         0              1               0
         0         0              0               1          ];

  H_4_3 = [cos(theta4) -1*sin(theta4) 0  a4*cos(theta4)
         sin(theta4)  cos(theta4) 0 a4*sin(theta4)
         0         0             1               0
         0         0              0             1          ];
 
  H_5_0 = H_1_0 * H_2_1 * H_3_2 * H_4_3
  
  px=H_5_0(1,4)
  py=H_5_0(2,4)
  pz=H_5_0(3,4)
  
  set(handles.Px,'string',num2str(px));
  set(handles.Py,'string',num2str(py));
  set(handles.Pz,'string',num2str(pz));
function sliderT4_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function T1_Callback(hObject, eventdata, handles)

function T1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T2_Callback(hObject, eventdata, handles)

function T2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T3_Callback(hObject, eventdata, handles)

function T3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T4_Callback(hObject, eventdata, handles)

function T4_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function X_Callback(hObject, eventdata, handles)
% hObject    handle to X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of X as text
%        str2double(get(hObject,'String')) returns contents of X as a double


% --- Executes during object creation, after setting all properties.
function X_CreateFcn(hObject, eventdata, handles)
% hObject    handle to X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Y_Callback(hObject, eventdata, handles)
% hObject    handle to Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Y as text
%        str2double(get(hObject,'String')) returns contents of Y as a double


% --- Executes during object creation, after setting all properties.
function Y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Z_Callback(hObject, eventdata, handles)
% hObject    handle to Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Z as text
%        str2double(get(hObject,'String')) returns contents of Z as a double


% --- Executes during object creation, after setting all properties.
function Z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in RUN.
function RUN_Callback(hObject, eventdata, handles)
ModelName = ('final4dof');

%open simulink models
open_system(ModelName);

set_param(ModelName,'BlockReduction','off');
set_param(ModelName,'StopTime','inf');
set_param(ModelName,'SimulationMode','normal');
set_param(ModelName,'StartFcn','1');
set_param(ModelName,'SimulationCommand','start');

% --- Executes on button press in DEFAULT.
function DEFAULT_Callback(hObject, eventdata, handles)
ModelName = 'final4dof';
a1=50;
a2=90;
a3=108;
a4=65;


theta1 = 0;
theta2 = 0;
theta3 = 0;
theta4 = 0;


set_param([ModelName '/Slider Gain'],'Gain',num2str(theta1));
set_param([ModelName '/Slider Gain1'],'Gain',num2str(theta2));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(theta3));
set_param([ModelName '/Slider Gain3'],'Gain',num2str(theta4));

%DH Transformation Matrice
    H_1_0 = [cos(theta1) 0 -sin(theta1)  a1*cos(theta1)
         sin(theta1)  0 cos(theta1) a1*sin(theta1)
         0         -1              0               145
         0         0               0                1      ];
  
  H_2_1 = [cos(theta2) -1*sin(theta2) 0  a2*cos(theta2)
         sin(theta2)  cos(theta2)  0  a2*sin(theta2)
         0         0          1           0
         0         0           0                 1          ];

  H_3_2 = [cos(theta3) -1*sin(theta3) 0  a3*cos(theta3)
         sin(theta3)  cos(theta3) 0  a3*sin(theta3)
         0         0              1               0
         0         0              0               1          ];

  H_4_3 = [cos(theta4) -1*sin(theta4) 0  a4*cos(theta4)
         sin(theta4)  cos(theta4) 0 a4*sin(theta4)
         0         0             1               0
         0         0              0             1          ];
 
  H_5_0 = H_1_0 * H_2_1 * H_3_2 * H_4_3
  
  px=H_5_0(1,4)
  py=H_5_0(2,4)
  pz=H_5_0(3,4)
  set(handles.sliderT1,'value',theta1);
  set(handles.sliderT2,'value',theta2);
  set(handles.sliderT3,'value',theta3);
  set(handles.sliderT4,'value',theta4);
  set(handles.T1,'string',num2str(theta1));
  set(handles.T2,'string',num2str(theta2));
  set(handles.T3,'string',num2str(theta3));
  set(handles.T4,'string',num2str(theta4));
  set(handles.Px,'string',num2str(px));
  set(handles.Py,'string',num2str(py));
  set(handles.Pz,'string',num2str(pz));
%Executes on button press in INVERSE.
function INVERSE_Callback(hObject, eventdata, handles)
ModelName = 'final4dof';
global var;
posx= str2double(get(handles.Px,'string'));
set(handles.sliderPx,'value',posx);

posy= str2double(get(handles.Py,'string'));
set(handles.sliderPy,'value',posy);

posz= str2double(get(handles.Pz,'string'));
set(handles.sliderPz,'value',posz);


set(handles.Px,'string',num2str(posx));
set(handles.Py,'string',num2str(posy));
set(handles.Pz,'string',num2str(posz));

a1=50;
a2=90;
a3=108;
a4=65;
d3=0;
d1=145;

t1_inv= atan2d(posy,posx); %theta1
nx=posx*cosd(t1_inv)+posy*sind(t1_inv)-a1-a4;
ny=posz-145; %d1=145
M=(nx*nx+ny*ny-a2*a2-a3*a3)/(2*a2*a3);%cos(theta3_inv)
N=sqrt(1-M*M);%sin(theta3_inv)
t3_inv= atan2d(N,M);%theta3

A=ny*(a3*cosd(t3_inv)+a2)-a3*sind(t3_inv)*nx;
B=nx*(a3*cosd(t3_inv)+a2)+a3*sind(t3_inv)*nx;
t2_inv= atan2d(A,B);%theta2
t4_inv= -t2_inv-t3_inv;%theta4


guidata(hObject,handles);
set_param([ModelName '/Slider Gain'],'Gain',num2str(t1_inv));
set_param([ModelName '/Slider Gain1'],'Gain',num2str(t2_inv));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(t3_inv));
set_param([ModelName '/Slider Gain3'],'Gain',num2str(t4_inv));

set(handles.T1,'string',num2str(t1_inv));
set(handles.T2,'string',num2str(t2_inv));
set(handles.T3,'string',num2str(t3_inv));
set(handles.T4,'string',num2str(t4_inv));

% --- Executes on slider movement.
function sliderPx_Callback(hObject, eventdata, handles)
posx=get (handles.sliderPx,'value');
set(handles.Px,'string',num2str(posx));
function sliderPx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderPx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderPy_Callback(hObject, eventdata, handles)
posy=get (handles.sliderPy,'value');
set(handles.Py,'string',num2str(posy));
function sliderPy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderPy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderPz_Callback(hObject, eventdata, handles)
posz=get (handles.sliderPz,'value');
set(handles.Pz,'string',num2str(posz));
function sliderPz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderPz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function Px_Callback(hObject, eventdata, handles)
% hObject    handle to Px (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Px as text
%        str2double(get(hObject,'String')) returns contents of Px as a double


% --- Executes during object creation, after setting all properties.
function Px_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Px (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Py_Callback(hObject, eventdata, handles)
% hObject    handle to Py (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Py as text
%        str2double(get(hObject,'String')) returns contents of Py as a double


% --- Executes during object creation, after setting all properties.
function Py_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Py (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pz_Callback(hObject, eventdata, handles)
% hObject    handle to Pz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pz as text
%        str2double(get(hObject,'String')) returns contents of Pz as a double


% --- Executes during object creation, after setting all properties.
function Pz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in STOP.
function STOP_Callback(hObject, eventdata, handles)
close;


% --- Executes during object creation, after setting all properties.
function axes3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
imshow('UMS-Logo Text Emas.png');

% Hint: place code in OpeningFcn to populate axes4


% --- Executes during object creation, after setting all properties.
function axes4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
imshow('UMSlogo.png');
% Hint: place code in OpeningFcn to populate axes4


% --- Executes during object creation, after setting all properties.
function axes5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
imshow('FOTO PUTIH.jpg');
% Hint: place code in OpeningFcn to populate axes5
