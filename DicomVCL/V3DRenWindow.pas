{*******************************************************}
{							                                          }
{       Delphi DicomVCL Component Library	            	}
{       DicomVCL include file				                    }
{                                                       }
{       Copyright (c) 1999,2008 by Jiawen Feng	      	}
{                                                       }
{*******************************************************}
unit V3DRenWindow;
{$I DicomPack.inc}

{$DEFINE UseGlobalAlloc}

interface
{$IFDEF UseResV3MemoryDll}
{$R v3d.res}
{$ELSE}
{$IFDEF UseResV3DdllSaveToFile}

{$IFDEF FORDICOMVCLENT}
{$R v3dent.res}
{$ELSE}
{$R v3d.res}
{$ENDIF}

{$ENDIF}
{$ENDIF}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DCM_Attributes, DCM_MPR, DCM_View,
  gl, dcm_uid, db,DCM_Bitmap16 ,DCM_Dict
  {$IFDEF UseResV3MemoryDll}
  , V3DMemoryModule
  {$ENDIF}
  ;

const
  V3DDLLVersion = 1;

  IM_JoystickCamera = 0;
  IM_JoystickActor = 1;
  IM_TrackballCamera = 2;
  IM_TrackballActor = 3;
  IM_Flight = 4;
  IM_Image = 5;
  IM_User = 6;

type
  //for 3d view
  TV3DinitRendering = function(parentHandle: HWND; ControlHandle: HWND;
    Width, Height: Integer; Color: DWORD): integer; stdcall;

  TV3DuninitRendering = procedure(ARenderHandle: Integer); stdcall;

  TV3DSetInteractorMode = procedure(ARenderHandle: Integer; im: integer); stdcall;
  TV3DGetInteractorMode = function(ARenderHandle: Integer): Integer; stdcall;

  TV3DSetUsevtkInteractor = procedure(ARenderHandle: Integer; im: Boolean); stdcall;
  TV3DGetUsevtkInteractor = function(ARenderHandle: Integer): Boolean; stdcall;

  TV3DDoMouseWheelUp = function(ARenderHandle: Integer; shiftFlags, MousePosX, MousePosY: Integer): integer; stdcall;
  TV3DDoMouseWheelDown = function(ARenderHandle: Integer; shiftFlags, MousePosX, MousePosY: Integer): Integer; stdcall;

  TV3DDoTimer = procedure(ARenderHandle: Integer; MessageTimerID: Integer); stdcall;
  TV3DDoRender = procedure(ARenderHandle: Integer); stdcall;
  TV3DDoResize = procedure(ARenderHandle: Integer; Width, Height: Integer); stdcall;

  TV3DDoMouseUp = procedure(ARenderHandle: Integer; button, shiftFlags, x, y: Integer); stdcall;
  TV3DDoMouseDown = procedure(ARenderHandle: Integer; button, shiftFlags, x, y: Integer); stdcall;
  TV3DDoMouseMove = procedure(ARenderHandle: Integer; shiftFlags, x, y: Integer); stdcall;

  TV3DDoKeyUp = procedure(ARenderHandle: Integer; MessageCharCode: Integer); stdcall;
  TV3DDoKeyDown = procedure(ARenderHandle: Integer; MessageCharCode: Integer); stdcall;
  TV3DDoChar = procedure(ARenderHandle: Integer; MessageCharCode: Integer); stdcall;

  // for 3d rendering
  TV3DsetPixSource = procedure(ARenderHandle: Integer; pwidth, pheight, pixList, isRGB,
    PixelPerSample: integer;
    pixelSpacingX, pixelSpacingY, pixelSpacingZ: Double;
    data: Pointer; DataType: Integer); stdcall;

  TV3DsetPixOrigin = procedure(aHandle: integer; OriginX, OriginY, OriginZ, Vector1X, Vector1Y,
    Vector1Z, Vector2X, Vector2Y, Vector2Z, sliceThickness: Double; wl, ww: Integer); stdcall;

  TV3DdeleteSurfaceActor = procedure(aHandle: Integer; actor: Integer); stdcall;

  TV3DchangeSurfaceActor = procedure(aHandle: Integer; actor: Integer; resolution, transparency,
    r, g, b, isocontour: Double; useDecimate: Boolean; decimateVal: double;
    useSmooth: Boolean; smoothVal: Integer); stdcall;

  TV3DSwitchStereoMode = procedure(aHandle: Integer); stdcall;

  TV3Dexport3DFileFormat = procedure(aHandle: Integer; tag: Integer; filename: PChar); stdcall;

  TV3DClearSurface = procedure(ARenderHandle: Integer); stdcall;

  TV3DBuildSurface = procedure(ARenderHandle: Integer); stdcall;

  TV3DClearVolume = procedure(ARenderHandle: Integer); stdcall;

  TV3DBuildVolume = procedure(ARenderHandle: Integer; aValueFactor, aOffset: Single); stdcall;

  TV3DTestDraw = procedure(ARenderHandle: Integer); stdcall;

  TV3DSetVolumeRenderMode = procedure(ARenderHandle, aRenderMode: Integer); stdcall;

  TV3DSetVolumeEngine = procedure(ARenderHandle, aEngineID, aRenderMode, aProjectionMode: Integer); stdcall;

  TV3DSetVolumeProjectionMode = procedure(ARenderHandle, aProjectionMode: Integer); stdcall;

  TV3DGetVolumeProjectionMode = function(ARenderHandle: Integer): Integer; stdcall;

  TV3DGetVolumeRenderMode = function(ARenderHandle: Integer): Integer; stdcall;

  //  TV3DSetVolumeLUT = procedure(ARenderHandle: Integer; r, g, b: Pointer); stdcall;

  TV3DactivateShading = procedure(ARenderHandle: Integer; on1: Boolean); stdcall;

  TV3Dshading = function(ARenderHandle: Integer): Integer; stdcall;

  TV3DgetShadingValues = procedure(ARenderHandle: Integer; var ambient, diffuse, specular, specularpower: Double); stdcall;

  TV3DsetShadingValues = procedure(ARenderHandle: Integer; const ambient, diffuse, specular, specularpower: Double); stdcall;

  TV3DsetViewOrientation = procedure(ARenderHandle: Integer; tag: Integer); stdcall;

  TV3DactivateGradientOpacity = procedure(ARenderHandle: Integer; on1: Boolean); stdcall;

  TV3DClearColorTransferFunction = procedure(ARenderHandle: Integer); stdcall;
  TV3DClearScalarOpacityPoints = procedure(ARenderHandle: Integer); stdcall;
  TV3DClearGradientOpacityPoints = procedure(ARenderHandle: Integer); stdcall;

  TV3DMakeCurrent = procedure(ARenderHandle: Integer); stdcall;
  TV3DSwitchOrientationWidget = procedure(ARenderHandle: Integer); stdcall;
  TV3DshowCropCube = procedure(ARenderHandle: Integer); stdcall;

  TV3DAddColorTransferFunctionPoint = procedure(ARenderHandle: Integer; x, r, g, b, MidPoint, Sharpness: Double); stdcall;
  TV3DAddScalarOpacityTransferFunctionPoint = procedure(ARenderHandle: Integer; x, y, MidPoint, Sharpness: Double); stdcall;
  TV3DAddGradientOpacityTransferFunctionPoint = procedure(ARenderHandle: Integer; x, y, MidPoint, Sharpness: Double); stdcall;

  TV3DSetCroppingBox = procedure(aHandle: Integer; x1, x2, y1, y2, z1, z2: double); stdcall;
  TV3DGetCroppingBox = procedure(aHandle: Integer; var x1, x2, y1, y2, z1, z2: double); stdcall;

  TV3DSetVolumeLUT = procedure(aHandle: Integer; r, g, b: Pointer); stdcall;
  TV3DSetWLWW = procedure(aHandle: Integer; iwl, iww: Single); stdcall;

  TV3DClearOpacityArray = procedure(aHandle: Integer); stdcall;
  TV3DAddOpacityPoint = procedure(aHandle: Integer; x, y: Single); stdcall;

  TV3DBestRendering = procedure(aHandle: Integer); stdcall;
  TV3DRemovalBones = procedure(aHandle: Integer; x, y: double); stdcall;

  TV3Dyaw = procedure(aHandle: Integer; degrees: Single); stdcall;
  TV3DpanX = procedure(aHandle: Integer; x, y: Single); stdcall;
  TV3DMeasure = procedure(aHandle: Integer; x, y: Single); stdcall;

  TV3DcomputeValueFactor = procedure(aHandle: Integer; aValueFactor, aOffset: Single); stdcall;

  TV3DV3DVersion = function: Integer; stdcall;
  //----------------------------------------------------------

  TDicom3DRenderFunction = (rf3DSurfaceRendering, rf3DVolumeRendering,
    rf3DMaximumIntensityProjection, rf3DEndoscopyView, rfMultiPlanarReconstruction);

  TCns3DRenderWindow = class(TCustomDicomImage) //TCustomControl)     //
  private
    { Private declarations }
    FUsevtkInteractor: boolean;
    FInteractorMode: integer;
    fRightMouseInteract: TMouseInteract;

    FActive: Boolean;
    //FDicomDatasets: TDicomDatasets;

    fRendererHandle: Integer;
    FRenderFunction: TDicom3DRenderFunction;
    FVolumeProjectionMode: Integer;
    FVolumeRenderMode: integer;
    FVolumeEngine: Integer;
    {$IFNDEF UseGlobalAlloc}
    fImageData: Pointer;
    {$ELSE}
    fImageData: HGLOBAL;
    {$ENDIF}

    fBufferDatatype: Integer;
    fBufferOffset: Single;
    fBufferFactor: Single;
    FSeriesUID: string;
    //FDatasetIndex: Integer;

  //  fROIRect: TRect;

    LastMousePos: TPoint;
    LastChangeMousePos: TPoint;
    DownMousePos: TPoint;
 //   MovingMousePos: TPoint;

    fMouseDragging: Boolean;
    fDraggingMouseButton: TMouseButton;

    fWindowLevel: Single;
    fWindowWidth: Single;
    FIgnoreSelectRange: Boolean;

    procedure SetInteractorMode(const Value: integer);
    procedure SetUsevtkInteractor(const Value: boolean);
    function GetInteractorMode: integer;
    function GetUsevtkInteractor: boolean;
    procedure SetActive(const Value: Boolean);
    function GetActive: Boolean;
    //procedure SetDicomDatasets(const Value: TDicomDatasets);overload;
    procedure SetRenderFunction(const Value: TDicom3DRenderFunction);
    procedure SetVolumeEngine(const Value: Integer);
    procedure SetVolumeProjectionMode(const Value: Integer);
    procedure SetVolumeRenderMode(const Value: integer);
    function GetVolumeEngine: Integer;
    function GetVolumeProjectionMode: Integer;
    function GetVolumeRenderMode: integer;
    procedure SetSeriesUID(const Value: string);
    //procedure SetDatasetIndex(const Value: Integer);
    procedure SetRightMouseInteract(const Value: TMouseInteract);
    procedure SetIgnoreSelectRange(const Value: Boolean);
  protected
    { Protected declarations }
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;

    //Eventos del teclado
    procedure WMKeyDown(var MyMessage: TWMKey); message WM_KEYDOWN;
    procedure WMKeyUp(var MyMessage: TWMKey); message WM_KEYUP;
    procedure WMChar(var MyMessage: TWMKey); message WM_CHAR;
    procedure WMTimer(var MyMessage: TWMTimer); message WM_TIMER;

    //Eventos del mouse
    procedure Paint; override;
    procedure Resize; override;
    procedure MouseMove(shift: TShiftState; x, y: integer); override;
    procedure MouseDown(button: TMouseButton; shift: TShiftState; x, y: integer); override;
    procedure MouseUp(button: TMouseButton; shift: TShiftState; x, y: integer); override;
    procedure WMEraseBkgnd(var Message: TWmEraseBkgnd); message WM_ERASEBKGND;
    function DoMouseWheelDown(Shift: TShiftState; MousePos: TPoint): Boolean; override;
    function DoMouseWheelUp(Shift: TShiftState; MousePos: TPoint): Boolean; override;

    procedure BuildSurface;
    procedure BuildVolume;
    procedure ClearSurface;
    procedure ClearVolume;
    function IsDllLoaded: Boolean;
    procedure SetSeries(ASeriesUID: string; AIndex: Integer);
    procedure DrawMyOpenGLObject; virtual;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    procedure DrawShifk;

    procedure DeleteSurfaceActor(actor: Integer);

    procedure ChangeSurfaceActor(actor: Integer; resolution, transparency,
      r, g, b, isocontour: Double; useDecimate: Boolean; decimateVal: double;
      useSmooth: Boolean; smoothVal: Integer);

    procedure SwitchStereoMode;
    procedure SwitchOrientationWidget;
    procedure ShowCropCube;

    function SaveAsDicom(AIsMONOCHROME: Boolean): TDicomAttributes;

    procedure Export3DFileFormat(tag: Integer; filename: string);

    //procedure SetVolumeLookupTable(r, g, b: Pointer);
    //procedure SetVolumeLookupTableStream(AStream: TStream);
    //procedure SetVolumeLookupTableFile(AFileName: string);

    procedure ActivateShading(on1: Boolean);
    function IsShading: Integer;
    procedure GetShadingValues(var ambient, diffuse, specular, specularpower: Double);
    procedure SetShadingValues(const ambient, diffuse, specular, specularpower: Double);

    procedure SetCroppingBox(x1, x2, y1, y2, z1, z2: double);
    procedure GetCroppingBox(var x1, x2, y1, y2, z1, z2: double);

    procedure SetViewOrientation(tag: Integer);

    procedure ActivateGradientOpacity(on1: Boolean);

    procedure ClearColorTransferFunction;
    procedure ClearScalarOpacityPoints;
    procedure ClearGradientOpacityPoints;

    procedure AddColorTransferFunctionPoint(x, r, g, b, MidPoint, Sharpness: Double);
    procedure AddScalarOpacityTransferFunctionPoint(x, y, MidPoint, Sharpness: Double);
    procedure AddGradientOpacityTransferFunctionPoint(x, y, MidPoint, Sharpness: Double);

    procedure StartRendering;
    procedure EndRendering;

    procedure SetVolumeLUT(r, g, b: Pointer);
    procedure LoadLutFromStream(AStream: TStream);
    procedure SetWLWW(iwl, iww: Single);
    procedure yaw(degrees: Single);
    procedure panX(x, y: Single);
    procedure Measure(x, y: Single);

    procedure ClearOpacityArray();
    procedure AddOpacityPoint(x, y: Single);

    procedure BestRendering();
    procedure RemovalBones(x, y: double);
    procedure SetROI(AROIRect: TRect);

    property ActiveRendering: Boolean read GetActive write SetActive;
    property Active: Boolean read GetActive write SetActive;

    property InteractorMode: integer read GetInteractorMode write SetInteractorMode;
    property UsevtkInteractor: boolean read GetUsevtkInteractor write SetUsevtkInteractor;

    property VolumeRenderMode: integer read GetVolumeRenderMode write SetVolumeRenderMode;
    property VolumeProjectionMode: Integer read GetVolumeProjectionMode write SetVolumeProjectionMode;
    property VolumeEngine: Integer read GetVolumeEngine write SetVolumeEngine;

    //    property BufferDatatype: Integer read fBufferDatatype write fBufferDatatype;
    property SeriesUID: string read FSeriesUID write SetSeriesUID;
    //property DatasetIndex: Integer read FDatasetIndex write SetDatasetIndex;
    property RightMouseInteract: TMouseInteract read FRightMouseInteract write SetRightMouseInteract;
  published
    { Published declarations }
    property RenderFunction: TDicom3DRenderFunction read FRenderFunction write SetRenderFunction;
    //property DicomDatasets: TDicomDatasets read FDicomDatasets write SetDicomDatasets;
    property IgnoreSelectRange: Boolean read FIgnoreSelectRange write SetIgnoreSelectRange;
    property Align;
    property Anchors;
    property Color;
    property Constraints;
    property Enabled;
    property ParentColor;
    property PopupMenu;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnKeyDown;

  end;

