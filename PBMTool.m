function varargout = PBMTool(varargin)
% PBMTOOL MATLAB code for PBMTool.fig
%      PBMTOOL, by itself, creates a new PBMTOOL or raises the existing
%      singleton*.
%
%      H = PBMTOOL returns the handle to a new PBMTOOL or the handle to
%      the existing singleton*.
%
%      PBMTOOL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PBMTOOL.M with the given input arguments.
%
%      PBMTOOL('Property','Value',...) creates a new PBMTOOL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PBMTool_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PBMTool_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PBMTool

% Last Modified by GUIDE v2.5 12-May-2017 14:41:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PBMTool_OpeningFcn, ...
                   'gui_OutputFcn',  @PBMTool_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before PBMTool is made visible.
function PBMTool_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PBMTool (see VARARGIN)

% Choose default command line output for PBMTool
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PBMTool wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PBMTool_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in processes_listbox.
function processes_listbox_Callback(hObject, eventdata, handles)
% hObject    handle to processes_listbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns processes_listbox contents as cell array
%        contents{get(hObject,'Value')} returns selected item from processes_listbox


% --- Executes during object creation, after setting all properties.
function processes_listbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to processes_listbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function file_button_Callback(hObject, eventdata, handles)
% hObject    handle to file_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function new_participant_button_Callback(hObject, eventdata, handles)
% hObject    handle to new_participant_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function load_participant_button_Callback(hObject, eventdata, handles)
% hObject    handle to load_participant_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function batch_process_button_Callback(hObject, eventdata, handles)
% hObject    handle to batch_process_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function save_participant_button_Callback(hObject, eventdata, handles)
% hObject    handle to save_participant_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
