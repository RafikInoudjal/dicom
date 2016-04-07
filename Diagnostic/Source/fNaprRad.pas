unit fNaprRad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxGraphics, cxEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxDBLookupComboBox, cxButtonEdit,
  cxMemo, cxCurrencyEdit, cxMaskEdit, cxSpinEdit, dxSkinsCore,
  cxVGrid, cxContainer, cxLabel, cxControls,
  cxInplaceContainer, StdCtrls, cxButtons, ExtCtrls, ActnList, DB, Oracle, OracleData,
  cxTimeEdit, DateUtils, cxCustomData, cxTL, cxDBTL,
  cxTLData, frxClass;

type
  TGetDllHandle = function(): THandle; stdcall;
  TIsAddrChanged = function(): Boolean; stdcall;
  TCreateAddrDLL = function(Panel_HND, App_HND: THandle; Ssn: pointer): Boolean; stdcall;
  TAddAddr = procedure(PeopleID: Integer; pAddrType: Integer); stdcall;
  TEditAddr = procedure(AddressID: Integer); stdcall;
  TResizeAddrDll = procedure(Panel_HND: THandle); stdcall;
  TMoveAddrDll = procedure; stdcall;
  TSaveAddrChanges = function(): Integer; stdcall;
  TCommitAddrChanges = procedure(); stdcall;
  TCancelAddrChanges = procedure(); stdcall;
  TFreeAddrDll = procedure(); stdcall;
  TCloseAddrDropDown = procedure(); stdcall;
  TGetAddrText = function(): PChar; stdcall;
  
  TfrmNaprRad = class(TForm)
    Panel1: TPanel;
    bCancel: TcxButton;
    bOk: TcxButton;
    Panel2: TPanel;
    vgrPac: TcxVerticalGrid;
    rowFam: TcxEditorRow;
    rowName: TcxEditorRow;
    rowOtch: TcxEditorRow;
    rowSex: TcxEditorRow;
    rowRojd: TcxEditorRow;
    vgrMK: TcxVerticalGrid;     
    rowMK: TcxEditorRow;
    rowKMNS: TcxEditorRow;
    rowProj: TcxEditorRow;
    rowPhone: TcxEditorRow;
    rowVidOpl: TcxEditorRow;
    cxLabel1: TcxLabel;
    memAdr: TcxMemo;
    vgrMiddle: TcxVerticalGrid;
    rowNapr: TcxEditorRow;
    rowNaprSotr: TcxEditorRow;
    rowDs: TcxEditorRow;
    vgrUsl: TcxVerticalGrid;
    rowUrg: TcxEditorRow;
    rowTarget: TcxEditorRow;
    rowKrat: TcxEditorRow;
    cxVerticalGrid8: TcxVerticalGrid;
    rowKolvo: TcxEditorRow;
    rowKuda: TcxEditorRow;
    rowPrim: TcxEditorRow;
    merDate: TcxMultiEditorRow;
    odsTarget: TOracleDataSet;
    dsTarget: TDataSource;
    odsVidOplat: TOracleDataSet;
    dsVidOplat: TDataSource;
    odsUrgent: TOracleDataSet;
    dsUrgent: TDataSource;
    odsKorennoe: TOracleDataSet;
    dsKorennoe: TDataSource;
    odsRegPrin: TOracleDataSet;
    dsRegPrin: TDataSource;
    odsOtdelVydano: TOracleDataSet;
    dsOtdelVydano: TDataSource;
    al: TActionList;
    aOk: TAction;
    aCancel: TAction;
    rowUsl: TcxEditorRow;
    rowGra: TcxEditorRow;
    rowSoc: TcxEditorRow;
    rowSumDoza: TcxEditorRow;
    odsGra: TOracleDataSet;
    dsGra: TDataSource;
    odsStatus: TOracleDataSet;
    dsStatus: TDataSource;
    srMain: TcxStyleRepository;
    stRed: TcxStyle;
    rowCompany: TcxEditorRow;
    odsKrat: TOracleDataSet;
    dsKrat: TDataSource;
    odsVidDoc: TOracleDataSet;
    stBold: TcxStyle;
    rowEdit: TcxEditorRow;
    vgrPod: TcxVerticalGrid;
    merDateTime: TcxMultiEditorRow;
    rowSotr: TcxEditorRow;
    rowTime: TcxEditorRow;
    rowNad: TcxEditorRow;
    cxVerticalGrid8CategoryRow1: TcxCategoryRow;
    odsNadbavka: TOracleDataSet;
    dsNadbavka: TDataSource;
    odsRgLaborant: TOracleDataSet;
    dsRgLaborant: TDataSource;
    vgrRost: TcxVerticalGrid;
    rowVol: TcxEditorRow;
    merVve: TcxMultiEditorRow;
    rowAct: TcxEditorRow;
    vgrKontrast: TcxVerticalGrid;
    rowTypeKontrast: TcxEditorRow;
    rowKolvoKontrast: TcxEditorRow;
    rowTypeVvod: TcxEditorRow;
    rowKto: TcxEditorRow;
    vgrDop: TcxVerticalGrid;
    rowCntSnimki: TcxEditorRow;
    rowDoza: TcxEditorRow;
    rowTypePlenka: TcxEditorRow;
    rowLists: TcxEditorRow;
    rowNum: TcxEditorRow;
    catKontrast: TcxCategoryRow;
    rowStatusPac: TcxEditorRow;
    odsTypePlenka: TOracleDataSet;
    dsTypePlenka: TDataSource;
    odsKolvoListov: TOracleDataSet;
    dsKolvoListov: TDataSource;
    odsVvod: TOracleDataSet;
    dsVvod: TDataSource;
    odsKtoKontrast: TOracleDataSet;
    dsKtoKontrast: TDataSource;
    rowRFP: TcxEditorRow;
    rowScan: TcxEditorRow;
    odsRFP: TOracleDataSet;
    dsRFP: TDataSource;
    odsScan: TOracleDataSet;
    dsScan: TDataSource;
    bPrint: TcxButton;
    aPrint: TAction;
    aInfo: TAction;
    aBase: TAction;
    bInfo: TcxButton;
    bBase: TcxButton;
    frxReport1: TfrxReport;
    merWH: TcxMultiEditorRow;
    rowVvodRFP: TcxEditorRow;
    odsVvodRFP: TOracleDataSet;
    dsVvodRFP: TDataSource;
    stAbsolut: TcxStyle;
    bAgree: TcxButton;
    aAgreeProc: TAction;
    frAgreeProc: TfrxReport;
    rowType: TcxEditorRow;
    odsTypeR: TOracleDataSet;
    dsTypeR: TDataSource;
    procedure aOkExecute(Sender: TObject);
    procedure aCancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure odsVidDocBeforeOpen(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure rowNaprEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure rowVidOplEditPropertiesEditValueChanged(Sender: TObject);
    procedure rowCompanyEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure rowUslEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure rowNadEditPropertiesChange(Sender: TObject);
    procedure odsRgLaborantBeforeOpen(DataSet: TDataSet);
    procedure rowTypeKontrastEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure aPrintExecute(Sender: TObject);
    procedure aInfoExecute(Sender: TObject);
    procedure aBaseExecute(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure aAgreeProcExecute(Sender: TObject);
    procedure frAgreeProcGetValue(const VarName: string; var Value: Variant);
  private
    EditMode : Boolean;
// -- ��� address.dll
    HandleDLL : THandle;
    GetDllHandle: TGetDllHandle;
    IsAddrChanged: TIsAddrChanged;
    CreateAddrDLL: TCreateAddrDLL;
    AddAddr: TAddAddr;
    EditAddr: TEditAddr;
    ResizeAddrDll: TResizeAddrDll;
    MoveAddrDll: TMoveAddrDll;
    SaveAddrChanges: TSaveAddrChanges;
    GetAddrText : TGetAddrText;
    CommitAddrChanges: TCommitAddrChanges;
    CancelAddrChanges: TCancelAddrChanges;
    FreeAddrDll: TFreeAddrDll;
    CloseAddrDropDown: TCloseAddrDropDown;
    l_addr_loaded: Boolean;
    id4NewPacAddress : Integer;
// --
    pPeplID, pAmbul, pPacID, pOtdelID, pNazID, pSmidID, pTypeDocID, pDocobslID, pKabID, pSosID, pOwnerID : Integer;
    idTalon : Integer;
    isKOnsult : Boolean;
    nIBID, nIBY : Integer;  
    rgregist_amb_napr_uch : integer;
    procedure DoGetAddress;
    procedure DoTextTypeStac;
    procedure DoTextTypeAmbul;
    procedure DoTibPeplid;
    procedure DoVidOplat;
    procedure DoProjivaet;
    procedure DoTarget;
    procedure DoDates;
    procedure DoRegistrator;
    procedure DoVrachNapravil;
    procedure DoCompanyDogovor;
    procedure DoCheckUslugKonsult;
    procedure DoSumDoza;
    procedure DoTextTypeFIO(strFIO : String);
    procedure DoTextTypeNaprav;
    procedure DoTextParametersNaz;
    procedure DoUrgent;
    procedure DoPodpis;
    procedure DoSetEditRights;
    function DoCheckParameters : Integer;
    function fGetIB(var nIBIDf, nIBYf: Integer): boolean;
    procedure DoInsertProjivaet(nPACID : Integer);
    procedure DoInsertKorennoe(nIDPepl : Integer);
    procedure DoUpdateAddress(nIDPepl : Integer);
    procedure DoInsertEditParametersNaz;
    procedure DoInsertGra(nIDPepl : Integer);
    procedure DoInsertStatus(nIDPepl : Integer);
    function GetLastTalonID(App_HND: THandle; OS: TORacleSession; pPacID, pSotrID, pTalonID : Integer) : integer;
    procedure DoSetDate;
    procedure DoInsertNewNaz(nPacID : Integer);
    procedure InsertKonsultUslug(nNazid : Integer; nPacid: Integer);
    { Private declarations }
  public
    procedure DoShowForm(nAMBUL, nPACID, nPEPLID : Integer;
                         strFIO : String;
                         nOTDELID, nSMIDID, nKABID : Integer;
                         nNAZID : Integer=0;
                         nUsl : string='';
                         nReanim : Integer=0;
                         nOwner : Integer=0);
    { Public declarations }
  end;

var
  frmNaprRad: TfrmNaprRad;

implementation

uses fMain, fSetNapr, fSetSmid, fSetUsl, fSetKontrast, fPacInfo, fAllHistory, uDBTableUtils;

{$R *.dfm}

procedure TfrmNaprRad.aAgreeProcExecute(Sender: TObject);
begin
  frAgreeProc.ShowReport;
end;

procedure TfrmNaprRad.aBaseExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmAllHistory, frmAllHistory);
  try
    frmAllHistory.DoShowForm(pPEPLID, rowFam.Properties.Value+' '+rowName.Properties.Value+' '+rowOtch.Properties.Value);
    frmAllHistory.ShowModal;
  finally
    frmAllHistory.Free;
  end;
end;

procedure TfrmNaprRad.aCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmNaprRad.aInfoExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmPacInfo, frmPacInfo);
  try
    frmPacInfo.DoShowPacInfo(pPACID,
                             pPEPLID,
                             rowNapr.Properties.Value+'-'+rowNapr.Properties.Value);
    frmPacInfo.ShowModal;
  finally
    frmPacInfo.Free;
  end;
end;

procedure TfrmNaprRad.aOkExecute(Sender: TObject);
var oqIns, oqEdit : TOracleQuery;
    ods : TOracleDataSet;
    odsAmb, odsPepl : TOracleDataSet;
    IDPac : Integer;
    idPepl : Integer;
begin
  vgrPod.SetFocus;
  try
    Screen.Cursor := crSQLWait;
    idPepl := 0;
// -- �������� �������������
    if DoCheckParameters = 0 then
      exit;
