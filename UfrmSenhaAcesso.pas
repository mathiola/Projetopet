unit UfrmSenhaAcesso;

{$MODE Delphi}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls,  DBCtrls;

type
  TFrmSenhaAcesso = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    bbOkAcesso: TBitBtn;
    bbCancelaAcesso: TBitBtn;
    Label1: TLabel;
    EdtAcessoSistema: TEdit;
    Timer1: TTimer;
    Label2: TLabel;
    edtLogin: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure Timer1Timer(Sender: TObject);
    procedure bbOkAcessoClick(Sender: TObject);
    procedure bbCancelaAcessoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SenhaAcesso: Boolean;
    i:integer;
  end;

var
  FrmSenhaAcesso: TFrmSenhaAcesso;

implementation

uses UfrmPrincipal;

{$R *.lfm}

procedure TFrmSenhaAcesso.Timer1Timer(Sender: TObject);
begin
 StatusBar1.Panels.Items[2].Text:=timetostr(time);
 StatusBar1.Panels.Items[1].Text:=DateToStr(date);
end;

procedure TFrmSenhaAcesso.bbOkAcessoClick(Sender: TObject);
var
login,senha:String;

begin
  login := edtLogin.Text;
  senha := EdtAcessoSistema.Text;
  {
  qrypesquisa.SQL.Clear;
  qrypesquisa.SQL.add('select cd_acesso,usuario, senha1 from acessos where (usuario like :log) and (senha1 like :senha)');
  qrypesquisa.ParamByName('log').AsString := login;
  qrypesquisa.ParamByName('senha').AsString := senha;
  qrypesquisa.Open;
   }
  if 1= 1 then
   begin

   Frmprincipal.Show;
   end ;
  {
   else
    begin
    application.MessageBox ('Senha ou login inválido.','Atenção',MB_ICONEXCLAMATION);
    Inc(i);
    if i = 4 then
     begin
     Application.Terminate;
     end;
    end;
    }
    end;
procedure TFrmSenhaAcesso.bbCancelaAcessoClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmSenhaAcesso.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if ((ssAlt in Shift) and (Key = VK_F4)) then
Key := 0;
end;

procedure TFrmSenhaAcesso.FormCreate(Sender: TObject);
begin
i:=1
end;

end.