var
  // FOMIN 19.12.2012
  v_is_not_load_3d_dll : Boolean;
  {$IFDEF UseResV3MemoryDll}
  mp_MemoryModule: PBTMemoryModule;
  mp_DllData: Pointer;
  m_DllDataSize: Integer;
  {$ELSE}
  DllHandle: THandle;
  DllFileName: string;
  {$ENDIF}

  V3DVersion: Integer;

  _initRendering: TV3DinitRendering;
  _uninitRendering: TV3DuninitRendering;
  _SetInteractorMode: TV3DSetInteractorMode;
  _GetInteractorMode: TV3DGetInteractorMode;
  _SetUsevtkInteractor: TV3DSetUsevtkInteractor;
  _GetUsevtkInteractor: TV3DGetUsevtkInteractor;
  _DoMouseWheelUp: TV3DDoMouseWheelUp;
  _DoMouseWheelDown: TV3DDoMouseWheelDown;
  _DoTimer: TV3DDoTimer;
  _DoResize: TV3DDoResize;
  _DoMouseUp: TV3DDoMouseUp;
  _DoMouseDown: TV3DDoMouseDown;
  _DoMouseMove: TV3DDoMouseMove;
  _DoKeyUp: TV3DDoKeyUp;
  _DoKeyDown: TV3DDoKeyDown;
  _DoChar: TV3DDoChar;
  _DoRender: TV3DDoRender;
  _setPixSource: TV3DsetPixSource;

  _ClearSurface: TV3DClearSurface;
  _BuildSurface: TV3DBuildSurface;
  _ClearVolume: TV3DClearVolume;
  _BuildVolume: TV3DBuildVolume;

  _TestDraw: TV3DTestDraw;

  _setPixOrigin: TV3DsetPixOrigin;
  _deleteSurfaceActor: TV3DdeleteSurfaceActor;
  _changeSurfaceActor: TV3DchangeSurfaceActor;
  _SwitchStereoMode: TV3DSwitchStereoMode;
  _export3DFileFormat: TV3Dexport3DFileFormat;

  _SetVolumeRenderMode: TV3DSetVolumeRenderMode;
  _SetVolumeEngine: TV3DSetVolumeEngine;
  _SetVolumeProjectionMode: TV3DSetVolumeProjectionMode;
  _GetVolumeProjectionMode: TV3DGetVolumeProjectionMode;
  _GetVolumeRenderMode: TV3DGetVolumeRenderMode;
  //  _SetVolumeLUT: TV3DSetVolumeLUT;

  _activateShading: TV3DactivateShading;
  _shading: TV3Dshading;
  _getShadingValues: TV3DgetShadingValues;
  _setShadingValues: TV3DsetShadingValues;
  _setViewOrientation: TV3DsetViewOrientation;

  _activateGradientOpacity: TV3DactivateGradientOpacity;

  _ClearColorTransferFunction: TV3DClearColorTransferFunction;
  _ClearScalarOpacityPoints: TV3DClearScalarOpacityPoints;
  _ClearGradientOpacityPoints: TV3DClearGradientOpacityPoints;

  _AddColorTransferFunctionPoint: TV3DAddColorTransferFunctionPoint;
  _AddScalarOpacityTransferFunctionPoint: TV3DAddScalarOpacityTransferFunctionPoint;
  _AddGradientOpacityTransferFunctionPoint: TV3DAddGradientOpacityTransferFunctionPoint;

  _MakeCurrent: TV3DMakeCurrent;
  _SetCroppingBox: TV3DSetCroppingBox;
  _GetCroppingBox: TV3DGetCroppingBox;

  _switchOrientationWidget: TV3DSwitchOrientationWidget;
  _showCropCube: TV3DShowCropCube;

  _SetVolumeLUT: TV3DSetVolumeLUT;
  _SetWLWW: TV3DSetWLWW;

  _ClearOpacityArray: TV3DClearOpacityArray;
  _AddOpacityPoint: TV3DAddOpacityPoint;

  _BestRendering: TV3DBestRendering;
  _RemovalBones: TV3DRemovalBones;

  _yaw: TV3Dyaw;
  _panX: TV3DpanX;
  _Measure: TV3DMeasure;

  _computeValueFactor: TV3DcomputeValueFactor;

  _V3DVersion: TV3DV3DVersion;
procedure LoadAllFunction;

implementation

uses Math, ImportAVIProcessing, VolumeSelectRange;

procedure LoadAllFunction;

  function GetTempFolder: string;
  var
    Buffer: array[0..MAX_PATH] of char;
  begin
    GetTempPath(MAX_PATH, Buffer);
    Result := Buffer;
  end;

  procedure ResourceToFile(filename: string);
  var
    rs: TResourceStream;
    fs: TFileStream;
  begin
    rs := TResourceStream.Create(HInstance, 'V3D_library', RT_RCDATA);
    //rs := TResourceStream.Create(hInstance, resourcename, RT_RCDATA);
    fs := TFileStream.Create(filename, fmCreate or fmShareDenyWrite);
    try
      fs.CopyFrom(rs, soFromBeginning);
    finally
      fs.Free;
      rs.Free;
    end;
  end;
var
  str1: string;
  {$IFDEF UseResV3MemoryDll}
  MemoryStream: TResourceStream;
  {$ENDIF}