// -- ���������� ������ ������
    if EditMode = True then
      begin
        odsPepl := TOracleDataSet.Create(nil);
        oqEdit := TOracleQuery.Create(nil);  // �������� ��������� ������������ ������������ �� ��������
        try                                  // ����� ���������� ��� �������� ������ ��� ���� ���� ������� �������������
          odsPepl.Session := frmMain.os;     // ??? �������� �� ��� - ��!!! ���� ������ �������������
          odsPepl.SQL.Text := ' select fk_peplid from asu.tambulance where fk_id = :pfk_id ';
          odsPepl.DeclareAndSet('pfk_id', otInteger, pPACID);
          odsPepl.Open;
          oqEdit.Session := frmMain.os;
          oqEdit.SQL.Text := ' BEGIN '+#13+
                             '   update asu.tambulance '+#13+
                             '      set fk_peplid=:pfk_peplid, fc_fam=:pfc_fam, fc_im=:pfc_im, fc_otch=:pfc_otch, fc_phone=:pfc_phone, '+#13+
                             '          fd_rojd=:pfd_rojd, fp_sex=:pfp_sex '+#13+
                             '    where fk_id = :pfk_id; '+#13+
                             ' END; ';
          oqEdit.DeclareAndSet('pFK_PEPLID', otInteger, odsPepl.FieldByName('fk_peplid').AsInteger);
          oqEdit.DeclareAndSet('pFC_FAM', otString, rowFam.Properties.Value);
          oqEdit.DeclareAndSet('pFC_IM', otString, rowName.Properties.Value);
          oqEdit.DeclareAndSet('pFC_OTCH', otString, rowOtch.Properties.Value);
          oqEdit.DeclareAndSet('pFD_ROJD', otDate, rowRojd.Properties.Value);
          oqEdit.DeclareAndSet('pfc_phone', otString, rowPhone.Properties.Value);
          if rowSex.Properties.Value = '�������' then
            oqEdit.DeclareAndSet('pFP_SEX', otInteger, 1)
          else
            oqEdit.DeclareAndSet('pFP_SEX', otInteger, 0);
          oqEdit.DeclareAndSet('pFK_ID', otInteger, pPACID);
          oqEdit.Execute;
          frmMain.os.Commit;
          IDPAC := pPACID;
        finally
          odsPepl.Free;
          oqEdit.Free;
        end;
      end else
      begin
        ods := TOracleDataSet.Create(nil);  // ��������� ������ ��������   EditMode = False
        oqIns := TOracleQuery.Create(nil);
        try
          ods.Session := frmMain.os;
          ods.SQL.Text := ' SELECT FK_ID '+#13+
                          '   FROM asu.TPEOPLES '+#13+
                          '  WHERE FC_FAM = '''+TRIM(rowFam.Properties.Value)+''''+#13+
                          '    AND FD_ROJD = :PFD_ROJD ';
          if TRIM(rowName.Properties.Value) <> '' then
            ods.SQL.Add('AND FC_IM ='''+TRIM(rowName.Properties.Value)+'''');
          if Trim(rowOtch.Properties.Value) <> '' then
            ods.SQL.Add('AND FC_OTCH ='''+TRIM(rowOtch.Properties.Value)+'''');
          ods.DeclareAndSet('PFD_ROJD', otDate, rowRojd.Properties.Value);
          ods.Open;
          idPepl := ods.FieldByName('FK_ID').AsInteger;
          if ods.RecordCount = 0 then
            begin
              oqIns.Session := frmMain.os; //1. ���� ����� ���� �� ���������� � ����
              oqIns.SQL.Text := ' DECLARE '+#13+
	                              '   nTemp NUMBER; '+#13+
                                ' BEGIN '+#13+
		                            '   INSERT INTO asu.TAMBULANCE(FK_ID) VALUES(:PFK_ID) '+#13+ //�������� ������ � tambulance
                                '   RETURNING FK_ID INTO :PFK_ID; '+#13+
    		                        '   INSERT INTO asu.TPEOPLES(FC_FAM) VALUES(NULL) '+#13+ //�������� ������ � tpeoples
                                '   RETURNING FK_ID INTO :PFK_PEPLID; '+#13+
        	                      '   :NDOCOBSLID:= SET_NEWIBNUM(:PFK_USLVIDID, nTemp); '+#13+ //������������� � ��������� ������������
                  		          '   UPDATE asu.TAMBULANCE SET '+#13+
			                          '   FK_IBID = nTemp, '+#13+
			                          '   FK_IBY = TO_CHAR(GET_YEARWORK), '+#13+
			                          '   FK_PEPLID = :PFK_PEPLID, '+#13+
			                          '   FK_DOCOBSL = :NDOCOBSLID '+#13+
	                              '   WHERE FK_ID = :PFK_ID; '+#13+
                                '   asu.EDIT_AMBULANCE '+#13+
                                '   (0,:pFK_PEPLID,:pFC_FAM,:pFC_IM,:pFC_OTCH,'''','''',:pFC_PHONE,'''', '+#13+
	                              '   :pFD_ROJD,:pFP_SEX,0,0,0,:pFK_ID,6,0,nTemp,TO_CHAR(GET_YEARWORK), '+#13+
	                              '   0,:pFK_VRACHID, NULL); '+#13+
                                '   UPDATE asu.TPEOPLES '+#13+
                                '   SET FC_FAM=:PFC_FAM, FC_IM=:PFC_IM, FC_OTCH=:PFC_OTCH, FP_SEX=:PFP_SEX, FD_ROJD=:PFD_ROJD, FC_RABOTA=NULL, '+#13+
                                '   FC_FAX=NULL, FC_E_MAIL=NULL, FC_HTTP=NULL, FK_DOCVID=-1, '+#13+
                                '   FC_DOCSER=NULL, FC_DOCNUM=NULL, FC_DOCVIDAN=NULL, FD_DOCDATE=NULL, '+#13+
                                '   FK_COMPANYID = NULL, FK_OTDEL=-1, FK_DOLGNOST=-1, FC_ROJDPLACE='' '', '+#13+
                                '   FK_GROUPID=-1 '+#13+
                                '   WHERE FK_ID=:PFK_PEPLID; '+#13+
                                ' END; ';
              oqIns.DeclareAndSet('PFK_USLVIDID', otInteger, pTypeDocID);
              oqIns.DeclareVariable('PFK_ID', otInteger);
              oqIns.DeclareVariable('PFK_PEPLID', otInteger);
              oqIns.DeclareVariable('NDOCOBSLID', otInteger);
              oqIns.DeclareAndSet('PFC_FAM', otString, rowFam.Properties.Value);
              oqIns.DeclareAndSet('pFC_IM', otString, rowName.Properties.Value);
              oqIns.DeclareAndSet('pFC_OTCH', otString, rowOtch.Properties.Value);
              oqIns.DeclareAndSet('pFD_ROJD', otDate, rowRojd.Properties.Value);
              if rowSex.Properties.Value = '�������' then
                oqIns.DeclareAndSet('pFP_SEX', otInteger, 1)
              else
                oqIns.DeclareAndSet('pFP_SEX', otInteger, 0);
              oqIns.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
              oqIns.DeclareAndSet('pFC_PHONE', otString, rowPhone.Properties.Value);
              oqIns.Execute;
              frmMain.os.Commit;
              IDPac := oqIns.GetVariable('PFK_ID');
              idPepl := oqIns.GetVariable('PFK_PEPLID');
            end else
            begin                                    // 2. ���� ����� ���� ��� ���������� � ����
              odsAmb := TOracleDataSet.Create(nil);
              try
                odsAmb.Session := frmMain.os;
                odsAmb.SQL.Text := '   SELECT TAMBULANCE.FK_ID, '+#13+
                                   '          FK_IBID, FK_IBY, TO_CHAR(TDOCOBSL.FK_NUMIB)||''/''||TO_CHAR(TDOCOBSL.FN_YEAR) AS NUMMK, '+#13+
                                   '          FC_FAM||'' ''||FC_IM||'' ''||FC_OTCH AS FIO, '+#13+
                                   '          TO_CHAR(FD_ROJD, ''DD.MM.YYYY'') AS DATEROJD, FK_PEPLID, FK_VIDDOCID '+#13+
                                   '     FROM ASU.TAMBULANCE, ASU.TDOCOBSL '+#13+
                                   '    WHERE TAMBULANCE.FK_DOCOBSL = TDOCOBSL.FK_ID '+#13+
                                   '      AND TAMBULANCE.FK_PEPLID = :PFK_PEPLID '+#13+
                                   '      AND TDOCOBSL.FK_VIDDOCID = :PFK_VIDDOCID ';
                odsAmb.DeclareAndSet('PFK_VIDDOCID', otInteger, pTypeDocID);
                odsAmb.DeclareAndSet('PFK_PEPLID', otInteger, idPepl);
                odsAmb.Open;
                if odsAmb.RecordCount > 0 then //2.1. ��������� ��� �� �� ������ ����� � �� ����� ��� ��������� ������ � TAMBULANCE
                  begin
                    MessageDlg('��������!'+#13+#10+
                               '�� ����� ��������� ������:'+#13+#10+
                               '���: '+odsAmb.FieldByName('FIO').AsString+','+#13+#10+
                               '���� ��������: '+odsAmb.FieldByName('DATEROJD').AsString+'.'+#13+#10+
                               '�� ����� �������� ��� �������� ������������ �����('+odsAmb.FieldByName('NUMMK').AsString+') '+#13+#10+
                               '���� ��������:'+#13+#10+
                               '1. ��������� �������� ������ �����������: �������, ���, ��������, ���� ��������;'+#13+#10+
                               '2. �������� ����� �����������, ����� ������ "������", � ���������� ����������� �������� ����� �������� � ���� ������.',
                               mtWarning, [mbOK], 0);
                    Exit; //2.2. ����� ��� �� ������� ����� ��� �������� ������������ ����� => ������� ���������
                  end else
                  begin
                    oqIns.Session := frmMain.os;   //2.3. �� ������� ����� ��� ������������ ����� => ������� �����
                    oqIns.SQL.Text := ' DECLARE '+#13+
	                                    '     nTemp NUMBER; '+#13+
                                      ' BEGIN '+#13+
		                                  '   INSERT INTO asu.TAMBULANCE(FK_ID) '+#13+
                                      '   VALUES(:PFK_ID) '+#13+
                                      '   RETURNING FK_ID INTO :PFK_ID; '+#13+
        	                            '   :NDOCOBSLID:= SET_NEWIBNUM(:PFK_USLVIDID, nTemp); '+#13+  //������������� � ��������� ������������
                		                  '   UPDATE asu.TAMBULANCE SET '+#13+
			                                '   FK_IBID = nTemp, '+#13+
			                                '   FK_IBY = TO_CHAR(GET_YEARWORK), '+#13+
			                                '   FK_PEPLID = :PFK_PEPLID, '+#13+
			                                '   FK_DOCOBSL = :NDOCOBSLID '+#13+
	                                    '   WHERE FK_ID = :PFK_ID; '+#13+
                                      '   asu.EDIT_AMBULANCE '+#13+
                                      '   (0,:pFK_PEPLID,:pFC_FAM,:pFC_IM,:pFC_OTCH,'''','''',:pFC_PHONE,'''', '+#13+
	                                    '   :pFD_ROJD,:pFP_SEX,0,0,0,:pFK_ID,6,0,nTemp,TO_CHAR(GET_YEARWORK), '+#13+
	                                    '   0,:pFK_VRACHID, NULL); '+#13+
                                      ' END; ';
                    oqIns.DeclareAndSet('PFK_USLVIDID', otInteger, pTypeDocID);
                    oqIns.DeclareVariable('PFK_ID', otInteger);
                    oqIns.DeclareAndSet('PFK_PEPLID', otInteger, idPepl);
                    oqIns.DeclareVariable('NDOCOBSLID', otInteger);
                    oqIns.DeclareAndSet('PFC_FAM', otString, rowFam.Properties.Value);
                    oqIns.DeclareAndSet('pFC_IM', otString, rowName.Properties.Value);
                    oqIns.DeclareAndSet('pFC_OTCH', otString, rowOtch.Properties.Value);
                    oqIns.DeclareAndSet('pFD_ROJD', otDate, rowRojd.Properties.Value);
                    if rowSex.Properties.Value = '�������' then
                      oqIns.DeclareAndSet('pFP_SEX', otInteger, 1)
                    else
                      oqIns.DeclareAndSet('pFP_SEX', otInteger, 0);
                    oqIns.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
                    oqIns.DeclareAndSet('pFC_PHONE', otString, rowPhone.Properties.Value);
                    oqIns.Execute;
                    frmMain.os.Commit;
                    IDPac := oqIns.GetVariable('PFK_ID');
                  end;
              finally
                odsAmb.Free;
              end;
            end;
        finally
          ods.Free;
          oqIns.Free;
        end;
      end;
//-->> 1. ��������� ����� ���� � ���������
  if EditMode = True then
    begin
      DoInsertProjivaet(pPacID);
      DoInsertKorennoe(pPeplID);
    end else
    begin
      DoInsertProjivaet(IDPac);
      DoInsertKorennoe(idPepl);
    end;
//-->> 2. ��������� ����� �����
    if l_addr_loaded then
      begin
        SaveAddrChanges;
        CommitAddrChanges;
      end;
//-->> 3. �������� ������ � ������, ���� ���� ���������� ������ ��������
    if EditMode = False then
      begin
        DoUpdateAddress(idPepl);
      end;
//-->> 4. ��������� ��� �������� ��� ��������� ����������
    if pNazID = 0 then
      begin
        if EditMode = True then  // ��������� ����� ���������� � �������� � ������
          DoInsertNewNaz(pPacID)
        else
          DoInsertNewNaz(IDPac);
      end;
    if pNazID > 0 then
      begin
        DoInsertEditParametersNaz;
        DoPodpis;
      end;
//-->> 5. ��������� ��� �������� ����������� � ���������� ������
    if (idPepl <> 0) or (pPEPLID <> 0) then
      begin
        if idPepl <> 0 then
          begin
            DoInsertGra(idPepl);
            DoInsertStatus(idPepl);
          end else
          begin
            DoInsertGra(pPEPLID);
            DoInsertStatus(pPEPLID);
          end;
      end;
    ModalResult := MrOK;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmNaprRad.aPrintExecute(Sender: TObject);
begin
  frxReport1.ShowReport;
end;

function TfrmNaprRad.DoCheckParameters: Integer;
var nIBIDf, nIBYf : Integer;
    odsDate : TOracleDataSet;
    DateSys1 : TDateTime;
    ods : TOracleDataSet;
    strIssl : string;
begin
// -- ��������� ����
  odsDate := TOracleDataSet.Create(nil);
  try
    odsDate.Session := frmMain.os;
    odsDate.Cursor := crSQLWait;
    odsDate.SQL.Text := ' select trunc(sysdate) as datesys from dual ';
    odsDate.Open;
//    DateSys := odsDate.FieldByName('datesys').AsDateTime;
    DateSys1 := odsDate.FieldByName('datesys').AsDateTime;
  finally
    odsDate.Free;
  end;
// -- ����� ���������
  if (pNazID > 0) or (rowUsl.Tag > 0) then
    begin
      if (rowNum.Properties.Value = '') or (rowNum.Properties.Value = null) or (rowNum.Properties.Value = '0') then
        begin
          if frmMain.get_num_not_empty = '-1' then
            begin
              Application.MessageBox('������� ����� ���������!', '��������', MB_OK+MB_ICONWARNING);
              vgrUsl.FocusRow(rowNum);
              vgrUsl.ShowEdit;
              Result := 0;
              Exit;
            end;
        end;
    end;
  if (pNazID > 0) or (rowUsl.Tag > 0) then
    begin
      if (rowNum.Properties.Value <> '') and (rowNum.Properties.Value <> null) and (rowNum.Properties.Value <> '0') then
        begin
          ods := TOracleDataSet.Create(nil);
          try
            ods.Session := frmMain.os;
            ods.SQL.Text := ' select fk_id, fc_name, to_char(fd_run, ''dd.mm.yyyy'') as fd_run '+#13+
                            '   from asu.tnazis '+#13+
                            '  where fc_type = :pfc_type '+#13+
                            '    and fk_id <> :pfk_id '+#13+
                            '    and fk_pacid <> :pfk_pacid ';
            ods.DeclareAndSet('pfc_type', otString, trim(rowNum.Properties.Value));
            ods.DeclareAndSet('pfk_id', otInteger, pNazID);
            ods.DeclareAndSet('pfk_pacid', otInteger, pPacID); // !!! 07.06.2010 ������� �� ��������� 2-�� ������� ... ���� ������ �������
            ods.Open;                                          // �� ������ �������� !!! � ���������� ��� ������ "+" � �����������
            if ods.RecordCount > 0 then
              begin
                strIssl := '����� ����� ��������� ��� ����������!'+#13#10;
                ods.First;
                while not ods.Eof do
                  begin
                    strIssl := strIssl+ods.FieldByName('fd_run').AsString+' '+ods.FieldByName('fc_name').AsString+';'+#13#10;
                    ods.Next;
                  end;
                Application.MessageBox(PCHAR(strIssl), '��������������', MB_OK+MB_ICONWARNING);
                vgrUsl.FocusRow(rowNum);
                vgrUsl.ShowEdit;
                Result := 0;
                exit;
              end;
          finally
            ods.Free;
          end;
        end;
    end;
// --
  if pAMBUL = 1 then
    begin
      if (rowMK.Properties.Value = '') or (rowMK.Properties.Value = null) then
        begin
          Application.MessageBox('��� ���������� ������� ����� ������������ ��������� ��������!', '�������������� !', MB_OK + MB_ICONWARNING);
          vgrMK.FocusRow(rowMK);
          vgrMK.ShowEdit;
          Result:= 0;
          exit;
        end;

      if fGetIb(nIBIDf, nIBYf) = False then
        begin
          Application.MessageBox('��������! ����� ����� ��������� (������������ �����) ��� ���������� � ���� ������!', '�������������� !', MB_OK + MB_ICONWARNING);
          vgrMK.FocusRow(rowMK);
          vgrMK.ShowEdit;
          Result:= 0;
          exit;
        end;
    end;

  if (rowFam.Properties.Value = '') or (rowFam.Properties.Value = null) then
    begin
      Application.MessageBox('��� ���������� ������� ������� ��������!', '�������������� !', MB_OK + MB_ICONWARNING);
      vgrPac.FocusRow(rowFam);
      vgrPac.ShowEdit;
      Result:= 0;
      exit;
    end;

  if rowRojd.Properties.Value = null then
    begin
      Application.MessageBox('��� ���������� ������� ���� �������� ��������!', '�������������� !', MB_OK + MB_ICONWARNING);
      vgrPac.FocusRow(rowRojd);
      vgrPac.ShowEdit;
      Result:= 0;
      exit;
    end;

  if rowRojd.Properties.Value < StrToDateTime('01.01.1899') then
    begin
      Application.MessageBox('��������� ������������ ����� ���� ��������!', '�������������� !', MB_OK + MB_ICONWARNING);
      vgrPac.FocusRow(rowRojd);
      vgrPac.ShowEdit;
      Result := 0;
      exit;
    end;

  if trunc(rowRojd.Properties.Value) > DateSys1 then // ��� ����, ������ ��� TryStrToDate(rowRojd.Properties.Value, DateSys) DateSys ���������� ������
    begin                                            // ����, ������� ������� 
      Application.MessageBox('���� �������� �� ����� ���� ������ ������� ����!', '�������������� !', MB_OK + MB_ICONWARNING);
      vgrPac.FocusRow(rowRojd);
      vgrPac.ShowEdit;
      Result := 0;
      exit;
    end;

  if (rowSex.Properties.Value = '') or (rowSex.Properties.Value = null) then
    begin
      Application.MessageBox('��� ���������� ������� ��� ��������!', '�������������� !', MB_OK + MB_ICONWARNING);
      vgrPac.FocusRow(rowSex);
      vgrPac.ShowEdit;
      Result:= 0;
      exit;
    end;

  if (pNazID > 0) or (rowUsl.Tag > 0) then
    begin
      if merDateTime.Properties.Editors[0].Value = null then
        begin
          Application.MessageBox('��� ���������� ������� ���� ������������!', '�������������� !', MB_OK + MB_ICONWARNING);
          vgrPod.FocusRow(merDateTime);
          Result:= 0;
          exit;
        end;
    end;

    if (pNazID > 0) or (rowUsl.Tag > 0) then
      begin
        if (rowRFP.Properties.Value = null) or (rowRFP.Properties.Value = '') or (rowRFP.Properties.Value = '0') then
          begin
            Application.MessageBox('��� ���������� ��������� ���� "���"!', '�������������� !', MB_OK + MB_ICONWARNING);
            vgrDop.FocusRow(rowRFP);
            vgrDop.ShowEdit;
            Result := 0;
            exit;
          end;
      end;
      
    if (pNazID > 0) or (rowUsl.Tag > 0) then
      begin
        if ((rowCntSnimki.Properties.Value = 0) or (rowCntSnimki.Properties.Value = null)) and (frmMain.get_CheckAmmSnimki=1) then
          begin
            Application.MessageBox('��� ���������� ������� ���-�� �������!', '�������������� !', MB_OK + MB_ICONWARNING);
            vgrDop.FocusRow(rowCntSnimki);
            vgrDop.ShowEdit;
            Result := 0;
            exit;
          end;
      end;

    if ((pNazID > 0) or (rowUsl.Tag > 0)) and ( v_db_lpu <> 'SO' ) and (frmMain.get_CheckDoza=1) then
      begin
        if (rowDoza.Properties.Value = 0) or (rowDoza.Properties.Value = null) then
          begin
            Application.MessageBox('��� ���������� ������� ����!', '�������������� !', MB_OK + MB_ICONWARNING);
            vgrDop.FocusRow(rowDoza);
            vgrDop.ShowEdit;
            Result := 0;
            exit;
          end;
      end;

    if (pNazID > 0) or (rowUsl.Tag > 0) then
      begin
        if (merVve.Properties.Editors[0].Value = 0) or (merVve.Properties.Editors[0].Value = null) then
          begin
            Application.MessageBox('��� ���������� ��������� ���� "������� (���)"!', '�������������� !', MB_OK + MB_ICONWARNING);
            vgrRost.FocusRow(merVve);
            vgrRost.ShowEdit;
            Result := 0;
            exit;
          end;
      end;

  if (isKonsult = True) and (rowNapr.Tag = 0) then
    begin
      Application.MessageBox('������ �������� ���������������, ������������� ��� ����������� ����� ������� ����������� ����������!',
                             '�������������� !', MB_OK + MB_ICONWARNING);
      vgrMiddle.FocusRow(rowNapr);
      Result := 0;
      exit;
    end;

  Result := 1;
end;

procedure TfrmNaprRad.DoCheckUslugKonsult;
var ods : TOracleDataSet;
begin
  if (pNazID <> 0) and (pAmbul = 1) then
    begin
      ods := TOracleDataSet.Create(nil);
      try
        ods.Session := frmMain.os;
        ods.SQL.Text := ' select fk_talonid from asu.tambtalon_naz where fk_nazid = :pfk_nazid ';
        ods.DeclareAndSet('pfk_nazid', otInteger, pNAZID);
        ods.Open;
        idTalon := ods.FieldByName('fk_talonid').AsInteger;
      finally
        ods.Free;
      end;
    end;
end;

procedure TfrmNaprRad.DoCompanyDogovor;
var ods : TOracleDataSet;
begin
  if rowCompany.Visible = True then
    begin
      ods := TOracleDataSet.Create(nil);
      try
        ods.Session := frmMain.os;
        ods.SQL.Text := ' BEGIN '+#13+
		                    '   SELECT max(FK_SMID), asu.get_smidname(max(fk_smid)) INTO :VAL, :valname '+#13+ // max ����� ����� �� �������� ������ "��� ������"
                        '     FROM asu.TIB '+#13+
                        '    WHERE FK_PACID = :PFK_ID '+#13+
                        '      AND FK_SMEDITID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_COMPANY_DOGOVOR''); '+#13+
		                    '   IF :VAL IS NULL THEN '+#13+
		                    '     SELECT max(FK_ID), max(fc_name) INTO :VAL, :valname '+#13+
                        '       FROM asu.TSMID '+#13+
                        '      WHERE FK_OWNER = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_COMPANY_DOGOVOR'') AND FK_DEFAULT = 1; '+#13+
		                    '   END IF; '+#13+
                        ' END; ';
        ods.DeclareAndSet('PFK_ID', otInteger, pNAZID);
        ods.DeclareVariable('VAL', otInteger);
        ods.DeclareVariable('valname', otString);
        ods.Open;
        rowCompany.Properties.Value := ods.GetVariable('valname');
        rowCompany.Tag := ods.GetVariable('VAL');
      finally
        ods.Free;
      end;
    end;
end;

procedure TfrmNaprRad.DoDates;
var ods : TOracleDataSet;
begin
  ods := TOracleDataSet.Create(nil);
  try
    ods.Session := frmMain.os;
    ods.SQL.Text := ' SELECT MAX(FD_DATE) AS MAXDATE, TRUNC(SYSDATE) AS DATESYS '+#13+
                    '   FROM asu.TIB '+#13+
                    '  WHERE FK_PACID = :PFK_ID '+#13+
                    '    AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''DATE_VYDANO'') ';
    ods.DeclareAndSet('PFK_ID', otInteger, pNAZID);
    ods.Open;
    if DateTimeToStr(ods.FieldByName('MAXDATE').AsDateTime) = '30.12.1899' then
      merDate.Properties.Editors[0].Value := null
    else
      merDate.Properties.Editors[0].Value := ods.FieldByName('MAXDATE').AsDateTime;
    ods.DeleteVariables;
    ods.Close;
    ods.SQL.Text := ' SELECT MAX(FD_DATE) AS MAXDATE, TRUNC(SYSDATE) AS DATESYS '+#13+
                    '   FROM asu.TIB '+#13+
                    '  WHERE FK_PACID = :PFK_ID '+#13+
                    '    AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''DATE_VOZVRAT'') ';
    ods.DeclareAndSet('PFK_ID', otInteger, pNAZID);
    ods.Open;
    if DateTimeToStr(ods.FieldByName('MAXDATE').AsDateTime) = '30.12.1899' then
      merDate.Properties.Editors[1].Value := null
    else
      merDate.Properties.Editors[1].Value := ods.FieldByName('MAXDATE').AsDateTime;
  finally
    ods.Free;
  end;
end;

procedure TfrmNaprRad.DoGetAddress;
var ods : TOracleDataSet;
begin
  HandleDLL := LoadLibrary('address.dll');
  if HandleDLL <> 0 then
    begin
      GetDllHandle := GetProcAddress(HandleDLL, 'GetDllHandle');
      IsAddrChanged := GetProcAddress(HandleDLL, 'IsAddrChanged');
      CreateAddrDLL := GetProcAddress(HandleDLL, 'CreateAddrDLL');
      AddAddr := GetProcAddress(HandleDLL, 'AddAddr');
      EditAddr := GetProcAddress(HandleDLL, 'EditAddr');
      ResizeAddrDll := GetProcAddress(HandleDLL, 'ResizeAddrDll');
      MoveAddrDll := GetProcAddress(HandleDLL, 'MoveAddrDll');
      SaveAddrChanges := GetProcAddress(HandleDLL, 'SaveAddrChanges');
      CommitAddrChanges := GetProcAddress(HandleDLL, 'CommitAddrChanges');
      CancelAddrChanges := GetProcAddress(HandleDLL, 'CancelAddrChanges');
      FreeAddrDll := GetProcAddress(HandleDLL, 'FreeAddrDll');
      CloseAddrDropDown := GetProcAddress(HandleDLL, 'CloseAddrDropDown');
      GetAddrText := GetProcAddress(HandleDLL, 'GetAddrText');
    end;

  CreateAddrDLL(memAdr.Handle, Application.Handle, frmMain.os.ExternalSVC);
  l_addr_loaded := True;
  if l_addr_loaded = True then
    begin
      if EditMode = True then
        begin
          AddAddr(pPeplID, frmMain.GET_PROPISKAID); //edit
        end else
        begin
          ods := TOracleDataSet.Create(nil);
          try
            ods.Session := frmMain.os;
            ods.SQL.Text := ' select asu.seq_tkarta.nextval as nextvalue from dual ';
            ods.Open;
            id4NewPacAddress := ods.FieldByName('NEXTVALUE').AsInteger;
          finally
            ods.Free;
          end;
          AddAddr(id4NewPacAddress, frmMain.GET_PROPISKAID);
        end;
    end;
end;

procedure TfrmNaprRad.DoInsertEditParametersNaz;
var oqNaz : TOracleQuery;
begin
  if pNAZID <> 0 then
    begin
      oqNaz := TOracleQuery.Create(nil);
      try
        oqNaz.Session := frmMain.os;
//-->>----------------------------------------------------------------------------
//        if (rowUrg.Properties.Value <> '') and (rowUrg.Properties.Value <> null) then //���������
//          begin
            oqNaz.DeleteVariables;
            oqNaz.SQL.Text := ' update asu.tnazis '+#13+
                              '    set fk_naztypeid = :pfk_naztypeid, fd_run = :pfd_run, fk_smid = :pfk_smid, fc_name = :pfc_name, fc_type = :pfc_type '+#13+
                              '  where fk_id = :pfk_id ';
            oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
            oqNaz.DeclareAndSet('PFK_NAZTYPEID', otInteger, rowUrg.Properties.Value);
            oqNaz.DeclareAndSet('pfk_smid', otInteger, rowUsl.Tag);
            oqNaz.DeclareAndSet('pfc_name', otString, rowUsl.Properties.Value);
            oqNaz.DeclareAndSet('pfc_type', otString, rowNum.Properties.Value);
            oqNaz.DeclareAndSet('pfd_run', otDate, StrToDateTime(DateToStr(merDateTime.Properties.Editors[0].Value)+' '+FormatDateTime('hh:nn:ss', IncSecond(merDateTime.Properties.Editors[1].Value, 1))));
            oqNaz.Execute;
            frmMain.os.Commit;
//          end;
//-->>----------------------------------------------------------------------------
      if (trim(rowNum.Properties.Value) <> '') and (rowNum.Properties.Value <> null) and (rowNum.Properties.Value <> '0')  then //����� ������������
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   nSMID11 NUMBER; '+#13+
                            '   Cnt11 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt11 '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :pFK_ID '+#13+
                            '      AND FK_SMID IN (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM in (''NUMBER_ISSL'', ''XRAY_FLU_NUMBER'')); '+#13+
                            ' IF Cnt11 > 0 THEN '+#13+
                            '   UPDATE asu.TIB '+#13+
                            '      SET FC_CHAR = :pFC_CHAR11, FK_VRACHID = :pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID = :pFK_ID '+#13+
                            '      AND FK_SMID IN (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM in (''NUMBER_ISSL'', ''XRAY_FLU_NUMBER'')); '+#13+
                            ' ELSE '+#13+
                            '   SELECT FK_ID INTO nSMID11 FROM asu.TSMID WHERE FC_SYNONIM = ''NUMBER_ISSL''; '+#13+
                            '   INSERT INTO asu.TIB(FK_PACID, FC_CHAR, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :pFC_CHAR11, nSMID11, (select fk_owner from asu.tsmid where fk_id = nSMID11), :pFK_VRACHID, sysdate); '+#13+
                            ' END IF; '+#13+
                            ' END; ';
          oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
          oqNaz.DeclareAndSet('pFC_CHAR11', otString, rowNum.Properties.Value);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
      if (rowTypeKontrast.Properties.Value <> '') and (rowTypeKontrast.Properties.Value <> null) and (rowTypeKontrast.Properties.Value <> '0') then //��������(���)
        begin
          oqNaz.DeleteVariables;
					oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   Cnt3 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt3 '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :PFK_ID '+#13+
                            '      AND FK_SMID IN (SELECT FK_ID FROM asu.TSMID '+#13+
                            '                      START WITH FC_SYNONIM = ''XRAY_TYPEKONTRAST'' CONNECT BY PRIOR FK_ID = FK_OWNER); '+#13+
                            ' IF Cnt3 > 0 THEN '+#13+
                            '   UPDATE asu.TIB '+#13+
                            '      SET FK_SMID = :pFK_SMID3, FK_SMEDITID =:pFK_SMEDITID3, FK_VRACHID =:pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID = :pFK_ID '+#13+
                            '      AND FK_SMID IN (SELECT FK_ID FROM asu.TSMID '+#13+
                            '                      start with fc_synonim = ''XRAY_TYPEKONTRAST'' connect by prior fk_id = fk_owner); '+#13+
                            ' ELSE '+#13+
                            '   INSERT INTO asu.TIB(FK_PACID, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :pFK_SMID3, :pFK_SMEDITID3, :pFK_VRACHID, sysdate); '+#13+
                            ' END IF; '+#13+
                            ' END; ';
          oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
          oqNaz.DeclareAndSet('pFK_SMID3', otInteger, rowTypeKontrast.Tag);
          oqNaz.DeclareAndSet('pFK_SMEDITID3', otInteger, rowTypeKontrast.Tag);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
			if (rowKolvoKontrast.Properties.Value <> 0) and (rowKolvoKontrast.Properties.Value <> null) then //���-�� ���������
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            ' nSMID4 NUMBER; '+#13+
                            ' Cnt4 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt4 '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_KOLVOKONTRAST''); '+#13+
                            ' IF Cnt4 > 0 THEN '+#13+
														'   UPDATE asu.TIB '+#13+
                            '      SET FN_NUM = :pFN_NUM4, FK_SMEDITID = :PFK_SMEDITID, FK_VRACHID = :pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_KOLVOKONTRAST''); '+#13+
														' ELSE '+#13+
														'   SELECT FK_ID INTO nSMID4 FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_KOLVOKONTRAST''; '+#13+
														'   INSERT INTO asu.TIB(FK_PACID, FN_NUM, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :PFN_NUM4, nSMID4, :PFK_SMEDITID, :pFK_VRACHID, sysdate); '+
														' END IF; '+
														' END; ';
					oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
					oqNaz.DeclareAndSet('pFN_NUM4', otFloat, rowKolvoKontrast.Properties.Value);
					oqNaz.DeclareAndSet('PFK_SMEDITID', otInteger, rowTypeKontrast.Tag);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
      if (rowTypeVvod.Properties.Value <> '') and (rowTypeVvod.Properties.Value <> null) and (rowTypeVvod.Properties.Value <> '0') then //������ �����
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   Cnt5 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt5 '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :PFK_ID '+#13+
                            '      AND FK_SMEDITID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_VVOD''); '+#13+
                            ' IF Cnt5 > 0 THEN '+#13+
                            '   UPDATE asu.TIB '+#13+
                            '      SET FK_SMID=:pFK_SMID5, FK_VRACHID=:pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID=:pFK_ID AND FK_SMEDITID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM=''XRAY_VVOD''); '+#13+
                            ' ELSE '+#13+
                            '   INSERT INTO asu.TIB(FK_PACID, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :pFK_SMID5, (select fk_owner from asu.tsmid where fk_id = :pFK_SMID5), :pFK_VRACHID, sysdate); '+#13+
                            ' END IF; '+#13+
                            ' END; ';
          oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
          oqNaz.DeclareAndSet('pFK_SMID5', otInteger, rowTypeVvod.Properties.Value);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
      if (rowKto.Properties.Value <> '') and (rowKto.Properties.Value <> null) and (rowKto.Properties.Value <> '0') then //��� ���� ��������
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   nSMID15 NUMBER; '+#13+
                            '   Cnt15 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt15 '+#13+
                            '     FROM asu.TIB WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''KTO_KONTRAST''); '+#13+
                            ' IF Cnt15 > 0 THEN '+#13+
                            '   UPDATE asu.TIB '+#13+
                            '      SET FN_NUM = :pFN_NUM15, FK_VRACHID = :pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''KTO_KONTRAST''); '+#13+
                            ' ELSE '+#13+
                            '   SELECT FK_ID INTO nSMID15 FROM asu.TSMID WHERE FC_SYNONIM = ''KTO_KONTRAST''; '+#13+
                            '   INSERT INTO asu.TIB(FK_PACID, FN_NUM, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :pFN_NUM15, nSMID15, (select fk_owner from asu.tsmid where fk_id = nSMID15), :pFK_VRACHID, sysdate); '+#13+
                            ' END IF; '+#13+
                            ' END; ';
          oqNaz.DeclareAndSet('pFN_NUM15', otInteger, rowKto.Properties.Value);
          oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
      if (rowTime.Properties.Value <> 0) and (rowTime.Properties.Value <> null) then //�����
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' merge into asu.tib using dual on (fk_pacid = :pfk_pacid and fk_smid=-2 and fk_smeditid=-2) '+#13+
                            ' when matched then update set fn_num = :pfn_num, fk_vrachid = :pfk_vrachid, fd_date = sysdate '+#13+
                            '                    where fk_pacid = :pfk_pacid and fk_smid=-2 and fk_smeditid=-2 '+#13+
                            ' when not matched then insert(fk_pacid, fn_num, fk_smid, fk_smeditid, fk_vrachid, fd_date) '+#13+
                            '                       values(:pfk_pacid, :pfn_num, -2, -2, :pfk_vrachid, sysdate) ';
          oqNaz.DeclareAndSet('pfk_pacid', otInteger, pNazID);
          oqNaz.DeclareAndSet('pfn_num', otInteger, rowTime.Properties.Value);
          oqNaz.DeclareAndSet('pfk_vrachid', otInteger, frmMain.pSotrID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
      if (rowCntSnimki.Properties.Value <> 0) and (rowCntSnimki.Properties.Value <> null) then // ���-�� �������
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   nSMID NUMBER; '+#13+         
                            '   Cnt NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :pFK_PACID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_KOLVOUCHET''); '+#13+
                            ' IF Cnt > 0 THEN '+#13+
                            '   UPDATE asu.TIB '+#13+
                            '      SET FN_NUM = :pFN_NUM, FK_VRACHID = :pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID = :pFK_PACID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_KOLVOUCHET''); '+#13+
                            ' ELSE '+#13+
                            '   SELECT FK_ID INTO nSMID FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_KOLVOUCHET''; '+#13+
                            '   INSERT INTO asu.TIB(FK_PACID, FN_NUM, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_PACID, :pFN_NUM, nSMID, nSMID, :pFK_VRACHID, sysdate); '+#13+
                            ' END IF; '+#13+
                            ' END; ';
          oqNaz.DeclareAndSet('PFN_NUM', otFloat, rowCntSnimki.Properties.Value);
          oqNaz.DeclareAndSet('PFK_PACID', otInteger, pNazID);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
      if (rowDoza.Properties.Value <> 0) and (rowDoza.Properties.Value <> null) then //���� -1
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   Cnt9 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt9 FROM asu.TIB WHERE FK_PACID = :pFK_ID AND FK_SMID = -1 AND FK_SMEDITID = -1; '+#13+
                            ' IF Cnt9 > 0 THEN '+#13+
                            '   UPDATE asu.TIB '+#13+
                            '      SET FN_NUM = :pFN_NUM9, FK_VRACHID = :pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = -1 AND FK_SMEDITID = -1; '+#13+
                            ' ELSE '+#13+
                            '   INSERT INTO asu.TIB(FK_PACID, FN_NUM, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :pFN_NUM9, -1, -1, :pFK_VRACHID, sysdate); '+#13+
                            ' END IF; '+
                            ' END; ';
          oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
          oqNaz.DeclareAndSet('pFN_NUM9', otFloat, rowDoza.Properties.Value);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
      if (rowTypePlenka.Properties.Value <> '') and (rowTypePlenka.Properties.Value <> null) and (rowTypePlenka.Properties.Value <> '0') then // ��� ������
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   Cnt6 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt6 '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :PFK_ID '+#13+
                            '      AND FK_SMEDITID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''RAD_VIDPLENKI''); '+#13+
                            ' IF Cnt6 > 0 THEN '+#13+
                            '   UPDATE asu.TIB '+#13+
                            '      SET FK_SMID = :pFK_SMID6, FK_VRACHID =:pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID = :pFK_ID '+#13+
                            '      AND FK_SMEDITID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''RAD_VIDPLENKI''); '+#13+
                            '   UPDATE asu.TIB '+#13+
                            '      SET FK_SMEDITID =:pFK_SMEDITID6, FK_VRACHID =:pFK_VRACHID '+#13+
                            '    WHERE FK_PACID = :pFK_ID '+#13+
                            '      AND FK_SMID IN (SELECT FK_ID FROM asu.TSMID WHERE FK_OWNER = (SELECT MAX(FK_ID) FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_KOLVO_LISTOV'')); '+#13+
                            ' ELSE '+
                            '   INSERT INTO asu.TIB(FK_PACID, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :pFK_SMID6, (select fk_owner from asu.tsmid where fk_id = :pFK_SMID6), :pFK_VRACHID, sysdate); '+#13+
                            ' END IF; '+
                            ' END; ';
               oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
               oqNaz.DeclareAndSet('pFK_SMID6', otInteger, rowTypePlenka.Properties.Value);
               oqNaz.DeclareAndSet('pFK_SMEDITID6', otInteger, rowTypePlenka.Properties.Value);
               oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
               oqNaz.Execute;
               frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
      if (rowLists.Properties.Value <> '') and (rowLists.Properties.Value <> null) and (rowLists.Properties.Value <> '0') then // �����
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   Cnt6 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt6 '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :PFK_ID '+#13+
                            '      AND FK_SMID IN (SELECT FK_ID FROM asu.TSMID WHERE FK_OWNER = (SELECT MAX(FK_ID) FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_KOLVO_LISTOV'')); '+#13+
                            ' IF Cnt6 > 0 THEN '+
                            '   UPDATE asu.TIB '+#13+
                            '      SET FN_NUM = :pFN_NUM6, FK_SMID = :pFK_SMID6, FK_SMEDITID =:pFK_SMEDITID6, FK_VRACHID =:pFK_VRACHID, fd_date = sysdate '+#13+
                            '    WHERE FK_PACID = :pFK_ID '+#13+
                            '      AND FK_SMID IN (SELECT FK_ID FROM asu.TSMID WHERE FK_OWNER = (SELECT MAX(FK_ID) FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_KOLVO_LISTOV'')); '+#13+
                            ' ELSE '+#13+
                            '   INSERT INTO asu.TIB(FN_NUM, FK_PACID, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFN_NUM6, :pFK_ID, :pFK_SMID6, :pFK_SMEDITID6, :pFK_VRACHID, sysdate); '+
                            ' END IF; '+
                            ' END; ';
          oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
          oqNaz.DeclareAndSet('pFK_SMID6', otInteger, rowLists.Properties.Value);
          oqNaz.DeclareAndSet('pFK_SMEDITID6', otInteger, rowTypePlenka.Properties.Value);
          oqNaz.DeclareAndSet('pFN_NUM6', otFloat, odsKolvoListov.FieldByName('fk_default').AsFloat);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
      if (rowNad.Properties.Value <> '') and (rowNad.Properties.Value <> null) and (rowNad.Properties.Value <> '0') then //�������� � �������
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   Cnt1 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt1 '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :PFK_ID '+#13+
                            '      AND FK_SMEDITID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''TIME_NORMA_ISSL''); '+#13+
                            ' IF Cnt1 > 0 THEN '+#13+
                            '   UPDATE asu.TIB '+#13+
                            '      SET FK_SMID=:pFK_SMID1, FK_VRACHID=:pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID=:pFK_ID '+#13+
                            '      AND FK_SMEDITID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM=''TIME_NORMA_ISSL''); '+#13+
                            ' ELSE '+#13+
                            '   INSERT INTO asu.TIB(FK_PACID, FK_SMID, FK_SMEDITID, FK_VRACHID, FD_DATE) '+#13+
                            '   VALUES(:pFK_ID, :pFK_SMID1, (select fk_owner from asu.tsmid where fk_id = :pFK_SMID1), :pFK_VRACHID, SYSDATE); '+#13+
                            ' END IF; '+#13+
                            ' END; ';
          oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
          oqNaz.DeclareAndSet('pFK_SMID1', otInteger, rowNad.Properties.Value);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
      if (rowTarget.Properties.Value <> '') and (rowTarget.Properties.Value <> null) and (rowTarget.Properties.Value <> '0') then //����
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   Cnt2 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt2 FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :PFK_ID '+#13+
                            '      AND FK_SMEDITID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''ISSL_TARGET'');'+#13+
                            ' IF Cnt2 > 0 THEN '+#13+
                            '   UPDATE asu.TIB '+#13+
                            '      SET FK_SMID=:pFK_SMID2, FK_SMEDITID=(select fk_owner from asu.tsmid where fk_id=:pFK_SMID2), FK_VRACHID=:pFK_VRACHID, fd_date = sysdate '+#13+
                            '    WHERE FK_PACID=:pFK_ID AND FK_SMEDITID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM=''ISSL_TARGET''); '+#13+
                            ' ELSE '+#13+
                            '   INSERT INTO asu.TIB(FK_PACID, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :pFK_SMID2, (select fk_owner from asu.tsmid where fk_id=:pFK_SMID2), :pFK_VRACHID, sysdate); '+#13+
                            ' END IF; '+#13+
                            ' END; ';
          oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
          oqNaz.DeclareAndSet('pFK_SMID2', otInteger, rowTarget.Properties.Value);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
      if (rowKolvo.Properties.Value <> 0) and (rowKolvo.Properties.Value <> '') and (rowKolvo.Properties.Value <> null) then //���-�� ������
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   nSMID8 NUMBER; '+#13+
                            '   Cnt8 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt8 '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_KOLVOKOMY''); '+#13+
                            ' IF Cnt8 > 0 THEN '+#13+
                            '   UPDATE asu.TIB '+#13+
                            '      SET FN_NUM = :pFN_NUM8, FK_VRACHID = :pFK_VRACHID, fd_date = sysdate '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_KOLVOKOMY''); '+#13+
                            ' ELSE '+#13+
                            '   SELECT FK_ID INTO nSMID8 FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_KOLVOKOMY''; '+#13+
                            '   INSERT INTO asu.TIB(FK_PACID, FN_NUM, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :pFN_NUM8, nSMID8, (select fk_owner from asu.tsmid where fk_id = nSMID8), :pFK_VRACHID, sysdate); '+#13+
                            ' END IF; '+#13+
                            ' END; ';
          oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
          oqNaz.DeclareAndSet('pFN_NUM8', otInteger, rowKolvo.Properties.Value);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end else
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' delete from asu.tib '+#13+
                            '  where fk_pacid = :pfk_pacid '+#13+
                            '    and fk_smid = (select fk_id from asu.tsmid where fc_synonim = ''XRAY_KOLVOKOMY'') ';
          oqNaz.DeclareAndSet('pfk_pacid', otInteger, pNazID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
      if (rowPrim.Properties.Value <> '') and (rowPrim.Properties.Value <> null) then //���, ����������
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   nSMID9 NUMBER; '+#13+
                            '   Cnt9 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt9 '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_FIO_REMARK''); '+#13+
                            '   IF Cnt9 > 0 THEN '+#13+
                            '     UPDATE asu.TIB '+#13+
                            '        SET FC_CHAR = :pFC_CHAR9, FK_VRACHID = :pFK_VRACHID, fd_date = sysdate '+#13+
                            '      WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_FIO_REMARK''); '+#13+
                            '   ELSE '+#13+
                            '     SELECT FK_ID INTO nSMID9 FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_FIO_REMARK''; '+#13+
                            '     INSERT INTO asu.TIB(FK_PACID, FC_CHAR, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '     VALUES(:pFK_ID, :PFC_CHAR9, nSMID9, (select fk_owner from asu.tsmid where fk_id = nSMID9), :pFK_VRACHID, sysdate); '+#13+
                            '   END IF; '+#13+
                            ' END; ';
          oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
          oqNaz.DeclareAndSet('pFC_CHAR9', otString, rowPrim.Properties.Value);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end else
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' delete from asu.tib '+#13+
                            '  where fk_pacid = :pfk_pacid and fk_smid = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_FIO_REMARK'') ';
          oqNaz.DeclareAndSet('pfk_pacid', otInteger, pNazID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
      if rowPhone.Visible = True then
        begin
          if (rowPhone.Properties.Value <> '') and (rowPhone.Properties.Value <> null) then //���������� �������
            begin
              oqNaz.DeleteVariables;
              oqNaz.SQL.Text := ' DECLARE '+#13+
                                '   nSMID13 NUMBER; '+#13+
                                '   Cnt13 NUMBER; '+#13+
                                ' BEGIN '+#13+
                                '   SELECT COUNT(FK_ID) INTO Cnt13 '+#13+
                                '     FROM asu.TIB '+#13+
                                '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''KONTAKT_PHONE''); '+#13+
                                ' IF Cnt13 > 0 THEN '+#13+
                                '   UPDATE asu.TIB '+#13+
                                '      SET FC_CHAR = :pFC_CHAR13, FK_VRACHID = :pFK_VRACHID, fd_date=sysdate '+#13+
                                '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''KONTAKT_PHONE''); '+#13+
                                ' ELSE '+#13+
                                '   SELECT FK_ID INTO nSMID13 FROM asu.TSMID WHERE FC_SYNONIM = ''KONTAKT_PHONE''; '+#13+
                                '   INSERT INTO asu.TIB(FK_PACID, FC_CHAR, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                                '   VALUES(:pFK_ID, :PFC_CHAR13, nSMID13, nSMID13, :pFK_VRACHID, sysdate); '+#13+
                                ' END IF; '+#13+
                                ' END; ';
              oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
              oqNaz.DeclareAndSet('pFC_CHAR13', otString, rowPhone.Properties.Value);
              oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
              oqNaz.Execute;
              // -- ������� � ���, ��� ������� �� ��������   = -1
              oqNaz.DeleteVariables;
              oqNaz.SQL.Text := ' DECLARE '+#13+
                                '   nSMID12 NUMBER; '+#13+
                                '   Cnt12 NUMBER; '+#13+
                                ' BEGIN '+#13+
                                '   SELECT COUNT(FK_ID) INTO Cnt12 '+#13+
                                '     FROM asu.TIB '+#13+
                                '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM TSMID WHERE FC_SYNONIM = ''ZAPISAN_ONPHONE''); '+#13+
                                ' IF Cnt12 > 0 THEN '+#13+
                                '   UPDATE asu.TIB '+#13+
                                '      SET FN_NUM = :pFN_NUM12, FK_VRACHID = :pFK_VRACHID, fd_date=sysdate '+#13+
                                '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''ZAPISAN_ONPHONE''); '+#13+
                                ' ELSE '+#13+
                                '   SELECT FK_ID INTO nSMID12 FROM asu.TSMID WHERE FC_SYNONIM = ''ZAPISAN_ONPHONE''; '+#13+
                                '   INSERT INTO asu.TIB(FK_PACID, FN_NUM, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                                '   VALUES(:pFK_ID, :pFN_NUM12, nSMID12, nSMID12, :pFK_VRACHID, sysdate); '+#13+
                                ' END IF; '+#13+
                                ' END; ';
              oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
              oqNaz.DeclareAndSet('pFN_NUM12', otInteger, -1);
              oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
              oqNaz.Execute;
              frmMain.os.Commit;
            end else
            begin
              oqNaz.DeleteVariables;
              oqNaz.SQL.Text := ' delete from asu.tib '+#13+
                                '  where fk_pacid = :pfk_pacid and fk_smid = (select fk_id from asu.tsmid where fc_synonim = ''KONTAKT_PHONE'') ';
              oqNaz.DeclareAndSet('pfk_pacid', otInteger, pNazID);
              oqNaz.Execute;
              // -- ������� � ���, ��� ������� �� ��������   = 0
              oqNaz.DeleteVariables;
              oqNaz.SQL.Text := ' DECLARE '+#13+
                                '   nSMID12 NUMBER; '+#13+
                                '   Cnt12 NUMBER; '+#13+
                                ' BEGIN '+#13+
                                '   SELECT COUNT(FK_ID) INTO Cnt12 '+#13+
                                '     FROM asu.TIB '+#13+
                                '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''ZAPISAN_ONPHONE''); '+#13+
                                ' IF Cnt12 > 0 THEN '+#13+
                                '   UPDATE asu.TIB '+#13+
                                '      SET FN_NUM = :pFN_NUM12, FK_VRACHID = :pFK_VRACHID, fd_date=sysdate '+#13+
                                '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''ZAPISAN_ONPHONE''); '+#13+
                                ' ELSE '+#13+
                                '   SELECT FK_ID INTO nSMID12 FROM asu.TSMID WHERE FC_SYNONIM = ''ZAPISAN_ONPHONE''; '+#13+
                                '   INSERT INTO asu.TIB(FK_PACID, FN_NUM, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                                '   VALUES(:pFK_ID, :pFN_NUM12, nSMID12, nSMID12, :pFK_VRACHID, sysdate); '+#13+
                                ' END IF; '+#13+
                                ' END; ';
              oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
              oqNaz.DeclareAndSet('pFN_NUM12', otInteger, 0);
              oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
              oqNaz.Execute;
              frmMain.os.Commit;
            end;
        end;
//-->>----------------------------------------------------------------------------
      if (rowSotr.Properties.Value <> '') and (rowSotr.Properties.Value <> null) and (rowSotr.Properties.Value <> '0') then //�������-��������
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   nSMID15 NUMBER; '+#13+
                            '   Cnt15 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt15 '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :pFK_ID '+#13+
                            '      AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''RG_LABORANT''); '+#13+
                            ' IF Cnt15 > 0 THEN '+
                            '   UPDATE asu.TIB '+#13+
                            '      SET FN_NUM = :pFN_NUM15, FK_VRACHID = :pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''RG_LABORANT''); '+#13+
                            ' ELSE '+#13+
                            '   SELECT FK_ID INTO nSMID15 FROM asu.TSMID WHERE FC_SYNONIM = ''RG_LABORANT''; '+#13+
                            '   INSERT INTO asu.TIB(FK_PACID, FN_NUM, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :pFN_NUM15, nSMID15, nSMID15, :pFK_VRACHID, sysdate); '+
                            ' END IF; '+
                            ' END; ';
          oqNaz.DeclareAndSet('pFN_NUM15', otInteger, rowSotr.Properties.Value);
          oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID); 
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
      if (rowNaprSotr.Properties.Value <> '') and (rowNaprSotr.Properties.Value <> null) and (pAMBUL = 1) then //����������� ����
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   nSMID25 NUMBER; '+#13+
                            '   Cnt25 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt25 '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''VRACH_NAPRAVIL''); '+#13+
                            ' IF Cnt25 > 0 THEN '+#13+
                            '   UPDATE asu.TIB '+#13+
                            '      SET FC_CHAR = :pFC_CHAR25, FK_VRACHID = :pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''VRACH_NAPRAVIL''); '+#13+
                            ' ELSE '+#13+
                            '   SELECT FK_ID INTO nSMID25 FROM asu.TSMID WHERE FC_SYNONIM = ''VRACH_NAPRAVIL''; '+#13+
                            '   INSERT INTO asu.TIB(FK_PACID, FC_CHAR, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :pFC_CHAR25, nSMID25, (select fk_owner from asu.tsmid where fk_id = nSMID25), :pFK_VRACHID, sysdate); '+#13+
                            ' END IF; '+#13+
                            ' END; ';
          oqNaz.DeclareAndSet('pFC_CHAR25', otString, rowNaprSotr.Properties.Value);
          oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end else
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' delete from asu.tib '+#13+
                            '  where fk_pacid = :pfk_pacid and fk_smid = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''VRACH_NAPRAVIL'') ';
          oqNaz.DeclareAndSet('pfk_pacid', otInteger, pNazID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
        if (merDate.Properties.Editors[0].Value <> '') and (merDate.Properties.Editors[0].Value <> null) then //���� ������
          begin
            oqNaz.DeleteVariables;
            oqNaz.SQL.Text := ' DECLARE '+#13+
                              '   nSMID18 NUMBER; '+#13+
                              '   Cnt18 NUMBER; '+#13+
                              ' BEGIN '+#13+
                              '   SELECT COUNT(FK_ID) INTO Cnt18 '+#13+
                              '     FROM asu.TIB '+#13+
                              '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''DATE_VYDANO''); '+#13+
                              ' IF Cnt18 > 0 THEN '+#13+
                              '   UPDATE asu.TIB '+#13+
                              '      SET FD_DATE = :pFD_DATE18, FK_VRACHID = :pFK_VRACHID '+#13+
                              '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''DATE_VYDANO''); '+#13+
                              ' ELSE '+#13+
                              '   SELECT FK_ID INTO nSMID18 FROM asu.TSMID WHERE FC_SYNONIM = ''DATE_VYDANO''; '+#13+
                              '   INSERT INTO asu.TIB(FK_PACID, FD_DATE, FK_SMID, FK_SMEDITID, FK_VRACHID) '+#13+
                              '   VALUES(:pFK_ID, :PFD_DATE18, nSMID18, (select fk_owner from asu.tsmid where fk_id = nSMID18), :pFK_VRACHID); '+#13+
                              ' END IF; '+#13+
                              ' END; ';
            oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
            oqNaz.DeclareAndSet('pFD_DATE18', otDate, merDate.Properties.Editors[0].Value);
            oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
            oqNaz.Execute;
            frmMain.os.Commit;
          end else
          begin
            oqNaz.DeleteVariables;
            oqNaz.SQL.Text := ' delete from asu.tib '+#13+
                              '  where fk_pacid = :pfk_pacid and fk_smid = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''DATE_VYDANO'') ';
            oqNaz.DeclareAndSet('pfk_pacid', otInteger, pNazID);
            oqNaz.Execute;
            frmMain.os.Commit;
          end;
//-->>----------------------------------------------------------------------------
        if (merDate.Properties.Editors[1].Value <> '') and (merDate.Properties.Editors[1].Value <> null) then //���� ��������
          begin
            oqNaz.DeleteVariables;
            oqNaz.SQL.Text := ' DECLARE '+#13+
                              '   nSMID19 NUMBER; '+#13+
                              '   Cnt19 NUMBER; '+#13+
                              ' BEGIN '+#13+
                              '   SELECT COUNT(FK_ID) INTO Cnt19 '+#13+
                              '     FROM asu.TIB '+#13+
                              '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''DATE_VOZVRAT''); '+#13+
                              ' IF Cnt19 > 0 THEN '+#13+
                              '   UPDATE asu.TIB '+#13+
                              '      SET FD_DATE = :pFD_DATE19, FK_VRACHID = :pFK_VRACHID '+#13+
                              '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''DATE_VOZVRAT''); '+#13+
                              ' ELSE '+#13+
                              '   SELECT FK_ID INTO nSMID19 FROM asu.TSMID WHERE FC_SYNONIM = ''DATE_VOZVRAT''; '+#13+
                              '   INSERT INTO asu.TIB(FK_PACID, FD_DATE, FK_SMID, FK_SMEDITID, FK_VRACHID) '+#13+
                              '   VALUES(:pFK_ID, :PFD_DATE19, nSMID19, (select fk_owner from asu.tsmid where fk_id = nSMID19), :pFK_VRACHID); '+#13+
                              ' END IF; '+#13+
                              ' END; ';
            oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
            oqNaz.DeclareAndSet('pFD_DATE19', otDate, merDate.Properties.Editors[1].Value);
            oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
            oqNaz.Execute;
            frmMain.os.Commit;
          end else
          begin
            oqNaz.DeleteVariables;
            oqNaz.SQL.Text := ' delete from asu.tib '+#13+
                              '  where fk_pacid = :pfk_pacid and fk_smid = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''DATE_VOZVRAT'') ';
            oqNaz.DeclareAndSet('pfk_pacid', otInteger, pNazID);
            oqNaz.Execute;
            frmMain.os.Commit;
          end;
//-->>----------------------------------------------------------------------------
      if (rowKuda.Properties.Value <> '') and (rowKuda.Properties.Value <> null) and (rowKuda.Properties.Value <> '0') then //���������
        begin
          odsOtdelVydano.Locate('fk_id', rowKuda.Properties.Value, []);
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   nSMID20 NUMBER; '+#13+
                            '   Cnt20 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt20 '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :PFK_ID '+#13+
                            '      AND FK_SMEDITID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''OTDEL_VYDANO''); '+#13+
                            ' IF Cnt20 > 0 THEN '+#13+
                            '   UPDATE asu.TIB '+#13+
                            '      SET FK_SMID=:pFK_SMID20, FC_CHAR=:pFC_CHAR20, FK_VRACHID=:pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID=:pFK_ID '+#13+
                            '      AND FK_SMEDITID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''OTDEL_VYDANO''); '+#13+
                            ' ELSE '+#13+
                            '   INSERT INTO asu.TIB(FK_PACID, FC_CHAR, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :pFC_CHAR20, :pFK_SMID20, (select fk_owner from asu.tsmid where fk_id = :pFK_SMID20), :pFK_VRACHID, sysdate); '+#13+
                            ' END IF; '+#13+
                            ' END; ';
          oqNaz.DeclareAndSet('pFK_SMID20', otInteger, rowKuda.Properties.Value);
          oqNaz.DeclareAndSet('pFC_CHAR20', otString, odsOtdelVydano.FieldByName('fc_name').AsString);
          oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
      if (rowNapr.Properties.Value <> '') and (rowNapr.Tag <> 0) and (pAMBUL = 1) then //��� ��������� // !!! ����� ������ ��� ��������� ������ ���� ��� �� ���������� � ��� ���� � ���� ������ !!!!!!!
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   ID23 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT MAX(FK_ID) INTO ID23 '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :PFK_ID '+#13+
                            '      AND FK_SMID IN (SELECT FK_ID FROM asu.TSMID '+#13+
                            '                      START WITH FC_SYNONIM = ''KEM_NAPRAVLEN'' '+#13+
                            '                      CONNECT BY PRIOR FK_ID = FK_OWNER '+#13+
                            '                      UNION ALL '+#13+
                            '                      SELECT FK_ID FROM ASU.TSMID '+#13+
                            '                      START WITH FC_SYNONIM = ''PD_NAPRAVIV_YCH'' '+#13+
                            '                      CONNECT BY PRIOR FK_ID = FK_OWNER); '+#13+
                            ' IF ID23 IS NOT NULL THEN '+#13+
                            '   UPDATE asu.TIB '+#13+
                            '      SET FK_SMID = :pFK_SMID23, FC_CHAR = :pFC_CHAR, FK_VRACHID =:pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_ID = ID23; '+#13+
                            ' ELSE '+#13+
                            '   INSERT INTO asu.TIB(FK_PACID, FK_SMID, FK_SMEDITID, FC_CHAR, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :pFK_SMID23, (select fk_id from asu.tsmid where fc_synonim = ''PD_NAPRAVIV_YCH''), :pFC_CHAR, :pFK_VRACHID, sysdate); '+#13+
                            ' END IF; '+#13+
                            ' END; ';
          oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
          oqNaz.DeclareAndSet('pFK_SMID23', otInteger, rowNapr.Tag);
          oqNaz.DeclareAndSet('pFC_CHAR', otString, rowNapr.Properties.Value);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
          if (isKonsult = True) and (idTalon <> 0) then
            begin
              oqNaz.DeleteVariables;
              oqNaz.DeclareAndSet('PFK_ID', otInteger, idTalon);
              oqNaz.DeclareAndSet('pFK_SMID23', otInteger, rowNapr.Tag);
              oqNaz.DeclareAndSet('pFC_CHAR', otString, rowNapr.Properties.Value);
              oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
              oqNaz.Execute;
              frmMain.os.Commit;
            end;
        end else
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' delete from asu.tib '+#13+
                            '  where fk_pacid = :pfk_pacid and fk_smeditid = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''PD_NAPRAVIV_YCH'') ';
          oqNaz.DeclareAndSet('pfk_pacid', otInteger, pNazID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
      if (rowVidOpl.Properties.Value <> '') and (rowVidOpl.Properties.Value <> null) and (rowVidOpl.Properties.Value <> '0') then //������ ������
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   Cnt24 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt24 '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :PFK_ID '+#13+
                            '      AND FK_SMEDITID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''AMBTALON_OPL''); '+#13+
                            ' IF Cnt24 > 0 THEN '+#13+
                            '   UPDATE asu.TIB '+#13+
                            '      SET FK_SMID=:pFK_SMID24, FK_VRACHID=:pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID=:pFK_ID '+#13+
                            '      AND FK_SMEDITID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM=''AMBTALON_OPL''); '+#13+
                            ' ELSE '+#13+
                            '   INSERT INTO asu.TIB(FK_PACID, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :pFK_SMID24, (select fk_owner from asu.tsmid where fk_id = :pFK_SMID24), :pFK_VRACHID, sysdate); '+#13+
                            ' END IF; '+#13+
                            ' END; ';
          oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
          oqNaz.DeclareAndSet('pFK_SMID24', otInteger, rowVidOpl.Properties.Value);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
      if (rowDS.Properties.Value <> '') and (rowDS.Properties.Value <> null) then //�������
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   nSMID25 NUMBER; '+#13+
                            '   Cnt25 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt25 '+#13+
                            '     FROM asu.TIB WHERE FK_PACID = :pFK_ID '+#13+
                            '      AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_DIAGNOZ''); '+#13+
                            ' IF Cnt25 > 0 THEN '+#13+
                            '   UPDATE asu.TIB '+#13+
                            '      SET FC_CHAR = :pFC_CHAR25, FK_VRACHID = :pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_DIAGNOZ''); '+#13+
                            ' ELSE '+#13+
                            '   SELECT FK_ID INTO nSMID25 FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_DIAGNOZ''; '+#13+
                            '   INSERT INTO asu.TIB(FK_PACID, FC_CHAR, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :PFC_CHAR25, nSMID25, (select fk_owner from asu.tsmid where fk_id = nSMID25), :pFK_VRACHID, sysdate); '+#13+
                            ' END IF; '+#13+
                            ' END; ';
          oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
          oqNaz.DeclareAndSet('pFC_CHAR25', otString, rowDS.Properties.Value);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
      if (rowKrat.Properties.Value <> '') and (rowKrat.Properties.Value <> null) and (rowKrat.Properties.Value <> '0') then //���������
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   Cnt27 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt27 '+#13+
                            '     FROM ASU.TIB '+#13+
                            '    WHERE FK_PACID = :PFK_ID '+#13+
                            '      AND FK_SMEDITID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_KRATNOST''); '+#13+
                            ' IF Cnt27 > 0 THEN '+
                            '   UPDATE asu.TIB SET FK_SMID=:pFK_SMID27, FK_VRACHID=:pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID=:pFK_ID '+#13+
                            '      AND FK_SMEDITID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM=''XRAY_KRATNOST''); '+#13+
                            ' ELSE '+#13+
                            '   INSERT INTO asu.TIB(FK_PACID, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :pFK_SMID27, (select fk_owner from asu.tsmid where fk_id = :pFK_SMID27), :pFK_VRACHID, sysdate); '+#13+
                            ' END IF; '+#13+
                            ' END; ';
          oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
          oqNaz.DeclareAndSet('pFK_SMID27', otInteger, rowKrat.Properties.Value);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
			if (merWH.Properties.Editors[1].Value <> 0) and (merWH.Properties.Editors[1].Value <> null) then // ���
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   nSMID4 NUMBER; '+#13+
                            '   Cnt4 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt4 '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''RADIO_VES''); '+#13+
                            ' IF Cnt4 > 0 THEN '+#13+
														'   UPDATE asu.TIB '+#13+
                            '      SET FN_NUM = :pFN_NUM4, FK_VRACHID = :pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''RADIO_VES''); '+#13+
														' ELSE '+#13+
														'   SELECT FK_ID INTO nSMID4 FROM asu.TSMID WHERE FC_SYNONIM = ''RADIO_VES''; '+#13+
														'   INSERT INTO asu.TIB(FK_PACID, FN_NUM, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :PFN_NUM4, nSMID4, (select fk_owner from asu.tsmid where fk_id = nSMID4), :pFK_VRACHID, sysdate); '+#13+
														' END IF; '+
														' END; ';
					oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
					oqNaz.DeclareAndSet('pFN_NUM4', otFloat, merWH.Properties.Editors[1].Value);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
			if (merWH.Properties.Editors[0].Value <> 0) and (merWH.Properties.Editors[0].Value <> null) then // ����
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   nSMID4 NUMBER; '+#13+
                            '   Cnt4 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt4 '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''RADIO_ROST''); '+#13+
                            ' IF Cnt4 > 0 THEN '+#13+
														'   UPDATE asu.TIB '+#13+
                            '      SET FN_NUM = :pFN_NUM4, FK_VRACHID = :pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''RADIO_ROST''); '+#13+
														' ELSE '+#13+
														'   SELECT FK_ID INTO nSMID4 FROM asu.TSMID WHERE FC_SYNONIM = ''RADIO_ROST''; '+#13+
														'   INSERT INTO asu.TIB(FK_PACID, FN_NUM, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :PFN_NUM4, nSMID4, (select fk_owner from asu.tsmid where fk_id = nSMID4), :pFK_VRACHID, sysdate); '+#13+
														' END IF; '+
														' END; ';
					oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
					oqNaz.DeclareAndSet('pFN_NUM4', otFloat, merWH.Properties.Editors[0].Value);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
			if (rowVol.Properties.Value <> 0) and (rowVol.Properties.Value <> null) then // ����� ���
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   nSMID4 NUMBER; '+#13+
                            '   Cnt4 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt4 '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''RADIO_VOLUME_RFP''); '+#13+
                            ' IF Cnt4 > 0 THEN '+#13+
														'   UPDATE asu.TIB '+#13+
                            '      SET FN_NUM = :pFN_NUM4, FK_VRACHID = :pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''RADIO_VOLUME_RFP''); '+#13+
														' ELSE '+#13+
														'   SELECT FK_ID INTO nSMID4 FROM asu.TSMID WHERE FC_SYNONIM = ''RADIO_VOLUME_RFP''; '+#13+
														'   INSERT INTO asu.TIB(FK_PACID, FN_NUM, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :PFN_NUM4, nSMID4, (select fk_owner from asu.tsmid where fk_id = nSMID4), :pFK_VRACHID, sysdate); '+#13+
														' END IF; '+
														' END; ';
					oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
					oqNaz.DeclareAndSet('pFN_NUM4', otInteger, rowVol.Properties.Value);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
			if (merVve.Properties.Editors[0].Value <> 0) and (merVve.Properties.Editors[0].Value <> null) then // ������� (���) ��
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   nSMID4 NUMBER; '+#13+
                            '   Cnt4 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt4 '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''RADIO_VVEDENO''); '+#13+
                            ' IF Cnt4 > 0 THEN '+#13+
														'   UPDATE asu.TIB '+#13+
                            '      SET FN_NUM = :pFN_NUM4, FK_VRACHID = :pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''RADIO_VVEDENO''); '+#13+
														' ELSE '+#13+
														'   SELECT FK_ID INTO nSMID4 FROM asu.TSMID WHERE FC_SYNONIM = ''RADIO_VVEDENO''; '+#13+
														'   INSERT INTO asu.TIB(FK_PACID, FN_NUM, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :PFN_NUM4, nSMID4, (select fk_owner from asu.tsmid where fk_id = nSMID4), :pFK_VRACHID, sysdate); '+#13+
														' END IF; '+
														' END; ';
					oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
					oqNaz.DeclareAndSet('pFN_NUM4', otInteger, merVve.Properties.Editors[0].Value);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
			if (merVve.Properties.Editors[1].Value <> 0) and (merVve.Properties.Editors[1].Value <> null) then // �����
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   nSMID4 NUMBER; '+#13+
                            '   Cnt4 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt4 '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''RADIO_HOURS''); '+#13+
                            ' IF Cnt4 > 0 THEN '+#13+
														'   UPDATE asu.TIB '+#13+
                            '      SET FN_NUM = :pFN_NUM4, FK_VRACHID = :pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''RADIO_HOURS''); '+#13+
														' ELSE '+#13+
														'   SELECT FK_ID INTO nSMID4 FROM asu.TSMID WHERE FC_SYNONIM = ''RADIO_HOURS''; '+#13+
														'   INSERT INTO asu.TIB(FK_PACID, FN_NUM, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :PFN_NUM4, nSMID4, (select fk_owner from asu.tsmid where fk_id = nSMID4), :pFK_VRACHID, sysdate); '+#13+
														' END IF; '+
														' END; ';
					oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
					oqNaz.DeclareAndSet('pFN_NUM4', otInteger, merVve.Properties.Editors[1].Value);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
			if (merVve.Properties.Editors[2].Value <> 0) and (merVve.Properties.Editors[2].Value <> null) then // �����
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   nSMID4 NUMBER; '+#13+
                            '   Cnt4 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt4 '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''RADIO_MINUTES''); '+#13+
                            ' IF Cnt4 > 0 THEN '+#13+
														'   UPDATE asu.TIB '+#13+
                            '      SET FN_NUM = :pFN_NUM4, FK_VRACHID = :pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''RADIO_MINUTES''); '+#13+
														' ELSE '+#13+
														'   SELECT FK_ID INTO nSMID4 FROM asu.TSMID WHERE FC_SYNONIM = ''RADIO_MINUTES''; '+#13+
														'   INSERT INTO asu.TIB(FK_PACID, FN_NUM, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :PFN_NUM4, nSMID4, (select fk_owner from asu.tsmid where fk_id = nSMID4), :pFK_VRACHID, sysdate); '+#13+
														' END IF; '+
														' END; ';
					oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
					oqNaz.DeclareAndSet('pFN_NUM4', otInteger, merVve.Properties.Editors[2].Value);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
			if rowAct.Properties.Value <> null then // ���������� ����������
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   nSMID4 NUMBER; '+#13+
                            '   Cnt4 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt4 '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''RADIO_LAST_ACTIVE''); '+#13+
                            ' IF Cnt4 > 0 THEN '+#13+
														'   UPDATE asu.TIB '+#13+
                            '      SET FN_NUM = :pFN_NUM4, FK_VRACHID = :pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID = :pFK_ID AND FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''RADIO_LAST_ACTIVE''); '+#13+
														' ELSE '+#13+
														'   SELECT FK_ID INTO nSMID4 FROM asu.TSMID WHERE FC_SYNONIM = ''RADIO_LAST_ACTIVE''; '+#13+
														'   INSERT INTO asu.TIB(FK_PACID, FN_NUM, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :PFN_NUM4, nSMID4, (select fk_owner from asu.tsmid where fk_id = nSMID4), :pFK_VRACHID, sysdate); '+#13+
														' END IF; '+
														' END; ';
					oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
					oqNaz.DeclareAndSet('pFN_NUM4', otInteger, rowAct.Properties.Value);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
      if (rowRFP.Properties.Value <> null) and (rowRFP.Properties.Value <> '') and (rowRFP.Properties.Value <> '0') then // ���
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   nSMID4 NUMBER; '+#13+
                            '   Cnt4 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt4 '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :pFK_ID '+#13+
                            '      AND FK_SMID in (SELECT FK_ID FROM asu.TSMID start with FC_SYNONIM = ''RADIO_RFP'' connect by prior fk_id = fk_owner); '+#13+
                            ' IF Cnt4 > 0 THEN '+#13+
														'   UPDATE asu.TIB '+#13+
                            '      SET fk_smid = :pfk_smid, FK_VRACHID = :pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID = :pFK_ID '+#13+
                            '      AND FK_SMID in (SELECT FK_ID FROM asu.TSMID start with FC_SYNONIM = ''RADIO_RFP'' connect by prior fk_id = fk_owner); '+#13+
														' ELSE '+#13+
														'   INSERT INTO asu.TIB(FK_PACID, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :pfk_smid, (select fk_owner from asu.tsmid where fk_id = :pfk_smid), :pFK_VRACHID, sysdate); '+#13+
														' END IF; '+
														' END; ';
					oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
          oqNaz.DeclareAndSet('pfk_smid', otInteger, rowRFP.Properties.Value);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
      if (rowType.Properties.Value <> null) and (rowType.Properties.Value <> '') and (rowType.Properties.Value <> '0') then // ���
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   nSMID4 NUMBER; '+#13+
                            '   Cnt4 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt4 '+#13+
                            '     FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :pFK_ID '+#13+
                            '      AND FK_SMID in (SELECT FK_ID FROM asu.TSMID start with FC_SYNONIM = ''RADIO_TYPE'' connect by prior fk_id = fk_owner); '+#13+
                            ' IF Cnt4 > 0 THEN '+#13+
														'   UPDATE asu.TIB '+#13+
                            '      SET fk_smid = :pfk_smid, FK_VRACHID = :pFK_VRACHID, fd_date=sysdate '+#13+
                            '    WHERE FK_PACID = :pFK_ID '+#13+
                            '      AND FK_SMID in (SELECT FK_ID FROM asu.TSMID start with FC_SYNONIM = ''RADIO_TYPE'' connect by prior fk_id = fk_owner); '+#13+
														' ELSE '+#13+
														'   INSERT INTO asu.TIB(FK_PACID, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :pfk_smid, (select fk_owner from asu.tsmid where fk_id = :pfk_smid), :pFK_VRACHID, sysdate); '+#13+
														' END IF; '+
														' END; ';
					oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
          oqNaz.DeclareAndSet('pfk_smid', otInteger, rowType.Properties.Value);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
      if (rowScan.Properties.Value <> '') and (rowScan.Properties.Value <> null) and (rowScan.Properties.Value <> '0') then // �����
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   Cnt2 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt2 FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :PFK_ID '+#13+
                            '      AND FK_SMEDITID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''RADIO_TYPESCAN'');'+#13+
                            ' IF Cnt2 > 0 THEN '+#13+
                            '   UPDATE asu.TIB '+#13+
                            '      SET FK_SMID=:pFK_SMID2, FK_VRACHID=:pFK_VRACHID, fd_date = sysdate '+#13+
                            '    WHERE FK_PACID=:pFK_ID AND FK_SMEDITID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM=''RADIO_TYPESCAN''); '+#13+
                            ' ELSE '+#13+
                            '   INSERT INTO asu.TIB(FK_PACID, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :pFK_SMID2, (select fk_owner from asu.tsmid where fk_id=:pFK_SMID2), :pFK_VRACHID, sysdate); '+#13+
                            ' END IF; '+#13+
                            ' END; ';
          oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
          oqNaz.DeclareAndSet('pFK_SMID2', otInteger, rowScan.Properties.Value);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
      if (rowVvodRFP.Properties.Value <> '') and (rowVvodRFP.Properties.Value <> null) and (rowVvodRFP.Properties.Value <> '0') then // ����� ����� ���
        begin
          oqNaz.DeleteVariables;
          oqNaz.SQL.Text := ' DECLARE '+#13+
                            '   Cnt2 NUMBER; '+#13+
                            ' BEGIN '+#13+
                            '   SELECT COUNT(FK_ID) INTO Cnt2 FROM asu.TIB '+#13+
                            '    WHERE FK_PACID = :PFK_ID '+#13+
                            '      AND FK_SMEDITID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''RADIO_VVOD_RFP'');'+#13+
                            ' IF Cnt2 > 0 THEN '+#13+
                            '   UPDATE asu.TIB '+#13+
                            '      SET FK_SMID=:pFK_SMID2, FK_VRACHID=:pFK_VRACHID, fd_date = sysdate '+#13+
                            '    WHERE FK_PACID=:pFK_ID AND FK_SMEDITID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM=''RADIO_VVOD_RFP''); '+#13+
                            ' ELSE '+#13+
                            '   INSERT INTO asu.TIB(FK_PACID, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                            '   VALUES(:pFK_ID, :pFK_SMID2, (select fk_owner from asu.tsmid where fk_id=:pFK_SMID2), :pFK_VRACHID, sysdate); '+#13+
                            ' END IF; '+#13+
                            ' END; ';
          oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
          oqNaz.DeclareAndSet('pFK_SMID2', otInteger, rowVvodRFP.Properties.Value);
          oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
//-->>----------------------------------------------------------------------------
      if rowCompany.Visible = True then //�������� �� ��������
        begin
          if (rowCompany.Properties.Value <> '') and (rowCompany.Properties.Value <> null) and (rowCompany.Tag <> 0) then
            begin
              oqNaz.DeleteVariables;
              oqNaz.SQL.Text := ' DECLARE '+#13+
                                '   Cnt26 NUMBER; '+#13+
                                ' BEGIN '+#13+
                                '   SELECT COUNT(FK_ID) INTO Cnt26 '+#13+
                                '     FROM asu.TIB '+#13+
                                '    WHERE FK_PACID = :PFK_ID '+#13+
                                '      AND FK_SMEDITID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_COMPANY_DOGOVOR''); '+#13+
                                ' IF Cnt26 > 0 THEN '+#13+
                                '   UPDATE asu.TIB '+#13+
                                '      SET FK_SMID=:pFK_SMID26, FK_VRACHID=:pFK_VRACHID, fd_date=sysdate '+#13+
                                '    WHERE FK_PACID=:pFK_ID '+#13+
                                '      AND FK_SMEDITID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM=''XRAY_COMPANY_DOGOVOR''); '+#13+
                                ' ELSE '+#13+
                                '   INSERT INTO asu.TIB(FK_PACID, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                                '   VALUES(:pFK_ID, :pFK_SMID26, (select fk_owner from asu.tsmid where fk_id = :pFK_SMID26), :pFK_VRACHID, sysdate); '+#13+
                                ' END IF; '+#13+
                                ' END; ';
              oqNaz.DeclareAndSet('PFK_ID', otInteger, pNazID);
              oqNaz.DeclareAndSet('pFK_SMID26', otInteger, rowCompany.Tag);
              oqNaz.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
              oqNaz.Execute;
              frmMain.os.Commit;
            end else
            begin
              oqNaz.DeleteVariables; // ������� �����
              oqNaz.SQL.Text := ' DELETE FROM asu.TIB '+#13+
                                '  WHERE FK_PACID = :PFK_PACID '+#13+
                                '    AND FK_SMEDITID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_COMPANY_DOGOVOR'') ';
              oqNaz.DeclareAndSet('PFK_PACID', otInteger, pNazID);
              oqNaz.Execute;
              frmMain.os.Commit;
            end;
        end else
        begin
          oqNaz.DeleteVariables; // � ����� ���� �������
          oqNaz.SQL.Text := ' DELETE FROM asu.TIB '+#13+
                            '  WHERE FK_PACID = :PFK_PACID '+#13+
                            '    AND FK_SMEDITID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_COMPANY_DOGOVOR'') ';
          oqNaz.DeclareAndSet('PFK_PACID', otInteger, pNazID);
          oqNaz.Execute;
          frmMain.os.Commit;
        end;
    finally
      oqNaz.Free;
    end;
  end;
end;

procedure TfrmNaprRad.DoInsertGra(nIDPepl: Integer);
var ods : TOracleDataSet;
begin
  if (rowGra.Properties.Value <> '') and (rowGra.Properties.Value <> null) then
    begin
      ods := TOracleDataSet.Create(nil);
      try
        ods.Session := frmMain.os;
        ods.Cursor := crSQLWait;
        ods.SQL.Text := ' merge into asu.tib using dual on (fk_pacid = :pfk_pacid and fk_smeditid = (select fk_id from asu.tsmid where fc_synonim = ''LD_GRAGZ'')) '+#13+
                        ' when matched then '+#13+
                        '   update set fk_smid = :pfk_smid, fk_vrachid = :pfk_vrachid, fd_date = sysdate '+#13+
                        '    where fk_smeditid = (select fk_id from asu.tsmid where fc_synonim = ''LD_GRAGZ'') '+#13+
                        ' when not matched then '+#13+
                        '   insert(fk_pacid, fk_smid, fk_smeditid, fk_vrachid, fd_date) '+#13+
                        '   values(:pfk_pacid, :pfk_smid, (select fk_id from asu.tsmid where fc_synonim = ''LD_GRAGZ''), :pfk_vrachid, sysdate) ';
        ods.DeclareAndSet('pfk_pacid', otInteger, nIDPepl);
        ods.DeclareAndSet('pfk_smid', otInteger, rowGra.Properties.Value);
        ods.DeclareAndSet('pfk_vrachid', otInteger, frmMain.pSOTRID);
        ods.Open;
        frmMain.os.Commit;
      finally
        ods.Free;
      end;
    end;
end;

procedure TfrmNaprRad.DoInsertKorennoe(nIDPepl: Integer);
var ods : TOracleDataSet;
     oq : TOracleQuery;
begin
if (rowKMNS.Properties.Value <> '') and (rowKMNS.Properties.Value <> null) then
  begin
  ods := TOracleDataSet.Create(nil);
  try
    ods.Session := frmMain.os;
    ods.SQL.Text := ' SELECT MAX(FK_ID) AS nTmp '+#13+
                    '   FROM asu.TIB I '+#13+
                    '  WHERE FK_PACID = :PFK_PACID '+#13+
                    '    AND FK_SMID IN (SELECT FK_ID '+#13+
                    '                      FROM asu.TSMID '+#13+
                    '                     WHERE FK_OWNER = (SELECT MAX(FK_ID) FROM asu.TSMID WHERE FC_SYNONIM = ''KOREN_NASEL'')) ';
    ods.DeclareAndSet('PFK_PACID', otInteger, nidPepl);
    ods.Open;
    if ods.FieldByName('nTmp').AsInteger = 0 then //��������� ���� �� ����� ������ �� ��������(PEPLID) � TIB
      begin
        oq := TOracleQuery.Create(nil); //���� ���, �� ��������� ����� (INSERT)
        try
          oq.Session := frmMain.os;
          oq.SQL.Text := ' INSERT INTO asu.TIB(FK_PACID, FK_SMID, FK_SMEDITID, FK_VRACHID, fd_date) '+#13+
                         ' VALUES(:pFK_PACID, :pFK_SMID, (select fk_owner from asu.tsmid where fk_id = :pfk_smid), :pFK_VRACHID, sysdate) ';
          oq.DeclareAndSet('pFK_PACID', otInteger, nidPepl);
          oq.DeclareAndSet('pFK_SMID', otInteger, rowKMNS.Properties.Value);
          oq.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
          oq.Execute;
          frmMain.os.Commit;
        finally
          oq.Free;
        end;
      end else
      begin
        oq := TOracleQuery.Create(nil); //���� ��, �� �������� ������������ (UPDATE)
        try
          oq.Session := frmMain.os;
          oq.SQL.Text := ' UPDATE asu.TIB SET FK_SMID = :pFK_SMID, fk_vrachid=:pfk_vrachid, fd_date=sysdate WHERE FK_ID = :pFK_ID ';
          oq.DeclareAndSet('pFK_SMID', otInteger, rowKMNS.Properties.Value);
          oq.DeclareAndSet('pfk_vrachid', otInteger, frmMain.pSOTRID);
          oq.DeclareAndSet('pFK_ID', otInteger, ods.FieldByName('nTmp').AsInteger);
          oq.Execute;
          frmMain.os.Commit;
        finally
          oq.Free;
        end;
      end;
  finally
    ods.Free;
  end;
  end;
end;

procedure TfrmNaprRad.DoInsertNewNaz(nPacID : Integer);
var oq : TOracleQuery;
begin
//-->> 1. ��������� ����������
  oq := TOracleQuery.Create(nil);
  try
    oq.Session := frmMain.os;
    oq.SQL.Text := ' insert into asu.tnazis(fk_smid, fd_naz, fd_run, fk_roomid, fk_vrachid, fk_nazsosid, fk_pacid, fc_name, fk_naztypeid) '+#13+
                   ' values(:pfk_smid, :pfd_naz, :pfd_run, :pfk_roomid, :pfk_vrachid, asu.get_nevip, :pfk_pacid, :pfc_name, asu.get_nazplan) '+#13+
                   ' returning fk_id into :pfk_id ';
    oq.DeclareAndSet('pfk_smid', otInteger, rowUsl.Tag);
    oq.DeclareAndSet('pfd_naz', otDate, StrToDateTime(DateToStr(merDateTime.Properties.Editors[0].Value)+' '+FormatDateTime('hh:nn:ss', IncSecond(merDateTime.Properties.Editors[1].Value, 1))));
    oq.DeclareAndSet('pfd_run', otDate, StrToDateTime(DateToStr(merDateTime.Properties.Editors[0].Value)+' '+FormatDateTime('hh:nn:ss', IncSecond(merDateTime.Properties.Editors[1].Value, 1))));
    oq.DeclareAndSet('pfk_roomid', otInteger, frmMain.odsKab.FieldByName('fk_id').AsInteger);
    oq.DeclareAndSet('pfk_vrachid', otInteger, frmMain.pSotrID);
    oq.DeclareAndSet('pfk_pacid', otInteger, nPacID);
    oq.DeclareAndSet('pfc_name', otString, rowUsl.Properties.Value);
    oq.DeclareVariable('pfk_id', otInteger);
    oq.Execute;
    frmMain.os.Commit;
    pNazID := oq.GetVariable('pfk_id');
  finally
    oq.Free;
  end;
  if pNazID <> 0 then
    begin
//-->> 2. � ����������� �� ��������� �������� ������ � ������������ �������
      if isKonsult = True then  // ���� ��������������� ������
        begin
          InsertKonsultUslug(pNazID, nPacID);
        end else
        begin
          if (frmMain.GET_AMBTALON_XRAY = '-1') and (pAMBUL = 1) and (EditMode = True) then
            begin
              idTalon := GetLastTalonID(Application.Handle, frmMain.os, pPACID, frmMain.pSOTRID, -1);
            end;
        end;
//-->> 3. ���� ���� ������������ � ��� ������, �� ������ ������ ��� ������ � �����������
      if idTalon <> 0 then
        begin
          oq := TOracleQuery.Create(nil);
          try
            oq.Session := frmMain.os;
            oq.Cursor := crSQLWait;
            oq.SQL.Text := ' merge into asu.tambtalon_naz using dual on '+#13+
                           '   (fk_talonid = :pfk_talonid and fk_ambid = :pfk_ambid and fk_nazid = :pfk_nazid) '+#13+
                           ' when not matched then '+#13+
                           '   insert(fk_talonid, fk_ambid, fk_nazid) values(:pfk_talonid, :pfk_ambid, :pfk_nazid) ';
            oq.DeclareAndSet('PFK_TALONID', otInteger, idTalon);
            oq.DeclareAndSet('PFK_AMBID', otInteger, nPacID);
            oq.DeclareAndSet('PFK_NAZID', otInteger, pNazID);
            oq.Execute;
            frmMain.os.Commit;
          finally
            oq.Free;
          end;
        end;
    end;
end;

procedure TfrmNaprRad.DoInsertProjivaet(nPACID: Integer);
var ods : TOracleDataSet;
     oq : TOracleQuery;
begin
  ods := TOracleDataSet.Create(nil);
  try
    ods.Session := frmMain.os;
    ods.SQL.Text := ' SELECT MAX(FK_ID) AS nTmp '+#13+
                    '   FROM ASU.TIB I '+#13+
                    '  WHERE FK_PACID = :PFK_PACID '+#13+
                    '    AND (FK_SMID IN (SELECT FK_ID FROM ASU.TSMID WHERE FK_OWNER = (SELECT FK_ID FROM ASU.TSMID WHERE FC_SYNONIM = ''PD_MZ'')) '+#13+
                    '     OR FK_SMID = (SELECT FK_ID FROM ASU.TSMID WHERE FC_SYNONIM = ''LIVEIN_SELO'')) ';
    ods.DeclareAndSet('PFK_PACID', otInteger, nPACID);
    ods.Open;
    if ods.FieldByName('nTmp').AsInteger = 0 then
    begin
      oq := TOracleQuery.Create(nil);
      try
        oq.Session := frmMain.os;
        oq.SQL.Text := ' INSERT INTO ASU.TIB(FK_PACID, FK_SMID, FK_SMEDITID, FK_VRACHID) '+#13+
                       ' VALUES(:pFK_PACID, :pFK_SMID, (select fk_owner from asu.tsmid where fk_id = :pFK_SMID), :pFK_VRACHID) ';
        oq.DeclareAndSet('pFK_PACID', otInteger, nPACID);
        oq.DeclareAndSet('pFK_SMID', otInteger, rowProj.Properties.Value);
        oq.DeclareAndSet('pFK_VRACHID', otInteger, frmMain.pSOTRID);
        oq.Execute;
        frmMain.os.Commit;
      finally
        oq.Free;
      end;
    end else
    begin
      if pPACID <> 0 then
      begin
      oq := TOracleQuery.Create(nil);
      try
        oq.Session := frmMain.os;
        oq.SQL.Text := ' UPDATE ASU.TIB '+#13+
                       '    SET FK_SMID = :pFK_SMID, FK_SMEDITID = (select fk_owner from asu.tsmid where fk_id = :pFK_SMID) '+#13+
                       '  WHERE FK_ID = :pFK_ID ';
        oq.DeclareAndSet('pFK_SMID', otInteger, rowProj.Properties.Value);
        oq.DeclareAndSet('pFK_ID', otInteger, ods.FieldByName('nTmp').AsInteger);
        oq.Execute;
        frmMain.os.Commit;
      finally
        oq.Free;
      end;
      end;
    end;
  finally
    ods.Free;
  end;
end;

procedure TfrmNaprRad.DoInsertStatus(nIDPepl: Integer);
var ods : TOracleDataSet;
begin
  if (rowSoc.Properties.Value <> '') and (rowSoc.Properties.Value <> null) then
    begin
      ods := TOracleDataSet.Create(nil);
      try
        ods.Session := frmMain.os;
        ods.Cursor := crSQLWait;
        ods.SQL.Text := ' merge into asu.tib using dual on (fk_pacid = :pfk_pacid and fk_smeditid = (select fk_id from asu.tsmid where fc_synonim = ''LD_SOC_POL'')) '+#13+
                        ' when matched then '+#13+
                        '   update set fk_smid = :pfk_smid, fk_vrachid = :pfk_vrachid, fd_date = sysdate '+#13+
                        '    where fk_smeditid = (select fk_id from asu.tsmid where fc_synonim = ''LD_SOC_POL'') '+#13+
                        ' when not matched then '+#13+
                        '   insert(fk_pacid, fk_smid, fk_smeditid, fk_vrachid, fd_date) '+#13+
                        '   values(:pfk_pacid, :pfk_smid, (select fk_id from asu.tsmid where fc_synonim = ''LD_SOC_POL''), :pfk_vrachid, sysdate) ';
        ods.DeclareAndSet('pfk_pacid', otInteger, nIDPepl);
        ods.DeclareAndSet('pfk_smid', otInteger, rowSoc.Properties.Value);
        ods.DeclareAndSet('pfk_vrachid', otInteger, frmMain.pSOTRID);
        ods.Open;
        frmMain.os.Commit;
      finally
        ods.Free;
      end;
    end;
end;

procedure TfrmNaprRad.DoPodpis;
var oq, oqPod : TOracleQuery;
    ods : TOracleDataSet;
begin
  if pSosID <> get_vipnaz then
    begin
      oq := TOracleQuery.Create(nil); // ��������� ������� TNAZIS, ���������� ������ � VRES
      try
        oq.Session := frmMain.os;
        oq.SQL.Text := ' update asu.tnazis '+#13+
                       '    set fk_nazsosid = :pfk_nazsosid, fk_ispolid = :pfk_ispolid, fd_run = :pfd_run, fl_in_raspis = 1 '+#13+
                       '  where fk_id = :pfk_nazid ';
        oq.DeclareAndSet('pfk_ispolid', otInteger, rowSotr.Properties.Value);
        oq.DeclareAndSet('pfd_run', otDate, StrToDateTime(DateToStr(merDateTime.Properties.Editors[0].Value)+' '+FormatDateTime('hh:nn:ss', IncSecond(merDateTime.Properties.Editors[1].Value, 1))));
        oq.DeclareAndSet('pfk_nazid', otInteger, pNazID);
        oq.DeclareAndSet('pfk_nazsosid', otInteger, get_labvip);
        oq.Execute;
        frmMain.os.Commit;
      finally
        oq.Free;
      end;
    end;

  ods := TOracleDataSet.Create(nil); // ���������� ��� ��������� ������ � TPODPISNAZ (����������� ������)
  oqPod := TOracleQuery.Create(nil);
  try
    ods.Session := frmMain.os;
    ods.SQL.Text := ' select * from asu.tpodpisnaz where fk_nazid =:pfk_nazid and fk_sotrid = :pfk_sotrid ';
    ods.DeclareAndSet('pFK_NAZID', otInteger, pNazID);
    ods.DeclareAndSet('pFK_SOTRID', otInteger, rowSotr.Properties.Value);
    ods.Open;
    if ods.RecordCount > 0 then
      begin
        oqPod.Session := frmMain.os;
        oqPod.DeleteVariables;
	      oqPod.SQL.Text := ' update asu.tpodpisnaz set fk_sos = asu.get_labvip, fd_ins = :pfd_ins '+#13+
                          '  where fk_nazid =:pfk_nazid and fk_sotrid =:pfk_sotrid ';
        oqPod.DeclareAndSet('pFD_INS', otDate, StrToDateTime(DateToStr(merDateTime.Properties.Editors[0].Value)+' '+FormatDateTime('hh:nn', merDateTime.Properties.Editors[1].Value)));
        oqPod.DeclareAndSet('pFK_NAZID', otInteger, pNazID);
        oqPod.DeclareAndSet('pFK_SOTRID', otInteger, rowSotr.Properties.Value);
        oqPod.Execute;
        frmMain.os.Commit;
      end else
      begin
        oqPod.Session := frmMain.os;
        oqPod.DeleteVariables;
	      oqPod.SQL.Text := ' insert into asu.tpodpisnaz(fk_nazid, fk_sotrid, fk_sos, fd_date, fd_ins) '+#13+
	                        ' values(:pfk_nazid, :pfk_sotrid, asu.get_labvip, sysdate, :pfd_ins) ';
        oqPod.DeclareAndSet('pFK_NAZID', otInteger, pNazID);
        oqPod.DeclareAndSet('pFK_SOTRID', otInteger, rowSotr.Properties.Value);
        oqPod.DeclareAndSet('pFD_INS', otDate, StrToDateTime(DateToStr(merDateTime.Properties.Editors[0].Value)+' '+FormatDateTime('hh:nn', merDateTime.Properties.Editors[1].Value)));
        oqPod.Execute;
        frmMain.os.Commit;
      end;
  finally
    ods.Free;
    oqPod.Free;
  end;
end;

procedure TfrmNaprRad.DoProjivaet;
var ods : TOracleDataSet;
    id : Integer;
begin
  ods := TOracleDataSet.Create(nil);
  try
    ods.Session := frmMain.os;
    ods.SQL.Text := ' DECLARE '+#13+
                    '   nSMID NUMBER; '+#13+
                    ' BEGIN '+#13+
                    ' SELECT '+#13+
                    ' DECODE((SELECT MAX(FK_SMID) FROM asu.TIB '+#13+
                    '          WHERE FK_PACID = :PFK_PACID '+#13+
                    '            AND (FK_SMID IN (SELECT FK_ID '+#13+
                    '                               FROM asu.TSMID '+#13+
                    '                              WHERE FK_OWNER = (SELECT MAX(FK_ID) '+#13+
                    '                                                  FROM asu.TSMID '+#13+
                    '                                                 WHERE FC_SYNONIM = ''PD_MZ'')) '+#13+
                    '                                 OR FK_SMID = (SELECT FK_ID FROM TSMID WHERE FC_SYNONIM = ''LIVEIN_SELO''))), '+#13+
                    '        NULL, '+#13+
                    '        (SELECT MAX(FK_SMID) FROM asu.TIB '+#13+
                    '          WHERE FK_PACID = :PFK_PEPLID '+#13+
                    '            AND (FK_SMID IN (SELECT FK_ID '+#13+
                    '                               FROM asu.TSMID '+#13+
                    '                              WHERE FK_OWNER = (SELECT MAX(FK_ID) '+#13+
                    '                                                  FROM asu.TSMID '+#13+
                    '                                                 WHERE FC_SYNONIM = ''PD_MZ'')))), '+#13+
                    '        (SELECT MAX(FK_SMID) FROM asu.TIB '+#13+
                    '          WHERE FK_PACID = :PFK_PACID '+#13+
                    '            AND (FK_SMID IN (SELECT FK_ID '+#13+
                    '                               FROM asu.TSMID '+#13+
                    '                              WHERE FK_OWNER = (SELECT MAX(FK_ID) '+#13+
                    '                                                  FROM asu.TSMID '+#13+
										'                                                 WHERE FC_SYNONIM = ''PD_MZ'')) '+#13+
                    '                                 OR FK_SMID = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''LIVEIN_SELO'')))) INTO :VAL '+#13+
                    ' FROM DUAL; '+#13+
                    ' IF :VAL IS NULL THEN '+#13+
										'   SELECT MAX(FK_ID) INTO :VAL FROM asu.TSMID WHERE FK_OWNER = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''PD_MZ'') AND FK_DEFAULT = 1; '+#13+
                    ' END IF; '+#13+
                    ' END; ';
    ods.DeclareAndSet('PFK_PACID', otInteger, pPACID);
    ods.DeclareAndSet('PFK_PEPLID', otInteger, pPEPLID);
    ods.DeclareVariable('VAL', otInteger);
    ods.Open;
    id := ods.GetVariable('VAL');
    rowProj.Properties.Value := ods.GetVariable('VAL');
    if pPACID = 0 then
      rowProj.Properties.Value := id;
  finally
    ods.Free;
  end;
end;

procedure TfrmNaprRad.DoRegistrator;
var ods : TOracleDataSet;
begin
  if frmMain.list_xray_curr_vrach_as_owner = 1 then
   begin
    rowsotr.Properties.Value := frmmain.pSOTRid;
    rowsotr.Properties.Options.Editing := (frmMain.get_can_change_vrach = 1) or (rowsotr.Properties.Value = null) or (rowsotr.Properties.Value = 1) or (rowsotr.Properties.DisplayTexts[0] = '');
   end
  else
   begin
    ods := TOracleDataSet.Create(nil);
    try
      ods.Session := frmMain.os;
      ods.SQL.Text := ' select fn_num from asu.tib '+#13+
                      '  where fk_pacid = :pfk_id '+#13+
                      '    and fk_smid = (select fk_id from asu.tsmid where fc_synonim = ''RG_LABORANT'') ';
      ods.DeclareAndSet('pfk_id', otInteger, pNazID);
      ods.Open;
      if ods.FieldByName('fn_num').AsInteger > 0 then
        rowSotr.Properties.Value := ods.FieldByName('fn_num').AsInteger
      else
        rowSotr.Properties.Value := frmMain.pSotrID;
    finally
      ods.Free;
    end;
   end;
end;

procedure TfrmNaprRad.DoSetDate;
var ods : TOracleDataSet;
begin
  ods := TOracleDataSet.Create(nil);
  try
    ods.Session := frmMain.os;
    ods.SQL.Text := ' select sysdate from dual ';
    ods.Open;
    merDateTime.Properties.Editors[0].Value := ods.FieldByName('sysdate').AsDateTime;
    merDateTime.Properties.Editors[1].Value := ods.FieldByName('sysdate').AsDateTime;
  finally
    ods.Free;
  end;
end;

procedure TfrmNaprRad.DoSetEditRights;
var ods : TOracleDataSet;
    kolvoParam : Integer;
    kolvoDays : Integer;
begin
  if EditMode = True then
    begin
      if frmMain.bIsAdmin <> 1 then
        begin
          ods := TOracleDataSet.Create(nil);
          try
            ods.Session := frmMain.os;
            if frmMain.nEditDaysOtdel = 0 then
              begin
                ods.SQL.Text := ' select fc_value from asu.tsmini where fc_section = ''XRAY'' and fc_key = ''KOLVODAYS_EDIT'' ';
                ods.Open;
                kolvoParam := StrToInt(ods.FieldByName('fc_value').AsString);
              end else
              begin
                kolvoParam := frmMain.nEditDaysOtdel;
              end;
            ods.DeleteVariables;
            ods.Close;
            ods.SQL.Text := ' select round(sysdate - (select max(fd_date) from asu.tpodpisnaz where fk_sos = asu.get_labvip and fk_nazid = :pfk_nazid)) as cnt '+#13+
                            '   from asu.tnazis where fk_id = :pfk_nazid ';
            ods.DeclareAndSet('PFK_NAZID', otInteger, pNazID);
            ods.Open;
            kolvoDays := ods.FieldByName('CNT').AsInteger;
            if KolvoDays >= kolvoParam then
              begin
                rowEdit.Visible := True;
                rowEdit.Properties.Value := '���������! ������ ����� '+IntToStr(KolvoParam)+' ����� � ���� ���������� �����������! �������� ����������� ������! ';

                rowFam.Properties.EditProperties.ReadOnly := True;
                rowFam.Options.Focusing := False;
                rowFam.Options.TabStop := False;

                rowName.Properties.EditProperties.ReadOnly := True;
                rowName.Options.Focusing := False;
                rowName.Options.TabStop := False;

                rowOtch.Properties.EditProperties.ReadOnly := True;
                rowOtch.Options.Focusing := False;
                rowOtch.Options.TabStop := False;

                rowRojd.Properties.EditProperties.ReadOnly := True;
                rowRojd.Options.Focusing := False;
                rowRojd.Options.TabStop := False;
                if rowRojd.Options.TabStop = False then
                  rowRojd.Properties.Options.ShowEditButtons := eisbNever;

                rowSex.Properties.EditProperties.ReadOnly := True;
                rowSex.Options.Focusing := False;
                rowSex.Options.TabStop := False;
                if rowSex.Options.TabStop = False then
                  rowSex.Properties.Options.ShowEditButtons := eisbNever;

                rowGra.Properties.EditProperties.ReadOnly := True;
                rowGra.Options.Focusing := False;
                rowGra.Options.TabStop := False;
                rowGra.Properties.Options.ShowEditButtons := eisbNever;

                rowSoc.Properties.EditProperties.ReadOnly := True;
                rowSoc.Options.Focusing := False;
                rowSoc.Options.TabStop := False;
                rowSoc.Properties.Options.ShowEditButtons := eisbNever;

                rowKMNS.Properties.EditProperties.ReadOnly := True;
                rowKMNS.Options.Focusing := False;
                rowKMNS.Options.TabStop := False;
                rowKMNS.Properties.Options.ShowEditButtons := eisbNever;

                rowVidOpl.Properties.EditProperties.ReadOnly := True;
                rowVidOpl.Options.Focusing := False;
                rowVidOpl.Options.TabStop := False;
                rowVidOpl.Properties.Options.ShowEditButtons := eisbNever;

                rowCompany.Properties.EditProperties.ReadOnly := True;
                rowCompany.Options.Focusing := False;
                rowCompany.Options.TabStop := False;
                rowCompany.Properties.Options.ShowEditButtons := eisbNever;

                rowProj.Properties.EditProperties.ReadOnly := True;
                rowProj.Options.Focusing := False;
                rowProj.Options.TabStop := False;
                rowProj.Properties.Options.ShowEditButtons := eisbNever;

                rowPhone.Properties.EditProperties.ReadOnly := True;
                rowPhone.Options.Focusing := False;
                rowPhone.Options.TabStop := False;

                memAdr.Enabled := False;
                rowNapr.Properties.EditProperties.ReadOnly := True;
                rowNapr.Options.Focusing := False;
                rowNapr.Options.TabStop := False;
                rowNapr.Properties.Options.ShowEditButtons := eisbNever;

                rowNaprSotr.Properties.EditProperties.ReadOnly := True;
                rowNaprSotr.Options.Focusing := False;
                rowNaprSotr.Options.TabStop := False;

                rowDs.Properties.EditProperties.ReadOnly := True;
                rowDs.Options.Focusing := False;
                rowDs.Options.TabStop := False;

                rowUsl.Properties.EditProperties.ReadOnly := True;
                rowUsl.Options.Focusing := False;
                rowUsl.Options.TabStop := False;
                rowUsl.Properties.Options.ShowEditButtons := eisbNever;

                rowTime.Properties.EditProperties.ReadOnly := True;
                rowTime.Options.Focusing := False;
                rowTime.Options.TabStop := False;
                rowTime.Properties.Options.ShowEditButtons := eisbNever;

                rowNad.Properties.EditProperties.ReadOnly := True;
                rowNad.Options.Focusing := False;
                rowNad.Options.TabStop := False;
                rowNad.Properties.Options.ShowEditButtons := eisbNever;

                rowUrg.Properties.EditProperties.ReadOnly := True;
                rowUrg.Options.Focusing := False;
                rowUrg.Options.TabStop := False;
                rowUrg.Properties.Options.ShowEditButtons := eisbNever;

                rowTarget.Properties.EditProperties.ReadOnly := True;
                rowTarget.Options.Focusing := False;
                rowTarget.Options.TabStop := False;
                rowTarget.Properties.Options.ShowEditButtons := eisbNever;

                rowKrat.Properties.EditProperties.ReadOnly := True;
                rowKrat.Options.Focusing := False;
                rowKrat.Options.TabStop := False;
                rowKrat.Properties.Options.ShowEditButtons := eisbNever;

                rowKolvo.Properties.EditProperties.ReadOnly := True;
                rowKolvo.Options.Focusing := False;
                rowKolvo.Options.TabStop := False;

                rowKuda.Properties.EditProperties.ReadOnly := True;
                rowKuda.Options.Focusing := False;
                rowKuda.Options.TabStop := False;
                rowKuda.Properties.Options.ShowEditButtons := eisbNever;

                rowPrim.Properties.EditProperties.ReadOnly := True;
                rowPrim.Options.Focusing := False;
                rowPrim.Options.TabStop := False;

                merDate.Options.Focusing := False;
                merDate.Options.TabStop := False;
                merDate.Properties.Editors[0].Options.ShowEditButtons := eisbNever;
                merDate.Properties.Editors[1].Options.ShowEditButtons := eisbNever;

                merDateTime.Options.Focusing := False;
                merDateTime.Options.TabStop := False;
                merDateTime.Properties.Editors[0].Options.ShowEditButtons := eisbNever;
                merDateTime.Properties.Editors[1].Options.ShowEditButtons := eisbNever;

                rowSotr.Properties.EditProperties.ReadOnly := True;
                rowSotr.Options.Focusing := False;
                rowSotr.Options.TabStop := False;
                rowSotr.Properties.Options.ShowEditButtons := eisbNever;

                rowNum.Properties.EditProperties.ReadOnly := True;
                rowNum.Options.Focusing := False;
                rowNum.Options.TabStop := False;

                rowCntSnimki.Properties.EditProperties.ReadOnly := True;
                rowCntSnimki.Options.Focusing := False;
                rowCntSnimki.Options.TabStop := False;

                rowDoza.Properties.EditProperties.ReadOnly := True;
                rowDoza.Options.Focusing := False;
                rowDoza.Options.TabStop := False;

                rowTypePlenka.Properties.EditProperties.ReadOnly := True;
                rowTypePlenka.Options.Focusing := False;
                rowTypePlenka.Options.TabStop := False;
                rowTypePlenka.Properties.Options.ShowEditButtons := eisbNever;

                rowLists.Properties.EditProperties.ReadOnly := True;
                rowLists.Options.Focusing := False;
                rowLists.Options.TabStop := False;
                rowLists.Properties.Options.ShowEditButtons := eisbNever;

                rowTypeKontrast.Properties.EditProperties.ReadOnly := True;
                rowTypeKontrast.Options.Focusing := False;
                rowTypeKontrast.Options.TabStop := False;
                rowTypeKontrast.Properties.Options.ShowEditButtons := eisbNever;

                rowKolvoKontrast.Properties.EditProperties.ReadOnly := True;
                rowKolvoKontrast.Options.Focusing := False;
                rowKolvoKontrast.Options.TabStop := False;

                rowTypeVvod.Properties.EditProperties.ReadOnly := True;
                rowTypeVvod.Options.Focusing := False;
                rowTypeVvod.Options.TabStop := False;
                rowTypeVvod.Properties.Options.ShowEditButtons := eisbNever;

                rowKto.Properties.EditProperties.ReadOnly := True;
                rowKto.Options.Focusing := False;
                rowKto.Options.TabStop := False;
                rowKto.Properties.Options.ShowEditButtons := eisbNever;

                aOk.Enabled := False;
              end else
              begin
                rowEdit.Visible := False;
                rowEdit.Properties.Value := '';
              end;
          finally
            ods.Free;
          end;
        end; // -- ���������� ������ ���� ��������� ������ � ������ ������
    end else
    begin
      rowEdit.Visible := False;
      rowEdit.Properties.Value := '';
    end;
end;

procedure TfrmNaprRad.DoShowForm(nAMBUL, nPACID, nPEPLID: Integer; strFIO: String; nOTDELID, nSMIDID, nKABID, nNAZID: Integer; nUsl : string; nReanim : Integer; nOwner : Integer);
var ods : TOracleDataSet;
begin
  try
    Screen.Cursor := crSQLWait;
    pAMBUL := nAMBUL;
    pPACID := nPACID;
    pPEPLID := nPEPLID;
    pOTDELID := nOTDELID;
    pSMIDID := nSMIDID;
    pNAZID := nNAZID;
    pKABID := nKABID;
    pOwnerID := nOwner;
// -- � ����������� �� ������������ ���������� ��� �� ����������
    if pOwnerID <> 0 then
      begin
        rowScan.Visible := pOwnerID = get_rad_petct;
        if pOwnerID = get_rad_petct then
          begin
            odsRFP.Close;
            odsRFP.SetVariable('pfc_synonim', 'RADIO_RFP_PET');
            odsRFP.Open;
          end;
        if pOwnerID = get_rad_gamma then
          begin
            odsRFP.Close;
            odsRFP.SetVariable('pfc_synonim', 'RADIO_RFP_GAMMA');
            odsRFP.Open;
          end;
      end else
      begin
        rowScan.Visible := False;
      end;
// -- ��� ���������
    if pPacID = 0 then
      begin
        ods := TOracleDataSet.Create(nil);
        try
          ods.Session := frmMain.os;
          ods.SQL.Text := ' select tuslvid.fk_id '+#13+
                          '   from asu.tuslvid, asu.totdel_typedoc '+#13+
                          '  where fl_default = 1 '+#13+
               	          '    and totdel_typedoc.fk_typedoc = tuslvid.fk_id '+#13+
              	          '    and totdel_typedoc.fk_otdelid = :potdelid and rownum = 1 ';
          ods.DeclareAndSet('POTDELID', otInteger, pOTDELID);
          ods.Open;
          pTypeDocID := ods.FieldByName('FK_ID').AsInteger;
        finally
          ods.Free;
        end;
      end else
      begin
        if odsVidDoc.Active = False then
          odsVidDoc.Open;
        pTypeDocID := odsVidDoc.FieldByName('fk_viddocid').AsInteger;
      end;
// -- �������� ������
    case pAMBUL of
    0: DoTextTypeStac;  // ������������ �������
    1: DoTextTypeAmbul; // ������������ �������
    end;
    rowStatusPac.Visible := nReanim = 1;
    rowStatusPac.Properties.Value := '� ����������!';
// -- �������������� ������ ������
    if EditMode = True then
      begin
        rowFam.Properties.EditProperties.ReadOnly := True;
        rowFam.Options.Focusing := False;
        rowFam.Options.TabStop := False;

        rowName.Properties.EditProperties.ReadOnly := True;
        rowName.Options.Focusing := False;
        rowName.Options.TabStop := False;

        rowOtch.Properties.EditProperties.ReadOnly := True;
        rowOtch.Options.Focusing := False;
        rowOtch.Options.TabStop := False;

        rowMK.Properties.EditProperties.ReadOnly := True;
        rowMK.Options.Focusing := False;
        rowMK.Options.TabStop := False;

        rowRojd.Properties.EditProperties.ReadOnly := True;
        rowRojd.Options.Focusing := False;
        rowRojd.Options.TabStop := False;
        rowRojd.Properties.Options.ShowEditButtons := eisbNever;

        rowSex.Properties.EditProperties.ReadOnly := True;
        rowSex.Options.Focusing := False;
        rowSex.Options.TabStop := False;
        rowSex.Properties.Options.ShowEditButtons := eisbNever;
      end;  
// -- ������
    rowUsl.Properties.Value := nUsl;
    rowUsl.Tag := pSmidID;

    rowTime.Properties.EditProperties.ReadOnly := rowUsl.Tag = 0;
    rowTime.Options.Focusing := not rowTime.Properties.EditProperties.ReadOnly;
    rowTime.Options.TabStop := not rowTime.Properties.EditProperties.ReadOnly;
    if rowTime.Options.TabStop = False then
      rowTime.Properties.Options.ShowEditButtons := eisbNever;

    rowNad.Properties.EditProperties.ReadOnly := rowUsl.Tag = 0;
    rowNad.Options.Focusing := not rowTime.Properties.EditProperties.ReadOnly;
    rowNad.Options.TabStop := not rowTime.Properties.EditProperties.ReadOnly;
    if rowNad.Options.TabStop = False then
      rowNad.Properties.Options.ShowEditButtons := eisbNever;
// -- ������ TIB
    DoTibPeplid; // �����������, ���. ������
    DoVidOplat;
    DoProjivaet;
    DoTarget;
    DoDates;
    DoRegistrator;
    DoVrachNapravil;
    DoCompanyDogovor;
    DoCheckUslugKonsult; // �������� �� �� �������� �� ������ ��������������� � ����������� �������� ������
    DoSumDoza;

    if pPACID = 0 then
      DoTextTypeFIO(strFIO);

    if pNAZID <> 0 then
      begin
        DoTextTypeNaprav;
        DoTextParametersNaz;
      end else
      begin
        DoUrgent;
        DoSetDate; // ������ ��������� ���� � �������
      end;

    DoSetEditRights;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmNaprRad.DoSumDoza;
var ods : TOracleDataSet;
begin
  if pPacID <> 0 then
    begin
      ods := TOracleDataSet.Create(nil);
      try
        ods.Session := frmMain.os;
        ods.SQL.Text := ' select sum(t1.fn_num) as SumDoza '+#13+
                        '   from asu.tib t1, asu.vnaz t2 '+#13+
                        '  where t1.fk_pacid = t2.fk_id '+#13+
                        '    and t1.fk_smid = -1 '+#13+
                        '    and t1.fk_smeditid = -1 '+#13+
                        '    and t2.fk_pacid in (select fk_id from asu.tambulance where fk_peplid = asu.get_peplid(:pfk_pacid) '+#13+
                        '                        union all '+#13+
                        '                        select fk_id from asu.tkarta where fk_peplid = asu.get_peplid(:pfk_pacid)) '+#13+
                        '    and t2.fk_nazsosid in (asu.get_vipnaz, asu.get_labvip) '+#13+
                        '    and t2.fd_run >= add_months(sysdate, -12) '+#13+
                        '    and t2.fd_run < to_date(sysdate)+1 ';
        ods.DeclareAndSet('pfk_pacid', otInteger, pPacID);
        ods.Open;
        if ods.FieldByName('SumDoza').AsFloat > frmMain.get_sum_doza then
          begin
            rowSumDoza.Visible := True;
            rowSumDoza.Properties.Value := FloatToStr(ods.FieldByName('SumDoza').AsFloat)+' ���';
          end else
          begin
            rowSumDoza.Visible := False;
          end;
      finally
        ods.Free;
      end;
    end else
    begin
      rowSumDoza.Visible := False;
    end;
end;

procedure TfrmNaprRad.DoTarget;
var ods : TOracleDataSet;
begin
	ods := TOracleDataSet.Create(nil);
	try
		ods.Session := frmMain.os;
		ods.SQL.Text := ' BEGIN '+#13+
  									'   SELECT MAX(FK_SMID) INTO :VAL '+#13+
                    '     FROM asu.TIB '+#13+
                    '    WHERE FK_PACID = :PFK_ID '+#13+
                    '      AND FK_SMID IN (SELECT FK_ID FROM asu.TSMID WHERE FK_OWNER = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''ISSL_TARGET'')); '+#13+
										'   IF :VAL IS NULL THEN '+#13+
										'     SELECT MAX(FK_ID) INTO :VAL '+#13+
                    '       FROM asu.TSMID '+#13+
                    '      WHERE FK_OWNER = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''ISSL_TARGET'') AND FK_DEFAULT = 1; '+#13+
										'   END IF; '+#13+
                    ' END; ';
		ods.DeclareAndSet('PFK_ID', otInteger, pNazID);
    ods.DeclareVariable('VAL', otInteger);
    ods.Open;
    rowTarget.Properties.Value := ods.GetVariable('VAL');
  finally
    ods.Free;
  end;
end;

procedure TfrmNaprRad.DoTextParametersNaz;
var ods : TOracleDataSet;
begin
  ods := TOracleDataSet.Create(nil);
  try
    ods.Session := frmMain.os;
    ods.SQL.Text := ' SELECT FK_NAZTYPEID, fk_nazsosid, FD_RUN, FK_ISPOLID, asu.GET_VRACHFCOTDEL(FK_VRACHID) AS OTDELSTAC, '+#13+
                    '        asu.get_doza(tnazis.fk_id) as dozaissl, '+#13+
                    '       (SELECT asu.GET_SMIDNAME(MAX(FK_SMID)) '+#13+
                    '          FROM asu.TIB '+#13+
                    '         WHERE FK_PACID = :PFK_ID '+#13+
                    '           AND FK_SMID IN (SELECT FK_ID FROM asu.TSMID '+#13+
                    '                           START WITH FC_SYNONIM = ''XRAY_TYPEKONTRAST'' CONNECT BY PRIOR FK_ID = FK_OWNER)) AS TYPEKONTRAST, '+#13+
                    '       (SELECT MAX(FK_SMID) '+#13+
                    '          FROM asu.TIB '+#13+
                    '         WHERE FK_PACID = :PFK_ID '+#13+
                    '           AND FK_SMID IN (SELECT FK_ID FROM asu.TSMID '+#13+
                    '                           START WITH FC_SYNONIM = ''XRAY_TYPEKONTRAST'' CONNECT BY PRIOR FK_ID = FK_OWNER)) AS ID_TYPEKONTRAST, '+#13+
                    '        ASU.GET_XRAY_KOLVO_SNIMKOV(TNAZIS.FK_ID) AS KOLVO, '+#13+
                    '       (SELECT MAX(DECODE(FC_CHAR, NULL, ASU.GET_SMIDNAME(TIB.FK_SMID), FC_CHAR)) '+#13+
                    '          FROM asu.TIB '+#13+
                    '         WHERE FK_PACID = :PFK_ID '+#13+
                    '           AND FK_SMID IN (SELECT FK_ID '+#13+
                    '                             FROM asu.TSMID '+#13+
                    '                           START WITH FC_SYNONIM = ''KEM_NAPRAVLEN'' '+#13+
                    '                           CONNECT BY PRIOR FK_ID = FK_OWNER '+#13+
                    '                           UNION ALL '+#13+
                    '                           SELECT FK_ID FROM ASU.TSMID '+#13+
                    '                           START WITH FC_SYNONIM = ''PD_NAPRAVIV_YCH'' '+#13+
                    '                           CONNECT BY PRIOR FK_ID = FK_OWNER)) AS KEMNAPRAVLEN, '+#13+
                    '       (SELECT MAX(FK_SMID) '+#13+
                    '          FROM asu.TIB '+#13+
                    '         WHERE FK_PACID = :PFK_ID '+#13+
                    '           AND FK_SMID IN (SELECT FK_ID '+#13+
                    '                             FROM asu.TSMID '+#13+
                    '                           START WITH FC_SYNONIM = ''KEM_NAPRAVLEN'' CONNECT BY PRIOR FK_ID = FK_OWNER '+#13+
                    '                           UNION ALL '+#13+
                    '                           SELECT FK_ID '+#13+
                    '                             FROM ASU.TSMID '+#13+
                    '                           START WITH FC_SYNONIM = ''PD_NAPRAVIV_YCH'' '+#13+
                    '                           CONNECT BY PRIOR FK_ID = FK_OWNER)) AS ID_KEMNAPRAVLEN, '+#13+
                    '       asu.get_time_for_rg_issl(:pfk_id) as timeissl, '+#13+
                    '       (SELECT FK_SMID FROM ASU.TIB '+#13+
                    '         WHERE FK_PACID = TNAZIS.FK_ID '+#13+
                    '           AND FK_SMID IN (SELECT FK_ID FROM ASU.TSMID '+#13+
                    '                            WHERE FK_OWNER = (SELECT MAX(FK_ID) FROM ASU.TSMID WHERE FC_SYNONIM = ''XRAY_KOLVO_LISTOV''))) AS KOLVOLISTOV, '+#13+
                    '       (SELECT FK_SMID '+#13+
                    '          FROM asu.TIB '+#13+
                    '         WHERE FK_PACID = :pFK_ID '+#13+
                    '           AND FK_SMID in (SELECT FK_ID FROM asu.TSMID start with FC_SYNONIM = ''RADIO_RFP'' connect by prior fk_id = fk_owner)) as radio_rfp '+#13+
                    '   FROM asu.TNAZIS WHERE FK_ID = :PFK_ID ';
    ods.DeclareAndSet('PFK_ID', otInteger, pNAZID);
    ods.Open;
    rowUrg.Properties.Value := ods.FieldByName('FK_NAZTYPEID').AsInteger;
    merDateTime.Properties.Editors[0].Value := ods.FieldByName('fd_run').AsDateTime;
    merDateTime.Properties.Editors[1].Value := ods.FieldByName('fd_run').AsDateTime;
    if pAMBUL = 0 then
      begin
        rowNapr.Properties.Value := ods.FieldByName('OTDELSTAC').AsString;
        rowNapr.Properties.EditProperties.Buttons[0].Visible := False;
        rowNapr.Properties.EditProperties.Buttons[1].Visible := False;
        rowNapr.Options.Focusing := False;
        rowNapr.Options.TabStop := False;
      end else
      begin
        rowNapr.Properties.Value := ods.FieldByName('KEMNAPRAVLEN').AsString;
        rowNapr.Tag := ods.FieldByName('ID_KEMNAPRAVLEN').AsInteger;
        rowNapr.Properties.EditProperties.Buttons[0].Visible := True;
        rowNapr.Properties.EditProperties.Buttons[1].Visible := True;
        rowNapr.Options.Focusing := True;
        rowNapr.Options.TabStop := True;
      end;

    rowTime.Properties.Value := ods.FieldByName('timeissl').AsInteger;
    rowDoza.Properties.Value := ods.FieldByName('dozaissl').AsFloat;
    rowLists.Properties.Value := ods.FieldByName('kolvolistov').AsInteger;
    rowCntSnimki.Properties.Value := ods.FieldByName('kolvo').AsInteger;
    rowTypeKontrast.Properties.Value := ods.FieldByName('typekontrast').AsString;
    rowTypeKontrast.Tag := ods.FieldByName('id_typekontrast').AsInteger;
    if rowTypeKontrast.Tag = 0 then
      begin
        rowKolvoKontrast.Properties.EditProperties.ReadOnly := True;
        rowKolvoKontrast.Options.Focusing := False;
        rowKolvoKontrast.Options.TabStop := False;
      end;
    rowRFP.Properties.Value := ods.FieldByName('radio_rfp').AsInteger;
    pSosID := ods.FieldByName('fk_nazsosid').AsInteger;
// -- ���������� �������� �� TIB
    ods.Close;
    ods.DeleteVariables;
    ods.SQL.Text := ' select fn_num, fc_char, fk_smid, '+#13+
                    '        (select fc_synonim from asu.tsmid where fk_id = tib.fk_smid) as synsmid, '+#13+
                    '        (select fc_synonim from asu.tsmid where fk_id = tib.fk_smeditid) as synname '+#13+
                    '   from asu.tib where fk_pacid = :pfk_pacid '+#13+
                    ' order by fk_id ';
    ods.DeclareAndSet('pfk_pacid', otInteger, pNazID);
    ods.Open;
    ods.First;
    while not ods.Eof do
      begin
        if ods.FieldByName('synname').AsString = 'RADIO_TYPE' then // ���
          begin
            rowType.Properties.Value := ods.FieldByName('fk_smid').AsInteger;
          end;
        if ods.FieldByName('synname').AsString = 'RADIO_VVOD_RFP' then // ������ ����� ���
          begin
            rowVvodRFP.Properties.Value := ods.FieldByName('fk_smid').AsInteger;
          end;
        if ods.FieldByName('synname').AsString = 'RADIO_TYPESCAN' then // �����
          begin
            rowScan.Properties.Value := ods.FieldByName('fk_smid').AsInteger;
          end;
        if ods.FieldByName('synname').AsString = 'XRAY_VVOD' then // ������ �����
          begin
            rowTypeVvod.Properties.Value := ods.FieldByName('fk_smid').AsInteger;
          end;
        if ods.FieldByName('synsmid').AsString = 'RADIO_LAST_ACTIVE' then // ���������� ����������
          begin
            rowAct.Properties.Value := ods.FieldByName('fn_num').AsInteger;
          end;
        if ods.FieldByName('synsmid').AsString = 'RADIO_MINUTES' then // �����
          begin
            merVve.Properties.Editors[2].Value := ods.FieldByName('fn_num').AsInteger;
          end;
        if ods.FieldByName('synsmid').AsString = 'RADIO_HOURS' then // �����
          begin
            merVve.Properties.Editors[1].Value := ods.FieldByName('fn_num').AsInteger;
          end;
        if ods.FieldByName('synsmid').AsString = 'RADIO_VVEDENO' then // �������
          begin
            merVve.Properties.Editors[0].Value := ods.FieldByName('fn_num').AsInteger;
          end;
        if ods.FieldByName('synsmid').AsString = 'RADIO_VOLUME_RFP' then // ����� ���
          begin
            rowVol.Properties.Value := ods.FieldByName('fn_num').AsInteger;
          end;
        if ods.FieldByName('synsmid').AsString = 'RADIO_VES' then // ���
          begin
            merWH.Properties.Editors[1].Value := ods.FieldByName('fn_num').AsFloat;
          end;
        if ods.FieldByName('synsmid').AsString = 'RADIO_ROST' then // ����
          begin
            merWH.Properties.Editors[0].Value := ods.FieldByName('fn_num').AsFloat;
          end;
        if ods.FieldByName('synsmid').AsString = 'NUMBER_ISSL' then // ����� ������������
          begin
            rowNum.Properties.Value := ods.FieldByName('fc_char').AsString;
          end;
        if ods.FieldByName('synsmid').AsString = 'KTO_KONTRAST' then // ��� ���� ��������
          begin
            rowKto.Properties.Value := ods.FieldByName('fn_num').AsInteger;
          end;
        if ods.FieldByName('synsmid').AsString = 'XRAY_KOLVOKONTRAST' then // ���-�� ���������
          begin
            rowKolvoKontrast.Properties.Value := ods.FieldByName('fn_num').AsFloat;
          end;
        if ods.FieldByName('synsmid').AsString = 'XRAY_KOLVOKOMY' then // ���-�� ���� ������
          begin
            rowKolvo.Properties.Value := ods.FieldByName('fn_num').AsInteger;
          end;
        if ods.FieldByName('synsmid').AsString = 'XRAY_FIO_REMARK' then // ���, ����������
          begin
            rowPrim.Properties.Value := ods.FieldByName('fc_char').AsString;
          end;
        if ods.FieldByName('synname').AsString = 'XRAY_KRATNOST' then // ���������
          begin
            rowKrat.Properties.Value := ods.FieldByName('fk_smid').AsInteger;
          end;
        if ods.FieldByName('synname').AsString = 'OTDEL_VYDANO' then // ���� ������
          begin
            rowKuda.Properties.Value := ods.FieldByName('fk_smid').AsInteger;
          end;
        if ods.FieldByName('synname').AsString = 'TIME_NORMA_ISSL' then // ��������
          begin
            rowNad.Properties.Value := ods.FieldByName('fk_smid').AsInteger;
          end;
        if ods.FieldByName('synname').AsString = 'RAD_VIDPLENKI' then // ��� ������
          begin
            rowTypePlenka.Properties.Value := ods.FieldByName('fk_smid').AsInteger;
          end;

        ods.Next;
      end;
  finally
    ods.Free;
  end;
end;

procedure TfrmNaprRad.DoTextTypeAmbul;
var ods : TOracleDataSet;
begin
  rowNapr.Properties.EditProperties.ReadOnly := False;
  rowNaprSotr.Properties.EditProperties.ReadOnly := False;
  ods := TOracleDataSet.Create(nil);
  try
    ods.Session := frmMain.os;
    ods.SQL.Text := ' select count(fk_id) as cnt from asu.tambulance where fk_id = :pfk_id ';
    ods.DeclareAndSet('pfk_id', otInteger, pPacID);
    ods.Open;
    if ods.FieldByName('cnt').AsInteger > 0 then
      begin
        ods.Close;
        ods.DeleteVariables;
        ods.SQL.Text := ' select fl_vov, fl_ivov, fl_ula, fl_pmc, fc_put, fk_prizn, '+#13+
		                  	'        tpeoples.fc_fam, tpeoples.fc_im, tpeoples.fc_otch, '+#13+
		                   	'        decode(to_char(tpeoples.fd_rojd, ''dd.mm.yyyy hh24:mi:ss''), '+#13+
                        '               ''00.00.0000 00:00:00'', trunc(sysdate), tpeoples.fd_rojd) as fd_rojd, '+#13+
			                  '        tpeoples.fp_sex, '+#13+
                        '        asu.get_ib(:pfk_id) as numdoc, '+#13+
                        '        tambulance.fc_phone as phone, '+#13+
                        '        tambulance.fk_docobsl, '+#13+
                        '        (select fk_smid from asu.tib '+#13+
                        '          where fk_pacid = :pfk_peplid '+#13+
                        '            and fk_smid in (select fk_id from asu.tsmid '+#13+
                        '                             where fk_owner = (select max(fk_id) from asu.tsmid where fc_synonim = ''KOREN_NASEL''))) as koren '+#13+
                        '   from asu.tambulance, asu.tpeoples '+#13+
                        '  where tambulance.fk_id = :pfk_id and tpeoples.fk_id = :pfk_peplid ';
        ods.DeclareAndSet('PFK_ID', otInteger, pPACID);
        ods.DeclareAndSet('PFK_PEPLID', otInteger, pPEPLID);
        ods.Open;
        rowFam.Properties.Value := ods.FieldByName('fc_fam').AsString;
        rowName.Properties.Value := ods.FieldByName('fc_im').AsString;
        rowOtch.Properties.Value := ods.FieldByName('fc_otch').AsString;
        rowMK.Properties.Value := ods.FieldByName('numdoc').AsString;
        rowRojd.Properties.Value := ods.FieldByName('fd_rojd').AsDateTime;
        rowPhone.Properties.Value := ods.FieldByName('phone').AsString;
        rowKMNS.Properties.Value := ods.FieldByName('koren').AsInteger;
        if ods.FieldByName('FP_SEX').AsInteger = 1 then
          rowSex.Properties.Value := '�������'
        else
          rowSex.Properties.Value := '�������';
        EditMode := True;
      end else
      begin   // ����� �������
        ods.Close;
        ods.DeleteVariables;
        ods.SQL.Text := ' declare '+#13+
	                      '   ntemp number; '+#13+
                        ' begin '+#13+
                        '   :ndocobslid := set_newibnum(:pfk_uslvidid, ntemp); '+#13+
                        '   select tdocobsl.fk_numib into :nfk_numib from asu.tdocobsl where fk_id = :ndocobslid; '+#13+
                        '   select to_char(get_yearwork) into :yearwork from dual; '+#13+
                        ' end; ';
        ods.DeclareAndSet('pfk_uslvidid', otInteger, pTypeDocID);
        ods.DeclareVariable('ndocobslid', otInteger);
        ods.DeclareVariable('yearwork', otString);
        ods.DeclareVariable('nfk_numib', otInteger);
        ods.Open;
        pDOCOBSLID := ods.GetVariable('ndocobslid');
        rowMK.Properties.Value := IntToStr(ods.GetVariable('nfk_numib'))+'/'+ods.GetVariable('yearwork');
        rowRojd.Properties.Value := null;
        EditMode := False;
      end;
  finally
    ods.Free;
  end;
end;

procedure TfrmNaprRad.DoTextTypeFIO(strFIO: String);
var sFam, sIm, sOtch : String;
    strIm : String;
    flag : Integer;
begin
  flag := 0;
  if Pos(' ', strFIO) = 0 then
    begin
      sFam := strFIO;
      flag := 1;
    end else
    begin
      sFam := copy(strFIO, 1, Pos(' ', strFIO));
    end;

  if flag = 1 then
    strIm := ''
  else
    strIm := trim(copy(strFIO, Length(sFam), Length(strFIO)+1 - Length(sFam)));

  sIm := trim(copy(strIm, 1, Pos(' ', strIm)));
  if sIm = '' then
    sIm := strIm;

  sOtch := trim(copy(strIm, Length(sIm)+1, Length(strIm)-Length(sIm)+1));
  rowFam.Properties.Value := trim(sFam);
  rowName.Properties.Value := sIm;
  rowOtch.Properties.Value := sOtch;
end;

procedure TfrmNaprRad.DoTextTypeNaprav;
var ods : TOracleDataSet;
begin
  ods := TOracleDataSet.Create(nil);
  try
    ods.Session := frmMain.os;
    ods.SQL.Text := ' BEGIN '+#13+
                    '   SELECT MAX(FC_CHAR) INTO :NAMEDIAG '+#13+
                    '     FROM asu.TIB '+#13+
                    '    WHERE FK_PACID = :pFK_NAZID '+#13+
                    '      AND FK_SMID IN (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''XRAY_DIAGNOZ''); '+#13+
                    '   IF :NAMEDIAG IS NULL THEN '+#13+
                    '     SELECT asu.PKG_LISTS.GET_DIAG_MAIN(TNAZIS.FK_PACID) INTO :NAMEDIAG FROM asu.TNAZIS WHERE FK_ID = :PFK_NAZID; '+#13+
                    '   END IF; '+#13+
                    ' END; ';
    ods.DeclareVariable('NAMEDIAG', otString);
    ods.DeclareAndSet('PFK_NAZID', otInteger, pNAZID);
    ods.Open;
    rowDS.Properties.Value := ods.GetVariable('NAMEDIAG');
  finally
    ods.Free;
  end;
end;

procedure TfrmNaprRad.DoTextTypeStac;
var ods : TOracleDataSet;
begin
  rowNapr.Properties.EditProperties.ReadOnly := True;
  rowNaprSotr.Properties.EditProperties.ReadOnly := True;
  rowNaprSotr.Options.Focusing := False;
  rowNaprSotr.Options.TabStop := False;
  rowFam.Properties.EditProperties.ReadOnly := True;
  rowFam.Options.Focusing := False;
  rowFam.Options.TabStop := False;
  rowName.Properties.EditProperties.ReadOnly := True;
  rowName.Options.Focusing := False;
  rowName.Options.TabStop := False;
  rowOtch.Properties.EditProperties.ReadOnly := True;
  rowOtch.Options.Focusing := False;
  rowOtch.Options.TabStop := False;
  rowMK.Properties.EditProperties.ReadOnly := True;
  rowMK.Options.Focusing := False;
  rowMK.Options.TabStop := False;
  rowRojd.Properties.EditProperties.ReadOnly := True;
  rowRojd.Options.Focusing := False;
  rowRojd.Options.TabStop := False;
  rowSex.Properties.EditProperties.ReadOnly := True;
  rowSex.Options.Focusing := False;
  rowSex.Options.TabStop := False;
  rowPhone.Visible := False;
  ods := TOracleDataSet.Create(nil);
  try
    ods.Session := frmMain.os;
    ods.SQL.Text := ' select count(fk_id) as cnt from asu.tkarta where fk_id = :pfk_id ';
    ods.DeclareAndSet('pfk_id', otInteger, pPACID);
    ods.Open;
    if ods.FieldByName('cnt').AsInteger > 0 then
      begin
	      ods.Close;
        ods.DeleteVariables;
        ods.SQL.Text := ' select fl_vov, fl_ivov, fl_ula, fl_pmc, fc_put, fk_prizn, '+#13+
	                  		'        tpeoples.fc_fam, tpeoples.fc_im, tpeoples.fc_otch, '+#13+
			                  '        decode(to_char(tpeoples.fd_rojd, ''dd.mm.yyyy hh24:mi:ss''), '+#13+
                        '               ''00.00.0000 00:00:00'', trunc(sysdate), tpeoples.fd_rojd) as fd_rojd, '+#13+
		                  	'        tpeoples.fp_sex, tkarta.fp_tek_coc, '+#13+
                        '        asu.get_ib(:pfk_id) as numdoc, '+#13+
                        '        tpeoples.fc_phone as phone, '+#13+
		                  	'        (select fk_smid from asu.tib '+#13+
                        '          where fk_pacid = :pfk_peplid '+#13+
                        '            and fk_smid in (select fk_id from asu.tsmid '+#13+
                        '                             where fk_owner = (select max(fk_id) from asu.tsmid where fc_synonim = ''KOREN_NASEL''))) as koren '+#13+
                        '   from asu.tkarta, asu.tpeoples '+#13+
                        '  where tkarta.fk_id = :pfk_id and tpeoples.fk_id = :pfk_peplid ';
        ods.DeclareAndSet('PFK_ID', otInteger, pPACID);
        ods.DeclareAndSet('PFK_PEPLID', otInteger, pPEPLID);
        ods.Open;
        rowFam.Properties.Value := ods.FieldByName('fc_fam').AsString;
        rowName.Properties.Value := ods.FieldByName('fc_im').AsString;
        rowOtch.Properties.Value := ods.FieldByName('fc_otch').AsString;
        rowMK.Properties.Value := ods.FieldByName('numdoc').AsString;
        rowRojd.Properties.Value := ods.FieldByName('fd_rojd').AsDateTime;
        rowKMNS.Properties.Value := ods.FieldByName('koren').AsInteger;
        rowStatusPac.Visible := ods.FieldByName('fp_tek_coc').AsInteger = 3;
        rowStatusPac.Properties.Value := ods.FieldByName('fp_tek_coc').AsInteger = 3;
        if ods.FieldByName('FP_SEX').AsInteger = 1 then
          rowSex.Properties.Value := '�������'
        else
          rowSex.Properties.Value := '�������';
        EditMode := True;
      end else
      begin
        EditMode := False;
      end;
  finally
    ods.Free;
  end;
end;

procedure TfrmNaprRad.DoTibPeplid;
var ods : TOracleDataSet;
begin
  ods := TOracleDataSet.Create(nil);
  try
    ods.Session := frmMain.os;
    ods.SQL.Text := ' select tib.*, (select fc_synonim from asu.tsmid where fk_id = tib.fk_smeditid) as syn '+#13+
                    '   from asu.tib '+#13+
                    '  where fk_pacid = :pfk_pacid ';
    ods.DeclareAndSet('pfk_pacid', otInteger, pPEPLID);
    ods.Open;
    ods.First;
    while not ods.Eof do
      begin
        if ods.FieldByName('syn').AsString = 'LD_GRAGZ' then
          rowGra.Properties.Value := ods.FieldByName('fk_smid').AsInteger; // �����������
        if ods.FieldByName('syn').AsString = 'LD_SOC_POL' then
          rowSoc.Properties.Value := ods.FieldByName('fk_smid').AsInteger; // ���������� ������
        ods.Next;
      end;
  finally
    ods.Free;
  end;
end;

procedure TfrmNaprRad.DoUpdateAddress(nIDPepl: Integer);
var oq : TOracleQuery;
begin
  oq := TOracleQuery.Create(nil);
  try
    oq.Session := frmMain.os;
    oq.SQL.Text := ' update asu.tadress set fk_pacid = :pfk_pacid where fk_pacid = :pfk_pacid1 ';
    oq.DeclareAndSet('pfk_pacid', otInteger, nIDPepl);
    oq.DeclareAndSet('pfk_pacid1', otInteger, id4NewPacAddress);
    oq.Execute;
    frmMain.os.Commit;
  finally
    oq.Free;
  end;
end;

procedure TfrmNaprRad.DoUrgent;
var ods : TOracleDataSet;
begin
	ods := TOracleDataSet.Create(nil);
	try
		ods.Session := frmMain.os;
		ods.SQL.Text := ' SELECT FK_ID '+#13+
                    '   FROM asu.TSMID '+#13+
                    '  WHERE FK_OWNER = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''NAZN_TYPES'') AND FK_DEFAULT = 1 ';
		ods.Open;
		rowUrg.Properties.Value := ods.FieldByName('FK_ID').AsInteger;
	finally
		ods.Free;
  end;
end;

procedure TfrmNaprRad.DoVidOplat; // ���� ��� ������������ ��������, �� ������� �������� �� ���������
var ods : TOracleDataSet;
begin
  ods := TOracleDataSet.Create(nil);
  try
    ods.Session := frmMain.os;
    ods.SQL.Text := ' BEGIN '+#13+
                    '   SELECT MAX(FK_SMID) INTO :VAL '+#13+
                    '     FROM asu.TIB '+#13+
                    '    WHERE FK_PACID = :PFK_PEPLID '+#13+
                    '      AND FK_SMID IN (SELECT FK_ID FROM asu.TSMID WHERE FK_OWNER = (SELECT MAX(FK_ID) FROM asu.TSMID WHERE FC_SYNONIM = ''AMBTALON_OPL'')); '+#13+
                    '   IF :VAL IS NULL THEN '+#13+
            		    '     SELECT MAX(FK_ID) INTO :VAL '+#13+
                    '       FROM asu.TSMID '+#13+
                    '      WHERE FK_OWNER = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''AMBTALON_OPL'') AND FK_DEFAULT = 1; '+#13+
		                '   END IF; '+#13+
                    ' END; ';
    ods.DeclareAndSet('PFK_PEPLID', otInteger, pNazID);
    ods.DeclareVariable('VAL', otInteger);
    ods.Open;
    odsVidOplat.Locate('fk_id', ods.GetVariable('VAL'), []);    
    rowVidOpl.Properties.Value := ods.GetVariable('VAL');
    rowCompany.Visible := odsVidOplat.FieldByName('fc_synonim').AsString = 'TAL_OTHER';    
  finally
    ods.Free;
  end;
end;

procedure TfrmNaprRad.DoVrachNapravil;
var ods : TOracleDataSet;
begin
  if pNAZID = 0 then
    begin
      ods := TOracleDataSet.Create(nil);
      try
        ods.Session := frmMain.os;
        ods.SQL.Text := ' BEGIN '+#13+
                        '   SELECT MAX(FC_CHAR) INTO :VAL '+#13+
                        '     FROM asu.TIB '+#13+
                        '    WHERE FK_PACID = :PFK_PEPLID AND FK_SMID IN (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''VRACH_NAPRAVIL''); '+#13+
                        '   IF :VAL IS NULL THEN '+#13+
                        '     SELECT '''' AS VRACHFIO INTO :VAL FROM DUAL; '+#13+
                        '   END IF; '+#13+
                        ' END; ';
        ods.DeclareAndSet('PFK_PEPLID', otInteger, pNAZID);
        ods.DeclareVariable('VAL', otString);
        ods.Open;
        if ods.GetVariable('VAL') <> '' then
          rowNaprSotr.Properties.Value := ods.GetVariable('VAL')
        else
          rowNaprSotr.Properties.Value := ods.GetVariable('VAL');
      finally
        ods.Free;
      end;
    end else
    begin
      ods := TOracleDataSet.Create(nil);
      try
        ods.Session := frmMain.os;
        ods.SQL.Text := ' DECLARE '+#13+
                        '   nSMID NUMBER; '+#13+
                        ' BEGIN '+#13+
                        '   SELECT COUNT(FK_ID) INTO nSMID '+#13+
                        '     FROM asu.TIB '+#13+
                        '    WHERE FK_PACID = :PFK_PEPLID AND FK_SMID IN (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''VRACH_NAPRAVIL''); '+#13+
                        ' IF nSMID > 0 THEN '+#13+
                        '   SELECT FC_CHAR INTO :VAL '+#13+
                        '     FROM asu.TIB '+#13+
                        '    WHERE FK_PACID = :PFK_PEPLID AND FK_SMID IN (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM = ''VRACH_NAPRAVIL''); '+#13+
                        ' ELSE '+#13+
                        '   SELECT asu.DO_VRACHFIO(TNAZIS.FK_VRACHID) INTO :VAL FROM asu.TNAZIS WHERE FK_ID = :PFK_PEPLID ; '+#13+
                        ' END IF; '+#13+
                        ' END; ';
        ods.DeclareAndSet('PFK_PEPLID', otInteger, pNAZID);
        ods.DeclareVariable('VAL', otString);
        ods.Open;
        if ods.GetVariable('VAL') <> '' then
          rowNaprSotr.Properties.Value := ods.GetVariable('VAL')
        else
          rowNaprSotr.Properties.Value := ods.GetVariable('VAL');
      finally
        ods.Free;
      end;
    end;
