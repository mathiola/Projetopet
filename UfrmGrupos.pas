unit UfrmGrupos;

{$MODE Delphi}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UfrmModeloBasico, DB,  StdCtrls, Grids,
  DBGrids, ExtCtrls, Buttons;

type
  TFrmGrupos = class(TFrmModeloBasico)
    edtgrupo: TEdit;
    edtcodigo: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    QrypesquisaCD_GRUPO: TIntegerField;
    procedure rgpesquisaClick(Sender: TObject);
    procedure bbpesquisaClick(Sender: TObject);
    procedure bbnovoClick(Sender: TObject);
    procedure bbcancelarClick(Sender: TObject);
    procedure bbeditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGrupos: TFrmGrupos;

implementation

uses UfrmPrincipal, Ufrmcliente;

{$R *.lfm}

procedure TFrmGrupos.rgpesquisaClick(Sender: TObject);
begin
  inherited;
  case rgpesquisa.ItemIndex of
   0: begin
      edtgrupo.Clear;
      edtgrupo.Color:= clScrollBar;
      edtgrupo.Enabled:= false;
      Edtpesquisa.Color:= clScrollBar;
      Edtpesquisa.Enabled:= false;

      end;
   1: begin
      edtgrupo.Clear;
      edtgrupo.Color:= clScrollBar;
      edtgrupo.Enabled:= false;
      Edtpesquisa.Enabled:= true;
      Edtpesquisa.Color:= clWhite;
      Edtpesquisa.SetFocus;

      end;
  end;
end;

procedure TFrmGrupos.bbpesquisaClick(Sender: TObject);
begin
  inherited;
  {*
  case rgpesquisa.ItemIndex of
      0: begin
          Qrypesquisa.SQL.Clear;
          Qrypesquisa.SQL.Add('select grupo_cliente.cd_grupo, grupo_cliente.grupo');
          Qrypesquisa.SQL.Add ('from grupo_cliente order by grupo');
          Qrypesquisa.Open;
            if QRYPesquisa.RecordCount <= 0 then
                 begin
                 application.MessageBox ('Nenhum grupo de clientes foi cadastrada!.','Atenção',MB_ICONINFORMATION);
                 Exit;
                 end;
         end;

      1: begin
          Qrypesquisa.SQL.clear;
          Qrypesquisa.SQL.Add('select grupo_cliente.cd_grupo, grupo_cliente.grupo');
          Qrypesquisa.SQL.Add('from grupo_cliente where grupo like :nm ');
          Qrypesquisa.ParamByName('nm').AsString:= edtpesquisa.Text + '%';
          Qrypesquisa.Open;
          Edtpesquisa.Clear;
          Edtpesquisa.SetFocus;
         end;
    end;
*}
end;
procedure TFrmGrupos.bbnovoClick(Sender: TObject);
begin
  inherited;
    Panel4.Enabled:= true;
    edtcodigo.Clear;
    edtgrupo.Clear;
    edtgrupo.Color:= clWhite;
    edtgrupo.Enabled:= true;
    edtgrupo.SetFocus;
    Edtpesquisa.Clear;
    rgpesquisa.ItemIndex:= 0;
    Panel3.Enabled:= false;


end;

procedure TFrmGrupos.bbcancelarClick(Sender: TObject);
begin
  inherited;
   {*
   if Application.MessageBox('Tem certeza que deseja cancelar?','Confirmação de Cancelamento',MB_ICONQUESTION+MB_YESNO) = id_yes then
    begin
    Panel4.Enabled:= false;
    Panel3.Enabled:= true;

    end;
    *}
end;

procedure TFrmGrupos.bbeditarClick(Sender: TObject);
begin
 inherited;
   {*if QRYPesquisa.RecordCount <= 0   then
    begin
       application.MessageBox ('Selecione uma registro para alteração.','Atenção',MB_ICONINFORMATION);
       Exit;
    end;
     *}
    Panel4.Enabled:=true;
    //edtgrupo.Enabled := true;
    edtgrupo.Color := clWhite;
    edtgrupo.SetFocus;
    //rgpesquisa.Enabled := false;
    //Edtpesquisa.Enabled := false;
    //*Edtpesquisa.Color := clScrollBar;
    Panel3.Enabled:=false;
    //Dbgpesquisa.Enabled := false;
    edtcodigo.Text := QrypesquisaCD_GRUPO.AsString;
    //edtgrupo.Text := QrypesquisaGRUPO.AsString;
    inherited;
end;


end.
