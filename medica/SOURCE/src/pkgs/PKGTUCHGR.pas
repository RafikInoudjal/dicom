unit PKGTUCHGR;

// Oracle Package Wizard 1.0.3
// File PKGTUCHGR.pas generated by Sam on 08.05.2002 13:51:54
// This unit contains interface objects for oracle package MED.PKGTUCHGR
// WARNING: Modifications made to this file will be lost after regeneration!

interface

uses Classes, SysUtils, Oracle;

type
(*
PACKAGE PKGTUCHGR
IS

/*-------------------------------------------------------------------------------------------*\
|               Cursors
\*-------------------------------------------------------------------------------------------*/
   CURSOR cGetByID (puchgrid IN NUMBER)
   IS
      SELECT fc_uchgr, fl_mat
      FROM   TuchGR
      WHERE  uchgrid = puchgrid;


/*-------------------------------------------------------------------------------------------*\
|               Procedures
\*-------------------------------------------------------------------------------------------*/

   PROCEDURE DoDelCascade (puchgrid IN NUMBER);

   PROCEDURE DoSet (pfc_uchgr IN VARCHAR2, pmat in number,puchgrid IN NUMBER DEFAULT -1);

   PROCEDURE DoDel (puchgrid IN NUMBER);

   PROCEDURE GetByID (puchgrid IN NUMBER, pfc_uchgr OUT VARCHAR2,pmat out number);

   FUNCTION GetNameByID (puchgrid IN NUMBER)
      RETURN tuchgr.fc_uchgr%TYPE;
  FUNCTION GetMedicID
      RETURN tuchgr.uchgrid%TYPE;
END PKGTuchGR;
*)
  TPKGTUCHGR = class(TOracleCustomPackage)
  public
    procedure DODEL(PUCHGRID: Double);
    procedure DODELCASCADE(PUCHGRID: Double);
    procedure DOSET(const PFCUCHGR: string; PMAT: Double; PUCHGRID: Double);
    procedure GETBYID(PUCHGRID: Double; out PFCUCHGR: string; 
      out PMAT: Double);
    function  GETMEDICID: Double;
    function  GETNAMEBYID(PUCHGRID: Double): string;
  published
    property Name;
    property Session;
    property Cursor;
  end;

var
  DefaultPLSQLTableSize: Integer = 100; // Default size of a PL/SQL Table

implementation

// PKGTUCHGR.DODEL
procedure TPKGTUCHGR.DODEL(PUCHGRID: Double);
begin
  GetQuery;
  OCPQuery.DeclareVariable('PUCHGRID', otFloat);
  OCPQuery.SetVariable('PUCHGRID', PUCHGRID);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  "MED"."PKGTUCHGR"."DODEL"(PUCHGRID => :PUCHGRID);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
end;

// PKGTUCHGR.DODELCASCADE
procedure TPKGTUCHGR.DODELCASCADE(PUCHGRID: Double);
begin
  GetQuery;
  OCPQuery.DeclareVariable('PUCHGRID', otFloat);
  OCPQuery.SetVariable('PUCHGRID', PUCHGRID);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  "MED"."PKGTUCHGR"."DODELCASCADE"(PUCHGRID => :PUCHGRID);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
end;

// PKGTUCHGR.DOSET
procedure TPKGTUCHGR.DOSET(const PFCUCHGR: string; PMAT: Double; PUCHGRID: Double);
begin
  GetQuery;
  OCPQuery.DeclareVariable('PFC_UCHGR', otString);
  OCPQuery.SetVariable('PFC_UCHGR', PFCUCHGR);
  OCPQuery.DeclareVariable('PMAT', otFloat);
  OCPQuery.SetVariable('PMAT', PMAT);
  OCPQuery.DeclareVariable('PUCHGRID', otFloat);
  OCPQuery.SetVariable('PUCHGRID', PUCHGRID);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  "MED"."PKGTUCHGR"."DOSET"(');
  OCPQuery.SQL.Add('    PFC_UCHGR => :PFC_UCHGR,');
  OCPQuery.SQL.Add('    PMAT => :PMAT,');
  OCPQuery.SQL.Add('    PUCHGRID => :PUCHGRID);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
end;

// PKGTUCHGR.GETBYID
procedure TPKGTUCHGR.GETBYID(PUCHGRID: Double; out PFCUCHGR: string; 
  out PMAT: Double);
begin
  GetQuery;
  OCPQuery.DeclareVariable('PUCHGRID', otFloat);
  OCPQuery.SetVariable('PUCHGRID', PUCHGRID);
  OCPQuery.DeclareVariable('PFC_UCHGR', otString);
  OCPQuery.DeclareVariable('PMAT', otFloat);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  "MED"."PKGTUCHGR"."GETBYID"(');
  OCPQuery.SQL.Add('    PUCHGRID => :PUCHGRID,');
  OCPQuery.SQL.Add('    PFC_UCHGR => :PFC_UCHGR,');
  OCPQuery.SQL.Add('    PMAT => :PMAT);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  PFCUCHGR := ConvertVariant(OCPQuery.GetVariable('PFC_UCHGR'));
  PMAT := ConvertVariant(OCPQuery.GetVariable('PMAT'));
end;

// PKGTUCHGR.GETMEDICID
function TPKGTUCHGR.GETMEDICID: Double;
begin
  GetQuery;
  OCPQuery.DeclareVariable('function_result', otFloat);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  :function_result := "MED"."PKGTUCHGR"."GETMEDICID";');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  Result := ConvertVariant(OCPQuery.GetVariable('function_result'));
end;

// PKGTUCHGR.GETNAMEBYID
function TPKGTUCHGR.GETNAMEBYID(PUCHGRID: Double): string;
begin
  GetQuery;
  OCPQuery.DeclareVariable('function_result', otString);
  OCPQuery.DeclareVariable('PUCHGRID', otFloat);
  OCPQuery.SetVariable('PUCHGRID', PUCHGRID);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  :function_result := "MED"."PKGTUCHGR"."GETNAMEBYID"(PUCHGRID => :PUCHGRID);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  Result := ConvertVariant(OCPQuery.GetVariable('function_result'));
end;

end.