end;

function TfrmNaprRad.fGetIB(var nIBIDf, nIBYf: Integer): boolean;
const s = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '/'];
var i : Integer;
    tIBID, tIBY : string;
    bIBY : Boolean;
    oq : TOracleDataSet;
    str : string;
begin
  str := rowMK.Properties.Value;
  tIBID := '';
  tIBY := '';
  bIBY := False;
  if (str = '') or (str[1] = '/') then
    begin
      fGetIB := False;
      Exit;
    end
    else
      for i := 1 to Length(str) do
        begin
            if str[i] in s then
            begin
              if str[i] = '/' then
                begin
                  bIBY := True;
                  Continue;
                end;
                if not bIBY then
                    tIBID := tIBID + str[i]
                else
                    tIBY := tIBY + str[i]
            end
            else
            begin
                fGetIB := False;
                Exit;
            end;
        end;
    try
        nIBID := StrToInt(tIBID);
        nIBY := StrToInt(tIBY);
    except on e: EConvertError do
        begin
            fGetIB := False;
            Exit;
        end;
    end;
    oq := TOracleDataSet.Create(nil);
    oq.Session := frmMain.os;
    oq.SQL.Text := ' SELECT COUNT(TAMBULANCE.FK_ID) AS FP_COUNT '+#13+
                   '   FROM ASU.TAMBULANCE, ASU.TDOCOBSL '+#13+
                   '  WHERE TDOCOBSL.FN_YEAR=:FK_IBY '+#13+
                   '    AND TDOCOBSL.FK_NUMIB=:FK_IBID '+#13+
                   '    AND TAMBULANCE.FK_ID <> :PPACID '+#13+
                   '    AND TAMBULANCE.FK_DOCOBSL = TDOCOBSL.FK_ID '+#13+
                   '    AND TDOCOBSL.FK_VIDDOCID = :PUSLVIDID ';
    oq.DeclareAndSet('FK_IBY', otInteger, nIBY);
    oq.DeclareAndSet('FK_IBID', otInteger, nIBID);
    oq.DeclareAndSet('pPACID', otInteger, pPACID);
    oq.DeclareAndSet('pUSLVIDID', otInteger, pTypeDocID);
    oq.Open;
    if oq.FieldByName('fp_count').AsInteger > 0 then
      begin
        oq.Close;
        oq.Free;
        fGetIB := False;
        Exit;
      end;
    oq.Close;
    oq.Free;
    fGetIB := True;
