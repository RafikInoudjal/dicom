unit PKGMEDKART;

// Oracle Package Wizard 1.0.3
// File PKGMEDKART.pas generated by Delphi5 on 06.11.2006 9:11:03
// This unit contains interface objects for oracle package MED.PKGMEDKART
// WARNING: Modifications made to this file will be lost after regeneration!

interface

uses Classes, SysUtils, Oracle;

type
  PKGMEDKARTKARTT = class(TPLSQLRecord)
  public
    KARTID: Double;
    MOID: Double;
    FLDEL: Double;
    MEDICID: Double;
    FCNAME: string;
    FCSERIAL: string;
    FDGODEN: TDateTime;
    FNPRODCERTID: Double;
    FCCERTIFICATE: string;
    FCPRODUCER: string;
    FN_party_num   : Variant;
    FN_price       : Double;
    FN_kol         : Double;
    procedure Assign(Source: TPLSQLRecord); override;
  end;

(*
PACKAGE PKGMEDKART IS

-- MODIFICATION HISTORY
-- Person      Date    Comments
-- ---------   ------  ------------------------------------------
-- Sam       18-01-2001

type kart_t is record (
	kartid         tkart.kartid%type,
	moid           tkart.moid%type,
	fl_del         tkart.fl_del%type,
	medicid        tkart.medicid%type,
	fc_name        tkart.fc_name%type,
	fc_serial      tkart.fc_serial%type,
	fd_goden       tkart.fd_goden%type,
	fn_prodcertid  tkart.fn_prodcertid%type,
	fc_certificate tkart.fc_certificate%type,
	fc_producer    tkart.fc_producer%type
);

procedure GetKart(kart in out kart_t);
procedure SetKart(kart in kart_t);

/**/
CURSOR cGetByID(pkartid IN NUMBER)
IS
	SELECT fc_name, medicid, moid, fd_goden, fc_serial, fn_prodcertid
	FROM tkart
	WHERE kartid = pkartid;

/**/
FUNCTION GetmedicByID(pkartid IN NUMBER) RETURN number;

/**/
PROCEDURE GetByID (
	pfc_name  OUT VARCHAR2,
	pmedicid  OUT NUMBER,
	pmoid     OUT NUMBER,
	fd_goden  OUT DATE,
	fc_serial OUT VARCHAR2,
	strProd   out varchar2,
	strCert   out varchar2,
	pkartid   IN  NUMBER
);

/**/
FUNCTION DoSet (
	pfc_name    IN VARCHAR2,
	pmedicid    IN NUMBER,
	pmoid       IN NUMBER,
	pfd_goden   IN DATE,
	pfc_serial  IN VARCHAR2,
	pkartid     IN NUMBER DEFAULT -1,
	ProdCertID in number
) RETURN NUMBER;

/**/
PROCEDURE DoDel(pkartid IN NUMBER);

/**/
FUNCTION GetNameByID(pkartid IN NUMBER) RETURN VARCHAR2;

/**/
FUNCTION GetSerialByID(pkartid IN NUMBER) RETURN VARCHAR2;

/**/
FUNCTION GetEdIzm(pkartid IN NUMBER) RETURN NUMBER;

/**/
FUNCTION GetPrice(pkartid IN tkart.kartid%TYPE, pD1 IN DATE) RETURN number;

/**/
FUNCTION GetPrihKol (
	pkartid IN tkart.kartid%TYPE,
	pmoid   IN tmo.moid%TYPE,
	pfd1    IN DATE,
	pfd2    IN DATE
) RETURN NUMBER;

/**/
FUNCTION GetPrihSum (
	pkartid IN tkart.kartid%TYPE,
	pmoid   IN tmo.moid%TYPE,
	pfd1    IN DATE,
	pfd2    IN DATE
) RETURN NUMBER;

/**/
FUNCTION GetRashKol (
	pkartid IN tkart.kartid%TYPE,
	pmoid   IN tmo.moid%TYPE,
	pfd1    IN DATE,
	pfd2    IN DATE
) RETURN NUMBER;

/**/
FUNCTION GetRashSum (
	pkartid IN tkart.kartid%TYPE,
	pmoid   IN tmo.moid%TYPE,
	pfd1    IN DATE,
	pfd2    IN DATE
) RETURN NUMBER;

   FUNCTION GetOst (
      pkartid    IN   NUMBER,
      pFD_DATE   IN   DATE,
      pMOID      IN   NUMBER
   ) RETURN NUMBER;

   FUNCTION GetOstsum (
      pkartid    IN   NUMBER,
      pFD_DATE   IN   DATE,
      pMOID      IN   NUMBER
   ) RETURN NUMBER;

/**/
FUNCTION GetOstMedic(pmedicid IN NUMBER, pFD_DATE IN DATE, pMOID IN NUMBER) RETURN NUMBER;

FUNCTION GET_KARTSERIALLST( PMEDICID   IN   NUMBER,
                            PFD_DATE   IN   DATE,
                            PMOID      IN   NUMBER ) RETURN VARCHAR2;

FUNCTION EXIST_KART( pMEDICID   IN   NUMBER,
                     pFC_NAME   IN   VARCHAR2,
                     pFC_SERIAL IN   VARCHAR2) RETURN INTEGER;
/*���� ������ ���� � ������ ������, �� �-�� ������ �������� kartid, �����
 ���� ������ �� ������������� 0*/

FUNCTION GetFC_NAME_LATByID (pkartid   IN   NUMBER )  RETURN VARCHAR2;
--������� �������� ���� TMEDIC.FC_NAME_LAT

END;
*)
  TPKGMEDKART = class(TOracleCustomPackage)
  public
    procedure DODEL(PKARTID: Double);
    function DOSET(const PFCNAME: string; PMEDICID: Double; PMOID: Double;
                                     PFDGODEN: TDateTime; const PFCSERIAL: string; PKARTID: Double;
                                     PRODCERTID: Double; PPARTYNUM : Variant;
                                     pprice : Double; pkol : Double; PUCHGRID : Variant; IsGodenPresent : boolean = True): Double;
    function  EXISTKART(PMEDICID: Double; const PFCNAME: string;
      const PFCSERIAL: string): Double;
    procedure GETBYID(out PFCNAME: string; out PMEDICID: Double;
      out PMOID: Double; out FDGODEN: TDateTime; out FCSERIAL: string; 
      out STRPROD: string; out STRCERT: string; PKARTID: Double);
    function  GETEDIZM(PKARTID: Double): Double;
    function  GETFCNAMELATBYID(PKARTID: Double): string;
    procedure GETKART(var KART: PKGMEDKARTKARTT);
    function  GETMEDICBYID(PKARTID: Double): Double;
    function  GETNAMEBYID(PKARTID: Double): string;
    function  GETOST(PKARTID: Double; PFDDATE: TDateTime; PMOID: Double = -1): Double;
    function  GETOSTMEDIC(PMEDICID: Double; PFDDATE: TDateTime; 
      PMOID: Double): Double;
    function  GETOSTSUM(PKARTID: Double; PFDDATE: TDateTime; PMOID: Double): Double;
    function  GETPRICE( PKARTID: Double ): Double;
    function  GETPRIHKOL(PKARTID: Double; PMOID: Double; PFD1: TDateTime; 
      PFD2: TDateTime): Double;
    function  GETPRIHSUM(PKARTID: Double; PMOID: Double; PFD1: TDateTime; 
      PFD2: TDateTime): Double;
    function  GETRASHKOL(PKARTID: Double; PMOID: Double; PFD1: TDateTime; 
      PFD2: TDateTime): Double;
    function  GETRASHSUM(PKARTID: Double; PMOID: Double; PFD1: TDateTime; 
      PFD2: TDateTime): Double;
    function  GETSERIALBYID(PKARTID: Double): string;
    function  GETKARTSERIALLST(PMEDICID: Double; PFDDATE: TDateTime; 
      PMOID: Double): string;
    procedure SETKART(KART: PKGMEDKARTKARTT);
  published
    property Name;
    property Session;
    property Cursor;
  end;

