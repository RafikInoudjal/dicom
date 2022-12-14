unit fSnimok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxSkinsCore, dxSkinsDefaultPainters, cxControls,
  cxSplitter, DCM32, Dcm_View, DCM_Attributes, DCM_Client, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxContainer, cxEdit, cxCheckBox, jpeg, DCM_DICT,
  dxSkinscxPCPainter, cxPC, cxGroupBox, cxTextEdit, cxMaskEdit, cxSpinEdit,
  cxLabel, DCM_UID, cxPropertiesStore, cxGraphics, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, ActnList, cxTrackBar, cxMemo,
  frxClass, Printers, V3DRenWindow, DCM_MPR, 
  dxSkinOffice2007Green, KXString, KXServerCore, DCM_Server,
  DCM_Connection, DateUtils, DCM_ImageData_Bitmap, dxSkinBlack, frxDBSet, DB,
  dxmdaset, Buttons, dxSkinOffice2007Black, Medotrade ;

//const
//  WM_DICOMVIEWERBASE = WM_USER + 3000;
//  WM_DICOM_CMOVE = WM_DICOMVIEWERBASE + 1;
//  WM_DICOM_CMOVE_FINISH = WM_DICOMVIEWERBASE + 2;

type                                     
  TfrmSnimok = class(TForm)
    CnsDMTable1: TCnsDMTable;
    OpenDialog1: TOpenDialog;
    OpenDialog2: TOpenDialog;
    cxPropertiesStore1: TcxPropertiesStore;
    paInstrument: TPanel;
    pcInstrument: TcxPageControl;
    tsImage: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    bLine: TcxButton;
    bLineHW: TcxButton;
    bLineH: TcxButton;
    bLineW: TcxButton;
    bPlot: TcxButton;
    bRect: TcxButton;
    bArea: TcxButton;
    bAngle: TcxButton;
    bCrossLine: TcxButton;
    bCircle: TcxButton;
    bDiagonal: TcxButton;
    bRectHW: TcxButton;
    bArrow: TcxButton;
    bTextLabel: TcxButton;
    bClearMeasures: TcxButton;
    cxGroupBox3: TcxGroupBox;
    bCursor: TcxButton;
    bHand: TcxButton;
    bZoom: TcxButton;
    cxGroupBox4: TcxGroupBox;
    cbInvert: TcxCheckBox;
    bLupaSelect: TcxButton;
    bScreenLupa: TcxButton;
    bColorTable: TcxButton;
    bFlipVer: TcxButton;
    bReset: TcxButton;
    bFlipHor: TcxButton;
    cbAtrib: TcxCheckBox;
    tsScreen: TcxTabSheet;
    cxSplitter1: TcxSplitter;
    paMain: TPanel;
    DicomMV: TDicomMultiViewer;
    paSnimki: TPanel;
    bBack: TcxButton;
    bForward: TcxButton;
    bNextImage: TcxButton;
    bPriorImage: TcxButton;
    al: TActionList;
    aPriorSeries: TAction;
    aNextSeries: TAction;
    aPriorImage: TAction;
    aNextImage: TAction;
    cxLabel3: TcxLabel;
    lSeries: TcxLabel;
    cxLabel4: TcxLabel;
    lImages: TcxLabel;
    sdFile: TSaveDialog;
    cxGroupBox5: TcxGroupBox;
    bSaveFile: TcxButton;
    bSaveFiles: TcxButton;
    bExport: TcxButton;
    bImport: TcxButton;
    OpenDialog3: TOpenDialog;
    bLoad: TcxButton;
    bRrotate: TcxButton;
    bLrotate: TcxButton;
    cxTabSheet1: TcxTabSheet;
    cxButton1: TcxButton;
    paImages: TPanel;
    cxSplitter2: TcxSplitter;
    DCMMultiImage1: TDCMMultiImage;
    aClose: TAction;
    gbCapture: TcxGroupBox;
    bCapture: TcxButton;
    bScanner: TcxButton;
    cxGroupBox6: TcxGroupBox;
    bPrint: TcxButton;
    aPrint: TAction;
    bPrintAll: TcxButton;
    aLoad: TAction;
    bSavePresentation: TcxButton;
    bApplyPresentation: TcxButton;
    SaveDialog1: TSaveDialog;
    OpenDialog4: TOpenDialog;
    PresentationStateDatasets: TCnsDMTable;
    cxGroupBox7: TcxGroupBox;
    b3D: TcxButton;
    pm3D: TPopupMenu;
    SurfaceRendering1: TMenuItem;
    VolumeRendering1: TMenuItem;
    N3DMIP1: TMenuItem;
    N3DEndoscopy1: TMenuItem;
    bMPR: TcxButton;
    pmMPR: TPopupMenu;
    N2D1: TMenuItem;
    N3D1: TMenuItem;
    cxGroupBox2: TcxGroupBox;
    seColumns: TcxSpinEdit;
    seRows: TcxSpinEdit;
    cxLabel1: TcxLabel;
    b2row2col: TcxButton;
    b2row3col: TcxButton;
    b3row3col: TcxButton;
    b1row1col: TcxButton;
    b1row2col: TcxButton;
    b2row1col: TcxButton;
    cxLabel2: TcxLabel;
    bApplyScreen: TcxButton;
    cxGroupBox8: TcxGroupBox;
    bStop: TcxButton;
    bForwards: TcxButton;
    seSpeed: TcxSpinEdit;
    cxLabel5: TcxLabel;
    frxReport1: TfrxReport;
    frxDB: TfrxDBDataset;
    dxMemData1: TdxMemData;
    dxMemData1Fimage: TBlobField;
    cxGroupBox9: TcxGroupBox;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton2: TcxButton;
    bCut: TcxButton;
    cxButton5: TcxButton;
    CnsDMTable2: TCnsDMTable;
    procedure bLineClick(Sender: TObject);
    procedure DicomMVAfterNewDrawObject(Sender: TObject;
      AObject: TDicomDrawObject);
    procedure DicomMVAfterObjectMove(Sender: TObject;
      AObject: TDicomDrawObject);
    procedure DicomMVAfterObjectSize(Sender: TObject;
      AObject: TDicomDrawObject);
    procedure bLineHClick(Sender: TObject);
    procedure bLineWClick(Sender: TObject);
    procedure bLineHWClick(Sender: TObject);
    procedure bPlotClick(Sender: TObject);
    procedure bAreaClick(Sender: TObject);
    procedure bAngleClick(Sender: TObject);
    procedure bCrossLineClick(Sender: TObject);
    procedure bCircleClick(Sender: TObject);
    procedure bArrowClick(Sender: TObject);
    procedure bTextLabelClick(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure bLupaSelectClick(Sender: TObject);
    procedure bScreenLupaClick(Sender: TObject);
    procedure bColorTableClick(Sender: TObject);
    procedure bFlipVerClick(Sender: TObject);
    procedure bFlipHorClick(Sender: TObject);
    procedure bExportClick(Sender: TObject);
    procedure bRectClick(Sender: TObject);
    procedure bApplyScreenClick(Sender: TObject);
    procedure bDiagonalClick(Sender: TObject);
    procedure bRectHWClick(Sender: TObject);
    procedure bHandClick(Sender: TObject);
    procedure bCursorClick(Sender: TObject);
    procedure bZoomClick(Sender: TObject);
    procedure bResetClick(Sender: TObject);
    procedure b1row1colClick(Sender: TObject);
    procedure b2row1colClick(Sender: TObject);
    procedure b1row2colClick(Sender: TObject);
    procedure b2row2colClick(Sender: TObject);
    procedure b2row3colClick(Sender: TObject);
    procedure b3row3colClick(Sender: TObject);
    procedure cbInvertPropertiesEditValueChanged(Sender: TObject);
    procedure cbAtribPropertiesEditValueChanged(Sender: TObject);
    procedure aPriorSeriesExecute(Sender: TObject);
    procedure aNextSeriesExecute(Sender: TObject);
    procedure aPriorImageExecute(Sender: TObject);
    procedure aNextImageExecute(Sender: TObject);
    procedure bSaveFileClick(Sender: TObject);
    procedure bSaveFilesClick(Sender: TObject);
    procedure bImportClick(Sender: TObject);
    procedure bRrotateClick(Sender: TObject);
    procedure bLrotateClick(Sender: TObject);
    procedure cxSplitter1BeforeClose(Sender: TObject; var AllowClose: Boolean);
    procedure cxSplitter1BeforeOpen(Sender: TObject; var NewSize: Integer;
      var AllowOpen: Boolean);
    procedure bCaptureClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure bScannerClick(Sender: TObject);
    procedure DCMMultiImage1MultiImageScrollTo(Sender: TObject;
      AIndex: Integer);
    procedure DCMMultiImage1Scroll(Sender: TObject);
    procedure aCloseExecute(Sender: TObject);
    procedure aPrintExecute(Sender: TObject);
    procedure bPrintAllClick(Sender: TObject);
    procedure aLoadExecute(Sender: TObject);
    procedure bSavePresentationClick(Sender: TObject);
    procedure bApplyPresentationClick(Sender: TObject);
    procedure SurfaceRendering1Click(Sender: TObject);
    procedure VolumeRendering1Click(Sender: TObject);
    procedure N3DMIP1Click(Sender: TObject);
    procedure N3DEndoscopy1Click(Sender: TObject);
    procedure N2D1Click(Sender: TObject);
    procedure N3D1Click(Sender: TObject);
    procedure bForwardsClick(Sender: TObject);
    procedure bStopClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnTESTClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bCutClick(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
  private
    frotalImage: integer;
    P_PID : string;
    FlipVer : Boolean;
    FlipHor : Boolean;
  public
    v_is_calibr,
    v_is_mark : boolean;
    //
    v_Host : string;
    v_Port : integer;
    v_CalledTitle,
    v_CallingTitle : string ;
    //
    procedure set_kalibr;
    procedure set_mark;
    procedure DoShowFormGET( const p_PATIENT : string;
                             const p_STUDYUID: string;
                             const p_VSTUDYID: string;
                             const p_SERIES  : string;
                             const p_ACCESSIONNUMBER : string;
                             const sLevel : string;
                             const p_key : boolean = False
                            );
    procedure DoShowForm;
    function IsRunApp(const AstrParam: string): Boolean;
    procedure JoinExtension();
  end;

const funcline    = 4;
      c_mn_log_file = 'dicom.log';
      v_debug = False;
      c_events_log = 'dicom_events.log';

var
  frmSnimok: TfrmSnimok;

  func    : byte;

procedure ImgsUpd;

implementation

uses CnsJpgGr, CnsTifGr, CnsPngGr, CnsPcxGr, CnsPpmGr, {fMain,} fHeader, CnsTgaGr,
     DCM_MpegWrite, Save2MpegStatus, Dicom2AVIStatus, SurfaceRenderEx, VolumeRenderingEx,
     MprUnit, Mpr3DUnit, CmnUnit, DICOM_CMN, UnFrmProgressBar, UnKalibr, Math,
     Registry, ShlObj, StrUtils; //  , fMain

const
  LOCAL_URL_PROTOCOL_NAME = 'mdicom';
  
resourcestring
  URL_PROTOCOL_IS_NOT_VALID =
      '????????? ?? ??????????? DICOM-??????? ?? ????? ???? ????????!' +
      #13#10 + '?????? ? ??????????? ?? ?????!';
  URL_PARAM_IS_NOT_VALID =
      '????????? ?? ??????????? DICOM-??????? ?? ????? ???? ????????!' +
      #13#10 + '??????? ????????? ????????!';

{$R *.dfm}
{$R MyPic.RES}    // ????-???????? ?? ????????????

{ TfrmSnimok }

procedure TfrmSnimok.DoShowForm;
begin
  pcInstrument.ActivePageIndex := 0;
  // ??????? ?? ??? ????????? ?? ???? ????? ??????????????? - ?? ???????
  Position := poDesigned;
end;

procedure TfrmSnimok.JoinExtension;
const
  KEY_ICON_NAME = 'mdicom\DefaultIcon';
  KEY_APP_CMD = 'mdicom\shell\open\command';
var
  strKeyValue: string;
  bChangeNotify: Boolean;
begin
  with TRegIniFile.Create('') do
    begin
      try
        RootKey := HKEY_CLASSES_ROOT;
        if not KeyExists(LOCAL_URL_PROTOCOL_NAME) then
          begin
            // ???????? ??????? ?????????
            bChangeNotify := CreateKey(LOCAL_URL_PROTOCOL_NAME);
            if bChangeNotify then
              begin
                strKeyValue := 'URL:mdicom Protocol';
                WriteString(LOCAL_URL_PROTOCOL_NAME, '', strKeyValue);
                WriteString(LOCAL_URL_PROTOCOL_NAME, 'URL Protocol', '');
              end;

            // ???????? ???????, ??? ????????????? ??????.
            bChangeNotify := CreateKey(KEY_ICON_NAME);
            if bChangeNotify then
              begin
                strKeyValue := Application.ExeName + ',0';
                WriteString(KEY_ICON_NAME, '', strKeyValue);
              end;

            // ?????????? ????? ??? ??????????.
            bChangeNotify := CreateKey(KEY_APP_CMD);
            if bChangeNotify then
              begin
                strKeyValue := Application.ExeName + ' %1';
                WriteString(KEY_APP_CMD, '', strKeyValue);
              end;

            // ?????????? ???????, ? ???????? ????????? ? ?????????????? ??????.
            if bChangeNotify then
              begin
                SHChangeNotify (SHCNE_ASSOCCHANGED, SHCNF_IDLIST, nil, nil);
              end;
          end;
      finally
        Free;
      end;
  end;
end;

procedure kb_ini;
begin
  frmSnimok.v_is_calibr:=False;
  frmSnimok.v_is_mark:=False;
end;

procedure ImgsUpd;
begin
  try
    frmSnimok.DicomMV.Update;
    frmSnimok.DCMMultiImage1.Update;
    frmSnimok.DCMMultiImage1.Repaint;
    frmSnimok.DCMMultiImage1.UpdateScrollBars;
    frmSnimok.lImages.Caption := IntToStr(frmSnimok.DicomMV.DicomDatasets.Count);
    frmSnimok.lSeries.Caption := IntToStr(frmSnimok.DicomMV.DicomDatasets.GetSeriesCount);
  except
  end;
  Application.ProcessMessages;
  Sleep(1);
end;

procedure TfrmSnimok.bArrowClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.ActiveView.LeaderMouserInspect := ldmiArrow;
end;

procedure TfrmSnimok.bTextLabelClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.ActiveView.LeaderMouserInspect := ldmiText;
end;

procedure TfrmSnimok.btnTESTClick(Sender: TObject);
begin
  kb_ini;
  frmSnimok.v_is_calibr:=True;
  DicomMV.ActiveView.LeaderMouserInspect := ldmiRuler;
end;

procedure TfrmSnimok.cbAtribPropertiesEditValueChanged(Sender: TObject);
begin
  kb_ini;
  DicomMV.ActiveView.DisplayLabel := cbAtrib.Checked;
end;

procedure TfrmSnimok.cbInvertPropertiesEditValueChanged(Sender: TObject);
begin
  kb_ini;
  DicomMV.Negative(cbInvert.Checked);
end;

procedure TfrmSnimok.cxButton12Click(Sender: TObject);
begin
  kb_ini;
  DicomMV.DeleteLabel;
end;

procedure TfrmSnimok.cxButton1Click(Sender: TObject);
var v_is_add : Boolean;
begin
  kb_ini;
  v_is_add:=False;
  Application.CreateForm(TfrmHeader, frmHeader);
  try
    // FInfoAttributes
    if DicomMV.DicomDatasets.Item[DicomMV.ActiveView.AttributesIndex].InfoAttributes.Count=0 then
    begin
      v_is_add:=True;
      DicomMV.DicomDatasets.Item[DicomMV.ActiveView.AttributesIndex].PrepareInfoAttributes(
       DicomMV.DicomDatasets.Item[DicomMV.ActiveView.AttributesIndex].Attributes.ImageData.ImageData[0].TransferSyntax
       );
    end;
    frmHeader.attr_tree_crt( DicomMV.DicomDatasets.Item[DicomMV.ActiveView.AttributesIndex].InfoAttributes );
    frmHeader.attr_tree_crt( DicomMV.DicomDatasets.Item[DicomMV.ActiveView.AttributesIndex].Attributes );
    frmHeader.ShowModal;
  //  DicomMV.DicomDatasets.Item[DicomMV.ActiveView.AttributesIndex].Attributes.ListAttrinute('', frmHeader.memHead.Lines);
    
  finally
    frmHeader.Free;
    if v_is_add then DicomMV.DicomDatasets.Item[DicomMV.ActiveView.AttributesIndex].InfoAttributes.Clear;
  end;
end;

procedure TfrmSnimok.cxButton5Click(Sender: TObject);
var i: Integer;
begin
  kb_ini;
  try
    OpenDialog3.InitialDir := ExtractFileDir(Application.ExeName);
    if OpenDialog3.Execute then
      begin
        Screen.Cursor := crHourGlass;
        for i := 0 to OpenDialog3.Files.Count - 1 do
          begin
            Application.CreateForm(TfrmHeader, frmHeader);
            try
              CnsDMTable2.LoadFromFile(OpenDialog3.Files[i], true);

              frmHeader.attr_tree_crt( CnsDMTable2.Item[0].Attributes );

            //  CnsDMTable2[0].Attributes.ListAttrinute('', frmHeader.memHead.Lines);
              frmHeader.ShowModal;
            finally
              CnsDMTable2.Clear;
              frmHeader.Free;
            end;
          end;
      end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmSnimok.bScannerClick(Sender: TObject);
begin
  kb_ini;
  CnsDMTable1.ScanImage;
  DicomMV.Update;
end;

procedure TfrmSnimok.bCaptureClick(Sender: TObject);
begin
  kb_ini;
  CnsDMTable1.CaptureImage(1);
  DicomMV.Update;
end;

procedure TfrmSnimok.cxSplitter1BeforeClose(Sender: TObject;
  var AllowClose: Boolean);
begin
  paInstrument.Visible := False;
end;

procedure TfrmSnimok.cxSplitter1BeforeOpen(Sender: TObject;
  var NewSize: Integer; var AllowOpen: Boolean);
begin
  paInstrument.Visible := True;
end;

procedure TfrmSnimok.bRrotateClick(Sender: TObject);
begin
  kb_ini;
  if CnsDMTable1.Count > 0 then
  begin
    frotalImage := (frotalImage + 1) mod 4;
    DicomMV.rotalImage(frotalImage);
  end;
end;

procedure TfrmSnimok.bLrotateClick(Sender: TObject);
begin
  kb_ini;
  if CnsDMTable1.Count > 0 then
  begin
    frotalImage := (frotalImage - 1 + 4) mod 4;
    DicomMV.rotalImage(frotalImage);
  end;
end;

procedure TfrmSnimok.bSaveFilesClick(Sender: TObject);
var i : Integer;
    sFileName : string;
    sDir : string;
    y, m, d: Word;
begin
  kb_ini;
  try
    Screen.Cursor := crHourGlass;
    DecodeDate(StrToDateTime(DicomMV.ActiveView.Attributes.GetString($8, $20)), y, m, d);
    sDir := ExtractFilePath(Application.ExeName)+IntToStr(y) + '\' + IntToStr(m) + '\' + IntToStr(d) + '\' + P_PID + '\';
   { if not DirectoryExists(sDir) then
      if not ForceDirectories(sDir) then
      begin   }
        sdFile.Execute;
        sDir:= ExtractFilePath(sdFile.FileName);
     // end;
      //  raise Exception.Create('?? ??????? ??????? ??????????? ' + sDir);

    if assigned(DicomMV.DicomDatasets) and (DicomMV.DicomDatasets.Count > 0) then
      begin
        for i := 0 to DicomMV.DicomDatasets.Count - 1 do
          begin
            sFileName := StringReplace(P_PID, '/', '_', [rfReplaceAll, rfIgnoreCase])+'_'+IntToStr(i)+'.dcm';
            DicomMV.DicomDatasets.Item[0].SaveToFile(sDir+'\'+sFileName, True, 8193, 100);
          end;
      end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmSnimok.bSavePresentationClick(Sender: TObject);
var das: TDicomDataset;
begin
  kb_ini;
  SaveDialog1.Filter := 'Presentation State File (*.pre)|*.pre';
  SaveDialog1.InitialDir := ExtractFilePath(Application.ExeName);
  if SaveDialog1.Execute then
    begin
      das := DicomMV.ActiveView.Attributes.ImageData.CreatePresentationState;
      das.SaveToFile(SaveDialog1.FileName, true, ExplicitVRLittleEndian, 100);
      das.Free;
    end;
end;

procedure TfrmSnimok.bSaveFileClick(Sender: TObject);
begin
  kb_ini;
  if assigned(DicomMV.DicomDatasets) and (DicomMV.DicomDatasets.Count > 0) then
  begin
    sdFile.FileName := StringReplace(P_PID, '/', '_', [rfReplaceAll, rfIgnoreCase]);
    if sdFile.Execute then
    begin
//      DicomMV.DicomDatasets.Item[DicomMV.ActiveView.AttributesIndex].SaveToFile(sdFile.FileName, True, 8193, 100);
      DicomMV.DicomDatasets.Item[DicomMV.ActiveView.AttributesIndex].SaveToFile(sdFile.FileName, True, 8193, 100);
    end;
  end;
end;

procedure TfrmSnimok.bApplyPresentationClick(Sender: TObject);
begin
  kb_ini;
//  OpenDialog4.Filter := 'Presentation State File (*.pre)|*.pre';
  OpenDialog4.InitialDir := ExtractFilePath(Application.ExeName);
  if OpenDialog4.Execute then
    begin
      PresentationStateDatasets.LoadFromFile(OpenDialog4.FileName);
      CnsDMTable1.SetPresentationSates(PresentationStateDatasets);
      DicomMV.ActiveView.Update;
    end;
end;

procedure TfrmSnimok.bApplyScreenClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.Columns := seColumns.Value;
  DicomMV.Rows := seRows.Value;
end;

procedure TfrmSnimok.bLupaSelectClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.ActiveView.LeftMouseInteract := miSelectZoom;
end;

procedure TfrmSnimok.bScreenLupaClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.ActiveView.LeftMouseInteract := miMagnifier;
end;

procedure TfrmSnimok.bStopClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.ActiveView.CineActive := False;
end;

procedure TfrmSnimok.bColorTableClick(Sender: TObject);
var
  stm1: TFileStream;
begin
  kb_ini;
  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
  if OpenDialog1.Execute then
  begin
    stm1 := TFileStream.Create(OpenDialog1.FileName, fmOpenRead);
    DicomMV.ActiveView.SetLut(stm1);
    stm1.Free;
  end;
end;

procedure TfrmSnimok.bFlipVerClick(Sender: TObject);
begin
  kb_ini;
  if FlipVer = False then
    begin
      DicomMV.SetVerFlip(True);
      FlipVer := True;
    end else
    begin
      DicomMV.SetVerFlip(False);
      FlipVer := False;
    end;
end;

procedure TfrmSnimok.bForwardsClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.ActiveView.CineActive := True;
  DicomMV.ActiveView.CineSpeed := seSpeed.Value;
  DicomMV.ActiveView.CineDirection := False;
end;

procedure TfrmSnimok.aCloseExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmSnimok.aLoadExecute(Sender: TObject);
var i: Integer;
begin
  kb_ini;
  try
    OpenDialog3.InitialDir := ExtractFileDir(Application.ExeName);
    if OpenDialog3.Execute then
      begin
        Screen.Cursor := crHourGlass;
        for i := 0 to OpenDialog3.Files.Count - 1 do
          begin
            CnsDMTable1.LoadFromFile(OpenDialog3.Files[i], true);
          end;
      end;
    DicomMV.Update;
    DCMMultiImage1.UpdateScrollBars;
    lImages.Caption := IntToStr(DicomMV.DicomDatasets.Count);
    lSeries.Caption := IntToStr(DicomMV.DicomDatasets.GetSeriesCount);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmSnimok.aNextImageExecute(Sender: TObject);
begin
  DicomMV.ActiveView.Next;
end;

procedure TfrmSnimok.aNextSeriesExecute(Sender: TObject);
begin
  DicomMV.NextSeries;
end;

procedure TfrmSnimok.aPrintExecute(Sender: TObject);
var myView : TCustomDicomImage;
    bm1 : TBitmap ;
    MyMem : tmemorystream;
begin  // ??????  image1.Canvas.TextOut(10,10,Label1.Caption);
  kb_ini;
  MyMem := tmemorystream.Create;
  bm1 := TBitmap.Create;
  try
    myView := DicomMV.ActiveView; // DicomMV.ActiveView.Attributes.ImageData
    DCM_ImageData_Bitmap.AssignToBitmap(myView.Attributes.ImageData, bm1,False);
    bm1.Canvas.font.Color  := clWhite;
    bm1.Canvas.font.size   := 50;
    bm1.Canvas.font.name   := 'Tahoma';
    bm1.Canvas.Brush.Color := clBlack;
    bm1.Canvas.TextOut( 5, 5, myView.Attributes.GetString( dPatientName ) );
    with TJpegGraphic.Create do
    try
      assign(bm1);
      SaveToStream(MyMem);
      dxMemData1.Open;
      dxMemData1.Append;
      TBlobField(dxMemData1.FieldbyName('Fimage')).loadFromStream(MyMem);
      dxMemData1.Post;
      dxMemData1.First;
      frxReport1.ShowReport;
      dxMemData1.Close;
    finally
      Free;
    end;
  finally
    MyMem.Free;
    bm1.Free;
  end;
{  Printer.BeginDoc;
  try
    rc.Left := 1;
    rc.Top := 1;
    rc.Right := 1300;
    rc.Bottom := 2100;
    CnsDMTable1.PrintImage(Printer.Canvas, rc, DicomMV.CurrentImage, false);
  finally
    Printer.EndDoc;
  end;  }
end;

procedure TfrmSnimok.aPriorImageExecute(Sender: TObject);
begin
  DicomMV.ActiveView.Prior;
end;

procedure TfrmSnimok.aPriorSeriesExecute(Sender: TObject);
begin
  DicomMV.PriorSeries;
end;

procedure TfrmSnimok.b1row1colClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.Rows := 1;
  DicomMV.Columns := 1;
end;

procedure TfrmSnimok.b1row2colClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.Rows := 1;
  DicomMV.Columns := 2;
end;

procedure TfrmSnimok.b2row1colClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.Rows := 2;
  DicomMV.Columns := 1;
end;

procedure TfrmSnimok.b2row2colClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.Rows := 2;
  DicomMV.Columns := 2;
end;

procedure TfrmSnimok.b2row3colClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.Rows := 2;
  DicomMV.Columns := 3;
end;

procedure TfrmSnimok.b3row3colClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.Rows := 3;
  DicomMV.Columns := 3;
end;

procedure TfrmSnimok.bFlipHorClick(Sender: TObject);
begin
  kb_ini;
  if FlipHor = False then
    begin
      DicomMV.SetHozFlip(True);
      FlipHor := True;
    end else
    begin
      DicomMV.SetHozFlip(False);
      FlipHor := False;
    end;
end;

procedure TfrmSnimok.bLineClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.ActiveView.LeaderMouserInspect := ldmiRuler;
end;

procedure TfrmSnimok.bExportClick(Sender: TObject);
const
  filterarray: array[0..8] of string = ('jpg', 'bmp', 'tif', 'Tga', 'Png', 'Pcx', 'Ppm', 'mpg', 'avi');
  QUANTCODE: array[0..7] of integer = (1, 2, 3, 4, 6, 8, 12, 16);
procedure SaveToMpeg(Afilename: string);
var i, k: integer;
    fs: TFileStream;
    mpg: TMpeg;
    DA: TDicomAttributes;
    bm, bm1: TBitmap;
    f1: TConvert2MpegStatusForm;
begin
  k := 32;
  f1 := TConvert2MpegStatusForm.Create(self);
  DA := DicomMV.ActiveView.Attributes;
  mpg := TMpeg.Create;
  bm := TBitmap.Create;
  bm1 := TBitmap.Create;
  if (DA.ImageData.Width mod k) <> 0 then
    bm1.Width := (DA.ImageData.Width div k + 1) * k
  else
    bm1.Width := DA.ImageData.Width;
  if (DA.ImageData.Height mod k) <> 0 then
    bm1.Height := (DA.ImageData.Height div k + 1) * k
  else
    bm1.Height := DA.ImageData.Height;
  bm1.PixelFormat := pf24bit;
  fs := TFileStream.Create(Afilename, fmcreate);
  try
    mpg.Open(bm1.Width, bm1.Height, QUANTCODE[0], 1000 div 25, bf25hz, fs);
    f1.ProgressBar1.Max := DA.ImageData.FrameCount - 1;
    f1.Show;
    if DA.ImageData.FrameCount > 1 then
      begin
        for i := 0 to DA.ImageData.FrameCount - 1 do
          begin
            if f1.Canceled then
              break;
            DA.ImageData.CurrentFrame := i;
            DCM_ImageData_Bitmap.AssignToBitmap(da.ImageData, bm);
            bm1.Canvas.Draw((bm1.Width - bm.Width) div 2, (bm1.height - bm.height) div 2, bm);
            mpg.AddIImage(bm1);
            f1.ProgressBar1.Position := i;
          end;
      end else
      begin
        DCM_ImageData_Bitmap.AssignToBitmap(da.ImageData, bm);
        bm1.Canvas.Draw((bm1.Width - bm.Width) div 2, (bm1.height - bm.height) div 2, bm);
        mpg.AddIImage(bm1);
      end;
  finally
    mpg.Close;
    fs.Free;
    mpg.Free;
    bm.Free;
    bm1.Free;
    f1.Free;
  end;
end;
procedure SaveToAVI(Afilename: string);
var fx1: TDicom2AVIStatusForm;
    DA: TDicomAttributes;
    i: integer;
    bm: TBitmap;
begin
  fx1 := TDicom2AVIStatusForm.Create(self);
  DA := DicomMV.ActiveView.Attributes;
  bm := TBitmap.Create;
  DA.ImageData.CurrentFrame := 0;
  DCM_ImageData_Bitmap.AssignToBitmap(da.ImageData, bm);
  fx1.Width := bm.Width;
  fx1.Height := bm.Height;
  fx1.Filename := afilename;
  fx1.CreateAVIFile;
  fx1.ProgressBar1.Max := DA.ImageData.FrameCount - 1;
  fx1.Show;
  for i := 0 to DA.ImageData.FrameCount - 1 do
    begin
      DA.ImageData.CurrentFrame := i;
      DCM_ImageData_Bitmap.AssignToBitmap(da.ImageData, bm);
      fx1.AddAVIFrame(bm);
      fx1.ProgressBar1.Position := i;
    end;
  fx1.CloseAVIFile;
  fx1.Free;
  bm.Free;
end;
var
  filename1: string;
  dialog1: TSaveDialog;
  myView: TCustomDicomImage;
  bm1: TBitmap;
begin
  kb_ini;
  if not assigned(DicomMV.ActiveView.Attributes) then
    exit;
  dialog1 := TSaveDialog.Create(self);
  dialog1.Title := 'export dicom image to';
  dialog1.Filter := 'JPEG Image File (*.jpg)|*.jpg' +
                    '|Bitmaps (*.bmp)|*.bmp|TIFF Image (*.tif)|*.tif' +
                    '|Tga (*.Tga)|*.Tga|Png Image (*.Png)|*.Png' +
                    '|Pcx (*.Pcx)|*.Pcx|Ppm Image (*.Ppm)|*.Ppm' +
                    '|MPEG (*.mpg)|*.mpg|AVI (*.avi)|*.avi';
  myView := DicomMV.ActiveView;
  bm1 := TBitmap.Create;
  DCM_ImageData_Bitmap.AssignToBitmap(myView.Attributes.ImageData, bm1,False);

  try
    if dialog1.Execute then
      begin
        FileName1 := Dialog1.FileName;
        if Pos('.', filename1) <= 0 then
          filename1 := filename1 + '.' + filterarray[dialog1.FilterIndex - 1];
        case dialog1.FilterIndex - 1 of
        1:
          begin
            bm1.SaveToFile(FileName1);
          end;
        0: //jpeg
          begin
            with TJpegGraphic.Create do
            try
              assign(bm1);
              SaveToFile(filename1);
            finally
              Free;
            end;
          end;
        2: //tif
          begin
            with TTiffGraphic.Create do
            try
              assign(bm1);
              SaveToFile(filename1);
            finally
              Free;
            end;
          end;
        3: //tga
          begin
            with TTgaGraphic.Create do
            try
              assign(bm1);
              SaveToFile(filename1);
            finally
              Free;
            end;
          end;
        4: //png
          begin
            with TPngGraphic.Create do
            try
              assign(bm1);
              SaveToFile(filename1);
            finally
              Free;
            end;
          end;
        5: //pcx
          begin
            with TPcxGraphic.Create do
            try
              assign(bm1);
              SaveToFile(filename1);
            finally
              Free;
            end;
          end;
        6: //ppm
          begin
            with TPpmGraphic.Create do
            try
              assign(bm1);
              SaveToFile(filename1);
            finally
              Free;
            end;
          end;
        7: //mpg
          begin
            SaveToMpeg(filename1);
          end;
        8: //mpg
          begin
            SaveToAVI(filename1);
          end;
      end;
    end;
  finally
    bm1.Free;
    dialog1.Free;
  end;
end;

procedure TfrmSnimok.bRectClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.ActiveView.LeaderMouserInspect := ldmiROI_Rect;
end;

procedure TfrmSnimok.bDiagonalClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.ActiveView.LeaderMouserInspect := ldmiReferenceLine;
end;

procedure TfrmSnimok.bRectHWClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.ActiveView.LeaderMouserInspect := ldmiSelectRect;
end;

procedure TfrmSnimok.bZoomClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.ActiveView.LeftMouseInteract := miZoom;
end;

procedure TfrmSnimok.bHandClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.ActiveView.LeftMouseInteract := miScroll;
end;

procedure TfrmSnimok.bImportClick(Sender: TObject);
var i: Integer;
    dds: TDicomDataset;
    str:string;
begin
  kb_ini;
  CnsDMTable1.Clear;
  if OpenDialog3.Execute then
  begin
    for i := 0 to OpenDialog3.Files.Count - 1 do
    begin
      dds := TDicomDataset.Create;
      CnsDMTable1.ImportImageEx(dds.Attributes, OpenDialog3.Files[i], true);
      CnsDMTable1.add(dds);
      str := ExtractFileName(OpenDialog3.Files[i]);
      str := Copy(str, 1, Pos('.',str)-1);
      dds.Attributes.AddVariant($20,$13,StrToInt(str));
    end;
  end;
  CnsDMTable1.SortDatasets(dsbImageNumber);
  DicomMV.Update;
end;

procedure TfrmSnimok.bCursorClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.ActiveView.LeftMouseInteract := miNone;
end;

{
procedure sav_attr_to_arr ( p_attr : TDicomAttributes; p_arr : array of TDICOMARRAY );
begin

end; }

procedure TfrmSnimok.bCutClick(Sender: TObject);
var bmp1, bm1 : TBitmap;
    d1, d_old: TDicomAttributes;
    ds1: TDicomDataset;
    i : Integer;
    v_Group, v_Element : Word;
    v_Item : TDicomAttribute;
const c_filename = 'c:\1_bmp.bmp';
      c_jpeg_filename = 'c:\1_jpg.jpg';
begin // ???????

//      DicomMV.DicomDatasets.Item[DicomMV.ActiveView.AttributesIndex].SaveToFile(sdFile.FileName, True, 8193, 100);

    {
  PrivateTransferSyntax = 8192;
  ImplicitVRLittleEndian = 8193;
  ExplicitVRLittleEndian = 8194;
  ExplicitVRBigEndian = 8195;
  RLELossless = 8198;
  //JPEG_1 = 8196;
  JPEGBaseline = 8196;
  //JPEG_14_SelectionValue1 = 8197;
  JPEGLossless = 8197;
  JPEGExtendedProcess_2_4 = 8199;
  JPEG_3_5 = 8200;
  JPEG_6_8 = 8201;
  JPEG_7_9 = 8202;
  JPEG_10_12 = 8203;
  JPEG_11_13 = 8204;
  JPEGLossless14 = 8205;
  JPEGLossless15 = 8206;
  JPEG_16_18 = 8207;
  JPEG_17_19 = 8208;
  JPEG_20_22 = 8209;
  JPEG_21_23 = 8210;
  JPEG_24_26 = 8211;
  JPEG_25_27 = 8212;
  JPEG_28 = 8213;
  JPEG_29 = 8214;
  //$IFDEF ECLZLIBTransferSyntax
  zlibFastestTransferSyntax = 8215;
  ppmFastestTransferSyntax = 8216;
  bzipFastestTransferSyntax = 8217;

  zlibMaxTransferSyntax = 8222;
  ppmMaxTransferSyntax = 8223;
  bzipMaxTransferSyntax = 8224;

  zlibNormalTransferSyntax = 8225;
  ppmNormalTransferSyntax = 8226;
  bzipNormalTransferSyntax = 8227;
//  $ENDIF
  JPEGLossless80 = 8218;
  JPEGNearLossless81 = 8219;
  JPEG2000Irreversible = 8220; //.90 lossless
  JPEG2000Reversible = 8221; //.91 losy
    }

    DicomMV.DicomDatasets.Item[DicomMV.ActiveView.AttributesIndex].SaveToFile('c:\RLELossless.dcm', True, RLELossless, 100);

    i:=0;

 { bmp1 := TBitmap.Create;
  bm1 := TBitmap.Create;
  try
    d_old := DicomMV.DicomDatasets.Item[DicomMV.ActiveView.AttributesIndex].Attributes;
    DCM_ImageData_Bitmap.AssignToBitmap( d_old.ImageData, bm1,False);
    bm1.SaveToFile(c_filename);

// jpeg
    ds1 := TDicomDataset.Create;
    CnsDMTable1.ImportImageEx(ds1.Attributes, c_jpeg_filename, true);   }

   { for i := 0 to d_old.Count - 1 do
    begin
      v_Group := d_old.ItemByIndex[i].Group;
      v_Element := d_old.ItemByIndex[i].Element;
      v_Item := ds1.Attributes.Item[v_Group,v_Element];
      if ( ( not (v_Group=$7FE0) and (v_Element=$0010)) and
 //          (v_Item=nil) 
         )
      then  // $7FE0, $0010    //  PixelData
      try
        ds1.Attributes.Remove( v_Group, v_Element );
        ds1.Attributes.AddVariant( v_Group, v_Element, d_old.ItemByIndex[i].GetAsStrings );
      except
        MessageDlg('Group='+inttostr(v_Group)+' Element='+inttostr(v_Element), mtError, [mbOK], 0);
      end;
    end;
    ds1.Attributes.Sort; }

 //   CnsDMTable1.add(ds1);

// bmp
//    bmp1.LoadFromFile(c_filename);
//    d1 := NewImage(bmp1, false);
    // ????????? ????????
{    for i := 0 to d1.Count - 1 do
    begin
      d1.Remove( d_old.ItemByIndex[i].Group, d_old.ItemByIndex[i].Element );
      d1.AddVariant( d_old.ItemByIndex[i].Group, d_old.ItemByIndex[i].Element, d_old.ItemByIndex[i].GetAsStrings );
    end;
    d1.Sort;
    if assigned(d1) then
    begin
      ds1 := TDicomDataset.Create(d1);
      CnsDMTable1.Add(ds1);
      DicomMV.Update;
    end; }
{  finally
    bmp1.Free;
    bm1.Free;
  end;  }



 // frmSnimok.v_is_mark:=True;
 // DicomMV.ActiveView.LeaderMouserInspect := ldmiPolyonA;
  //PolyPolygon
end;

procedure TfrmSnimok.set_mark;
begin

//   PolyPolygon






end;

procedure TfrmSnimok.bResetClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.ActiveView.ResetImage;
end;

procedure TfrmSnimok.bLineHClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.ActiveView.LeaderMouserInspect := ldmiRulerVer;
end;

procedure TfrmSnimok.bLineWClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.ActiveView.LeaderMouserInspect := ldmiRulerHiz;
end;

procedure TfrmSnimok.bLineHWClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.ActiveView.LeaderMouserInspect := ldmiRulerVerHiz;
end;

procedure TfrmSnimok.bPlotClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.ActiveView.LeaderMouserInspect := ldmiPoly;
end;

procedure TfrmSnimok.set_kalibr;
var das0{, das1, das2}: TDicomAttributes;
    da1{, da2}: TDicomAttribute;
    v_DO : TDicomDrawObject;
    v_len, v_x, v_y : Extended;
begin // myTEST
    // ?????? ??????? PS
    if DicomMV.ActiveView.Attributes.ImageData.DrawObjects.NewDrawObject <> nil then
    begin
      // ????????? ????? ? ????????
      v_DO := DicomMV.ActiveView.Attributes.ImageData.DrawObjects.NewDrawObject;
      v_x  := abs( v_DO.X[0] - v_DO.X[1] );   // SCRX
      v_y  := abs( v_DO.Y[0] - v_DO.Y[1] );   // SCRY
      v_len:= Sqrt( v_x*v_x + v_y*v_y );
      Application.CreateForm(TfrmKalibr, frmKalibr);
      try
        frmKalibr.v_scale := DicomMV.DicomDatasets.Item[DicomMV.ActiveView.AttributesIndex].Attributes.ImageData.PixelSpacingY;
        frmKalibr.cxTextEdit1.Text := FloatToStr ( frmKalibr.v_scale );
        frmKalibr.v_length_line := v_len;
        // ??????? ????? ??? ????? ?????????? ??????????
        frmKalibr.ShowModal;
        if frmKalibr.ModalResult=mrOk then
        begin
          // ?????????? ????????? ??? ??????
          das0 := DicomMV.DicomDatasets.Item[DicomMV.ActiveView.AttributesIndex].Attributes;
          da1 := das0.Add($28, $30);
          da1.AsFloat[0] := frmKalibr.v_scale/100;
          da1.AsFloat[1] := frmKalibr.v_scale/100;
          das0.Sort;
          DicomMV.DicomDatasets.Item[DicomMV.ActiveView.AttributesIndex].Attributes.ImageData.UpdateCood(da1.AsFloat[1],da1.AsFloat[0]);

          DicomMV.DicomDatasets.Item[DicomMV.ActiveView.AttributesIndex].Attributes.ImageData.PixelSpacingY := da1.AsFloat[0] ;  //10
          DicomMV.DicomDatasets.Item[DicomMV.ActiveView.AttributesIndex].Attributes.ImageData.PixelSpacingX := da1.AsFloat[1] ; //10
          DicomMV.UpdateView;
          DicomMV.Update;
        end;
      finally
        frmKalibr.Free;
      end; 
      // delete line
      DicomMV.ActiveView.Attributes.ImageData.DrawObjects.RemoveSelectedDrawObject;      
    end else
    begin
      MessageDlg('??? ??????????? ????????? ', mtWarning, [mbOK], 0);
    end;
end;

procedure TfrmSnimok.bPrintAllClick(Sender: TObject);
var i: Integer;
var //rc: TRect;
    myView : TDicomImage;   // TCustomDicomImage
    bm1 : TBitmap ;
    MyMem : tmemorystream;
begin
  kb_ini;
{    rc.Left := 0;  // !!! ?????????
    rc.Top := 0;
    rc.Right := 1300;
    rc.Bottom := 2100;
    i := 1; }
    if CnsDMTable1.Count > 0 then
    begin
      dxMemData1.Close;
      dxMemData1.Open;
      for I := 0 to DicomMV.DicomDatasets.Count - 1 do
      begin
        MyMem := tmemorystream.Create;
        bm1 := TBitmap.Create;
        try
          myView := DicomMV.DicomDatasets.Item[i].Attributes.ImageData;
          DCM_ImageData_Bitmap.AssignToBitmap(myView.Attributes.ImageData, bm1,False);
          bm1.Canvas.font.Color  := clWhite;
          bm1.Canvas.font.size   := 50;
          bm1.Canvas.font.name   := 'Tahoma';
          bm1.Canvas.Brush.Color := clBlack;
          bm1.Canvas.TextOut( 5, 5, myView.Attributes.GetString( dPatientName ) );
          with TJpegGraphic.Create do
          try
            assign(bm1);
            SaveToStream(MyMem);
            dxMemData1.Append;
            TBlobField(dxMemData1.FieldbyName('Fimage')).loadFromStream(MyMem);
            dxMemData1.Post;
          finally
            Free;
          end;
        finally
          MyMem.Free;
          bm1.Free;
        end;         // dxMemData1.Recordcount;
      end;
      dxMemData1.First;
      frxReport1.ShowReport;
      dxMemData1.Close;
{      CnsDMTable1.PrintImages(Printer.Canvas,
                              rc,
                              i,
                              DicomMV.Rows,
                              DicomMV.Columns,
                              false);
}
    end;
end;

procedure TfrmSnimok.bAreaClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.ActiveView.LeaderMouserInspect := ldmiPolyonA;
end;

procedure TfrmSnimok.bAngleClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.ActiveView.LeaderMouserInspect := ldmiAngle;
end;

procedure TfrmSnimok.bCrossLineClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.ActiveView.LeaderMouserInspect := ldmiCross;
end;

procedure TfrmSnimok.bCircleClick(Sender: TObject);
begin
  kb_ini;
  DicomMV.ActiveView.LeaderMouserInspect := ldmiROI_Cycle;
end;

procedure TfrmSnimok.DCMMultiImage1MultiImageScrollTo(Sender: TObject;
  AIndex: Integer);
begin
  TCnsDMTable(DCMMultiImage1.DicomDatasets).Currentindex := AIndex;
  DicomMV.CurrentImage := AIndex;
end;

procedure TfrmSnimok.DCMMultiImage1Scroll(Sender: TObject);
begin
  TCnsDMTable(DCMMultiImage1.DicomDatasets).Currentindex := DCMMultiImage1.CurrentImage;
  DicomMV.CurrentImage := DCMMultiImage1.CurrentImage;
end;

procedure TfrmSnimok.DicomMVAfterNewDrawObject(Sender: TObject;
  AObject: TDicomDrawObject);
var v_CustomDicomImage : TCustomDicomImage;
begin
  case AObject.Kind of
    ldmiRulerCalc:
      begin
        {if fCurrentCalcMenuItem <> nil then
          if AObject.Name = '' then
          begin
            AObject.Name := fCurrentCalcMenuItem.Caption;
            AObject.Tag := fCurrentCalcMenuItem.Tag;
            fCurrentCalcMenuItem := nil;
            DicomMultiLayoutViewer1.ActiveView.LeaderMouserInspect := ldmiNone;
          end;}
      end;
    ldmiROI_Cycle, ldmiROI_Rect:
      begin
        DicomMV.ActiveView.LeaderMouserInspect := ldmiNone;
        //CnsItem80.Checked := false;
        //CnsItem81.Checked := false;
      end;
  else
    begin
      {if fCurrentMeasureMemuItem <> nil then
        if AObject.Name = '' then
        begin
          AObject.Name := fCurrentMeasureMemuItem.Caption;
          AObject.Tag := fCurrentMeasureMemuItem.Tag;
          fCurrentMeasureMemuItem := nil;
          DicomMultiLayoutViewer1.ActiveView.LeaderMouserInspect := ldmiNone;
        end;}
      AObject.CalText := AObject.Calc2Text;
    end;
  end;
  DicomMV.ActiveView.LeaderMouserInspect := ldmiNone;
  DicomMVAfterObjectSize(Sender, AObject);
  // ????? ??????????
  if frmSnimok.v_is_calibr then
  begin
    set_kalibr;
    kb_ini;
  end else
  if frmSnimok.v_is_mark then // ??????? ???????
  begin
    set_mark;
    kb_ini;
  end;

  v_CustomDicomImage:=DicomMV.ActiveView;

  if v_CustomDicomImage.GetFrameCount <= 1 then
    v_CustomDicomImage.fDrawCine.CurrentFrame := v_CustomDicomImage.Attributes.ImageData.FrameIndex;

end;

procedure TfrmSnimok.DicomMVAfterObjectMove(Sender: TObject;
  AObject: TDicomDrawObject);
var das: TDicomAttributes;
    av, sd, ar: double;
begin
  das := TCustomDicomImage(Sender).Attributes;
  case AObject.Kind of
    ldmiROI_Cycle, ldmiROI_Rect:
      begin
        das.ImageData.CalAverage(Round(AObject.X[0]), Round(AObject.Y[0]), Round(AObject.X[1]),
          Round(AObject.Y[1]), av, sd, ar);
        AObject.CalText := Format('AV:%4.2f' + #13#10 + 'SD:%4.2f' + #13#10 + 'AR:%4.2f', [av, sd,
          ar]);
      end;
  end;
end;

procedure TfrmSnimok.DicomMVAfterObjectSize(Sender: TObject;
  AObject: TDicomDrawObject);
var
  //  f1, f2: Double;
  das: TDicomAttributes;
  //  da1: TDicomAttribute;
  av, sd, ar: double;
begin
  das := TCustomDicomImage(Sender).Attributes;
  case AObject.Kind of

    ldmiROI_Cycle, ldmiROI_Rect:
      begin
        das.ImageData.CalAverage(Round(AObject.X[0]), Round(AObject.Y[0]), Round(AObject.X[1]),
          Round(AObject.Y[1]), av, sd, ar);
        AObject.CalText := Format('AV:%4.2f' + #13#10 + 'SD:%4.2f' + #13#10 + 'AR:%4.2f', [av, sd,
          ar]);
        if AObject.Name <> '' then
        begin
          //ExecuteSubroutine('SetMeasureValue', [AObject.Name, AObject.Tag, AV, sd, ar, AObject.RelateFrameIndex]);
        end;
      end;
    ldmiPolyonA:
      begin
        if AObject.Name <> '' then
        begin
          //ExecuteSubroutine('SetMeasureValue', [AObject.Name, AObject.Tag, AObject.CalcArea, AObject.CalcLength, 0, AObject.RelateFrameIndex]);
        end;
        AObject.CalText := AObject.Calc2Text;
      end;
    ldmiPolyonV:
      begin
        if AObject.Name <> '' then
        begin
          //ExecuteSubroutine('SetMeasureValue', [AObject.Name, AObject.Tag, AObject.CalcVolume, AObject.CalcLength, 0, AObject.RelateFrameIndex]);
        end;
        AObject.CalText := AObject.Calc2Text;
      end;
    ldmiAngle:
      begin
        if AObject.Name <> '' then
        begin
          //ExecuteSubroutine('SetMeasureValue', [AObject.Name, AObject.Tag, AObject.CalcAngle, 0, 0, AObject.RelateFrameIndex]);
        end;
        AObject.CalText := AObject.Calc2Text;
      end;
  else
    begin
      if AObject.Name <> '' then
      begin
        //ExecuteSubroutine('SetMeasureValue', [AObject.Name, AObject.Tag, AObject.CalcLength, 0, 0, AObject.RelateFrameIndex]);
      end;
      AObject.CalText := AObject.Calc2Text;
    end;
  end;
end;


// ?????????? C_GET
procedure TfrmSnimok.DoShowFormGET( const p_PATIENT : string;
                                 const p_STUDYUID: string;
                                 const p_VSTUDYID: string;
                                 const p_SERIES  : string;
                                 const p_ACCESSIONNUMBER : string;
                                 const sLevel : string;
                                 const p_key : boolean = False
                                );
var das: TDicomAttributes;
    da1: TDicomDataset;
      i: Integer;
    CnsDicomConnection1: TCnsDicomConnection;
begin
  {  P_PID := sPID;
  StudyID := sStudyID;
  AcNumber := sAcNumber;}
  pcInstrument.ActivePageIndex := 0;
  CnsDicomConnection1 := TCnsDicomConnection.Create(self);

  CnsDicomConnection1.Host := frmSnimok.v_Host;
  CnsDicomConnection1.Port := frmSnimok.v_Port;
  CnsDicomConnection1.CalledTitle := frmSnimok.v_CalledTitle;
  CnsDicomConnection1.CallingTitle := frmSnimok.v_CallingTitle;

  try
    das := TDicomAttributes.Create;
    with das do
    begin
        if p_key then
        begin
          AddVariant($2809, $001D, 1);
        end;
        if sLevel = 'PATIENT' then //patient
          begin
            AddVariant(dQueryRetrieveLevel, 'PATIENT');  // dQueryRetrieveLevel = 78
            AddVariant(dPatientID, p_PATIENT); // $10, $20
          end
        else if sLevel = 'SERIES' then //series
          begin
            AddVariant(dQueryRetrieveLevel, 'SERIES');
            AddVariant(dSeriesInstanceUID, p_SERIES);
          end
        else if sLevel = 'STUDY' then // ??????? ?????? "????????????"
          begin
            AddVariant(dQueryRetrieveLevel, 'STUDY');
            MnLg_ev( 'STUDY',
                     ExtractFilePath(paramstr(0))+c_mn_log_file,
                     False);
            if Trim(p_STUDYUID)<>'' then begin
              AddVariant(dStudyInstanceUID, p_STUDYUID);
              MnLg_ev( 'dStudyInstanceUID='+p_STUDYUID,
                     ExtractFilePath(paramstr(0))+c_mn_log_file,
                     False);
            end else begin
              MnLg_ev( 'dStudyID='+p_VSTUDYID,
                     ExtractFilePath(paramstr(0))+c_mn_log_file,
                     False);
              AddVariant(dStudyID, p_VSTUDYID);
            end;
          end
        else if sLevel = 'IMAGE' then // ??????? ?????? "IMAGES"
          begin
            AddVariant(dQueryRetrieveLevel, 'IMAGE');
            if Trim(p_STUDYUID)<>'' then begin
              AddVariant(dStudyInstanceUID, p_STUDYUID);
            end else begin
              AddVariant(dStudyID, p_VSTUDYID);
            end;
          end;
          // ????????? dImageID  dIconImage
{
?	Unique Key Attributes which may include
          Patient ID (0010,0020),
          Study Instance UIDs (0020,000D)
          Series Instance UIDs (0020,000E), and
          SOP Instance UIDs (0008,0018)
}
          Add($0008, $0090); // ReferringPhysician'sName
          Add($0008, $1030); // StudyDescription
          Add($0010, $0010); // (Patient's Name)
          Add($0010, $0020); // PatientID

        //  AddVariant(dPatientID, p_PATIENT); // $10, $20

          Add($0010, $0030); // (Patient's Birth Date)
          Add($0010, $0040); // (Patient's Sex)
          Sort; // ??????????? ??????????? ???? DICOM
    end;
    //
    if v_debug then begin
      ds_sav(das,nil,nil,'get_command');
      MnLg_ev( 'C_GET: '+#13+
          'Host = '+CnsDicomConnection1.Host+#13+
          'Port = '+IntToStr(CnsDicomConnection1.Port)+#13+
          'CalledTitle = '+CnsDicomConnection1.CalledTitle+#13+
          'CallingTitle = '+CnsDicomConnection1.CallingTitle,
          ExtractFilePath(paramstr(0))+c_events_log,
          False
         );
    end;
    CnsDicomConnection1.v_is_log := v_debug;
    CnsDicomConnection1.v_log_filename := ExtractFilePath(paramstr(0))+'c_move.log';
   // CnsDicomConnection1.SetReceiveTimeout(1000*10);
    if CnsDicomConnection1.C_GET(das) then // ???????? ??????
//    if CnsDicomConnection1.C_FIND(das) then
    begin
      MnLg_ev( 'C_GET result: receive Datasets '+IntToStr(CnsDicomConnection1.ReceiveDatasets.Count),
          ExtractFilePath(paramstr(0))+c_events_log, False );
      for i := 0 to CnsDicomConnection1.ReceiveDatasets.Count - 1 do // ?????????? ??????
      begin
        da1 := TDicomDataset.Create(TDicomAttributes(CnsDicomConnection1.ReceiveDatasets[i]));
//        ShowMessage( 'KIN = '+da1.Attributes.GetString($2809, $001D) );
        CnsDMTable1.Add(da1);
      end;
      CnsDicomConnection1.ReceiveDatasets.Clear;
      if CnsDMTable1.Count > 0 then
      begin
        DicomMV.UpdateScrollBars;
      end;
      // ????????? ?????????? ???????? ? ???????? ??????? ? ???????? ? DicomMultiViewer
      MultiSetKIN( DicomMV );
    end else
    begin
      MnLg_ev( 'C_GET ERROR ',
          ExtractFilePath(paramstr(0))+c_events_log, False );
      ShowMessage('ERROR C_GET ');
    end;
  finally
    Screen.Cursor := crDefault;
    MyDisconnectAssociation(CnsDicomConnection1);
    CnsDicomConnection1.Free;
    Application.ProcessMessages;
    Sleep(100);
  end;
  //
  ImgsUpd;
  //
  cbAtrib.Checked := True;
  lImages.Caption := IntToStr(DicomMV.DicomDatasets.Count);
  lSeries.Caption := IntToStr(DicomMV.DicomDatasets.GetSeriesCount);
  frotalImage := 0;
end;

procedure TfrmSnimok.FormActivate(Sender: TObject);
begin
  frmSnimok.pcInstrument.ActivePageIndex := 0;
  ImgsUpd;
  frmSnimok.lImages.Caption := IntToStr(frmSnimok.DicomMV.DicomDatasets.Count);
  frmSnimok.lSeries.Caption := IntToStr(frmSnimok.DicomMV.DicomDatasets.GetSeriesCount);
  frmSnimok.cbAtrib.Checked := True;
  frmSnimok.frotalImage := 0;
end;

procedure TfrmSnimok.FormCreate(Sender: TObject);
begin
  kb_ini;
end;

procedure TfrmSnimok.FormDestroy(Sender: TObject);
//var i:Integer;
begin
  DicomMV.DicomDatasets:=nil;
  DCMMultiImage1.DicomDatasets:=nil;
  CnsDMTable1.Clear;
  PresentationStateDatasets.Clear;
  FreeAndNil(CnsDMTable1);
  FreeAndNil(PresentationStateDatasets);

end;

procedure TfrmSnimok.N2D1Click(Sender: TObject);
var v1: TDicomMultiViewer;
  das1: TDicomDatasets;
begin
  v1 := DicomMV;
  das1 := v1.DicomDatasets;
  {  bm1 := TCnsBitmap32.Create;
    n1.AssignALineToBitmap(0, 240, 511, 240, bm1);

    bm1.SaveToFile('c:\b.bmp');
    bm1.Free;
    n1.Free; }
  with TMprForm.Create(self) do
  try
    n1 := TDicomMPRImage.Create(das1, v1.ActiveView.Attributes.getstring($20, $E));
    MPRDicomImage1.DicomDatasets := das1;
    MPRDicomImage1.AttributesIndex := v1.CurrentImage;
    MPRDicomImage1.SeriesUID := v1.ActiveView.Attributes.getstring($20, $E);
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmSnimok.N3D1Click(Sender: TObject);
var v1: TDicomMultiViewer;
    das1: TDicomDatasets;
begin
  v1 := DicomMV;
  das1 := v1.DicomDatasets;
  with TMPR3DForm.Create(self) do
  try
    n1 := TDicomMPRImage.Create(das1, v1.ActiveView.Attributes.getstring($20, $E));
    MPRDicomImage1.DicomDatasets := das1;
    MPRDicomImage1.AttributesIndex := v1.CurrentImage;
    MPRDicomImage1.SeriesUID := v1.ActiveView.Attributes.getstring($20, $E);

    SetBitmap(0, MPRDicomImage1.Bitmap);
    MPRDicomImage1.Width := width div 2;

    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmSnimok.N3DEndoscopy1Click(Sender: TObject);
var DV : TDicomMultiViewer;
    DAS : TDicomDatasets;
    frmVol : TVolumeRenderingForm;
begin
  DV := DicomMV;
  DAS := DV.DicomDatasets;
  if DAS.GetSeriesImageCount(DV.CurrentImage) >= 3 then
    begin
      frmVol := TVolumeRenderingForm.Create(self);
      try
        frmVol.Cns3DRenderWindow1.DicomDatasets := DAS;
        frmVol.Cns3DRenderWindow1.RenderFunction := rf3DEndoscopyView;
        frmVol.fSeriesUID := DV.ActiveView.Attributes.GetString($20, $E);
        frmVol.fModality := DV.ActiveView.Attributes.GetString(8, $60);
        frmVol.DicomMultiViewer1.DicomDatasets := DAS;
        frmVol.DicomMultiViewer1.SeriesUID := frmVol.fSeriesUID;
        frmVol.DicomMultiViewer1.CurrentImage := DV.CurrentImage;
        if DAS.Count > 0 then
          begin
            frmVol.PrepareData;
          end;
        frmVol.ShowModal;
      finally
        frmVol.Free;
      end;
  end;
end;

procedure TfrmSnimok.N3DMIP1Click(Sender: TObject);
var DV : TDicomMultiViewer;
    DAS : TDicomDatasets;
    frmVol : TVolumeRenderingForm;
begin
  DV := DicomMV;
  DAS := DV.DicomDatasets;
  if DAS.GetSeriesImageCount(DV.CurrentImage) >= 3 then
    begin
      frmVol := TVolumeRenderingForm.Create(self);
      try
        frmVol.Cns3DRenderWindow1.DicomDatasets := DAS;
        frmVol.Cns3DRenderWindow1.RenderFunction := rf3DMaximumIntensityProjection;
        frmVol.fSeriesUID := DV.ActiveView.Attributes.GetString($20, $E);
        frmVol.fModality := DV.ActiveView.Attributes.GetString(8, $60);
        frmVol.DicomMultiViewer1.DicomDatasets := DAS;
        frmVol.DicomMultiViewer1.SeriesUID := frmVol.fSeriesUID;
        frmVol.DicomMultiViewer1.CurrentImage := DV.CurrentImage;
        if DAS.Count > 0 then
          begin
            frmVol.PrepareData;
          end;
      frmVol.ShowModal;
    finally
      frmVol.Free;
    end;
  end;
end;

procedure TfrmSnimok.SurfaceRendering1Click(Sender: TObject);
var DV : TDicomMultiViewer;
    DAS : TDicomDatasets;
    frmSur : TSurfaceRenderForm;
begin
  DV := DicomMV;
  DAS := DV.DicomDatasets;
  if DAS.GetSeriesImageCount(DV.CurrentImage) >= 3 then
  begin
    frmSur := TSurfaceRenderForm.Create(self);
    try
      frmSur.Cns3DRenderWindow1.DicomDatasets := DAS;
      frmSur.fSeriesUID := DV.ActiveView.Attributes.GetString($20, $E);
      frmSur.fModality := DV.ActiveView.Attributes.GetString(8, $60);
      if DAS.Count > 0 then
      begin
        frmSur.PrepareData;
      end;
      frmSur.ShowModal;
    finally
      frmSur.Free;
    end;
  end;
end;

procedure TfrmSnimok.VolumeRendering1Click(Sender: TObject);
var DV : TDicomMultiViewer;
    DAS : TDicomDatasets;
    frmVol : TVolumeRenderingForm;
begin
  DV := DicomMV;
  DAS := DV.DicomDatasets;
  if DAS.GetSeriesImageCount(DV.CurrentImage) >= 3 then
  begin
    frmVol := TVolumeRenderingForm.Create(self);
    try
      frmVol.Cns3DRenderWindow1.DicomDatasets := DAS;
      frmVol.Cns3DRenderWindow1.RenderFunction := rf3DVolumeRendering;

      frmVol.fSeriesUID := DV.ActiveView.Attributes.GetString($20, $E);
      frmVol.fModality := DV.ActiveView.Attributes.GetString(8, $60);
      frmVol.DicomMultiViewer1.DicomDatasets := DAS;
      frmVol.DicomMultiViewer1.SeriesUID := frmVol.fSeriesUID;
      frmVol.DicomMultiViewer1.CurrentImage := DV.CurrentImage;

      if DAS.Count > 0 then
      begin
        frmVol.PrepareData;
      end;
      frmVol.ShowModal;
    finally
      frmVol.Free;
    end;
  end;
end;

function TfrmSnimok.IsRunApp(const AstrParam: string): Boolean;
var
  nPosTitle : Integer;
  sIP, strParam, sPort, sNum, sCalled, sCalling : string;
  CnsDicomConnection1: TCnsDicomConnection;
  das: TDicomAttributes;
  da1: TDicomDataset;
  i : Integer;
begin
  Result := FALSE;
  nPosTitle := PosEx(LOCAL_URL_PROTOCOL_NAME + '://', AstrParam);
  if nPosTitle <> 0 then
    begin
      strParam := Copy(AstrParam, 10, Length(AstrParam)-Length(LOCAL_URL_PROTOCOL_NAME + '://'));
      sIP := Copy(strParam, 1, Pos(':', strParam)-1);
      strParam := Copy(strParam, Length(sIP)+2, Length(strParam)-Length(sIP));
      sPort := Copy(strParam, 1, Pos('&', strParam)-1);
      strParam := Copy(strParam, Length(sPort)+2, Length(strParam)-Length(sPort));
      strParam := Copy(strParam, 9, Length(strParam)-Length('PROTNUM='));
      sNum := Copy(strParam, 1, Pos('&', strParam)-1);
      strParam := Copy(strParam, Length(sNum)+2, Length(strParam)-Length(sNum));
      strParam := Copy(StrParam, 10, Length(strParam)-Length('CALLEDAE='));
      sCalled := Copy(strParam, 1, Pos('&', strParam));
      strParam := Copy(strParam, Pos('&', strParam), Length(strParam)-Pos('&', strParam)+1);
      sCalling := Copy(strParam, Length('CALLINGAE=')+2, Length(strParam)- Length('CALLINGAE='));
      CnsDicomConnection1 := TCnsDicomConnection.Create(self);
      CnsDicomConnection1.Host := sIP;
      CnsDicomConnection1.Port := StrToInt(sPort);
      CnsDicomConnection1.CalledTitle := sCalled;
      if (sCalling <> 'NULL') and (sCalling <> '') then      
        CnsDicomConnection1.CallingTitle := sCalling;
      CnsDicomConnection1.ReceiveTimeout := 100 * 1000;
      try
        das := TDicomAttributes.Create;
        with das do
          begin
            AddVariant(78, 'PATIENT');
            AddVariant($10, $20, sNum);
          try
            if CnsDicomConnection1.C_GET(das) then
          except
          end;
              begin
                for i := 0 to CnsDicomConnection1.ReceiveDatasets.Count - 1 do
                  begin
                    da1 := TDicomDataset.Create(TDicomAttributes(CnsDicomConnection1.ReceiveDatasets[i]));
                    CnsDMTable1.Add(da1);
                  end;
                CnsDicomConnection1.ReceiveDatasets.Clear;
                if CnsDMTable1.Count > 0 then
                  begin
                    DicomMV.Update; 
                    DicomMV.UpdateScrollBars;
                  end;
              end;
          end;
      finally
        CnsDicomConnection1.free;
        Result := True;
      end;
      lImages.Caption := IntToStr(DicomMV.DicomDatasets.Count);
      lSeries.Caption := IntToStr(DicomMV.DicomDatasets.GetSeriesCount);
      frotalImage := 0;
      DicomMV.DisplayLabel := False;
      cbAtrib.Checked := False;
      cbAtrib.Visible := False;
    end else
    begin
      MessageDlg(URL_PROTOCOL_IS_NOT_VALID, mtWarning, [mbOK], 0);
    end;
end;

end.