begin
  // FOMIN 19.12.2012
  if v_is_not_load_3d_dll then Exit;
  {$IFDEF UseResV3MemoryDll}
  if mp_MemoryModule = nil then
  begin
    MemoryStream := TResourceStream.Create(HInstance, 'V3D_library', RT_RCDATA);
    try
      m_DllDataSize := MemoryStream.Size;
      mp_DllData := GetMemory(m_DllDataSize);
      MemoryStream.Read(mp_DllData^, m_DllDataSize);
    finally
      MemoryStream.Free;
    end;

    mp_MemoryModule := BTMemoryLoadLibary(mp_DllData, m_DllDataSize);
    //@FCreateObject := BTMemoryGetProcAddress( mp_MemoryModule, 'CreateObject' );
    if mp_MemoryModule = nil then
      raise Exception.Create('Can Not Load  DLL!' + BTMemoryGetLastError);

    _V3DVersion := BTMemoryGetProcAddress(mp_MemoryModule, 'V3DVersion');
    if (@_V3DVersion = nil) then
      raise Exception.Create('Can Not load function: "V3DVersion" in DLL!');

    V3DVersion := _V3DVersion;

    @_initRendering := BTMemoryGetProcAddress(mp_MemoryModule, 'initRendering');
    if (@_initRendering = nil) then
      raise Exception.Create('Can Not load function: "initRendering" in DLL!');

    _uninitRendering := BTMemoryGetProcAddress(mp_MemoryModule, 'uninitRendering');
    if (@_uninitRendering = nil) then
      raise Exception.Create('Can Not load function: "uninitRendering" in DLL!');

    _SetInteractorMode := BTMemoryGetProcAddress(mp_MemoryModule, 'SetInteractorMode');
    if (@_SetInteractorMode = nil) then
      raise Exception.Create('Can Not load function: "SetInteractorMode" in DLL!');

    _GetInteractorMode := BTMemoryGetProcAddress(mp_MemoryModule, 'GetInteractorMode');
    if (@_GetInteractorMode = nil) then
      raise Exception.Create('Can Not load function: "GetInteractorMode" in DLL!');

    _SetUsevtkInteractor := BTMemoryGetProcAddress(mp_MemoryModule, 'SetUsevtkInteractor');
    if (@_SetUsevtkInteractor = nil) then
      raise Exception.Create('Can Not load function: "SetUsevtkInteractor" in DLL!');

    _GetUsevtkInteractor := BTMemoryGetProcAddress(mp_MemoryModule, 'GetUsevtkInteractor');
    if (@_GetUsevtkInteractor = nil) then
      raise Exception.Create('Can Not load function: "GetUsevtkInteractor" in DLL!');

    _DoMouseWheelUp := BTMemoryGetProcAddress(mp_MemoryModule, 'DoMouseWheelUp');
    if (@_DoMouseWheelUp = nil) then
      raise Exception.Create('Can Not load function: "DoMouseWheelUp" in DLL!');

    _DoMouseWheelDown := BTMemoryGetProcAddress(mp_MemoryModule, 'DoMouseWheelDown');
    if (@_DoMouseWheelDown = nil) then
      raise Exception.Create('Can Not load function: "DoMouseWheelDown" in DLL!');

    _DoTimer := BTMemoryGetProcAddress(mp_MemoryModule, 'DoTimer');
    if (@_DoTimer = nil) then
      raise Exception.Create('Can Not load function: "DoTimer" in DLL!');

    _DoResize := BTMemoryGetProcAddress(mp_MemoryModule, 'DoResize');
    if (@_DoResize = nil) then
      raise Exception.Create('Can Not load function: "DoResize" in DLL!');

    _DoMouseUp := BTMemoryGetProcAddress(mp_MemoryModule, 'DoMouseUp');
    if (@_DoMouseUp = nil) then
      raise Exception.Create('Can Not load function: "DoMouseUp" in DLL!');

    _DoMouseDown := BTMemoryGetProcAddress(mp_MemoryModule, 'DoMouseDown');
    if (@_DoMouseDown = nil) then
      raise Exception.Create('Can Not load function: "DoMouseDown" in DLL!');

    _DoMouseMove := BTMemoryGetProcAddress(mp_MemoryModule, 'DoMouseMove');
    if (@_DoMouseMove = nil) then
      raise Exception.Create('Can Not load function: "DoMouseMove" in DLL!');

    _DoKeyUp := BTMemoryGetProcAddress(mp_MemoryModule, 'DoKeyUp');
    if (@_DoKeyUp = nil) then
      raise Exception.Create('Can Not load function: "DoKeyUp" in DLL!');

    _DoKeyDown := BTMemoryGetProcAddress(mp_MemoryModule, 'DoKeyDown');
    if (@_DoKeyDown = nil) then
      raise Exception.Create('Can Not load function: "DoKeyDown" in DLL!');

    _DoChar := BTMemoryGetProcAddress(mp_MemoryModule, 'DoChar');
    if (@_DoChar = nil) then
      raise Exception.Create('Can Not load function: "DoChar" in DLL!');

    _DoRender := BTMemoryGetProcAddress(mp_MemoryModule, 'DoRender');
    if (@_DoRender = nil) then
      raise Exception.Create('Can Not load function: "DoRender" in DLL!');

    _TestDraw := BTMemoryGetProcAddress(mp_MemoryModule, 'TestDraw');
    if (@_TestDraw = nil) then
      raise Exception.Create('Can Not load function: "TestDraw" in DLL!');

    _setPixSource := BTMemoryGetProcAddress(mp_MemoryModule, 'setPixSource');
    if (@_setPixSource = nil) then
      raise Exception.Create('Can Not load function: "setPixSource" in DLL!');

    _ClearSurface := BTMemoryGetProcAddress(mp_MemoryModule, 'ClearSurface');
    if (@_ClearSurface = nil) then
      raise Exception.Create('Can Not load function: "ClearSurface" in DLL!');

    _BuildSurface := BTMemoryGetProcAddress(mp_MemoryModule, 'BuildSurface');
    if (@_TestDraw = nil) then
      raise Exception.Create('Can Not load function: "BuildSurface" in DLL!');

    _ClearVolume := BTMemoryGetProcAddress(mp_MemoryModule, 'ClearVolume');
    if (@_ClearVolume = nil) then
      raise Exception.Create('Can Not load function: "ClearVolume" in DLL!');

    _BuildVolume := BTMemoryGetProcAddress(mp_MemoryModule, 'BuildVolume');
    if (@_BuildVolume = nil) then
      raise Exception.Create('Can Not load function: "BuildVolume" in DLL!');

    _setPixOrigin := BTMemoryGetProcAddress(mp_MemoryModule, 'setPixOrigin');
    if (@_setPixOrigin = nil) then
      raise Exception.Create('Can Not load function: "setPixOrigin" in DLL!');

    _deleteSurfaceActor := BTMemoryGetProcAddress(mp_MemoryModule, 'deleteSurfaceActor');
    if (@_deleteSurfaceActor = nil) then
      raise Exception.Create('Can Not load function: "deleteSurfaceActor" in DLL!');

    _changeSurfaceActor := BTMemoryGetProcAddress(mp_MemoryModule, 'changeSurfaceActor');
    if (@_changeSurfaceActor = nil) then
      raise Exception.Create('Can Not load function: "changeSurfaceActor" in DLL!');

    _SwitchStereoMode := BTMemoryGetProcAddress(mp_MemoryModule, 'SwitchStereoMode');
    if (@_SwitchStereoMode = nil) then
      raise Exception.Create('Can Not load function: "SwitchStereoMode" in DLL!');

    _export3DFileFormat := BTMemoryGetProcAddress(mp_MemoryModule, 'export3DFileFormat');
    if (@_export3DFileFormat = nil) then
      raise Exception.Create('Can Not load function: "export3DFileFormat" in DLL!');

    _SetVolumeRenderMode := BTMemoryGetProcAddress(mp_MemoryModule, 'SetVolumeRenderMode');
    if (@_SetVolumeRenderMode = nil) then
      raise Exception.Create('Can Not load function: "SetVolumeRenderMode" in DLL!');

    _SetVolumeEngine := BTMemoryGetProcAddress(mp_MemoryModule, 'SetVolumeEngine');
    if (@_SetVolumeEngine = nil) then
      raise Exception.Create('Can Not load function: "SetVolumeEngine" in DLL!');

    _SetVolumeProjectionMode := BTMemoryGetProcAddress(mp_MemoryModule, 'SetVolumeProjectionMode');
    if (@_SetVolumeProjectionMode = nil) then
      raise Exception.Create('Can Not load function: "SetVolumeProjectionMode" in DLL!');

    _GetVolumeProjectionMode := BTMemoryGetProcAddress(mp_MemoryModule, 'GetVolumeProjectionMode');
    if (@_GetVolumeProjectionMode = nil) then
      raise Exception.Create('Can Not load function: "GetVolumeProjectionMode" in DLL!');

    _GetVolumeRenderMode := BTMemoryGetProcAddress(mp_MemoryModule, 'GetVolumeRenderMode');
    if (@_GetVolumeRenderMode = nil) then
      raise Exception.Create('Can Not load function: "GetVolumeRenderMode" in DLL!');

    //    _SetVolumeLUT := BTMemoryGetProcAddress(mp_MemoryModule, 'SetVolumeLUT');
    //    if (@_SetVolumeLUT = nil) then
    //      raise Exception.Create('Can Not load function: "SetVolumeLUT" in DLL!');

    _activateShading := BTMemoryGetProcAddress(mp_MemoryModule, 'activateShading');
    if (@_activateShading = nil) then
      raise Exception.Create('Can Not load function: "activateShading" in DLL!');

    _shading := BTMemoryGetProcAddress(mp_MemoryModule, 'shading');
    if (@_shading = nil) then
      raise Exception.Create('Can Not load function: "shading" in DLL!');

    _getShadingValues := BTMemoryGetProcAddress(mp_MemoryModule, 'getShadingValues');
    if (@_getShadingValues = nil) then
      raise Exception.Create('Can Not load function: "getShadingValues" in DLL!');

    _setShadingValues := BTMemoryGetProcAddress(mp_MemoryModule, 'setShadingValues');
    if (@_setShadingValues = nil) then
      raise Exception.Create('Can Not load function: "setShadingValues" in DLL!');

    _setViewOrientation := BTMemoryGetProcAddress(mp_MemoryModule, 'setViewOrientation');
    if (@_setViewOrientation = nil) then
      raise Exception.Create('Can Not load function: "setViewOrientation" in DLL!');

    _activateGradientOpacity := BTMemoryGetProcAddress(mp_MemoryModule, 'activateGradientOpacity');
    if (@_activateGradientOpacity = nil) then
      raise Exception.Create('Can Not load function: "activateGradientOpacity" in DLL!');

    _ClearColorTransferFunction := BTMemoryGetProcAddress(mp_MemoryModule, 'ClearColorTransferFunction');
    if (@_ClearColorTransferFunction = nil) then
      raise Exception.Create('Can Not load function: "ClearColorTransferFunction" in DLL!');

    _ClearScalarOpacityPoints := BTMemoryGetProcAddress(mp_MemoryModule, 'ClearScalarOpacityPoints');
    if (@_ClearScalarOpacityPoints = nil) then
      raise Exception.Create('Can Not load function: "ClearScalarOpacityPoints" in DLL!');

    _ClearGradientOpacityPoints := BTMemoryGetProcAddress(mp_MemoryModule, 'ClearGradientOpacityPoints');
    if (@_ClearGradientOpacityPoints = nil) then
      raise Exception.Create('Can Not load function: "ClearGradientOpacityPoints" in DLL!');

    _AddColorTransferFunctionPoint := BTMemoryGetProcAddress(mp_MemoryModule, 'AddColorTransferFunctionPoint');
    if (@_AddColorTransferFunctionPoint = nil) then
      raise Exception.Create('Can Not load function: "AddColorTransferFunctionPoint" in DLL!');

    _AddScalarOpacityTransferFunctionPoint := BTMemoryGetProcAddress(mp_MemoryModule, 'AddScalarOpacityTransferFunctionPoint');
    if (@_AddScalarOpacityTransferFunctionPoint = nil) then
      raise Exception.Create('Can Not load function: "AddScalarOpacityTransferFunctionPoint" in DLL!');

    _AddGradientOpacityTransferFunctionPoint := BTMemoryGetProcAddress(mp_MemoryModule, 'AddGradientOpacityTransferFunctionPoint');
    if (@_AddGradientOpacityTransferFunctionPoint = nil) then
      raise Exception.Create('Can Not load function: "AddGradientOpacityTransferFunctionPoint" in DLL!');

    _MakeCurrent := BTMemoryGetProcAddress(mp_MemoryModule, 'MakeCurrent');
    if (@_MakeCurrent = nil) then
      raise Exception.Create('Can Not load function: "MakeCurrent" in DLL!');

    _SetCroppingBox := BTMemoryGetProcAddress(mp_MemoryModule, 'SetCroppingBox');
    if (@_SetCroppingBox = nil) then
      raise Exception.Create('Can Not load function: "SetCroppingBox" in DLL!');

    _GetCroppingBox := BTMemoryGetProcAddress(mp_MemoryModule, 'GetCroppingBox');
    if (@_GetCroppingBox = nil) then
      raise Exception.Create('Can Not load function: "GetCroppingBox" in DLL!');

    _switchOrientationWidget := BTMemoryGetProcAddress(mp_MemoryModule, 'switchOrientationWidget');
    if (@_switchOrientationWidget = nil) then
      raise Exception.Create('Can Not load function: "switchOrientationWidget" in DLL!');

    _showCropCube := BTMemoryGetProcAddress(mp_MemoryModule, 'showCropCube');
    if (@_showCropCube = nil) then
      raise Exception.Create('Can Not load function: "showCropCube" in DLL!');

    _SetVolumeLUT := BTMemoryGetProcAddress(mp_MemoryModule, 'SetVolumeLUT');
    if (@_SetVolumeLUT = nil) then
      raise Exception.Create('Can Not load function: "SetVolumeLUT" in DLL!');

    _SetWLWW := BTMemoryGetProcAddress(mp_MemoryModule, 'SetWLWW');
    if (@_SetWLWW = nil) then
      raise Exception.Create('Can Not load function: "SetWLWW" in DLL!');

    _ClearOpacityArray := BTMemoryGetProcAddress(mp_MemoryModule, 'ClearOpacityArray');
    if (@_ClearOpacityArray = nil) then
      raise Exception.Create('Can Not load function: "ClearOpacityArray" in DLL!');

    _AddOpacityPoint := BTMemoryGetProcAddress(mp_MemoryModule, 'AddOpacityPoint');
    if (@_AddOpacityPoint = nil) then
      raise Exception.Create('Can Not load function: "AddOpacityPoint" in DLL!');

    _BestRendering := BTMemoryGetProcAddress(mp_MemoryModule, 'BestRendering');
    if (@_BestRendering = nil) then
      raise Exception.Create('Can Not load function: "BestRendering" in DLL!');

    _RemovalBones := BTMemoryGetProcAddress(mp_MemoryModule, 'RemovalBones');
    if (@_RemovalBones = nil) then
      raise Exception.Create('Can Not load function: "RemovalBones" in DLL!');

    _yaw := BTMemoryGetProcAddress(mp_MemoryModule, 'yaw');
    if (@_yaw = nil) then
      raise Exception.Create('Can Not load function: "yaw" in DLL!');

    _panX := BTMemoryGetProcAddress(mp_MemoryModule, 'panX');
    if (@_panX = nil) then
      raise Exception.Create('Can Not load function: "panX" in DLL!');

    _computeValueFactor := BTMemoryGetProcAddress(mp_MemoryModule, 'computeValueFactor');
    if (@_computeValueFactor = nil) then
      raise Exception.Create('Can Not load function: "computeValueFactor" in DLL!');

    _Measure := BTMemoryGetProcAddress(mp_MemoryModule, 'Measure');
    if (@_Measure = nil) then
      raise Exception.Create('Can Not load function: "Measure" in DLL!');

  end;
  {$ELSE}
  if DllHandle = 0 then
  begin
    {$IFDEF UseResV3DdllSaveToFile}
    str1 := GetTempFolder + FormatDatetime('mdhhnnsszzzz', now) + IntToStr(Random(10000)) + '.dll';
    //str1 := DicomTempPath + '$V3DProject.dll';
    DllFileName := str1;
    ResourceToFile(str1);
    {$ELSE}
    str1 := 'V3DProject.dll';
    DllFileName := str1;
    {$ENDIF}

    DllHandle := LoadLibrary(pchar(str1));
    if DllHandle <> 0 then
    begin
      _V3DVersion := GetProcAddress(DllHandle, 'V3DVersion');
      if (@_V3DVersion = nil) then
        raise Exception.Create('Can Not load function: "V3DVersion" in DLL!');

      V3DVersion := _V3DVersion;

      @_initRendering := GetProcAddress(DllHandle, 'initRendering');
      if (@_initRendering = nil) then
        raise Exception.Create('Can Not load function: "initRendering" in DLL!');

      _uninitRendering := GetProcAddress(DllHandle, 'uninitRendering');
      if (@_uninitRendering = nil) then
        raise Exception.Create('Can Not load function: "uninitRendering" in DLL!');

      _SetInteractorMode := GetProcAddress(DllHandle, 'SetInteractorMode');
      if (@_SetInteractorMode = nil) then
        raise Exception.Create('Can Not load function: "SetInteractorMode" in DLL!');

      _GetInteractorMode := GetProcAddress(DllHandle, 'GetInteractorMode');
      if (@_GetInteractorMode = nil) then
        raise Exception.Create('Can Not load function: "GetInteractorMode" in DLL!');

      _SetUsevtkInteractor := GetProcAddress(DllHandle, 'SetUsevtkInteractor');
      if (@_SetUsevtkInteractor = nil) then
        raise Exception.Create('Can Not load function: "SetUsevtkInteractor" in DLL!');

      _GetUsevtkInteractor := GetProcAddress(DllHandle, 'GetUsevtkInteractor');
      if (@_GetUsevtkInteractor = nil) then
        raise Exception.Create('Can Not load function: "GetUsevtkInteractor" in DLL!');

      _DoMouseWheelUp := GetProcAddress(DllHandle, 'DoMouseWheelUp');
      if (@_DoMouseWheelUp = nil) then
        raise Exception.Create('Can Not load function: "DoMouseWheelUp" in DLL!');

      _DoMouseWheelDown := GetProcAddress(DllHandle, 'DoMouseWheelDown');
      if (@_DoMouseWheelDown = nil) then
        raise Exception.Create('Can Not load function: "DoMouseWheelDown" in DLL!');

      _DoTimer := GetProcAddress(DllHandle, 'DoTimer');
      if (@_DoTimer = nil) then
        raise Exception.Create('Can Not load function: "DoTimer" in DLL!');

      _DoResize := GetProcAddress(DllHandle, 'DoResize');
      if (@_DoResize = nil) then
        raise Exception.Create('Can Not load function: "DoResize" in DLL!');

      _DoMouseUp := GetProcAddress(DllHandle, 'DoMouseUp');
      if (@_DoMouseUp = nil) then
        raise Exception.Create('Can Not load function: "DoMouseUp" in DLL!');

      _DoMouseDown := GetProcAddress(DllHandle, 'DoMouseDown');
      if (@_DoMouseDown = nil) then
        raise Exception.Create('Can Not load function: "DoMouseDown" in DLL!');

      _DoMouseMove := GetProcAddress(DllHandle, 'DoMouseMove');
      if (@_DoMouseMove = nil) then
        raise Exception.Create('Can Not load function: "DoMouseMove" in DLL!');

      _DoKeyUp := GetProcAddress(DllHandle, 'DoKeyUp');
      if (@_DoKeyUp = nil) then
        raise Exception.Create('Can Not load function: "DoKeyUp" in DLL!');

      _DoKeyDown := GetProcAddress(DllHandle, 'DoKeyDown');
      if (@_DoKeyDown = nil) then
        raise Exception.Create('Can Not load function: "DoKeyDown" in DLL!');

      _DoChar := GetProcAddress(DllHandle, 'DoChar');
      if (@_DoChar = nil) then
        raise Exception.Create('Can Not load function: "DoChar" in DLL!');

      _DoRender := GetProcAddress(DllHandle, 'DoRender');
      if (@_DoRender = nil) then
        raise Exception.Create('Can Not load function: "DoRender" in DLL!');

      _TestDraw := GetProcAddress(DllHandle, 'TestDraw');
      if (@_TestDraw = nil) then
        raise Exception.Create('Can Not load function: "TestDraw" in DLL!');

      _setPixSource := GetProcAddress(DllHandle, 'setPixSource');
      if (@_setPixSource = nil) then
        raise Exception.Create('Can Not load function: "setPixSource" in DLL!');

      _ClearSurface := GetProcAddress(DllHandle, 'ClearSurface');
      if (@_ClearSurface = nil) then
        raise Exception.Create('Can Not load function: "ClearSurface" in DLL!');

      _BuildSurface := GetProcAddress(DllHandle, 'BuildSurface');
      if (@_TestDraw = nil) then
        raise Exception.Create('Can Not load function: "BuildSurface" in DLL!');

      _ClearVolume := GetProcAddress(DllHandle, 'ClearVolume');
      if (@_ClearVolume = nil) then
        raise Exception.Create('Can Not load function: "ClearVolume" in DLL!');

      _BuildVolume := GetProcAddress(DllHandle, 'BuildVolume');
      if (@_BuildVolume = nil) then
        raise Exception.Create('Can Not load function: "BuildVolume" in DLL!');

      _setPixOrigin := GetProcAddress(DllHandle, 'setPixOrigin');
      if (@_setPixOrigin = nil) then
        raise Exception.Create('Can Not load function: "setPixOrigin" in DLL!');

      _deleteSurfaceActor := GetProcAddress(DllHandle, 'deleteSurfaceActor');
      if (@_deleteSurfaceActor = nil) then
        raise Exception.Create('Can Not load function: "deleteSurfaceActor" in DLL!');

      _changeSurfaceActor := GetProcAddress(DllHandle, 'changeSurfaceActor');
      if (@_changeSurfaceActor = nil) then
        raise Exception.Create('Can Not load function: "changeSurfaceActor" in DLL!');

      _SwitchStereoMode := GetProcAddress(DllHandle, 'SwitchStereoMode');
      if (@_SwitchStereoMode = nil) then
        raise Exception.Create('Can Not load function: "SwitchStereoMode" in DLL!');

      _export3DFileFormat := GetProcAddress(DllHandle, 'export3DFileFormat');
      if (@_export3DFileFormat = nil) then
        raise Exception.Create('Can Not load function: "export3DFileFormat" in DLL!');

      _SetVolumeRenderMode := GetProcAddress(DllHandle, 'SetVolumeRenderMode');
      if (@_SetVolumeRenderMode = nil) then
        raise Exception.Create('Can Not load function: "SetVolumeRenderMode" in DLL!');

      _SetVolumeEngine := GetProcAddress(DllHandle, 'SetVolumeEngine');
      if (@_SetVolumeEngine = nil) then
        raise Exception.Create('Can Not load function: "SetVolumeEngine" in DLL!');

      _SetVolumeProjectionMode := GetProcAddress(DllHandle, 'SetVolumeProjectionMode');
      if (@_SetVolumeProjectionMode = nil) then
        raise Exception.Create('Can Not load function: "SetVolumeProjectionMode" in DLL!');

      _GetVolumeProjectionMode := GetProcAddress(DllHandle, 'GetVolumeProjectionMode');
      if (@_GetVolumeProjectionMode = nil) then
        raise Exception.Create('Can Not load function: "GetVolumeProjectionMode" in DLL!');

      _GetVolumeRenderMode := GetProcAddress(DllHandle, 'GetVolumeRenderMode');
      if (@_GetVolumeRenderMode = nil) then
        raise Exception.Create('Can Not load function: "GetVolumeRenderMode" in DLL!');

      //      _SetVolumeLUT := GetProcAddress(DllHandle, 'SetVolumeLUT');
      //      if (@_SetVolumeLUT = nil) then
      //        raise Exception.Create('Can Not load function: "SetVolumeLUT" in DLL!');

      _activateShading := GetProcAddress(DllHandle, 'activateShading');
      if (@_activateShading = nil) then
        raise Exception.Create('Can Not load function: "activateShading" in DLL!');

      _shading := GetProcAddress(DllHandle, 'shading');
      if (@_shading = nil) then
        raise Exception.Create('Can Not load function: "shading" in DLL!');

      _getShadingValues := GetProcAddress(DllHandle, 'getShadingValues');
      if (@_getShadingValues = nil) then
        raise Exception.Create('Can Not load function: "getShadingValues" in DLL!');

      _setShadingValues := GetProcAddress(DllHandle, 'setShadingValues');
      if (@_setShadingValues = nil) then
        raise Exception.Create('Can Not load function: "setShadingValues" in DLL!');

      _setViewOrientation := GetProcAddress(DllHandle, 'setViewOrientation');
      if (@_setViewOrientation = nil) then
        raise Exception.Create('Can Not load function: "setViewOrientation" in DLL!');

      _activateGradientOpacity := GetProcAddress(DllHandle, 'activateGradientOpacity');
      if (@_activateGradientOpacity = nil) then
        raise Exception.Create('Can Not load function: "activateGradientOpacity" in DLL!');

      _ClearColorTransferFunction := GetProcAddress(DllHandle, 'ClearColorTransferFunction');
      if (@_ClearColorTransferFunction = nil) then
        raise Exception.Create('Can Not load function: "ClearColorTransferFunction" in DLL!');

      _ClearScalarOpacityPoints := GetProcAddress(DllHandle, 'ClearScalarOpacityPoints');
      if (@_ClearScalarOpacityPoints = nil) then
        raise Exception.Create('Can Not load function: "ClearScalarOpacityPoints" in DLL!');

      _ClearGradientOpacityPoints := GetProcAddress(DllHandle, 'ClearGradientOpacityPoints');
      if (@_ClearGradientOpacityPoints = nil) then
        raise Exception.Create('Can Not load function: "ClearGradientOpacityPoints" in DLL!');

      _AddColorTransferFunctionPoint := GetProcAddress(DllHandle, 'AddColorTransferFunctionPoint');
      if (@_AddColorTransferFunctionPoint = nil) then
        raise Exception.Create('Can Not load function: "AddColorTransferFunctionPoint" in DLL!');

      _AddScalarOpacityTransferFunctionPoint := GetProcAddress(DllHandle, 'AddScalarOpacityTransferFunctionPoint');
      if (@_AddScalarOpacityTransferFunctionPoint = nil) then
        raise Exception.Create('Can Not load function: "AddScalarOpacityTransferFunctionPoint" in DLL!');

      _AddGradientOpacityTransferFunctionPoint := GetProcAddress(DllHandle, 'AddGradientOpacityTransferFunctionPoint');
      if (@_AddGradientOpacityTransferFunctionPoint = nil) then
        raise Exception.Create('Can Not load function: "AddGradientOpacityTransferFunctionPoint" in DLL!');

      _MakeCurrent := GetProcAddress(DllHandle, 'MakeCurrent');
      if (@_MakeCurrent = nil) then
        raise Exception.Create('Can Not load function: "MakeCurrent" in DLL!');

      _SetCroppingBox := GetProcAddress(DllHandle, 'SetCroppingBox');
      if (@_SetCroppingBox = nil) then
        raise Exception.Create('Can Not load function: "SetCroppingBox" in DLL!');

      _GetCroppingBox := GetProcAddress(DllHandle, 'GetCroppingBox');
      if (@_GetCroppingBox = nil) then
        raise Exception.Create('Can Not load function: "GetCroppingBox" in DLL!');

      _switchOrientationWidget := GetProcAddress(DllHandle, 'switchOrientationWidget');
      if (@_switchOrientationWidget = nil) then
        raise Exception.Create('Can Not load function: "switchOrientationWidget" in DLL!');

      _showCropCube := GetProcAddress(DllHandle, 'showCropCube');
      if (@_showCropCube = nil) then
        raise Exception.Create('Can Not load function: "showCropCube" in DLL!');

      _SetVolumeLUT := GetProcAddress(DllHandle, 'SetVolumeLUT');
      if (@_SetVolumeLUT = nil) then
        raise Exception.Create('Can Not load function: "SetVolumeLUT" in DLL!');

      _SetWLWW := GetProcAddress(DllHandle, 'SetWLWW');
      if (@_SetWLWW = nil) then
        raise Exception.Create('Can Not load function: "SetWLWW" in DLL!');

      _ClearOpacityArray := GetProcAddress(DllHandle, 'ClearOpacityArray');
      if (@_ClearOpacityArray = nil) then
        raise Exception.Create('Can Not load function: "ClearOpacityArray" in DLL!');

      _AddOpacityPoint := GetProcAddress(DllHandle, 'AddOpacityPoint');
      if (@_AddOpacityPoint = nil) then
        raise Exception.Create('Can Not load function: "AddOpacityPoint" in DLL!');

      _BestRendering := GetProcAddress(DllHandle, 'BestRendering');
      if (@_BestRendering = nil) then
        raise Exception.Create('Can Not load function: "BestRendering" in DLL!');

      _RemovalBones := GetProcAddress(DllHandle, 'RemovalBones');
      if (@_RemovalBones = nil) then
        raise Exception.Create('Can Not load function: "RemovalBones" in DLL!');

      _yaw := GetProcAddress(DllHandle, 'yaw');
      if (@_yaw = nil) then
        raise Exception.Create('Can Not load function: "yaw" in DLL!');

      _panX := GetProcAddress(DllHandle, 'panX');
      if (@_panX = nil) then
        raise Exception.Create('Can Not load function: "panX" in DLL!');

      _computeValueFactor := GetProcAddress(DllHandle, 'computeValueFactor');
      if (@_computeValueFactor = nil) then
        raise Exception.Create('Can Not load function: "computeValueFactor" in DLL!');

      _Measure := GetProcAddress(DllHandle, 'Measure');
      if (@_Measure = nil) then
        raise Exception.Create('Can Not load function: "Measure" in DLL!');

    end
    else
    begin
      raise Exception.Create('Can Not Load ' + str1 + #13#10', Error:' + SysErrorMessage(GetLastError));
    end;
  end;
  {$ENDIF}
end;

constructor TCns3DRenderWindow.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  fMouseDragging := false;
  FIgnoreSelectRange := true;

  FSeriesUID := '';
  //FDatasetIndex := -1;
  fBufferDatatype := 2;
  fBufferOffset := 0;
  fBufferFactor := 1;

  {$IFNDEF UseGlobalAlloc}
  fImageData := nil;
  {$ELSE}
  fImageData := 0;
  {$ENDIF}

  ControlStyle := ControlStyle - [csAcceptsControls, csDoubleClicks] + [csOpaque];
  fRendererHandle := 0;
  FActive := false;
  FUsevtkInteractor := true;
  FInteractorMode := IM_TrackballCamera;

  fRightMouseInteract := miNone;

  FVolumeProjectionMode := 1;
  FVolumeRenderMode := 0; //0 is VR, 1 is MIP
  FVolumeEngine := 0;

  if not (csDesigning in ComponentState) then
    LoadAllFunction;
end;

destructor TCns3DRenderWindow.Destroy;
begin
  try
    if IsDllLoaded then
    begin
      if fActive then
        _uninitRendering(fRendererHandle);
    end;

    {$IFNDEF UseGlobalAlloc}
    if fImageData <> nil then
      Freemem(fImageData);
    {$ELSE}
    if fImageData > 0 then
    begin
      GlobalUnlock(fImageData); // We first unlock the previously        locked memory
      GlobalFree(fImageData); // and then we free it
    end;
    {$ENDIF}
    inherited Destroy;
  except
  end;
end;

procedure TCns3DRenderWindow.Paint;
begin
  if ActiveRendering then
  begin
    if not (csDestroying in ComponentState) then
    try
      _MakeCurrent(fRendererHandle);

      DrawMyOpenGLObject;

      _DoRender(fRendererHandle);
    except
      on e: Exception do
      begin
        ShowMessage(e.Message);
      end
    end;
  end
  else
  begin
    inherited Paint;
    //canvas.Brush.Color := Color;
    //canvas.FillRect(rect(0, 0, ClientWidth, ClientHeight));
  end;
end;

procedure TCns3DRenderWindow.Resize;
begin
  if ActiveRendering then
  begin
    try
      _DoReSize(fRendererHandle, Self.Width, Self.Height);
    except
    end;
  end;
  inherited Resize;
end;

procedure TCns3DRenderWindow.WMKeyDown(var MyMessage: TWMKey);
begin
  if ActiveRendering then
    _DoKeyDown(fRendererHandle, MyMessage.CharCode);
end;

procedure TCns3DRenderWindow.WMKeyUp(var MyMessage: TWMKey);
begin
  if ActiveRendering then
    _DoKeyUp(fRendererHandle, MyMessage.CharCode);
end;

procedure TCns3DRenderWindow.WMChar(var MyMessage: TWMKey);
begin
  if ActiveRendering then
  begin

    case MyMessage.CharCode of
      ord('e'): exit;
      ord('E'): exit;
      ord('q'): exit;
      ord('Q'): exit;
    end;

    _DoChar(fRendererHandle, MyMessage.CharCode);
  end;
end;

procedure TCns3DRenderWindow.WMTimer(var MyMessage: TWMTimer);
begin
  if ActiveRendering then
    _DoTimer(fRendererHandle, MyMessage.TimerID);
end;

procedure TCns3DRenderWindow.MouseMove(shift: TShiftState; x, y: integer);
var
  flags: integer;
  dx, dy: Integer;
begin
  inherited;
  if ActiveRendering then
  begin
    if (fRightMouseInteract <> miNone) and (fMouseDragging) then
    begin
      if fMouseDragging then
      begin
        Dx := X - LastMousePos.X;
        Dy := Y - LastMousePos.Y;
        case fRightMouseInteract of
          miWindow:
            begin
              SetWLWW(fWindowLevel + dx / 5, fWindowWidth - dy / 5);
              Invalidate;
            end;
        end;
        LastMousePos := Point(X, Y);
      end;
    end
    else
    begin
      flags := 0;
      if (ssShift in shift) then
        flags := flags + MK_SHIFT;
      if (ssCtrl in shift) then
        flags := flags + MK_CONTROL;
      _DoMouseMove(fRendererHandle, flags, x, y);
    end
  end;
end;

procedure TCns3DRenderWindow.MouseDown(button: TMouseButton; shift: TShiftState; x, y: integer);
var
  flags: integer;
begin
  inherited;
  if ActiveRendering then
  begin
    if (fRightMouseInteract <> miNone) and (button = mbRight) then
    begin
      LastMousePos := Point(X, Y);
      LastChangeMousePos := Point(X, Y);
      DownMousePos := Point(X, Y);

      fMouseDragging := true;
      fDraggingMouseButton := Button;
    end
    else
    begin
      Self.SetFocus;
      flags := 0;
      if (ssShift in shift) then
        flags := flags + MK_SHIFT;
      if (ssCtrl in shift) then
        flags := flags + MK_CONTROL;

      case (button) of
        mbLeft: _DoMouseDown(fRendererHandle, 0, flags, x, y);
        mbRight: _DoMouseDown(fRendererHandle, 1, flags, x, y);
        mbMiddle: _DoMouseDown(fRendererHandle, 2, flags, x, y);
      end;
    end;
  end
    //else
    //  inherited;
end;

procedure TCns3DRenderWindow.MouseUp(button: TMouseButton; shift: TShiftState; x, y: integer);
var
  flags: integer;
begin
  inherited;
  if ActiveRendering then
  begin
    if fMouseDragging then
    begin
      case fRightMouseInteract of
        miRuler3D:
          begin
            Measure(x, y);
            Invalidate;
          end;
      end;
      fMouseDragging := false;
      self.Cursor := crDefault;
    end
    else
    begin
      flags := 0;
      if (ssShift in shift) then
        flags := flags + MK_SHIFT;
      if (ssCtrl in shift) then
        flags := flags + MK_CONTROL;

      case (button) of
        mbLeft: _DoMouseUp(fRendererHandle, 0, flags, x, y);
        mbRight: _DoMouseUp(fRendererHandle, 1, flags, x, y);
        mbMiddle: _DoMouseUp(fRendererHandle, 2, flags, x, y);
      end;
    end;
  end
    //else
    //  inherited;
end;

procedure TCns3DRenderWindow.SetInteractorMode(const Value: integer);
begin
  FInteractorMode := Value;
  if ActiveRendering then
    if Value <= 6 then
    begin
      if FUsevtkInteractor = false then
      begin
        FUsevtkInteractor := true;
        _SetUsevtkInteractor(fRendererHandle, true);
      end;

      _SetInteractorMode(fRendererHandle, Value);
    end
    else
    begin
      FUsevtkInteractor := false;
      _SetUsevtkInteractor(fRendererHandle, false);
    end;
end;

procedure TCns3DRenderWindow.SetUsevtkInteractor(const Value: boolean);
begin
  FUsevtkInteractor := Value;
  if ActiveRendering then
    _SetUsevtkInteractor(fRendererHandle, Value);
end;

function TCns3DRenderWindow.GetInteractorMode: integer;
begin
  Result := fInteractorMode;
  if ActiveRendering then
    Result := _GetInteractorMode(fRendererHandle);
end;

function TCns3DRenderWindow.GetUsevtkInteractor: boolean;
begin
  Result := fUsevtkInteractor;
  if ActiveRendering then
    Result := _GetUsevtkInteractor(fRendererHandle);
end;

procedure TCns3DRenderWindow.DrawShifk;
begin
  if ActiveRendering then
  begin
    _TestDraw(fRendererHandle);
    _DoRender(fRendererHandle);
  end;
end;

procedure TCns3DRenderWindow.WMEraseBkgnd(var Message: TWmEraseBkgnd);
begin
  Message.Result := 1;
end;

function TCns3DRenderWindow.DoMouseWheelDown(Shift: TShiftState;
  MousePos: TPoint): Boolean;
var
  flags: integer;
begin
  if not ActiveRendering then
  begin
    result := inherited DoMouseWheelDown(Shift, MousePos);
    Exit;
  end;

  flags := 0;
  if (ssShift in shift) then
    flags := flags + MK_SHIFT;
  if (ssCtrl in shift) then
    flags := flags + MK_CONTROL;

  result := _DoMouseWheelDown(fRendererHandle, flags, MousePos.X, MousePos.Y) > 0;
end;

function TCns3DRenderWindow.DoMouseWheelUp(Shift: TShiftState;
  MousePos: TPoint): Boolean;
var
  flags: integer;
begin
  if not ActiveRendering then
  begin
    result := inherited DoMouseWheelUp(Shift, MousePos);
    Exit;
  end;

  flags := 0;
  if (ssShift in shift) then
    flags := flags + MK_SHIFT;
  if (ssCtrl in shift) then
    flags := flags + MK_CONTROL;

  Result := _DoMouseWheelUp(fRendererHandle, flags, MousePos.X, MousePos.Y) > 0;

end;

procedure TCns3DRenderWindow.SetActive(const Value: Boolean);
begin
  if not IsDllLoaded then
    Exit;
  if FActive <> Value then
    if Value then
    begin
      if (FDicomDatasets <> nil) and (FDicomDatasets.Count > 3) then
      begin
        fRendererHandle := _initRendering(Parent.Handle, Handle, Width, height, ColorToRGB(Color));
        fActive := fRendererHandle > 0;
        if fActive then
        begin
          _SetUsevtkInteractor(fRendererHandle, fUsevtkInteractor);
          _SetInteractorMode(fRendererHandle, fInteractorMode);
        end;
        FActive := Value;
        FLockImage := true;
        FNoLockByUpper := false;
      end;
    end
    else
      if fRendererHandle > 0 then
    begin
      EndRendering;

      //AttributesIndex := FDatasetIndex;

      //_uninitRendering(fRendererHandle);
      fRendererHandle := 0;
      invalidate;
      FActive := Value;
      FLockImage := false;
      FNoLockByUpper := true;
    end;
end;

function TCns3DRenderWindow.GetActive: Boolean;
begin
  Result := FActive and (fRendererHandle > 0);
end;

function TCns3DRenderWindow.IsDllLoaded: Boolean;
begin
  {$IFDEF UseResV3MemoryDll}
  Result := mp_MemoryModule <> nil;
  {$ELSE}
  Result := DllHandle <> 0;
  {$ENDIF}
end;

{procedure TCns3DRenderWindow.SetDicomDatasets(const Value: TDicomDatasets);
begin
  FDicomDatasets := Value;
end;}

procedure TCns3DRenderWindow.BuildSurface;
begin
  if ActiveRendering then
    _BuildSurface(fRendererHandle);
end;

procedure TCns3DRenderWindow.BuildVolume;
begin
  if ActiveRendering then
    _BuildVolume(fRendererHandle, fBufferFactor, fBufferOffset);
end;

procedure TCns3DRenderWindow.ClearSurface;
begin
  if ActiveRendering then
    _ClearSurface(fRendererHandle);
end;

procedure TCns3DRenderWindow.ClearVolume;
begin
  if ActiveRendering then
    _ClearVolume(fRendererHandle);
end;

procedure TCns3DRenderWindow.SetSeries(ASeriesUID: string; AIndex: Integer);
var
  n1: TDicomMPRImage;
  p1: Pointer;
  pb1, pb2: PByte;
  len1: Integer;
  i, {i1,} kx, ky: Integer;
  d1: TDicomImage;
  currentPlane: TStructPlane3D;
  pf1, pf2: PSingle;
  //  pbb1: PByte;

  px2, px1: PSmallInt;
  pw2, pw1: PWord;

  ProcessBarForm: TImportAVIProcessBarForm;
  SelectForm: TSelectRangeForm;
  obj1: TDicomDrawObject;

  das1: TDicomDataset;
  ff1, ff2: Double;
begin
  if (FDicomDatasets = nil) then
    raise Exception.Create('No Dicom Dataset');

  if ActiveRendering then
  begin
    {$IFNDEF UseGlobalAlloc}
    if fImageData <> nil then
      Freemem(fImageData);
    fImageData := nil;
    {$ELSE}
    if fImageData > 0 then
    begin
      GlobalUnlock(fImageData); // We first unlock the previously        locked memory
      GlobalFree(fImageData); // and then we free it
    end;
    fImageData := 0;
    {$ENDIF}

    if ASeriesUID <> '' then
      n1 := TDicomMPRImage.Create(fDicomDatasets, ASeriesUID)
    else
      n1 := TDicomMPRImage.Create(fDicomDatasets[AIndex]);

    if n1.sliceNumber = 0 then
      exit;

    das1 := n1.Datasets[0];

    if not FIgnoreSelectRange then
    begin
      if (Screen.MonitorCount > 1) and (self.Owner <> nil) then
        SelectForm := TSelectRangeForm.Create(self.Owner.Owner)
      else
        SelectForm := TSelectRangeForm.Create(self.Owner);
      try
        SelectForm.DicomMultiViewer1.DicomDatasets := fDicomDatasets;

        SelectForm.Edit1.Text := FloatToStr(n1.PixelSpaceX);
        SelectForm.Edit2.Text := FloatToStr(n1.PixelSpaceY);
        SelectForm.Edit3.Text := FloatToStr(n1.PixelSpaceZ);
        if ASeriesUID <> '' then
        begin
          SelectForm.DicomMultiViewer1.SeriesUID := ASeriesUID;
          SelectForm.ScrollBar1.Max := fDicomDatasets.GetSeriesEnd(ASeriesUID) - 1;
          SelectForm.ScrollBar1.Min := fDicomDatasets.GetSeriesStart(ASeriesUID);
          SelectForm.ScrollBar2.Max := SelectForm.ScrollBar1.Max;
          SelectForm.ScrollBar2.Min := SelectForm.ScrollBar1.Min;
          SelectForm.DicomMultiViewer1.CurrentImage := SelectForm.ScrollBar2.Min;
        end
        else
        begin
          SelectForm.DicomMultiViewer1.CurrentImage := AIndex;
          SelectForm.ScrollBar1.Max := n1.IndexEnd;
          SelectForm.ScrollBar2.Max := n1.IndexEnd;
        end;
        SelectForm.ScrollBar2.Position := SelectForm.ScrollBar2.Max;

        SelectForm.DicomMultiViewer1.ActiveView.LeaderMouserInspect := ldmiSelectRect;

        SelectForm.ShowModal;

        if SelectForm.DicomMultiViewer1.ActiveView.Attributes.ImageData.DrawObjects.GetCount > 0 then
        begin
          obj1 := SelectForm.DicomMultiViewer1.ActiveView.Attributes.ImageData.DrawObjects.Items[0];
          if obj1.Kind = ldmiSelectRect then
          begin
            n1.SelectRect := Rect(Round(obj1.X[0]), Round(obj1.Y[0]), Round(obj1.X[1]), Round(obj1.Y[1]));
          end;
        end;

        if ASeriesUID <> '' then
        begin
          n1.IndexStart := SelectForm.ScrollBar1.Position - fDicomDatasets.GetSeriesStart(ASeriesUID);
          n1.IndexEnd := SelectForm.ScrollBar2.Position - fDicomDatasets.GetSeriesStart(ASeriesUID);
        end
        else
        begin
          n1.IndexStart := SelectForm.ScrollBar1.Position;
          n1.IndexEnd := SelectForm.ScrollBar2.Position;
        end;

        n1.PixelSpaceX := StrToFloat(SelectForm.Edit1.Text);
        n1.PixelSpaceY := StrToFloat(SelectForm.Edit2.Text);
        n1.PixelSpaceZ := StrToFloat(SelectForm.Edit3.Text);

        SelectForm.DicomMultiViewer1.DeleteLabel;
        SelectForm.DicomMultiViewer1.ActiveView.LeaderMouserInspect := ldmiNone;
      finally
        SelectForm.Free;
      end;
    end
    else
    begin

    end;

    if (Screen.MonitorCount > 1) and (self.Owner <> nil) then
      ProcessBarForm := TImportAVIProcessBarForm.Create(self.Owner.Owner)
    else
      ProcessBarForm := TImportAVIProcessBarForm.Create(self.Owner);

    ProcessBarForm.Caption := 'Preparing Volume Data';
    try
      if n1.sliceNumber > 0 then
      begin
        ProcessBarForm.ProgressBar1.Position := 1;
        ProcessBarForm.ProgressBar1.Max := n1.sliceNumber;
        ProcessBarForm.Show;
        ProcessBarForm.Update;

        {.$IFNDEF USE_16_TO_FLOAT_BUFFER}
        if fDicomDatasets.BufferLength <> diblFloat then
        begin
          if n1.ImageData[0].Bits <= 8 then
          begin
            fBufferDatatype := 3;
            len1 := n1.getX * n1.getY;
            //GetMem(p1, len1 * n1.sliceNumber);
            {$IFNDEF UseGlobalAlloc}
            GetMem(fImageData, len1 * n1.sliceNumber);
            p1 := fImageData;
            {$ELSE}
            fImageData := GlobalAlloc(GMEM_MOVEABLE or GMEM_SHARE, len1 * n1.sliceNumber);
            p1 := Pointer(GlobalLock(fImageData));
            {$ENDIF}

            pb1 := p1;
            if n1.IsCine then
            begin
              d1 := n1.ImageData[0];
              for i := n1.IndexStart to n1.IndexEnd do
              begin
                if d1.DecompressData(i) then
                begin
                  pb2 := d1.ImageData[i].Data;
                  if d1.SamplePerPixel > 1 then
                  begin
                    //for i1 := 0 to d1.Width * d1.Height - 1 do
                    inc(pb2, (d1.Width * n1.SelectRect.Top) * 3);
                    for ky := n1.SelectRect.Top to n1.SelectRect.Bottom - 1 do
                    begin

                      inc(pb2, n1.SelectRect.Left * 3);
                      for kx := n1.SelectRect.Left to n1.SelectRect.Right - 1 do
                      begin
                        pb1^ := (pb2^);

                        inc(pb1);
                        inc(pb2, 3);
                      end;
                      inc(pb2, (d1.Width - n1.SelectRect.Right) * 3);
                    end;
                  end
                  else
                  begin
                    //Move(pb2^, pb1^, len1);
                    //inc(pb1, len1);
                    //for i1 := 0 to d1.Width * d1.Height - 1 do
                    inc(pb2, (d1.Width * n1.SelectRect.Top));
                    for ky := n1.SelectRect.Top to n1.SelectRect.Bottom - 1 do
                    begin

                      inc(pb2, n1.SelectRect.Left);
                      for kx := n1.SelectRect.Left to n1.SelectRect.Right - 1 do
                      begin
                        pb1^ := (pb2^);

                        inc(pb1);
                        inc(pb2);
                      end;
                      inc(pb2, (d1.Width - n1.SelectRect.Right));
                    end;
                  end;
                end;

                ProcessBarForm.ProgressBar1.Position := i;
                Application.ProcessMessages;
                if ProcessBarForm.fAbort then
                begin
                  ProcessBarForm.Update;
                  if (MessageDlg('Are you want to abort Import', mtConfirmation, [mbYes, mbNo], 0) =
                    mrYes) then
                    break;
                end;

              end;
              n1.Datasets[0].ResetDataToStream;
            end
            else
            begin
              //for i := 0 to n1.sliceNumber - 1 do
              for i := n1.IndexStart to n1.IndexEnd do
              begin
                d1 := n1.ImageData[i];
                if d1.DecompressData(0) then
                begin
                  pb2 := d1.ImageData[0].Data;
                  if d1.SamplePerPixel > 1 then
                  begin
                    //for i1 := 0 to d1.Width * d1.Height - 1 do
                    inc(pb2, (d1.Width * n1.SelectRect.Top) * 3);
                    for ky := n1.SelectRect.Top to n1.SelectRect.Bottom - 1 do
                    begin

                      inc(pb2, n1.SelectRect.Left * 3);
                      for kx := n1.SelectRect.Left to n1.SelectRect.Right - 1 do
                      begin
                        pb1^ := (pb2^);
                        inc(pb1);
                        inc(pb2, 3);
                      end;
                      inc(pb2, (d1.Width - n1.SelectRect.Right));
                    end;
                  end
                  else
                  begin
                    //Move(pb2^, pb1^, len1);
                    //inc(pb1, len1);
                    //for i1 := 0 to d1.Width * d1.Height - 1 do
                    inc(pb2, (d1.Width * n1.SelectRect.Top) * 3);
                    for ky := n1.SelectRect.Top to n1.SelectRect.Bottom - 1 do
                    begin

                      inc(pb2, n1.SelectRect.Left * 3);
                      for kx := n1.SelectRect.Left to n1.SelectRect.Right - 1 do
                      begin
                        pb1^ := (pb2^);

                        inc(pb1);
                        inc(pb2);
                      end;
                      inc(pb2, (d1.Width - n1.SelectRect.Right));
                    end;
                  end;
                  n1.Datasets[i].ResetDataToStream;
                end;

                ProcessBarForm.ProgressBar1.Position := i;
                Application.ProcessMessages;
                if ProcessBarForm.fAbort then
                begin
                  ProcessBarForm.Update;
                  if (MessageDlg('Are you want to abort Import', mtConfirmation, [mbYes, mbNo], 0) =
                    mrYes) then
                    break;
                end;

              end;
            end;
          end
          else //bits>8
          begin
            {if das1.Attributes.ImageData.PixelRepresentation then
            begin
              fBufferDatatype := 1;
              if FRenderFunction <> rf3DSurfaceRendering then
              begin
                if (n1.ImageData[0].MaxValue - n1.ImageData[0].MinValue) > 4095 then
                begin
                  fBufferOffset := -n1.ImageData[0].MinValue;
                  fBufferFactor := 4095 / ((n1.ImageData[0].MaxValue - n1.ImageData[0].MinValue));
                end
                else
                begin
                  fBufferOffset := 1500;
                  fBufferFactor := 1;
                end;
              end
              else
              begin
                fBufferOffset := 0;
                fBufferFactor := 1;
              end;
            end
            else
            begin
              fBufferDatatype := 0;
            end;}

            //force to float
            fBufferDatatype := 2;
            fBufferOffset := 0;
            fBufferFactor := 1;

            ff1 := n1.ImageData[0].RescaleIntercept;
            ff2 := n1.ImageData[0].RescaleSlope;

            if fBufferDatatype = 1 then //to unsigned short
            begin
              len1 := n1.getX * n1.getY * SizeOf(Word);
              //GetMem(p1, len1 * n1.sliceNumber);
              {$IFNDEF UseGlobalAlloc}
              GetMem(fImageData, len1 * n1.sliceNumber);
              p1 := fImageData;
              {$ELSE}
              fImageData := GlobalAlloc(GMEM_MOVEABLE or GMEM_SHARE, len1 * n1.sliceNumber);
              p1 := Pointer(GlobalLock(fImageData));
              {$ENDIF}

              pw1 := p1;
              if n1.IsCine then
              begin
                d1 := n1.ImageData[0];
                //for i := 0 to n1.sliceNumber - 1 do
                for i := n1.IndexStart to n1.IndexEnd do
                begin
                  if d1.DecompressData(i) then
                  begin
                    pw2 := d1.ImageData[i].Data;

                    //Move(pw2^, pw1^, len1);
                    //inc(pw1, len1 div 2);
                    //for i1 := 0 to d1.Width * d1.Height - 1 do
                    inc(pw2, (d1.Width * n1.SelectRect.Top));
                    for ky := n1.SelectRect.Top to n1.SelectRect.Bottom - 1 do
                    begin

                      inc(pw2, n1.SelectRect.Left);
                      for kx := n1.SelectRect.Left to n1.SelectRect.Right - 1 do
                      begin
                        //pw1^ := pw2^;
                        pw1^ := trunc((pw2^ + fBufferOffset + ff1) * fBufferFactor * ff2);

                        inc(pw1);
                        inc(pw2);
                      end;
                      inc(pw2, (d1.Width - n1.SelectRect.Right));
                    end;
                  end;

                  ProcessBarForm.ProgressBar1.Position := i;
                  Application.ProcessMessages;
                  if ProcessBarForm.fAbort then
                  begin
                    ProcessBarForm.Update;
                    if (MessageDlg('Are you want to abort Import', mtConfirmation, [mbYes, mbNo], 0) =
                      mrYes) then
                      break;
                  end;

                end;
                n1.Datasets[0].ResetDataToStream;
              end
              else
              begin
                //for i := 0 to n1.sliceNumber - 1 do
                for i := n1.IndexStart to n1.IndexEnd do
                begin
                  d1 := n1.ImageData[i];
                  if d1.DecompressData(0) then
                  begin
                    pw2 := d1.ImageData[0].Data;

                    //Move(pw2^, pw1^, len1);
                    //inc(pw1, len1 div 2);
                    //for i1 := 0 to d1.Width * d1.Height - 1 do
                    inc(pw2, (d1.Width * n1.SelectRect.Top));
                    for ky := n1.SelectRect.Top to n1.SelectRect.Bottom - 1 do
                    begin

                      inc(pw2, n1.SelectRect.Left);
                      for kx := n1.SelectRect.Left to n1.SelectRect.Right - 1 do
                      begin
                        //pw1^ := pw2^;
                        pw1^ := trunc((pw2^ + fBufferOffset + ff1) * fBufferFactor * ff2);
                        inc(pw1);
                        inc(pw2);
                      end;
                      inc(pw2, (d1.Width - n1.SelectRect.Right));
                    end;

                    n1.Datasets[i].ResetDataToStream;
                  end;

                  ProcessBarForm.ProgressBar1.Position := i;
                  Application.ProcessMessages;
                  if ProcessBarForm.fAbort then
                  begin
                    ProcessBarForm.Update;
                    if (MessageDlg('Are you want to abort Import', mtConfirmation, [mbYes, mbNo], 0) =
                      mrYes) then
                      break;
                  end;
                end;
              end;
            end
            else
              if fBufferDatatype = 0 then //to short
            begin
              len1 := n1.getX * n1.getY * SizeOf(short);
              //GetMem(p1, len1 * n1.sliceNumber);
              {$IFNDEF UseGlobalAlloc}
              GetMem(fImageData, len1 * n1.sliceNumber);
              p1 := fImageData;
              {$ELSE}
              fImageData := GlobalAlloc(GMEM_MOVEABLE or GMEM_SHARE, len1 * n1.sliceNumber);
              p1 := Pointer(GlobalLock(fImageData));
              {$ENDIF}

              px1 := p1;
              if n1.IsCine then
              begin
                d1 := n1.ImageData[0];
                //for i := 0 to n1.sliceNumber - 1 do
                for i := n1.IndexStart to n1.IndexEnd do
                begin
                  if d1.DecompressData(i) then
                  begin
                    px2 := d1.ImageData[i].Data;

                    //Move(pw2^, pw1^, len1);
                    //inc(pw1, len1 div 2);
                    //for i1 := 0 to d1.Width * d1.Height - 1 do
                    inc(px2, (d1.Width * n1.SelectRect.Top));
                    for ky := n1.SelectRect.Top to n1.SelectRect.Bottom - 1 do
                    begin

                      inc(px2, n1.SelectRect.Left);
                      for kx := n1.SelectRect.Left to n1.SelectRect.Right - 1 do
                      begin
                        //px1^ := (px2^);
                        px1^ := trunc((px2^ + fBufferOffset + ff1) * fBufferFactor * ff2);

                        inc(px1);
                        inc(px2);
                      end;
                      inc(px2, (d1.Width - n1.SelectRect.Right));
                    end;
                  end;

                  ProcessBarForm.ProgressBar1.Position := i;
                  Application.ProcessMessages;
                  if ProcessBarForm.fAbort then
                  begin
                    ProcessBarForm.Update;
                    if (MessageDlg('Are you want to abort Import', mtConfirmation, [mbYes, mbNo], 0) =
                      mrYes) then
                      break;
                  end;

                end;
                n1.Datasets[0].ResetDataToStream;
              end
              else
              begin
                //for i := 0 to n1.sliceNumber - 1 do
                for i := n1.IndexStart to n1.IndexEnd do
                begin
                  d1 := n1.ImageData[i];
                  if d1.DecompressData(0) then
                  begin
                    px2 := d1.ImageData[0].Data;

                    //Move(pw2^, pw1^, len1);
                    //inc(pw1, len1 div 2);
                    //for i1 := 0 to d1.Width * d1.Height - 1 do
                    inc(px2, (d1.Width * n1.SelectRect.Top));
                    for ky := n1.SelectRect.Top to n1.SelectRect.Bottom - 1 do
                    begin

                      inc(px2, n1.SelectRect.Left);
                      for kx := n1.SelectRect.Left to n1.SelectRect.Right - 1 do
                      begin
                        //px1^ := (px2^);
                        px1^ := trunc((px2^ + fBufferOffset + ff1) * fBufferFactor * ff2);

                        inc(px1);
                        inc(px2);
                      end;
                      inc(px2, (d1.Width - n1.SelectRect.Right));
                    end;

                    n1.Datasets[i].ResetDataToStream;
                  end;

                  ProcessBarForm.ProgressBar1.Position := i;
                  Application.ProcessMessages;
                  if ProcessBarForm.fAbort then
                  begin
                    ProcessBarForm.Update;
                    if (MessageDlg('Are you want to abort Import', mtConfirmation, [mbYes, mbNo], 0) =
                      mrYes) then
                      break;
                  end;
                end;
              end;
            end
            else
              if fBufferDatatype = 2 then //to float
            begin
              len1 := n1.getX * n1.getY * SizeOf(single);

              {$IFNDEF UseGlobalAlloc}
              GetMem(fImageData, len1 * n1.sliceNumber);
              p1 := fImageData;
              {$ELSE}
              fImageData := GlobalAlloc(GMEM_MOVEABLE or GMEM_SHARE, len1 * n1.sliceNumber);
              p1 := Pointer(GlobalLock(fImageData));
              {$ENDIF}

              pf2 := p1;
              if das1.Attributes.ImageData.PixelRepresentation then
              begin
                if n1.IsCine then
                begin
                  d1 := n1.ImageData[0];
                  //for i := 0 to n1.sliceNumber - 1 do
                  for i := n1.IndexStart to n1.IndexEnd do
                  begin
                    if d1.DecompressData(i) then
                    begin
                      pw2 := d1.ImageData[i].Data;
                      //Move(pf1^, pf2^, len1);
                      //inc(pf2, len1 div SizeOf(single));
                      //for i1 := 0 to d1.Width * d1.Height - 1 do
                      inc(pw2, (d1.Width * n1.SelectRect.Top));
                      for ky := n1.SelectRect.Top to n1.SelectRect.Bottom - 1 do
                      begin

                        inc(pw2, n1.SelectRect.Left);
                        for kx := n1.SelectRect.Left to n1.SelectRect.Right - 1 do
                        begin
                          pf2^ := (pw2^ + ff1) * ff2;
                          inc(pw2);
                          inc(pf2);
                        end;
                        inc(pw2, (d1.Width - n1.SelectRect.Right));
                      end;
                    end;

                    ProcessBarForm.ProgressBar1.Position := i;
                    Application.ProcessMessages;
                    if ProcessBarForm.fAbort then
                    begin
                      ProcessBarForm.Update;
                      if (MessageDlg('Are you want to abort Import', mtConfirmation, [mbYes, mbNo], 0) =
                        mrYes) then
                        break;
                    end;

                  end;
                  n1.Datasets[0].ResetDataToStream;
                end
                else
                begin
                  //for i := 0 to n1.sliceNumber - 1 do
                  for i := n1.IndexStart to n1.IndexEnd do
                  begin
                    d1 := n1.ImageData[i];
                    if d1.DecompressData(0) then
                    begin
                      pw2 := d1.ImageData[0].Data;
                      //Move(pf1^, pf2^, len1);
                      //inc(pf2, len1 div SizeOf(single));
                      //for i1 := 0 to d1.Width * d1.Height - 1 do
                      inc(pw2, (d1.Width * n1.SelectRect.Top));
                      for ky := n1.SelectRect.Top to n1.SelectRect.Bottom - 1 do
                      begin

                        inc(pw2, n1.SelectRect.Left);
                        for kx := n1.SelectRect.Left to n1.SelectRect.Right - 1 do
                        begin
                          pf2^ := (pw2^ + ff1) * ff2;
                          inc(pw2);
                          inc(pf2);
                        end;
                        inc(pw2, (d1.Width - n1.SelectRect.Right));
                      end;

                      n1.Datasets[i].ResetDataToStream;
                    end;

                    ProcessBarForm.ProgressBar1.Position := i;
                    Application.ProcessMessages;
                    if ProcessBarForm.fAbort then
                    begin
                      ProcessBarForm.Update;
                      if (MessageDlg('Are you want to abort Import', mtConfirmation, [mbYes, mbNo], 0) =
                        mrYes) then
                        break;
                    end;

                  end;
                end;
              end
              else
              begin
                if n1.IsCine then
                begin
                  d1 := n1.ImageData[0];
                  //for i := 0 to n1.sliceNumber - 1 do
                  for i := n1.IndexStart to n1.IndexEnd do
                  begin
                    if d1.DecompressData(i) then
                    begin
                      px2 := d1.ImageData[i].Data;
                      //Move(pf1^, pf2^, len1);
                      //inc(pf2, len1 div SizeOf(single));
                      //for i1 := 0 to d1.Width * d1.Height - 1 do
                      inc(px2, (d1.Width * n1.SelectRect.Top));
                      for ky := n1.SelectRect.Top to n1.SelectRect.Bottom - 1 do
                      begin

                        inc(px2, n1.SelectRect.Left);
                        for kx := n1.SelectRect.Left to n1.SelectRect.Right - 1 do
                        begin
                          pf2^ := (px2^ + ff1) * ff2;
                          inc(px2);
                          inc(pf2);
                        end;
                        inc(pw2, (d1.Width - n1.SelectRect.Right));
                      end;
                    end;

                    ProcessBarForm.ProgressBar1.Position := i;
                    Application.ProcessMessages;
                    if ProcessBarForm.fAbort then
                    begin
                      ProcessBarForm.Update;
                      if (MessageDlg('Are you want to abort Import', mtConfirmation, [mbYes, mbNo], 0) =
                        mrYes) then
                        break;
                    end;

                  end;
                  n1.Datasets[0].ResetDataToStream;
                end
                else
                begin
                  //for i := 0 to n1.sliceNumber - 1 do
                  for i := n1.IndexStart to n1.IndexEnd do
                  begin
                    d1 := n1.ImageData[i];
                    if d1.DecompressData(0) then
                    begin
                      px2 := d1.ImageData[0].Data;
                      //Move(pf1^, pf2^, len1);
                      //inc(pf2, len1 div SizeOf(single));
                      //for i1 := 0 to d1.Width * d1.Height - 1 do
                      inc(px2, (d1.Width * n1.SelectRect.Top));
                      for ky := n1.SelectRect.Top to n1.SelectRect.Bottom - 1 do
                      begin

                        inc(px2, n1.SelectRect.Left);
                        for kx := n1.SelectRect.Left to n1.SelectRect.Right - 1 do
                        begin
                          pf2^ := (px2^ + ff1) * ff2;
                          inc(px2);
                          inc(pf2);
                        end;
                        inc(pw2, (d1.Width - n1.SelectRect.Right));
                      end;

                      n1.Datasets[i].ResetDataToStream;
                    end;

                    ProcessBarForm.ProgressBar1.Position := i;
                    Application.ProcessMessages;
                    if ProcessBarForm.fAbort then
                    begin
                      ProcessBarForm.Update;
                      if (MessageDlg('Are you want to abort Import', mtConfirmation, [mbYes, mbNo], 0) =
                        mrYes) then
                        break;
                    end;

                  end;
                end;
              end;
            end;
          end;
        end
        else // fDicomDatasets.BufferLength = diblFloat
        begin //{$ELSE}
          if n1.ImageData[0].Bits <= 8 then
          begin
            raise Exception.Create('BufferLength can not as diblFloat for bits <=8');
          end
          else //16bit
          begin
            {if das1.Attributes.ImageData.PixelRepresentation then
            begin
              fBufferDatatype := 1;
            end
            else
            begin
              fBufferDatatype := 0;
            end;}
            case fBufferDatatype of
              0: //short
                begin
                  {if not n1.ImageData[0].PixelRepresentation then
                  begin
                    fBufferOffset := 0;
                    fBufferFactor := 1;
                  end;}
                  len1 := n1.getX * n1.getY * SizeOf(smallint);

                  {$IFNDEF UseGlobalAlloc}
                  GetMem(fImageData, len1 * n1.sliceNumber);
                  p1 := fImageData;
                  {$ELSE}
                  fImageData := GlobalAlloc(GMEM_MOVEABLE or GMEM_SHARE, len1 * n1.sliceNumber);
                  p1 := Pointer(GlobalLock(fImageData));
                  {$ENDIF}

                  px2 := p1;
                  if n1.IsCine then
                  begin
                    d1 := n1.ImageData[0];
                    //for i := 0 to n1.sliceNumber - 1 do
                    for i := n1.IndexStart to n1.IndexEnd do
                    begin
                      if d1.DecompressData(i) then
                      begin
                        pf1 := d1.ImageData[i].Data;
                        //for i1 := 0 to d1.Width * d1.Height - 1 do
                        inc(pf1, (d1.Width * n1.SelectRect.Top));
                        for ky := n1.SelectRect.Top to n1.SelectRect.Bottom - 1 do
                        begin

                          inc(pf1, n1.SelectRect.Left);
                          for kx := n1.SelectRect.Left to n1.SelectRect.Right - 1 do
                          begin
                            px2^ := trunc(pf1^);
                            inc(pf1);
                            inc(px2);
                          end;
                          inc(pf1, (d1.Width - n1.SelectRect.Right));
                        end;
                      end;
                      ProcessBarForm.ProgressBar1.Position := i;
                      Application.ProcessMessages;
                      if ProcessBarForm.fAbort then
                      begin
                        ProcessBarForm.Update;
                        if (MessageDlg('Are you want to abort Import', mtConfirmation, [mbYes, mbNo], 0) =
                          mrYes) then
                          break;
                      end;

                    end;
                    n1.Datasets[0].ResetDataToStream;
                  end
                  else
                  begin
                    //for i := 0 to n1.sliceNumber - 1 do
                    for i := n1.IndexStart to n1.IndexEnd do
                    begin
                      d1 := n1.ImageData[i];
                      if d1.DecompressData(0) then
                      begin
                        pf1 := d1.ImageData[0].Data;
                        //for i1 := 0 to d1.Width * d1.Height - 1 do
                        inc(pf1, (d1.Width * n1.SelectRect.Top));
                        for ky := n1.SelectRect.Top to n1.SelectRect.Bottom - 1 do
                        begin

                          inc(pf1, n1.SelectRect.Left);
                          for kx := n1.SelectRect.Left to n1.SelectRect.Right - 1 do
                          begin
                            px2^ := trunc(pf1^);
                            inc(pf1);
                            inc(px2);
                          end;
                          inc(pf1, (d1.Width - n1.SelectRect.Right));
                        end;
                        n1.Datasets[i].ResetDataToStream;
                      end;

                      ProcessBarForm.ProgressBar1.Position := i;
                      Application.ProcessMessages;
                      if ProcessBarForm.fAbort then
                      begin
                        ProcessBarForm.Update;
                        if (MessageDlg('Are you want to abort Import', mtConfirmation, [mbYes, mbNo], 0) =
                          mrYes) then
                          break;
                      end;

                    end;
                  end;
                end;
              1: //unsigned short
                begin
                  if FRenderFunction <> rf3DSurfaceRendering then
                  begin
                    if (n1.ImageData[0].MaxValue - n1.ImageData[0].MinValue) > 4095 then
                    begin
                      fBufferOffset := -n1.ImageData[0].MinValue;
                      fBufferFactor := 4095 / ((n1.ImageData[0].MaxValue - n1.ImageData[0].MinValue));
                    end
                    else
                    begin
                      fBufferOffset := 1500;
                      fBufferFactor := 1;
                    end;
                  end
                  else
                  begin
                    fBufferOffset := 0;
                    fBufferFactor := 1;
                  end;
                  len1 := n1.getX * n1.getY * SizeOf(smallint);

                  {$IFNDEF UseGlobalAlloc}
                  GetMem(fImageData, len1 * n1.sliceNumber);
                  p1 := fImageData;
                  {$ELSE}
                  fImageData := GlobalAlloc(GMEM_MOVEABLE or GMEM_SHARE, len1 * n1.sliceNumber);
                  p1 := Pointer(GlobalLock(fImageData));
                  {$ENDIF}

                  pw2 := p1;
                  if n1.IsCine then
                  begin
                    d1 := n1.ImageData[0];
                    //for i := 0 to n1.sliceNumber - 1 do
                    for i := n1.IndexStart to n1.IndexEnd do
                    begin
                      if d1.DecompressData(i) then
                      begin
                        pf1 := d1.ImageData[i].Data;
                        //for i1 := 0 to d1.Width * d1.Height - 1 do
                        inc(pf1, (d1.Width * n1.SelectRect.Top));
                        for ky := n1.SelectRect.Top to n1.SelectRect.Bottom - 1 do
                        begin

                          inc(pf1, n1.SelectRect.Left);
                          for kx := n1.SelectRect.Left to n1.SelectRect.Right - 1 do
                          begin
                            pw2^ := trunc(pf1^ + fBufferOffset);
                            inc(pf1);
                            inc(pw2);
                          end;
                          inc(pf1, (d1.Width - n1.SelectRect.Right));
                        end;
                      end;

                      ProcessBarForm.ProgressBar1.Position := i;
                      Application.ProcessMessages;
                      if ProcessBarForm.fAbort then
                      begin
                        ProcessBarForm.Update;
                        if (MessageDlg('Are you want to abort Import', mtConfirmation, [mbYes, mbNo], 0) =
                          mrYes) then
                          break;
                      end;

                    end;
                    n1.Datasets[0].ResetDataToStream;
                  end
                  else
                  begin
                    //for i := 0 to n1.sliceNumber - 1 do
                    for i := n1.IndexStart to n1.IndexEnd do
                    begin
                      d1 := n1.ImageData[i];
                      if d1.DecompressData(0) then
                      begin
                        pf1 := d1.ImageData[0].Data;
                        //for i1 := 0 to d1.Width * d1.Height - 1 do
                        inc(pf1, (d1.Width * n1.SelectRect.Top));
                        for ky := n1.SelectRect.Top to n1.SelectRect.Bottom - 1 do
                        begin

                          inc(pf1, n1.SelectRect.Left);
                          for kx := n1.SelectRect.Left to n1.SelectRect.Right - 1 do
                          begin
                            pw2^ := trunc(pf1^ + fBufferOffset);
                            inc(pf1);
                            inc(pw2);
                          end;
                          inc(pf1, (d1.Width - n1.SelectRect.Right));
                        end;
                        n1.Datasets[i].ResetDataToStream;
                      end;

                      ProcessBarForm.ProgressBar1.Position := i;
                      Application.ProcessMessages;
                      if ProcessBarForm.fAbort then
                      begin
                        ProcessBarForm.Update;
                        if (MessageDlg('Are you want to abort Import', mtConfirmation, [mbYes, mbNo], 0) =
                          mrYes) then
                          break;
                      end;

                    end;
                  end;
                end;
              2: //float
                begin
                  len1 := n1.getX * n1.getY * SizeOf(single);

                  {$IFNDEF UseGlobalAlloc}
                  GetMem(fImageData, len1 * n1.sliceNumber);
                  p1 := fImageData;
                  {$ELSE}
                  fImageData := GlobalAlloc(GMEM_MOVEABLE or GMEM_SHARE, len1 * n1.sliceNumber);
                  p1 := Pointer(GlobalLock(fImageData));
                  {$ENDIF}

                  pf2 := p1;
                  if n1.IsCine then
                  begin
                    d1 := n1.ImageData[0];
                    //for i := 0 to n1.sliceNumber - 1 do
                    for i := n1.IndexStart to n1.IndexEnd do
                    begin
                      if d1.DecompressData(i) then
                      begin
                        pf1 := d1.ImageData[i].Data;
                        //Move(pf1^, pf2^, len1);
                        //inc(pf2, len1 div SizeOf(single));
                        //for i1 := 0 to d1.Width * d1.Height - 1 do
                        inc(pf1, (d1.Width * n1.SelectRect.Top));
                        for ky := n1.SelectRect.Top to n1.SelectRect.Bottom - 1 do
                        begin

                          inc(pf1, n1.SelectRect.Left);
                          for kx := n1.SelectRect.Left to n1.SelectRect.Right - 1 do
                          begin
                            pf2^ := trunc(pf1^);
                            inc(pf1);
                            inc(pf2);
                          end;
                          inc(pf1, (d1.Width - n1.SelectRect.Right));
                        end;
                      end;

                      ProcessBarForm.ProgressBar1.Position := i;
                      Application.ProcessMessages;
                      if ProcessBarForm.fAbort then
                      begin
                        ProcessBarForm.Update;
                        if (MessageDlg('Are you want to abort Import', mtConfirmation, [mbYes, mbNo], 0) =
                          mrYes) then
                          break;
                      end;

                    end;
                    n1.Datasets[0].ResetDataToStream;
                  end
                  else
                  begin
                    //for i := 0 to n1.sliceNumber - 1 do
                    for i := n1.IndexStart to n1.IndexEnd do
                    begin
                      d1 := n1.ImageData[i];
                      if d1.DecompressData(0) then
                      begin
                        pf1 := d1.ImageData[0].Data;
                        //Move(pf1^, pf2^, len1);
                        //inc(pf2, len1 div SizeOf(single));
                        //for i1 := 0 to d1.Width * d1.Height - 1 do
                        inc(pf1, (d1.Width * n1.SelectRect.Top));
                        for ky := n1.SelectRect.Top to n1.SelectRect.Bottom - 1 do
                        begin

                          inc(pf1, n1.SelectRect.Left);
                          for kx := n1.SelectRect.Left to n1.SelectRect.Right - 1 do
                          begin
                            pf2^ := trunc(pf1^);
                            inc(pf1);
                            inc(pf2);
                          end;
                          inc(pf1, (d1.Width - n1.SelectRect.Right));
                        end;

                        n1.Datasets[i].ResetDataToStream;
                      end;

                      ProcessBarForm.ProgressBar1.Position := i;
                      Application.ProcessMessages;
                      if ProcessBarForm.fAbort then
                      begin
                        ProcessBarForm.Update;
                        if (MessageDlg('Are you want to abort Import', mtConfirmation, [mbYes, mbNo], 0) =
                          mrYes) then
                          break;
                      end;

                    end;
                  end;
                end;
            end;
          end;
        end; //{$ENDIF}
        fDicomDatasets.ResetDataToStream;

        fWindowLevel := n1.Datasets[0].Attributes.ImageData.WindowCenter;
        fWindowWidth := n1.Datasets[0].Attributes.ImageData.WindowWidth;

        //_computeValueFactor(fRendererHandle, 1, 0);

        //_setPixSource(fRendererHandle, n1.getX, n1.getY, n1.sliceNumber, 0, 1, n1.PixelSpaceX,
        _setPixSource(fRendererHandle, n1.SelectRect.Right - n1.SelectRect.Left,
          n1.SelectRect.Bottom - n1.SelectRect.Top, n1.IndexEnd - n1.IndexStart + 1, 0, 1, n1.PixelSpaceX,
          n1.PixelSpaceY, n1.PixelSpaceZ, p1, fBufferDatatype);

        //fBufferDatatype  0 short, 1 unsign short, 2 single,( 3 byte, 4 rgb)

        currentPlane := n1.ImageData[0].planeForImage;
        _setPixOrigin(fRendererHandle, currentPlane.Position.x, currentPlane.Position.y, currentPlane.Position.z,
          currentPlane.XNormalVector.x, currentPlane.XNormalVector.y, currentPlane.XNormalVector.z,
          currentPlane.YNormalVector.x, currentPlane.YNormalVector.y, currentPlane.YNormalVector.z,
          n1.PixelSpaceZ, n1.ImageData[0].WindowCenter, n1.ImageData[0].WindowWidth);

      end;
    finally
      n1.free;
      ProcessBarForm.Free;
    end;
  end;
end;

procedure TCns3DRenderWindow.SetRenderFunction(
  const Value: TDicom3DRenderFunction);
begin
  if FRenderFunction <> Value then
  begin
    //if ActiveRendering then
    //  EndRendering;
    FRenderFunction := Value;
  end;
end;

procedure TCns3DRenderWindow.ChangeSurfaceActor(actor: Integer; resolution,
  transparency, r, g, b, isocontour: Double; useDecimate: Boolean;
  decimateVal: double; useSmooth: Boolean; smoothVal: Integer);
var
  c1: TCursor;
begin
  if ActiveRendering then
  begin
    if FRenderFunction = rf3DSurfaceRendering then
    begin
      c1 := Screen.Cursor;
      Screen.Cursor := crHourGlass;
      try
        _ChangeSurfaceActor(fRendererHandle, actor, resolution,
          transparency, r, g, b, isocontour, useDecimate,
          decimateVal, useSmooth, smoothVal);
      finally
        Screen.Cursor := c1;
      end;
    end
    else
      raise Exception.Create('You can add surface Only in Surface Rendering Mode');
  end;
end;

procedure TCns3DRenderWindow.DeleteSurfaceActor(actor: Integer);
var
  c1: TCursor;
begin
  if ActiveRendering then
  begin
    if FRenderFunction = rf3DSurfaceRendering then
    begin
      c1 := Screen.Cursor;
      Screen.Cursor := crHourGlass;
      try
        _DeleteSurfaceActor(fRendererHandle, actor);
      finally
        Screen.Cursor := c1;
      end;
    end;
  end;
end;

procedure TCns3DRenderWindow.Export3DFileFormat(tag: Integer;
  filename: string);
begin
  if ActiveRendering then
    _Export3DFileFormat(fRendererHandle, tag, pchar(filename));
end;

procedure TCns3DRenderWindow.SwitchStereoMode;
begin
  if ActiveRendering then
    _SwitchStereoMode(fRendererHandle);
end;

procedure TCns3DRenderWindow.SetVolumeEngine(const Value: Integer);
begin
  FVolumeEngine := Value;
  if ActiveRendering then
    _SetVolumeEngine(fRendererHandle, Value, FVolumeRenderMode, FVolumeProjectionMode);
end;

procedure TCns3DRenderWindow.SetVolumeProjectionMode(const Value: Integer);
begin
  FVolumeProjectionMode := Value;
  if ActiveRendering then
    _SetVolumeProjectionMode(fRendererHandle, Value);
end;

procedure TCns3DRenderWindow.SetVolumeRenderMode(const Value: integer);
begin
  FVolumeRenderMode := Value;
  if ActiveRendering then
    _SetVolumeRenderMode(fRendererHandle, Value);
end;

function TCns3DRenderWindow.GetVolumeEngine: Integer;
begin
  Result := FVolumeEngine;

end;

function TCns3DRenderWindow.GetVolumeProjectionMode: Integer;
begin
  Result := FVolumeProjectionMode;
  if ActiveRendering then
    Result := _GetVolumeProjectionMode(fRendererHandle);
end;

function TCns3DRenderWindow.GetVolumeRenderMode: integer;
begin
  Result := FVolumeRenderMode;
  if ActiveRendering then
    Result := _GetVolumeRenderMode(fRendererHandle);
end;

procedure TCns3DRenderWindow.EndRendering;
begin
  _ClearVolume(fRendererHandle);
  _ClearSurface(fRendererHandle);
end;

procedure TCns3DRenderWindow.StartRendering;
begin
  if ActiveRendering then
  begin
    if (Attributes.ImageData.FrameCount > 3) then
    begin
      SeriesUID := '';
    end
    else
      SeriesUID := Attributes.GetString($20, $E);

    SetSeries(FSeriesUID, AttributesIndex);

    //FDatasetIndex := AttributesIndex;
    //AttributesIndex := -1;

    case FRenderFunction of
      rf3DSurfaceRendering:
        begin
          _BuildSurface(fRendererHandle);
        end;
      rf3DVolumeRendering:
        begin
          _BuildVolume(fRendererHandle, fBufferFactor, fBufferOffset);
          FVolumeRenderMode := 0;
          FVolumeProjectionMode := 1;
          _SetVolumeEngine(fRendererHandle, fVolumeEngine, FVolumeRenderMode, FVolumeProjectionMode);
        end;
      rf3DMaximumIntensityProjection:
        begin
          _BuildVolume(fRendererHandle, fBufferFactor, fBufferOffset);
          FVolumeRenderMode := 1;
          FVolumeProjectionMode := 1;
          _SetVolumeEngine(fRendererHandle, fVolumeEngine, FVolumeRenderMode, FVolumeProjectionMode);
        end;
      rf3DEndoscopyView:
        begin
          _BuildVolume(fRendererHandle, fBufferFactor, fBufferOffset);
          FVolumeRenderMode := 0;
          FVolumeProjectionMode := 2;
          _SetVolumeEngine(fRendererHandle, fVolumeEngine, FVolumeRenderMode, FVolumeProjectionMode);
        end;
    end;
  end;
end;
{
procedure TCns3DRenderWindow.SetVolumeLookupTable(r, g, b: Pointer);
begin
  if (fRendererHandle > 0) and (FRenderFunction <> rf3DSurfaceRendering) then
    _SetVolumeLUT(fRendererHandle, r, g, b);
end;

procedure TDicom3DRenderView.SetVolumeLookupTable(r, g, b: Pointer);
begin
  if (fRendererHandle > 0) and (FRenderFunction <> rf3DSurfaceRendering) then
    _SetVolumeLUT(fRendererHandle, r, g, b);
end;

procedure TDicom3DRenderView.SetVolumeLookupTableFile(AFileName: string);
var
  stm1: TFileStream;
begin
  stm1 := TFileStream.Create(AFileName, fmOpenRead);
  try
    SetVolumeLookupTableStream(stm1);
  finally
    stm1.Free;
  end;
end;

procedure TDicom3DRenderView.SetVolumeLookupTableStream(AStream: TStream);
var
  FRedTable: ByteP;
  FGreenTable: ByteP;
  FBlueTable: ByteP;
begin
  Getmem(FBlueTable, 256);
  Getmem(FGreenTable, 256);
  Getmem(FRedTable, 256);
  try
    AStream.Position := 0;

    AStream.Read(FRedTable^, 256);
    AStream.Read(FGreenTable^, 256);
    AStream.Read(FBlueTable^, 256);

    SetVolumeLookupTable(FRedTable, FGreenTable, FBlueTable);
  finally
    Freemem(FBlueTable);
    Freemem(FGreenTable);
    Freemem(FRedTable);
  end;
end;

procedure TCns3DRenderWindow.SetVolumeLookupTableFile(AFileName: string);
var
  stm1: TFileStream;
begin
  stm1 := TFileStream.Create(AFileName, fmOpenRead);
  try
    SetVolumeLookupTableStream(stm1);
  finally
    stm1.Free;
  end;
end;

procedure TCns3DRenderWindow.SetVolumeLookupTableStream(AStream: TStream);
var
  FRedTable: ByteP;
  FGreenTable: ByteP;
  FBlueTable: ByteP;
begin
  Getmem(FBlueTable, 256);
  Getmem(FGreenTable, 256);
  Getmem(FRedTable, 256);
  try
    AStream.Position := 0;

    AStream.Read(FRedTable^, 256);
    AStream.Read(FGreenTable^, 256);
    AStream.Read(FBlueTable^, 256);

    SetVolumeLookupTable(FRedTable, FGreenTable, FBlueTable);
  finally
    Freemem(FBlueTable);
    Freemem(FGreenTable);
    Freemem(FRedTable);
  end;
end;
}

procedure TCns3DRenderWindow.ActivateShading(on1: Boolean);
begin
  if (fRendererHandle > 0) then
    _ActivateShading(fRendererHandle, on1);
end;

procedure TCns3DRenderWindow.GetShadingValues(var ambient, diffuse,
  specular, specularpower: Double);
begin
  if (fRendererHandle > 0) and (FRenderFunction <> rf3DSurfaceRendering) then
    _GetShadingValues(fRendererHandle, ambient, diffuse, specular, specularpower);
end;

function TCns3DRenderWindow.IsShading: Integer;
begin
  if (fRendererHandle > 0) and (FRenderFunction <> rf3DSurfaceRendering) then
    result := _Shading(fRendererHandle)
  else
    result := 0;
end;

procedure TCns3DRenderWindow.SetShadingValues(const ambient, diffuse,
  specular, specularpower: Double);
begin
  if (fRendererHandle > 0) and (FRenderFunction <> rf3DSurfaceRendering) then
    _SetShadingValues(fRendererHandle, ambient, diffuse, specular, specularpower)
end;

procedure TCns3DRenderWindow.SetViewOrientation(tag: Integer);
begin
  if (fRendererHandle > 0) then
    _SetViewOrientation(fRendererHandle, tag);
end;

procedure TCns3DRenderWindow.ActivateGradientOpacity(on1: Boolean);
begin
  if (fRendererHandle > 0) and (FRenderFunction <> rf3DSurfaceRendering) then
    _ActivateGradientOpacity(fRendererHandle, on1);
end;

procedure TCns3DRenderWindow.AddColorTransferFunctionPoint(x, r, g, b,
  MidPoint, Sharpness: Double);
begin
  if (fRendererHandle > 0) and (FRenderFunction <> rf3DSurfaceRendering) then
    _AddColorTransferFunctionPoint(fRendererHandle, x, r, g, b, MidPoint, Sharpness);
end;

procedure TCns3DRenderWindow.AddGradientOpacityTransferFunctionPoint(x, y,
  MidPoint, Sharpness: Double);
begin
  if (fRendererHandle > 0) and (FRenderFunction <> rf3DSurfaceRendering) then
    _AddGradientOpacityTransferFunctionPoint(fRendererHandle, x, y, MidPoint, Sharpness);
end;

procedure TCns3DRenderWindow.AddScalarOpacityTransferFunctionPoint(x, y,
  MidPoint, Sharpness: Double);
begin
  if (fRendererHandle > 0) and (FRenderFunction <> rf3DSurfaceRendering) then
    _AddScalarOpacityTransferFunctionPoint(fRendererHandle, x, y, MidPoint, Sharpness);
end;

procedure TCns3DRenderWindow.ClearColorTransferFunction;
begin
  if (fRendererHandle > 0) and (FRenderFunction <> rf3DSurfaceRendering) then
    _ClearColorTransferFunction(fRendererHandle);
end;

procedure TCns3DRenderWindow.ClearGradientOpacityPoints;
begin
  if (fRendererHandle > 0) and (FRenderFunction <> rf3DSurfaceRendering) then
    _ClearGradientOpacityPoints(fRendererHandle);
end;

procedure TCns3DRenderWindow.ClearScalarOpacityPoints;
begin
  if (fRendererHandle > 0) and (FRenderFunction <> rf3DSurfaceRendering) then
    _ClearScalarOpacityPoints(fRendererHandle);
end;

procedure TCns3DRenderWindow.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, operation);
  if Operation = opRemove then
  begin
    if (AComponent = FDicomDatasets) then
    begin
      FDicomDatasets := nil;
      Invalidate;
    end;
  end;
