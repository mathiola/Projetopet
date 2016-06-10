unit UfrmRetornoCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,  ExtCtrls, ComCtrls, DbCtrls, DBExtCtrls;

type

  { TFrmRetornoCliente }

  TFrmRetornoCliente = class(TForm)
    DBDateEdit1: TDBDateEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    cbCateRetorno: TComboBox;
    Label3: TLabel;
    EdtRetornoCli: TEdit;
    Label4: TLabel;
    MemoAnotacaoRetorno: TMemo;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;

    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRetornoCliente: TFrmRetornoCliente;

implementation

{$R *.lfm}

procedure TFrmRetornoCliente.BitBtn2Click(Sender: TObject);
begin
   close; 
end;

procedure TFrmRetornoCliente.BitBtn1Click(Sender: TObject);
begin

end;

end.