end;

procedure TfrmNaprRad.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if l_addr_loaded = True then // ��������� address.dll
    begin
      try
        FreeAddrDll;
        FreeLibrary(HandleDLL);
        l_addr_loaded := False;
      except
      end;
    end;
end;

procedure TfrmNaprRad.FormCreate(Sender: TObject);
begin
// -- "��������" ��������
  if odsGra.Active = False then
    odsGra.Active := True;
  if odsStatus.Active = False then
    odsStatus.Active := True;
  if odsKorennoe.Active = False then
    odsKorennoe.Active := True;
  if odsRegPrin.Active = False then
    odsRegPrin.Active := True;
  if odsVidOplat.Active = False then
    odsVidOplat.Active := True;
  if odsUrgent.Active = False then
    odsUrgent.Active := True;
  if odsTarget.Active = False then
    odsTarget.Active := True;
  if odsKrat.Active = False then
    odsKrat.Active := True;
  if odsOtdelVydano.Active = False then
    odsOtdelVydano.Active := True;
  if odsRgLaborant.Active = False then
    odsRgLaborant.Active := True;
  if odsNadbavka.Active = False then
    odsNadbavka.Active := True;
  if odsTypePlenka.Active = False then
    odsTypePlenka.Active := True;
  if odsKolvolistov.Active = False then
    odsKolvolistov.Active := True;
  if odsVvod.Active = False then
    odsVvod.Active := True;
  if odsKtoKontrast.Active = False then
    odsKtoKontrast.Active := True;
  if odsScan.Active = False then
    odsScan.Active := True;
  if odsVvodRFP.Active = False then
    odsVvodRFP.Active := True;
  if odsTypeR.Active = False then
    odsTypeR.Active := True;
    
  rgregist_amb_napr_uch := TDBUtils.GetFunctionDef('rgregist_amb_napr_uch',frmMain.os,0);