end;

function TCns3DRenderWindow.SaveAsDicom(AIsMONOCHROME: Boolean): TDicomAttributes;
var
  hdcScreen: HDC;
  hbmScreen: TBitmap;
  w, h: Integer;
  DesktopCanvas: TCanvas;
  DeskTopRect: TRect;
begin
  //  das2 := n1.Datasets[0];
  w := (Width div 4) * 4;
  h := (Height div 4) * 4;

  hbmScreen := TBitmap.Create;
  hbmScreen.Width := w;
  hbmScreen.Height := h;
  hbmScreen.PixelFormat := pf24bit;
  // Source DC:
  if ActiveRendering then
    _MakeCurrent(fRendererHandle);

  hdcScreen := wglGetCurrentDC();

  DesktopCanvas := TCanvas.Create;
  try
    DesktopCanvas.Handle := hdcScreen;
    DeskTopRect := Rect(0, 0, w, h);
    hbmScreen.Canvas.CopyRect(DeskTopRect, DeskTopCanvas, DeskTopRect);
  finally
    DesktopCanvas.Free;
  end;
  Result := Newimage(hbmScreen, AIsMONOCHROME);
  hbmScreen.Free;
end;
{var
  dimage: TDicomImageData;
  p1: Pointer;
  pb2, pb1, bits2: PByte;
  ALen, x, y: Integer;
  prgb1: pRGB;

  cx, cy: Integer;
  pPixelData: Pointer;

begin
  cx := (Width div 4)*4;
  cy := (Height div 4)*4;
  GetMem(pPixelData, cx * cy * 3);

  if ActiveRendering then
    _MakeCurrent(fRendererHandle);
  glReadPixels(0, 0, cx, cy, GL_RGB, GL_UNSIGNED_BYTE, pPixelData);

  Result := TDicomAttributes.Create;

  Result.AddVariant(8, $16, '1.2.840.10008.5.1.4.1.1.7'); //sc

  Result.AddVariant(8, 8, 'ORIGINAL/PRIMARY//0001');

  Result.Add(8, $20).AsDatetime[0] := now;
  Result.Add(8, $21).AsDatetime[0] := now;
  Result.Add(8, $23).AsDatetime[0] := now;
  Result.Add(8, $30).AsDatetime[0] := now;
  Result.Add(8, $33).AsDatetime[0] := now;
  //  Result.AddVariant($20, $13, AImageIndex);
  Result.AddVariant($28, $11, cx);
  Result.AddVariant($28, $10, cy);
  //    if not AIsMONOCHROME then
  if (not AIsMONOCHROME) then
  begin
    Result.AddVariant($28, $2, 3);
    Result.AddVariant($28, $4, 'RGB');
    ALen := cx * cy * 3;
  end
  else
  begin
    Result.AddVariant($28, $2, 1);
    Result.AddVariant($28, $4, 'MONOCHROME2');
    ALen := cx * cy;
  end;

  Result.AddVariant($28, $100, 8);
  Result.AddVariant($28, $101, 8);
  Result.AddVariant($28, $102, 7);
  Result.AddVariant($28, $103, 0);
  Result.AddVariant($28, $6, 0);

  if not AIsMONOCHROME then
  begin
    Getmem(p1, Alen);
    prgb1 := p1;
    for y := 0 to cy - 1 do // Iterate
    begin
      bits2 := pPixelData;
      inc(bits2, (cy - y - 1) * cx * 3);
      CopyMemory(prgb1, bits2, cx * 3);
      inc(prgb1, cx);
    end;
  end
  else
  begin
    Getmem(p1, Alen);
    pb1 := p1;
    for y := 0 to cy - 1 do // Iterate
    begin
      bits2 := pPixelData;
      inc(bits2, (cy - y - 1) * cx * 3);
      for x := 0 to cx - 1 do
      begin
        pb1^ := bits2^;
        inc(bits2, 3);
        inc(pb1);
      end;
    end; // for
  end;

  dimage := TDicomImageData.Create(ImplicitVRLittleEndian, p1, ALen);
  Result.Add(32736, 16).AddData(dimage);
end;}

