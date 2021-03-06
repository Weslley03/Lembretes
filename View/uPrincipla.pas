unit uPrincipla;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons;

type
  TFrmPrincipla = class(TForm)
    PanelTop: TPanel;
    Label1: TLabel;
    PanelLembretes: TPanel;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBNavigator2: TDBNavigator;
    EdPesquisar: TEdit;
    CbOpcao: TComboBox;
    BtPesquisar: TButton;
    BtAtualizar: TBitBtn;
    procedure BtPesquisarClick(Sender: TObject);
    procedure BtAtualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipla: TFrmPrincipla;

implementation

{$R *.dfm}

uses uDataModule;

procedure TFrmPrincipla.BtAtualizarClick(Sender: TObject);
begin
  DataModule1.FDQuery1.Open('select * from lembreteBD');
end;

procedure TFrmPrincipla.BtPesquisarClick(Sender: TObject);

begin
  var
  iten := CbOpcao.ItemIndex;
    case iten of
       0: DataModule1.FDQuery1.Open('select * from lembreteBD where IdLembrete = ' + EdPesquisar.Text );
       1: DataModule1.FDQuery1.Open('select * from lembreteBD where TituloLembrete like  '+ QuotedStr('%' + EdPesquisar.Text + '%'));
       2: DataModule1.FDQuery1.Open('select * from lembreteBD where DescricaoLembrete like '+ QuotedStr('%' + EdPesquisar.Text + '%'));
       3: DataModule1.FDQuery1.Open('select * from lembreteBD where DataLembrete like '+ QuotedStr('%' + EdPesquisar.Text + '%'));
    end
  //
 end;

end.