end;

procedure TfrmNaprRad.FormShow(Sender: TObject);
begin
  DoGetAddress;
  
  if rowFam.Properties.EditProperties.ReadOnly = False then
    begin
      vgrPac.FocusRow(rowFam);
      vgrPac.ShowEdit;
    end;
end;

procedure TfrmNaprRad.frAgreeProcGetValue(const VarName: string; var Value: Variant);
begin
  if VarName = 'PACFIO' then Value := rowFam.Properties.Value+' '+rowName.Properties.Value+' '+rowOtch.Properties.Value;
  if VarName = 'NUMIB' then Value := rowMK.Properties.Value;
  if VarName = 'METODS' then Value := rowUsl.Properties.Value;
end;

procedure TfrmNaprRad.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if VarName = 'COMPANYNAME' then Value := frmMain.sCompanyName_4Rep;
  if VarName = 'OTDELNAME' then Value := frmMain.sOtdelName_4Rep;
  if VarName = 'RG_LABORANT' then Value := odsRgLaborant.FieldByName('fc_name').AsString;
  if VarName = 'FIO_PAC' then Value := rowFam.Properties.Value+' '+rowName.Properties.Value+' '+rowOtch.Properties.Value;
  if rowRojd.Properties.Value <> null then
    begin
      if VarName = 'DATE_ROJD' then Value := rowRojd.Properties.Value;
    end else
    begin
      if VarName = 'DATE_ROJD' then Value := '';
    end;
  if VarName = 'KORENNOE' then Value := odsKorennoe.FieldByName('fc_name').AsString;
  if VarName = 'PROJIVAET' then Value := odsRegPrin.FieldByName('fc_name').AsString;
  if VarName = 'ADDRESS' then Value := String(GetAddrText);
  if VarName = 'PHONE' then Value := rowPhone.Properties.Value;
  if VarName = 'NUMIB' then Value := rowMK.Properties.Value;
  if VarName = 'KEM_NAPRAVLEN' then Value := rowNapr.Properties.Value;
  if VarName = 'NAPRAV_DS' then Value := rowDs.Properties.Value;
  if VarName = 'SROCH' then Value := odsUrgent.FieldByName('fc_name').AsString;
  if VarName = 'NADBAVKA_TIME' then Value := odsNadbavka.FieldByName('fc_name').AsString;
  if VarName = 'NUMISSL' then Value := rowNum.Properties.Value;
  if VarName = 'SEX' then Value := rowSex.Properties.Value;
  if VarName = 'VID_OPLATA' then Value := odsVidOplat.FieldByName('fc_name').AsString;
  if VarName = 'VRACH_NAPRAVIL' then Value := rowNaprSotr.Properties.Value;
  if VarName = 'TARGET' then Value := odsTarget.FieldByName('fc_name').AsString;
  if VarName = 'KABINET' then Value := frmMain.odsKab.FieldByName('FC_NAME').AsString;
  if VarName = 'PHONEKAB' then Value := frmMain.odsKab.FieldByName('FC_PHONE').AsString;
  if VarName = 'MEDOTRADESIGN' then Value := frmMain.MedotradeSign;
  if VarName = 'KOLVO_SN' then Value := rowCntSnimki.Properties.Value;
  if VarName = 'DOZA' then Value := rowDoza.Properties.Value;
  if VarName = 'FC_NAME' then Value := rowUsl.Properties.Value;
