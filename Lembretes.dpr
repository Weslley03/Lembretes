program Lembretes;

uses
  Vcl.Forms,
  uPrincipla in 'View\uPrincipla.pas' {FrmPrincipla},
  Vcl.Themes,
  Vcl.Styles,
  uDataModule in 'View\uDataModule.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TFrmPrincipla, FrmPrincipla);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
