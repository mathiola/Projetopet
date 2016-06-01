unit UfrmModeloBasico;

{$MODE Delphi}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids,
  ExtCtrls, Buttons;

type
  TFrmModeloBasico = class(TForm)
    Panel1: TPanel;
    bbsair: TBitBtn;
    bbnovo: TBitBtn;
    bbgravar: TBitBtn;
    bbexcluir: TBitBtn;
    bbcancelar: TBitBtn;
    bbeditar: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    rgpesquisa: TRadioGroup;
    Dbgpesquisa: TDBGrid;
    bbpesquisa: TBitBtn;
    Label1: TLabel;
    Panel4: TPanel;
    Edtpesquisa: TEdit;
    Image1: TImage;

    procedure bbnovoClick(Sender: TObject);
    procedure bbgravarClick(Sender: TObject);
    procedure bbeditarClick(Sender: TObject);
    procedure bbsairClick(Sender: TObject);
    procedure bbcancelarClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  operacao: string;
  procedure botoes(aux:boolean);  


  end;

var
  FrmModeloBasico: TFrmModeloBasico;

implementation

{$R *.lfm}



{ TFrmModeloBasico }



procedure TFrmModeloBasico.botoes(aux: boolean);
begin
   bbnovo.Enabled:= aux;
   bbgravar.Enabled:= not(aux);
   bbcancelar.Enabled:=not(aux);
   bbeditar.Enabled:=aux;
   bbexcluir.Enabled:=aux;
   bbsair.Enabled:=aux;

   bbnovo.Visible:= aux;
   bbgravar.Visible:= not(aux);
   bbcancelar.Visible:=not(aux);
   bbeditar.Visible:=aux;


end;



procedure TFrmModeloBasico.bbnovoClick(Sender: TObject);
begin
     botoes(false);
     operacao:='inserindo'
end;

procedure TFrmModeloBasico.bbgravarClick(Sender: TObject);
begin
     botoes(true);

end;

procedure TFrmModeloBasico.bbeditarClick(Sender: TObject);
begin
    botoes(False);
    operacao:='alterando'
end;

procedure TFrmModeloBasico.bbsairClick(Sender: TObject);
begin
     close;
end;

procedure TFrmModeloBasico.bbcancelarClick(Sender: TObject);
begin
     botoes(true);
     operacao:='cancelando';
end;

end.