end;

function TfrmNaprRad.GetLastTalonID(App_HND: THandle; OS: TORacleSession; pPacID, pSotrID, pTalonID: Integer): integer;
var AAmbTalonHandle: THandle;
    str: string;
    GetAmbtalonId: function(App_HND: THandle; OS: TORacleSession; pPacID, pSotrID, pTalonID:Integer; pDate : TDateTime):LongInt; stdcall;
begin
  Result := -1;
  AAmbTalonHandle := LoadLibrary('AMBTalonDLL.dll');
  if AAmbTalonHandle > HINSTANCE_ERROR then
    begin
      @GetAmbtalonId := GetProcAddress(AAmbTalonHandle, 'InitPluginGetAmbtalonIdDefDate');
      if @GetAmbtalonId <> nil then
        begin
          try
            Result := GetAmbtalonId(App_HND, OS, pPacID, frmMain.pSOTRID, pTalonID, StrToDateTime(DateToStr(merDateTime.Properties.Editors[0].Value)+' '+FormatDateTime('hh:nn:ss', merDateTime.Properties.Editors[1].Value)));
          except
            on E:Exception do
              begin
                str := '������ ��� �������� �������� ������'+sLineBreak+e.Message;
                Application.MessageBox(PChar(str), '������', MB_OK + MB_ICONINFORMATION);
              end;
          end;
        end;
      FreeLibrary(AAmbTalonHandle);
    end;