var
  DefaultPLSQLTableSize: Integer = 100; // Default size of a PL/SQL Table

implementation
uses Variants;

procedure PKGMEDKARTKARTT.Assign(Source: TPLSQLRecord);
begin
  inherited;
  with Source as PKGMEDKARTKARTT do
  begin
    Self.KARTID := KARTID;
    Self.MOID := MOID;
    Self.FLDEL := FLDEL;
    Self.MEDICID := MEDICID;
    Self.FCNAME := FCNAME;
    Self.FCSERIAL := FCSERIAL;
    Self.FDGODEN := FDGODEN;
    Self.FNPRODCERTID := FNPRODCERTID;
    Self.FCCERTIFICATE := FCCERTIFICATE;
    Self.FCPRODUCER := FCPRODUCER;

    Self.fn_party_num := fn_party_num;
    Self.fn_price := fn_price;
    Self.fn_kol := fn_kol;
  end;
end;

// PKGMEDKART.DODEL
procedure TPKGMEDKART.DODEL(PKARTID: Double);
begin
  GetQuery;
  OCPQuery.DeclareVariable('PKARTID', otFloat);
  OCPQuery.SetVariable('PKARTID', PKARTID);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  "MED"."PKGMEDKART"."DODEL"(PKARTID => :PKARTID);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
end;

