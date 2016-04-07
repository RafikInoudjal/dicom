program Prprihbuh;

{$R 'Shablon.res' 'Shablon.rc'}
{$R 'Shablon_Med.res' 'Shablon_Med.rc'}

uses
  smmainAPI,
  Forms,
  fMain in 'fMain.pas' {frmMain},
  HtmlHlp in 'HtmlHlp.pas',
  uReportParams in '..\CommonUnits\uReportParams.pas',
  fdmPrintSelect in '..\..\src\fdmPrintSelect.pas' {dmPrintSelect: TDataModule},
  fGetMOGroup in '..\CommonUnits\fGetMOGroup.pas' {frmGetMOGroup},
  fgetperiod in '..\CommonUnits\fgetperiod.pas' {frmGetPeriod};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := '������ ����� ���������� �������';
  Application.HelpFile := 'StMedsestra.chm';
  Application.CreateForm(TdmPrintSelect, dmPrintSelect);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
