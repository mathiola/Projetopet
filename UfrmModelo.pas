unit UfrmModelo;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, sqldb,
  ComCtrls, Grids, DBGrids;

type

  { TFrmmodelo }

  TFrmmodelo = class(TForm)
    bbimprimir: TBitBtn;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Dbgpesquisa: TDBGrid;
    rgpesquisa: TRadioGroup;
    edtpesquisa: TEdit;
    bbpesquisa: TBitBtn;
    Panel20: TPanel;
    Panel3: TPanel;
    Label3: TLabel;
    bbnovo: TBitBtn;
    bbgravar: TBitBtn;
    bbeditar: TBitBtn;
    bbcancelar: TBitBtn;
    bbexcluir: TBitBtn;
    bbsair: TBitBtn;
    Image: TImage;
    procedure bbnovoClick(Sender: TObject);
    procedure bbgravarClick(Sender: TObject);
    procedure bbcancelarClick(Sender: TObject);
    procedure bbeditarClick(Sender: TObject);
    procedure bbsairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   operacao : String;
    procedure botoes(aux: Boolean);
  end;

var
  Frmmodelo: TFrmmodelo;

implementation

uses UfrmPrincipal;



{$R *.lfm}

procedure Tfrmmodelo.botoes(aux: boolean);
begin

   bbnovo.enabled:= aux;
   bbgravar.enabled:= not(aux);
   bbcancelar.enabled:= not(aux);
   bbeditar.enabled:= aux;
   bbexcluir.enabled:= aux;
   bbsair.enabled:= aux;
   bbimprimir.Enabled:= aux;

   bbnovo.Visible:= aux;
   bbgravar.Visible:= not(aux);
   bbcancelar.visible:= not(aux);
   bbeditar.visible:= aux;


end;

procedure TFrmmodelo.bbnovoClick(Sender: TObject);
begin
   operacao :='inserindo';
   botoes(False);

end;

procedure TFrmmodelo.bbgravarClick(Sender: TObject);
begin
   botoes(True);
   operacao := 'gravando';

end;

procedure TFrmmodelo.bbcancelarClick(Sender: TObject);
begin
   botoes(True);
   operacao:='cancelando';


end;

procedure TFrmmodelo.bbeditarClick(Sender: TObject);
begin
     operacao := 'alterando';
     botoes(False);
end;

procedure TFrmmodelo.bbsairClick(Sender: TObject);
begin
   close;
end;

end.