end;

procedure TfrmNaprRad.InsertKonsultUslug(nNazid: Integer; nPacid: Integer);
var ods : TOracleDataSet;
     oq : TOracleQuery;
begin
  ods := TOracleDataSet.Create(nil);
  try
    ods.Session := frmMain.os;
    ods.Cursor := crSQLWait;
    ods.SQL.Text := ' merge into asu.tkonsult_uslug using dual on (fk_nazid = :pfk_nazid) '+#13+
                    ' when not matched then '+#13+
                    '   insert(fk_nazid) values(:pfk_nazid) ';
    ods.DeclareAndSet('pfk_nazid', otInteger, nNazid);
    ods.Open;
    ods.DeleteVariables;
    ods.Close;
    ods.SQL.Text := ' select count(*) as cnt from asu.tambtalon_naz where fk_nazid = :pfk_nazid ';
    ods.DeclareAndSet('pfk_nazid', otInteger, nNazid);
    ods.Open;
    if ods.FieldByName('cnt').AsInteger = 0 then
      begin
        oq := TOracleQuery.Create(nil);
        try
          oq.Session := frmMain.os;
          oq.Cursor := crSQLWait;
          oq.SQL.Text := ' insert into asu.tambtalon(fk_sotrid, fd_opened, fk_ambid, fn_sos, fk_otdelid) '+#13+
                         ' values(:pfk_sotrid, sysdate, :pfk_ambid, 0, :pfk_otdelid) '+#13+
                         ' returning fk_id into :pfk_id ';
          oq.DeclareAndSet('pfk_sotrid', otInteger, frmMain.pSOTRID);
          oq.DeclareAndSet('pfk_ambid', otInteger, nPacID);
          oq.DeclareAndSet('pfk_otdelid', otInteger, pOTDELID);
          oq.DeclareVariable('pfk_id', otInteger);
          oq.Execute;
          idTalon := oq.GetVariable('pfk_id');
          oq.DeleteVariables;
          oq.SQL.Text := ' insert into asu.tambtalon_naz(fk_talonid, fk_ambid, fk_nazid) '+#13+
                         ' values(:pfk_talonid, :pfk_ambid, :pfk_nazid) ';
          oq.DeclareAndSet('pfk_talonid', otInteger, idTalon);
          oq.DeclareAndSet('pfk_ambid', otInteger, nPacID);
          oq.DeclareAndSet('pfk_nazid', otInteger, nNazid);
          oq.Execute;
        finally
          oq.Free;
        end;
      end;
    frmMain.os.Commit;
  finally
    ods.Free;
  end;