procedure TCns3DRenderWindow.GetCroppingBox(var x1, x2, y1, y2, z1,
  z2: double);
begin
  if (fRendererHandle > 0) then
    _GetCroppingBox(fRendererHandle, x1, x2, y1, y2, z1, z2);
end;

procedure TCns3DRenderWindow.SetCroppingBox(x1, x2, y1, y2, z1,
  z2: double);
begin
  if (fRendererHandle > 0) then
    _SetCroppingBox(fRendererHandle, x1, x2, y1, y2, z1, z2);
end;

procedure TCns3DRenderWindow.ShowCropCube;
begin
  if ActiveRendering then
    _ShowCropCube(fRendererHandle);

end;

procedure TCns3DRenderWindow.SwitchOrientationWidget;
begin
  if ActiveRendering then
    _SwitchOrientationWidget(fRendererHandle);

end;

procedure TCns3DRenderWindow.AddOpacityPoint(x,
  y: Single);
begin
  if ActiveRendering then
    _SwitchOrientationWidget(fRendererHandle);
end;

procedure TCns3DRenderWindow.BestRendering();
begin
  if ActiveRendering then
    _BestRendering(fRendererHandle);
end;

procedure TCns3DRenderWindow.ClearOpacityArray();
begin
  if ActiveRendering then
    _ClearOpacityArray(fRendererHandle);