// PKGMEDKART.DOSET
function TPKGMEDKART.DOSET(const PFCNAME: string; PMEDICID: Double; PMOID: Double; 
  PFDGODEN: TDateTime; const PFCSERIAL: string; PKARTID: Double;
  PRODCERTID: Double; PPARTYNUM : Variant; pprice : Double; pkol : Double; PUCHGRID : Variant;
  IsGodenPresent : boolean = True): Double;

begin
  GetQuery;
  OCPQuery.DeclareVariable('function_result', otFloat);
  OCPQuery.DeclareVariable('PFC_NAME', otString);
  OCPQuery.SetVariable('PFC_NAME', PFCNAME);
  OCPQuery.DeclareVariable('PMEDICID', otFloat);
  OCPQuery.SetVariable('PMEDICID', PMEDICID);
  OCPQuery.DeclareVariable('PMOID', otFloat);
  OCPQuery.SetVariable('PMOID', PMOID);

  OCPQuery.DeclareVariable('PFD_GODEN', otDate);
  if  IsGodenPresent then
    OCPQuery.SetVariable('PFD_GODEN', PFDGODEN)
  else
    OCPQuery.SetVariable('PFD_GODEN', null);

  OCPQuery.DeclareVariable('PFC_SERIAL', otString);
  OCPQuery.SetVariable('PFC_SERIAL', PFCSERIAL);
  OCPQuery.DeclareVariable('PKARTID', otFloat);
  OCPQuery.SetVariable('PKARTID', PKARTID);
  OCPQuery.DeclareVariable('PRODCERTID', otFloat);
  OCPQuery.SetVariable('PRODCERTID', PRODCERTID);
  OCPQuery.DeclareVariable('PPARTYNUM', otString);
  OCPQuery.SetVariable('PPARTYNUM', PPARTYNUM);
  OCPQuery.DeclareVariable('pprice', otFloat);
  OCPQuery.SetVariable('pprice', pprice);
  OCPQuery.DeclareVariable('pkol', otFloat);
  OCPQuery.SetVariable('pkol', pkol);
  OCPQuery.DeclareVariable('puchgrid', otFloat);
  OCPQuery.SetVariable('puchgrid', PUCHGRID);

  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  :function_result := "MED"."PKGMEDKART"."DOSET"(');
  OCPQuery.SQL.Add('    PFC_NAME => :PFC_NAME,');
  OCPQuery.SQL.Add('    PMEDICID => :PMEDICID,');
  OCPQuery.SQL.Add('    PMOID => :PMOID,');
  OCPQuery.SQL.Add('    PFD_GODEN => :PFD_GODEN,');
  OCPQuery.SQL.Add('    PFC_SERIAL => :PFC_SERIAL,');
  OCPQuery.SQL.Add('    PKARTID => :PKARTID,');
  OCPQuery.SQL.Add('    PRODCERTID => :PRODCERTID,');
  OCPQuery.SQL.Add('    PPARTYNUM => :PPARTYNUM,');
  OCPQuery.SQL.Add('    pprice => :pprice,');
  OCPQuery.SQL.Add('    pkol => :pkol,');
  OCPQuery.SQL.Add('    puchgrid => :puchgrid);');

  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  Result := ConvertVariant(OCPQuery.GetVariable('function_result'));
end;

// PKGMEDKART.EXIST_KART
function TPKGMEDKART.EXISTKART(PMEDICID: Double; const PFCNAME: string; 
  const PFCSERIAL: string): Double;
begin
  GetQuery;
  OCPQuery.DeclareVariable('function_result', otFloat);
  OCPQuery.DeclareVariable('PMEDICID', otFloat);
  OCPQuery.SetVariable('PMEDICID', PMEDICID);
  OCPQuery.DeclareVariable('PFC_NAME', otString);
  OCPQuery.SetVariable('PFC_NAME', PFCNAME);
  OCPQuery.DeclareVariable('PFC_SERIAL', otString);
  OCPQuery.SetVariable('PFC_SERIAL', PFCSERIAL);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  :function_result := "MED"."PKGMEDKART"."EXIST_KART"(');
  OCPQuery.SQL.Add('    PMEDICID => :PMEDICID,');
  OCPQuery.SQL.Add('    PFC_NAME => :PFC_NAME,');
  OCPQuery.SQL.Add('    PFC_SERIAL => :PFC_SERIAL);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  Result := ConvertVariant(OCPQuery.GetVariable('function_result'));
end;

// PKGMEDKART.GETBYID
procedure TPKGMEDKART.GETBYID(out PFCNAME: string; out PMEDICID: Double; 
  out PMOID: Double; out FDGODEN: TDateTime; out FCSERIAL: string; 
  out STRPROD: string; out STRCERT: string; PKARTID: Double);
begin
  GetQuery;
  OCPQuery.DeclareVariable('PFC_NAME', otString);
  OCPQuery.DeclareVariable('PMEDICID', otFloat);
  OCPQuery.DeclareVariable('PMOID', otFloat);
  OCPQuery.DeclareVariable('FD_GODEN', otDate);
  OCPQuery.DeclareVariable('FC_SERIAL', otString);
  OCPQuery.DeclareVariable('STRPROD', otString);
  OCPQuery.DeclareVariable('STRCERT', otString);
  OCPQuery.DeclareVariable('PKARTID', otFloat);
  OCPQuery.SetVariable('PKARTID', PKARTID);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  "MED"."PKGMEDKART"."GETBYID"(');
  OCPQuery.SQL.Add('    PFC_NAME => :PFC_NAME,');
  OCPQuery.SQL.Add('    PMEDICID => :PMEDICID,');
  OCPQuery.SQL.Add('    PMOID => :PMOID,');
  OCPQuery.SQL.Add('    FD_GODEN => :FD_GODEN,');
  OCPQuery.SQL.Add('    FC_SERIAL => :FC_SERIAL,');
  OCPQuery.SQL.Add('    STRPROD => :STRPROD,');
  OCPQuery.SQL.Add('    STRCERT => :STRCERT,');
  OCPQuery.SQL.Add('    PKARTID => :PKARTID);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  PFCNAME := ConvertVariant(OCPQuery.GetVariable('PFC_NAME'));
  PMEDICID := ConvertVariant(OCPQuery.GetVariable('PMEDICID'));
  PMOID := ConvertVariant(OCPQuery.GetVariable('PMOID'));
  FDGODEN := ConvertVariant(OCPQuery.GetVariable('FD_GODEN'));
  FCSERIAL := ConvertVariant(OCPQuery.GetVariable('FC_SERIAL'));
  STRPROD := ConvertVariant(OCPQuery.GetVariable('STRPROD'));
  STRCERT := ConvertVariant(OCPQuery.GetVariable('STRCERT'));
end;

// PKGMEDKART.GETEDIZM
function TPKGMEDKART.GETEDIZM(PKARTID: Double): Double;
begin
  GetQuery;
  OCPQuery.DeclareVariable('function_result', otFloat);
  OCPQuery.DeclareVariable('PKARTID', otFloat);
  OCPQuery.SetVariable('PKARTID', PKARTID);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  :function_result := "MED"."PKGMEDKART"."GETEDIZM"(PKARTID => :PKARTID);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  Result := ConvertVariant(OCPQuery.GetVariable('function_result'));
end;

// PKGMEDKART.GETFC_NAME_LATBYID
function TPKGMEDKART.GETFCNAMELATBYID(PKARTID: Double): string;
begin
  GetQuery;
  OCPQuery.DeclareVariable('function_result', otString);
  OCPQuery.DeclareVariable('PKARTID', otFloat);
  OCPQuery.SetVariable('PKARTID', PKARTID);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  :function_result := "MED"."PKGMEDKART"."GETFC_NAME_LATBYID"(PKARTID => :PKARTID);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  Result := ConvertVariant(OCPQuery.GetVariable('function_result'));
end;

// PKGMEDKART.GETKART
procedure TPKGMEDKART.GETKART(var KART: PKGMEDKARTKARTT);
begin
  GetQuery;
  OCPQuery.DeclareVariable('record_var2', otFloat);
  OCPQuery.SetVariable('record_var2', KART.KARTID);
  OCPQuery.DeclareVariable('record_var3', otFloat);
  OCPQuery.SetVariable('record_var3', KART.MOID);
  OCPQuery.DeclareVariable('record_var4', otFloat);
  OCPQuery.SetVariable('record_var4', KART.FLDEL);
  OCPQuery.DeclareVariable('record_var5', otFloat);
  OCPQuery.SetVariable('record_var5', KART.MEDICID);
  OCPQuery.DeclareVariable('record_var6', otString);
  OCPQuery.SetVariable('record_var6', KART.FCNAME);
  OCPQuery.DeclareVariable('record_var7', otString);
  OCPQuery.SetVariable('record_var7', KART.FCSERIAL);
  OCPQuery.DeclareVariable('record_var8', otDate);
  OCPQuery.SetVariable('record_var8', KART.FDGODEN);
  OCPQuery.DeclareVariable('record_var9', otFloat);
  OCPQuery.SetVariable('record_var9', KART.FNPRODCERTID);
  OCPQuery.DeclareVariable('record_var10', otString);
  OCPQuery.SetVariable('record_var10', KART.FCCERTIFICATE);
  OCPQuery.DeclareVariable('record_var11', otString);
  OCPQuery.SetVariable('record_var11', KART.FCPRODUCER);
  OCPQuery.DeclareVariable('record_var12', otFloat);
  OCPQuery.SetVariable('record_var12', KART.FN_party_num);
  OCPQuery.DeclareVariable('record_var13', otFloat);
  OCPQuery.SetVariable('record_var13', KART.FN_price);
  OCPQuery.DeclareVariable('record_var14', otFloat);
  OCPQuery.SetVariable('record_var14', KART.FN_kol);

  OCPQuery.SQL.Add('declare');
  OCPQuery.SQL.Add('  KART "PKGMEDKART".kart_t;');
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  KART.KARTID := :record_var2;');
  OCPQuery.SQL.Add('  KART.MOID := :record_var3;');
  OCPQuery.SQL.Add('  KART.FL_DEL := :record_var4;');
  OCPQuery.SQL.Add('  KART.MEDICID := :record_var5;');
  OCPQuery.SQL.Add('  KART.FC_NAME := :record_var6;');
  OCPQuery.SQL.Add('  KART.FC_SERIAL := :record_var7;');
  OCPQuery.SQL.Add('  KART.FD_GODEN := :record_var8;');
  OCPQuery.SQL.Add('  KART.FN_PRODCERTID := :record_var9;');
  OCPQuery.SQL.Add('  KART.FC_CERTIFICATE := :record_var10;');
  OCPQuery.SQL.Add('  KART.FC_PRODUCER := :record_var11;');
  OCPQuery.SQL.Add('  KART.FN_party_num := :record_var12;');
  OCPQuery.SQL.Add('  KART.FN_price := :record_var13;');
  OCPQuery.SQL.Add('  KART.FN_kol := :record_var14;');
  OCPQuery.SQL.Add('  "MED"."PKGMEDKART"."GETKART"(KART => KART);');
  OCPQuery.SQL.Add('  :record_var2 := KART.KARTID;');
  OCPQuery.SQL.Add('  :record_var3 := KART.MOID;');
  OCPQuery.SQL.Add('  :record_var4 := KART.FL_DEL;');
  OCPQuery.SQL.Add('  :record_var5 := KART.MEDICID;');
  OCPQuery.SQL.Add('  :record_var6 := KART.FC_NAME;');
  OCPQuery.SQL.Add('  :record_var7 := KART.FC_SERIAL;');
  OCPQuery.SQL.Add('  :record_var8 := KART.FD_GODEN;');
  OCPQuery.SQL.Add('  :record_var9 := KART.FN_PRODCERTID;');
  OCPQuery.SQL.Add('  :record_var10 := KART.FC_CERTIFICATE;');
  OCPQuery.SQL.Add('  :record_var11 := KART.FC_PRODUCER;');
  OCPQuery.SQL.Add('  :record_var11 := KART.FN_party_num;');
  OCPQuery.SQL.Add('  :record_var11 := KART.FN_price;');
  OCPQuery.SQL.Add('  :record_var11 := KART.FN_kol;');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  KART.KARTID        := ConvertVariant(OCPQuery.GetVariable('record_var2'));
  KART.MOID          := ConvertVariant(OCPQuery.GetVariable('record_var3'));
  KART.FLDEL         := ConvertVariant(OCPQuery.GetVariable('record_var4'));
  KART.MEDICID       := ConvertVariant(OCPQuery.GetVariable('record_var5'));
  KART.FCNAME        := ConvertVariant(OCPQuery.GetVariable('record_var6'));
  KART.FCSERIAL      := ConvertVariant(OCPQuery.GetVariable('record_var7'));
  KART.FDGODEN       := ConvertVariant(OCPQuery.GetVariable('record_var8'));
  KART.FNPRODCERTID  := ConvertVariant(OCPQuery.GetVariable('record_var9'));
  KART.FCCERTIFICATE := ConvertVariant(OCPQuery.GetVariable('record_var10'));
  KART.FCPRODUCER    := ConvertVariant(OCPQuery.GetVariable('record_var11'));
  KART.FN_party_num  := ConvertVariant(OCPQuery.GetVariable('record_var12'));
  KART.FN_price      := ConvertVariant(OCPQuery.GetVariable('record_var13'));
  KART.FN_kol        := ConvertVariant(OCPQuery.GetVariable('record_var14'));
end;

// PKGMEDKART.GETMEDICBYID
function TPKGMEDKART.GETMEDICBYID(PKARTID: Double): Double;
begin
  GetQuery;
  OCPQuery.DeclareVariable('function_result', otFloat);
  OCPQuery.DeclareVariable('PKARTID', otFloat);
  OCPQuery.SetVariable('PKARTID', PKARTID);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  :function_result := "MED"."PKGMEDKART"."GETMEDICBYID"(PKARTID => :PKARTID);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  Result := ConvertVariant(OCPQuery.GetVariable('function_result'));
end;

// PKGMEDKART.GETNAMEBYID
function TPKGMEDKART.GETNAMEBYID(PKARTID: Double): string;
begin
  GetQuery;
  OCPQuery.DeclareVariable('function_result', otString);
  OCPQuery.DeclareVariable('PKARTID', otFloat);
  OCPQuery.SetVariable('PKARTID', PKARTID);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  :function_result := "MED"."PKGMEDKART"."GETNAMEBYID"(PKARTID => :PKARTID);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  Result := ConvertVariant(OCPQuery.GetVariable('function_result'));
end;

// PKGMEDKART.GETOST
function TPKGMEDKART.GETOST(PKARTID: Double; PFDDATE: TDateTime; PMOID: Double = -1): Double;
begin
  GetQuery;
  OCPQuery.DeclareVariable('function_result', otFloat);
  OCPQuery.DeclareVariable('PKARTID', otFloat);
  OCPQuery.SetVariable('PKARTID', PKARTID);
  OCPQuery.DeclareVariable('PFD_DATE', otDate);
  OCPQuery.SetVariable('PFD_DATE', PFDDATE);
  OCPQuery.DeclareVariable('PMOID', otFloat);
  OCPQuery.SetVariable('PMOID', PMOID);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  :function_result := "MED"."PKGMEDKART"."GETOST"(');
  OCPQuery.SQL.Add('    PKARTID => :PKARTID,');
  OCPQuery.SQL.Add('    PFD_DATE => :PFD_DATE,');
  OCPQuery.SQL.Add('    PMOID => :PMOID);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  Result := ConvertVariant(OCPQuery.GetVariable('function_result'));
end;

// PKGMEDKART.GETOSTMEDIC
function TPKGMEDKART.GETOSTMEDIC(PMEDICID: Double; PFDDATE: TDateTime; 
  PMOID: Double): Double;
begin
  GetQuery;
  OCPQuery.DeclareVariable('function_result', otFloat);
  OCPQuery.DeclareVariable('PMEDICID', otFloat);
  OCPQuery.SetVariable('PMEDICID', PMEDICID);
  OCPQuery.DeclareVariable('PFD_DATE', otDate);
  OCPQuery.SetVariable('PFD_DATE', PFDDATE);
  OCPQuery.DeclareVariable('PMOID', otFloat);
  OCPQuery.SetVariable('PMOID', PMOID);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  :function_result := "MED"."PKGMEDKART"."GETOSTMEDIC"(');
  OCPQuery.SQL.Add('    PMEDICID => :PMEDICID,');
  OCPQuery.SQL.Add('    PFD_DATE => :PFD_DATE,');
  OCPQuery.SQL.Add('    PMOID => :PMOID);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  Result := ConvertVariant(OCPQuery.GetVariable('function_result'));
end;

// PKGMEDKART.GETOSTSUM
function TPKGMEDKART.GETOSTSUM(PKARTID: Double; PFDDATE: TDateTime; PMOID: Double): Double;
begin
  GetQuery;
  OCPQuery.DeclareVariable('function_result', otFloat);
  OCPQuery.DeclareVariable('PKARTID', otFloat);
  OCPQuery.SetVariable('PKARTID', PKARTID);
  OCPQuery.DeclareVariable('PFD_DATE', otDate);
  OCPQuery.SetVariable('PFD_DATE', PFDDATE);
  OCPQuery.DeclareVariable('PMOID', otFloat);
  OCPQuery.SetVariable('PMOID', PMOID);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  :function_result := "MED"."PKGMEDKART"."GETOSTSUM"(');
  OCPQuery.SQL.Add('    PKARTID => :PKARTID,');
  OCPQuery.SQL.Add('    PFD_DATE => :PFD_DATE,');
  OCPQuery.SQL.Add('    PMOID => :PMOID);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  Result := ConvertVariant(OCPQuery.GetVariable('function_result'));
end;

// PKGMEDKART.GETPRICE
function TPKGMEDKART.GETPRICE(PKARTID: Double): Double;
begin
  GetQuery;
  OCPQuery.DeclareVariable('function_result', otFloat);
  OCPQuery.DeclareVariable('PKARTID', otFloat);
  OCPQuery.SetVariable('PKARTID', PKARTID);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  :function_result := "MED"."PKGMEDKART"."GETPRICE"(');
  OCPQuery.SQL.Add('    PKARTID => :PKARTID);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  Result := ConvertVariant(OCPQuery.GetVariable('function_result'));
end;

// PKGMEDKART.GETPRIHKOL
function TPKGMEDKART.GETPRIHKOL(PKARTID: Double; PMOID: Double; PFD1: TDateTime; 
  PFD2: TDateTime): Double;
begin
  GetQuery;
  OCPQuery.DeclareVariable('function_result', otFloat);
  OCPQuery.DeclareVariable('PKARTID', otFloat);
  OCPQuery.SetVariable('PKARTID', PKARTID);
  OCPQuery.DeclareVariable('PMOID', otFloat);
  OCPQuery.SetVariable('PMOID', PMOID);
  OCPQuery.DeclareVariable('PFD1', otDate);
  OCPQuery.SetVariable('PFD1', PFD1);
  OCPQuery.DeclareVariable('PFD2', otDate);
  OCPQuery.SetVariable('PFD2', PFD2);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  :function_result := "MED"."PKGMEDKART"."GETPRIHKOL"(');
  OCPQuery.SQL.Add('    PKARTID => :PKARTID,');
  OCPQuery.SQL.Add('    PMOID => :PMOID,');
  OCPQuery.SQL.Add('    PFD1 => :PFD1,');
  OCPQuery.SQL.Add('    PFD2 => :PFD2);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  Result := ConvertVariant(OCPQuery.GetVariable('function_result'));
end;

// PKGMEDKART.GETPRIHSUM
function TPKGMEDKART.GETPRIHSUM(PKARTID: Double; PMOID: Double; PFD1: TDateTime; 
  PFD2: TDateTime): Double;
begin
  GetQuery;
  OCPQuery.DeclareVariable('function_result', otFloat);
  OCPQuery.DeclareVariable('PKARTID', otFloat);
  OCPQuery.SetVariable('PKARTID', PKARTID);
  OCPQuery.DeclareVariable('PMOID', otFloat);
  OCPQuery.SetVariable('PMOID', PMOID);
  OCPQuery.DeclareVariable('PFD1', otDate);
  OCPQuery.SetVariable('PFD1', PFD1);
  OCPQuery.DeclareVariable('PFD2', otDate);
  OCPQuery.SetVariable('PFD2', PFD2);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  :function_result := "MED"."PKGMEDKART"."GETPRIHSUM"(');
  OCPQuery.SQL.Add('    PKARTID => :PKARTID,');
  OCPQuery.SQL.Add('    PMOID => :PMOID,');
  OCPQuery.SQL.Add('    PFD1 => :PFD1,');
  OCPQuery.SQL.Add('    PFD2 => :PFD2);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  Result := ConvertVariant(OCPQuery.GetVariable('function_result'));
end;

// PKGMEDKART.GETRASHKOL
function TPKGMEDKART.GETRASHKOL(PKARTID: Double; PMOID: Double; PFD1: TDateTime; 
  PFD2: TDateTime): Double;
begin
  GetQuery;
  OCPQuery.DeclareVariable('function_result', otFloat);
  OCPQuery.DeclareVariable('PKARTID', otFloat);
  OCPQuery.SetVariable('PKARTID', PKARTID);
  OCPQuery.DeclareVariable('PMOID', otFloat);
  OCPQuery.SetVariable('PMOID', PMOID);
  OCPQuery.DeclareVariable('PFD1', otDate);
  OCPQuery.SetVariable('PFD1', PFD1);
  OCPQuery.DeclareVariable('PFD2', otDate);
  OCPQuery.SetVariable('PFD2', PFD2);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  :function_result := "MED"."PKGMEDKART"."GETRASHKOL"(');
  OCPQuery.SQL.Add('    PKARTID => :PKARTID,');
  OCPQuery.SQL.Add('    PMOID => :PMOID,');
  OCPQuery.SQL.Add('    PFD1 => :PFD1,');
  OCPQuery.SQL.Add('    PFD2 => :PFD2);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  Result := ConvertVariant(OCPQuery.GetVariable('function_result'));
end;

// PKGMEDKART.GETRASHSUM
function TPKGMEDKART.GETRASHSUM(PKARTID: Double; PMOID: Double; PFD1: TDateTime; 
  PFD2: TDateTime): Double;
begin
  GetQuery;
  OCPQuery.DeclareVariable('function_result', otFloat);
  OCPQuery.DeclareVariable('PKARTID', otFloat);
  OCPQuery.SetVariable('PKARTID', PKARTID);
  OCPQuery.DeclareVariable('PMOID', otFloat);
  OCPQuery.SetVariable('PMOID', PMOID);
  OCPQuery.DeclareVariable('PFD1', otDate);
  OCPQuery.SetVariable('PFD1', PFD1);
  OCPQuery.DeclareVariable('PFD2', otDate);
  OCPQuery.SetVariable('PFD2', PFD2);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  :function_result := "MED"."PKGMEDKART"."GETRASHSUM"(');
  OCPQuery.SQL.Add('    PKARTID => :PKARTID,');
  OCPQuery.SQL.Add('    PMOID => :PMOID,');
  OCPQuery.SQL.Add('    PFD1 => :PFD1,');
  OCPQuery.SQL.Add('    PFD2 => :PFD2);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  Result := ConvertVariant(OCPQuery.GetVariable('function_result'));
end;

// PKGMEDKART.GETSERIALBYID
function TPKGMEDKART.GETSERIALBYID(PKARTID: Double): string;
begin
  GetQuery;
  OCPQuery.DeclareVariable('function_result', otString);
  OCPQuery.DeclareVariable('PKARTID', otFloat);
  OCPQuery.SetVariable('PKARTID', PKARTID);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  :function_result := "MED"."PKGMEDKART"."GETSERIALBYID"(PKARTID => :PKARTID);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  Result := ConvertVariant(OCPQuery.GetVariable('function_result'));
end;

// PKGMEDKART.GET_KARTSERIALLST
function TPKGMEDKART.GETKARTSERIALLST(PMEDICID: Double; PFDDATE: TDateTime; 
  PMOID: Double): string;
begin
  GetQuery;
  OCPQuery.DeclareVariable('function_result', otString);
  OCPQuery.DeclareVariable('PMEDICID', otFloat);
  OCPQuery.SetVariable('PMEDICID', PMEDICID);
  OCPQuery.DeclareVariable('PFD_DATE', otDate);
  OCPQuery.SetVariable('PFD_DATE', PFDDATE);
  OCPQuery.DeclareVariable('PMOID', otFloat);
  OCPQuery.SetVariable('PMOID', PMOID);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  :function_result := "MED"."PKGMEDKART"."GET_KARTSERIALLST"(');
  OCPQuery.SQL.Add('    PMEDICID => :PMEDICID,');
  OCPQuery.SQL.Add('    PFD_DATE => :PFD_DATE,');
  OCPQuery.SQL.Add('    PMOID => :PMOID);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  Result := ConvertVariant(OCPQuery.GetVariable('function_result'));
end;

// PKGMEDKART.SETKART
procedure TPKGMEDKART.SETKART(KART: PKGMEDKARTKARTT);
begin
  GetQuery;
  OCPQuery.DeclareVariable('record_var2', otFloat);
  OCPQuery.SetVariable('record_var2', KART.KARTID);
  OCPQuery.DeclareVariable('record_var3', otFloat);
  OCPQuery.SetVariable('record_var3', KART.MOID);
  OCPQuery.DeclareVariable('record_var4', otFloat);
  OCPQuery.SetVariable('record_var4', KART.FLDEL);
  OCPQuery.DeclareVariable('record_var5', otFloat);
  OCPQuery.SetVariable('record_var5', KART.MEDICID);
  OCPQuery.DeclareVariable('record_var6', otString);
  OCPQuery.SetVariable('record_var6', KART.FCNAME);
  OCPQuery.DeclareVariable('record_var7', otString);
  OCPQuery.SetVariable('record_var7', KART.FCSERIAL);
  OCPQuery.DeclareVariable('record_var8', otDate);
  OCPQuery.SetVariable('record_var8', KART.FDGODEN);
  OCPQuery.DeclareVariable('record_var9', otFloat);
  OCPQuery.SetVariable('record_var9', KART.FNPRODCERTID);
  OCPQuery.DeclareVariable('record_var10', otString);
  OCPQuery.SetVariable('record_var10', KART.FCCERTIFICATE);
  OCPQuery.DeclareVariable('record_var11', otString);
  OCPQuery.SetVariable('record_var11', KART.FCPRODUCER);
  OCPQuery.DeclareVariable('record_var12', otFloat);
  OCPQuery.SetVariable('record_var12', KART.fn_party_num);
  OCPQuery.DeclareVariable('record_var13', otFloat);
  OCPQuery.SetVariable('record_var13', KART.fn_price);
  OCPQuery.DeclareVariable('record_var14', otFloat);
  OCPQuery.SetVariable('record_var14', KART.fn_kol);

  OCPQuery.SQL.Add('declare');
  OCPQuery.SQL.Add('  KART "PKGMEDKART".kart_t;');
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  KART.KARTID := :record_var2;');
  OCPQuery.SQL.Add('  KART.MOID := :record_var3;');
  OCPQuery.SQL.Add('  KART.FL_DEL := :record_var4;');
  OCPQuery.SQL.Add('  KART.MEDICID := :record_var5;');
  OCPQuery.SQL.Add('  KART.FC_NAME := :record_var6;');
  OCPQuery.SQL.Add('  KART.FC_SERIAL := :record_var7;');
  OCPQuery.SQL.Add('  KART.FD_GODEN := :record_var8;');
  OCPQuery.SQL.Add('  KART.FN_PRODCERTID := :record_var9;');
  OCPQuery.SQL.Add('  KART.FC_CERTIFICATE := :record_var10;');
  OCPQuery.SQL.Add('  KART.FC_PRODUCER := :record_var11;');
  OCPQuery.SQL.Add('  KART.fn_party_num := :record_var12;');
  OCPQuery.SQL.Add('  KART.fn_price := :record_var13;');
  OCPQuery.SQL.Add('  KART.fn_kol := :record_var14;');
  OCPQuery.SQL.Add('  "MED"."PKGMEDKART"."SETKART"(KART => KART);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
end;

end.