end;

procedure TfrmNaprRad.odsRgLaborantBeforeOpen(DataSet: TDataSet);
begin
  odsRgLaborant.SetVariable('pfk_otdelid', frmMain.pOTDELID);
end;

procedure TfrmNaprRad.odsVidDocBeforeOpen(DataSet: TDataSet);
begin
  odsVidDoc.SetVariable('pfk_id', pPacID);
end;

procedure TfrmNaprRad.rowCompanyEditPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if AButtonIndex = 0 then
    begin
      Application.CreateForm(TfrmSetSmid, frmSetSmid);
      frmSetSmid.DoShowForm('XRAY_COMPANY_DOGOVOR');
      try
        frmSetSmid.ShowModal;
        if frmSetSmid.ModalResult = mrOk then
          begin
            TcxButtonEdit(vgrMK.InplaceEditor).Properties.ViewStyle := vsNormal;
            TcxButtonEdit(vgrMK.InplaceEditor).EditingText := frmSetSmid.odsList.FieldByName('fc_name').AsString;
            TcxButtonEdit(vgrMK.InplaceEditor).Properties.ViewStyle := vsHideCursor;
            rowCompany.Tag := frmSetSmid.odsList.FieldByName('fk_id').AsInteger;
          end;
      finally
        frmSetSmid.Free;
      end;
    end;
  if AButtonIndex = 1 then
    begin
      TcxButtonEdit(vgrMK.InplaceEditor).Properties.ViewStyle := vsNormal;
      TcxButtonEdit(vgrMK.InplaceEditor).EditingText := ' ';
      TcxButtonEdit(vgrMK.InplaceEditor).Properties.ViewStyle := vsHideCursor;
      rowCompany.Tag := 0;
    end;
end;

procedure TfrmNaprRad.rowNadEditPropertiesChange(Sender: TObject);
var ods : TOracleDataSet;
    defTime : Extended;
    sSyn : String;
begin
  if (rowTime.Properties.Value <> 0) and (rowUsl.Tag <> 0) then
    begin
      defTime := rowTime.Properties.Value;
      sSyn := odsNadbavka.FieldByName('FC_SYNONIM').AsString;
      //      odsNadbavka.Locate('fk_id')
      ods := TOracleDataSet.Create(nil);
      try
        ods.Session := frmMain.os;
        ods.Cursor := crSQLWait;
        ods.SQL.Text := ' select fc_time from asu.tsmid where fk_id = :pfk_id ';
        ods.DeclareAndSet('pfk_id', otInteger, rowUsl.Tag);
        ods.Open;
        if ods.RecordCount > 0 then
          if ods.FieldByName('fc_time').AsString = '' then //!!! ���������� �����������
            defTime := rowTime.Properties.Value
          else
            defTime := StrToFloat(ods.FieldByName('fc_time').AsString);
        if sSyn <> 'TIME_NO' then
          defTime := defTime * 1.2;
        rowTime.Properties.Value := FloatToStr(defTime);
      finally
        ods.Free;
      end;
    end;
end;

procedure TfrmNaprRad.rowNaprEditPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if AButtonIndex = 0 then
    begin
      Application.CreateForm(TfrmSetNapr, frmSetNapr);
      try
        frmSetNapr.ShowModal;
        if frmSetNapr.ModalResult = mrOk then
          begin
            TcxButtonEdit(vgrMiddle.InplaceEditor).Properties.ViewStyle := vsNormal;
            TcxButtonEdit(vgrMiddle.InplaceEditor).EditingText := frmSetNapr.odsKemNapravlen.FieldByName('fc_name').AsString;
            TcxButtonEdit(vgrMiddle.InplaceEditor).Properties.ViewStyle := vsHideCursor;
            rowNapr.Tag := frmSetNapr.odsKemNapravlen.FieldByName('fk_id').AsInteger;
          end;
      finally
        frmSetNapr.Free;
      end;
    end;
  if AButtonIndex = 1 then
    begin
      TcxButtonEdit(vgrMiddle.InplaceEditor).Properties.ViewStyle := vsNormal;
      TcxButtonEdit(vgrMiddle.InplaceEditor).EditingText := ' ';
      TcxButtonEdit(vgrMiddle.InplaceEditor).Properties.ViewStyle := vsHideCursor;
      rowNapr.Tag := 0;
    end;
end;

procedure TfrmNaprRad.rowTypeKontrastEditPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TfrmSetKontrast, frmSetKontrast);
  try
    frmSetKontrast.ShowModal;
    if frmSetKontrast.ModalResult = mrOk then
      begin
        TcxButtonEdit(vgrKontrast.InplaceEditor).Properties.ViewStyle := vsNormal;
        TcxButtonEdit(vgrKontrast.InplaceEditor).EditingText := frmSetKontrast.odsTypeKontrast.FieldByName('fc_name').AsString;
        TcxButtonEdit(vgrKontrast.InplaceEditor).Properties.ViewStyle := vsHideCursor;
        rowTypeKontrast.Tag := frmSetKontrast.odsTypeKontrast.FieldByName('fk_id').AsInteger;
        rowKolvoKontrast.Properties.EditProperties.ReadOnly := False;
        rowKolvoKontrast.Options.Focusing := True;
        rowKolvoKontrast.Options.TabStop := True;
      end;
  finally
    frmSetKontrast.Free;
  end;
end;

procedure TfrmNaprRad.rowUslEditPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  oq : toraclequery;
  iNeedNaprUch : integer;
  ods: TOracleDataSet;
  oldSMID: Integer;
  oldName: String;
begin
  if (not CAN_UPDATE_NAZ_SMID) and (pNAZID <> 0)
  then begin
    try
      ods := TOracleDataSet.Create(nil);
      ods.Session := frmMain.os;
      ods.SQL.Text := 'SELECT FK_SMID, asu.get_smidname(FK_SMID) as SMID_NAME FROM ASU.VNAZ WHERE FK_ID = :pFK_ID';

      ods.DeclareAndSet('pFK_ID', otInteger, pNAZID);
      ods.Open;

      if ods.RecordCount > 0
      then begin
        oldSMID := ods.FieldByName('FK_SMID').AsInteger;
        oldName := ods.FieldByName('SMID_NAME').AsString;
      end
      else oldSMID := -1979;

      ods.Close;

      ods.DeleteVariables;
      ods.SQL.Text := 'SELECT 1 AS N' + #13#10 +
        'FROM ASU.TAPPENDIX_NAZ tn INNER JOIN ASU.TBILL tb' + #13#10 +
        'ON tn.fk_appendixid = tb.fk_appendix' + #13#10 +
        'WHERE tn.fk_nazid = :pFK_NAZID AND FP_PAY = 1';

      ods.DeclareAndSet('pFK_NAZID', otInteger, pNAZID);
      ods.Open;

      if ods.RecordCount > 0
      then begin
        Application.MessageBox(PAnsiChar('���������� "' + oldName +
          '" ���������� ��������, �.�. ��� ������� ���������� ������� ���������� ������� ������!'),
          '����������', MB_ICONWARNING + MB_OK);
        exit;
      end;
    finally
      ods.Free;
    end;
  end;

  if pSosID <> get_vipnaz then
    begin
      Application.CreateForm(TfrmSetUsl, frmSetUsl);
      try
        frmSetUsl.pSotrID := frmMain.pSOTRID;
        frmSetUsl.pKabID := pKabID;
        frmSetUsl.ShowModal;

        if frmSetUsl.ModalResult = mrOk then
          begin
            TcxButtonEdit(vgrUsl.InplaceEditor).Properties.ViewStyle := vsNormal;
            TcxButtonEdit(vgrUsl.InplaceEditor).EditingText := frmSetUsl.odsList.FieldByName('fc_name').AsString;
            TcxButtonEdit(vgrUsl.InplaceEditor).Properties.ViewStyle := vsHideCursor;
            rowUsl.Tag := frmSetUsl.odsList.FieldByName('fk_id').AsInteger;

            rowTime.Properties.EditProperties.ReadOnly := False;
            rowTime.Options.Focusing := True;
            rowTime.Options.TabStop := True;
            rowTime.Properties.Options.ShowEditButtons := eisbAlways;
            if frmSetUsl.odsList.FieldByName('fc_time').AsString = '' then
              rowTime.Properties.Value := 0
            else
              rowTime.Properties.Value := StrToInt(frmSetUsl.odsList.FieldByName('fc_time').AsString);
            if frmSetUsl.odsList.FieldByName('fn_norm0').AsFloat = 0 then
              rowDoza.Properties.Value := 0
            else
              rowDoza.Properties.Value := frmSetUsl.odsList.FieldByName('fn_norm0').AsFloat;
            rowNad.Properties.EditProperties.ReadOnly := False;
            rowNad.Options.Focusing := True;
            rowNad.Options.TabStop := True;
            rowNad.Properties.Options.ShowEditButtons := eisbAlways;
            pOwnerID := frmSetUsl.odsList.FieldByName('fk_owner').AsInteger;
// -- � ����������� �� ������������ ���������� ��� �� ����������
            if pOwnerID <> 0 then
              begin
                rowScan.Visible := pOwnerID = get_rad_petct;
                if pOwnerID = get_rad_petct then
                  begin
                    odsRFP.Close;
                    odsRFP.SetVariable('pfc_synonim', 'RADIO_RFP_PET');
                    odsRFP.Open;
                  end;
                if pOwnerID = get_rad_gamma then
                  begin
                    odsRFP.Close;
                    odsRFP.SetVariable('pfc_synonim', 'RADIO_RFP_GAMMA');
                    odsRFP.Open;
                  end;
              end
            else
              begin
                rowScan.Visible := False;
              end;
            if (frmMain.GET_AMBTALON_XRAY = '-1') and (pAMBUL = 1) then
              begin         
                if rgregist_amb_napr_uch = 1 then
                 iNeedNaprUch := -15477
                else
                 iNeedNaprUch := -1;
                idTalon := GetLastTalonID(Application.Handle, frmMain.os, pPACID, frmMain.pSOTRID, iNeedNaprUch);
              end;
//-->> 3. ���� ���� ������������ � ��� ������, �� ������ ������ ��� ������ � �����������
            if idTalon <> 0 then
              begin
                oq := TOracleQuery.Create(nil);
                try
                  oq.Session := frmMain.os;
                  oq.Cursor := crSQLWait;
                  oq.SQL.Text := ' merge into asu.tambtalon_naz using dual on '+#13+
                                 '   (fk_talonid = :pfk_talonid and fk_ambid = :pfk_ambid and fk_nazid = :pfk_nazid) '+#13+
                                 ' when not matched then '+#13+
                                 '   insert(fk_talonid, fk_ambid, fk_nazid) values(:pfk_talonid, :pfk_ambid, :pfk_nazid) ';
                  oq.DeclareAndSet('PFK_TALONID', otInteger, idTalon);
                  oq.DeclareAndSet('PFK_AMBID', otInteger, pPACID);
                  oq.DeclareAndSet('PFK_NAZID', otInteger, frmMain.IDNaz);
                  oq.Execute;
                  frmMain.os.Commit;
                finally
                  oq.Free;
                end;
              end;
          end;
      finally
        frmSetUsl.Free;
      end;
    end else
    begin
      showmessage('�� �� ������ �������� ������, ������� ��� ��������� ������!');
    end;
end;

procedure TfrmNaprRad.rowVidOplEditPropertiesEditValueChanged(Sender: TObject);
begin
  rowCompany.Visible := odsVidOplat.FieldByName('fc_synonim').AsString = 'TAL_OTHER';
end;

end.