end;

procedure TCns3DRenderWindow.RemovalBones(x, y: double);
begin
  if ActiveRendering then
    _RemovalBones(fRendererHandle, x, y);
end;

procedure TCns3DRenderWindow.SetVolumeLUT(r, g,
  b: Pointer);
begin
  if ActiveRendering then
    _SetVolumeLUT(fRendererHandle, r, g, b);
end;

procedure TCns3DRenderWindow.SetWLWW(iwl, iww: Single);
begin
  fWindowLevel := iwl;
  fWindowWidth := iww;

  if ActiveRendering then
    _SetWLWW(fRendererHandle, iwl, iww);
end;

procedure TCns3DRenderWindow.LoadLutFromStream(AStream: TStream);
var
  n1: TDicomImagePalette;
begin
  if assigned(AStream) then
  begin
    n1 := TDicomImagePalette.Create;
    try
      AStream.Position := 0;

      AStream.Read(n1.FRedTable^, 256);
      AStream.Read(n1.FGreenTable^, 256);
      AStream.Read(n1.FBlueTable^, 256);

      SetVolumeLUT(n1.FRedTable, n1.FGreenTable, n1.FBlueTable);
    finally
      n1.free;
    end;
  end
  else
    SetVolumeLUT(nil, nil, nil);
end;

procedure TCns3DRenderWindow.Measure(x, y: Single);
begin
  if ActiveRendering then
    _Measure(fRendererHandle, x, y);
end;

procedure TCns3DRenderWindow.panX(x, y: Single);
begin
  if ActiveRendering then
    _panX(fRendererHandle, x, y);
end;

procedure TCns3DRenderWindow.yaw(degrees: Single);
begin
  if ActiveRendering then
    _yaw(fRendererHandle, degrees);
end;

procedure TCns3DRenderWindow.SetSeriesUID(const Value: string);
begin
  FSeriesUID := Value;
end;

{procedure TCns3DRenderWindow.SetDatasetIndex(const Value: Integer);
begin
  FDatasetIndex := Value;
end; }

procedure TCns3DRenderWindow.SetROI(AROIRect: TRect);
begin

end;

procedure TCns3DRenderWindow.SetRightMouseInteract(
  const Value: TMouseInteract);
begin
  FRightMouseInteract := Value;
end;

procedure TCns3DRenderWindow.SetIgnoreSelectRange(const Value: Boolean);
begin
  FIgnoreSelectRange := Value;
end;

procedure TCns3DRenderWindow.DrawMyOpenGLObject;
var
  currentPlane: TStructPlane3D;
begin
  currentPlane := DicomDatasets[0].Attributes.ImageData.planeForImage;
  {     _setPixOrigin(fRendererHandle, currentPlane.Position.x, currentPlane.Position.y, currentPlane.Position.y,
         currentPlane.XNormalVector.x, currentPlane.XNormalVector.y, currentPlane.XNormalVector.z,
         currentPlane.YNormalVector.x, currentPlane.YNormalVector.y, currentPlane.YNormalVector.z,
         n1.PixelSpaceZ, n1.ImageData[0].WindowCenter, n1.ImageData[0].WindowWidth);}
  glMatrixMode(GL_TEXTURE);
  glLoadIdentity();
  //glScalef(1, -1, 1);

  glBegin(GL_LINES);
  glColor3f(0.0, 1.0, 0.0);

  //glVertex3f(currentPlane.Position.x, currentPlane.Position.y, currentPlane.Position.z);
  //glVertex3f(currentPlane.Position.x + 200 * DicomDatasets[0].Attributes.ImageData.PixelSpacingX, currentPlane.Position.y + 200 * DicomDatasets[0].Attributes.ImageData.PixelSpacingX, currentPlane.Position.z);

  glVertex3f(0, 0, 0);
  glVertex3f(0 + 200 * DicomDatasets[0].Attributes.ImageData.PixelSpacingX, 0 + 200 * DicomDatasets[0].Attributes.ImageData.PixelSpacingX, 0);
  glEnd();
end;

initialization
  v_is_not_load_3d_dll:=True;
  {$IFDEF UseResV3MemoryDll}
  mp_MemoryModule := nil;
  mp_DllData := nil;
  m_DllDataSize := 0;
  {$ELSE}
  DllHandle := 0;
  {$ENDIF}
finalization
  {$IFDEF UseResV3MemoryDll}
  if m_DllDataSize > 0 then
    FreeMemory(mp_DllData);
  if mp_MemoryModule <> nil then
    BTMemoryFreeLibrary(mp_MemoryModule);

  {$ELSE}
  if DllHandle > 0 then
  begin
    FreeLibrary(DllHandle);
    {$IFDEF UseResV3DdllSaveToFile}
    if fileexists(DllFileName) then
    begin
      DeleteFile(DllFileName);
    end;
    {$ENDIF}
  end;
  DllHandle := 0;
  {$ENDIF}
end.

